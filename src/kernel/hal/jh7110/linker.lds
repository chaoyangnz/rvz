OUTPUT_ARCH("riscv")
OUTPUT_FORMAT("elf64-littleriscv")

ENTRY( _start )

MEMORY
{
	/* DDR4 has 4G size, we are unable to use it directly until it is initialised */
	dram (rw!x) : ORIGIN = 0x40000000, LENGTH = 256M
}

SECTIONS
{
	_ro_start = ORIGIN(dram);

	.text : { *(.text .text*) } > dram
	.gnu_build_id : { *(.note.gnu.build-id) } > dram
	.rodata : { *(.rodata .rodata* .srodata .srodata*) } > dram

	_ro_end = .;

	.data : { 
		_data_start = ABSOLUTE(.);
		*(.data .data* .sdata .sdata*) 
		_data_end = ABSOLUTE(.);
	} > dram
	_data_loadaddr = LOADADDR(.data);
	_data_len = _data_end - _data_start;

	.bss : ALIGN(4) { 
		_bss_start = ABSOLUTE(.);
		*(.bss .sbss) 
		_bss_end = ABSOLUTE(.);
	} > dram

	_heap_start = ABSOLUTE(.);
  	_heap_len = _stack_top - _stack_len - _heap_start;
	_heap_end = _heap_start + _heap_len;

	_stack_top = ABSOLUTE(ORIGIN(dram) + LENGTH(dram));
	_stack_start = _stack_top - _stack_len;
	_stack_len = 0x1000;
	_stack_end = _stack_top;
	
	_end = .;
}