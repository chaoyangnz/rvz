const peripherals = @import("../../soc/d1-h.zig").devices.D1H.peripherals;

pub fn init() void {
    peripherals.GPIO.pc_cfg0.modify(.{
        .PC0_SELECT = .LEDC_DO,
    });
}
