const printf = @import("./console.zig").printf;

var sdata_var: u8 = 1;
var bss_var: u8 = undefined;

const _ro_start = @extern([*]u8, .{ .name = "_ro_start" });
const _ro_end = @extern([*]u8, .{ .name = "_ro_end" });
const _data_loadaddr = @extern([*]u8, .{ .name = "_data_loadaddr" });
const _data_start = @extern([*]u8, .{ .name = "_data_start" });
const _data_end = @extern([*]u8, .{ .name = "_data_end" });
const _bss_start = @extern([*]u8, .{ .name = "_bss_start" });
const _bss_end = @extern([*]u8, .{ .name = "_bss_end" });
const _heap_start = @extern([*]u8, .{ .name = "_heap_start" });
const _heap_end = @extern([*]u8, .{ .name = "_heap_end" });
const _stack_start = @extern([*]u8, .{ .name = "_stack_start" });
const _stack_end = @extern([*]u8, .{ .name = "_stack_end" });
const _stack_top = @extern([*]u8, .{ .name = "_stack_top" });

/// !this is only needed when we put .data section in rom/flash in linker
/// initialise .bss section to 0
/// move .data section from flash to ram
/// this function is supposed to be called as the first one in main()
pub fn init() void {
    const bss_len = @intFromPtr(_bss_end) - @intFromPtr(_bss_start);
    const data_len = @intFromPtr(_data_end) - @intFromPtr(_data_start);
    const stack_len = @intFromPtr(_stack_end) - @intFromPtr(_stack_start);

    // Clear .bss.  We'll do this inline (vs. calling memset) just to be
    // certain that there are no issues with the state of global variables.
    //
    for (0..bss_len) |i| {
        _bss_start[i] = 0;
    }

    for (0..stack_len) |i| {
        _stack_start[i] = 0;
    }

    // Move the initialized data section from his temporary holding spot in
    // FLASH into the correct place in SRAM.  The correct place in SRAM is
    // give by _data_start and _data_end.  The temporary location is in FLASH at the
    // end of all of the other read-only data (.text, .rodata) at _data_loadaddr.
    for (0..data_len) |i| {
        _data_start[i] = _data_loadaddr[i];
    }
}

/// run memtest to check if the sections are put in the expected location and
/// also test variables: global data, uninitialised, and local
/// This one can be called after console is initialised
pub fn run_test() void {
    printf("text+rodata: {*} ~ {*}\n", .{ _ro_start, _ro_end });
    printf("data: {*} ~ {*} loadaddr: {*}\n", .{ _data_start, _data_end, _data_loadaddr });
    printf("bss: {*} ~ {*}\n", .{ _bss_start, _bss_end });
    printf("heap: {*} ~ {*}\n", .{ _heap_start, _heap_end });
    printf("stack: {*} ~ {*} at {*}\n", .{ _stack_start, _stack_end, _stack_top });

    var local_var: u8 = 1;
    bss_var = local_var;

    printf("variables in sdata: {*} bss: {*} stack local: {*}\n", .{ &sdata_var, &bss_var, &local_var });
}

export const stack0 align(16) = [_]u8{0} ** (4096 * 4);
