pub fn r_plicbase() usize {
    return asm volatile (
        \\  csrr %0, 0xfc1
        : [ret] "=r" (-> usize),
    );
}

pub fn r_mtime() usize {
    return asm volatile (
        \\ csrr %0, time
        : [ret] "=r" (-> usize),
    );
}

// write to the first 8 PMP config registers
pub fn w_pmpcfg0(val: usize) void {
    asm volatile (
        \\ csrw pmpcfg0, %0
        :
        : [val] "r" (val),
    );
}

pub fn w_pmpaddr0(val: usize) void {
    asm volatile (
        \\ csrw pmpaddr0, %0
        :
        : [val] "r" (val),
    );
}

pub fn r_pmpaddr0() usize {
    return asm volatile (
        \\ csrr %0, pmpaddr0
        : [ret] "=r" (-> usize),
    );
}

pub fn r_pmpcfg0() usize {
    return asm volatile (
        \\ csrr %0, pmpcfg0
        : [ret] "=r" (-> usize),
    );
}

// which hart (core) is this?
pub fn r_mhartid() usize {
    return asm volatile (
        \\ csrr %0, mhartid
        : [ret] "=r" (-> usize),
    );
}

// Machine Status Register, mstatus

const MSTATUS_MPP_MASK: usize = 3 << 11; // previous mode.
const MSTATUS_MPP_M: usize = 3 << 11;
const MSTATUS_MPP_S: usize = 1 << 11;
const MSTATUS_MPP_U: usize = 0 << 11;
const MSTATUS_MIE: usize = 1 << 3; // machine-mode interrupt enable.

pub fn r_mstatus() usize {
    return asm volatile (
        \\ csrr %0, mstatus
        : [ret] "=r" (-> usize),
    );
}

pub fn w_mstatus(val: usize) void {
    asm volatile (
        \\ csrw mstatus, %0
        :
        : [val] "r" (val),
    );
}

// machine exception program counter, holds the
// instruction address to which a return from
// exception will go.
pub fn w_mepc(val: usize) void {
    asm volatile (
        \\ csrw mepc, %0
        :
        : [val] "r" (val),
    );
}

// Supervisor Status Register, sstatus

const SSTATUS_SPP: usize = 1 << 8; // Previous mode, 1=Supervisor, 0=User
const SSTATUS_SPIE: usize = 1 << 5; // Supervisor Previous Interrupt Enable
const SSTATUS_UPIE: usize = 1 << 4; // User Previous Interrupt Enable
const SSTATUS_SIE: usize = 1 << 1; // Supervisor Interrupt Enable
const SSTATUS_UIE: usize = 1 << 0; // User Interrupt Enable

pub fn r_sstatus() usize {
    return asm volatile (
        \\ csrr %0, sstatus
        : [ret] "=r" (-> usize),
    );
}

pub fn w_sstatus(val: usize) void {
    asm volatile (
        \\ csrw sstatus, %0
        :
        : [val] "r" (val),
    );
}

// Supervisor Interrupt Pending
pub fn r_sip() usize {
    return asm volatile (
        \\ csrr %0, sip
        : [ret] "=r" (-> usize),
    );
}

pub fn w_sip(val: usize) void {
    asm volatile (
        \\ csrw sip, %0
        :
        : [val] "r" (val),
    );
}

// Supervisor Interrupt Enable
const SIE_SEIE: usize = 1 << 9; // external
const SIE_STIE: usize = 1 << 5; // timer
const SIE_SSIE: usize = 1 << 1; // software
pub fn r_sie() usize {
    return asm volatile (
        \\ csrr %0, sie
        : [ret] "=r" (-> usize),
    );
}

pub fn w_sie(val: usize) void {
    asm volatile (
        \\ csrw sie, %0
        :
        : [val] "r" (val),
    );
}

// Machine-mode Interrupt Enable
const MIE_MEIE: usize = 1 << 11; // external
const MIE_MTIE: usize = 1 << 7; // timer
const MIE_MSIE: usize = 1 << 3; // software
pub fn r_mie() usize {
    return asm volatile (
        \\ csrr %0, mie
        : [ret] "=r" (-> usize),
    );
}

pub fn w_mie(val: usize) void {
    asm volatile (
        \\ csrw mie, %0
        :
        : [val] "r" (val),
    );
}

// machine exception program counter, holds the
// instruction address to which a return from
// exception will go.
pub fn w_sepc(val: usize) void {
    asm volatile (
        \\ csrw sepc, %0
        :
        : [val] "r" (val),
    );
}

