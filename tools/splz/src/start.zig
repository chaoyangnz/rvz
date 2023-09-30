const rv = @import("./riscv.zig");
const uart = @import("./uart.zig");

export const stack0 align(16) = [_]u8{0} ** (4096 * 4);

export fn start() callconv(.Naked) void {
    uart.printf("\nSPL utility to init DDR, move binary to DDR and run\n");
    uart.poll();
}
