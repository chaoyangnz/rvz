const std = @import("std");
const uart = @import("./uart.zig");
const clock = @import("./clock.zig");
const console = @import("./console.zig");

export fn init() void {
    // clock.init();
    uart.init();

    console.init(.{ .tx = uart.tx });
    console.printf("D1 initialised", .{});
}
