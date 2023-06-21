const std = @import("std");
const Target = std.Target;
const Zig = std.zig;
const FileSource = std.build.FileSource;
const Builder = std.build.Builder;
const FeatureSet = std.Target.Cpu.Feature.Set;

pub fn build(b: *Builder) void {
    const target = Zig.CrossTarget{ .cpu_arch = Target.Cpu.Arch.riscv64, .os_tag = Target.Os.Tag.freestanding, .abi = Target.Abi.none, .cpu_model = .{ .explicit = &Target.riscv.cpu.sifive_u74 } };

    const spl = b.addExecutable(.{
        .name = "splz.elf",
        .root_source_file = .{ .path = "src/start.zig" },
        .target = target,
    });
    spl.setLinkerScriptPath(.{ .path = "src/layout_spl.ld" });
    spl.addAssemblyFileSource(.{ .path = "src/entry.S" });
    spl.omit_frame_pointer = false;
    spl.stack_protector = false;
    spl.pie = false;
    spl.code_model = .medium;
    spl.setVerboseCC(true);
    spl.setVerboseLink(true);
    b.installArtifact(spl);

    b.default_step.dependOn(&spl.step);
}
