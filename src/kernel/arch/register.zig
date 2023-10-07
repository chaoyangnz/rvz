const std = @import("std");
const assert = std.debug.assert;

pub fn Register(comptime PackedT: type, readFn: *const fn () std.meta.Int(.unsigned, @bitSizeOf(PackedT)), writeFn: *const fn (v: std.meta.Int(.unsigned, @bitSizeOf(PackedT))) void) type {
    const size = @bitSizeOf(PackedT);
    if ((size % 8) != 0)
        @compileError("size must be divisible by 8!");

    if (!std.math.isPowerOfTwo(size / 8))
        @compileError("size must encode a power of two number of bytes!");

    const IntT = std.meta.Int(.unsigned, size);

    if (@sizeOf(PackedT) != (size / 8))
        @compileError(std.fmt.comptimePrint("IntT and PackedT must have the same size!, they are {} and {} bytes respectively", .{ size / 8, @sizeOf(PackedT) }));

    return extern struct {
        const Self = @This();

        pub const underlying_type = PackedT;

        pub inline fn read_raw(addr: *volatile Self) IntT {
            _ = addr;
            return readFn();
        }

        pub inline fn read(addr: *volatile Self) PackedT {
            return @bitCast(addr.raw);
        }

        /// write the full PackedT
        pub inline fn write(addr: *volatile Self, val: PackedT) void {
            comptime {
                assert(@bitSizeOf(PackedT) == @bitSizeOf(IntT));
            }
            addr.write_raw(@bitCast(val));
        }

        pub inline fn write_raw(addr: *volatile Self, val: IntT) void {
            _ = addr;
            writeFn(val);
        }

        /// modify/patch only the specific fileds based on the existing value
        pub inline fn modify(addr: *volatile Self, fields: anytype) void {
            var val = read(addr);
            inline for (@typeInfo(@TypeOf(fields)).Struct.fields) |field| {
                @field(val, field.name) = @field(fields, field.name);
            }
            write(addr, val);
        }

        /// toggle the specific fields only
        pub inline fn toggle(addr: *volatile Self, fields: anytype) void {
            var val = read(addr);
            inline for (@typeInfo(@TypeOf(fields)).Struct.fields) |field| {
                @field(val, @tagName(field.default_value.?)) = !@field(val, @tagName(field.default_value.?));
            }
            write(addr, val);
        }

        // extensions
        /// set only the specific fields, others are defaults typically zeros
        pub inline fn assign(addr: *volatile Self, fields: anytype, default_value: IntT) void {
            var val: PackedT = @bitCast(default_value);
            inline for (@typeInfo(@TypeOf(fields)).Struct.fields) |field| {
                @field(val, field.name) = @field(fields, field.name);
            }
            write(addr, val);
        }

        /// set a field only
        pub inline fn set_field(addr: *volatile Self, comptime field_name: []const u8, value: anytype) void {
            var val = read(addr);
            @field(val, field_name) = value;
            write(addr, val);
        }

        pub inline fn get_field(addr: *volatile Self, comptime field_name: []const u8) u1 {
            var val = read(addr);
            return @field(val, field_name);
        }

        /// set a bit
        pub inline fn set_bit(addr: *volatile Self, index: u5, value: u1) void {
            var val = read_raw(addr);
            const mask: IntT = 1 << index;
            if (value == 1) {
                write_raw(addr, val | mask);
            } else {
                write_raw(addr, val & ~mask);
            }
        }
    };
}
