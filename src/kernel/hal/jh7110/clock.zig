const peripherals = @import("../../soc/jh7110.zig").devices.JH71110.peripherals;

fn mtime() usize {
    return peripherals.sifive_clint0_0.mtime.raw;
}

pub const TimeUnit = enum(u2) {
    sec,
    ms,
    us,
};

const TICKS_PER_SECOND = 4_000_000; //4M Hz;

// delay in seconds/milliseconds/microseconds
// 1μs = 1MHz: our CPU reference clock frequency is TICKS_PER_SECOND Hz which is used by mtime
// so 1 cycle = 4μs
// μs is highly inacurate
pub fn delay(n: usize, unit: TimeUnit) void {
    var ticks: usize = switch (unit) {
        .sec => n * TICKS_PER_SECOND,
        .ms => n * TICKS_PER_SECOND / 1_000,
        .us => n * TICKS_PER_SECOND / 1_000_000,
    };
    const t = mtime() + ticks;
    while (mtime() < t) {}
}
