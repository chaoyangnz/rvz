const console = @import("./console.zig");

pub fn init() void {
    const board = @import("build_options").board;

    switch (board) {
        .vf2 => @import("./jh7110/sys.zig").init(),
        .nezha => @import("./d1-h/sys.zig").init(),
    }

    console.printf("{s} initialised\n", .{@tagName(board)});
}
