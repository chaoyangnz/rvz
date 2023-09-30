const std = @import("std");
const uart = @import("./uart.zig");
const clock = @import("./clock.zig");
const console = @import("../console.zig");

pub fn init() void {
    // clock.init();
    uart.init();
    uart.tx('\n');

    console.init(uart.tx);
    console.printf("console initialised\n", .{});
}
