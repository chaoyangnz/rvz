#ifndef __BITFIELDS_H__
#define __BITFIELDS_H__

#include "types.h"

#define BIT(X) (0b1u << X)
#define BITS(X, Y) (X == Y ? (0b1u << X) : ((~(0xfffffffu << ((Y) - (X) + 1))) << (X)))

static inline uint32
set(uint32 i, uint32 v, uint32 mask) {
  return (i & ~mask) | ((v << __builtin_ctz(mask)) & mask);
}

static inline uint32
apply(uint32 i, uint32 v, uint32 mask) {
  return i | ((v << __builtin_ctz(mask)) & mask);
}

static inline uint32
clear(uint32 i, uint32 mask) {
  return set(i, 0x0u, mask);
}

static inline uint32
get(uint32 i, uint32 mask) {
  return (i & mask) >> __builtin_ctz(mask);
}

static inline uint32
on(uint32 i, uint32 mask) {
  return set(i, 0xffffffffu, mask);
}

static inline uint32
off(uint32 i, uint32 mask) {
  return set(i, 0x0u, mask);
}

static inline uint32
build(uint32 v, uint32 mask) {
  return set(0x0u, v, mask);
}

#endif