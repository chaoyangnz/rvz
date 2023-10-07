const regs = @import("./register.zig");

pub fn CSR(comptime xlen: type) type {
    return struct {
        pub fn r_plicbase() xlen {
            return asm volatile (
                \\  csrr %0, 0xfc1
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn r_mtime() xlen {
            return asm volatile (
                \\ csrr %0, time
                : [ret] "=r" (-> xlen),
            );
        }

        // write to the first 8 PMP config registers
        pub fn w_pmpcfg0(val: xlen) void {
            asm volatile (
                \\ csrw pmpcfg0, %0
                :
                : [val] "r" (val),
            );
        }

        pub fn w_pmpaddr0(val: xlen) void {
            asm volatile (
                \\ csrw pmpaddr0, %0
                :
                : [val] "r" (val),
            );
        }

        pub fn r_pmpaddr0() xlen {
            return asm volatile (
                \\ csrr %0, pmpaddr0
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn r_pmpcfg0() xlen {
            return asm volatile (
                \\ csrr %0, pmpcfg0
                : [ret] "=r" (-> xlen),
            );
        }

        // which hart (core) is this?
        pub fn r_mhartid() xlen {
            return asm volatile (
                \\ csrr %0, mhartid
                : [ret] "=r" (-> xlen),
            );
        }

        // Machine Status Register, mstatus

        const MSTATUS_MPP_MASK: xlen = 3 << 11; // previous mode.
        const MSTATUS_MPP_M: xlen = 3 << 11;
        const MSTATUS_MPP_S: xlen = 1 << 11;
        const MSTATUS_MPP_U: xlen = 0 << 11;
        const MSTATUS_MIE: xlen = 1 << 3; // machine-mode interrupt enable.

        pub fn r_mstatus() xlen {
            return asm volatile (
                \\ csrr %0, mstatus
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn w_mstatus(val: xlen) void {
            asm volatile (
                \\ csrw mstatus, %0
                :
                : [val] "r" (val),
            );
        }

        // machine exception program counter, holds the
        // instruction address to which a return from
        // exception will go.
        pub fn w_mepc(val: xlen) void {
            asm volatile (
                \\ csrw mepc, %0
                :
                : [val] "r" (val),
            );
        }

        // Supervisor Status Register, sstatus

        const SSTATUS_SPP: xlen = 1 << 8; // Previous mode, 1=Supervisor, 0=User
        const SSTATUS_SPIE: xlen = 1 << 5; // Supervisor Previous Interrupt Enable
        const SSTATUS_UPIE: xlen = 1 << 4; // User Previous Interrupt Enable
        const SSTATUS_SIE: xlen = 1 << 1; // Supervisor Interrupt Enable
        const SSTATUS_UIE: xlen = 1 << 0; // User Interrupt Enable

        pub fn r_sstatus() xlen {
            return asm volatile (
                \\ csrr %0, sstatus
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn w_sstatus(val: xlen) void {
            asm volatile (
                \\ csrw sstatus, %0
                :
                : [val] "r" (val),
            );
        }

        // Supervisor Interrupt Pending
        pub fn r_sip() xlen {
            return asm volatile (
                \\ csrr %0, sip
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn w_sip(val: xlen) void {
            asm volatile (
                \\ csrw sip, %0
                :
                : [val] "r" (val),
            );
        }

        // Supervisor Interrupt Enable
        const SIE_SEIE: xlen = 1 << 9; // external
        const SIE_STIE: xlen = 1 << 5; // timer
        const SIE_SSIE: xlen = 1 << 1; // software
        pub fn r_sie() xlen {
            return asm volatile (
                \\ csrr %0, sie
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn w_sie(val: xlen) void {
            asm volatile (
                \\ csrw sie, %0
                :
                : [val] "r" (val),
            );
        }

        // Machine-mode Interrupt Enable
        const MIE_MEIE: xlen = 1 << 11; // external
        const MIE_MTIE: xlen = 1 << 7; // timer
        const MIE_MSIE: xlen = 1 << 3; // software
        pub fn r_mie() xlen {
            return asm volatile (
                \\ csrr %0, mie
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn w_mie(val: xlen) void {
            asm volatile (
                \\ csrw mie, %0
                :
                : [val] "r" (val),
            );
        }

        // machine exception program counter, holds the
        // instruction address to which a return from
        // exception will go.
        pub fn w_sepc(val: xlen) void {
            asm volatile (
                \\ csrw sepc, %0
                :
                : [val] "r" (val),
            );
        }

        pub fn r_sepc() xlen {
            return asm volatile (
                \\ csrr %0, sepc
                : [ret] "=r" (-> xlen),
            );
        }

        // Machine Exception Delegation
        pub fn r_medeleg() xlen {
            return asm volatile (
                \\ csrr %0, medeleg
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn w_medeleg(val: xlen) void {
            asm volatile (
                \\ csrw medeleg, %0
                :
                : [val] "r" (val),
            );
        }

        // Machine Interrupt Delegation
        pub fn r_mideleg() xlen {
            return asm volatile (
                \\ csrr %0, mideleg
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn w_mideleg(val: xlen) void {
            asm volatile (
                \\ csrw mideleg, %0
                :
                : [val] "r" (val),
            );
        }

        // Supervisor Trap-Vector Base Address
        // low two bits are mode.
        pub fn w_stvec(val: xlen) void {
            asm volatile (
                \\ csrw stvec, %0
                :
                : [val] "r" (val),
            );
        }

        pub fn r_stvec() xlen {
            return asm volatile (
                \\ csrr %0, stvec
                : [ret] "=r" (-> xlen),
            );
        }

        // Machine-mode interrupt vector
        pub fn w_mtvec(val: xlen) void {
            asm volatile (
                \\ csrw mtvec, %0
                :
                : [val] "r" (val),
            );
        }

        // use riscv's sv39 page table scheme.
        const SATP_SV39: xlen = 8 << 60;

        // const MAKE_SATP: xlen =(pagetable) (SATP_SV39 | (((uint64)pagetable) >> 12))

        // supervisor address translation and protection;
        // holds the address of the page table.
        pub fn w_satp(val: xlen) void {
            asm volatile (
                \\ csrw satp, %0
                :
                : [val] "r" (val),
            );
        }

        pub fn r_satp() xlen {
            return asm volatile (
                \\ csrr %0, satp
                : [ret] "=r" (-> xlen),
            );
        }

        // Supervisor Scratch register, for early trap handler in trampoline.S.
        pub fn w_sscratch(val: xlen) void {
            asm volatile (
                \\ csrw sscratch, %0
                :
                : [val] "r" (val),
            );
        }

        pub fn w_mscratch(val: xlen) void {
            asm volatile (
                \\ csrw mscratch, %0
                :
                : [val] "r" (val),
            );
        }

        // Supervisor Trap Cause
        pub fn r_scause() xlen {
            return asm volatile (
                \\ csrr %0, scause
                : [ret] "=r" (-> xlen),
            );
        }

        // Supervisor Trap Value
        pub fn r_stval() xlen {
            return asm volatile (
                \\ csrr %0, stval
                : [ret] "=r" (-> xlen),
            );
        }

        // Machine-mode Counter-Enable
        pub fn w_mcounteren(val: xlen) void {
            asm volatile (
                \\ csrw mcounteren, %0
                :
                : [val] "r" (val),
            );
        }

        pub fn r_mcounteren() xlen {
            return asm volatile (
                \\ csrr %0, mcounteren
                : [ret] "=r" (-> xlen),
            );
        }

        // machine-mode cycle counter
        pub fn r_time() xlen {
            return asm volatile (
                \\ csrr %0, time
                : [ret] "=r" (-> xlen),
            );
        }

        // enable device interrupts
        pub fn intr_on() xlen {
            w_sstatus(r_sstatus() | SSTATUS_SIE);
        }

        // disable device interrupts
        pub fn intr_off() xlen {
            w_sstatus(r_sstatus() & ~SSTATUS_SIE);
        }

        // are device interrupts enabled?
        pub fn intr_get() xlen {
            const x: xlen = r_sstatus();
            return (x & SSTATUS_SIE) != 0;
        }

        pub fn r_sp() xlen {
            return asm volatile (
                \\ mv %0, sp
                : [ret] "=r" (-> xlen),
            );
        }

        // read and write tp, the thread pointer, which holds
        // this core's hartid (core number), the index into cpus[].
        pub fn r_tp() xlen {
            return asm volatile (
                \\ mv %0, tp
                : [ret] "=r" (-> xlen),
            );
        }

        pub fn w_tp(val: xlen) void {
            asm volatile (
                \\ mv tp, %0
                :
                : [val] "r" (val),
            );
        }

        pub fn r_ra() xlen {
            return asm volatile (
                \\ mv %0, ra
                : [ret] "=r" (-> xlen),
            );
        }

        // flush the TLB.
        pub fn sfence_vma() xlen {
            // the zero, zero means flush all TLB entries.
            asm volatile (
                \\ sfence.vma zero, zero
            );
        }
    };
}
