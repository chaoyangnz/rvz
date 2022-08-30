const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    var d1_cpu_feat = FeatureSet.empty;
    d1_cpu_feat.addFeature(@enumToInt(std.Target.riscv.Feature.m));
    d1_cpu_feat.addFeature(@enumToInt(std.Target.riscv.Feature.a));
    d1_cpu_feat.addFeature(@enumToInt(std.Target.riscv.Feature.c));
    const target = Zig.CrossTarget{
        .cpu_arch = Target.Cpu.Arch.riscv64,
        .os_tag = Target.Os.Tag.freestanding,
        .abi = Target.Abi.none,
        .cpu_features_sub = std.Target.riscv.cpu.baseline_rv64.features,
        .cpu_features_add = d1_cpu_feat,
    };

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable("kernel", "src/start.zig");
    exe.setLinkerScriptPath(FileSource{ .path = "src/kernel.ld" });
    exe.setTarget(target);
    exe.setBuildMode(mode);

    exe.addCSourceFile("src/entry.S", &[_][]const u8{});
    exe.addCSourceFile("src/clock.c", &[_][]const u8{});


    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    // const run_step = b.step("run", "Run the app");
    // run_step.dependOn(&run_cmd.step);

    // const exe_tests = b.addTest("src/main.zig");
    // exe_tests.setTarget(target);
    // exe_tests.setBuildMode(mode);

    // const test_step = b.step("test", "Run unit tests");
    // test_step.dependOn(&exe_tests.step);

    b.default_step.dependOn(&exe.step);
    b.installArtifact(exe);
}
