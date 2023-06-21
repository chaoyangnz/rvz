const rv = @import("./riscv.zig");

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

pub fn init() void {
    // disable FIFO
    rv.w_mem(u8, UART0 + 4 * FCR, 0x0);
}

pub fn try_rx() ?u8 {
    if ((rv.r_mem(u32, UART0 + 4 * LSR) & 0x01) == 1) {
        return rv.r_mem(u8, UART0 + 4 * RBR);
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
    while ((rv.r_mem(u32, UART0 + 4 * LSR) & 0x20) == 0) {}
    rv.w_mem(u8, UART0 + 4 * THR, c);
}

fn tx_raw(n: u8) void {
    const two = n / 10;
    const one = n % 10;
    tx('\\');
    if (two != 0) {
        tx(@truncate(u8, two + 48));
    }
    tx(@truncate(u8, one + 48));
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

/////// XMODEM /////
const SOH: u8 = 0x01;
const STX: u8 = 0x02;
const EOT: u8 = 0x04;
const ACK: u8 = 0x06;
const NAK: u8 = 0x15;
const POLL: u8 = 0x43;

fn wait_for(c: u8) void {
    while (true) {
        if (rx()) |b| {
            if (b == c) {
                break;
            }
        }
    }
}

pub fn poll() void {
    while (true) {
        tx(POLL);
        if (try_rx()) |b| {
            if (b == STX) {
                _ = rev();
            }
        }
        rv.delay(500_000);
    }
}

fn rev() bool {
    var success = false;
    var b = STX;
    while (true) {
        if (b == STX) {
            const number = rx();
            _ = rx();
            _ = rev_packet(number);
        } else if (b == EOT) {
            success = true;
            break;
        }
        b = rx();
    }
    return success;
}

fn rev_packet(number: u8) bool {
    var buffer = [_]u8{0} ** 1024;
    var success = false;
    for (0..1024) |i| {
        const c = rx();
        buffer[i] = c;
    }

    var crc: u16 = 0;
    for (buffer) |c| {
        const part: u16 = c;
        crc = crc ^ (part << 8);
        for (0..8) |_| {
            if (crc & 0x8000 > 0) {
                crc = crc << 1 ^ 0x1021;
            } else {
                crc = crc << 1;
            }
        }
    }
    const crc_hi: u16 = rx();
    const crc_lo: u16 = rx();
    const received_crc = (crc_hi << 8 & 0xFF00) | (crc_lo & 0x00FF);
    if (crc != received_crc) {
        tx(NAK);
        success = false;
        return success;
    }
    tx(ACK);

    _ = number;
    // we can move the buffer to DRAM now
    // for (0..1024) |j| {
    //     rv.w_mem(u8, 0x4000_0000 + (@as(usize, number) - 1) * 1024 + j, buffer[j]);
    // }

    return success;
}
