const print = @import("std").debug.print;

fn putc(c: u8) void {
    _ = c;
}

pub fn main() !void {
    for ("Hello~") |c| {
        putc(c);
    }
}
