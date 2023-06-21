cmake_minimum_required (VERSION 3.13)
set(CMAKE_C_COMPILER_WORKS "STATIC_LIBRARY")

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv)
set(CMAKE_CROSSCOMPILING 1)
set(CMAKE_VERBOSE_MAKEFILE ON)

project(rvx C ASM)

##################### CROSS COMPILING TOOL CHAIN ############################
#set(RISCV "/opt/riscv/bin/riscv64-unknown-elf")
set(RISCV "${CMAKE_SOURCE_DIR}/xpacks/.bin/riscv-none-elf")

# Toolchain
set(CMAKE_AR "${RISCV}-ar")
set(CMAKE_RANLIB  "${RISCV}-ranlib")
set(CMAKE_ASM_COMPILER "${RISCV}-gcc")
set(CMAKE_C_COMPILER "${RISCV}-gcc")
set(CMAKE_LINKER ${RISCV}-ld)
set(CMAKE_C_FLAGS "")
set(CMAKE_C_LINK_FLAGS "")
set(CMAKE_ASM_FLAGS "")
set(CMAKE_EXE_LINKER_FLAGS "")
include_directories(${CMAKE_SOURCE_DIR})

include(${CMAKE_CURRENT_SOURCE_DIR}/splc/CMakeLists.txt)
