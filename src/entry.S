// Loads the kernel at 0x40000000 and causes each CPU to jump there.
// kernel.ld causes the following code to be placed at 0x40000000.
.section .text
.global _entry
_entry:
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
