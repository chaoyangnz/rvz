const std = @import("std");
const Target = std.Target;
const Zig = std.zig;
const FileSource = std.build.FileSource;
const Build = std.Build;
const FeatureSet = std.Target.Cpu.Feature.Set;

const verboseCC = false;
const verboseLink = false;

const Board = enum {
    vf2,
    nezha,
};

pub fn build(b: *Build) void {
    var kernel = b.step("kernel", "Build kernel");

    var board = b.option(Board, "board", "target board");
    if (board == null) {
        std.debug.print("No board is specified, use VisionFive2 as fallback\n", .{});
        board = .vf2;
    }

    var install_kernel = switch (board.?) {
        .vf2 => build_kernel_jh7110(b),
        .nezha => build_kernel_d1(b),
    };

    var objcopy = b.addSystemCommand(&[_][]const u8{
        "xpacks/.bin/riscv-none-elf-objcopy",
        "-O",
        "binary",
        "zig-out/bin/kernel.elf",
        "zig-out/bin/kernel.bin",
    });
    objcopy.step.dependOn(&install_kernel.step);
    // var objcopy = b.addObjCopy(.{ .path = "zig-out/bin/kernel.elf" }, .{ .format = .bin });
    var objdump = b.addSystemCommand(&[_][]const u8{
        "xpacks/.bin/riscv-none-elf-objdump",
    });
    objdump.addArgs(&[_][]const u8{
        "-h",
        "-d",
        "-S",
        "zig-out/bin/kernel.elf",
    });
    objdump.step.dependOn(&install_kernel.step);

    var download_kernel = b.addSystemCommand(&[_][]const u8{ "xfel", "write", "0x40000000", "zig-out/bin/kernel.bin" });
    download_kernel.step.dependOn(&objcopy.step);

    kernel.dependOn(&objcopy.step);
    // kernel.dependOn(&download_kernel.step);
    // kernel.dependOn(&objdump.step);
}

fn build_kernel_d1(b: *Build) *std.Build.Step.InstallArtifact {
    const target = Zig.CrossTarget{
        .cpu_arch = .riscv64,
        .os_tag = .freestanding,
        .abi = .none,
        .cpu_model = .{
            .explicit = &Target.riscv.cpu.generic_rv64,
        },
        // RV64GCV
        .cpu_features_add = Target.riscv.featureSet(&[_]Target.riscv.Feature{
            .m,
            .a,
            .f,
            .d,
            .c,
            .v,
        }),
    };

    const exe = b.addExecutable(.{
        .name = "kernel.elf",
        .root_source_file = .{ .path = "src/kernel/main.zig" },
        .target = target,
        .optimize = .Debug,
    });
    exe.setLinkerScriptPath(.{ .path = "src/kernel/hal/d1-h/linker.lds" });
    exe.addAssemblyFile(.{ .path = "src/kernel/hal/d1-h/start.S" });
    exe.omit_frame_pointer = false;
    exe.stack_protector = false;
    exe.pie = false;
    exe.code_model = .medium;
    exe.setVerboseCC(verboseCC);
    exe.setVerboseLink(verboseLink);
    return b.addInstallArtifact(exe, .{});
}

fn build_kernel_jh7110(b: *Build) *std.Build.Step.InstallArtifact {
    const target = Zig.CrossTarget{
        .cpu_arch = .riscv64,
        .os_tag = .freestanding,
        .abi = .none,
        .cpu_model = .{
            .explicit = &Target.riscv.cpu.sifive_u74,
        },
    };

    const exe = b.addExecutable(.{
        .name = "kernel.elf",
        .root_source_file = .{ .path = "src/kernel/main.zig" },
        .target = target,
        .optimize = .Debug,
    });
    exe.setLinkerScriptPath(.{ .path = "src/kernel/hal/jh7110/linker.lds" });
    exe.addAssemblyFile(.{ .path = "src/kernel/hal/jh7110/start.S" });
    exe.omit_frame_pointer = false;
    exe.stack_protector = false;
    exe.pie = false;
    exe.code_model = .medium;
    exe.setVerboseCC(verboseCC);
    exe.setVerboseLink(verboseLink);
    return b.addInstallArtifact(exe, .{});
}
