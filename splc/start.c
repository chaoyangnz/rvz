#include "param.h"
#include "riscv.h"
#include "printf.h"


// entry.S needs one stack per CPU. global variable stack0
__attribute__ ((aligned (16))) char stack0[4096 * NCPU];

// a scratch area per CPU for machine-mode timer interrupts. global variable timer_scratch
uint64 timer_scratch[NCPU][5];

// entry.S jumps here in machine mode on stack0.
void
start()
{
    // keep each CPU's hartid in its tp register, for cpuid().
    w_tp();

    if (r_tp() == 0) {
        printf("\nwelcome!!\n");
        printf("%x", KERNEL_BASE);
    }
}
