const regs = @import("./register.zig");
const riscv = @import("./riscv.zig");

const csr = riscv.CSR(u32);

pub const mstatus = regs.Register(packed struct(u32) {
    /// [0:0]
    uie: u1,
    /// [1:1]
    sie: u1,
    /// [2:2]
    wpri0: u1,
    /// [3:3]
    mie: u1,
    /// [4:4]
    upie: u1,
    /// [5:5]
    spie: u1,
    /// [6:6]
    wpri1: u1,
    /// [7:7]
    mpie: u1,
    /// [8:8]
    spp: u1,
    /// [9:10]
    wpri2: u2,
    /// [11:12]
    mpp: u2,
    /// [13:14]
    fs: u2,
    /// [15:16]
    xs: u2,
    /// [17:17]
    mprv: u1,
    /// [18:18]
    sum: u1,
    /// [19:19]
    mxr: u1,
    /// [20:20]
    tvm: u1,
    /// [21:21]
    tw: u1,
    /// [22:22]
    tsr: u1,
    /// [23:30]
    wpri3: u8,
    /// [31:31]
    sd: u1,
}, csr.r_mstatus, csr.w_mstatus){};

pub const satp = regs.Register(packed struct(u32) {
    /// [0:21]
    ppn: u22,
    /// [22:30]
    asid: u9,
    /// [31:31]
    mode: u1,
}, csr.r_satp, csr.w_satp){};
