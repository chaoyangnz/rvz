#!/usr/bin/env bash

BIN_DIR=zig-out/bin
TOOL_CHAIN_PREFIX=../xpacks/.bin/riscv-none-elf

rm -rf zig-out/bin/*
rm -rf zig-cache/*

MEM_BASE=0x8000000
rm -f src/layout_spl.ld && cp src/layout.ld.tpl src/layout_spl.ld && sed -i "s/@MEM_BASE@/${MEM_BASE}/g" src/layout_spl.ld

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

# mv ./start ${BIN_DIR}/splz.elf

${TOOL_CHAIN_PREFIX}-objdump -d -D ${BIN_DIR}/splz.elf > ${BIN_DIR}/splz.elf.objdump
${TOOL_CHAIN_PREFIX}-objcopy -S -O binary ${BIN_DIR}/splz.elf ${BIN_DIR}/splz.bin

spl_tool -c -f ${BIN_DIR}/splz.bin
cp ${BIN_DIR}/splz.bin.normal.out ../tools/vf2-programmer/
cd ../tools/vf2-programmer/ && go build && cd -

../tools/bin/vf2-programmer -l 3 -t


