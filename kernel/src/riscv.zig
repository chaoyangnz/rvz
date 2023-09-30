pub inline fn w_mem(comptime T: type, address: usize, v: T) void {
    const ptr = @as(*volatile T, @ptrFromInt(address));
    ptr.* = v;
}

pub fn r_mem(comptime T: type, address: usize) T {
    const ptr = @as(*volatile T, @ptrFromInt(address));
    return ptr.*;
}

pub fn hardid() u8 {
    return asm volatile ("csrr %[ret], mhartid"
        : [ret] "=r" (-> u8),
    );
}

const CLINT: usize = 0x2000000;
const MTIME_MMAP_OFFSET: usize = 0xBFF8;
const MTIME_FREQ: usize = 4000000; // 4M Hz

fn r_mtime() usize {
    return r_mem(usize, CLINT + MTIME_MMAP_OFFSET);
}

// delay in microseconds
// 1μs = 1MHz: our CPU reference clock frequency is 4MHz which is used by mtime, so 1 CPU cycle is 1/24 μs
// For 1μs, we need 24 CPU cycles
pub fn delay(us: usize) void {
    var cycle1: usize = r_mtime();
    const cycle2 = cycle1 + us * (MTIME_FREQ / 1000000);
    while (cycle2 >= cycle1) {
        cycle1 = r_mtime();
    }
}
