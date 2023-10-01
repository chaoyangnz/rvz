const uart = @import("./uart.zig");
const console = @import("../console.zig");

pub fn init() void {
    uart.init();

    uart.printf("\nuart initialised\n");

    console.init(uart.tx);
    console.printf("console intialised\n", .{});
}
