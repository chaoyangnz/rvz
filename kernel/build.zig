const std = @import("std");
const Target = std.Target;
const Zig = std.zig;
const FileSource = std.build.FileSource;
const Builder = std.build.Builder;
const FeatureSet = std.Target.Cpu.Feature.Set;

pub fn build(b: *Builder) void {
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
        .root_source_file = .{ .path = "src/start.zig" },
        .target = target,
    });
    exe.setLinkerScript(.{ .path = "src/layout_kernel.ld" });
    exe.addAssemblyFile(.{ .path = "src/entry.S" });
    exe.omit_frame_pointer = false;
    exe.stack_protector = false;
    exe.pie = false;
    exe.code_model = .medium;
    exe.setVerboseCC(true);
    exe.setVerboseLink(true);
    b.installArtifact(exe);

    b.default_step.dependOn(&exe.step);
}
