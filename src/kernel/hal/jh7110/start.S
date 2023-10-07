.align 2

.section .text
.globl _start

_start:
    # uart output a * to indicate it is working
    lui	a5, 0x10000
    li	a4, '*'
    sw	a4,0(a5)

    # only run on hart1
    csrr  t0, mhartid
    li    t1, 1
    bne   t0, t1, _halt

_main:
    # csrw  mie, 0
    la    sp, _stack_top
    # la sp, stack0
    # li a0, 1024*4
    # add sp, sp, a0
    j   main

_halt: j _halt
