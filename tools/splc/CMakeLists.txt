set(C_FLAGS -Wall -Werror -O -fno-omit-frame-pointer -MD -mcmodel=medany -ffreestanding -fno-common -nostdlib -mno-relax -I. -fno-stack-protector -fno-pie -no-pie -march=rv64gc -mabi=lp64d)
set(ASM_FLAGS ${C_FLAGS})
set(LD_FLAGS -z max-page-size=4096 ${C_FLAGS})

# set(KERNEL_BASE 0x8000000)
set(KERNEL_BASE 0x40000000)

add_executable(spl_test
    spl_test/entry.S
    spl_test/start.c
    spl_test/uart.c
    spl_test/printf.c
    spl_test/clock.c
)
set_target_properties(spl_test PROPERTIES OUTPUT_NAME "spl_test.elf")
add_compile_definitions(KERNEL_BASE=${KERNEL_BASE})

target_compile_options(spl_test PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${C_FLAGS}>
    $<$<COMPILE_LANGUAGE:ASM>:${ASM_FLAGS}>
)
target_link_options(spl_test PRIVATE ${LD_FLAGS} -T ${CMAKE_SOURCE_DIR}/spl_test/layout.ld)

add_custom_command (TARGET spl_test
    POST_BUILD
    COMMAND ${RISCV}-objdump -d -D spl_test.elf > spl_test.elf.objdump
    COMMAND ${RISCV}-objdump -S spl_test.elf > spl_test.elf.asm
    COMMAND ${RISCV}-objcopy -S -O binary spl_test.elf spl_test.bin
    # for uboot fw_payload replacement in flash uboot partition
    # COMMAND ${CMAKE_SOURCE_DIR}/tools/bin/vf2-uboot-fit-imager -i spl_test.bin -o spl_test.img
    COMMAND ${CMAKE_SOURCE_DIR}/tools/bin/vf2-fw-programmer spl_test.bin
    # for spl/recovery replacement
    COMMAND ${CMAKE_SOURCE_DIR}/tools/bin/xmodem-pad -i spl_test.bin.normal.out -o spl_test.xmod.bin
    COMMAND spl_tool -c -f spl_test.xmod.bin
    COMMENT "Make binary & dump"
)

add_custom_target(
    generate_ld_file
    COMMAND rm spl_test/layout.ld && cp spl_test/layout.ld.tpl spl_test/layout.ld && sed -i 's/@KERNEL_BASE@/${KERNEL_BASE}/g' spl_test/layout.ld
    DEPENDS spl_test/layout.ld.tpl
    COMMENT "Generate linker ld file"
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)

add_dependencies(spl_test generate_ld_file)