pub fn r_sepc() usize {
    return asm volatile (
        \\ csrr %0, sepc
        : [ret] "=r" (-> usize),
    );
}

// Machine Exception Delegation
pub fn r_medeleg() usize {
    return asm volatile (
        \\ csrr %0, medeleg
        : [ret] "=r" (-> usize),
    );
}

pub fn w_medeleg(val: usize) void {
    asm volatile (
        \\ csrw medeleg, %0
        :
        : [val] "r" (val),
    );
}

// Machine Interrupt Delegation
pub fn r_mideleg() usize {
    return asm volatile (
        \\ csrr %0, mideleg
        : [ret] "=r" (-> usize),
    );
}

pub fn w_mideleg(val: usize) void {
    asm volatile (
        \\ csrw mideleg, %0
        :
        : [val] "r" (val),
    );
}

// Supervisor Trap-Vector Base Address
// low two bits are mode.
pub fn w_stvec(val: usize) void {
    asm volatile (
        \\ csrw stvec, %0
        :
        : [val] "r" (val),
    );
}

pub fn r_stvec() usize {
    return asm volatile (
        \\ csrr %0, stvec
        : [ret] "=r" (-> usize),
    );
}

// Machine-mode interrupt vector
pub fn w_mtvec(val: usize) void {
    asm volatile (
        \\ csrw mtvec, %0
        :
        : [val] "r" (val),
    );
}

// use riscv's sv39 page table scheme.
const SATP_SV39: usize = 8 << 60;

// const MAKE_SATP: usize =(pagetable) (SATP_SV39 | (((uint64)pagetable) >> 12))

// supervisor address translation and protection;
// holds the address of the page table.
pub fn w_satp(val: usize) void {
    asm volatile (
        \\ csrw satp, %0
        :
        : [val] "r" (val),
    );
}

pub fn r_satp() usize {
    return asm volatile (
        \\ csrr %0, satp
        : [ret] "=r" (-> usize),
    );
}

// Supervisor Scratch register, for early trap handler in trampoline.S.
pub fn w_sscratch(val: usize) void {
    asm volatile (
        \\ csrw sscratch, %0
        :
        : [val] "r" (val),
    );
}

pub fn w_mscratch(val: usize) void {
    asm volatile (
        \\ csrw mscratch, %0
        :
        : [val] "r" (val),
    );
}

// Supervisor Trap Cause
pub fn r_scause() usize {
    return asm volatile (
        \\ csrr %0, scause
        : [ret] "=r" (-> usize),
    );
}

// Supervisor Trap Value
pub fn r_stval() usize {
    return asm volatile (
        \\ csrr %0, stval
        : [ret] "=r" (-> usize),
    );
}

// Machine-mode Counter-Enable
pub fn w_mcounteren(val: usize) void {
    asm volatile (
        \\ csrw mcounteren, %0
        :
        : [val] "r" (val),
    );
}

pub fn r_mcounteren() usize {
    return asm volatile (
        \\ csrr %0, mcounteren
        : [ret] "=r" (-> usize),
    );
}

// machine-mode cycle counter
pub fn r_time() usize {
    return asm volatile (
        \\ csrr %0, time
        : [ret] "=r" (-> usize),
    );
}

// enable device interrupts
pub fn intr_on() usize {
    w_sstatus(r_sstatus() | SSTATUS_SIE);
}

// disable device interrupts
pub fn intr_off() usize {
    w_sstatus(r_sstatus() & ~SSTATUS_SIE);
}

// are device interrupts enabled?
pub fn intr_get() usize {
    const x: usize = r_sstatus();
    return (x & SSTATUS_SIE) != 0;
}

pub fn r_sp() usize {
    return asm volatile (
        \\ mv %0, sp
        : [ret] "=r" (-> usize),
    );
}

// read and write tp, the thread pointer, which holds
// this core's hartid (core number), the index into cpus[].
pub fn r_tp() usize {
    return asm volatile (
        \\ mv %0, tp
        : [ret] "=r" (-> usize),
    );
}

pub fn w_tp(val: usize) void {
    asm volatile (
        \\ mv tp, %0
        :
        : [val] "r" (val),
    );
}

pub fn r_ra() usize {
    return asm volatile (
        \\ mv %0, ra
        : [ret] "=r" (-> usize),
    );
}

// flush the TLB.
pub fn sfence_vma() usize {
    // the zero, zero means flush all TLB entries.
    asm volatile (
        \\ sfence.vma zero, zero
    );
}
