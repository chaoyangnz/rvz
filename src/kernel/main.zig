const std = @import("std");
// const sys = @import("./hal/d1-h/sys.zig");
const sys = @import("./hal/jh7110/sys.zig");
const console = @import("./hal/console.zig");

export fn main() void {
    sys.init();

    console.printf(" +-+-+-+-+-+\n |x|v|z|o|s|\n +-+-+-+-+-+\n", .{});
}
