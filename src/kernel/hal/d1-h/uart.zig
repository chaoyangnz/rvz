const peripherals = @import("../../soc/d1-h.zig").devices.D1H.peripherals;

pub fn init() void {
    //D1 debug uart use GPIOB8(TX0) and GPIOB9(RX0)
    peripherals.GPIO.pb_cfg1.modify(.{
        // GPIO8 as TX
        .pb8_select = .uart0_tx,
        // GPIO9 as RX
        .pb9_select = .uart0_rx,
    });

    peripherals.CCU.UART_BGR.modify(.{
        // Open the clock gate for uart0
        .UART0_GATING = .Pass,
        // De-assert uart0 reset
        .UART0_RST = .Deassert,
    });

    // disable all interrupt
    peripherals.UART0.DLH.write_raw(0x0);
    // reset fifo
    peripherals.UART0.FCR.write_raw(0xF7);
    // uart mode
    peripherals.UART0.MCR.write_raw(0x0);
    // set 115200 baut rate
    peripherals.UART0.LCR.modify(.{
        // select Divisor Latch LS Register
        .dlab = .divisor_latch,
    });
    // 0x0d=13 240000000/(13*16) = 115200 Divisor Latch Lows
    peripherals.UART0.DLL.write_raw(0xd & 0xff);
    // Divisor Latch High
    peripherals.UART0.DLH.write_raw((0xd >> 8) & 0xff);
    peripherals.UART0.LCR.modify(.{
        // 8 bit
        .dls = .eight,
        //  1 stop bit
        .stop = .one,
        // parity disabled
        .pen = .disabled,
        .eps = .even,
        .dlab = .rx_buffer,
    });
    // only enable RX IRQ
    peripherals.UART0.IER.write_raw(0x1);
}

pub fn tx(ch: u8) void {
    // while (peripherals.UART0.LSR.read().thre == .empty) {
    peripherals.UART0.THR.modify(.{ .thr = ch });
    // }
}
