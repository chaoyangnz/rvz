const peripherals = @import("../../soc/d1-h.zig").devices.D1H.peripherals;

fn set_pll_cpux_axi() void {
    // Select cpux clock src (24:26) to OSC24mhz, axi divide ratio N (8:9) is 3, system apb clk ratio M (0:4) is 4
    peripherals.CCU.RISCV_CLK.assign(.{
        .CLK_SRC_SEL = .HOSC,
        .AXI_DIV_CFG = 0b11,
        .DIV_CFG = 0b00001,
    }, 0x0);
    delay(1, .us);

    peripherals.CCU.PLL_CPU_CTRL.modify(.{
        // Disable PLL gating
        .PLL_OUTPUT_GATE = .disable,
        // Enable PLL LDO
        .PLL_LDO_EN = .enable,
    });
    delay(5, .us);

    peripherals.CCU.PLL_CPU_CTRL.modify(.{
        // Lock enable
        .LOCK_ENABLE = .enable,
        // Enable PLL
        .PLL_EN = .enable,
    });

    // Wait pll stable
    while (peripherals.CCU.PLL_CPU_CTRL.read().LOCK != .locked) {}
    delay(20, .us);

    peripherals.CCU.PLL_CPU_CTRL.modify(.{
        // // Enable pll gating
        .PLL_OUTPUT_GATE = .enable,
        // Lock disable
        .LOCK_ENABLE = .disable,
    });
    delay(1, .us);

    // Set and change cpu clk src
    peripherals.CCU.RISCV_CLK.modify(.{
        .CLK_SRC_SEL = .PLL_CPU,
        .AXI_DIV_CFG = 0b01,
        .DIV_CFG = 0b00000,
    });
    delay(1, .us);
}

pub fn set_pll_periph0() void {
    if (peripherals.CCU.PLL_PERI_CTRL.read().PLL_EN == .enable) {
        return;
    }

    // Change psi src to osc24m
    peripherals.CCU.PSI_CLK.modify(.{ .CLK_SRC_SEL = .HOSC });
    // Set default val
    peripherals.CCU.PLL_PERI_CTRL.assign(.{ .PLL_N = 0b01100011 }, 0x0);
    // lock enable
    peripherals.CCU.PLL_PERI_CTRL.modify(.{ .LOCK_ENABLE = .enable });
    // Enabe pll 600m(1x) 1200m(2x)
    peripherals.CCU.PLL_PERI_CTRL.modify(.{ .PLL_EN = .enable });
    // Wait pll stable
    while (peripherals.CCU.PLL_PERI_CTRL.read().LOCK_ENABLE != .enable) {}
    delay(20, .us);
    // lock disable
    peripherals.CCU.PLL_PERI_CTRL.modify(.{ .LOCK_ENABLE = .disable });
}

fn set_ahb() void {
    peripherals.CCU.PSI_CLK.assign(.{ .FACTOR_M = 2, .FACTOR_N = .N1 }, 0x0);
    peripherals.CCU.PSI_CLK.modify(.{ .CLK_SRC_SEL = .PLL_PERI_1X });
    delay(1, .us);
}

fn set_apb() void {
    peripherals.CCU.APB0_CLK.assign(.{ .FACTOR_M = 2, .FACTOR_N = .N2 }, 0x0);
    peripherals.CCU.APB0_CLK.modify(.{ .CLK_SRC_SEL = .PLL_PERI_1X });
    delay(1, .us);
}

fn set_dma() void {
    // Dma reset
    peripherals.CCU.DMA_BGR.modify(.{ .RST = .Deassert });
    delay(20, .us);
    // Enable gating clock for dma
    peripherals.CCU.DMA_BGR.modify(.{ .GATING = .Pass });
}

fn set_mbus() void {
    // Reset mbus domain
    peripherals.CCU.MBUS_CLK.modify(.{ .MBUS_RST = .Deassert });
    delay(1, .us);
}

fn set_module() void {
    // TODO
}

pub fn init() void {
    set_pll_cpux_axi();
    set_pll_periph0();
    set_ahb();
    set_apb();
    set_dma();
    set_mbus();
}

fn mtime() usize {
    return peripherals.CLINT.mtime.raw;
}

pub const TimeUnit = enum(u2) {
    sec,
    ms,
    us,
};

const TICKS_PER_SECOND = 24_000_000; //24mHz;

// delay in seconds/milliseconds/microseconds
// 1μs = 1MHz: our CPU reference clock frequency is TICKS_PER_SECOND Hz which is used by mtime
// so 1 cycle = 30.5μs
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
