#!/usr/bin/env bash

BIN_DIR=zig-out/bin
TOOL_CHAIN_PREFIX=../xpacks/.bin/riscv-none-elf

rm -rf zig-out/bin/*
rm -rf zig-cache/*

MEM_BASE=0x40000000
rm -f src/layout_kernel.ld && cp src/layout.ld.tpl src/layout_kernel.ld && sed -i "s/@MEM_BASE@/${MEM_BASE}/g" src/layout_kernel.ld

zig build


# zig build-exe -target riscv64-freestanding \
#     -mcpu sifive_u74 \
#     -mcmodel=medium \
#     -fno-omit-frame-pointer \
#     -fno-stack-protector \
#     -fno-PIE \
#     -fno-builtin \
#     -fno-formatted-panics \
#     -Tsrc/layout.ld \
#     -O Debug \
#     src/entry.S src/start.zig

${TOOL_CHAIN_PREFIX}-objdump -d -D ${BIN_DIR}/kernel.elf > ${BIN_DIR}/kernel.elf.objdump
${TOOL_CHAIN_PREFIX}-objcopy -S -O binary ${BIN_DIR}/kernel.elf ${BIN_DIR}/kernel.bin

../tools/bin/vf2-programmer -l 1 -t -f ${BIN_DIR}/kernel.bin


