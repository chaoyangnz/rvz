const UART0: usize = 0x10000000;
const RBR = 0; // In: receive buffer register
const THR = 0; // Out: transmit holding register
const DLL = 0; // Out: Divisor Latch Low
const IER = 1; // I/O: interrupt enable register
const IER_RX_ENABLE = (1 << 0);
const IER_TX_ENABLE = (1 << 1);
const FCR = 2; // FIFO control register
const FCR_FIFO_ENABLE = (1 << 0);
const FCR_FIFO_CLEAR = (3 << 1); // Out: clear the content of the two FIFOs
const ISR = 2; // I/O: interrupt status register
const LCR = 3; // line control register
const LCR_EIGHT_BITS = (3 << 0);
const LCR_BAUD_LATCH = (1 << 7); // special mode to set baud rate
const MCR = 4; // Out: Modem Control Register
const LSR = 5; // In:  line status register
//const LSR_5_THRE = BIT(5);
const MSR = 6; // In:  Modem Status Register
const SCR = 7; // I/O: Scratch Register

inline fn w_mem(comptime T: type, address: usize, v: T) void {
    const ptr = @as(*volatile T, @ptrFromInt(address));
    ptr.* = v;
}

fn r_mem(comptime T: type, address: usize) T {
    const ptr = @as(*volatile T, @ptrFromInt(address));
    return ptr.*;
}

pub fn init() void {
    // disable FIFO
    w_mem(u8, UART0 + 4 * FCR, 0x0);
}

pub fn try_rx() ?u8 {
    if ((r_mem(u32, UART0 + 4 * LSR) & 0x01) == 1) {
        return r_mem(u8, UART0 + 4 * RBR);
    }
    return null;
}

pub fn rx() u8 {
    while (true) {
        if (try_rx()) |b| {
            return b;
        }
    }
}

pub fn tx(c: u8) void {
    // wait for THR to be empty
    while ((r_mem(u32, UART0 + 4 * LSR) & 0x20) == 0) {}
    w_mem(u8, UART0 + 4 * THR, c);
}

fn tx_raw(n: u8) void {
    const two = n / 10;
    const one = n % 10;
    tx('\\');
    if (two != 0) {
        tx(@as(u8, @truncate(two + 48)));
    }
    tx(@as(u8, @truncate(one + 48)));
}

pub fn putc(c: u8) void {
    if (c < 0x1F and c != 0x0A and c != 0x0D) {
        tx_raw(c);
    } else {
        tx(c);
    }
}

pub fn printf(s: []const u8) void {
    for (0..s.len) |i| {
        putc(s[i]);
    }
}
