const UART0 = @import("../../soc/jh7110-m.zig").devices.JH71110.peripherals.UART0;

pub fn init() void {
    // disable FIFO
    UART0.FCR.modify(.{ .FIFOE = 0 });
}

pub fn try_rx() ?u8 {
    if (UART0.LSR.read().DR == 1) {
        return UART0.RBR.read().RBR;
    }
    return null;
}

pub fn rx() u8 {
    while (UART0.LSR.read().DR != 1) {}
    return UART0.RBR.read().RBR;
}

pub fn tx(c: u8) void {
    // wait for THR to be empty
    while (UART0.LSR.read().TEMT != 1) {}
    UART0.THR.modify(.{ .THR = c });
}
