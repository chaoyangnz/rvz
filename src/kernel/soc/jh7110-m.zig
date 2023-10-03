const mmio = @import("./mmio.zig");

pub const devices = struct {
    /// From StarFive VisionFive 2 v1.3b,model device generator
    pub const JH71110 = struct {
        pub const vendor = "";
        pub const series = "";
        pub const width = 32;

        pub const peripherals = struct {
            pub const UART0 = struct {
                /// Receive Buffer Register
                pub const RBR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7]
                    RBR: u8,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x10000000));
                /// Transmit Holding Register
                pub const THR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7]
                    THR: u8,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x10000000));
                /// Divisor Latch Low
                pub const DLL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7]
                    DLL: u8,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x10000004));
                /// Divisor Latch High
                pub const DLH = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7]
                    DLH: u8,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x10000004));
                /// Interrupt Enable Register
                pub const IER = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0]
                    ERBFI: u1,
                    /// [1:1]
                    ETBEI: u1,
                    /// [2:2]
                    ELSI: u1,
                    /// [3:3]
                    EDSSI: u1,
                    /// [4:6]
                    res0: u3,
                    /// [7:7]
                    PTIME: u1,
                    /// [8:31]
                    res1: u24,
                }), @ptrFromInt(0x10000004));

                /// Interrupt Identity Register
                pub const IIR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3]
                    IID: u4,
                    /// [4:5]
                    res0: u2,
                    /// [6:7]
                    FIFOSE: u2,
                    /// [8:31]
                    res1: u24,
                }), @ptrFromInt(0x10000008));

                /// FIFO Control Register
                pub const FCR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0]
                    FIFOE: u1,
                    /// [1:1]
                    RFIFOR: u1,
                    /// [2:2]
                    XFIFOR: u1,
                    /// [3:3]
                    DMAM: u1,
                    /// [4:5]
                    TET: u2,
                    /// [6:7]
                    RT: u2,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x10000008));

                ///  Line Control Register
                pub const LCR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1]
                    DLS: u2,
                    /// [2:2]
                    STOP: u1,
                    /// [3:3]
                    PEN: u1,
                    /// [4:4]
                    EPS: u1,
                    /// [5:5]
                    STICKY_PARITY: u1,
                    /// [6:6]
                    BC: u1,
                    /// [7:7]
                    DLAB: u1,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x1000000C));

                ///  Modem Control Register
                pub const MCR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0]
                    DTR: u1,
                    /// [1:1]
                    RTS: u1,
                    /// [2:2]
                    OUT1: u1,
                    /// [3:3]
                    OUT2: u1,
                    /// [4:4]
                    LB: u1,
                    /// [5:5]
                    AFCE: u1,
                    /// [6:6]
                    SIRE: u1,
                    /// [7:31]
                    res0: u25,
                }), @ptrFromInt(0x10000010));

                /// Line Status Register
                pub const LSR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0]
                    DR: u1,
                    /// [1:1]
                    OE: u1,
                    /// [2:2]
                    PE: u1,
                    /// [3:3]
                    FE: u1,
                    /// [4:4]
                    BI: u1,
                    /// [5:5]
                    THRE: u1,
                    /// [6:6]
                    TEMT: u1,
                    /// [7:7]
                    RFE: u1,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x10000014));

                /// Modem Status Register
                pub const MSR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0]
                    DCTS: u1,
                    /// [1:1]
                    DDSR: u1,
                    /// [2:2]
                    TERI: u1,
                    /// [3:3]
                    DDCD: u1,
                    /// [4:4]
                    CTS: u1,
                    /// [5:5]
                    DSR: u1,
                    /// [6:6]
                    RI: u1,
                    /// [7:7]
                    DCD: u1,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x10000018));

                /// Scratchpad Register
                pub const SCR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7]
                    SCR: u1,
                    /// [8:31]
                    res0: u24,
                }), @ptrFromInt(0x1000001C));

                // TODO
            };
        };
    };
};
