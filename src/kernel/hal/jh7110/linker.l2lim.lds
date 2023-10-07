OUTPUT_ARCH("riscv")
OUTPUT_FORMAT("elf64-littleriscv")

ENTRY( _start )

MEMORY
{
	/* VF2 load the payload to L2 LIM, which is only 1M size */
	l2lim (rw!x) : ORIGIN = 0x08000000, LENGTH = 1M
}

SECTIONS
{
	_ro_start = ORIGIN(l2lim);

	.text : { *(.text .text*) } > l2lim
	.gnu_build_id : { *(.note.gnu.build-id) } > l2lim
	.rodata : { *(.rodata .rodata* .srodata .srodata*) } > l2lim

	_ro_end = .;

	.data : { 
		_data_start = ABSOLUTE(.);
		*(.data .data* .sdata .sdata*) 
		_data_end = ABSOLUTE(.);
	} > l2lim
	_data_loadaddr = LOADADDR(.data);
	_data_len = _data_end - _data_start;

	.bss : ALIGN(4) { 
		_bss_start = ABSOLUTE(.);
		*(.bss .sbss) 
		_bss_end = ABSOLUTE(.);
	} > l2lim

	_heap_start = ABSOLUTE(.);
  	_heap_len = _stack_top - _stack_len - _heap_start;
	_heap_end = _heap_start + _heap_len;

	_stack_top = ABSOLUTE(ORIGIN(l2lim) + LENGTH(l2lim));
	_stack_start = _stack_top - _stack_len;
	_stack_len = 0x1000;
	_stack_end = _stack_top;
	
	_end = .;
}