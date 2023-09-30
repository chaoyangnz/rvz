.section .text
.global _entry
_entry:
    //uart putc . for each hart
    lui	a5, 0x10000
    li	a4, 0x2E
    sw	a4,0(a5)
    // only run on one hart
    csrr t0, mhartid
    li t1, 1
    bne t0, t1, spin
	// set up a stack for C.
    // stack0 is declared in start.c,
    // with a 4096-byte stack per CPU.
    // sp = stack0 + ((hartid + 1) * 4096)
    // stack0 ...4k...hart0_sp...4k...hart1_sp...
	csrw mie, 0
    la sp, stack0
    li a0, 1024*4
	csrr a1, mhartid
    addi a1, a1, 1
    mul a0, a0, a1
    add sp, sp, a0
	// jump to start() in start.c
    call start
spin:
    j spin
