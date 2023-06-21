#ifndef __RISCV_H__
#define __RISCV_H__

#include "types.h"

typedef unsigned long  virtual_addr_t;

static inline void
w_mem(virtual_addr_t addr, uint32 value)
{
    *((volatile uint32 *)(addr)) = value;
}

static inline uint32
r_mem(virtual_addr_t addr)
{
    return( *((volatile uint32 *)(addr)));
}

static inline uint64
r_tp()
{
    uint64 x;
    asm volatile("mv %0, tp" : "=r" (x) );
    return x;
}

static inline void 
w_tp()
{
  asm volatile("csrr tp, mhartid");
}

#ifndef KERNEL_BASE
#define KERNEL_BASE 0x80000000
#endif

#endif