#include "riscv.h"

#define CLINT 0x2000000L
#define MTIME_MMAP_OFFSET 0xBFF8L
#define MTIME_FREQ 4000000L // 4M Hz

static uint64 r_mtime() {
    return r_mem(CLINT + MTIME_MMAP_OFFSET);
}

// delay in microseconds
// 1μs = 1MHz: our CPU reference clock frequency is 4MHz which is used by mtime, so 1 CPU cycle is 1/24 μs
// For 1μs, we need 24 CPU cycles
void delay(uint64 μs)
{
    uint64 cycle1 = r_mtime();
    uint64 cycle2 = cycle1 + μs * (MTIME_FREQ / 1000000);
    do {
        cycle1 = r_mtime();
    } while(cycle2 >= cycle1);
}