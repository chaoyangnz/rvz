const mmio = @import("./mmio.zig");

pub const devices = struct {
    /// From StarFive VisionFive 2 v1.3b,model device generator
    pub const JH71110 = struct {
        pub const vendor = "";
        pub const series = "";
        pub const width = 32;
        pub const peripherals = struct {
            /// From starfive,jh7110-clint, peripheral generator
            pub const starfive_jh7110_clint_0 = struct {};

            /// From sifive,clint0, peripheral generator
            pub const sifive_clint0_0 = struct {
                /// MSIP Register for hart 0
                pub const msip_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0x2000000));

                /// MSIP Register for hart 1
                pub const msip_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0x2000004));

                /// MSIP Register for hart 2
                pub const msip_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0x2000008));

                /// MSIP Register for hart 3
                pub const msip_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0x200000c));

                /// MSIP Register for hart 4
                pub const msip_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0x2000010));

                /// MTIMECMP Register for hart 0
                pub const mtimecmp_0 = @as(*volatile mmio.Mmio(packed struct(u64) {
                    /// [0:63]
                    raw: u64 = 0,
                }), @ptrFromInt(0x2004000));

                /// MTIMECMP Register for hart 1
                pub const mtimecmp_1 = @as(*volatile mmio.Mmio(packed struct(u64) {
                    /// [0:63]
                    raw: u64 = 0,
                }), @ptrFromInt(0x2004008));

                /// MTIMECMP Register for hart 2
                pub const mtimecmp_2 = @as(*volatile mmio.Mmio(packed struct(u64) {
                    /// [0:63]
                    raw: u64 = 0,
                }), @ptrFromInt(0x2004010));

                /// MTIMECMP Register for hart 3
                pub const mtimecmp_3 = @as(*volatile mmio.Mmio(packed struct(u64) {
                    /// [0:63]
                    raw: u64 = 0,
                }), @ptrFromInt(0x2004018));

                /// MTIMECMP Register for hart 4
                pub const mtimecmp_4 = @as(*volatile mmio.Mmio(packed struct(u64) {
                    /// [0:63]
                    raw: u64 = 0,
                }), @ptrFromInt(0x2004020));

                /// MTIME Register
                pub const mtime = @as(*volatile mmio.Mmio(packed struct(u64) {
                    /// [0:63]
                    raw: u64 = 0,
                }), @ptrFromInt(0x200bff8));
            };

            /// From starfive,jh7110-plic, peripheral generator
            pub const starfive_jh7110_plic_0 = struct {};

            /// From sifive,plic0, peripheral generator
            pub const sifive_plic0_0 = struct {
                /// PRIORITY Register for interrupt id 1
                pub const priority_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000004));

                /// PRIORITY Register for interrupt id 2
                pub const priority_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000008));

                /// PRIORITY Register for interrupt id 3
                pub const priority_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00000c));

                /// PRIORITY Register for interrupt id 4
                pub const priority_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000010));

                /// PRIORITY Register for interrupt id 5
                pub const priority_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000014));

                /// PRIORITY Register for interrupt id 6
                pub const priority_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000018));

                /// PRIORITY Register for interrupt id 7
                pub const priority_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00001c));

                /// PRIORITY Register for interrupt id 8
                pub const priority_8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000020));

                /// PRIORITY Register for interrupt id 9
                pub const priority_9 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000024));

                /// PRIORITY Register for interrupt id 10
                pub const priority_10 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000028));

                /// PRIORITY Register for interrupt id 11
                pub const priority_11 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00002c));

                /// PRIORITY Register for interrupt id 12
                pub const priority_12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000030));

                /// PRIORITY Register for interrupt id 13
                pub const priority_13 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000034));

                /// PRIORITY Register for interrupt id 14
                pub const priority_14 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000038));

                /// PRIORITY Register for interrupt id 15
                pub const priority_15 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00003c));

                /// PRIORITY Register for interrupt id 16
                pub const priority_16 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000040));

                /// PRIORITY Register for interrupt id 17
                pub const priority_17 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000044));

                /// PRIORITY Register for interrupt id 18
                pub const priority_18 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000048));

                /// PRIORITY Register for interrupt id 19
                pub const priority_19 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00004c));

                /// PRIORITY Register for interrupt id 20
                pub const priority_20 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000050));

                /// PRIORITY Register for interrupt id 21
                pub const priority_21 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000054));

                /// PRIORITY Register for interrupt id 22
                pub const priority_22 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000058));

                /// PRIORITY Register for interrupt id 23
                pub const priority_23 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00005c));

                /// PRIORITY Register for interrupt id 24
                pub const priority_24 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000060));

                /// PRIORITY Register for interrupt id 25
                pub const priority_25 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000064));

                /// PRIORITY Register for interrupt id 26
                pub const priority_26 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000068));

                /// PRIORITY Register for interrupt id 27
                pub const priority_27 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00006c));

                /// PRIORITY Register for interrupt id 28
                pub const priority_28 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000070));

                /// PRIORITY Register for interrupt id 29
                pub const priority_29 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000074));

                /// PRIORITY Register for interrupt id 30
                pub const priority_30 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000078));

                /// PRIORITY Register for interrupt id 31
                pub const priority_31 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00007c));

                /// PRIORITY Register for interrupt id 32
                pub const priority_32 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000080));

                /// PRIORITY Register for interrupt id 33
                pub const priority_33 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000084));

                /// PRIORITY Register for interrupt id 34
                pub const priority_34 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000088));

                /// PRIORITY Register for interrupt id 35
                pub const priority_35 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00008c));

                /// PRIORITY Register for interrupt id 36
                pub const priority_36 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000090));

                /// PRIORITY Register for interrupt id 37
                pub const priority_37 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000094));

                /// PRIORITY Register for interrupt id 38
                pub const priority_38 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000098));

                /// PRIORITY Register for interrupt id 39
                pub const priority_39 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00009c));

                /// PRIORITY Register for interrupt id 40
                pub const priority_40 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000a0));

                /// PRIORITY Register for interrupt id 41
                pub const priority_41 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000a4));

                /// PRIORITY Register for interrupt id 42
                pub const priority_42 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000a8));

                /// PRIORITY Register for interrupt id 43
                pub const priority_43 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000ac));

                /// PRIORITY Register for interrupt id 44
                pub const priority_44 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000b0));

                /// PRIORITY Register for interrupt id 45
                pub const priority_45 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000b4));

                /// PRIORITY Register for interrupt id 46
                pub const priority_46 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000b8));

                /// PRIORITY Register for interrupt id 47
                pub const priority_47 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000bc));

                /// PRIORITY Register for interrupt id 48
                pub const priority_48 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000c0));

                /// PRIORITY Register for interrupt id 49
                pub const priority_49 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000c4));

                /// PRIORITY Register for interrupt id 50
                pub const priority_50 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000c8));

                /// PRIORITY Register for interrupt id 51
                pub const priority_51 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000cc));

                /// PRIORITY Register for interrupt id 52
                pub const priority_52 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000d0));

                /// PRIORITY Register for interrupt id 53
                pub const priority_53 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000d4));

                /// PRIORITY Register for interrupt id 54
                pub const priority_54 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000d8));

                /// PRIORITY Register for interrupt id 55
                pub const priority_55 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000dc));

                /// PRIORITY Register for interrupt id 56
                pub const priority_56 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000e0));

                /// PRIORITY Register for interrupt id 57
                pub const priority_57 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000e4));

                /// PRIORITY Register for interrupt id 58
                pub const priority_58 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000e8));

                /// PRIORITY Register for interrupt id 59
                pub const priority_59 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000ec));

                /// PRIORITY Register for interrupt id 60
                pub const priority_60 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000f0));

                /// PRIORITY Register for interrupt id 61
                pub const priority_61 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000f4));

                /// PRIORITY Register for interrupt id 62
                pub const priority_62 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000f8));

                /// PRIORITY Register for interrupt id 63
                pub const priority_63 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0000fc));

                /// PRIORITY Register for interrupt id 64
                pub const priority_64 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000100));

                /// PRIORITY Register for interrupt id 65
                pub const priority_65 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000104));

                /// PRIORITY Register for interrupt id 66
                pub const priority_66 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000108));

                /// PRIORITY Register for interrupt id 67
                pub const priority_67 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00010c));

                /// PRIORITY Register for interrupt id 68
                pub const priority_68 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000110));

                /// PRIORITY Register for interrupt id 69
                pub const priority_69 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000114));

                /// PRIORITY Register for interrupt id 70
                pub const priority_70 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000118));

                /// PRIORITY Register for interrupt id 71
                pub const priority_71 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00011c));

                /// PRIORITY Register for interrupt id 72
                pub const priority_72 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000120));

                /// PRIORITY Register for interrupt id 73
                pub const priority_73 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000124));

                /// PRIORITY Register for interrupt id 74
                pub const priority_74 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000128));

                /// PRIORITY Register for interrupt id 75
                pub const priority_75 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00012c));

                /// PRIORITY Register for interrupt id 76
                pub const priority_76 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000130));

                /// PRIORITY Register for interrupt id 77
                pub const priority_77 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000134));

                /// PRIORITY Register for interrupt id 78
                pub const priority_78 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000138));

                /// PRIORITY Register for interrupt id 79
                pub const priority_79 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00013c));

                /// PRIORITY Register for interrupt id 80
                pub const priority_80 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000140));

                /// PRIORITY Register for interrupt id 81
                pub const priority_81 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000144));

                /// PRIORITY Register for interrupt id 82
                pub const priority_82 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000148));

                /// PRIORITY Register for interrupt id 83
                pub const priority_83 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00014c));

                /// PRIORITY Register for interrupt id 84
                pub const priority_84 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000150));

                /// PRIORITY Register for interrupt id 85
                pub const priority_85 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000154));

                /// PRIORITY Register for interrupt id 86
                pub const priority_86 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000158));

                /// PRIORITY Register for interrupt id 87
                pub const priority_87 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00015c));

                /// PRIORITY Register for interrupt id 88
                pub const priority_88 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000160));

                /// PRIORITY Register for interrupt id 89
                pub const priority_89 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000164));

                /// PRIORITY Register for interrupt id 90
                pub const priority_90 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000168));

                /// PRIORITY Register for interrupt id 91
                pub const priority_91 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00016c));

                /// PRIORITY Register for interrupt id 92
                pub const priority_92 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000170));

                /// PRIORITY Register for interrupt id 93
                pub const priority_93 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000174));

                /// PRIORITY Register for interrupt id 94
                pub const priority_94 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000178));

                /// PRIORITY Register for interrupt id 95
                pub const priority_95 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00017c));

                /// PRIORITY Register for interrupt id 96
                pub const priority_96 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000180));

                /// PRIORITY Register for interrupt id 97
                pub const priority_97 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000184));

                /// PRIORITY Register for interrupt id 98
                pub const priority_98 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000188));

                /// PRIORITY Register for interrupt id 99
                pub const priority_99 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00018c));

                /// PRIORITY Register for interrupt id 100
                pub const priority_100 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000190));

                /// PRIORITY Register for interrupt id 101
                pub const priority_101 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000194));

                /// PRIORITY Register for interrupt id 102
                pub const priority_102 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000198));

                /// PRIORITY Register for interrupt id 103
                pub const priority_103 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00019c));

                /// PRIORITY Register for interrupt id 104
                pub const priority_104 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001a0));

                /// PRIORITY Register for interrupt id 105
                pub const priority_105 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001a4));

                /// PRIORITY Register for interrupt id 106
                pub const priority_106 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001a8));

                /// PRIORITY Register for interrupt id 107
                pub const priority_107 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001ac));

                /// PRIORITY Register for interrupt id 108
                pub const priority_108 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001b0));

                /// PRIORITY Register for interrupt id 109
                pub const priority_109 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001b4));

                /// PRIORITY Register for interrupt id 110
                pub const priority_110 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001b8));

                /// PRIORITY Register for interrupt id 111
                pub const priority_111 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001bc));

                /// PRIORITY Register for interrupt id 112
                pub const priority_112 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001c0));

                /// PRIORITY Register for interrupt id 113
                pub const priority_113 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001c4));

                /// PRIORITY Register for interrupt id 114
                pub const priority_114 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001c8));

                /// PRIORITY Register for interrupt id 115
                pub const priority_115 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001cc));

                /// PRIORITY Register for interrupt id 116
                pub const priority_116 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001d0));

                /// PRIORITY Register for interrupt id 117
                pub const priority_117 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001d4));

                /// PRIORITY Register for interrupt id 118
                pub const priority_118 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001d8));

                /// PRIORITY Register for interrupt id 119
                pub const priority_119 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001dc));

                /// PRIORITY Register for interrupt id 120
                pub const priority_120 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001e0));

                /// PRIORITY Register for interrupt id 121
                pub const priority_121 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001e4));

                /// PRIORITY Register for interrupt id 122
                pub const priority_122 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001e8));

                /// PRIORITY Register for interrupt id 123
                pub const priority_123 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001ec));

                /// PRIORITY Register for interrupt id 124
                pub const priority_124 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001f0));

                /// PRIORITY Register for interrupt id 125
                pub const priority_125 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001f4));

                /// PRIORITY Register for interrupt id 126
                pub const priority_126 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001f8));

                /// PRIORITY Register for interrupt id 127
                pub const priority_127 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc0001fc));

                /// PRIORITY Register for interrupt id 128
                pub const priority_128 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000200));

                /// PRIORITY Register for interrupt id 129
                pub const priority_129 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000204));

                /// PRIORITY Register for interrupt id 130
                pub const priority_130 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000208));

                /// PRIORITY Register for interrupt id 131
                pub const priority_131 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00020c));

                /// PRIORITY Register for interrupt id 132
                pub const priority_132 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000210));

                /// PRIORITY Register for interrupt id 133
                pub const priority_133 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000214));

                /// PRIORITY Register for interrupt id 134
                pub const priority_134 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000218));

                /// PRIORITY Register for interrupt id 135
                pub const priority_135 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00021c));

                /// PRIORITY Register for interrupt id 136
                pub const priority_136 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc000220));

                /// PENDING Register for interrupt ids 31 to 0
                pub const pending_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc001000));

                /// PENDING Register for interrupt ids 63 to 32
                pub const pending_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc001004));

                /// PENDING Register for interrupt ids 95 to 64
                pub const pending_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc001008));

                /// PENDING Register for interrupt ids 127 to 96
                pub const pending_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00100c));

                /// PENDING Register for interrupt ids 136 to 128
                pub const pending_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc001010));

                /// ENABLE Register for interrupt ids 31 to 0 for hart 0
                pub const enable_0_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002000));

                /// ENABLE Register for interrupt ids 63 to 32 for hart 0
                pub const enable_1_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002004));

                /// ENABLE Register for interrupt ids 95 to 64 for hart 0
                pub const enable_2_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002008));

                /// ENABLE Register for interrupt ids 127 to 96 for hart 0
                pub const enable_3_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00200c));

                /// ENABLE Register for interrupt ids 136 to 128 for hart 0
                pub const enable_4_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002010));

                /// ENABLE Register for interrupt ids 31 to 0 for hart 1
                pub const enable_0_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002080));

                /// ENABLE Register for interrupt ids 63 to 32 for hart 1
                pub const enable_1_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002084));

                /// ENABLE Register for interrupt ids 95 to 64 for hart 1
                pub const enable_2_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002088));

                /// ENABLE Register for interrupt ids 127 to 96 for hart 1
                pub const enable_3_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00208c));

                /// ENABLE Register for interrupt ids 136 to 128 for hart 1
                pub const enable_4_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002090));

                /// ENABLE Register for interrupt ids 31 to 0 for hart 2
                pub const enable_0_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002100));

                /// ENABLE Register for interrupt ids 63 to 32 for hart 2
                pub const enable_1_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002104));

                /// ENABLE Register for interrupt ids 95 to 64 for hart 2
                pub const enable_2_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002108));

                /// ENABLE Register for interrupt ids 127 to 96 for hart 2
                pub const enable_3_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00210c));

                /// ENABLE Register for interrupt ids 136 to 128 for hart 2
                pub const enable_4_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002110));

                /// ENABLE Register for interrupt ids 31 to 0 for hart 3
                pub const enable_0_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002180));

                /// ENABLE Register for interrupt ids 63 to 32 for hart 3
                pub const enable_1_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002184));

                /// ENABLE Register for interrupt ids 95 to 64 for hart 3
                pub const enable_2_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002188));

                /// ENABLE Register for interrupt ids 127 to 96 for hart 3
                pub const enable_3_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00218c));

                /// ENABLE Register for interrupt ids 136 to 128 for hart 3
                pub const enable_4_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002190));

                /// ENABLE Register for interrupt ids 31 to 0 for hart 4
                pub const enable_0_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002200));

                /// ENABLE Register for interrupt ids 63 to 32 for hart 4
                pub const enable_1_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002204));

                /// ENABLE Register for interrupt ids 95 to 64 for hart 4
                pub const enable_2_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002208));

                /// ENABLE Register for interrupt ids 127 to 96 for hart 4
                pub const enable_3_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc00220c));

                /// ENABLE Register for interrupt ids 136 to 128 for hart 4
                pub const enable_4_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc002210));

                /// PRIORITY THRESHOLD Register for hart 0
                pub const threshold_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc200000));

                /// CLAIM and COMPLETE Register for hart 0
                pub const claimplete_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc200004));

                /// PRIORITY THRESHOLD Register for hart 1
                pub const threshold_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc201000));

                /// CLAIM and COMPLETE Register for hart 1
                pub const claimplete_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc201004));

                /// PRIORITY THRESHOLD Register for hart 2
                pub const threshold_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc202000));

                /// CLAIM and COMPLETE Register for hart 2
                pub const claimplete_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc202004));

                /// PRIORITY THRESHOLD Register for hart 3
                pub const threshold_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc203000));

                /// CLAIM and COMPLETE Register for hart 3
                pub const claimplete_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc203004));

                /// PRIORITY THRESHOLD Register for hart 4
                pub const threshold_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc204000));

                /// CLAIM and COMPLETE Register for hart 4
                pub const claimplete_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31]
                    raw: u32 = 0,
                }), @ptrFromInt(0xc204004));
            };

            /// From starfive,jh7110-ccache, peripheral generator
            pub const starfive_jh7110_ccache_0 = struct {};

            /// From sifive,ccache0, peripheral generator
            pub const sifive_ccache0_0 = struct {};

            /// From cache, peripheral generator
            pub const cache_0 = struct {};

            /// From snps,dw-apb-uart, peripheral generator
            pub const snps_dw_apb_uart_0 = struct {};

            /// From snps,dw-apb-uart, peripheral generator
            pub const snps_dw_apb_uart_1 = struct {};

            /// From snps,dw-apb-uart, peripheral generator
            pub const snps_dw_apb_uart_2 = struct {};

            /// From snps,designware-i2c, peripheral generator
            pub const snps_designware_i2c_0 = struct {};

            /// From snps,designware-i2c, peripheral generator
            pub const snps_designware_i2c_1 = struct {};

            /// From snps,designware-i2c, peripheral generator
            pub const snps_designware_i2c_2 = struct {};

            /// From starfive,jh7110-stgcrg, peripheral generator
            pub const starfive_jh7110_stgcrg_0 = struct {
                /// Clock HIFI4 Core
                pub const clk_hifi4_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230000));

                /// Clock USB APB
                pub const clk_usb_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230004));

                /// Clock USB UTMI APB
                pub const clk_usb_utmi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230008));

                /// Clock USB AXI
                pub const clk_usb_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1023000c));

                /// Clock USB AXI
                pub const clk_usb_ipm = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230010));

                /// Clock USB STB
                pub const clk_usb_stb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=4, Default=4, Min=4, Typical=4
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230014));

                /// Clock USB APP 125
                pub const clk_usb_app125 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230018));

                /// Clock USB Reference Clock
                pub const clk_usb_refclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1023001c));

                /// U0 Clock PCIe AXI MST 0
                pub const clk_u0_pcie_axi_mst0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230020));

                /// U0 Clock PCIe APB
                pub const clk_u0_pcie_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230024));

                /// U0 Clock PCIe TL
                pub const clk_u0_pcie_tl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230028));

                /// U1 Clock PCIe AXI MST 0
                pub const clk_u1_pcie_axi_mst0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1023002c));

                /// U1 Clock PCIe APB
                pub const clk_u1_pcie_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230030));

                /// U1 Clock PCIe TL
                pub const clk_u1_pcie_tl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230034));

                /// Clock PCIe 01 SLV DEC Main
                pub const clk_pcie01_slv_dec_main = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230038));

                /// Clock Security HCLK
                pub const clk_sec_hclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1023003c));

                /// Clock Security Miscellaneous AHB
                pub const clk_sec_misc_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230040));

                /// Clock STG MTRX Group 0 Main
                pub const clk_stg_mtrx_group0_main = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230044));

                /// Clock STG MTRX Group 0 Bus
                pub const clk_stg_mtrx_group0_bus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230048));

                /// Clock STG MTRX Group 0 STG
                pub const clk_stg_mtrx_group0_stg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1023004c));

                /// Clock STG MTRX Group 1 Main
                pub const clk_stg_mtrx_group1_main = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230050));

                /// Clock STG MTRX Group 1 Bus
                pub const clk_stg_mtrx_group1_bus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230054));

                /// Clock STG MTRX Group 1 STG
                pub const clk_stg_mtrx_group1_stg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230058));

                /// Clock STG MTRX Group 1 HIFI
                pub const clk_stg_mtrx_group1_hifi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1023005c));

                /// Clock E2 RTC
                pub const clk_e2_rtc = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=24, Default=24, Min=24, Typical=24
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230060));

                /// Clock E2 Core
                pub const clk_e2_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230064));

                /// Clock E2 DBG
                pub const clk_e2_dbg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230068));

                /// Clock DMA AXI
                pub const clk_dma_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1023006c));

                /// Clock DMA AHB
                pub const clk_dma_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x10230070));

                /// Software RESET Address Selector
                pub const soft_rst_addr_sel = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_stg_syscon_presetn: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rst_u0_hifi4_rst_core: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rst_u0_hifi4_rst_axi: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sec_top_hreesetn: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rst_u0_e2_sft7110_rst_core: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dma1p_8ch_56hs_rstn_axi: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dma1p_8ch_56hs_rstn_ahb: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdn_usb_rstn_axi: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdn_usb_rstn_usb_apb: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdn_usb_rstn_utmi_apb: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdn_usb_rstn_pwrup: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_axi_mst0: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_axi_slv0: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_axi_slv: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pci_rstn_brg: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_pcie: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_apb: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_axi_mst0: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_axi_slv0: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_axi_slv: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_brg: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_pcie: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_apb: u1 = 0,

                    /// [23:31]
                    res0: u9 = 0,
                }), @ptrFromInt(0x10230074));

                /// STGCRG RESET Status
                pub const stgcrg_rst_stat = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_stg_syscon_presetn: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rst_u0_hifi4_rst_core: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rst_u0_hifi4_rst_axi: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sec_top_hreesetn: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rst_u0_e2_sft7110_rst_core: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dma1p_8ch_56hs_rstn_axi: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dma1p_8ch_56hs_rstn_ahb: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdn_usb_rstn_axi: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdn_usb_rstn_usb_apb: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdn_usb_rstn_utmi_apb: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdn_usb_rstn_pwrup: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_axi_mst0: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_axi_slv0: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_axi_slv: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pci_rstn_brg: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_pcie: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rstn_u0_plda_pcie_rstn_apb: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_axi_mst0: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_axi_slv0: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_axi_slv: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_brg: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_pcie: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rstn_u1_plda_pcie_rstn_apb: u1 = 0,

                    /// [23:31]
                    res0: u9 = 0,
                }), @ptrFromInt(0x10230078));
            };

            /// From starfive,jh7110-stg-syscon, peripheral generator
            pub const starfive_jh7110_stg_syscon_0 = struct {
                /// STG SYSCONSAIF SYSCFG 0
                pub const stg_sysconsaif_syscfg0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] scfg_hprot_sd0
                    scfg_hprot_sd0: u4 = 0,

                    /// [4:7] scfg_hprot_sd1
                    scfg_hprot_sd1: u4 = 0,

                    /// [8:8] u0_cdn_usb_adp_en
                    u0_cdn_usb_adp_en: u1 = 0,

                    /// [9:9] u0_cdn_usb_adp_probe_ana
                    u0_cdn_usb_adp_probe_ana: u1 = 0,

                    /// [10:10] u0_cdn_usb_adp_probe_en
                    u0_cdn_usb_adp_probe_en: u1 = 0,

                    /// [11:11] u0_cdn_usb_adp_sense_ana
                    u0_cdn_usb_adp_sense_ana: u1 = 0,

                    /// [12:12] u0_cdn_usb_adp_sense_en
                    u0_cdn_usb_adp_sense_en: u1 = 0,

                    /// [13:13] u0_cdn_usb_adp_sink_current_en
                    u0_cdn_usb_adp_sink_current_en: u1 = 0,

                    /// [14:14] u0_cdn_usb_adp_source_current_en
                    u0_cdn_usb_adp_source_current_en: u1 = 0,

                    /// [15:15] u0_cdn_usb_bc_en
                    u0_cdn_usb_bc_en: u1 = 0,

                    /// [16:16] u0_cdn_usb_chrg_vbus
                    u0_cdn_usb_chrg_vbus: u1 = 0,

                    /// [17:17] u0_cdn_usb_dcd_comp_sts
                    u0_cdn_usb_dcd_comp_sts: u1 = 0,

                    /// [18:18] u0_cdn_usb_dischrg_vbus
                    u0_cdn_usb_dischrg_vbus: u1 = 0,

                    /// [19:19] u0_cdn_usb_dm_vdat_ref_comp_en
                    u0_cdn_usb_dm_vdat_ref_comp_en: u1 = 0,

                    /// [20:20] u0_cdn_usb_dm_vdat_ref_comp_sts
                    u0_cdn_usb_dm_vdat_ref_comp_sts: u1 = 0,

                    /// [21:21] u0_cdn_usb_dm_vlgc_comp_en
                    u0_cdn_usb_dm_vlgc_comp_en: u1 = 0,

                    /// [22:22] u0_cdn_usb_dm_vlgc_comp_sts
                    u0_cdn_usb_dm_vlgc_comp_sts: u1 = 0,

                    /// [23:23] u0_cdn_usb_dp_vdat_ref_comp_en
                    u0_cdn_usb_dp_vdat_ref_comp_en: u1 = 0,

                    /// [24:24] u0_cdn_usb_dp_vdat_ref_comp_sts
                    u0_cdn_usb_dp_vdat_ref_comp_sts: u1 = 0,

                    /// [25:25] u0_cdn_usb_host_system_err
                    u0_cdn_usb_host_system_err: u1 = 0,

                    /// [26:26] u0_cdn_usb_hsystem_err_ext
                    u0_cdn_usb_hsystem_err_ext: u1 = 0,

                    /// [27:27] u0_cdn_usb_idm_sink_en
                    u0_cdn_usb_idm_sink_en: u1 = 0,

                    /// [28:28] u0_cdn_usb_idp_sink_en
                    u0_cdn_usb_idp_sink_en: u1 = 0,

                    /// [29:29] u0_cdn_usb_idp_src_en
                    u0_cdn_usb_idp_src_en: u1 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x10240000));

                /// STG SYSCONSAIF SYSCFG 4
                pub const stg_sysconsaif_syscfg4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:11] LTM interface to software
                    u0_cdn_usb_lowest_belt: u12 = 0,

                    /// [12:12] LTM interface to software
                    u0_cdn_usb_ltm_host_req: u1 = 0,

                    /// [13:13] LTM interface to software
                    u0_cdn_usb_ltm_host_req_halt: u1 = 0,

                    /// [14:14] u0_cdn_usb_mdctrl_clk_sel
                    u0_cdn_usb_mdctrl_clk_sel: u1 = 0,

                    /// [15:15] u0_cdn_usb_mdctrl_clk_status
                    u0_cdn_usb_mdctrl_clk_status: u1 = 0,

                    /// [16:18] Can onlly be changed when pwrup_rst_n is low
                    u0_cdn_usb_mode_strap: u3 = 0,

                    /// [19:19] u0_cdn_usb_otg_suspendm
                    u0_cdn_usb_otg_suspendm: u1 = 0,

                    /// [20:20] u0_cdn_usb_otg_suspendm_byps
                    u0_cdn_usb_otg_suspendm_byps: u1 = 0,

                    /// [21:21] u0_cdn_usb_phy_bvalid
                    u0_cdn_usb_phy_bvalid: u1 = 0,

                    /// [22:22] u0_cdn_usb_pll_en
                    u0_cdn_usb_pll_en: u1 = 0,

                    /// [23:23] u0_cdn_usb_refclk_mode
                    u0_cdn_usb_refclk_mode: u1 = 0,

                    /// [24:24] u0_cdn_usb_rid_a_comp_sts
                    u0_cdn_usb_rid_a_comp_sts: u1 = 0,

                    /// [25:25] u0_cdn_usb_rid_b_comp_sts
                    u0_cdn_usb_rid_b_comp_sts: u1 = 0,

                    /// [26:26] u0_cdn_usb_rid_c_comp_sts
                    u0_cdn_usb_rid_c_comp_sts: u1 = 0,

                    /// [27:27] u0_cdn_usb_rid_float_comp_en
                    u0_cdn_usb_rid_float_comp_en: u1 = 0,

                    /// [28:28] u0_cdn_usb_rid_float_comp_sts
                    u0_cdn_usb_rid_float_comp_sts: u1 = 0,

                    /// [29:29] u0_cdn_usb_rid_gnd_comp_sts
                    u0_cdn_usb_rid_gnd_comp_sts: u1 = 0,

                    /// [30:30] u0_cdn_usb_rid_nonfloat_comp_en
                    u0_cdn_usb_rid_nonfloat_comp_en: u1 = 0,

                    /// [31:31] u0_cdn_usb_rx_dm
                    u0_cdn_usb_rx_dm: u1 = 0,
                }), @ptrFromInt(0x10240004));

                /// STG SYSCONSAIF SYSCFG 8
                pub const stg_sysconsaif_syscfg8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_cdn_usb_rx_dp
                    u0_cdn_usb_rx_dp: u1 = 0,

                    /// [1:1] u0_cdn_usb_rx_rcv
                    u0_cdn_usb_rx_rcv: u1 = 0,

                    /// [2:2] For software bist_test
                    u0_cdn_usb_self_test: u1 = 0,

                    /// [3:3] u0_cdn_usb_sessend
                    u0_cdn_usb_sessend: u1 = 0,

                    /// [4:4] u0_cdn_usb_sessvalid
                    u0_cdn_usb_sessvalid: u1 = 0,

                    /// [5:5] u0_cdn_usb_sof
                    u0_cdn_usb_sof: u1 = 0,

                    /// [6:6] For software bist_test
                    u0_cdn_usb_test_bist: u1 = 0,

                    /// [7:7] u0_cdn_usb_usbdev_main_power_off_ack
                    u0_cdn_usb_usbdev_main_power_off_ack: u1 = 0,

                    /// [8:8] u0_cdn_usb_usbdev_main_power_off_ready
                    u0_cdn_usb_usbdev_main_power_off_ready: u1 = 0,

                    /// [9:9] u0_cdn_usb_usbdev_main_power_off_req
                    u0_cdn_usb_usbdev_main_power_off_req: u1 = 0,

                    /// [10:10] u0_cdn_usb_usbdev_main_power_on_ready
                    u0_cdn_usb_usbdev_main_power_on_ready: u1 = 0,

                    /// [11:11] u0_cdn_usb_usbdev_main_power_on_req
                    u0_cdn_usb_usbdev_main_power_on_req: u1 = 0,

                    /// [12:12] u0_cdn_usb_usbdev_main_power_on_valid
                    u0_cdn_usb_usbdev_main_power_on_valid: u1 = 0,

                    /// [13:13] u0_cdn_usb_usbdev_power_off_ack
                    u0_cdn_usb_usbdev_power_off_ack: u1 = 0,

                    /// [14:14] u0_cdn_usb_usbdev_power_off_ready
                    u0_cdn_usb_usbdev_power_off_ready: u1 = 0,

                    /// [15:15] u0_cdn_usb_usbdev_power_off_req
                    u0_cdn_usb_usbdev_power_off_req: u1 = 0,

                    /// [16:16] u0_cdn_usb_usbdev_power_on_ready
                    u0_cdn_usb_usbdev_power_on_ready: u1 = 0,

                    /// [17:17] u0_cdn_usb_usbdev_power_on_req
                    u0_cdn_usb_usbdev_power_on_req: u1 = 0,

                    /// [18:18] u0_cdn_usb_usbdev_power_on_valid
                    u0_cdn_usb_usbdev_power_on_valid: u1 = 0,

                    /// [19:19] u0_cdn_usb_utmi_dmpulldown_sit
                    u0_cdn_usb_utmi_dmpulldown_sit: u1 = 0,

                    /// [20:20] u0_cdn_usb_utmi_dppulldown_sit
                    u0_cdn_usb_utmi_dppulldown_sit: u1 = 0,

                    /// [21:21] u0_cdn_usb_utmi_fslsserialmode_sit
                    u0_cdn_usb_utmi_fslsserialmode_sit: u1 = 0,

                    /// [22:22] u0_cdn_usb_utmi_hostdisconnect_sit
                    u0_cdn_usb_utmi_hostdisconnect_sit: u1 = 0,

                    /// [23:23] u0_cdn_usb_utmi_iddig_sit
                    u0_cdn_usb_utmi_iddig_sit: u1 = 0,

                    /// [24:24] u0_cdn_usb_utmi_idpullup_sit
                    u0_cdn_usb_utmi_idpullup_sit: u1 = 0,

                    /// [25:26] u0_cdn_usb_utmi_linestate_sit
                    u0_cdn_usb_utmi_linestate_sit: u2 = 0,

                    /// [27:28] u0_cdn_usb_utmi_opmode_sit
                    u0_cdn_usb_utmi_opmode_sit: u2 = 0,

                    /// [29:29] u0_cdn_usb_utmi_rxactive_sit
                    u0_cdn_usb_utmi_rxactive_sit: u1 = 0,

                    /// [30:30] u0_cdn_usb_utmi_rxerror_sit
                    u0_cdn_usb_utmi_rxerror_sit: u1 = 0,

                    /// [31:31] u0_cdn_usb_utmi_rxvalid_sit
                    u0_cdn_usb_utmi_rxvalid_sit: u1 = 0,
                }), @ptrFromInt(0x10240008));

                /// STG SYSCONSAIF SYSCFG 12
                pub const stg_sysconsaif_syscfg12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_cdn_usb_utmi_rxvalidh_sit
                    u0_cdn_usb_utmi_rxvalidh_sit: u1 = 0,

                    /// [1:1] u0_cdn_usb_utmi_sessvld
                    u0_cdn_usb_utmi_sessvld: u1 = 0,

                    /// [2:2] u0_cdn_usb_utmi_termselect_sit
                    u0_cdn_usb_utmi_termselect_sit: u1 = 0,

                    /// [3:3] u0_cdn_usb_utmi_tx_dat_sit
                    u0_cdn_usb_utmi_tx_dat_sit: u1 = 0,

                    /// [4:4] u0_cdn_usb_utmi_tx_enable_n_sit
                    u0_cdn_usb_utmi_tx_enable_n_sit: u1 = 0,

                    /// [5:5] u0_cdn_usb_utmi_tx_se0_sit
                    u0_cdn_usb_utmi_tx_se0_sit: u1 = 0,

                    /// [6:6] u0_cdn_usb_utmi_txbitstuffenable_sit
                    u0_cdn_usb_utmi_txbitstuffenable_sit: u1 = 0,

                    /// [7:7] u0_cdn_usb_utmi_txready_sit
                    u0_cdn_usb_utmi_txready_sit: u1 = 0,

                    /// [8:8] u0_cdn_usb_utmi_txvalid_sit
                    u0_cdn_usb_utmi_txvalid_sit: u1 = 0,

                    /// [9:9] u0_cdn_usb_utmi_txvalidh_sit
                    u0_cdn_usb_utmi_txvalidh_sit: u1 = 0,

                    /// [10:10] u0_cdn_usb_utmi_vbusvalid_sit
                    u0_cdn_usb_utmi_vbusvalid_sit: u1 = 0,

                    /// [11:12] u0_cdn_usb_utmi_xcvrselect_sit
                    u0_cdn_usb_utmi_xcvrselect_sit: u2 = 0,

                    /// [13:13] u0_cdn_usb_utmi_vdm_src_en
                    u0_cdn_usb_utmi_vdm_src_en: u1 = 0,

                    /// [14:14] u0_cdn_usb_utmi_vdp_src_en
                    u0_cdn_usb_utmi_vdp_src_en: u1 = 0,

                    /// [15:15] u0_cdn_usb_wakeup
                    u0_cdn_usb_wakeup: u1 = 0,

                    /// [16:16] u0_cdn_usb_xhc_d0_ack
                    u0_cdn_usb_xhc_d0_ack: u1 = 0,

                    /// [17:17] u0_cdn_usb_xhc_d0_req
                    u0_cdn_usb_xhc_d0_req: u1 = 0,

                    /// [18:31]
                    res0: u14 = 0,
                }), @ptrFromInt(0x1024000c));

                /// STG SYSCONSAIF SYSCFG 16
                pub const stg_sysconsaif_syscfg16 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_cdn_usb_xhci_debug_bus
                    u0_cdn_usb_xhci_debug_bus: u32 = 0,
                }), @ptrFromInt(0x10240010));

                /// STG SYSCONSAIF SYSCFG 20
                pub const stg_sysconsaif_syscfg20 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30] u0_cdn_usb_xhci_debug_link_state
                    u0_cdn_usb_xhci_debug_link_state: u31 = 0,

                    /// [31:31]
                    res0: u1 = 0,
                }), @ptrFromInt(0x10240014));

                /// STG SYSCONSAIF SYSCFG 24
                pub const stg_sysconsaif_syscfg24 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:4] u0_cdn_usb_xhci_debug_sel
                    u0_cdn_usb_xhci_debug_sel: u5 = 0,

                    /// [5:5] u0_cdn_usb_xhci_main_power_off_ack
                    u0_cdn_usb_xhci_main_power_off_ack: u1 = 0,

                    /// [6:6] u0_cdn_usb_xhci_main_power_off_req
                    u0_cdn_usb_xhci_main_power_off_req: u1 = 0,

                    /// [7:7] u0_cdn_usb_xhci_main_power_on_ready
                    u0_cdn_usb_xhci_main_power_on_ready: u1 = 0,

                    /// [8:8] u0_cdn_usb_xhci_main_power_on_req
                    u0_cdn_usb_xhci_main_power_on_req: u1 = 0,

                    /// [9:9] u0_cdn_usb_xhci_main_power_on_valid
                    u0_cdn_usb_xhci_main_power_on_valid: u1 = 0,

                    /// [10:10] u0_cdn_usb_xhci_power_off_ack
                    u0_cdn_usb_xhci_power_off_ack: u1 = 0,

                    /// [11:11] u0_cdn_usb_xhci_power_off_ready
                    u0_cdn_usb_xhci_power_off_ready: u1 = 0,

                    /// [12:12] u0_cdn_usb_xhci_power_off_req
                    u0_cdn_usb_xhci_power_off_req: u1 = 0,

                    /// [13:13] u0_cdn_usb_xhci_power_on_ready
                    u0_cdn_usb_xhci_power_on_ready: u1 = 0,

                    /// [14:14] u0_cdn_usb_xhci_power_on_req
                    u0_cdn_usb_xhci_power_on_req: u1 = 0,

                    /// [15:15] u0_cdn_usb_xhci_power_on_valid
                    u0_cdn_usb_xhci_power_on_valid: u1 = 0,

                    /// [16:16] u0_e2_sft7110_cease_from_tile_0
                    u0_e2_sft7110_cease_from_tile_0: u1 = 0,

                    /// [17:17] u0_e2_sft7110_debug_from_tile_0
                    u0_e2_sft7110_debug_from_tile_0: u1 = 0,

                    /// [18:18] u0_e2_sft7110_halt_from_tile_0
                    u0_e2_sft7110_halt_from_tile_0: u1 = 0,

                    /// [19:31]
                    res0: u13 = 0,
                }), @ptrFromInt(0x10240018));

                /// STG SYSCONSAIF SYSCFG 28
                pub const stg_sysconsaif_syscfg28 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_e2_sft7110_nmi_0_rnmi_exception_vector
                    u0_e2_sft7110_nmi_0_rnmi_exception_vector: u32 = 0,
                }), @ptrFromInt(0x1024001c));

                /// STG SYSCONSAIF SYSCFG 32
                pub const stg_sysconsaif_syscfg32 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_e2_sft7110_nmi_0_rnmi_interrupt_vector
                    u0_e2_sft7110_nmi_0_rnmi_interrupt_vector: u32 = 0,
                }), @ptrFromInt(0x10240020));

                /// STG SYSCONSAIF SYSCFG 36
                pub const stg_sysconsaif_syscfg36 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_e2_sft7110_reset_vector_0
                    u0_e2_sft7110_reset_vector_0: u32 = 0,
                }), @ptrFromInt(0x10240024));

                /// STG SYSCONSAIF SYSCFG 40
                pub const stg_sysconsaif_syscfg40 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_e2_sft7110_wfi_from_tile_0
                    u0_e2_sft7110_wfi_from_tile_0: u1 = 0,

                    /// [1:31]
                    res0: u31 = 0,
                }), @ptrFromInt(0x10240028));

                /// STG SYSCONSAIF SYSCFG 44
                pub const stg_sysconsaif_syscfg44 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] Reset Vector Address
                    u0_hifi4_altresetvec: u32 = 0,
                }), @ptrFromInt(0x1024002c));

                /// STG SYSCONSAIF SYSCFG 48
                pub const stg_sysconsaif_syscfg48 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Debug signal
                    u0_hifi4_breakin: u1 = 0,

                    /// [1:1] Debug signal
                    u0_hifi4_breakinack: u1 = 0,

                    /// [2:2] Debug signal
                    u0_hifi4_breakout: u1 = 0,

                    /// [3:3] Debug signal
                    u0_hifi4_breakoutack: u1 = 0,

                    /// [4:4] Debug signal
                    u0_hifi4_debugmode: u1 = 0,

                    /// [5:5] Fault Handling Signals
                    u0_hifi4_doubleexceptionerror: u1 = 0,

                    /// [6:6] Indicates that iram0 works
                    u0_hifi4_iram0loadstore: u1 = 0,

                    /// [7:7] Indicates that iram1 works
                    u0_hifi4_iram1loadstore: u1 = 0,

                    /// [8:8] Debug signal
                    u0_hifi4_ocdhaltonreset: u1 = 0,

                    /// [9:9] Fault Handling Signals
                    u0_hifi4_pfatalerror: u1 = 0,

                    /// [10:31]
                    res0: u22 = 0,
                }), @ptrFromInt(0x10240030));

                /// STG SYSCONSAIF SYSCFG 52
                pub const stg_sysconsaif_syscfg52 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] Fault Handling Signals
                    u0_hifi4_pfaultinfo: u32 = 0,
                }), @ptrFromInt(0x10240034));

                /// STG SYSCONSAIF SYSCFG 56
                pub const stg_sysconsaif_syscfg56 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Fault Handling Signals
                    u0_hifi4_pfaultinfovalid: u1 = 0,

                    /// [1:16] Module ID
                    u0_hifi4_prid: u16 = 0,

                    /// [17:17] Wait Mode
                    u0_hifi4_pwaitmode: u1 = 0,

                    /// [18:18] Run Stall
                    u0_hifi4_runstall: u1 = 0,

                    /// [19:31]
                    res0: u13 = 0,
                }), @ptrFromInt(0x10240038));

                /// STG SYSCONSAIF SYSCFG 60
                pub const stg_sysconsaif_syscfg60 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:11] Indicates that master port remap address
                    u0_hifi4_scfg_dsp_mst_offset_master: u12 = 0,

                    /// [12:15]
                    res0: u4 = 0,

                    /// [16:27] Indicates the DMA port remap address
                    u0_hifi4_scfg_dsp_mst_offset_dma: u12 = 0,

                    /// [28:31]
                    res1: u4 = 0,
                }), @ptrFromInt(0x1024003c));

                /// STG SYSCONSAIF SYSCFG 64
                pub const stg_sysconsaif_syscfg64 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] The value indicates the slave port remap address
                    u0_hifi4_scfg_dsp_slv_offset: u32 = 0,
                }), @ptrFromInt(0x10240040));

                /// STG SYSCONSAIF SYSCFG 68
                pub const stg_sysconsaif_syscfg68 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] SRAM/ROM configuration. SLP: sleep enable, high active, default is low.
                    u0_hifi4_scfg_sram_config_slp: u1 = 0,

                    /// [1:1] SRAM/ROM configuration. SD: shutdown enable, high active, default is low.
                    u0_hifi4_scfg_sram_config_sram_config_sd: u1 = 0,

                    /// [2:3] SRAM/ROM configuration. RTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_hifi4_scfg_sram_config_rtsel: u2 = 0,

                    /// [4:5] SRAM/ROM configuration. PTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_hifi4_scfg_sram_config_ptsel: u2 = 0,

                    /// [6:7] SRAM/ROM configuration. TRB: timing setting for debug purpose, default is 2'b01.
                    u0_hifi4_scfg_sram_config_trb: u2 = 0,

                    /// [8:9] SRAM/ROM configuration. WTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_hifi4_scfg_sram_config_wtsel: u2 = 0,

                    /// [10:10] SRAM/ROM configuration. VS: timing setting for debug purpose, default is 1'b1.
                    u0_hifi4_scfg_sram_config_vs: u1 = 0,

                    /// [11:11] SRAM/ROM configuration. VG: timing setting for debug purpose, default is 1'b1.
                    u0_hifi4_scfg_sram_config_vg: u1 = 0,

                    /// [12:12] When the value is 1, it indicates that the AltResetVec is valid
                    u0_hifi4_statvectorsel: u1 = 0,

                    /// [13:13] DMA port trigger
                    u0_hifi4_trigin_idma: u1 = 0,

                    /// [14:14] DMA port trigger
                    u0_hifi4_trigout_idma: u1 = 0,

                    /// [15:15] Debug signal
                    u0_hifi4_xocdmode: u1 = 0,

                    /// [16:16] u0_plda_pcie_align_detect
                    u0_plda_pcie_align_detect: u1 = 0,

                    /// [17:31]
                    res0: u15 = 0,
                }), @ptrFromInt(0x10240044));

                /// STG SYSCONSAIF SYSCFG 72
                pub const stg_sysconsaif_syscfg72 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_31_0
                    u0_plda_pcie_axi4_mst0_aratomop_31_0: u32 = 0,
                }), @ptrFromInt(0x10240048));

                /// STG SYSCONSAIF SYSCFG 76
                pub const stg_sysconsaif_syscfg76 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_63_32
                    u0_plda_pcie_axi4_mst0_aratomop_63_32: u32 = 0,
                }), @ptrFromInt(0x1024004c));

                /// STG SYSCONSAIF SYSCFG 80
                pub const stg_sysconsaif_syscfg80 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_95_64
                    u0_plda_pcie_axi4_mst0_aratomop_95_64: u32 = 0,
                }), @ptrFromInt(0x10240050));

                /// STG SYSCONSAIF SYSCFG 84
                pub const stg_sysconsaif_syscfg84 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_127_96
                    u0_plda_pcie_axi4_mst0_aratomop_127_96: u32 = 0,
                }), @ptrFromInt(0x10240054));

                /// STG SYSCONSAIF SYSCFG 88
                pub const stg_sysconsaif_syscfg88 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_159_128
                    u0_plda_pcie_axi4_mst0_aratomop_159_128: u32 = 0,
                }), @ptrFromInt(0x10240058));

                /// STG SYSCONSAIF SYSCFG 92
                pub const stg_sysconsaif_syscfg92 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_191_160
                    u0_plda_pcie_axi4_mst0_aratomop_191_160: u32 = 0,
                }), @ptrFromInt(0x1024005c));

                /// STG SYSCONSAIF SYSCFG 96
                pub const stg_sysconsaif_syscfg96 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_223_192
                    u0_plda_pcie_axi4_mst0_aratomop_223_192: u32 = 0,
                }), @ptrFromInt(0x10240060));

                /// STG SYSCONSAIF SYSCFG 100
                pub const stg_sysconsaif_syscfg100 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_255_224
                    u0_plda_pcie_axi4_mst0_aratomop_255_224: u32 = 0,
                }), @ptrFromInt(0x10240064));

                /// STG SYSCONSAIF SYSCFG 104
                pub const stg_sysconsaif_syscfg104 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] u0_plda_pcie_axi4_mst0_aratomop_257_256
                    u0_plda_pcie_axi4_mst0_aratomop_257_256: u2 = 0,

                    /// [2:16] u0_plda_pcie_axi4_mst0_arfunc
                    u0_plda_pcie_axi4_mst0_arfunc: u15 = 0,

                    /// [17:20] u0_plda_pcie_axi4_mst0_arregion
                    u0_plda_pcie_axi4_mst0_arregion: u4 = 0,

                    /// [21:31]
                    res0: u11 = 0,
                }), @ptrFromInt(0x10240068));

                /// STG SYSCONSAIF SYSCFG 108
                pub const stg_sysconsaif_syscfg108 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aruser_31_0
                    u0_plda_pcie_axi4_mst0_aruser_31_0: u32 = 0,
                }), @ptrFromInt(0x1024006c));

                /// STG SYSCONSAIF SYSCFG 112
                pub const stg_sysconsaif_syscfg112 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aruser_63_32
                    u0_plda_pcie_axi4_mst0_aruser_63_32: u32 = 0,
                }), @ptrFromInt(0x10240070));

                /// STG SYSCONSAIF SYSCFG 116
                pub const stg_sysconsaif_syscfg116 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:14] u0_plda_pcie_axi4_mst0_awfunc
                    u0_plda_pcie_axi4_mst0_awfunc: u15 = 0,

                    /// [15:18] u0_plda_pcie_axi4_mst0_awregion
                    u0_plda_pcie_axi4_mst0_awregion: u4 = 0,

                    /// [19:31]
                    res0: u13 = 0,
                }), @ptrFromInt(0x10240074));

                /// STG SYSCONSAIF SYSCFG 120
                pub const stg_sysconsaif_syscfg120 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_a2user_31_0
                    u0_plda_pcie_axi4_mst0_a2user_31_0: u32 = 0,
                }), @ptrFromInt(0x10240078));

                /// STG SYSCONSAIF SYSCFG 124
                pub const stg_sysconsaif_syscfg124 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:10] u0_plda_pcie_axi4_mst0_awuser_42_32
                    u0_plda_pcie_axi4_mst0_awuser_42_32: u11 = 0,

                    /// [11:18] u0_plda_pcie_axi4_mst0_rderr
                    u0_plda_pcie_axi4_mst0_rderr: u8 = 0,

                    /// [19:31]
                    res0: u13 = 0,
                }), @ptrFromInt(0x1024007c));

                /// STG SYSCONSAIF SYSCFG 128
                pub const stg_sysconsaif_syscfg128 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_ruser
                    u0_plda_pcie_axi4_mst0_ruser: u32 = 0,
                }), @ptrFromInt(0x10240080));

                /// STG SYSCONSAIF SYSCFG 132
                pub const stg_sysconsaif_syscfg132 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7] u0_plda_pcie_axi4_mst0_wderr
                    u0_plda_pcie_axi4_mst0_wderr: u8 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x10240084));

                /// STG SYSCONSAIF SYSCFG 136
                pub const stg_sysconsaif_syscfg136 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aratomop_31_0
                    u0_plda_pcie_axi4_slv0_aratomop_31_0: u32 = 0,
                }), @ptrFromInt(0x10240088));

                /// STG SYSCONSAIF SYSCFG 140
                pub const stg_sysconsaif_syscfg140 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aratomop_63_32
                    u0_plda_pcie_axi4_slv0_aratomop_63_32: u32 = 0,
                }), @ptrFromInt(0x1024008c));

                /// STG SYSCONSAIF SYSCFG 144
                pub const stg_sysconsaif_syscfg144 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aratomop_95_64
                    u0_plda_pcie_axi4_slv0_aratomop_95_64: u32 = 0,
                }), @ptrFromInt(0x10240090));

                /// STG SYSCONSAIF SYSCFG 148
                pub const stg_sysconsaif_syscfg148 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aratomop_127_96
                    u0_plda_pcie_axi4_slv0_aratomop_127_96: u32 = 0,
                }), @ptrFromInt(0x10240094));

                /// STG SYSCONSAIF SYSCFG 152
                pub const stg_sysconsaif_syscfg152 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aratomop_159_128
                    u0_plda_pcie_axi4_slv0_aratomop_159_128: u32 = 0,
                }), @ptrFromInt(0x10240098));

                /// STG SYSCONSAIF SYSCFG 156
                pub const stg_sysconsaif_syscfg156 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aratomop_191_160
                    u0_plda_pcie_axi4_slv0_aratomop_191_160: u32 = 0,
                }), @ptrFromInt(0x1024009c));

                /// STG SYSCONSAIF SYSCFG 160
                pub const stg_sysconsaif_syscfg160 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aratomop_223_192
                    u0_plda_pcie_axi4_slv0_aratomop_223_192: u32 = 0,
                }), @ptrFromInt(0x102400a0));

                /// STG SYSCONSAIF SYSCFG 164
                pub const stg_sysconsaif_syscfg164 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aratomop_255_224
                    u0_plda_pcie_axi4_slv0_aratomop_255_224: u32 = 0,
                }), @ptrFromInt(0x102400a4));

                /// STG SYSCONSAIF SYSCFG 168
                pub const stg_sysconsaif_syscfg168 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] u0_plda_pcie_axi4_slv0_aratomop_257_256
                    u0_plda_pcie_axi4_slv0_aratomop_257_256: u2 = 0,

                    /// [2:16] u0_plda_pcie_axi4_slv0_arfunc
                    u0_plda_pcie_axi4_slv0_arfunc: u15 = 0,

                    /// [17:20] u0_plda_pcie_axi4_slv0_arregion
                    u0_plda_pcie_axi4_slv0_arregion: u4 = 0,

                    /// [21:31]
                    res0: u11 = 0,
                }), @ptrFromInt(0x102400a8));

                /// STG SYSCONSAIF SYSCFG 172
                pub const stg_sysconsaif_syscfg172 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_aruser_31_0
                    u0_plda_pcie_axi4_slv0_aruser_31_0: u32 = 0,
                }), @ptrFromInt(0x102400ac));

                /// STG SYSCONSAIF SYSCFG 176
                pub const stg_sysconsaif_syscfg176 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:8] u0_plda_pcie_axi4_slv0_aruser_40_32
                    u0_plda_pcie_axi4_slv0_aruser_40_32: u9 = 0,

                    /// [9:23] u0_plda_pcie_axi4_slv0_awfunc
                    u0_plda_pcie_axi4_slv0_awfunc: u15 = 0,

                    /// [24:27] u0_plda_pcie_axi4_slv0_awregion
                    u0_plda_pcie_axi4_slv0_awregion: u4 = 0,

                    /// [28:31]
                    res0: u4 = 0,
                }), @ptrFromInt(0x102400b0));

                /// STG SYSCONSAIF SYSCFG 180
                pub const stg_sysconsaif_syscfg180 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_awuser_31_0
                    u0_plda_pcie_axi4_slv0_awuser_31_0: u32 = 0,
                }), @ptrFromInt(0x102400b4));

                /// STG SYSCONSAIF SYSCFG 184
                pub const stg_sysconsaif_syscfg184 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:8] u0_plda_pcie_axi4_slv0_awuser_40_32
                    u0_plda_pcie_axi4_slv0_awuser_40_32: u9 = 0,

                    /// [9:16] u0_plda_pcie_axi4_slv0_rderr
                    u0_plda_pcie_axi4_slv0_rderr: u8 = 0,

                    /// [17:31]
                    res0: u15 = 0,
                }), @ptrFromInt(0x102400b8));

                /// STG SYSCONSAIF SYSCFG 188
                pub const stg_sysconsaif_syscfg188 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_slv0_ruser
                    u0_plda_pcie_axi4_slv0_ruser: u32 = 0,
                }), @ptrFromInt(0x102400bc));

                /// STG SYSCONSAIF SYSCFG 192
                pub const stg_sysconsaif_syscfg192 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7] u0_plda_pcie_axi4_slv0_wderr
                    u0_plda_pcie_axi4_slv0_wderr: u8 = 0,

                    /// [8:22] u0_plda_pcie_axi4_slvl_arfunc
                    u0_plda_pcie_axi4_slvl_arfunc: u15 = 0,

                    /// [23:31]
                    res0: u9 = 0,
                }), @ptrFromInt(0x102400c0));

                /// STG SYSCONSAIF SYSCFG 196
                pub const stg_sysconsaif_syscfg196 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:14] u0_plda_pcie_axi4_slvl_awfunc
                    u0_plda_pcie_axi4_slvl_awfunc: u15 = 0,

                    /// [15:16] u0_plda_pcie_bus_width_o
                    u0_plda_pcie_bus_width_o: u2 = 0,

                    /// [17:17] u0_plda_pcie_bypass_codec
                    u0_plda_pcie_bypass_codec: u1 = 0,

                    /// [18:19] u0_plda_pcie_ckref_src
                    u0_plda_pcie_ckref_src: u2 = 0,

                    /// [20:21] u0_plda_pcie_clk_sel
                    u0_plda_pcie_clk_sel: u2 = 0,

                    /// [22:22] u0_plda_pcie_clkreq
                    u0_plda_pcie_clkreq: u1 = 0,

                    /// [23:31]
                    res0: u9 = 0,
                }), @ptrFromInt(0x102400c4));

                /// STG SYSCONSAIF SYSCFG 200
                pub const stg_sysconsaif_syscfg200 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_31_0
                    u0_plda_pcie_k_phyparam_31_0: u32 = 0,
                }), @ptrFromInt(0x102400c8));

                /// STG SYSCONSAIF SYSCFG 204
                pub const stg_sysconsaif_syscfg204 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_63_32
                    u0_plda_pcie_k_phyparam_63_32: u32 = 0,
                }), @ptrFromInt(0x102400cc));

                /// STG SYSCONSAIF SYSCFG 208
                pub const stg_sysconsaif_syscfg208 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_95_64
                    u0_plda_pcie_k_phyparam_95_64: u32 = 0,
                }), @ptrFromInt(0x102400d0));

                /// STG SYSCONSAIF SYSCFG 212
                pub const stg_sysconsaif_syscfg212 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_127_96
                    u0_plda_pcie_k_phyparam_127_96: u32 = 0,
                }), @ptrFromInt(0x102400d4));

                /// STG SYSCONSAIF SYSCFG 216
                pub const stg_sysconsaif_syscfg216 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_159_128
                    u0_plda_pcie_k_phyparam_159_128: u32 = 0,
                }), @ptrFromInt(0x102400d8));

                /// STG SYSCONSAIF SYSCFG 220
                pub const stg_sysconsaif_syscfg220 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_191_160
                    u0_plda_pcie_k_phyparam_191_160: u32 = 0,
                }), @ptrFromInt(0x102400dc));

                /// STG SYSCONSAIF SYSCFG 224
                pub const stg_sysconsaif_syscfg224 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_223_192
                    u0_plda_pcie_k_phyparam_223_192: u32 = 0,
                }), @ptrFromInt(0x102400e0));

                /// STG SYSCONSAIF SYSCFG 228
                pub const stg_sysconsaif_syscfg228 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_255_224
                    u0_plda_pcie_k_phyparam_255_224: u32 = 0,
                }), @ptrFromInt(0x102400e4));

                /// STG SYSCONSAIF SYSCFG 232
                pub const stg_sysconsaif_syscfg232 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_287_256
                    u0_plda_pcie_k_phyparam_287_256: u32 = 0,
                }), @ptrFromInt(0x102400e8));

                /// STG SYSCONSAIF SYSCFG 236
                pub const stg_sysconsaif_syscfg236 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_319_288
                    u0_plda_pcie_k_phyparam_319_288: u32 = 0,
                }), @ptrFromInt(0x102400ec));

                /// STG SYSCONSAIF SYSCFG 240
                pub const stg_sysconsaif_syscfg240 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_351_320
                    u0_plda_pcie_k_phyparam_351_320: u32 = 0,
                }), @ptrFromInt(0x102400f0));

                /// STG SYSCONSAIF SYSCFG 244
                pub const stg_sysconsaif_syscfg244 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_383_352
                    u0_plda_pcie_k_phyparam_383_352: u32 = 0,
                }), @ptrFromInt(0x102400f4));

                /// STG SYSCONSAIF SYSCFG 248
                pub const stg_sysconsaif_syscfg248 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_415_384
                    u0_plda_pcie_k_phyparam_415_384: u32 = 0,
                }), @ptrFromInt(0x102400f8));

                /// STG SYSCONSAIF SYSCFG 252
                pub const stg_sysconsaif_syscfg252 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_447_416
                    u0_plda_pcie_k_phyparam_447_416: u32 = 0,
                }), @ptrFromInt(0x102400fc));

                /// STG SYSCONSAIF SYSCFG 256
                pub const stg_sysconsaif_syscfg256 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_479_448
                    u0_plda_pcie_k_phyparam_479_448: u32 = 0,
                }), @ptrFromInt(0x10240100));

                /// STG SYSCONSAIF SYSCFG 260
                pub const stg_sysconsaif_syscfg260 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_511_480
                    u0_plda_pcie_k_phyparam_511_480: u32 = 0,
                }), @ptrFromInt(0x10240104));

                /// STG SYSCONSAIF SYSCFG 264
                pub const stg_sysconsaif_syscfg264 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_543_512
                    u0_plda_pcie_k_phyparam_543_512: u32 = 0,
                }), @ptrFromInt(0x10240108));

                /// STG SYSCONSAIF SYSCFG 268
                pub const stg_sysconsaif_syscfg268 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_575_544
                    u0_plda_pcie_k_phyparam_575_544: u32 = 0,
                }), @ptrFromInt(0x1024010c));

                /// STG SYSCONSAIF SYSCFG 272
                pub const stg_sysconsaif_syscfg272 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_607_576
                    u0_plda_pcie_k_phyparam_607_576: u32 = 0,
                }), @ptrFromInt(0x10240110));

                /// STG SYSCONSAIF SYSCFG 276
                pub const stg_sysconsaif_syscfg276 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_639_608
                    u0_plda_pcie_k_phyparam_639_608: u32 = 0,
                }), @ptrFromInt(0x10240114));

                /// STG SYSCONSAIF SYSCFG 280
                pub const stg_sysconsaif_syscfg280 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_671_640
                    u0_plda_pcie_k_phyparam_671_640: u32 = 0,
                }), @ptrFromInt(0x10240118));

                /// STG SYSCONSAIF SYSCFG 284
                pub const stg_sysconsaif_syscfg284 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_703_672
                    u0_plda_pcie_k_phyparam_703_672: u32 = 0,
                }), @ptrFromInt(0x1024011c));

                /// STG SYSCONSAIF SYSCFG 288
                pub const stg_sysconsaif_syscfg288 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_735_704
                    u0_plda_pcie_k_phyparam_735_704: u32 = 0,
                }), @ptrFromInt(0x10240120));

                /// STG SYSCONSAIF SYSCFG 292
                pub const stg_sysconsaif_syscfg292 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_767_736
                    u0_plda_pcie_k_phyparam_767_736: u32 = 0,
                }), @ptrFromInt(0x10240124));

                /// STG SYSCONSAIF SYSCFG 296
                pub const stg_sysconsaif_syscfg296 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_799_768
                    u0_plda_pcie_k_phyparam_799_768: u32 = 0,
                }), @ptrFromInt(0x10240128));

                /// STG SYSCONSAIF SYSCFG 300
                pub const stg_sysconsaif_syscfg300 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_k_phyparam_831_800
                    u0_plda_pcie_k_phyparam_831_800: u32 = 0,
                }), @ptrFromInt(0x1024012c));

                /// STG SYSCONSAIF SYSCFG 304
                pub const stg_sysconsaif_syscfg304 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7] u0_plda_pcie_k_phyparam_839_832
                    u0_plda_pcie_k_phyparam_839_832: u8 = 0,

                    /// [8:8] u0_plda_pcie_k_rp_nep
                    u0_plda_pcie_k_rp_nep: u1 = 0,

                    /// [9:9] u0_plda_pcie_l1sub_entack
                    u0_plda_pcie_l1sub_entack: u1 = 0,

                    /// [10:10] u0_plda_pcie_l1sub_entreq
                    u0_plda_pcie_l1sub_entreq: u1 = 0,

                    /// [11:31]
                    res0: u21 = 0,
                }), @ptrFromInt(0x10240130));

                /// STG SYSCONSAIF SYSCFG 308
                pub const stg_sysconsaif_syscfg308 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_local_interrupt_in
                    u0_plda_pcie_local_interrupt_in: u32 = 0,
                }), @ptrFromInt(0x10240134));

                /// STG SYSCONSAIF SYSCFG 312
                pub const stg_sysconsaif_syscfg312 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_plda_pcie_mperstn
                    u0_plda_pcie_mperstn: u1 = 0,

                    /// [1:1] u0_plda_pcie_pcie_ebuf_mode
                    u0_plda_pcie_pcie_ebuf_mode: u1 = 0,

                    /// [2:24] u0_plda_pcie_pcie_phy_test_cfg
                    u0_plda_pcie_pcie_phy_test_cfg: u23 = 0,

                    /// [25:25] u0_plda_pcie_pcie_rx_eq_training
                    u0_plda_pcie_pcie_rx_eq_training: u1 = 0,

                    /// [26:26] u0_plda_pcie_pcie_rxterm_en
                    u0_plda_pcie_pcie_rxterm_en: u1 = 0,

                    /// [27:27] u0_plda_pcie_pcie_tx_onezeros
                    u0_plda_pcie_pcie_tx_onezeros: u1 = 0,

                    /// [28:31]
                    res0: u4 = 0,
                }), @ptrFromInt(0x10240138));

                /// STG SYSCONSAIF SYSCFG 316
                pub const stg_sysconsaif_syscfg316 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:19] u0_plda_pcie_pf0_offset
                    u0_plda_pcie_pf0_offset: u20 = 0,

                    /// [20:31]
                    res0: u12 = 0,
                }), @ptrFromInt(0x1024013c));

                /// STG SYSCONSAIF SYSCFG 320
                pub const stg_sysconsaif_syscfg320 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:19] u0_plda_pcie_pf1_offset
                    u0_plda_pcie_pf1_offset: u20 = 0,

                    /// [20:31]
                    res0: u12 = 0,
                }), @ptrFromInt(0x10240140));

                /// STG SYSCONSAIF SYSCFG 324
                pub const stg_sysconsaif_syscfg324 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:19] u0_plda_pcie_pf2_offset
                    u0_plda_pcie_pf2_offset: u20 = 0,

                    /// [20:31]
                    res0: u12 = 0,
                }), @ptrFromInt(0x10240144));

                /// STG SYSCONSAIF SYSCFG 328
                pub const stg_sysconsaif_syscfg328 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:19] u0_plda_pcie_pf3_offset
                    u0_plda_pcie_pf3_offset: u20 = 0,

                    /// [20:21] u0_plda_pcie_phy_mode
                    u0_plda_pcie_phy_mode: u2 = 0,

                    /// [22:22] u0_plda_pcie_pl_clkrem_allow
                    u0_plda_pcie_pl_clkrem_allow: u1 = 0,

                    /// [23:23] u0_plda_pcie_pl_clkreq_oen
                    u0_plda_pcie_pl_clkreq_oen: u1 = 0,

                    /// [24:25] u0_plda_pcie_pl_equ_phase
                    u0_plda_pcie_pl_equ_phase: u2 = 0,

                    /// [26:30] u0_plda_pcie_pl_ltssm
                    u0_plda_pcie_pl_ltssm: u5 = 0,

                    /// [31:31]
                    res0: u1 = 0,
                }), @ptrFromInt(0x10240148));

                /// STG SYSCONSAIF SYSCFG 332
                pub const stg_sysconsaif_syscfg332 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:4] u0_plda_pcie_pl_pclk_rate
                    u0_plda_pcie_pl_pclk_rate: u5 = 0,

                    /// [5:31]
                    res0: u27 = 0,
                }), @ptrFromInt(0x1024014c));

                /// STG SYSCONSAIF SYSCFG 336
                pub const stg_sysconsaif_syscfg336 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_pl_sideband_in_31_0
                    u0_plda_pcie_pl_sideband_in_31_0: u32 = 0,
                }), @ptrFromInt(0x10240150));

                /// STG SYSCONSAIF SYSCFG 340
                pub const stg_sysconsaif_syscfg340 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_pl_sideband_in_63_32
                    u0_plda_pcie_pl_sideband_in_63_32: u32 = 0,
                }), @ptrFromInt(0x10240154));

                /// STG SYSCONSAIF SYSCFG 344
                pub const stg_sysconsaif_syscfg344 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_pl_sideband_out_31_0
                    u0_plda_pcie_pl_sideband_out_31_0: u32 = 0,
                }), @ptrFromInt(0x10240158));

                /// STG SYSCONSAIF SYSCFG 348
                pub const stg_sysconsaif_syscfg348 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_pl_sideband_out_63_32
                    u0_plda_pcie_pl_sideband_out_63_32: u32 = 0,
                }), @ptrFromInt(0x1024015c));

                /// STG SYSCONSAIF SYSCFG 352
                pub const stg_sysconsaif_syscfg352 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_plda_pcie_pl_wake_in
                    u0_plda_pcie_pl_wake_in: u1 = 0,

                    /// [1:1] u0_plda_pcie_pl_wake_oen
                    u0_plda_pcie_pl_wake_oen: u1 = 0,

                    /// [2:2] u0_plda_pcie_rx_standby_0
                    u0_plda_pcie_rx_standby_0: u1 = 0,

                    /// [3:31]
                    res0: u29 = 0,
                }), @ptrFromInt(0x10240160));

                /// STG SYSCONSAIF SYSCFG 356
                pub const stg_sysconsaif_syscfg356 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_in_31_0
                    u0_plda_pcie_test_in_31_0: u32 = 0,
                }), @ptrFromInt(0x10240164));

                /// STG SYSCONSAIF SYSCFG 360
                pub const stg_sysconsaif_syscfg360 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_in_63_32
                    u0_plda_pcie_test_in_63_32: u32 = 0,
                }), @ptrFromInt(0x10240168));

                /// STG SYSCONSAIF SYSCFG 364
                pub const stg_sysconsaif_syscfg364 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_31_0
                    u0_plda_pcie_test_out_bridge_31_0: u32 = 0,
                }), @ptrFromInt(0x1024016c));

                /// STG SYSCONSAIF SYSCFG 368
                pub const stg_sysconsaif_syscfg368 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_63_32
                    u0_plda_pcie_test_out_bridge_63_32: u32 = 0,
                }), @ptrFromInt(0x10240170));

                /// STG SYSCONSAIF SYSCFG 372
                pub const stg_sysconsaif_syscfg372 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_95_64
                    u0_plda_pcie_test_out_bridge_95_64: u32 = 0,
                }), @ptrFromInt(0x10240174));

                /// STG SYSCONSAIF SYSCFG 376
                pub const stg_sysconsaif_syscfg376 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_127_96
                    u0_plda_pcie_test_out_bridge_127_96: u32 = 0,
                }), @ptrFromInt(0x10240178));

                /// STG SYSCONSAIF SYSCFG 380
                pub const stg_sysconsaif_syscfg380 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_159_128
                    u0_plda_pcie_test_out_bridge_159_128: u32 = 0,
                }), @ptrFromInt(0x1024017c));

                /// STG SYSCONSAIF SYSCFG 384
                pub const stg_sysconsaif_syscfg384 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_191_160
                    u0_plda_pcie_test_out_bridge_191_160: u32 = 0,
                }), @ptrFromInt(0x10240180));

                /// STG SYSCONSAIF SYSCFG 388
                pub const stg_sysconsaif_syscfg388 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_223_192
                    u0_plda_pcie_test_out_bridge_223_192: u32 = 0,
                }), @ptrFromInt(0x10240184));

                /// STG SYSCONSAIF SYSCFG 392
                pub const stg_sysconsaif_syscfg392 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_255_224
                    u0_plda_pcie_test_out_bridge_255_224: u32 = 0,
                }), @ptrFromInt(0x10240188));

                /// STG SYSCONSAIF SYSCFG 396
                pub const stg_sysconsaif_syscfg396 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_287_256
                    u0_plda_pcie_test_out_bridge_287_256: u32 = 0,
                }), @ptrFromInt(0x1024018c));

                /// STG SYSCONSAIF SYSCFG 400
                pub const stg_sysconsaif_syscfg400 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_319_288
                    u0_plda_pcie_test_out_bridge_319_288: u32 = 0,
                }), @ptrFromInt(0x10240190));

                /// STG SYSCONSAIF SYSCFG 404
                pub const stg_sysconsaif_syscfg404 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_351_320
                    u0_plda_pcie_test_out_bridge_351_320: u32 = 0,
                }), @ptrFromInt(0x10240194));

                /// STG SYSCONSAIF SYSCFG 408
                pub const stg_sysconsaif_syscfg408 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_383_352
                    u0_plda_pcie_test_out_bridge_383_352: u32 = 0,
                }), @ptrFromInt(0x10240198));

                /// STG SYSCONSAIF SYSCFG 412
                pub const stg_sysconsaif_syscfg412 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_415_384
                    u0_plda_pcie_test_out_bridge_415_384: u32 = 0,
                }), @ptrFromInt(0x1024019c));

                /// STG SYSCONSAIF SYSCFG 416
                pub const stg_sysconsaif_syscfg416 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_447_416
                    u0_plda_pcie_test_out_bridge_447_416: u32 = 0,
                }), @ptrFromInt(0x102401a0));

                /// STG SYSCONSAIF SYSCFG 420
                pub const stg_sysconsaif_syscfg420 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_479_448
                    u0_plda_pcie_test_out_bridge_479_448: u32 = 0,
                }), @ptrFromInt(0x102401a4));

                /// STG SYSCONSAIF SYSCFG 424
                pub const stg_sysconsaif_syscfg424 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_bridge_511_480
                    u0_plda_pcie_test_out_bridge_511_480: u32 = 0,
                }), @ptrFromInt(0x102401a8));

                /// STG SYSCONSAIF SYSCFG 428
                pub const stg_sysconsaif_syscfg428 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_31_0
                    u0_plda_pcie_test_out_pcie_31_0: u32 = 0,
                }), @ptrFromInt(0x102401ac));

                /// STG SYSCONSAIF SYSCFG 432
                pub const stg_sysconsaif_syscfg432 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_63_32
                    u0_plda_pcie_test_out_pcie_63_32: u32 = 0,
                }), @ptrFromInt(0x102401b0));

                /// STG SYSCONSAIF SYSCFG 436
                pub const stg_sysconsaif_syscfg436 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_95_64
                    u0_plda_pcie_test_out_pcie_95_64: u32 = 0,
                }), @ptrFromInt(0x102401b4));

                /// STG SYSCONSAIF SYSCFG 440
                pub const stg_sysconsaif_syscfg440 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_127_96
                    u0_plda_pcie_test_out_pcie_127_96: u32 = 0,
                }), @ptrFromInt(0x102401b8));

                /// STG SYSCONSAIF SYSCFG 444
                pub const stg_sysconsaif_syscfg444 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_159_128
                    u0_plda_pcie_test_out_pcie_159_128: u32 = 0,
                }), @ptrFromInt(0x102401bc));

                /// STG SYSCONSAIF SYSCFG 448
                pub const stg_sysconsaif_syscfg448 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_191_160
                    u0_plda_pcie_test_out_pcie_191_160: u32 = 0,
                }), @ptrFromInt(0x102401c0));

                /// STG SYSCONSAIF SYSCFG 452
                pub const stg_sysconsaif_syscfg452 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_223_192
                    u0_plda_pcie_test_out_pcie_223_192: u32 = 0,
                }), @ptrFromInt(0x102401c4));

                /// STG SYSCONSAIF SYSCFG 456
                pub const stg_sysconsaif_syscfg456 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_255_224
                    u0_plda_pcie_test_out_pcie_255_224: u32 = 0,
                }), @ptrFromInt(0x102401c8));

                /// STG SYSCONSAIF SYSCFG 460
                pub const stg_sysconsaif_syscfg460 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_287_256
                    u0_plda_pcie_test_out_pcie_287_256: u32 = 0,
                }), @ptrFromInt(0x102401cc));

                /// STG SYSCONSAIF SYSCFG 464
                pub const stg_sysconsaif_syscfg464 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_319_288
                    u0_plda_pcie_test_out_pcie_319_288: u32 = 0,
                }), @ptrFromInt(0x102401d0));

                /// STG SYSCONSAIF SYSCFG 468
                pub const stg_sysconsaif_syscfg468 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_351_320
                    u0_plda_pcie_test_out_pcie_351_320: u32 = 0,
                }), @ptrFromInt(0x102401d4));

                /// STG SYSCONSAIF SYSCFG 472
                pub const stg_sysconsaif_syscfg472 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_383_352
                    u0_plda_pcie_test_out_pcie_383_352: u32 = 0,
                }), @ptrFromInt(0x102401d8));

                /// STG SYSCONSAIF SYSCFG 476
                pub const stg_sysconsaif_syscfg476 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_415_384
                    u0_plda_pcie_test_out_pcie_415_384: u32 = 0,
                }), @ptrFromInt(0x102401dc));

                /// STG SYSCONSAIF SYSCFG 480
                pub const stg_sysconsaif_syscfg480 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_447_416
                    u0_plda_pcie_test_out_pcie_447_416: u32 = 0,
                }), @ptrFromInt(0x102401e0));

                /// STG SYSCONSAIF SYSCFG 484
                pub const stg_sysconsaif_syscfg484 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_479_448
                    u0_plda_pcie_test_out_pcie_479_448: u32 = 0,
                }), @ptrFromInt(0x102401e4));

                /// STG SYSCONSAIF SYSCFG 488
                pub const stg_sysconsaif_syscfg488 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_test_out_pcie_511_480
                    u0_plda_pcie_test_out_pcie_511_480: u32 = 0,
                }), @ptrFromInt(0x102401e8));

                /// STG SYSCONSAIF SYSCFG 492
                pub const stg_sysconsaif_syscfg492 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] u0_plda_pcie_test_sel
                    u0_plda_pcie_test_sel: u4 = 0,

                    /// [4:25] u0_plda_pcie_tl_clock_freq
                    u0_plda_pcie_tl_clock_freq: u22 = 0,

                    /// [26:31]
                    res0: u6 = 0,
                }), @ptrFromInt(0x102401ec));

                /// STG SYSCONSAIF SYSCFG 500
                pub const stg_sysconsaif_syscfg500 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] u0_plda_pcie_tx_pattern
                    u0_plda_pcie_tx_pattern: u2 = 0,

                    /// [2:3] u0_plda_pcie_usb3_bus_width
                    u0_plda_pcie_usb3_bus_width: u2 = 0,

                    /// [4:4] u0_plda_pcie_usb3_phy_enable
                    u0_plda_pcie_usb3_phy_enable: u1 = 0,

                    /// [5:6] u0_plda_pcie_usb3_rate
                    u0_plda_pcie_usb3_rate: u2 = 0,

                    /// [7:7] u0_plda_pcie_usb3_rx_standby
                    u0_plda_pcie_usb3_rx_standby: u1 = 0,

                    /// [8:8] u0_plda_pcie_xwdecerr
                    u0_plda_pcie_xwdecerr: u1 = 0,

                    /// [9:9] u0_plda_pcie_xwerrclr
                    u0_plda_pcie_xwerrclr: u1 = 0,

                    /// [10:10] u0_plda_pcie_xwslverr
                    u0_plda_pcie_xwslverr: u1 = 0,

                    /// [11:11] SRAM/ROM configuration. SLP: sleep enable, high active, default is low.
                    u0_sec_top_sramcfg_slp: u1 = 0,

                    /// [12:12] SRAM/ROM configuration. SD: shutdown enable, high active, default is low.
                    u0_sec_top_sramcfg_sram_config_sd: u1 = 0,

                    /// [13:14] SRAM/ROM configuration. RTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_sec_top_sramcfg_rtsel: u2 = 0,

                    /// [15:16] SRAM/ROM configuration. PTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_sec_top_sramcfg_ptsel: u2 = 0,

                    /// [17:18] SRAM/ROM configuration. TRB: timing setting for debug purpose, default is 2'b01.
                    u0_sec_top_sramcfg_trb: u2 = 0,

                    /// [19:20] SRAM/ROM configuration. WTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_sec_top_sramcfg_wtsel: u2 = 0,

                    /// [21:21] SRAM/ROM configuration. VS: timing setting for debug purpose, default is 1'b1.
                    u0_sec_top_sramcfg_vs: u1 = 0,

                    /// [22:22] SRAM/ROM configuration. VG: timing setting for debug purpose, default is 1'b1.
                    u0_sec_top_sramcfg_vg: u1 = 0,

                    /// [23:23] u0_plda_pcie_align_detect
                    u0_plda_pcie_align_detect: u1 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x102401f4));

                /// STG SYSCONSAIF SYSCFG 504
                pub const stg_sysconsaif_syscfg504 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_31_0
                    u0_plda_pcie_axi4_mst0_aratomop_31_0: u32 = 0,
                }), @ptrFromInt(0x102401f8));

                /// STG SYSCONSAIF SYSCFG 508
                pub const stg_sysconsaif_syscfg508 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_63_32
                    u0_plda_pcie_axi4_mst0_aratomop_63_32: u32 = 0,
                }), @ptrFromInt(0x102401fc));

                /// STG SYSCONSAIF SYSCFG 512
                pub const stg_sysconsaif_syscfg512 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_95_64
                    u0_plda_pcie_axi4_mst0_aratomop_95_64: u32 = 0,
                }), @ptrFromInt(0x10240200));

                /// STG SYSCONSAIF SYSCFG 516
                pub const stg_sysconsaif_syscfg516 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_127_96
                    u0_plda_pcie_axi4_mst0_aratomop_127_96: u32 = 0,
                }), @ptrFromInt(0x10240204));

                /// STG SYSCONSAIF SYSCFG 520
                pub const stg_sysconsaif_syscfg520 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_159_128
                    u0_plda_pcie_axi4_mst0_aratomop_159_128: u32 = 0,
                }), @ptrFromInt(0x10240208));

                /// STG SYSCONSAIF SYSCFG 524
                pub const stg_sysconsaif_syscfg524 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_191_160
                    u0_plda_pcie_axi4_mst0_aratomop_191_160: u32 = 0,
                }), @ptrFromInt(0x1024020c));

                /// STG SYSCONSAIF SYSCFG 528
                pub const stg_sysconsaif_syscfg528 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_223_192
                    u0_plda_pcie_axi4_mst0_aratomop_223_192: u32 = 0,
                }), @ptrFromInt(0x10240210));

                /// STG SYSCONSAIF SYSCFG 532
                pub const stg_sysconsaif_syscfg532 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_plda_pcie_axi4_mst0_aratomop_255_224
                    u0_plda_pcie_axi4_mst0_aratomop_255_224: u32 = 0,
                }), @ptrFromInt(0x10240214));

                /// STG SYSCONSAIF SYSCFG 536
                pub const stg_sysconsaif_syscfg536 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] u0_plda_pcie_axi4_mst0_aratomop_257_256
                    u0_plda_pcie_axi4_mst0_aratomop_257_256: u2 = 0,

                    /// [2:16] u0_plda_pcie_axi4_mst0_arfunc
                    u0_plda_pcie_axi4_mst0_arfunc: u15 = 0,

                    /// [17:20] u0_plda_pcie_axi4_mst0_arregion
                    u0_plda_pcie_axi4_mst0_arregion: u4 = 0,

                    /// [21:31]
                    res0: u11 = 0,
                }), @ptrFromInt(0x10240218));

                /// STG SYSCONSAIF SYSCFG 540
                pub const stg_sysconsaif_syscfg540 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_mst0_aruser_31_0
                    u1_plda_pcie_axi4_mst0_aruser_31_0: u32 = 0,
                }), @ptrFromInt(0x1024021c));

                /// STG SYSCONSAIF SYSCFG 544
                pub const stg_sysconsaif_syscfg544 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:20] u1_plda_pcie_axi4_mst0_aruser_52_32
                    u1_plda_pcie_axi4_mst0_aruser_52_32: u21 = 0,

                    /// [21:31]
                    res0: u11 = 0,
                }), @ptrFromInt(0x10240220));

                /// STG SYSCONSAIF SYSCFG 548
                pub const stg_sysconsaif_syscfg548 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:14] u1_plda_pcie_axi4_mst0_awfunc
                    u1_plda_pcie_axi4_mst0_awfunc: u15 = 0,

                    /// [15:18] u1_plda_pcie_axi4_mst0_awregion
                    u1_plda_pcie_axi4_mst0_awregion: u4 = 0,

                    /// [19:31]
                    res0: u13 = 0,
                }), @ptrFromInt(0x10240224));

                /// STG SYSCONSAIF SYSCFG 552
                pub const stg_sysconsaif_syscfg552 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_mst0_awuser_31_0
                    u1_plda_pcie_axi4_mst0_awuser_31_0: u32 = 0,
                }), @ptrFromInt(0x10240228));

                /// STG SYSCONSAIF SYSCFG 556
                pub const stg_sysconsaif_syscfg556 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:10] u1_plda_pcie_axi4_mst0_awuser_42_32
                    u1_plda_pcie_axi4_mst0_awuser_42_32: u11 = 0,

                    /// [11:18] u1_plda_pcie_axi4_mst0_rderr
                    u1_plda_pcie_axi4_mst0_rderr: u8 = 0,

                    /// [19:31]
                    res0: u13 = 0,
                }), @ptrFromInt(0x1024022c));

                /// STG SYSCONSAIF SYSCFG 560
                pub const stg_sysconsaif_syscfg560 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_mst0_ruser
                    u1_plda_pcie_axi4_mst0_ruser: u32 = 0,
                }), @ptrFromInt(0x10240230));

                /// STG SYSCONSAIF SYSCFG 564
                pub const stg_sysconsaif_syscfg564 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7] u1_plda_pcie_axi4_mst0_wderr
                    u1_plda_pcie_axi4_mst0_wderr: u8 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x10240234));

                /// STG SYSCONSAIF SYSCFG 568
                pub const stg_sysconsaif_syscfg568 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aratomop_31_0
                    u1_plda_pcie_axi4_slv0_aratomop_31_0: u32 = 0,
                }), @ptrFromInt(0x10240238));

                /// STG SYSCONSAIF SYSCFG 572
                pub const stg_sysconsaif_syscfg572 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aratomop_63_32
                    u1_plda_pcie_axi4_slv0_aratomop_63_32: u32 = 0,
                }), @ptrFromInt(0x1024023c));

                /// STG SYSCONSAIF SYSCFG 576
                pub const stg_sysconsaif_syscfg576 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aratomop_95_64
                    u1_plda_pcie_axi4_slv0_aratomop_95_64: u32 = 0,
                }), @ptrFromInt(0x10240240));

                /// STG SYSCONSAIF SYSCFG 580
                pub const stg_sysconsaif_syscfg580 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aratomop_127_96
                    u1_plda_pcie_axi4_slv0_aratomop_127_96: u32 = 0,
                }), @ptrFromInt(0x10240244));

                /// STG SYSCONSAIF SYSCFG 584
                pub const stg_sysconsaif_syscfg584 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aratomop_159_128
                    u1_plda_pcie_axi4_slv0_aratomop_159_128: u32 = 0,
                }), @ptrFromInt(0x10240248));

                /// STG SYSCONSAIF SYSCFG 588
                pub const stg_sysconsaif_syscfg588 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aratomop_191_160
                    u1_plda_pcie_axi4_slv0_aratomop_191_160: u32 = 0,
                }), @ptrFromInt(0x1024024c));

                /// STG SYSCONSAIF SYSCFG 592
                pub const stg_sysconsaif_syscfg592 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aratomop_223_192
                    u1_plda_pcie_axi4_slv0_aratomop_223_192: u32 = 0,
                }), @ptrFromInt(0x10240250));

                /// STG SYSCONSAIF SYSCFG 596
                pub const stg_sysconsaif_syscfg596 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aratomop_255_224
                    u1_plda_pcie_axi4_slv0_aratomop_255_224: u32 = 0,
                }), @ptrFromInt(0x10240254));

                /// STG SYSCONSAIF SYSCFG 600
                pub const stg_sysconsaif_syscfg600 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] u1_plda_pcie_axi4_mst0_aratomop_257_256
                    u1_plda_pcie_axi4_mst0_aratomop_257_256: u2 = 0,

                    /// [2:16] u1_plda_pcie_axi4_slv0_arfunc
                    u1_plda_pcie_axi4_slv0_arfunc: u15 = 0,

                    /// [17:20] u1_plda_pcie_axi4_slv0_arregion
                    u1_plda_pcie_axi4_slv0_arregion: u4 = 0,

                    /// [21:31]
                    res0: u11 = 0,
                }), @ptrFromInt(0x10240258));

                /// STG SYSCONSAIF SYSCFG 604
                pub const stg_sysconsaif_syscfg604 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_aruser_31_0
                    u1_plda_pcie_axi4_slv0_aruser_31_0: u32 = 0,
                }), @ptrFromInt(0x1024025c));

                /// STG SYSCONSAIF SYSCFG 608
                pub const stg_sysconsaif_syscfg608 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:8] u1_plda_pcie_axi4_slv0_aruser_40_32
                    u1_plda_pcie_axi4_slv0_aruser_40_32: u9 = 0,

                    /// [9:23] u1_plda_pcie_axi4_slv0_awfunc
                    u1_plda_pcie_axi4_slv0_awfunc: u15 = 0,

                    /// [24:27] u1_plda_pcie_axi4_slv0_awregion
                    u1_plda_pcie_axi4_slv0_awregion: u4 = 0,

                    /// [28:31]
                    res0: u4 = 0,
                }), @ptrFromInt(0x10240260));

                /// STG SYSCONSAIF SYSCFG 612
                pub const stg_sysconsaif_syscfg612 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_awuser_31_0
                    u1_plda_pcie_axi4_slv0_awuser_31_0: u32 = 0,
                }), @ptrFromInt(0x10240264));

                /// STG SYSCONSAIF SYSCFG 616
                pub const stg_sysconsaif_syscfg616 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:8] u1_plda_pcie_axi4_slv0_awuser_40_32
                    u1_plda_pcie_axi4_slv0_awuser_40_32: u9 = 0,

                    /// [9:16] u1_plda_pcie_axi4_slv0_rderr
                    u1_plda_pcie_axi4_slv0_rderr: u8 = 0,

                    /// [17:31]
                    res0: u15 = 0,
                }), @ptrFromInt(0x10240268));

                /// STG SYSCONSAIF SYSCFG 620
                pub const stg_sysconsaif_syscfg620 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_axi4_slv0_ruser
                    u1_plda_pcie_axi4_slv0_ruser: u32 = 0,
                }), @ptrFromInt(0x1024026c));

                /// STG SYSCONSAIF SYSCFG 624
                pub const stg_sysconsaif_syscfg624 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7] u1_plda_pcie_axi4_slv0_wderr
                    u1_plda_pcie_axi4_slv0_wderr: u8 = 0,

                    /// [8:22] u1_plda_pcie_axi4_slvl_arfunc
                    u1_plda_pcie_axi4_slvl_arfunc: u15 = 0,

                    /// [23:31]
                    res0: u9 = 0,
                }), @ptrFromInt(0x10240270));

                /// STG SYSCONSAIF SYSCFG 628
                pub const stg_sysconsaif_syscfg628 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:14] u1_plda_pcie_axi4_slvl_awfunc
                    u1_plda_pcie_axi4_slvl_awfunc: u15 = 0,

                    /// [15:16] u1_plda_pcie_bus_width_o
                    u1_plda_pcie_bus_width_o: u2 = 0,

                    /// [17:17] u1_plda_pcie_bypass_codec
                    u1_plda_pcie_bypass_codec: u1 = 0,

                    /// [18:19] u1_plda_pcie_ckref_src
                    u1_plda_pcie_ckref_src: u2 = 0,

                    /// [20:21] u1_plda_pcie_clk_sel
                    u1_plda_pcie_clk_sel: u2 = 0,

                    /// [22:22] u1_plda_pcie_clkreq
                    u1_plda_pcie_clkreq: u1 = 0,

                    /// [23:31]
                    res0: u9 = 0,
                }), @ptrFromInt(0x10240274));

                /// STG SYSCONSAIF SYSCFG 632
                pub const stg_sysconsaif_syscfg632 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_31_0
                    u1_plda_pcie_k_phyparam_31_0: u32 = 0,
                }), @ptrFromInt(0x10240278));

                /// STG SYSCONSAIF SYSCFG 636
                pub const stg_sysconsaif_syscfg636 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_63_32
                    u1_plda_pcie_k_phyparam_63_32: u32 = 0,
                }), @ptrFromInt(0x1024027c));

                /// STG SYSCONSAIF SYSCFG 640
                pub const stg_sysconsaif_syscfg640 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_95_64
                    u1_plda_pcie_k_phyparam_95_64: u32 = 0,
                }), @ptrFromInt(0x10240280));

                /// STG SYSCONSAIF SYSCFG 644
                pub const stg_sysconsaif_syscfg644 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_127_96
                    u1_plda_pcie_k_phyparam_127_96: u32 = 0,
                }), @ptrFromInt(0x10240284));

                /// STG SYSCONSAIF SYSCFG 648
                pub const stg_sysconsaif_syscfg648 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_159_128
                    u1_plda_pcie_k_phyparam_159_128: u32 = 0,
                }), @ptrFromInt(0x10240288));

                /// STG SYSCONSAIF SYSCFG 652
                pub const stg_sysconsaif_syscfg652 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_191_160
                    u1_plda_pcie_k_phyparam_191_160: u32 = 0,
                }), @ptrFromInt(0x1024028c));

                /// STG SYSCONSAIF SYSCFG 656
                pub const stg_sysconsaif_syscfg656 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_223_192
                    u1_plda_pcie_k_phyparam_223_192: u32 = 0,
                }), @ptrFromInt(0x10240290));

                /// STG SYSCONSAIF SYSCFG 660
                pub const stg_sysconsaif_syscfg660 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_255_224
                    u1_plda_pcie_k_phyparam_255_224: u32 = 0,
                }), @ptrFromInt(0x10240294));

                /// STG SYSCONSAIF SYSCFG 664
                pub const stg_sysconsaif_syscfg664 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_287_256
                    u1_plda_pcie_k_phyparam_287_256: u32 = 0,
                }), @ptrFromInt(0x10240298));

                /// STG SYSCONSAIF SYSCFG 668
                pub const stg_sysconsaif_syscfg668 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_319_288
                    u1_plda_pcie_k_phyparam_319_288: u32 = 0,
                }), @ptrFromInt(0x1024029c));

                /// STG SYSCONSAIF SYSCFG 672
                pub const stg_sysconsaif_syscfg672 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_351_320
                    u1_plda_pcie_k_phyparam_351_320: u32 = 0,
                }), @ptrFromInt(0x102402a0));

                /// STG SYSCONSAIF SYSCFG 676
                pub const stg_sysconsaif_syscfg676 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_383_352
                    u1_plda_pcie_k_phyparam_383_352: u32 = 0,
                }), @ptrFromInt(0x102402a4));

                /// STG SYSCONSAIF SYSCFG 680
                pub const stg_sysconsaif_syscfg680 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_415_384
                    u1_plda_pcie_k_phyparam_415_384: u32 = 0,
                }), @ptrFromInt(0x102402a8));

                /// STG SYSCONSAIF SYSCFG 684
                pub const stg_sysconsaif_syscfg684 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_447_416
                    u1_plda_pcie_k_phyparam_447_416: u32 = 0,
                }), @ptrFromInt(0x102402ac));

                /// STG SYSCONSAIF SYSCFG 688
                pub const stg_sysconsaif_syscfg688 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_479_448
                    u1_plda_pcie_k_phyparam_479_448: u32 = 0,
                }), @ptrFromInt(0x102402b0));

                /// STG SYSCONSAIF SYSCFG 692
                pub const stg_sysconsaif_syscfg692 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_511_480
                    u1_plda_pcie_k_phyparam_511_480: u32 = 0,
                }), @ptrFromInt(0x102402b4));

                /// STG SYSCONSAIF SYSCFG 696
                pub const stg_sysconsaif_syscfg696 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_543_512
                    u1_plda_pcie_k_phyparam_543_512: u32 = 0,
                }), @ptrFromInt(0x102402b8));

                /// STG SYSCONSAIF SYSCFG 700
                pub const stg_sysconsaif_syscfg700 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_575_544
                    u1_plda_pcie_k_phyparam_575_544: u32 = 0,
                }), @ptrFromInt(0x102402bc));

                /// STG SYSCONSAIF SYSCFG 704
                pub const stg_sysconsaif_syscfg704 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_607_576
                    u1_plda_pcie_k_phyparam_607_576: u32 = 0,
                }), @ptrFromInt(0x102402c0));

                /// STG SYSCONSAIF SYSCFG 708
                pub const stg_sysconsaif_syscfg708 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_639_608
                    u1_plda_pcie_k_phyparam_639_608: u32 = 0,
                }), @ptrFromInt(0x102402c4));

                /// STG SYSCONSAIF SYSCFG 712
                pub const stg_sysconsaif_syscfg712 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_671_640
                    u1_plda_pcie_k_phyparam_671_640: u32 = 0,
                }), @ptrFromInt(0x102402c8));

                /// STG SYSCONSAIF SYSCFG 716
                pub const stg_sysconsaif_syscfg716 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_703_672
                    u1_plda_pcie_k_phyparam_703_672: u32 = 0,
                }), @ptrFromInt(0x102402cc));

                /// STG SYSCONSAIF SYSCFG 720
                pub const stg_sysconsaif_syscfg720 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_735_704
                    u1_plda_pcie_k_phyparam_735_704: u32 = 0,
                }), @ptrFromInt(0x102402d0));

                /// STG SYSCONSAIF SYSCFG 724
                pub const stg_sysconsaif_syscfg724 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_767_736
                    u1_plda_pcie_k_phyparam_767_736: u32 = 0,
                }), @ptrFromInt(0x102402d4));

                /// STG SYSCONSAIF SYSCFG 728
                pub const stg_sysconsaif_syscfg728 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_799_768
                    u1_plda_pcie_k_phyparam_799_768: u32 = 0,
                }), @ptrFromInt(0x102402d8));

                /// STG SYSCONSAIF SYSCFG 732
                pub const stg_sysconsaif_syscfg732 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_k_phyparam_831_800
                    u1_plda_pcie_k_phyparam_831_800: u32 = 0,
                }), @ptrFromInt(0x102402dc));

                /// STG SYSCONSAIF SYSCFG 736
                pub const stg_sysconsaif_syscfg736 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:7] u1_plda_pcie_k_phyparam_839_832
                    u1_plda_pcie_k_phyparam_839_832: u8 = 0,

                    /// [8:8] u1_plda_pcie_k_rp_nep
                    u1_plda_pcie_k_rp_nep: u1 = 0,

                    /// [9:9] u1_plda_pcie_l1sub_entack
                    u1_plda_pcie_l1sub_entack: u1 = 0,

                    /// [10:10] u1_plda_pcie_l1sub_entreq
                    u1_plda_pcie_l1sub_entreq: u1 = 0,

                    /// [11:31]
                    res0: u21 = 0,
                }), @ptrFromInt(0x102402e0));

                /// STG SYSCONSAIF SYSCFG 740
                pub const stg_sysconsaif_syscfg740 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_local_interrupt_in
                    u1_plda_pcie_local_interrupt_in: u32 = 0,
                }), @ptrFromInt(0x102402e4));

                /// STG SYSCONSAIF SYSCFG 744
                pub const stg_sysconsaif_syscfg744 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u1_plda_pcie_mperstn
                    u1_plda_pcie_mperstn: u1 = 0,

                    /// [1:1] u1_plda_pcie_pcie_ebuf_mode
                    u1_plda_pcie_pcie_ebuf_mode: u1 = 0,

                    /// [2:24] u1_plda_pcie_pcie_phy_test_cfg
                    u1_plda_pcie_pcie_phy_test_cfg: u23 = 0,

                    /// [25:25] u1_plda_pcie_pcie_rx_eq_training
                    u1_plda_pcie_pcie_rx_eq_training: u1 = 0,

                    /// [26:26] u1_plda_pcie_pcie_rxterm_en
                    u1_plda_pcie_pcie_rxterm_en: u1 = 0,

                    /// [27:27] u1_plda_pcie_pcie_tx_oneszeros
                    u1_plda_pcie_pcie_tx_oneszeros: u1 = 0,

                    /// [28:31]
                    res0: u4 = 0,
                }), @ptrFromInt(0x102402e8));

                /// STG SYSCONSAIF SYSCFG 748
                pub const stg_sysconsaif_syscfg748 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:19] u1_plda_pcie_pf0_offset
                    u1_plda_pcie_pf0_offset: u20 = 0,

                    /// [20:31]
                    res0: u12 = 0,
                }), @ptrFromInt(0x102402ec));

                /// STG SYSCONSAIF SYSCFG 752
                pub const stg_sysconsaif_syscfg752 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:19] u1_plda_pcie_pf1_offset
                    u1_plda_pcie_pf1_offset: u20 = 0,

                    /// [20:31]
                    res0: u12 = 0,
                }), @ptrFromInt(0x102402f0));

                /// STG SYSCONSAIF SYSCFG 756
                pub const stg_sysconsaif_syscfg756 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:19] u1_plda_pcie_pf2_offset
                    u1_plda_pcie_pf2_offset: u20 = 0,

                    /// [20:31]
                    res0: u12 = 0,
                }), @ptrFromInt(0x102402f4));

                /// STG SYSCONSAIF SYSCFG 760
                pub const stg_sysconsaif_syscfg760 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:19] u1_plda_pcie_pf3_offset
                    u1_plda_pcie_pf3_offset: u20 = 0,

                    /// [20:21] u1_plda_pcie_phy_mode
                    u1_plda_pcie_phy_mode: u2 = 0,

                    /// [22:22] u1_plda_pcie_pl_clkrem_allow
                    u1_plda_pcie_pl_clkrem_allow: u1 = 0,

                    /// [23:23] u1_plda_pcie_pl_clkreq_oen
                    u1_plda_pcie_pl_clkreq_oen: u1 = 0,

                    /// [24:25] u1_plda_pcie_pl_equ_phase
                    u1_plda_pcie_pl_equ_phase: u2 = 0,

                    /// [26:30] u1_plda_pcie_pl_ltssm
                    u1_plda_pcie_pl_ltssm: u5 = 0,

                    /// [31:31]
                    res0: u1 = 0,
                }), @ptrFromInt(0x102402f8));

                /// STG SYSCONSAIF SYSCFG 764
                pub const stg_sysconsaif_syscfg764 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:4] u1_plda_pcie_pl_pclk_rate
                    u1_plda_pcie_pl_pclk_rate: u5 = 0,

                    /// [5:31]
                    res0: u27 = 0,
                }), @ptrFromInt(0x102402fc));

                /// STG SYSCONSAIF SYSCFG 768
                pub const stg_sysconsaif_syscfg768 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_pl_sideband_in_31_0
                    u1_plda_pcie_pl_sideband_in_31_0: u32 = 0,
                }), @ptrFromInt(0x10240300));

                /// STG SYSCONSAIF SYSCFG 772
                pub const stg_sysconsaif_syscfg772 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_pl_sideband_in_63_32
                    u1_plda_pcie_pl_sideband_in_63_32: u32 = 0,
                }), @ptrFromInt(0x10240304));

                /// STG SYSCONSAIF SYSCFG 776
                pub const stg_sysconsaif_syscfg776 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_pl_sideband_out_31_0
                    u1_plda_pcie_pl_sideband_out_31_0: u32 = 0,
                }), @ptrFromInt(0x10240308));

                /// STG SYSCONSAIF SYSCFG 780
                pub const stg_sysconsaif_syscfg780 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_pl_sideband_out_63_32
                    u1_plda_pcie_pl_sideband_out_63_32: u32 = 0,
                }), @ptrFromInt(0x1024030c));

                /// STG SYSCONSAIF SYSCFG 784
                pub const stg_sysconsaif_syscfg784 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u1_plda_pcie_pl_wake_in
                    u1_plda_pcie_pl_wake_in: u1 = 0,

                    /// [1:1] u1_plda_pcie_pl_wake_oen
                    u1_plda_pcie_pl_wake_oen: u1 = 0,

                    /// [2:2] u1_plda_pcie_rx_standby_o
                    u1_plda_pcie_rx_standby_o: u1 = 0,

                    /// [3:31]
                    res0: u29 = 0,
                }), @ptrFromInt(0x10240310));

                /// STG SYSCONSAIF SYSCFG 788
                pub const stg_sysconsaif_syscfg788 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_in_31_0
                    u1_plda_pcie_test_in_31_0: u32 = 0,
                }), @ptrFromInt(0x10240314));

                /// STG SYSCONSAIF SYSCFG 792
                pub const stg_sysconsaif_syscfg792 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_in_63_32
                    u1_plda_pcie_test_in_63_32: u32 = 0,
                }), @ptrFromInt(0x10240318));

                /// STG SYSCONSAIF SYSCFG 796
                pub const stg_sysconsaif_syscfg796 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_31_0
                    u1_plda_pcie_test_out_bridge_31_0: u32 = 0,
                }), @ptrFromInt(0x1024031c));

                /// STG SYSCONSAIF SYSCFG 800
                pub const stg_sysconsaif_syscfg800 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_63_32
                    u1_plda_pcie_test_out_bridge_63_32: u32 = 0,
                }), @ptrFromInt(0x10240320));

                /// STG SYSCONSAIF SYSCFG 804
                pub const stg_sysconsaif_syscfg804 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_95_64
                    u1_plda_pcie_test_out_bridge_95_64: u32 = 0,
                }), @ptrFromInt(0x10240324));

                /// STG SYSCONSAIF SYSCFG 808
                pub const stg_sysconsaif_syscfg808 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_127_96
                    u1_plda_pcie_test_out_bridge_127_96: u32 = 0,
                }), @ptrFromInt(0x10240328));

                /// STG SYSCONSAIF SYSCFG 812
                pub const stg_sysconsaif_syscfg812 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_159_128
                    u1_plda_pcie_test_out_bridge_159_128: u32 = 0,
                }), @ptrFromInt(0x1024032c));

                /// STG SYSCONSAIF SYSCFG 816
                pub const stg_sysconsaif_syscfg816 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_191_160
                    u1_plda_pcie_test_out_bridge_191_160: u32 = 0,
                }), @ptrFromInt(0x10240330));

                /// STG SYSCONSAIF SYSCFG 820
                pub const stg_sysconsaif_syscfg820 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_223_192
                    u1_plda_pcie_test_out_bridge_223_192: u32 = 0,
                }), @ptrFromInt(0x10240334));

                /// STG SYSCONSAIF SYSCFG 824
                pub const stg_sysconsaif_syscfg824 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_255_224
                    u1_plda_pcie_test_out_bridge_255_224: u32 = 0,
                }), @ptrFromInt(0x10240338));

                /// STG SYSCONSAIF SYSCFG 828
                pub const stg_sysconsaif_syscfg828 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_287_256
                    u1_plda_pcie_test_out_bridge_287_256: u32 = 0,
                }), @ptrFromInt(0x1024033c));

                /// STG SYSCONSAIF SYSCFG 832
                pub const stg_sysconsaif_syscfg832 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_319_288
                    u1_plda_pcie_test_out_bridge_319_288: u32 = 0,
                }), @ptrFromInt(0x10240340));

                /// STG SYSCONSAIF SYSCFG 836
                pub const stg_sysconsaif_syscfg836 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_351_320
                    u1_plda_pcie_test_out_bridge_351_320: u32 = 0,
                }), @ptrFromInt(0x10240344));

                /// STG SYSCONSAIF SYSCFG 840
                pub const stg_sysconsaif_syscfg840 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_383_352
                    u1_plda_pcie_test_out_bridge_383_352: u32 = 0,
                }), @ptrFromInt(0x10240348));

                /// STG SYSCONSAIF SYSCFG 844
                pub const stg_sysconsaif_syscfg844 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_415_384
                    u1_plda_pcie_test_out_bridge_415_384: u32 = 0,
                }), @ptrFromInt(0x1024034c));

                /// STG SYSCONSAIF SYSCFG 848
                pub const stg_sysconsaif_syscfg848 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_447_416
                    u1_plda_pcie_test_out_bridge_447_416: u32 = 0,
                }), @ptrFromInt(0x10240350));

                /// STG SYSCONSAIF SYSCFG 852
                pub const stg_sysconsaif_syscfg852 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_479_448
                    u1_plda_pcie_test_out_bridge_479_448: u32 = 0,
                }), @ptrFromInt(0x10240354));

                /// STG SYSCONSAIF SYSCFG 856
                pub const stg_sysconsaif_syscfg856 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_bridge_511_480
                    u1_plda_pcie_test_out_bridge_511_480: u32 = 0,
                }), @ptrFromInt(0x10240358));

                /// STG SYSCONSAIF SYSCFG 860
                pub const stg_sysconsaif_syscfg860 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_31_0
                    u1_plda_pcie_test_out_pcie_31_0: u32 = 0,
                }), @ptrFromInt(0x1024035c));

                /// STG SYSCONSAIF SYSCFG 864
                pub const stg_sysconsaif_syscfg864 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_63_32
                    u1_plda_pcie_test_out_pcie_63_32: u32 = 0,
                }), @ptrFromInt(0x10240360));

                /// STG SYSCONSAIF SYSCFG 868
                pub const stg_sysconsaif_syscfg868 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_95_64
                    u1_plda_pcie_test_out_pcie_95_64: u32 = 0,
                }), @ptrFromInt(0x10240364));

                /// STG SYSCONSAIF SYSCFG 872
                pub const stg_sysconsaif_syscfg872 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_127_96
                    u1_plda_pcie_test_out_pcie_127_96: u32 = 0,
                }), @ptrFromInt(0x10240368));

                /// STG SYSCONSAIF SYSCFG 876
                pub const stg_sysconsaif_syscfg876 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_159_128
                    u1_plda_pcie_test_out_pcie_159_128: u32 = 0,
                }), @ptrFromInt(0x1024036c));

                /// STG SYSCONSAIF SYSCFG 880
                pub const stg_sysconsaif_syscfg880 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_191_160
                    u1_plda_pcie_test_out_pcie_191_160: u32 = 0,
                }), @ptrFromInt(0x10240370));

                /// STG SYSCONSAIF SYSCFG 884
                pub const stg_sysconsaif_syscfg884 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_223_192
                    u1_plda_pcie_test_out_pcie_223_192: u32 = 0,
                }), @ptrFromInt(0x10240374));

                /// STG SYSCONSAIF SYSCFG 888
                pub const stg_sysconsaif_syscfg888 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_255_224
                    u1_plda_pcie_test_out_pcie_255_224: u32 = 0,
                }), @ptrFromInt(0x10240378));

                /// STG SYSCONSAIF SYSCFG 892
                pub const stg_sysconsaif_syscfg892 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_287_256
                    u1_plda_pcie_test_out_pcie_287_256: u32 = 0,
                }), @ptrFromInt(0x1024037c));

                /// STG SYSCONSAIF SYSCFG 896
                pub const stg_sysconsaif_syscfg896 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_319_288
                    u1_plda_pcie_test_out_pcie_319_288: u32 = 0,
                }), @ptrFromInt(0x10240380));

                /// STG SYSCONSAIF SYSCFG 900
                pub const stg_sysconsaif_syscfg900 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_351_320
                    u1_plda_pcie_test_out_pcie_351_320: u32 = 0,
                }), @ptrFromInt(0x10240384));

                /// STG SYSCONSAIF SYSCFG 904
                pub const stg_sysconsaif_syscfg904 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_383_352
                    u1_plda_pcie_test_out_pcie_383_352: u32 = 0,
                }), @ptrFromInt(0x10240388));

                /// STG SYSCONSAIF SYSCFG 908
                pub const stg_sysconsaif_syscfg908 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_415_384
                    u1_plda_pcie_test_out_pcie_415_384: u32 = 0,
                }), @ptrFromInt(0x1024038c));

                /// STG SYSCONSAIF SYSCFG 912
                pub const stg_sysconsaif_syscfg912 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_447_416
                    u1_plda_pcie_test_out_pcie_447_416: u32 = 0,
                }), @ptrFromInt(0x10240390));

                /// STG SYSCONSAIF SYSCFG 916
                pub const stg_sysconsaif_syscfg916 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_479_448
                    u1_plda_pcie_test_out_pcie_479_448: u32 = 0,
                }), @ptrFromInt(0x10240394));

                /// STG SYSCONSAIF SYSCFG 920
                pub const stg_sysconsaif_syscfg920 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_plda_pcie_test_out_pcie_511_480
                    u1_plda_pcie_test_out_pcie_511_480: u32 = 0,
                }), @ptrFromInt(0x10240398));

                /// STG SYSCONSAIF SYSCFG 924
                pub const stg_sysconsaif_syscfg924 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] u1_plda_pcie_test_sel
                    u1_plda_pcie_test_sel: u4 = 0,

                    /// [4:25] u1_plda_pcie_tl_clock_freq
                    u1_plda_pcie_tl_clock_freq: u22 = 0,

                    /// [26:31]
                    res0: u6 = 0,
                }), @ptrFromInt(0x1024039c));

                /// STG SYSCONSAIF SYSCFG 928
                pub const stg_sysconsaif_syscfg928 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:15] u1_plda_pcie_tl_ctrl_hotplug
                    u1_plda_pcie_tl_ctrl_hotplug: u16 = 0,

                    /// [16:31] u1_plda_pcie_tl_report_hotplug
                    u1_plda_pcie_tl_report_hotplug: u16 = 0,
                }), @ptrFromInt(0x102403a0));

                /// STG SYSCONSAIF SYSCFG 932
                pub const stg_sysconsaif_syscfg932 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] u1_plda_pcie_tx_pattern
                    u1_plda_pcie_tx_pattern: u2 = 0,

                    /// [2:3] u1_plda_pcie_usb3_bus_width
                    u1_plda_pcie_usb3_bus_width: u2 = 0,

                    /// [4:4] u1_plda_pcie_usb3_phy_enable
                    u1_plda_pcie_usb3_phy_enable: u1 = 0,

                    /// [5:6] u1_plda_pcie_usb3_rate
                    u1_plda_pcie_usb3_rate: u2 = 0,

                    /// [7:7] u1_plda_pcie_usb3_rx_standby
                    u1_plda_pcie_usb3_rx_standby: u1 = 0,

                    /// [8:8] u1_plda_pcie_xwdecerr
                    u1_plda_pcie_xwdecerr: u1 = 0,

                    /// [9:9] u1_plda_pcie_xwerrclr
                    u1_plda_pcie_xwerrclr: u1 = 0,

                    /// [10:10] u1_plda_pcie_xwslverr
                    u1_plda_pcie_xwslverr: u1 = 0,

                    /// [11:31]
                    res0: u21 = 0,
                }), @ptrFromInt(0x102403a4));
            };

            /// From syscon, peripheral generator
            pub const syscon_0 = struct {};

            /// From snps,dw-apb-uart, peripheral generator
            pub const snps_dw_apb_uart_3 = struct {};

            /// From snps,dw-apb-uart, peripheral generator
            pub const snps_dw_apb_uart_4 = struct {};

            /// From snps,dw-apb-uart, peripheral generator
            pub const snps_dw_apb_uart_5 = struct {};

            /// From snps,designware-i2c, peripheral generator
            pub const snps_designware_i2c_3 = struct {};

            /// From snps,designware-i2c, peripheral generator
            pub const snps_designware_i2c_4 = struct {};

            /// From snps,designware-i2c, peripheral generator
            pub const snps_designware_i2c_5 = struct {};

            /// From atmel,24c04, peripheral generator
            pub const atmel_24c04_0 = struct {};

            /// From snps,designware-i2c, peripheral generator
            pub const snps_designware_i2c_6 = struct {};

            /// From jedec,spi-nor, peripheral generator
            pub const jedec_spi_nor_0 = struct {};

            /// From starfive,jh7110-pwm, peripheral generator
            pub const starfive_jh7110_pwm_0 = struct {
                /// PTC counter register
                pub const cntr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] PWM PTC counter
                    cntr: u32 = 0,
                }), @ptrFromInt(0x120d0000));

                /// PTC duty-cycle register
                pub const hrc = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] PWM PTC duty-cycle value
                    hrc: u32 = 0,
                }), @ptrFromInt(0x120d0004));

                /// PTC period register
                pub const lrc = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] PWM PTC period value
                    lrc: u32 = 0,
                }), @ptrFromInt(0x120d0008));

                /// PTC control register
                pub const ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] PWM PTC enable
                    en: u1 = 0,

                    /// [1:1] PWM PTC enable clock
                    eclk: u1 = 0,

                    /// [2:2] PWM PTC nec
                    nec: u1 = 0,

                    /// [3:3] PWM PTC oe
                    oe: u1 = 0,

                    /// [4:4] PWM PTC single
                    single: u1 = 0,

                    /// [5:5] PWM PTC interrupt enable
                    inte: u1 = 0,

                    /// [6:6] PWM PTC interrupt
                    int: u1 = 0,

                    /// [7:7] PWM PTC counter reset
                    cntrrst: u1 = 0,

                    /// [8:8] PWM PTC capte
                    capte: u1 = 0,

                    /// [9:31]
                    res0: u23 = 0,
                }), @ptrFromInt(0x120d000c));
            };

            /// From starfive,jh7110-syscrg, peripheral generator
            pub const starfive_jh7110_syscrg_0 = struct {
                /// Clock CPU Root
                pub const clk_cpu_root = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_osc, clk_pll0
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x13020000));

                /// Clock CPU Core
                pub const clk_cpu_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=7, Default=1, Min=1, Typical=1
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020004));

                /// Clock CPU Bus
                pub const clk_cpu_bus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020008));

                /// Clock GPU Root
                pub const clk_gpu_root = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_pll2, clk_pll1
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x1302000c));

                /// Clock Peripheral Root
                pub const clk_peripheral_root = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_pll0, clk_pll2
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x13020010));

                /// Clock Bus Root
                pub const clk_bus_root = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_osc, clk_pll2
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x13020014));

                /// Clock NOCSTG Bus
                pub const clk_nocstg_bus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=3, Default=3, Min=3, Typical=3
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020018));

                /// Clock AXI Configuration 0
                pub const clk_axi_cfg0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=3, Default=3, Min=3, Typical=3
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1302001c));

                /// Clock STG AXI AHB
                pub const clk_stg_axiahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020020));

                /// Clock AHB 0
                pub const clk_ahb0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020024));

                /// Clock AHB 1
                pub const clk_ahb1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020028));

                /// Clock APB Bus
                pub const clk_apb_bus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=8, Default=4, Min=4, Typical=4
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1302002c));

                /// Clock APB 0
                pub const clk_apb0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020030));

                /// Clock PLL 0 Divider 2
                pub const clk_pll0_div2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020034));

                /// Clock PLL 1 Divider 2
                pub const clk_pll1_div2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020038));

                /// Clock PLL 2 Divider 2
                pub const clk_pll2_div2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1302003c));

                /// Clock Audio Root
                pub const clk_audio_root = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=8, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020040));

                /// Clock MCLK Inner
                pub const clk_mclk_inner = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=64, Default=12, Min=12, Typical=12
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020044));

                /// Clock MCLK
                pub const clk_mclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_mclk_inner, clk_mclk_ext
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x13020048));

                /// Clock MCLK Out
                pub const clk_mclk_out = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302004c));

                /// Clock ISP 2x
                pub const clk_isp_2x = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=8, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_pll2, clk_pll1
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x13020050));

                /// Clock ISP AXI
                pub const clk_isp_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=4, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020054));

                /// Clock GCLK 0
                pub const clk_gclk0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=62, Default=20, Min=16, Typical=20
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020058));

                /// Clock GCLK 1
                pub const clk_gclk1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=62, Default=16, Min=16, Typical=16
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302005c));

                /// Clock GCLK 2
                pub const clk_gclk2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=62, Default=12, Min=12, Typical=12
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020060));

                /// U7MC Core Clock 0
                pub const clk_u7mc_core0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020064));

                /// U7MC Core Clock 1
                pub const clk_u7mc_core1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020068));

                /// U7MC Core Clock 2
                pub const clk_u7mc_core2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302006c));

                /// U7MC Core Clock 3
                pub const clk_u7mc_core3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020070));

                /// U7MC Core Clock 4
                pub const clk_u7mc_core4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020074));

                /// U7MC Debug Clock
                pub const clk_u7mc_debug = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020078));

                /// U7MC RTC Toggle
                pub const u7mc_rtc_toggle = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=6, Default=6, Min=6, Typical=6
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1302007c));

                /// U7MC Trace Clock 0
                pub const clk_u7mc_trace0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020080));

                /// U7MC Trace Clock 1
                pub const clk_u7mc_trace1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020084));

                /// U7MC Trace Clock 2
                pub const clk_u7mc_trace2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020088));

                /// U7MC Trace Clock 3
                pub const clk_u7mc_trace3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302008c));

                /// U7MC Trace Clock 4
                pub const clk_u7mc_trace4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020090));

                /// U7MC Trace Clock COM
                pub const clk_u7mc_trace_com = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020094));

                /// clk_u0_sft7110_noc_bus_clk_cpu_axi
                pub const clk_u0_sft7110_noc_bus_clk_cpu_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020098));

                /// clk_u0_sft7110_noc_bus_clk_axicfg0_axi
                pub const clk_u0_sft7110_noc_bus_clk_axicfg0_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302009c));

                /// clk_osc_div2
                pub const clk_osc_div2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130200a0));

                /// clk_pll1_div4
                pub const clk_pll1_div4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130200a4));

                /// clk_pll1_div8
                pub const clk_pll1_div8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130200a8));

                /// clk_ddr_bus
                pub const clk_ddr_bus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_osc_div2, clk_pll1_div4, clk_pll1_div8
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x130200ac));

                /// clk_u0_ddr_sfft7110_clk_axi
                pub const clk_u0_ddr_sft7110_clk_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200b0));

                /// clk_gpu_core
                pub const clk_gpu_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=7, Default=3, Min=3, Typical=3
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130200b4));

                /// clk_u0_img_gpu_core_clk
                pub const clk_u0_img_gpu_core_clk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200b8));

                /// clk_u0_img_gpu_sys_clk
                pub const clk_u0_img_gpu_sys_clk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200bc));

                /// clk_u0_img_gpu_clk_apb
                pub const clk_u0_img_gpu_clk_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200c0));

                /// clk_u0_gpu_rtc_toggle
                pub const clk_u0_gpu_rtc_toggle = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=12, Default=12, Min=12, Typical=12
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200c4));

                /// clk_u0_sft7110_noc_bus_clk_gpu_axi
                pub const clk_u0_sft7110_noc_bus_clk_gpu_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200c8));

                /// clk_u0_dom_isp_top_clk_dom_isp_top_clk_ispcore_2x
                pub const clk_u0_dom_isp_top_clk_dom_isp_top_clk_ispcore_2x = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200cc));

                /// clk_u0_dom_isp_top_clk_dom_isp_top_clk_isp_axi
                pub const clk_u0_dom_isp_top_clk_dom_isp_top_clk_isp_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200d0));

                /// clk_u0_sft7110_noc_bux_clk_isp_axi
                pub const clk_u0_sft7110_noc_bux_clk_isp_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200d4));

                /// clk_hifi4_core
                pub const clk_hifi4_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=3, Min=3, Typical=3
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130200d8));

                /// clk_hifi4_axi
                pub const clk_hifi4_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130200dc));

                /// clk_u0_axi_cfg1_dec_clk_main
                pub const clk_u0_axi_cfg1_dec_clk_main = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200e0));

                /// clk_u0_axi_cfg1_dec_clk_ahb
                pub const clk_u0_axi_cfg1_dec_clk_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200e4));

                /// clk_u0_dom_vout_top_clk_dom_vout_top_clk_vout_src
                pub const clk_u0_dom_vout_top_clk_dom_vout_top_clk_vout_src = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200e8));

                /// Clock Video Output AXI DIVCFG
                pub const clk_vout_axi_divcfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=7, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130200ec));

                /// Clock NOC Display AXI
                pub const clk_noc_display_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200f0));

                /// Clock Video Output AHB
                pub const clk_vout_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200f4));

                /// Clock Video Output AXI ICG
                pub const clk_vout_axi_icg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200f8));

                /// Clock Video Output HDMI TX0 MCLK
                pub const clk_vout_hdmi_tx0_mclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130200fc));

                /// Clock Video Output MIPI PHY Reference
                pub const clk_vout_mipi_phy = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=2, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020100));

                /// Clock JPEG Codec AXI
                pub const clk_jpeg_codec_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=16, Default=6, Min=6, Typical=6
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020104));

                /// CODAJ12 Clock AXI
                pub const clk_codaj12_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020108));

                /// CODAJ12 Clock Core
                pub const clk_codaj12_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=16, Default=6, Min=6, Typical=6
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302010c));

                /// CODAJ12 Clock APB
                pub const clk_codaj12_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020110));

                /// Clock Video Decoder AXI
                pub const clk_vdec_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=7, Default=3, Min=3, Typical=3
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020114));

                /// Clock WAVE511 AXI
                pub const clk_wave511_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020118));

                /// Clock WAVE511 BPU
                pub const clk_wave511_bpu = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=7, Default=3, Min=3, Typical=3
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302011c));

                /// Clock WAVE511 VCE
                pub const clk_wave511_vce = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=7, Default=2, Min=3, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020120));

                /// Clock WAVE511 APB
                pub const clk_wave511_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020124));

                /// Clock WAVE511 JPG ARB
                pub const clk_wave511_jpg_arb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020128));

                /// Clock WAVE511 JPG Main
                pub const clk_wave511_jpg_main = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302012c));

                /// Clock NOC Video Decoder AXI
                pub const clk_noc_vdec_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020130));

                /// Clock Video Encoder AXI
                pub const clk_venc_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=5, Min=5, Typical=5
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020134));

                /// Clock WAVE420L AXI
                pub const clk_wave420l_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020138));

                /// Clock WAVE420L BPU
                pub const clk_wave420l_bpu = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=5, Min=5, Typical=5
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302013c));

                /// Clock WAVE420L VCE
                pub const clk_wave420l_vce = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=5, Min=5, Typical=5
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020140));

                /// Clock WAVE420L APB
                pub const clk_wave420l_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020144));

                /// Clock NOC Video Encoder AXI
                pub const clk_noc_venc_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020148));

                /// Clock AXI Config 0 DEC Main Divider
                pub const clk_axi_cfg0_dec_main_div = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302014c));

                /// Clock AXI Config 0 DEC Main
                pub const clk_axi_cfg0_dec_main = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020150));

                /// Clock AXI Config 0 DEC HIFI4
                pub const clk_axi_cfg0_dec_hifi4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020154));

                /// Clock AXIMEM 128B AXI
                pub const clk_aximem_128b_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020158));

                /// Clock QSPI AHB
                pub const clk_qspi_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302015c));

                /// Clock QSPI APB
                pub const clk_qspi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020160));

                /// Clock QSPI Reference Source
                pub const clk_qspi_ref_src = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=16, Default=10, Min=10, Typical=10
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020164));

                /// Clock QSPI Reference
                pub const clk_qspi_ref = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_osc, clk_qspi_ref_src
                    clk_mux_sel: u6 = 0,

                    /// [30:30]
                    res1: u1 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020168));

                /// U0 SD Clock AHB
                pub const clk_u0_sd_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302016c));

                /// U1 SD Clock AHB
                pub const clk_u1_sd_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020170));

                /// U0 SD Card Clock
                pub const clk_u0_sd_card = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020174));

                /// U1 SD Card Clock
                pub const clk_u1_sd_card = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020178));

                /// Clock USB 125M
                pub const clk_usb_125m = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=8, Min=12, Typical=10
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1302017c));

                /// Clock NOC STG AXI
                pub const clk_noc_stg_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020180));

                /// Clock GMAC 5 AXI 64 AHB
                pub const clk_gmac5_axi64_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020184));

                /// Clock GMAC 5 AXI 64 AXI
                pub const clk_gmac5_axi64_axi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020188));

                /// Clock GMAC Source
                pub const clk_gmac_src = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=7, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1302018c));

                /// Clock GMAC 1 GTX
                pub const clk_gmac1_gtx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=8, Min=12, Typical=10
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020190));

                /// Clock GMAC 1 RMII RTX
                pub const clk_gmac1_rmii_rtx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=30, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x13020194));

                /// Clock GMAC 5 AXI 64 PTP
                pub const clk_gmac5_axi64_ptp = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=31, Default=10, Min=15, Typical=10
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020198));

                /// Clock GMAC 5 AXI 64 RX
                pub const clk_gmac5_axi64_rx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Selector delay chain stage number, totally 32 stages, -50 ps each stage. The register value indicates the delay chain stage number. For example, diy_chain_sel=1 means to delay 1 stage.
                    dly_chain_sel: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1302019c));

                /// Clock GMAC 5 AXI 64 RX Inverter
                pub const clk_gmac5_axi64_rxi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x130201a0));

                /// Clock GMAC 5 AXI 64 TX
                pub const clk_gmac5_axi64_tx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_gmac1_gtxclk, clk_gmac1_rmii_rtx
                    clk_mux_sel: u6 = 0,

                    /// [30:30]
                    res1: u1 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201a4));

                /// Clock GMAC 5 AXI 64 TX Inverter
                pub const clk_gmac5_axi64_txi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x130201a8));

                /// Clock GMAC 1 GTXC
                pub const clk_gmac1_gtxclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Selector delay chain stage number, totally 32 stages, -50 ps each stage. The register value indicates the delay chain stage number. For example, diy_chain_sel=1 means to delay 1 stage.
                    dly_chain_sel: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130201ac));

                /// Clock GMAC 0 GTX
                pub const clk_gmac0_gtx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=15, Default=8, Min=12, Typical=10
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201b0));

                /// Clock GMAC 0 PTP
                pub const clk_gmac0_ptp = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=31, Default=10, Min=15, Typical=25
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201b4));

                /// Clock GMAC PHY
                pub const clk_gmac_phy = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=31, Default=10, Min=15, Typical=25
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201b8));

                /// Clock GMAC 0 GTXC
                pub const clk_gmac0_gtxclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Selector delay chain stage number, totally 32 stages, -50 ps each stage. The register value indicates the delay chain stage number. For example, diy_chain_sel=1 means to delay 1 stage.
                    dly_chain_sel: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130201bc));

                /// Clock SYS IOMUX PCLK
                pub const clk_sys_iomux_pclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201c0));

                /// Clock Mailbox APB
                pub const clk_mbox_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201c4));

                /// Clock Internal Controller APB
                pub const clk_internal_ctrl_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201c8));

                /// U0 Clock CAN Controller APB
                pub const clk_u0_can_ctrl_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201cc));

                /// U0 Clock CAN Controller Timer
                pub const clk_u0_can_ctrl_tim = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=24, Default=24, Min=6, Typical=24
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201d0));

                /// U0 Clock CAN Controller CAN
                pub const clk_u0_can_ctrl_can = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=63, Default=8, Min=8, Typical=8
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201d4));

                /// U1 Clock CAN Controller APB
                pub const clk_u1_can_ctrl_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201d8));

                /// U1 Clock CAN Controller Timer
                pub const clk_u1_can_ctrl_tim = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=24, Default=24, Min=6, Typical=24
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201dc));

                /// U1 Clock CAN Controller CAN
                pub const clk_u1_can_ctrl_can = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=63, Default=8, Min=8, Typical=8
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201e0));

                /// Clock PWM APB
                pub const clk_pwm_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201e4));

                /// Clock WDT APB
                pub const clk_wdt_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201e8));

                /// Clock WDT
                pub const clk_wdt = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201ec));

                /// Clock Timer APB
                pub const clk_tim_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201f0));

                /// Clock Timer 0
                pub const clk_tim0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201f4));

                /// Clock Timer 1
                pub const clk_tim1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201f8));

                /// Clock Timer 2
                pub const clk_tim2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130201fc));

                /// Clock Timer 3
                pub const clk_tim3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020200));

                /// Clock Temperature Sensor APB
                pub const clk_temp_sensor_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020204));

                /// Clock Temperature Sensor
                pub const clk_temp_sensor = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=24, Default=24, Min=24, Typical=24
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020208));

                /// U0 Clock SPI APB
                pub const clk_u0_spi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302020c));

                /// U1 Clock SPI APB
                pub const clk_u1_spi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020210));

                /// U2 Clock SPI APB
                pub const clk_u2_spi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020214));

                /// U3 Clock SPI APB
                pub const clk_u3_spi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020218));

                /// U4 Clock SPI APB
                pub const clk_u4_spi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302021c));

                /// U5 Clock SPI APB
                pub const clk_u5_spi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020220));

                /// U6 Clock SPI APB
                pub const clk_u6_spi_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020224));

                /// U0 Clock I2C APB
                pub const clk_u0_i2c_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020228));

                /// U1 Clock I2C APB
                pub const clk_u1_i2c_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302022c));

                /// U2 Clock I2C APB
                pub const clk_u2_i2c_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020230));

                /// U3 Clock I2C APB
                pub const clk_u3_i2c_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020234));

                /// U4 Clock I2C APB
                pub const clk_u4_i2c_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020238));

                /// U5 Clock I2C APB
                pub const clk_u5_i2c_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302023c));

                /// U6 Clock I2C APB
                pub const clk_u6_i2c_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020240));

                /// U0 Clock UART APB
                pub const clk_u0_uart_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020244));

                /// U0 Clock UART Core
                pub const clk_u0_uart_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020248));

                /// U1 Clock UART APB
                pub const clk_u1_uart_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302024c));

                /// U1 Clock UART Core
                pub const clk_u1_uart_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020250));

                /// U2 Clock UART APB
                pub const clk_u2_uart_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020254));

                /// U2 Clock UART Core
                pub const clk_u2_uart_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020258));

                /// U3 Clock UART APB
                pub const clk_u3_uart_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302025c));

                /// U3 Clock UART Core
                pub const clk_u3_uart_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=131071, Default=2560, Min=2560, Typical=2560
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020260));

                /// U4 Clock UART APB
                pub const clk_u4_uart_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020264));

                /// U4 Clock UART Core
                pub const clk_u4_uart_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=131071, Default=2560, Min=2560, Typical=2560
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020268));

                /// U5 Clock UART APB
                pub const clk_u5_uart_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302026c));

                /// U5 Clock UART Core
                pub const clk_u5_uart_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=131071, Default=2560, Min=2560, Typical=2560
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020270));

                /// Clock PWMDAC APB
                pub const clk_pwmdac_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020274));

                /// Clock PWMDAC Core
                pub const clk_pwmdac_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=256, Default=12, Min=12, Typical=12
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020278));

                /// Clock SPDIF APB
                pub const clk_spdif_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1302027c));

                /// Clock SPDIF Core
                pub const clk_spdif_core = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020280));

                /// U0 Clock I2S TX APB
                pub const clk_u0_i2s_tx_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020284));

                /// U0 Clock I2S TX 0 BCLK MST
                pub const clk_u0_i2stx_4ch0_bclk_mst = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=32, Default=4, Min=4, Typical=4
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x13020288));

                /// U0 Clock I2S TX 0 BCLK MST Inverter
                pub const clk_u0_i2stx_4ch0_bclk_mst_inv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x1302028c));

                /// Clock I2S TX 0 LRCK MST
                pub const clk_i2stx0_lrck_mst = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=64, Default=64, Min=64, Typical=64
                    clk_divcfg: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2stx_4ch0_bclk_mst_inv, clk_i2stx_4ch0_bclk_mst
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x13020290));

                /// U0 Clock I2S TX BCLK
                pub const clk_u0_i2stx_bclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2stx_4ch0_bclk_mst, clk_i2stx_bclk_ext
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x13020294));

                /// U0 Clock I2S TX BCLK Negative
                pub const clk_u0_i2stx_bclk_neg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x13020298));

                /// U0 Clock I2S TX LRCK
                pub const clk_u0_i2stx_lrck = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2stx_4ch0_lrck_mst, clk_i2stx_lrck_ext
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x1302029c));

                /// U1 Clock I2S TX APB
                pub const clk_u1_i2s_tx_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202a0));

                /// U1 Clock I2S TX 1 BCLK MST
                pub const clk_u1_i2stx_4ch1_bclk_mst = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=32, Default=4, Min=4, Typical=4
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202a4));

                /// U1 Clock I2S TX 1 BCLK MST Inverter
                pub const clk_u1_i2stx_4ch1_bclk_mst_inv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x130202a8));

                /// Clock I2S TX 1 LRCK MST
                pub const clk_i2stx1_lrck_mst = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=64, Default=64, Min=64, Typical=64
                    clk_divcfg: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2stx_4ch0_bclk_mst_inv, clk_i2stx_4ch0_bclk_mst
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x130202ac));

                /// U1 Clock I2S TX BCLK
                pub const clk_u1_i2stx_bclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2stx_4ch1_bclk_mst, clk_i2stx_bclk_ext
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x130202b0));

                /// U1 Clock I2S TX BCLK Negative
                pub const clk_u1_i2stx_bclk_neg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x130202b4));

                /// U1 Clock I2S TX LRCK
                pub const clk_u1_i2stx_lrck = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2stx_4ch1_lrck_mst, clk_i2stx_lrck_ext
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x130202b8));

                /// Clock I2S APB
                pub const clk_i2s_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202bc));

                /// Clock I2S BCLK MST
                pub const clk_i2s_bclk_mst = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=32, Default=4, Min=4, Typical=4
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202c0));

                /// Clock I2S BCLK MST Inverter
                pub const clk_i2s_bclk_mst_inv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x130202c4));

                /// Clock I2S LRCK MST
                pub const clk_i2s_lrck_mst = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=64, Default=64, Min=64, Typical=64
                    clk_divcfg: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2srx_3ch_bclk_mst_inv, clk_i2srx_3ch_bclk_mst
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x130202c8));

                /// Clock I2S BCLK
                pub const clk_i2s_bclk = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2srx_3ch_bclk_mst, clk_i2srx_3ch_bclk_ext
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x130202cc));

                /// Clock I2S BCLK Negative
                pub const clk_i2s_bclk_neg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x130202d0));

                /// Clock I2S LRCK
                pub const clk_i2s_lrck = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_i2srx_3ch_lrck_mst, clk_i2srx_3ch_lrck_ext
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x130202d4));

                /// Clock PDM DMIC
                pub const clk_pdm_dmic = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=64, Default=8, Min=8, Typical=8
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202d8));

                /// Clock PDM APB
                pub const clk_pdm_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202dc));

                /// Clock TDM AHB
                pub const clk_tdm_ahb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202e0));

                /// Clock TDM APB
                pub const clk_tdm_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202e4));

                /// Clock TDM Internal
                pub const clk_tdm_internal = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=64, Default=1, Min=1, Typical=1
                    clk_divcfg: u24 = 0,

                    /// [24:30]
                    res0: u7 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x130202e8));

                /// Clock TDM
                pub const clk_tdm = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_tdm_internal, clk_tdm_ext
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x130202ec));

                /// Clock TDM Negative
                pub const clk_tdm_neg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x130202f0));

                /// Clock JTAG Certification TRNG
                pub const clk_jtag_cert_trng = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=4, Default=4, Min=4, Typical=4
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130202f4));

                /// Software RESET 0 Address Selector
                pub const soft_rst0_addr_sel = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_jtag2apb_presetn: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sys_syscon_presetn: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sys_iomux_presetn: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_bus: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_debug_reset: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core0: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core1: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core2: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core3: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core4: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core0_st: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core1_st: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core2_st: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core3_st: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core4_st: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst0: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst1: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst2: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst3: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst4: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_com_rst: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rst_u0_img_gpu_rstn_apb: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rst_u0_img_gpu_rstn_doma: u1 = 0,

                    /// [23:23] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_apb_bus_n: u1 = 0,

                    /// [24:24] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_axicfg0_axi_n: u1 = 0,

                    /// [25:25] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_cpu_axi_n: u1 = 0,

                    /// [26:26] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_disp_axi_n: u1 = 0,

                    /// [27:27] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_gpu_axi_n: u1 = 0,

                    /// [28:28] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_isp_axi_n: u1 = 0,

                    /// [29:29] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_ddrc_n: u1 = 0,

                    /// [30:30] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_stg_axi_n: u1 = 0,

                    /// [31:31] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_vdec_axi_n: u1 = 0,
                }), @ptrFromInt(0x130202f8));

                /// Software RESET 1 Address Selector
                pub const soft_rst1_addr_sel = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sft7100_noc_bus_reset_venc_axi_n: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg1_dec_rstn_ahb: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg1_dec_rstn_main: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg0_dec_rstn_main: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg0_dec_rstn_main_div: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg0_dec_rstn_hifi4: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rstn_u0_ddr_sft7110_rstn_axi: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rstn_u0_ddr_sft7110_rstn_osc: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rstn_u0_ddr_sft7110_rstn_apb: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dom_isp_top_rstn_dom_isp_top_ip_top_reset_n: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dom_isp_top_rstn_dom_isp_top_rstn_isp_axi: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dom_vout_top_rstn_dom_vout_top_rstn_vout_src: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rstn_u0_codaj12_rstn_axi: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rstn_u0_codaj12_rstn_core: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rstn_u0_codaj12_rstn_apb: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave511_rstn_axi: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave511_rstn_bpu: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave511_rstn_vce: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave511_rstn_apb: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rstn_u0_vdec_jpg_arb_jpgresetn: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rstn_u0_vdec_jpg_arb_mainresetn: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rstn_u0_aximem_128b_rstn_axi: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave420l_rstn_axi: u1 = 0,

                    /// [23:23] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave420l_rstn_bpu: u1 = 0,

                    /// [24:24] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave420l_rstn_vce: u1 = 0,

                    /// [25:25] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave420l_rstn_apb: u1 = 0,

                    /// [26:26] 1: Assert reset, 0: De-assert reset
                    rstn_u1_aximem_128b_rstn_axi: u1 = 0,

                    /// [27:27] 1: Assert reset, 0: De-assert reset
                    rstn_u2_aximem_128b_rstn_axi: u1 = 0,

                    /// [28:28] 1: Assert reset, 0: De-assert reset
                    rstn_u0_intmem_rom_sram_rstn_rom: u1 = 0,

                    /// [29:29] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdns_qspi_rstn_ahb: u1 = 0,

                    /// [30:30] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdns_qspi_rstn_apb: u1 = 0,

                    /// [31:31] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdns_qspi_rstn_ref: u1 = 0,
                }), @ptrFromInt(0x130202fc));

                /// Software RESET 2 Address Selector
                pub const soft_rst2_addr_sel = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sdio_rstn_ahb: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rstn_u1_sdi_rstn_ahb: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rstn_u1_gmac5_axi64_aresetn_i: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rstn_u1_gmac5_axi64_hresetn_n: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rstn_u0_mailbox_presetn: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rstn_u0_ssp_spi_rstn_apb: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rstn_u1_ssp_spi_rstn_apb: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rstn_u2_ssp_spi_rstn_apb: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rstn_u3_ssp_spi_rstn_apb: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rstn_u4_ssp_spi_rstn_apb: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rstn_u5_ssp_spi_rstn_apb: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rstn_u6_ssp_spi_rstn_apb: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2c_rstn_apb: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rstn_u1_i2c_rstn_apb: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rstn_u2_i2c_rstn_apb: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rstn_u3_i2c_rstn_apb: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rstn_u4_i2c_rstn_apb: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rstn_u5_i2c_rstn_apb: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rstn_u6_i2c_rstn_apb: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rstn_u0_uart_rstn_apb: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rstn_u0_uart_rstn_core: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rstn_u1_uart_rstn_apb: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rstn_u1_uart_rstn_core: u1 = 0,

                    /// [23:23] 1: Assert reset, 0: De-assert reset
                    rstn_u2_uart_rstn_apb: u1 = 0,

                    /// [24:24] 1: Assert reset, 0: De-assert reset
                    rstn_u2_uart_rstn_core: u1 = 0,

                    /// [25:25] 1: Assert reset, 0: De-assert reset
                    rstn_u3_uart_rstn_apb: u1 = 0,

                    /// [26:26] 1: Assert reset, 0: De-assert reset
                    rstn_u3_uart_rstn_core: u1 = 0,

                    /// [27:27] 1: Assert reset, 0: De-assert reset
                    rstn_u4_uart_rstn_apb: u1 = 0,

                    /// [28:28] 1: Assert reset, 0: De-assert reset
                    rstn_u4_uart_rstn_core: u1 = 0,

                    /// [29:29] 1: Assert reset, 0: De-assert reset
                    rstn_u5_uart_rstn_apb: u1 = 0,

                    /// [30:30] 1: Assert reset, 0: De-assert reset
                    rstn_u6_uart_rstn_core: u1 = 0,

                    /// [31:31] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdns_spdif_rstn_apb: u1 = 0,
                }), @ptrFromInt(0x13020300));

                /// Software RESET 3 Address Selector
                pub const soft_rst3_addr_sel = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_pwmdac_rstn_apb: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rstn_u0_pdm_4mic_rstn_dmic: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rstn_u0_pdm_4mic_rstn_apb: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2srx_3ch_rstn_apb: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2srx_3ch_rstn_bclk: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2stx_4ch_rstn_apb: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2stx_4ch_rstn_bclk: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rstn_u1_i2stx_4ch_rstn_apb: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rstn_u1_i2stx_4ch_rstn_bclk: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rstn_u0_tdm16slot_rstn_ahb: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rstn_u0_tdm16slot_rstn_tdm: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rstn_u0_tdm16slot_rstn_apb: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rstn_u0_pwm_8ch_rstn_apb: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dskit_wdt_rstn_apb: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dskit_wdt_rstn_wdt: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rstn_u0_can_ctrl_rstn_apb: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rstn_u0_can_ctrl_rstn_can: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rstn_u0_can_ctrl_rstn_timer: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rstn_u1_can_ctrl_rstn_apb: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rstn_u1_can_ctrl_rstn_can: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rstn_u1_can_ctrl_rstn_timer: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_apb: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_timer0: u1 = 0,

                    /// [23:23] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_time10: u1 = 0,

                    /// [24:24] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_timer2: u1 = 0,

                    /// [25:25] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_timer3: u1 = 0,

                    /// [26:26] 1: Assert reset, 0: De-assert reset
                    rstn_u0_int_ctrl_rstn_apb: u1 = 0,

                    /// [27:27] 1: Assert reset, 0: De-assert reset
                    rstn_u0_temp_sensor_rstn_apb: u1 = 0,

                    /// [28:28] 1: Assert reset, 0: De-assert reset
                    rstn_u0_temp_sensor_rstn_temp: u1 = 0,

                    /// [29:29] 1: Assert reset, 0: De-assert reset
                    rstn_u0_jtag_certification_rst_n: u1 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x13020304));

                /// SYSCRG RESET Status 0
                pub const syscrg_rst0_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_jtag2apb_presetn: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sys_syscon_presetn: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sys_iomux_presetn: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_bus: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_debug_reset: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core0: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core1: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core2: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core3: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core4: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core0_st: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core1_st: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core2_st: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core3_st: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_rst_core4_st: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst0: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst1: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst2: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst3: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_rst4: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_trace_com_rst: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rst_u0_img_gpu_rstn_apb: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rst_u0_img_gpu_rstn_doma: u1 = 0,

                    /// [23:23] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_apb_bus_n: u1 = 0,

                    /// [24:24] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_axicfg0_axi_n: u1 = 0,

                    /// [25:25] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_cpu_axi_n: u1 = 0,

                    /// [26:26] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_disp_axi_n: u1 = 0,

                    /// [27:27] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_gpu_axi_n: u1 = 0,

                    /// [28:28] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_isp_axi_n: u1 = 0,

                    /// [29:29] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_ddrc_n: u1 = 0,

                    /// [30:30] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_stg_axi_n: u1 = 0,

                    /// [31:31] 1: Assert reset, 0: De-assert reset
                    rst_u0_u7mc_sft7110_noc_bus_reset_vdec_axi_n: u1 = 0,
                }), @ptrFromInt(0x13020308));

                /// SYSCRG RESET Status 1
                pub const syscrg_rst1_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sft7100_noc_bus_reset_venc_axi_n: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg1_dec_rstn_ahb: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg1_dec_rstn_main: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg0_dec_rstn_main: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg0_dec_rstn_main_div: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rstn_u0_axi_cfg0_dec_rstn_hifi4: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rstn_u0_ddr_sft7110_rstn_axi: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rstn_u0_ddr_sft7110_rstn_osc: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rstn_u0_ddr_sft7110_rstn_apb: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dom_isp_top_rstn_dom_isp_top_ip_top_reset_n: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dom_isp_top_rstn_dom_isp_top_rstn_isp_axi: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dom_vout_top_rstn_dom_vout_top_rstn_vout_src: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rstn_u0_codaj12_rstn_axi: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rstn_u0_codaj12_rstn_core: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rstn_u0_codaj12_rstn_apb: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave511_rstn_axi: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave511_rstn_bpu: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave511_rstn_vce: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave511_rstn_apb: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rstn_u0_vdec_jpg_arb_jpgresetn: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rstn_u0_vdec_jpg_arb_mainresetn: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rstn_u0_aximem_128b_rstn_axi: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave420l_rstn_axi: u1 = 0,

                    /// [23:23] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave420l_rstn_bpu: u1 = 0,

                    /// [24:24] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave420l_rstn_vce: u1 = 0,

                    /// [25:25] 1: Assert reset, 0: De-assert reset
                    rstn_u0_wave420l_rstn_apb: u1 = 0,

                    /// [26:26] 1: Assert reset, 0: De-assert reset
                    rstn_u1_aximem_128b_rstn_axi: u1 = 0,

                    /// [27:27] 1: Assert reset, 0: De-assert reset
                    rstn_u2_aximem_128b_rstn_axi: u1 = 0,

                    /// [28:28] 1: Assert reset, 0: De-assert reset
                    rstn_u0_intmem_rom_sram_rstn_rom: u1 = 0,

                    /// [29:29] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdns_qspi_rstn_ahb: u1 = 0,

                    /// [30:30] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdns_qspi_rstn_apb: u1 = 0,

                    /// [31:31] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdns_qspi_rstn_ref: u1 = 0,
                }), @ptrFromInt(0x1302030c));

                /// SYSCRG RESET Status 2
                pub const syscrg_rst2_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_sdio_rstn_ahb: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rstn_u1_sdi_rstn_ahb: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rstn_u1_gmac5_axi64_aresetn_i: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rstn_u1_gmac5_axi64_hresetn_n: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rstn_u0_mailbox_presetn: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rstn_u0_ssp_spi_rstn_apb: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rstn_u1_ssp_spi_rstn_apb: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rstn_u2_ssp_spi_rstn_apb: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rstn_u3_ssp_spi_rstn_apb: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rstn_u4_ssp_spi_rstn_apb: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rstn_u5_ssp_spi_rstn_apb: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rstn_u6_ssp_spi_rstn_apb: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2c_rstn_apb: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rstn_u1_i2c_rstn_apb: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rstn_u2_i2c_rstn_apb: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rstn_u3_i2c_rstn_apb: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rstn_u4_i2c_rstn_apb: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rstn_u5_i2c_rstn_apb: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rstn_u6_i2c_rstn_apb: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rstn_u0_uart_rstn_apb: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rstn_u0_uart_rstn_core: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rstn_u1_uart_rstn_apb: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rstn_u1_uart_rstn_core: u1 = 0,

                    /// [23:23] 1: Assert reset, 0: De-assert reset
                    rstn_u2_uart_rstn_apb: u1 = 0,

                    /// [24:24] 1: Assert reset, 0: De-assert reset
                    rstn_u2_uart_rstn_core: u1 = 0,

                    /// [25:25] 1: Assert reset, 0: De-assert reset
                    rstn_u3_uart_rstn_apb: u1 = 0,

                    /// [26:26] 1: Assert reset, 0: De-assert reset
                    rstn_u3_uart_rstn_core: u1 = 0,

                    /// [27:27] 1: Assert reset, 0: De-assert reset
                    rstn_u4_uart_rstn_apb: u1 = 0,

                    /// [28:28] 1: Assert reset, 0: De-assert reset
                    rstn_u4_uart_rstn_core: u1 = 0,

                    /// [29:29] 1: Assert reset, 0: De-assert reset
                    rstn_u5_uart_rstn_apb: u1 = 0,

                    /// [30:30] 1: Assert reset, 0: De-assert reset
                    rstn_u6_uart_rstn_core: u1 = 0,

                    /// [31:31] 1: Assert reset, 0: De-assert reset
                    rstn_u0_cdns_spdif_rstn_apb: u1 = 0,
                }), @ptrFromInt(0x13020310));

                /// SYSCRG RESET Status 3
                pub const syscrg_rst3_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    rstn_u0_pwmdac_rstn_apb: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    rstn_u0_pdm_4mic_rstn_dmic: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    rstn_u0_pdm_4mic_rstn_apb: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2srx_3ch_rstn_apb: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2srx_3ch_rstn_bclk: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2stx_4ch_rstn_apb: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rstn_u0_i2stx_4ch_rstn_bclk: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rstn_u1_i2stx_4ch_rstn_apb: u1 = 0,

                    /// [8:8] 1: Assert reset, 0: De-assert reset
                    rstn_u1_i2stx_4ch_rstn_bclk: u1 = 0,

                    /// [9:9] 1: Assert reset, 0: De-assert reset
                    rstn_u0_tdm16slot_rstn_ahb: u1 = 0,

                    /// [10:10] 1: Assert reset, 0: De-assert reset
                    rstn_u0_tdm16slot_rstn_tdm: u1 = 0,

                    /// [11:11] 1: Assert reset, 0: De-assert reset
                    rstn_u0_tdm16slot_rstn_apb: u1 = 0,

                    /// [12:12] 1: Assert reset, 0: De-assert reset
                    rstn_u0_pwm_8ch_rstn_apb: u1 = 0,

                    /// [13:13] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dskit_wdt_rstn_apb: u1 = 0,

                    /// [14:14] 1: Assert reset, 0: De-assert reset
                    rstn_u0_dskit_wdt_rstn_wdt: u1 = 0,

                    /// [15:15] 1: Assert reset, 0: De-assert reset
                    rstn_u0_can_ctrl_rstn_apb: u1 = 0,

                    /// [16:16] 1: Assert reset, 0: De-assert reset
                    rstn_u0_can_ctrl_rstn_can: u1 = 0,

                    /// [17:17] 1: Assert reset, 0: De-assert reset
                    rstn_u0_can_ctrl_rstn_timer: u1 = 0,

                    /// [18:18] 1: Assert reset, 0: De-assert reset
                    rstn_u1_can_ctrl_rstn_apb: u1 = 0,

                    /// [19:19] 1: Assert reset, 0: De-assert reset
                    rstn_u1_can_ctrl_rstn_can: u1 = 0,

                    /// [20:20] 1: Assert reset, 0: De-assert reset
                    rstn_u1_can_ctrl_rstn_timer: u1 = 0,

                    /// [21:21] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_apb: u1 = 0,

                    /// [22:22] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_timer0: u1 = 0,

                    /// [23:23] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_time10: u1 = 0,

                    /// [24:24] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_timer2: u1 = 0,

                    /// [25:25] 1: Assert reset, 0: De-assert reset
                    rstn_u0_si5_timer_rstn_timer3: u1 = 0,

                    /// [26:26] 1: Assert reset, 0: De-assert reset
                    rstn_u0_int_ctrl_rstn_apb: u1 = 0,

                    /// [27:27] 1: Assert reset, 0: De-assert reset
                    rstn_u0_temp_sensor_rstn_apb: u1 = 0,

                    /// [28:28] 1: Assert reset, 0: De-assert reset
                    rstn_u0_temp_sensor_rstn_temp: u1 = 0,

                    /// [29:29] 1: Assert reset, 0: De-assert reset
                    rstn_u0_jtag_certification_rst_n: u1 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x13020314));
            };

            /// From starfive,jh7110-sys-syscon, peripheral generator
            pub const starfive_jh7110_sys_syscon_0 = struct {
                /// SYS SYSCONSAIF SYSCFG 0
                pub const sys_sysconsaif_syscfg0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] scfg_e24_remap_haddr
                    scfg_e24_remap_haddr: u4 = 0,

                    /// [4:7] scfg_hifi4_idma_remap_araddr
                    scfg_hifi4_idma_remap_araddr: u4 = 0,

                    /// [8:11] scfg_hifi4_idma_remap_awaddr
                    scfg_hifi4_idma_remap_awaddr: u4 = 0,

                    /// [12:15] scfg_hifi4_sys_remap_araddr
                    scfg_hifi4_sys_remap_araddr: u4 = 0,

                    /// [16:19] scfg_hifi4_sys_remap_awaddr
                    scfg_hifi4_sys_remap_awaddr: u4 = 0,

                    /// [20:23] scfg_jpg_remap_araddr
                    scfg_jpg_remap_araddr: u4 = 0,

                    /// [24:27] scfg_jpg_remap_awaddr
                    scfg_jpg_remap_awaddr: u4 = 0,

                    /// [28:31] scfg_sd0_remap_araddr
                    scfg_sd0_remap_araddr: u4 = 0,
                }), @ptrFromInt(0x13030000));

                /// SYS SYSCONSAIF SYSCFG 4
                pub const sys_sysconsaif_syscfg4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] scfg_sd1_remap_awaddr
                    scfg_sd1_remap_awaddr: u4 = 0,

                    /// [4:7] scfg_sec_haddr_remap
                    scfg_sec_haddr_remap: u4 = 0,

                    /// [8:11] scfg_usb_araddr_remap
                    scfg_usb_araddr_remap: u4 = 0,

                    /// [12:15] scfg_usb_awaddr_remap
                    scfg_usb_awaddr_remap: u4 = 0,

                    /// [16:19] scfg_vdec_remap_awaddr
                    scfg_vdec_remap_awaddr: u4 = 0,

                    /// [20:23] scfg_venc_remap_araddr
                    scfg_venc_remap_araddr: u4 = 0,

                    /// [24:27] scfg_venc_remap_awaddr
                    scfg_venc_remap_awaddr: u4 = 0,

                    /// [28:31] scfg_vout0_remap_araddr
                    scfg_vout0_remap_araddr: u4 = 0,
                }), @ptrFromInt(0x13030004));

                /// SYS SYSCONSAIF SYSCFG 8
                pub const sys_sysconsaif_syscfg8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] scfg_vout0_remap_awaddr
                    scfg_vout0_remap_awaddr: u4 = 0,

                    /// [4:7] scfg_vout1_remap_araddr
                    scfg_vout1_remap_araddr: u4 = 0,

                    /// [8:11] scfg_vout1_remap_awaddr
                    scfg_vout1_remap_awaddr: u4 = 0,

                    /// [12:31]
                    res0: u20 = 0,
                }), @ptrFromInt(0x13030008));

                /// SYS SYSCONSAIF SYSCFG 12: Set the GPIO voltage of all the 4 GPIO groups in this register
                pub const sys_sysconsaif_syscfg12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 0: GPIO Group 0 (GPIO21-35) voltage select 3.3V, 1: GPIO Group 0 (GPIO21-35) voltage select 1.8V
                    scfg_vout0_remap_awaddr_gpio0: u1 = 0,

                    /// [1:1] 0: GPIO Group 1 (GPIO36-63) voltage select 3.3V, 1: GPIO Group 1 (GPIO36-63) voltage select 1.8V
                    scfg_vout0_remap_awaddr_gpio1: u1 = 0,

                    /// [2:2] 0: GPIO Group 2 (GPIO0-6) voltage select 3.3V, 1: GPIO Group 2 (GPIO0-6) voltage select 1.8V
                    scfg_vout0_remap_awaddr_gpio2: u1 = 0,

                    /// [3:3] 0: GPIO Group 3 (GPIO7-20) voltage select 3.3V, 1: GPIO Group 3 (GPIO7-20) voltage select 1.8V
                    scfg_vout0_remap_awaddr_gpio3: u1 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x1303000c));

                /// SYS SYSCONSAIF SYSCFG 16
                pub const sys_sysconsaif_syscfg16 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] Tie 0 in JPU internal, do not care
                    u0_coda12_o_cur_inst_a: u2 = 0,

                    /// [2:2] VPU monitoring signal
                    u0_wave511_o_vpu_idle: u1 = 0,

                    /// [3:3] u0_can_ctrl_can_fd_enable
                    u0_can_ctrl_can_fd_enable: u1 = 0,

                    /// [4:4] u0_can_ctrl_host_ecc_disable
                    u0_can_ctrl_host_ecc_disable: u1 = 0,

                    /// [5:23] u0_can_ctrl_host_if
                    u0_can_ctrl_host_if: u19 = 0,

                    /// [24:28] des_qspi_sclk_dla: clock delay
                    u0_cdns_qspi_scfg_qspi_sclk_dlychain_sel: u5 = 0,

                    /// [29:31]
                    res0: u3 = 0,
                }), @ptrFromInt(0x13030010));

                /// SYS SYSCONSAIF SYSCFG 20
                pub const sys_sysconsaif_syscfg20 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] SRAM/ROM configuration. SLP: sleep enable, high active, default is low.
                    u0_cdns_qspi_scfg_sram_config_slp: u1 = 0,

                    /// [1:1] SRAM/ROM configuration. SD: shutdown enable, high active, default is low.
                    u0_cdns_qspi_scfg_sram_config_sram_config_sd: u1 = 0,

                    /// [2:3] SRAM/ROM configuration. RTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_cdns_qspi_scfg_sram_config_rtsel: u2 = 0,

                    /// [4:5] SRAM/ROM configuration. PTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_cdns_qspi_scfg_sram_config_ptsel: u2 = 0,

                    /// [6:7] SRAM/ROM configuration. TRB: timing setting for debug purpose, default is 2'b01.
                    u0_cdns_qspi_scfg_sram_config_trb: u2 = 0,

                    /// [8:9] SRAM/ROM configuration. WTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_cdns_qspi_scfg_sram_config_wtsel: u2 = 0,

                    /// [10:10] SRAM/ROM configuration. VS: timing setting for debug purpose, default is 1'b1.
                    u0_cdns_qspi_scfg_sram_config_vs: u1 = 0,

                    /// [11:11] SRAM/ROM configuration. VG: timing setting for debug purpose, default is 1'b1.
                    u0_cdns_qspi_scfg_sram_config_vg: u1 = 0,

                    /// [12:12] SRAM/ROM configuration. SLP: sleep enable, high active, default is low.
                    u0_cdns_spdif_scfg_sram_config_slp: u1 = 0,

                    /// [13:13] SRAM/ROM configuration. SD: shutdown enable, high active, default is low.
                    u0_cdns_spdif_scfg_sram_config_sram_config_sd: u1 = 0,

                    /// [14:15] SRAM/ROM configuration. RTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_cdns_spdif_scfg_sram_config_rtsel: u2 = 0,

                    /// [16:17] SRAM/ROM configuration. PTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_cdns_spdif_scfg_sram_config_ptsel: u2 = 0,

                    /// [18:19] SRAM/ROM configuration. TRB: timing setting for debug purpose, default is 2'b01.
                    u0_cdns_spdif_scfg_sram_config_trb: u2 = 0,

                    /// [20:21] SRAM/ROM configuration. WTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_cdns_spdif_scfg_sram_config_wtsel: u2 = 0,

                    /// [22:22] SRAM/ROM configuration. VS: timing setting for debug purpose, default is 1'b1.
                    u0_cdns_spdif_scfg_sram_config_vs: u1 = 0,

                    /// [23:23] SRAM/ROM configuration. VG: timing setting for debug purpose, default is 1'b1.
                    u0_cdns_spdif_scfg_sram_config_vg: u1 = 0,

                    /// [24:24] 1 for transmitter 0 for receiver
                    u0_cdns_spdif_trmodeo: u1 = 0,

                    /// [25:25] I2C interface enable
                    u0_i2c_ic_en: u1 = 0,

                    /// [26:30] Data strobe delay chain select
                    u0_sdio_data_strobe_phase_ctrl: u5 = 0,

                    /// [31:31] AHB bus interface endianness: 1: Big-endian AHB bus interface, 0: Little-endian AHB bus interface
                    u0_sdio_hbig_endian: u1 = 0,
                }), @ptrFromInt(0x13030014));

                /// SYS SYSCONSAIF SYSCFG 24
                pub const sys_sysconsaif_syscfg24 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] AHB master bus interface endianess: 1: Big-endian AHB bus interface, 0: Little-endian AHB bus interface
                    u0_sdio_m_hbig_endian: u1 = 0,

                    /// [1:1] u0_i2srx_3ch_adc_ena
                    u0_i2srx_3ch_adc_ena: u1 = 0,

                    /// [2:2] u0_intmem_rom_sram_scfg_disable_rom
                    u0_intmem_rom_sram_scfg_disable_rom: u1 = 0,

                    /// [3:3] SRAM/ROM configuration. SLP: sleep enable, high active, default is low.
                    u0_intmem_rom_sram_sram_config_slp: u1 = 0,

                    /// [4:4] SRAM/ROM configuration. SD: shutdown enable, high active, default is low.
                    u0_intmem_rom_sram_sram_config_sram_config_sd: u1 = 0,

                    /// [5:6] SRAM/ROM configuration. RTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_intmem_rom_sram_sram_config_rtsel: u2 = 0,

                    /// [7:8] SRAM/ROM configuration. PTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_intmem_rom_sram_sram_config_ptsel: u2 = 0,

                    /// [9:10] SRAM/ROM configuration. TRB: timing setting for debug purpose, default is 2'b01.
                    u0_intmem_rom_sram_sram_config_trb: u2 = 0,

                    /// [11:12] SRAM/ROM configuration. WTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_intmem_rom_sram_sram_config_wtsel: u2 = 0,

                    /// [13:13] SRAM/ROM configuration. VS: timing setting for debug purpose, default is 1'b1.
                    u0_intmem_rom_sram_sram_config_vs: u1 = 0,

                    /// [14:14] SRAM/ROM configuration. VG: timing setting for debug purpose, default is 1'b1.
                    u0_intmem_rom_sram_sram_config_vg: u1 = 0,

                    /// [15:15] u0_jtag_daisy_chain_jtag_en_0
                    u0_jtag_daisy_chain_jtag_en_0: u1 = 0,

                    /// [16:16] u0_jtag_daisy_chain_jtag_en_1
                    u0_jtag_daisy_chain_jtag_en_1: u1 = 0,

                    /// [17:17] u0_pdrstn_split_sw_usbpipe_plugen
                    u0_pdrstn_split_sw_usbpipe_plugen: u1 = 0,

                    /// [18:20] u0_pll_wrap_pll0_cpi_bias
                    u0_pll_wrap_pll0_cpi_bias: u3 = 0,

                    /// [21:23] u0_pll_wrap_pll0_cpp_bias
                    u0_pll_wrap_pll0_cpp_bias: u3 = 0,

                    /// [24:24] u0_pll_wrap_pll0_dacpd
                    u0_pll_wrap_pll0_dacpd: u1 = 0,

                    /// [25:25] u0_pll_wrap_pll0_dsmpd
                    u0_pll_wrap_pll0_dsmpd: u1 = 0,

                    /// [26:31]
                    res0: u6 = 0,
                }), @ptrFromInt(0x13030018));

                /// SYS SYSCONSAIF SYSCFG 28
                pub const sys_sysconsaif_syscfg28 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:11] u0_pll_wrap_pll0_fbdiv
                    u0_pll_wrap_pll0_fbdiv: u12 = 0,

                    /// [12:31]
                    res0: u20 = 0,
                }), @ptrFromInt(0x1303001c));

                /// SYS SYSCONSAIF SYSCFG 32
                pub const sys_sysconsaif_syscfg32 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] u0_pll_wrap_pll0_frac
                    u0_pll_wrap_pll0_frac: u24 = 0,

                    /// [24:25] u0_pll_wrap_pll0_gvco_bias
                    u0_pll_wrap_pll0_gvco_bias: u2 = 0,

                    /// [26:26] u0_pll_wrap_pll0_lock
                    u0_pll_wrap_pll0_lock: u1 = 0,

                    /// [27:27] u0_pll_wrap_pll0_pd
                    u0_pll_wrap_pll0_pd: u1 = 0,

                    /// [28:29] u0_pll_wrap_pll0_postdiv1
                    u0_pll_wrap_pll0_postdiv1: u2 = 0,

                    /// [30:31] u0_pll_wrap_pll0_postdiv2
                    u0_pll_wrap_pll0_postdiv2: u2 = 0,
                }), @ptrFromInt(0x13030020));

                /// SYS SYSCONSAIF SYSCFG 36
                pub const sys_sysconsaif_syscfg36 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] u0_pll_wrap_pll0_prediv
                    u0_pll_wrap_pll0_prediv: u6 = 0,

                    /// [6:6] u0_pll_wrap_pll0_testen
                    u0_pll_wrap_pll0_testen: u1 = 0,

                    /// [7:8] u0_pll_wrap_pll0_testsel
                    u0_pll_wrap_pll0_testsel: u2 = 0,

                    /// [9:11] u0_pll_wrap_pll1_cpi_bias
                    u0_pll_wrap_pll1_cpi_bias: u3 = 0,

                    /// [12:14] u0_pll_wrap_pll1_cpp_bias
                    u0_pll_wrap_pll1_cpp_bias: u3 = 0,

                    /// [15:15] u0_pll_wrap_pll1_dacpd
                    u0_pll_wrap_pll1_dacpd: u1 = 0,

                    /// [16:16] u0_pll_wrap_pll1_dsmpd
                    u0_pll_wrap_pll1_dsmpd: u1 = 0,

                    /// [17:28] u0_pll_wrap_pll1_fbdiv
                    u0_pll_wrap_pll1_fbdiv: u12 = 0,

                    /// [29:31]
                    res0: u3 = 0,
                }), @ptrFromInt(0x13030024));

                /// SYS SYSCONSAIF SYSCFG 40
                pub const sys_sysconsaif_syscfg40 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] u0_pll_wrap_pll1_frac
                    u0_pll_wrap_pll1_frac: u24 = 0,

                    /// [24:25] u0_pll_wrap_pll1_gvco_bias
                    u0_pll_wrap_pll1_gvco_bias: u2 = 0,

                    /// [26:26] u0_pll_wrap_pll1_lock
                    u0_pll_wrap_pll1_lock: u1 = 0,

                    /// [27:27] u0_pll_wrap_pll1_pd
                    u0_pll_wrap_pll1_pd: u1 = 0,

                    /// [28:29] u0_pll_wrap_pll1_postdiv1
                    u0_pll_wrap_pll1_postdiv1: u2 = 0,

                    /// [30:31] u0_pll_wrap_pll1_postdiv2
                    u0_pll_wrap_pll1_postdiv2: u2 = 0,
                }), @ptrFromInt(0x13030028));

                /// SYS SYSCONSAIF SYSCFG 44
                pub const sys_sysconsaif_syscfg44 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] u0_pll_wrap_pll1_prediv
                    u0_pll_wrap_pll1_prediv: u6 = 0,

                    /// [6:6] u0_pll_wrap_pll1_testen
                    u0_pll_wrap_pll1_testen: u1 = 0,

                    /// [7:8] u0_pll_wrap_pll1_testsel
                    u0_pll_wrap_pll1_testsel: u2 = 0,

                    /// [9:11] u0_pll_wrap_pll2_cpi_bias
                    u0_pll_wrap_pll2_cpi_bias: u3 = 0,

                    /// [12:14] u0_pll_wrap_pll2_cpp_bias
                    u0_pll_wrap_pll2_cpp_bias: u3 = 0,

                    /// [15:15] u0_pll_wrap_pll2_dacpd
                    u0_pll_wrap_pll2_dacpd: u1 = 0,

                    /// [16:16] u0_pll_wrap_pll2_dsmpd
                    u0_pll_wrap_pll2_dsmpd: u1 = 0,

                    /// [17:28] u0_pll_wrap_pll2_fbdiv
                    u0_pll_wrap_pll2_fbdiv: u12 = 0,

                    /// [29:31]
                    res0: u3 = 0,
                }), @ptrFromInt(0x1303002c));

                /// SYS SYSCONSAIF SYSCFG 48
                pub const sys_sysconsaif_syscfg48 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] u0_pll_wrap_pll2_frac
                    u0_pll_wrap_pll2_frac: u24 = 0,

                    /// [24:25] u0_pll_wrap_pll2_gvco_bias
                    u0_pll_wrap_pll2_gvco_bias: u2 = 0,

                    /// [26:26] u0_pll_wrap_pll2_lock
                    u0_pll_wrap_pll2_lock: u1 = 0,

                    /// [27:27] u0_pll_wrap_pll2_pd
                    u0_pll_wrap_pll2_pd: u1 = 0,

                    /// [28:29] u0_pll_wrap_pll2_postdiv1
                    u0_pll_wrap_pll2_postdiv1: u2 = 0,

                    /// [30:31] u0_pll_wrap_pll2_postdiv2
                    u0_pll_wrap_pll2_postdiv2: u2 = 0,
                }), @ptrFromInt(0x13030030));

                /// SYS SYSCONSAIF SYSCFG 52
                pub const sys_sysconsaif_syscfg52 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] u0_pll_wrap_pll2_prediv
                    u0_pll_wrap_pll2_prediv: u6 = 0,

                    /// [6:6] u0_pll_wrap_pll2_testen
                    u0_pll_wrap_pll2_testen: u1 = 0,

                    /// [7:8] u0_pll_wrap_pll2_testsel
                    u0_pll_wrap_pll2_testsel: u2 = 0,

                    /// [9:9] PLL test mode, only used for PLL BIST through jtag2apb
                    u0_pll_wrap_syscfg_test_pll_mode: u1 = 0,

                    /// [10:17] u0_saif_audio_sdin_mux_scfg_i2sdin_sel
                    u0_saif_audio_sdin_mux_scfg_i2sdin_sel: u8 = 0,

                    /// [18:18] u0_sft7110_noc_bus_clock_gating_off
                    u0_sft7110_noc_bus_clock_gating_off: u1 = 0,

                    /// [19:19] u0_sft7110_noc_bus_oic_evemon_0_start
                    u0_sft7110_noc_bus_oic_evemon_0_start: u1 = 0,

                    /// [20:20] u0_sft7110_noc_bus_oic_evemon_0_trigger
                    u0_sft7110_noc_bus_oic_evemon_0_trigger: u1 = 0,

                    /// [21:21] u0_sft7110_noc_bus_oic_evemon_1_start
                    u0_sft7110_noc_bus_oic_evemon_1_start: u1 = 0,

                    /// [22:22] u0_sft7110_noc_bus_oic_evemon_1_trigger
                    u0_sft7110_noc_bus_oic_evemon_1_trigger: u1 = 0,

                    /// [23:23] u0_sft7110_noc_bus_oic_evemon_2_start
                    u0_sft7110_noc_bus_oic_evemon_2_start: u1 = 0,

                    /// [24:24] u0_sft7110_noc_bus_oic_evemon_2_trigger
                    u0_sft7110_noc_bus_oic_evemon_2_trigger: u1 = 0,

                    /// [25:25] u0_sft7110_noc_bus_oic_evemon_3_start
                    u0_sft7110_noc_bus_oic_evemon_3_start: u1 = 0,

                    /// [26:26] u0_sft7110_noc_bus_oic_evemon_3_trigger
                    u0_sft7110_noc_bus_oic_evemon_3_trigger: u1 = 0,

                    /// [27:27] u0_sft7110_noc_bus_oic_evemon_4_start
                    u0_sft7110_noc_bus_oic_evemon_4_start: u1 = 0,

                    /// [28:28] u0_sft7110_noc_bus_oic_evemon_4_trigger
                    u0_sft7110_noc_bus_oic_evemon_4_trigger: u1 = 0,

                    /// [29:29] u0_sft7110_noc_bus_oic_evemon_5_start
                    u0_sft7110_noc_bus_oic_evemon_5_start: u1 = 0,

                    /// [30:30] u0_sft7110_noc_bus_oic_evemon_5_trigger
                    u0_sft7110_noc_bus_oic_evemon_5_trigger: u1 = 0,

                    /// [31:31] u0_sft7110_noc_bus_oic_evemon_6_start
                    u0_sft7110_noc_bus_oic_evemon_6_start: u1 = 0,
                }), @ptrFromInt(0x13030034));

                /// SYS SYSCONSAIF SYSCFG 56
                pub const sys_sysconsaif_syscfg56 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_sft7110_noc_bus_oic_evemon_6_trigger
                    u0_sft7110_noc_bus_oic_evemon_6_trigger: u1 = 0,

                    /// [1:4]
                    res0: u4 = 0,

                    /// [5:5] u0_sft7110_noc_bus_oic_ignore_modifiable_0
                    u0_sft7110_noc_bus_oic_ignore_modifiable_0: u1 = 0,

                    /// [6:6] u0_sft7110_noc_bus_oic_ignore_modifiable_1
                    u0_sft7110_noc_bus_oic_ignore_modifiable_1: u1 = 0,

                    /// [7:7] u0_sft7110_noc_bus_oic_ignore_modifiable_2
                    u0_sft7110_noc_bus_oic_ignore_modifiable_2: u1 = 0,

                    /// [8:8] u0_sft7110_noc_bus_oic_ignore_modifiable_3
                    u0_sft7110_noc_bus_oic_ignore_modifiable_3: u1 = 0,

                    /// [9:9] u0_sft7110_noc_bus_oic_ignore_modifiable_4
                    u0_sft7110_noc_bus_oic_ignore_modifiable_4: u1 = 0,

                    /// [10:14]
                    res1: u5 = 0,

                    /// [15:15] u0_sft7110_noc_bus_oic_evemon_7_start
                    u0_sft7110_noc_bus_oic_evemon_7_start: u1 = 0,

                    /// [16:16] u0_sft7110_noc_bus_oic_evemon_7_trigger
                    u0_sft7110_noc_bus_oic_evemon_7_trigger: u1 = 0,

                    /// [17:17] u0_sft7110_noc_bus_oic_evemon_8_start
                    u0_sft7110_noc_bus_oic_evemon_8_start: u1 = 0,

                    /// [18:18] u0_sft7110_noc_bus_oic_evemon_8_trigger
                    u0_sft7110_noc_bus_oic_evemon_8_trigger: u1 = 0,

                    /// [19:31]
                    res2: u13 = 0,
                }), @ptrFromInt(0x13030038));

                /// SYS SYSCONSAIF SYSCFG 60
                pub const sys_sysconsaif_syscfg60 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_0
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_0: u32 = 0,
                }), @ptrFromInt(0x1303003c));

                /// SYS SYSCONSAIF SYSCFG 64
                pub const sys_sysconsaif_syscfg64 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_1
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_1: u32 = 0,
                }), @ptrFromInt(0x13030040));

                /// SYS SYSCONSAIF SYSCFG 68
                pub const sys_sysconsaif_syscfg68 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_2
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_2: u32 = 0,
                }), @ptrFromInt(0x13030044));

                /// SYS SYSCONSAIF SYSCFG 72
                pub const sys_sysconsaif_syscfg72 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_3
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_3: u32 = 0,
                }), @ptrFromInt(0x13030048));

                /// SYS SYSCONSAIF SYSCFG 76
                pub const sys_sysconsaif_syscfg76 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_4
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_4: u32 = 0,
                }), @ptrFromInt(0x1303004c));

                /// SYS SYSCONSAIF SYSCFG 80
                pub const sys_sysconsaif_syscfg80 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_5
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_5: u32 = 0,
                }), @ptrFromInt(0x13030050));

                /// SYS SYSCONSAIF SYSCFG 84
                pub const sys_sysconsaif_syscfg84 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_6
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_6: u32 = 0,
                }), @ptrFromInt(0x13030054));

                /// SYS SYSCONSAIF SYSCFG 88
                pub const sys_sysconsaif_syscfg88 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_7
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_7: u32 = 0,
                }), @ptrFromInt(0x13030058));

                /// SYS SYSCONSAIF SYSCFG 92
                pub const sys_sysconsaif_syscfg92 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_8
                    u0_sft7110_noc_bus_oic_qch_clock_stop_threshold_8: u32 = 0,
                }), @ptrFromInt(0x1303005c));

                /// SYS SYSCONSAIF SYSCFG 96
                pub const sys_sysconsaif_syscfg96 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_tdm16slot_clkpol
                    u0_tdm16slot_clkpol: u1 = 0,

                    /// [1:1] u0_tdm16slot_pcm_ms
                    u0_tdm16slot_pcm_ms: u1 = 0,

                    /// [2:6] u0_trace_mtx_scfg_c0_in0_ctl
                    u0_trace_mtx_scfg_c0_in0_ctl: u5 = 0,

                    /// [7:11] u0_trace_mtx_scfg_c0_in1_ctl
                    u0_trace_mtx_scfg_c0_in1_ctl: u5 = 0,

                    /// [12:16] u0_trace_mtx_scfg_c1_in0_ctl
                    u0_trace_mtx_scfg_c1_in0_ctl: u5 = 0,

                    /// [17:21] u0_trace_mtx_scfg_c1_in1_ctl
                    u0_trace_mtx_scfg_c1_in1_ctl: u5 = 0,

                    /// [22:26] u0_trace_mtx_scfg_c2_in0_ctl
                    u0_trace_mtx_scfg_c2_in0_ctl: u5 = 0,

                    /// [27:31] u0_trace_mtx_scfg_c2_in1_ctl
                    u0_trace_mtx_scfg_c2_in1_ctl: u5 = 0,
                }), @ptrFromInt(0x13030060));

                /// SYS SYSCONSAIF SYSCFG 100
                pub const sys_sysconsaif_syscfg100 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:4] u0_trace_mtx_scfg_c3_in0_ctl
                    u0_trace_mtx_scfg_c3_in0_ctl: u5 = 0,

                    /// [5:9] u0_trace_mtx_scfg_c3_in1_ctl
                    u0_trace_mtx_scfg_c3_in1_ctl: u5 = 0,

                    /// [10:14] u0_trace_mtx_scfg_c4_in0_ctl
                    u0_trace_mtx_scfg_c4_in0_ctl: u5 = 0,

                    /// [15:19] u0_trace_mtx_scfg_c4_in1_ctl
                    u0_trace_mtx_scfg_c4_in1_ctl: u5 = 0,

                    /// [20:20] u0_u7mc_sft7110_cease_from_tile_0
                    u0_u7mc_sft7110_cease_from_tile_0: u1 = 0,

                    /// [21:21] u0_u7mc_sft7110_cease_from_tile_1
                    u0_u7mc_sft7110_cease_from_tile_1: u1 = 0,

                    /// [22:22] u0_u7mc_sft7110_cease_from_tile_2
                    u0_u7mc_sft7110_cease_from_tile_2: u1 = 0,

                    /// [23:23] u0_u7mc_sft7110_cease_from_tile_3
                    u0_u7mc_sft7110_cease_from_tile_3: u1 = 0,

                    /// [24:24] u0_u7mc_sft7110_cease_from_tile_4
                    u0_u7mc_sft7110_cease_from_tile_4: u1 = 0,

                    /// [25:25] u0_u7mc_sft7110_halt_from_tile_0
                    u0_u7mc_sft7110_halt_from_tile_0: u1 = 0,

                    /// [26:26] u0_u7mc_sft7110_halt_from_tile_1
                    u0_u7mc_sft7110_halt_from_tile_1: u1 = 0,

                    /// [27:27] u0_u7mc_sft7110_halt_from_tile_2
                    u0_u7mc_sft7110_halt_from_tile_2: u1 = 0,

                    /// [28:28] u0_u7mc_sft7110_halt_from_tile_3
                    u0_u7mc_sft7110_halt_from_tile_3: u1 = 0,

                    /// [29:29] u0_u7mc_sft7110_halt_from_tile_4
                    u0_u7mc_sft7110_halt_from_tile_4: u1 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x13030064));

                /// SYS SYSCONSAIF SYSCFG 104
                pub const sys_sysconsaif_syscfg104 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_u7mc_sft7110_reset_vector_1_31_0
                    u0_u7mc_sft7110_reset_vector_1_31_0: u32 = 0,
                }), @ptrFromInt(0x13030068));

                /// SYS SYSCONSAIF SYSCFG 108
                pub const sys_sysconsaif_syscfg108 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] u0_u7mc_sft7110_reset_vector_1_35_32
                    u0_u7mc_sft7110_reset_vector_1_35_32: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x1303006c));

                /// SYS SYSCONSAIF SYSCFG 112
                pub const sys_sysconsaif_syscfg112 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_u7mc_sft7110_reset_vector_2_31_0
                    u0_u7mc_sft7110_reset_vector_2_31_0: u32 = 0,
                }), @ptrFromInt(0x13030070));

                /// SYS SYSCONSAIF SYSCFG 116
                pub const sys_sysconsaif_syscfg116 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] u0_u7mc_sft7110_reset_vector_2_35_32
                    u0_u7mc_sft7110_reset_vector_2_35_32: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x13030074));

                /// SYS SYSCONSAIF SYSCFG 120
                pub const sys_sysconsaif_syscfg120 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_u7mc_sft7110_reset_vector_3_31_0
                    u0_u7mc_sft7110_reset_vector_3_31_0: u32 = 0,
                }), @ptrFromInt(0x13030078));

                /// SYS SYSCONSAIF SYSCFG 124
                pub const sys_sysconsaif_syscfg124 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] u0_u7mc_sft7110_reset_vector_3_35_32
                    u0_u7mc_sft7110_reset_vector_3_35_32: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x1303007c));

                /// SYS SYSCONSAIF SYSCFG 128
                pub const sys_sysconsaif_syscfg128 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_u7mc_sft7110_reset_vector_4_31_0
                    u0_u7mc_sft7110_reset_vector_4_31_0: u32 = 0,
                }), @ptrFromInt(0x13030080));

                /// SYS SYSCONSAIF SYSCFG 136
                pub const sys_sysconsaif_syscfg136 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] SRAM/ROM configuration. SLP: sleep enable, high active, default is low.
                    u0_venc_intsram_sram_config_slp: u1 = 0,

                    /// [1:1] SRAM/ROM configuration. SD: shutdown enable, high active, default is low.
                    u0_venc_intsram_sram_config_sram_config_sd: u1 = 0,

                    /// [2:3] SRAM/ROM configuration. RTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_venc_intsram_sram_config_rtsel: u2 = 0,

                    /// [4:5] SRAM/ROM configuration. PTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_venc_intsram_sram_config_ptsel: u2 = 0,

                    /// [6:7] SRAM/ROM configuration. TRB: timing setting for debug purpose, default is 2'b01.
                    u0_venc_intsram_sram_config_trb: u2 = 0,

                    /// [8:9] SRAM/ROM configuration. WTSEL: timing setting for debug purpose, default is 2'b01.
                    u0_venc_intsram_sram_config_wtsel: u2 = 0,

                    /// [10:10] SRAM/ROM configuration. VS: timing setting for debug purpose, default is 1'b1.
                    u0_venc_intsram_sram_config_vs: u1 = 0,

                    /// [11:11] SRAM/ROM configuration. VG: timing setting for debug purpose, default is 1'b1.
                    u0_venc_intsram_sram_config_vg: u1 = 0,

                    /// [12:14] This signal indicates which buffer is currently active so that the VPU can correctly use the ipu_end_of_row signal for row counter.
                    u0_wave420l_i_ipu_current_buffer: u3 = 0,

                    /// [15:15] This signal is flipped every time when the IPU completes writing a row.
                    u0_wave420l_i_ipu_end_of_row: u1 = 0,

                    /// [16:16] This signal is flipped every time when the IPU completes writing a new frame.
                    u0_wave420l_i_ipu_new_frame: u1 = 0,

                    /// [17:17] VPU monitoring signal. This signal gives out an opposite value of VPU_BUSY register.
                    u0_wave420l_o_vpu_idle: u1 = 0,

                    /// [18:18] u1_can_ctrl_can_fd_enable
                    u1_can_ctrl_can_fd_enable: u1 = 0,

                    /// [19:19] u1_can_ctrl_host_ecc_disable
                    u1_can_ctrl_host_ecc_disable: u1 = 0,

                    /// [20:31]
                    res0: u12 = 0,
                }), @ptrFromInt(0x13030088));

                /// SYS SYSCONSAIF SYSCFG 140
                pub const sys_sysconsaif_syscfg140 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:18] u1_can_ctrl_host_if
                    u1_can_ctrl_host_if: u19 = 0,

                    /// [19:19] SRAM/ROM configuration. SLP: sleep enable, high active, default is low.
                    u1_gmac5_axi64_scfg_ram_cfg_slp: u1 = 0,

                    /// [20:20] SRAM/ROM configuration. SD: shutdown enable, high active, default is low.
                    u1_gmac5_axi64_scfg_ram_cfg_sram_config_sd: u1 = 0,

                    /// [21:22] SRAM/ROM configuration. RTSEL: timing setting for debug purpose, default is 2'b01.
                    u1_gmac5_axi64_scfg_ram_cfg_rtsel: u2 = 0,

                    /// [23:24] SRAM/ROM configuration. PTSEL: timing setting for debug purpose, default is 2'b01.
                    u1_gmac5_axi64_scfg_ram_cfg_ptsel: u2 = 0,

                    /// [25:26] SRAM/ROM configuration. TRB: timing setting for debug purpose, default is 2'b01.
                    u1_gmac5_axi64_scfg_ram_cfg_trb: u2 = 0,

                    /// [27:28] SRAM/ROM configuration. WTSEL: timing setting for debug purpose, default is 2'b01.
                    u1_gmac5_axi64_scfg_ram_cfg_wtsel: u2 = 0,

                    /// [29:29] SRAM/ROM configuration. VS: timing setting for debug purpose, default is 1'b1.
                    u1_gmac5_axi64_scfg_ram_cfg_vs: u1 = 0,

                    /// [30:30] SRAM/ROM configuration. VG: timing setting for debug purpose, default is 1'b1.
                    u1_gmac5_axi64_scfg_ram_cfg_vg: u1 = 0,

                    /// [31:31]
                    res0: u1 = 0,
                }), @ptrFromInt(0x1303008c));

                /// SYS SYSCONSAIF SYSCFG 144
                pub const sys_sysconsaif_syscfg144 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] u1_gmac5_axi64_mac_speed_0
                    u1_gmac5_axi64_mac_speed_0: u2 = 0,

                    /// [2:4] Active PHY Selected | When you have multiple GMAC PHY interfaces in your configuration, this field indicates the sampled value of the PHY selector during reset de-assertion. | Values: 0x0:(GMII or MII), 0x01:RGMII, 0x2:SGMII, 0x3:TBI, 0x4:RMII, 0x5:RTBI, 0x6:SMII, 0x7:REVMII
                    u1_gmac5_axi64_phy_intf_sel_i: u3 = 0,

                    /// [5:31]
                    res0: u27 = 0,
                }), @ptrFromInt(0x13030090));

                /// SYS SYSCONSAIF SYSCFG 148
                pub const sys_sysconsaif_syscfg148 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_gmac5_axi64_ptp_timestamp_o_31_0
                    u1_gmac5_axi64_ptp_timestamp_o_31_0: u32 = 0,
                }), @ptrFromInt(0x13030094));

                /// SYS SYSCONSAIF SYSCFG 152
                pub const sys_sysconsaif_syscfg152 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u1_gmac5_axi64_ptp_timestamp_o_63_32
                    u1_gmac5_axi64_ptp_timestamp_o_63_32: u32 = 0,
                }), @ptrFromInt(0x13030098));

                /// SYS SYSCONSAIF SYSCFG 156
                pub const sys_sysconsaif_syscfg156 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] I2C interface enable.
                    u1_i2c_ic_en: u1 = 0,

                    /// [1:5] Data strobe delay chain select.
                    u1_sdio_data_strobe_phase_ctrl: u5 = 0,

                    /// [6:6] AHB bus interface endianness: 1: Big-endian AHB bus interface, 0: Little-endian AHB bus interface
                    u1_sdio_hbig_endian: u1 = 0,

                    /// [7:7] AHB bus interface endianness: 1: Big-endian AHB bus interface, 0: Little-endian AHB bus interface
                    u1_sdio_m_hbig_endian: u1 = 0,

                    /// [8:8] u1_reset_ctrl_clr_reset_status
                    u1_reset_ctrl_clr_reset_status: u1 = 0,

                    /// [9:9] u1_reset_ctrl_pll_timecnt_finish
                    u1_reset_ctrl_pll_timecnt_finish: u1 = 0,

                    /// [10:10] u1_reset_ctrl_rstn_sw
                    u1_reset_ctrl_rstn_sw: u1 = 0,

                    /// [11:14] u1_reset_ctrl_sys_reset_status
                    u1_reset_ctrl_sys_reset_status: u4 = 0,

                    /// [15:15] I2C interface enable.
                    u2_i2c_ic_en: u1 = 0,

                    /// [16:16] I2C interface enable.
                    u3_i2c_ic_en: u1 = 0,

                    /// [17:17] I2C interface enable.
                    u4_i2c_ic_en: u1 = 0,

                    /// [18:18] I2C interface enable.
                    u5_i2c_ic_en: u1 = 0,

                    /// [19:19] I2C interface enable.
                    u6_i2c_ic_en: u1 = 0,

                    /// [20:31]
                    res0: u12 = 0,
                }), @ptrFromInt(0x1303009c));
            };

            /// From syscon, peripheral generator
            pub const syscon_1 = struct {};

            /// From simple-mfd, peripheral generator
            pub const simple_mfd_0 = struct {};

            /// From starfive,jh7110-sys-pinctrl, peripheral generator
            pub const starfive_jh7110_sys_pinctrl_0 = struct {
                /// SYS IOMUX CFG SAIF SYSCFG FMUX 0
                pub const sys_iomux_cfgsaif_syscfg_fmux0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO0. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo0_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO1. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo1_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO2. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo2_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO3. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo3_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040000));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 1
                pub const sys_iomux_cfgsaif_syscfg_fmux1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO4. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo4_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO5. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo5_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO6. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo6_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO7. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo7_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040004));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 2
                pub const sys_iomux_cfgsaif_syscfg_fmux2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO8. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo8_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO9. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo9_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO10. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo10_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO11. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo11_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040008));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 3
                pub const sys_iomux_cfgsaif_syscfg_fmux3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO12. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo12_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO13. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo13_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO14. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo14_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO15. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo15_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304000c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 4
                pub const sys_iomux_cfgsaif_syscfg_fmux4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO16. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo16_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO17. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo17_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO18. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo18_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO19. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo19_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040010));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 5
                pub const sys_iomux_cfgsaif_syscfg_fmux5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO20. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo20_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO21. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo21_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO22. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo22_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO23. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo23_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040014));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 6
                pub const sys_iomux_cfgsaif_syscfg_fmux6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO24. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo24_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO25. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo25_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO26. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo26_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO27. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo27_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040018));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 7
                pub const sys_iomux_cfgsaif_syscfg_fmux7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO28. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo28_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO29. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo29_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO30. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo30_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO31. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo31_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304001c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 8
                pub const sys_iomux_cfgsaif_syscfg_fmux8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO32. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo32_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO33. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo33_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO34. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo34_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO35. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo35_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040020));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 9
                pub const sys_iomux_cfgsaif_syscfg_fmux9 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO36. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo36_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO37. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo37_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO38. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo38_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO39. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo39_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040024));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 10
                pub const sys_iomux_cfgsaif_syscfg_fmux10 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO40. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo40_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO41. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo41_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO42. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo42_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO43. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo43_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040028));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 11
                pub const sys_iomux_cfgsaif_syscfg_fmux11 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO44. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo44_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO45. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo45_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO46. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo46_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO47. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo47_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304002c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 12
                pub const sys_iomux_cfgsaif_syscfg_fmux12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO48. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo48_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO49. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo49_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO50. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo50_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO51. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo51_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040030));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 13
                pub const sys_iomux_cfgsaif_syscfg_fmux13 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO52. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo52_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO53. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo53_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO54. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo54_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO55. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo55_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040034));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 14
                pub const sys_iomux_cfgsaif_syscfg_fmux14 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO56. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo56_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO57. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo57_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO58. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo58_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO59. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo59_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040038));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 15
                pub const sys_iomux_cfgsaif_syscfg_fmux15 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO60. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo60_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO61. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo61_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO62. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo62_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO63. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo63_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304003c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 16
                pub const sys_iomux_cfgsaif_syscfg_fmux16 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO64. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo64_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO65. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo65_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO66. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo66_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO67. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo67_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040040));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 17
                pub const sys_iomux_cfgsaif_syscfg_fmux17 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO68. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo68_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO69. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo69_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO70. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo70_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO71. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo71_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040044));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 18
                pub const sys_iomux_cfgsaif_syscfg_fmux18 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO72. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo72_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO73. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo73_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO74. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo74_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO75. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo75_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040048));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 19
                pub const sys_iomux_cfgsaif_syscfg_fmux19 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO76. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo76_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO77. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo77_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO78. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo78_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO79. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo79_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304004c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 20
                pub const sys_iomux_cfgsaif_syscfg_fmux20 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO80. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo80_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO81. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo81_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO82. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo82_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO83. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo83_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040050));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 21
                pub const sys_iomux_cfgsaif_syscfg_fmux21 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO84. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo84_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO85. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo85_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO86. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo86_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO87. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo87_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040054));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 22
                pub const sys_iomux_cfgsaif_syscfg_fmux22 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO88. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo88_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO89. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo89_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO90. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo90_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO91. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo91_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040058));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 23
                pub const sys_iomux_cfgsaif_syscfg_fmux23 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO92. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo92_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO93. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo93_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO94. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo94_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO95. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo95_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304005c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 24
                pub const sys_iomux_cfgsaif_syscfg_fmux24 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO96. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo96_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO97. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo97_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO98. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo98_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO99. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo99_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040060));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 25
                pub const sys_iomux_cfgsaif_syscfg_fmux25 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO100. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo100_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO101. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo101_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO102. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo102_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO103. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo103_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040064));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 26
                pub const sys_iomux_cfgsaif_syscfg_fmux26 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO104. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo104_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO105. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo105_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO106. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo106_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO107. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo107_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040068));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 27
                pub const sys_iomux_cfgsaif_syscfg_fmux27 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO108. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo108_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO109. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo109_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO110. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo110_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO111. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo111_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304006c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 28
                pub const sys_iomux_cfgsaif_syscfg_fmux28 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO112. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo112_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO113. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo113_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO114. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo114_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO115. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo115_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040070));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 29
                pub const sys_iomux_cfgsaif_syscfg_fmux29 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO116. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo116_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO117. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo117_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO118. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo118_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO119. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo119_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040074));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 30
                pub const sys_iomux_cfgsaif_syscfg_fmux30 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO120. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo120_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO121. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo121_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO122. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo122_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO123. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo123_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040078));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 31
                pub const sys_iomux_cfgsaif_syscfg_fmux31 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO124. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo124_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO125. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo125_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO126. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo126_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO127. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo127_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304007c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 32
                pub const sys_iomux_cfgsaif_syscfg_fmux32 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO128. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo128_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO129. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo129_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO130. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo130_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO131. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo131_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040080));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 33
                pub const sys_iomux_cfgsaif_syscfg_fmux33 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO132. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo132_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO133. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo133_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO134. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo134_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO135. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo135_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040084));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 34
                pub const sys_iomux_cfgsaif_syscfg_fmux34 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO136. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo136_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO137. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo137_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO138. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo138_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO139. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo139_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040088));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 35
                pub const sys_iomux_cfgsaif_syscfg_fmux35 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO140. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo140_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO141. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo141_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO142. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo142_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO143. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo143_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304008c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 36
                pub const sys_iomux_cfgsaif_syscfg_fmux36 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO144. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo144_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO145. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo145_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO146. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo146_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO147. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo147_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040090));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 37
                pub const sys_iomux_cfgsaif_syscfg_fmux37 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO148. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo148_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO149. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo149_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO150. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo150_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO151. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo151_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040094));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 38
                pub const sys_iomux_cfgsaif_syscfg_fmux38 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO152. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo152_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO153. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo153_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO154. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo154_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO155. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo155_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x13040098));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 39
                pub const sys_iomux_cfgsaif_syscfg_fmux39 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO156. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo156_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO157. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo157_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO158. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo158_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO159. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo159_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x1304009c));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 40
                pub const sys_iomux_cfgsaif_syscfg_fmux40 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO160. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo160_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO161. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo161_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO162. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo162_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO163. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo163_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400a0));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 41
                pub const sys_iomux_cfgsaif_syscfg_fmux41 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO164. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo164_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO165. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo165_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO166. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo166_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO167. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo167_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400a4));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 42
                pub const sys_iomux_cfgsaif_syscfg_fmux42 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO168. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo168_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO169. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo169_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO170. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo170_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO171. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo171_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400a8));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 43
                pub const sys_iomux_cfgsaif_syscfg_fmux43 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO172. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo172_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO173. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo173_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO174. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo174_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO175. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo175_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400ac));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 44
                pub const sys_iomux_cfgsaif_syscfg_fmux44 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO176. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo176_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO177. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo177_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO178. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo178_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO179. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo179_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400b0));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 45
                pub const sys_iomux_cfgsaif_syscfg_fmux45 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO180. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo180_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO181. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo181_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO182. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo182_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO183. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo183_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400b4));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 46
                pub const sys_iomux_cfgsaif_syscfg_fmux46 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO184. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo184_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO185. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo185_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO186. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo186_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO187. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo187_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400b8));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 47
                pub const sys_iomux_cfgsaif_syscfg_fmux47 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO188. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo188_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO189. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo189_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO190. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo190_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO191. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo191_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400bc));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 48
                pub const sys_iomux_cfgsaif_syscfg_fmux48 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO192. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo192_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO193. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo193_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO194. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo194_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO195. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo195_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400c0));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 49
                pub const sys_iomux_cfgsaif_syscfg_fmux49 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO196. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo196_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO197. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo197_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO198. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo198_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO199. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo199_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400c4));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 50
                pub const sys_iomux_cfgsaif_syscfg_fmux50 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO200. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo200_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO201. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo201_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO202. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo202_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO203. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo203_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400c8));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 51
                pub const sys_iomux_cfgsaif_syscfg_fmux51 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO204. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo204_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO205. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo205_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO206. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo206_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO207. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo207_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400cc));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 52
                pub const sys_iomux_cfgsaif_syscfg_fmux52 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO208. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo208_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO209. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo209_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO210. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo210_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO211. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo211_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400d0));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 53
                pub const sys_iomux_cfgsaif_syscfg_fmux53 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO212. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo212_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO213. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo213_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO214. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo214_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO215. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo215_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400d4));

                /// SYS IOMUX CFG SAIF SYSCFG FMUX 54
                pub const sys_iomux_cfgsaif_syscfg_fmux54 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:5] The selected OEN signal for GPIO216. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo216_doen_cfg: u6 = 0,

                    /// [6:7]
                    res0: u2 = 0,

                    /// [8:13] The selected OEN signal for GPIO217. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo217_doen_cfg: u6 = 0,

                    /// [14:15]
                    res1: u2 = 0,

                    /// [16:21] The selected OEN signal for GPIO218. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo218_doen_cfg: u6 = 0,

                    /// [22:23]
                    res2: u2 = 0,

                    /// [24:29] The selected OEN signal for GPIO219. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-49. See Table 2-41: GPIO OEN List for SYS_IOMUX (on page 97) for more information.
                    sys_iomux_gpo219_doen_cfg: u6 = 0,

                    /// [30:31]
                    res3: u2 = 0,
                }), @ptrFromInt(0x130400d8));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 55
                pub const sys_iomux_cfgsaif_syscfg_ioirq55 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Enable GPIO IRQ function
                    sys_gpioen_0_reg: u1 = 0,

                    /// [1:31]
                    res0: u31 = 0,
                }), @ptrFromInt(0x130400dc));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 56
                pub const sys_iomux_cfgsaif_syscfg_ioirq56 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Edge trigger, 0: Level trigger
                    sys_gpiois_0_reg: u32 = 0,
                }), @ptrFromInt(0x130400e0));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 57
                pub const sys_iomux_cfgsaif_syscfg_ioirq57 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Edge trigger, 0: Level trigger
                    sys_gpiois_1_reg: u32 = 0,
                }), @ptrFromInt(0x130400e4));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 58
                pub const sys_iomux_cfgsaif_syscfg_ioirq58 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Do not clear the register, 0: Clear the register
                    sys_gpioic_0_reg: u32 = 0,
                }), @ptrFromInt(0x130400e8));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 59
                pub const sys_iomux_cfgsaif_syscfg_ioirq59 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Do not clear the register, 0: Clear the register
                    sys_gpioic_1_reg: u32 = 0,
                }), @ptrFromInt(0x130400ec));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 60
                pub const sys_iomux_cfgsaif_syscfg_ioirq60 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Trigger on both edges, 0: Trigger on a single edge
                    sys_gpioibe_0_reg: u32 = 0,
                }), @ptrFromInt(0x130400f0));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 61
                pub const sys_iomux_cfgsaif_syscfg_ioirq61 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Trigger on both edges, 0: Trigger on a single edge
                    sys_gpioibe_1_reg: u32 = 0,
                }), @ptrFromInt(0x130400f4));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 62
                pub const sys_iomux_cfgsaif_syscfg_ioirq62 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Positive/Low, 0: Negative/High
                    sys_gpioiev_0_reg: u32 = 0,
                }), @ptrFromInt(0x130400f8));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 63
                pub const sys_iomux_cfgsaif_syscfg_ioirq63 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Positive/Low, 0: Negative/High
                    sys_gpioiev_1_reg: u32 = 0,
                }), @ptrFromInt(0x130400fc));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 64
                pub const sys_iomux_cfgsaif_syscfg_ioirq64 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Unmask, 0: Mask
                    sys_gpioie_0_reg: u32 = 0,
                }), @ptrFromInt(0x13040100));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 65
                pub const sys_iomux_cfgsaif_syscfg_ioirq65 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] 1: Unmask, 0: Mask
                    sys_gpioie_1_reg: u32 = 0,
                }), @ptrFromInt(0x13040104));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 66
                pub const sys_iomux_cfgsaif_syscfg_ioirq66 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] Status of the edge trigger. The register can be cleared by writing gpio ic
                    sys_gpioris_0_reg: u32 = 0,
                }), @ptrFromInt(0x13040108));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 67
                pub const sys_iomux_cfgsaif_syscfg_ioirq67 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] Status of the edge trigger. The register can be cleared by writing gpio ic
                    sys_gpioris_1_reg: u32 = 0,
                }), @ptrFromInt(0x1304010c));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 68
                pub const sys_iomux_cfgsaif_syscfg_ioirq68 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] The masked GPIO IRQ status
                    sys_gpiomis_0_reg: u32 = 0,
                }), @ptrFromInt(0x13040110));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 69
                pub const sys_iomux_cfgsaif_syscfg_ioirq69 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] The masked GPIO IRQ status
                    sys_gpiomis_1_reg: u32 = 0,
                }), @ptrFromInt(0x13040114));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 70
                pub const sys_iomux_cfgsaif_syscfg_ioirq70 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] Status of the gpio_in after synchronization
                    sys_gpio_in_sync2_0_reg: u32 = 0,
                }), @ptrFromInt(0x13040118));

                /// SYS IOMUX CFG SAIF SYSCFG IOIRQ 71
                pub const sys_iomux_cfgsaif_syscfg_ioirq71 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] Status of the gpio_in after synchronization
                    sys_gpio_in_sync2_1_reg: u32 = 0,
                }), @ptrFromInt(0x1304011c));

                /// SYS IOMUX CFG SAIF SYSCFG 288
                pub const sys_iomux_cfgsaif_syscfg288 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio0_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio0_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio0_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio0_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio0_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio0_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio0_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040120));

                /// SYS IOMUX CFG SAIF SYSCFG 292
                pub const sys_iomux_cfgsaif_syscfg292 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio1_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio1_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio1_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio1_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio1_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio1_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio1_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040124));

                /// SYS IOMUX CFG SAIF SYSCFG 296
                pub const sys_iomux_cfgsaif_syscfg296 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio2_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio2_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio2_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio2_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio2_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio2_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio2_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040128));

                /// SYS IOMUX CFG SAIF SYSCFG 300
                pub const sys_iomux_cfgsaif_syscfg300 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio3_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio3_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio3_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio3_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio3_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio3_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio3_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304012c));

                /// SYS IOMUX CFG SAIF SYSCFG 304
                pub const sys_iomux_cfgsaif_syscfg304 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio4_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio4_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio4_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio4_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio4_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio4_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio4_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040130));

                /// SYS IOMUX CFG SAIF SYSCFG 308
                pub const sys_iomux_cfgsaif_syscfg308 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio5_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio5_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio5_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio5_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio5_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio5_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio5_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040134));

                /// SYS IOMUX CFG SAIF SYSCFG 312
                pub const sys_iomux_cfgsaif_syscfg312 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio6_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio6_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio6_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio6_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio6_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio6_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio6_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040138));

                /// SYS IOMUX CFG SAIF SYSCFG 316
                pub const sys_iomux_cfgsaif_syscfg316 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio7_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio7_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio7_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio7_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio7_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio7_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio7_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304013c));

                /// SYS IOMUX CFG SAIF SYSCFG 320
                pub const sys_iomux_cfgsaif_syscfg320 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio8_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio8_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio8_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio8_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio8_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio8_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio8_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040140));

                /// SYS IOMUX CFG SAIF SYSCFG 324
                pub const sys_iomux_cfgsaif_syscfg324 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio9_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio9_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio9_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio9_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio9_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio9_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio9_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040144));

                /// SYS IOMUX CFG SAIF SYSCFG 328
                pub const sys_iomux_cfgsaif_syscfg328 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio10_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio10_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio10_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio10_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio10_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio10_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio10_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040148));

                /// SYS IOMUX CFG SAIF SYSCFG 332
                pub const sys_iomux_cfgsaif_syscfg332 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio11_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio11_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio11_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio11_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio11_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio11_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio11_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304014c));

                /// SYS IOMUX CFG SAIF SYSCFG 336
                pub const sys_iomux_cfgsaif_syscfg336 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio12_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio12_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio12_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio12_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio12_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio12_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio12_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040150));

                /// SYS IOMUX CFG SAIF SYSCFG 340
                pub const sys_iomux_cfgsaif_syscfg340 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio13_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio13_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio13_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio13_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio13_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio13_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio13_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040154));

                /// SYS IOMUX CFG SAIF SYSCFG 344
                pub const sys_iomux_cfgsaif_syscfg344 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio14_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio14_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio14_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio14_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio14_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio14_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio14_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040158));

                /// SYS IOMUX CFG SAIF SYSCFG 348
                pub const sys_iomux_cfgsaif_syscfg348 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio15_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio15_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio15_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio15_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio15_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio15_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio15_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304015c));

                /// SYS IOMUX CFG SAIF SYSCFG 352
                pub const sys_iomux_cfgsaif_syscfg352 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio16_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio16_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio16_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio16_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio16_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio16_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio16_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040160));

                /// SYS IOMUX CFG SAIF SYSCFG 356
                pub const sys_iomux_cfgsaif_syscfg356 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio17_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio17_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio17_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio17_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio17_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio17_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio17_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040164));

                /// SYS IOMUX CFG SAIF SYSCFG 360
                pub const sys_iomux_cfgsaif_syscfg360 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio18_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio18_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio18_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio18_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio18_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio18_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio18_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040168));

                /// SYS IOMUX CFG SAIF SYSCFG 364
                pub const sys_iomux_cfgsaif_syscfg364 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio19_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio19_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio19_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio19_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio19_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio19_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio19_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304016c));

                /// SYS IOMUX CFG SAIF SYSCFG 368
                pub const sys_iomux_cfgsaif_syscfg368 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio20_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio20_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio20_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio20_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio20_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio20_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio20_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040170));

                /// SYS IOMUX CFG SAIF SYSCFG 372
                pub const sys_iomux_cfgsaif_syscfg372 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio21_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio21_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio21_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio21_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio21_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio21_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio21_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040174));

                /// SYS IOMUX CFG SAIF SYSCFG 376
                pub const sys_iomux_cfgsaif_syscfg376 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio22_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio22_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio22_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio22_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio22_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio22_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio22_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040178));

                /// SYS IOMUX CFG SAIF SYSCFG 380
                pub const sys_iomux_cfgsaif_syscfg380 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio23_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio23_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio23_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio23_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio23_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio23_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio23_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304017c));

                /// SYS IOMUX CFG SAIF SYSCFG 384
                pub const sys_iomux_cfgsaif_syscfg384 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio24_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio24_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio24_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio24_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio24_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio24_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio24_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040180));

                /// SYS IOMUX CFG SAIF SYSCFG 388
                pub const sys_iomux_cfgsaif_syscfg388 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio25_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio25_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio25_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio25_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio25_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio25_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio25_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040184));

                /// SYS IOMUX CFG SAIF SYSCFG 392
                pub const sys_iomux_cfgsaif_syscfg392 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio26_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio26_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio26_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio26_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio26_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio26_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio26_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040188));

                /// SYS IOMUX CFG SAIF SYSCFG 396
                pub const sys_iomux_cfgsaif_syscfg396 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio27_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio27_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio27_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio27_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio27_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio27_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio27_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304018c));

                /// SYS IOMUX CFG SAIF SYSCFG 400
                pub const sys_iomux_cfgsaif_syscfg400 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio28_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio28_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio28_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio28_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio28_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio28_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio28_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040190));

                /// SYS IOMUX CFG SAIF SYSCFG 404
                pub const sys_iomux_cfgsaif_syscfg404 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio29_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio29_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio29_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio29_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio29_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio29_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio29_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040194));

                /// SYS IOMUX CFG SAIF SYSCFG 408
                pub const sys_iomux_cfgsaif_syscfg408 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio30_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio30_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio30_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio30_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio30_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio30_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio30_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040198));

                /// SYS IOMUX CFG SAIF SYSCFG 412
                pub const sys_iomux_cfgsaif_syscfg412 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio31_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio31_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio31_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio31_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio31_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio31_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio31_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304019c));

                /// SYS IOMUX CFG SAIF SYSCFG 416
                pub const sys_iomux_cfgsaif_syscfg416 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio32_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio32_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio32_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio32_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio32_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio32_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio32_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401a0));

                /// SYS IOMUX CFG SAIF SYSCFG 420
                pub const sys_iomux_cfgsaif_syscfg420 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio33_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio33_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio33_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio33_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio33_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio33_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio33_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401a4));

                /// SYS IOMUX CFG SAIF SYSCFG 424
                pub const sys_iomux_cfgsaif_syscfg424 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio34_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio34_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio34_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio34_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio34_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio34_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio34_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401a8));

                /// SYS IOMUX CFG SAIF SYSCFG 428
                pub const sys_iomux_cfgsaif_syscfg428 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio35_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio35_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio35_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio35_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio35_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio35_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio35_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401ac));

                /// SYS IOMUX CFG SAIF SYSCFG 432
                pub const sys_iomux_cfgsaif_syscfg432 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio36_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio36_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio36_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio36_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio36_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio36_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio36_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401b0));

                /// SYS IOMUX CFG SAIF SYSCFG 436
                pub const sys_iomux_cfgsaif_syscfg436 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio37_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio37_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio37_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio37_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio37_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio37_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio37_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401b4));

                /// SYS IOMUX CFG SAIF SYSCFG 440
                pub const sys_iomux_cfgsaif_syscfg440 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio38_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio38_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio38_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio38_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio38_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio38_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio38_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401b8));

                /// SYS IOMUX CFG SAIF SYSCFG 444
                pub const sys_iomux_cfgsaif_syscfg444 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio39_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio39_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio39_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio39_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio39_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio39_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio39_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401bc));

                /// SYS IOMUX CFG SAIF SYSCFG 448
                pub const sys_iomux_cfgsaif_syscfg448 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio40_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio40_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio40_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio40_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio40_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio40_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio40_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401c0));

                /// SYS IOMUX CFG SAIF SYSCFG 452
                pub const sys_iomux_cfgsaif_syscfg452 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio41_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio41_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio41_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio41_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio41_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio41_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio41_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401c4));

                /// SYS IOMUX CFG SAIF SYSCFG 456
                pub const sys_iomux_cfgsaif_syscfg456 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio42_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio42_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio42_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio42_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio42_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio42_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio42_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401c8));

                /// SYS IOMUX CFG SAIF SYSCFG 460
                pub const sys_iomux_cfgsaif_syscfg460 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio43_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio43_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio43_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio43_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio43_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio43_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio43_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401cc));

                /// SYS IOMUX CFG SAIF SYSCFG 464
                pub const sys_iomux_cfgsaif_syscfg464 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio44_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio44_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio44_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio44_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio44_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio44_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio44_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401d0));

                /// SYS IOMUX CFG SAIF SYSCFG 468
                pub const sys_iomux_cfgsaif_syscfg468 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio45_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio45_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio45_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio45_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio45_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio45_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio45_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401d4));

                /// SYS IOMUX CFG SAIF SYSCFG 472
                pub const sys_iomux_cfgsaif_syscfg472 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio46_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio46_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio46_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio46_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio46_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio46_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio46_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401d8));

                /// SYS IOMUX CFG SAIF SYSCFG 476
                pub const sys_iomux_cfgsaif_syscfg476 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio47_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio47_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio47_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio47_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio47_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio47_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio47_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401dc));

                /// SYS IOMUX CFG SAIF SYSCFG 480
                pub const sys_iomux_cfgsaif_syscfg480 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio48_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio48_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio48_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio48_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio48_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio48_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio48_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401e0));

                /// SYS IOMUX CFG SAIF SYSCFG 484
                pub const sys_iomux_cfgsaif_syscfg484 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio49_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio49_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio49_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio49_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio49_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio49_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio49_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401e4));

                /// SYS IOMUX CFG SAIF SYSCFG 488
                pub const sys_iomux_cfgsaif_syscfg488 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio50_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio50_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio50_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio50_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio50_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio50_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio50_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401e8));

                /// SYS IOMUX CFG SAIF SYSCFG 492
                pub const sys_iomux_cfgsaif_syscfg492 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio51_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio51_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio51_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio51_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio51_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio51_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio51_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401ec));

                /// SYS IOMUX CFG SAIF SYSCFG 496
                pub const sys_iomux_cfgsaif_syscfg496 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio52_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio52_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio52_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio52_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio52_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio52_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio52_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401f0));

                /// SYS IOMUX CFG SAIF SYSCFG 500
                pub const sys_iomux_cfgsaif_syscfg500 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio53_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio53_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio53_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio53_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio53_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio53_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio53_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401f4));

                /// SYS IOMUX CFG SAIF SYSCFG 504
                pub const sys_iomux_cfgsaif_syscfg504 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio54_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio54_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio54_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio54_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio54_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio54_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio54_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401f8));

                /// SYS IOMUX CFG SAIF SYSCFG 508
                pub const sys_iomux_cfgsaif_syscfg508 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio55_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio55_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio55_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio55_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio55_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio55_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio55_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x130401fc));

                /// SYS IOMUX CFG SAIF SYSCFG 512
                pub const sys_iomux_cfgsaif_syscfg512 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio56_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio56_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio56_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio56_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio56_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio56_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio56_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040200));

                /// SYS IOMUX CFG SAIF SYSCFG 516
                pub const sys_iomux_cfgsaif_syscfg516 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio57_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio57_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio57_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio57_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio57_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio57_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio57_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040204));

                /// SYS IOMUX CFG SAIF SYSCFG 520
                pub const sys_iomux_cfgsaif_syscfg520 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio58_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio58_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio58_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio58_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio58_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio58_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio58_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040208));

                /// SYS IOMUX CFG SAIF SYSCFG 524
                pub const sys_iomux_cfgsaif_syscfg524 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio59_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio59_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio59_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio59_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio59_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio59_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio59_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304020c));

                /// SYS IOMUX CFG SAIF SYSCFG 528
                pub const sys_iomux_cfgsaif_syscfg528 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio60_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio60_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio60_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio60_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio60_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio60_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio60_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040210));

                /// SYS IOMUX CFG SAIF SYSCFG 532
                pub const sys_iomux_cfgsaif_syscfg532 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio61_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio61_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio61_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio61_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio61_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio61_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio61_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040214));

                /// SYS IOMUX CFG SAIF SYSCFG 536
                pub const sys_iomux_cfgsaif_syscfg536 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio62_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio62_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio62_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio62_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio62_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio62_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio62_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040218));

                /// SYS IOMUX CFG SAIF SYSCFG 540
                pub const sys_iomux_cfgsaif_syscfg540 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_gpio63_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_gpio63_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_gpio63_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_gpio63_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_gpio63_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_gpio63_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_gpio63_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304021c));

                /// SYS IOMUX CFG SAIF SYSCFG 544
                pub const sys_iomux_cfgsaif_syscfg544 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_clk_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_clk_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_clk_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_clk_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_clk_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_clk_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_clk_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040220));

                /// SYS IOMUX CFG SAIF SYSCFG 548
                pub const sys_iomux_cfgsaif_syscfg548 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_cmd_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_cmd_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_cmd_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_cmd_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_cmd_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_cmd_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_cmd_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040224));

                /// SYS IOMUX CFG SAIF SYSCFG 552
                pub const sys_iomux_cfgsaif_syscfg552 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_data0_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_data0_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data0_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data0_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_data0_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_data0_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_data0_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040228));

                /// SYS IOMUX CFG SAIF SYSCFG 556
                pub const sys_iomux_cfgsaif_syscfg556 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_data1_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_data1_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data1_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data1_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_data1_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_data1_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_data1_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304022c));

                /// SYS IOMUX CFG SAIF SYSCFG 560
                pub const sys_iomux_cfgsaif_syscfg560 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_data2_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_data2_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data2_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data2_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_data2_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_data2_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_data2_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040230));

                /// SYS IOMUX CFG SAIF SYSCFG 564
                pub const sys_iomux_cfgsaif_syscfg564 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_data3_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_data3_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data3_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data3_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_data3_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_data3_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_data3_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040234));

                /// SYS IOMUX CFG SAIF SYSCFG 568
                pub const sys_iomux_cfgsaif_syscfg568 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_data4_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_data4_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data4_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data4_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_data4_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_data4_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_data4_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040238));

                /// SYS IOMUX CFG SAIF SYSCFG 572
                pub const sys_iomux_cfgsaif_syscfg572 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_data5_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_data5_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data5_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data5_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_data5_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_data5_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_data5_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304023c));

                /// SYS IOMUX CFG SAIF SYSCFG 576
                pub const sys_iomux_cfgsaif_syscfg576 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_data6_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_data6_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data6_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data6_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_data6_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_data6_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_data6_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040240));

                /// SYS IOMUX CFG SAIF SYSCFG 580
                pub const sys_iomux_cfgsaif_syscfg580 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_data7_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_data7_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data7_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_data7_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_data7_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_data7_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_data7_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040244));

                /// SYS IOMUX CFG SAIF SYSCFG 584
                pub const sys_iomux_cfgsaif_syscfg584 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_sd0_strb_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_sd0_strb_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_strb_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_sd0_strb_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_sd0_strb_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_sd0_strb_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_sd0_strb_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040248));

                /// SYS IOMUX CFG SAIF SYSCFG 588
                pub const sys_iomux_cfgsaif_syscfg588 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_mdc_syscon
                    padcfg_pad_gmac1_mdc_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1304024c));

                /// SYS IOMUX CFG SAIF SYSCFG 592
                pub const sys_iomux_cfgsaif_syscfg592 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_mdio_syscon
                    padcfg_pad_gmac1_mdio_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040250));

                /// SYS IOMUX CFG SAIF SYSCFG 596
                pub const sys_iomux_cfgsaif_syscfg596 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_rxd0_syscon
                    padcfg_pad_gmac1_rxd0_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040254));

                /// SYS IOMUX CFG SAIF SYSCFG 600
                pub const sys_iomux_cfgsaif_syscfg600 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_rxd1_syscon
                    padcfg_pad_gmac1_rxd1_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040258));

                /// SYS IOMUX CFG SAIF SYSCFG 604
                pub const sys_iomux_cfgsaif_syscfg604 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_rxd2_syscon
                    padcfg_pad_gmac1_rxd2_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1304025c));

                /// SYS IOMUX CFG SAIF SYSCFG 608
                pub const sys_iomux_cfgsaif_syscfg608 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_rxd3_syscon
                    padcfg_pad_gmac1_rxd3_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040260));

                /// SYS IOMUX CFG SAIF SYSCFG 612
                pub const sys_iomux_cfgsaif_syscfg612 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_rxdv_syscon
                    padcfg_pad_gmac1_rxdv_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040264));

                /// SYS IOMUX CFG SAIF SYSCFG 616
                pub const sys_iomux_cfgsaif_syscfg616 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_rxc_syscon
                    padcfg_pad_gmac1_rxc_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040268));

                /// SYS IOMUX CFG SAIF SYSCFG 620
                pub const sys_iomux_cfgsaif_syscfg620 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_txd0_syscon
                    padcfg_pad_gmac1_txd0_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1304026c));

                /// SYS IOMUX CFG SAIF SYSCFG 624
                pub const sys_iomux_cfgsaif_syscfg624 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_txd1_syscon
                    padcfg_pad_gmac1_txd1_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040270));

                /// SYS IOMUX CFG SAIF SYSCFG 628
                pub const sys_iomux_cfgsaif_syscfg628 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_txd2_syscon
                    padcfg_pad_gmac1_txd2_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040274));

                /// SYS IOMUX CFG SAIF SYSCFG 632
                pub const sys_iomux_cfgsaif_syscfg632 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_txd3_syscon
                    padcfg_pad_gmac1_txd3_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040278));

                /// SYS IOMUX CFG SAIF SYSCFG 636
                pub const sys_iomux_cfgsaif_syscfg636 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_txen_syscon
                    padcfg_pad_gmac1_txen_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1304027c));

                /// SYS IOMUX CFG SAIF SYSCFG 640
                pub const sys_iomux_cfgsaif_syscfg640 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac1_txc_syscon
                    padcfg_pad_gmac1_txc_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x13040280));

                /// SYS IOMUX CFG SAIF SYSCFG 644
                pub const sys_iomux_cfgsaif_syscfg644 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_qspi_sclk_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_qspi_sclk_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_sclk_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_sclk_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_qspi_sclk_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_qspi_sclk_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_qspi_sclk_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040284));

                /// SYS IOMUX CFG SAIF SYSCFG 648
                pub const sys_iomux_cfgsaif_syscfg648 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_qspi_csn0_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_qspi_csn0_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_csn0_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_csn0_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_qspi_csn0_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_qspi_csn0_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_qspi_csn0_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040288));

                /// SYS IOMUX CFG SAIF SYSCFG 652
                pub const sys_iomux_cfgsaif_syscfg652 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_qspi_data0_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_qspi_data0_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_data0_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_data0_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_qspi_data0_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_qspi_data0_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_qspi_data0_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1304028c));

                /// SYS IOMUX CFG SAIF SYSCFG 656
                pub const sys_iomux_cfgsaif_syscfg656 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_qspi_data1_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_qspi_data1_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_data1_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_data1_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_qspi_data1_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_qspi_data1_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_qspi_data1_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040290));

                /// SYS IOMUX CFG SAIF SYSCFG 660
                pub const sys_iomux_cfgsaif_syscfg660 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_qspi_data2_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_qspi_data2_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_data2_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_data2_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_qspi_data2_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_qspi_data2_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_qspi_data2_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040294));

                /// SYS IOMUX CFG SAIF SYSCFG 664
                pub const sys_iomux_cfgsaif_syscfg664 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_qspi_data3_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_qspi_data3_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_data3_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_qspi_data3_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_qspi_data3_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_qspi_data3_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_qspi_data3_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x13040298));

                /// SYS IOMUX CFG SAIF SYSCFG 668
                pub const sys_iomux_cfgsaif_syscfg668 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] Function selector of GMAC1_RXC: * Function 0: u0_sys_crg.clk_gmac1_rgmii_rx, * Function 1: u0_sys_crg.clk_gmac1_rmii_ref, * Function 2: None, * Function 3: None
                    pad_gmac1_rxc_func_sel: u2 = 0,

                    /// [2:4] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio10_func_sel: u3 = 0,

                    /// [5:7] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio11_func_sel: u3 = 0,

                    /// [8:10] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio12_func_sel: u3 = 0,

                    /// [11:13] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio13_func_sel: u3 = 0,

                    /// [14:16] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio14_func_sel: u3 = 0,

                    /// [17:19] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio15_func_sel: u3 = 0,

                    /// [20:22] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio16_func_sel: u3 = 0,

                    /// [23:25] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio17_func_sel: u3 = 0,

                    /// [26:28] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio18_func_sel: u3 = 0,

                    /// [29:31] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio19_func_sel: u3 = 0,
                }), @ptrFromInt(0x1304029c));

                /// SYS IOMUX CFG SAIF SYSCFG 672
                pub const sys_iomux_cfgsaif_syscfg672 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:2] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio20_func_sel: u3 = 0,

                    /// [3:5] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio21_func_sel: u3 = 0,

                    /// [6:8] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio22_func_sel: u3 = 0,

                    /// [9:11] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio23_func_sel: u3 = 0,

                    /// [12:14] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio24_func_sel: u3 = 0,

                    /// [15:17] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio25_func_sel: u3 = 0,

                    /// [18:20] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio26_func_sel: u3 = 0,

                    /// [21:23] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio27_func_sel: u3 = 0,

                    /// [24:26] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio28_func_sel: u3 = 0,

                    /// [27:29] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio29_func_sel: u3 = 0,

                    /// [30:31]
                    res0: u2 = 0,
                }), @ptrFromInt(0x130402a0));

                /// SYS IOMUX CFG SAIF SYSCFG 676
                pub const sys_iomux_cfgsaif_syscfg676 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:2] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio30_func_sel: u3 = 0,

                    /// [3:5] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio31_func_sel: u3 = 0,

                    /// [6:8] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio32_func_sel: u3 = 0,

                    /// [9:11] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio33_func_sel: u3 = 0,

                    /// [12:14] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio34_func_sel: u3 = 0,

                    /// [15:17] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio35_func_sel: u3 = 0,

                    /// [18:20] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio36_func_sel: u3 = 0,

                    /// [21:23] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio37_func_sel: u3 = 0,

                    /// [24:26] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio38_func_sel: u3 = 0,

                    /// [27:29] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio39_func_sel: u3 = 0,

                    /// [30:32] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio40_func_sel: u3 = 0,
                }), @ptrFromInt(0x130402a4));

                /// SYS IOMUX CFG SAIF SYSCFG 680
                pub const sys_iomux_cfgsaif_syscfg680 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:2] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio41_func_sel: u3 = 0,

                    /// [3:5] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio42_func_sel: u3 = 0,

                    /// [6:8] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio43_func_sel: u3 = 0,

                    /// [9:11] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio44_func_sel: u3 = 0,

                    /// [12:14] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio45_func_sel: u3 = 0,

                    /// [15:17] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio46_func_sel: u3 = 0,

                    /// [18:20] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio47_func_sel: u3 = 0,

                    /// [21:23] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio48_func_sel: u3 = 0,

                    /// [24:26] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio49_func_sel: u3 = 0,

                    /// [27:29] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio50_func_sel: u3 = 0,

                    /// [30:32] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio51_func_sel: u3 = 0,
                }), @ptrFromInt(0x130402a8));

                /// SYS IOMUX CFG SAIF SYSCFG 684
                pub const sys_iomux_cfgsaif_syscfg684 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio52_func_sel: u2 = 0,

                    /// [2:3] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio53_func_sel: u2 = 0,

                    /// [4:5] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio54_func_sel: u2 = 0,

                    /// [6:11]
                    res0: u6 = 0,

                    /// [12:14] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio56_func_sel: u3 = 0,

                    /// [15:17] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio57_func_sel: u3 = 0,

                    /// [18:20] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio58_func_sel: u3 = 0,

                    /// [21:23] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio59_func_sel: u3 = 0,

                    /// [24:26] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio60_func_sel: u3 = 0,

                    /// [27:29] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio61_func_sel: u3 = 0,

                    /// [30:32] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio62_func_sel: u3 = 0,

                    /// [30:31] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio63_func_sel: u2 = 0,
                }), @ptrFromInt(0x130402ac));

                /// SYS IOMUX CFG SAIF SYSCFG 688
                pub const sys_iomux_cfgsaif_syscfg688 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio6_func_sel: u2 = 0,

                    /// [2:2]
                    res0: u1 = 0,

                    /// [3:5] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio7_func_sel: u3 = 0,

                    /// [6:8] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio8_func_sel: u3 = 0,

                    /// [9:11] GPIO function selector: * Function 0: See Function Description no page 84 for more information, * Function 1: See Full Multiplexing for more information, * Function 2: See Function 2 for more information, * Function 3: See Function 3 for more information
                    pad_gpio9_func_sel: u3 = 0,

                    /// [11:13] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c0_func_sel: u3 = 0,

                    /// [14:16] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c10_func_sel: u3 = 0,

                    /// [17:19] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c11_func_sel: u3 = 0,

                    /// [20:22] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c1_func_sel: u3 = 0,

                    /// [23:25] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c2_func_sel: u3 = 0,

                    /// [26:28] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c3_func_sel: u3 = 0,

                    /// [29:31] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c4_func_sel: u3 = 0,
                }), @ptrFromInt(0x130402b0));

                /// SYS IOMUX CFG SAIF SYSCFG 692
                pub const sys_iomux_cfgsaif_syscfg692 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:2] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c5_func_sel: u3 = 0,

                    /// [3:5] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c6_func_sel: u3 = 0,

                    /// [6:8] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c7_func_sel: u3 = 0,

                    /// [9:11] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c8_func_sel: u3 = 0,

                    /// [12:14] Function Selector of DVP_DATA[idx], see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_data_c9_func_sel: u3 = 0,

                    /// [15:17] Function Selector of DVP_HSYNC, see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_hvalid_c_func_sel: u3 = 0,

                    /// [18:20] Function Selector of DVP_VSYNC, see Function 2 for more information
                    u0_dom_isp_top_u0_vin_dvp_vvalid_c_func_sel: u3 = 0,

                    /// [21:23] Function Selector of DVP_CLK, see Function 2 for more information
                    u0_sys_crg_dvp_clk_func_sel: u3 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x130402b4));
            };

            /// From snps,dw-mshc, peripheral generator
            pub const snps_dw_mshc_0 = struct {};

            /// From snps,dw-mshc, peripheral generator
            pub const snps_dw_mshc_1 = struct {};

            /// From starfive,jh7110-dwmac, peripheral generator
            pub const starfive_jh7110_dwmac_0 = struct {};

            /// From snps,dwmac-5_20, peripheral generator
            pub const snps_dwmac_5_20_0 = struct {};

            /// From starfive,jh7110-dwmac, peripheral generator
            pub const starfive_jh7110_dwmac_1 = struct {};

            /// From snps,dwmac-5_20, peripheral generator
            pub const snps_dwmac_5_20_1 = struct {};

            /// From starfive,jh7110-aoncrg, peripheral generator
            pub const starfive_jh7110_aoncrg_0 = struct {
                /// Oscillator Clock
                pub const clk_osc = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=4, Default=4, Min=4, Typical=4
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x17000000));

                /// AON APB Function Clock
                pub const clk_aon_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_osc_div4, clk_osc
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x17000004));

                /// AHB GMAC5 Clock
                pub const clk_ahb_gmac5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x17000008));

                /// AXI GMAC5 Clock
                pub const clk_axi_gmac5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x1700000c));

                /// GMAC0 RMII RTX Clock
                pub const clk_gmac0_rmii_rtx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=30, Default=2, Min=2, Typical=2
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x17000010));

                /// GMAC5 AXI64 Clock Transmitter
                pub const clk_gmac5_axi64_tx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: u0_sys_crg_clk_gmac0_gtxclk, clk_gmac0_rmii_rtx
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x17000014));

                /// GMAC5 AXI64 Clock Transmission Inverter
                pub const clk_gmac5_axi64_txi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x17000018));

                /// GMAC5 AXI64 Clock Receiver
                pub const clk_gmac5_axi64_rx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Selector delay chain stage number, totally 32 stages, -50 ps each stage. The register value indicates the delay chain stage number. For example, diy_chain_sel=1 means to delay 1 stage.
                    dly_chain_sel: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1700001c));

                /// GMAC5 AXI64 Clock Receiving Inverter
                pub const clk_gmac5_axi64_rxi = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:29]
                    res0: u30 = 0,

                    /// [30:30] 1: Clock inverter, 0: Clock buffer
                    clk_polarity: u1 = 0,

                    /// [31:31]
                    res1: u1 = 0,
                }), @ptrFromInt(0x17000020));

                /// OPTC APB Clock
                pub const clk_optc_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x17000024));

                /// RTC HMS APB Clock
                pub const clk_rtc_hms_apb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x17000028));

                /// RTC Internal Clock
                pub const clk_rtc_internal = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23] Clock divider coefficient: Max=1022, Default=750, Min=750, Typical=750
                    clk_divcfg: u24 = 0,

                    /// [24:31]
                    res0: u8 = 0,
                }), @ptrFromInt(0x1700002c));

                /// RTC HMS Clock Oscillator 32K
                pub const clk_rtc_hms_osc32k = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:23]
                    res0: u24 = 0,

                    /// [24:29] Clock multiplexing selector: clk_rtc, clk_rtc_internal
                    clk_mux_sel: u6 = 0,

                    /// [30:31]
                    res1: u2 = 0,
                }), @ptrFromInt(0x17000030));

                /// RTC HMS Clock Calculator
                pub const clk_rtc_hms_cal = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:30]
                    res0: u31 = 0,

                    /// [31:31] 1: Clock enable, 0: Clock disable
                    clk_icg: u1 = 0,
                }), @ptrFromInt(0x17000034));

                /// Software RESET Address Selector
                pub const soft_rst_addr_sel = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    gmac5_axi64_rstn_axi: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    gmac5_axi64_rstn_ahb: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    aon_iomux_presetn: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    pmu_rstn_apb: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    pmu_rstn_wkup: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rtc_hms_rstn_apb: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rtc_hms_rstn_cal: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rtc_hms_rstn_osc32k: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x17000038));

                /// AONCRG RESET Status
                pub const aoncrg_rst_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] 1: Assert reset, 0: De-assert reset
                    gmac5_axi64_rstn_axi: u1 = 0,

                    /// [1:1] 1: Assert reset, 0: De-assert reset
                    gmac5_axi64_rstn_ahb: u1 = 0,

                    /// [2:2] 1: Assert reset, 0: De-assert reset
                    aon_iomux_presetn: u1 = 0,

                    /// [3:3] 1: Assert reset, 0: De-assert reset
                    pmu_rstn_apb: u1 = 0,

                    /// [4:4] 1: Assert reset, 0: De-assert reset
                    pmu_rstn_wkup: u1 = 0,

                    /// [5:5] 1: Assert reset, 0: De-assert reset
                    rtc_hms_rstn_apb: u1 = 0,

                    /// [6:6] 1: Assert reset, 0: De-assert reset
                    rtc_hms_rstn_cal: u1 = 0,

                    /// [7:7] 1: Assert reset, 0: De-assert reset
                    rtc_hms_rstn_osc32k: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1700003c));
            };

            /// From starfive,jh7110-aon-syscon, peripheral generator
            pub const starfive_jh7110_aon_syscon_0 = struct {
                /// AON SYSCONSAIF SYSCFG 0
                pub const aon_sysconsaif_syscfg0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] aon_gp_reg
                    aon_gp_reg: u32 = 0,
                }), @ptrFromInt(0x17010000));

                /// AON SYSCONSAIF SYSCFG 4
                pub const aon_sysconsaif_syscfg4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] u0_boot_ctrl_boot_status
                    u0_boot_ctrl_boot_status: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x17010004));

                /// AON SYSCONSAIF SYSCFG 8
                pub const aon_sysconsaif_syscfg8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_boot_ctrl_boot_vector_31_0
                    u0_boot_ctrl_boot_vector_31_0: u32 = 0,
                }), @ptrFromInt(0x17010008));

                /// AON SYSCONSAIF SYSCFG 12
                pub const aon_sysconsaif_syscfg12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] u0_boot_ctrl_boot_vector_35_32
                    u0_boot_ctrl_boot_vector_35_32: u4 = 0,

                    /// [4:4] SRAM/ROM configuration. SLP: sleep enable, high active, default is low.
                    gmac5_axi64_scfg_ram_cfg_slp: u1 = 0,

                    /// [5:5] SRAM/ROM configuration. SD: shutdown enable, high active, default is low.
                    gmac5_axi64_scfg_ram_cfg_sram_config_sd: u1 = 0,

                    /// [6:7] SRAM/ROM configuration. RTSEL: timing setting for debug purpose, default is 2'b01.
                    gmac5_axi64_scfg_ram_cfg_rtsel: u2 = 0,

                    /// [8:9] SRAM/ROM configuration. PTSEL: timing setting for debug purpose, default is 2'b01.
                    gmac5_axi64_scfg_ram_cfg_ptsel: u2 = 0,

                    /// [10:11] SRAM/ROM configuration. TRB: timing setting for debug purpose, default is 2'b01.
                    gmac5_axi64_scfg_ram_cfg_trb: u2 = 0,

                    /// [12:13] SRAM/ROM configuration. WTSEL: timing setting for debug purpose, default is 2'b01.
                    gmac5_axi64_scfg_ram_cfg_wtsel: u2 = 0,

                    /// [14:14] SRAM/ROM configuration. VS: timing setting for debug purpose, default is 1'b1.
                    gmac5_axi64_scfg_ram_cfg_vs: u1 = 0,

                    /// [15:15] SRAM/ROM configuration. VG: timing setting for debug purpose, default is 1'b1.
                    gmac5_axi64_scfg_ram_cfg_vg: u1 = 0,

                    /// [16:17] gmac5_axi64_mac_speed_o
                    gmac5_axi64_mac_speed_o: u2 = 0,

                    /// [18:20] Active PHY Selected. When you have multiple GMAC PHY interfaces in your configuration, this field indicates the sampled value of the PHY selector during reset de-assertion. Values: 0x0 - GMII or MII, 0x1 - RGMII, 0x2 - SGMII, 0x3 - TBI, 0x4 - RMII, 0x5 - RTBI, 0x6 - SMII, 0x7 - REVMII
                    gmac5_axi64_phy_intf_sel_i: u3 = 0,

                    /// [21:31]
                    res0: u11 = 0,
                }), @ptrFromInt(0x1701000c));

                /// AON SYSCONSAIF SYSCFG 16
                pub const aon_sysconsaif_syscfg16 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] gmac5_axi64_ptp_timestamp_o_31_0
                    gmac5_axi64_ptp_timestamp_o_31_0: u32 = 0,
                }), @ptrFromInt(0x17010010));

                /// AON SYSCONSAIF SYSCFG 20
                pub const aon_sysconsaif_syscfg20 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] gmac5_axi64_ptp_timestamp_o_63_32
                    gmac5_axi64_ptp_timestamp_o_63_32: u32 = 0,
                }), @ptrFromInt(0x17010014));

                /// AON SYSCONSAIF SYSCFG 24
                pub const aon_sysconsaif_syscfg24 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_otpc_chip_mode
                    u0_otpc_chip_mode: u1 = 0,

                    /// [1:1] u0_otpc_crc_pass
                    u0_otpc_crc_pass: u1 = 0,

                    /// [2:2] u0_otpc_dbg_enable
                    u0_otpc_dbg_enable: u1 = 0,

                    /// [3:31]
                    res0: u29 = 0,
                }), @ptrFromInt(0x17010018));

                /// AON SYSCONSAIF SYSCFG 28
                pub const aon_sysconsaif_syscfg28 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_otpc_fl_func_lock
                    u0_otpc_fl_func_lock: u32 = 0,
                }), @ptrFromInt(0x1701001c));

                /// AON SYSCONSAIF SYSCFG 32
                pub const aon_sysconsaif_syscfg32 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_otpc_fl_pll0_lock
                    u0_otpc_fl_pll0_lock: u32 = 0,
                }), @ptrFromInt(0x17010020));

                /// AON SYSCONSAIF SYSCFG 36
                pub const aon_sysconsaif_syscfg36 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:31] u0_otpc_fl_pll1_lock
                    u0_otpc_fl_pll1_lock: u32 = 0,
                }), @ptrFromInt(0x17010024));

                /// AON SYSCONSAIF SYSCFG 40
                pub const aon_sysconsaif_syscfg40 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] u0_otpc_fl_sec_boot_lmt
                    u0_otpc_fl_sec_boot_lmt: u1 = 0,

                    /// [1:1] u0_otpc_fl_xip
                    u0_otpc_fl_xip: u1 = 0,

                    /// [2:2] u0_otpc_load_busy
                    u0_otpc_load_busy: u1 = 0,

                    /// [3:3] u0_reset_ctrl_clr_reset_status
                    u0_reset_ctrl_clr_reset_status: u1 = 0,

                    /// [4:4] u0_reset_ctrl_pll_timecnt_finish
                    u0_reset_ctrl_pll_timecnt_finish: u1 = 0,

                    /// [5:5] u0_reset_ctrl_rstn_sw
                    u0_reset_ctrl_rstn_sw: u1 = 0,

                    /// [6:9] u0_reset_ctrl_sys_reset_status
                    u0_reset_ctrl_sys_reset_status: u4 = 0,

                    /// [10:31]
                    res0: u22 = 0,
                }), @ptrFromInt(0x17010028));
            };

            /// From syscon, peripheral generator
            pub const syscon_2 = struct {};

            /// From starfive,jh7110-aon-pinctrl, peripheral generator
            pub const starfive_jh7110_aon_pinctrl_0 = struct {
                /// AON IOMUX CFG SAIF SYSCFG FMUX 0
                pub const aon_iomux_cfgsaif_syscfg_fmux0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:2] The selected OEN signal for GPIO0. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-5. See Table 2-42: GPIO OEN List for AON_IOMUX for more information.
                    aon_iomux_gpo0_doen_cfg: u3 = 0,

                    /// [3:7]
                    res0: u5 = 0,

                    /// [8:10] The selected OEN signal for GPIO1. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-5. See Table 2-42: GPIO OEN List for AON_IOMUX for more information.
                    aon_iomux_gpo1_doen_cfg: u3 = 0,

                    /// [11:15]
                    res1: u5 = 0,

                    /// [16:18] The selected OEN signal for GPIO2. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-5. See Table 2-42: GPIO OEN List for AON_IOMUX for more information.
                    aon_iomux_gpo2_doen_cfg: u3 = 0,

                    /// [19:23]
                    res2: u5 = 0,

                    /// [24:26] The selected OEN signal for GPIO3. The register value indicates the selected GPIO (Output Enable) OEN index from GPIO OEN list 0-5. See Table 2-42: GPIO OEN List for AON_IOMUX for more information.
                    aon_iomux_gpo3_doen_cfg: u3 = 0,

                    /// [27:31]
                    res3: u5 = 0,
                }), @ptrFromInt(0x17020000));

                /// AON IOMUX CFG SAIF SYSCFG FMUX 1
                pub const aon_iomux_cfgsaif_syscfg_fmux1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] The selected OEN signal for GPIO0. The register value indicates the selected GPIO output signal list 0-9. See Table 2-42: GPIO OEN List for AON_IOMUX for more information.
                    aon_iomux_gpo0_dout_cfg: u4 = 0,

                    /// [4:7]
                    res0: u4 = 0,

                    /// [8:11] The selected OEN signal for GPIO1. The register value indicates the selected GPIO output signal list 0-9. See Table 2-42: GPIO OEN List for AON_IOMUX for more information.
                    aon_iomux_gpo1_dout_cfg: u4 = 0,

                    /// [12:15]
                    res1: u4 = 0,

                    /// [16:19] The selected OEN signal for GPIO2. The register value indicates the selected GPIO output signal list 0-9. See Table 2-42: GPIO OEN List for AON_IOMUX for more information.
                    aon_iomux_gpo2_dout_cfg: u4 = 0,

                    /// [20:23]
                    res2: u4 = 0,

                    /// [24:27] The selected OEN signal for GPIO3. The register value indicates the selected GPIO output signal list 0-9. See Table 2-42: GPIO OEN List for AON_IOMUX for more information.
                    aon_iomux_gpo3_dout_cfg: u4 = 0,

                    /// [28:31]
                    res3: u4 = 0,
                }), @ptrFromInt(0x17020004));

                /// AON IOMUX CFG SAIF SYSCFG FMUX 2
                pub const aon_iomux_cfgsaif_syscfg_fmux2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:2] The register value indicates the selected GPIO number + 2 (GPIO2-GPIO63, GPIO0 and GPIO1 are not available) for the input signal.
                    aon_iomux_gpi_u0_pmu_io_event_stub_gpio_wakeup_0_cfg: u3 = 0,

                    /// [3:7]
                    res0: u5 = 0,

                    /// [8:10] The register value indicates the selected GPIO number + 2 (GPIO2-GPIO63, GPIO0 and GPIO1 are not available) for the input signal.
                    aon_iomux_gpi_u0_pmu_io_event_stub_gpio_wakeup_1_cfg: u3 = 0,

                    /// [11:15]
                    res1: u5 = 0,

                    /// [16:18] The register value indicates the selected GPIO number + 2 (GPIO2-GPIO63, GPIO0 and GPIO1 are not available) for the input signal.
                    aon_iomux_gpi_u0_pmu_io_event_stub_gpio_wakeup_2_cfg: u3 = 0,

                    /// [19:23]
                    res2: u5 = 0,

                    /// [24:26] The register value indicates the selected GPIO number + 2 (GPIO2-GPIO63, GPIO0 and GPIO1 are not available) for the input signal.
                    aon_iomux_gpi_u0_pmu_io_event_stub_gpio_wakeup_3_cfg: u3 = 0,

                    /// [27:31]
                    res3: u5 = 0,
                }), @ptrFromInt(0x17020008));

                /// AON IOMUX CFG SAIF SYSCFG FMUX 3
                pub const aon_iomux_cfgsaif_syscfg_fmux3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Enable GPIO IRQ function.
                    aon_gpioen_0_reg: u1 = 0,

                    /// [1:31]
                    res0: u31 = 0,
                }), @ptrFromInt(0x1702000c));

                /// AON IOMUX CFG SAIF SYSCFG IOIRQ 4
                pub const aon_iomux_cfgsaif_syscfg_ioirq4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] 1: Edge trigger, 0: Level trigger
                    aon_gpiois_0_reg: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x17020010));

                /// AON IOMUX CFG SAIF SYSCFG IOIRQ 5
                pub const aon_iomux_cfgsaif_syscfg_ioirq5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] 1: Do not clear the register, 0: Clear the register
                    aon_gpioic_0_reg: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x17020014));

                /// AON IOMUX CFG SAIF SYSCFG IOIRQ 6
                pub const aon_iomux_cfgsaif_syscfg_ioirq6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] 1: Trigger on both edges, 0: Trigger on a single edge
                    aon_gpioibe_0_reg: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x17020018));

                /// AON IOMUX CFG SAIF SYSCFG IOIRQ 7
                pub const aon_iomux_cfgsaif_syscfg_ioirq7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] 1: Positive/Low, 0: Negative/High
                    aon_gpioiev_0_reg: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x1702001c));

                /// AON IOMUX CFG SAIF SYSCFG IOIRQ 8
                pub const aon_iomux_cfgsaif_syscfg_ioirq8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] 1: Unmask, 0: Mask
                    aon_gpioie_0_reg: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x17020020));

                /// AON IOMUX CFG SAIF SYSCFG IOIRQ 9
                pub const aon_iomux_cfgsaif_syscfg_ioirq9 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] Status of the edge trigger, can be cleared by writing gpioic.
                    aon_gpioris_0_reg: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x17020024));

                /// AON IOMUX CFG SAIF SYSCFG IOIRQ 10
                pub const aon_iomux_cfgsaif_syscfg_ioirq10 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] The masked GPIO IRQ status.
                    aon_gpiomis_0_reg: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x17020028));

                /// AON IOMUX CFG SAIF SYSCFG IOIRQ 11
                pub const aon_iomux_cfgsaif_syscfg_ioirq11 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:3] Status of gpio_in after synchronization.
                    aon_gpio_in_sync2_0_reg: u4 = 0,

                    /// [4:31]
                    res0: u28 = 0,
                }), @ptrFromInt(0x1702002c));

                /// AON IOMUX CFG SAIF SYSCFG 48
                pub const aon_iomux_cfgsaif_syscfg48 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_testen_pos: u1 = 0,

                    /// [1:31]
                    res0: u31 = 0,
                }), @ptrFromInt(0x17020030));

                /// AON IOMUX CFG SAIF SYSCFG 52
                pub const aon_iomux_cfgsaif_syscfg52 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_rgpio0_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_rgpio0_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_rgpio0_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_rgpio0_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_rgpio0_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_rgpio0_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_rgpio0_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x17020034));

                /// AON IOMUX CFG SAIF SYSCFG 56
                pub const aon_iomux_cfgsaif_syscfg56 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_rgpio1_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_rgpio1_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_rgpio1_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_rgpio1_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_rgpio1_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_rgpio1_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_rgpio1_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x17020038));

                /// AON IOMUX CFG SAIF SYSCFG 60
                pub const aon_iomux_cfgsaif_syscfg60 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_rgpio2_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_rgpio2_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_rgpio2_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_rgpio2_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_rgpio2_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_rgpio2_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_rgpio2_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x1702003c));

                /// AON IOMUX CFG SAIF SYSCFG 64
                pub const aon_iomux_cfgsaif_syscfg64 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Input Enable (IE) Controller - 1: Enable the receiver, 0: Disable the receiver
                    padcfg_pad_rgpio3_ie: u1 = 0,

                    /// [1:2] Output Drive Strength (DS) - 00: The rated drive strength is 2 mA, 01: The rated drive strength is 4 mA, 10: The rated drive strength is 8 mA, 11: The rated drive strength is 12 mA
                    padcfg_pad_rgpio3_ds: u2 = 0,

                    /// [3:3] Pull-Up (PU) settings - 1: Yes, 0: No
                    padcfg_pad_rgpio3_pu: u1 = 0,

                    /// [4:4] Pull-Down (PD) settings - 1: Yes, 0: No
                    padcfg_pad_rgpio3_pd: u1 = 0,

                    /// [5:5] Slew Rate Control - 0: Slow (Half frequency), 1: Fast
                    padcfg_pad_rgpio3_slew: u1 = 0,

                    /// [6:6] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger ebabled
                    padcfg_pad_rgpio3_smt: u1 = 0,

                    /// [7:7] Power-on-Start (POS) enabler - 1: Enable active pull down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_rgpio3_pos: u1 = 0,

                    /// [8:31]
                    res0: u24 = 0,
                }), @ptrFromInt(0x17020040));

                /// AON IOMUX CFG SAIF SYSCFG 68
                pub const aon_iomux_cfgsaif_syscfg68 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:0] Active high Schmitt (SMT) trigger selector - 0: No hysteresis, 1: Schmitt trigger enabled
                    padcfg_pad_rstn_smt: u1 = 0,

                    /// [1:1] Power-on-Start (POS) enabler - 1: Enable active pull-down for loss of core power, 0: Active pull-down capability disabled
                    padcfg_pad_rstn_pos: u1 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020044));

                /// AON IOMUX CFG SAIF SYSCFG 76
                pub const aon_iomux_cfgsaif_syscfg76 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] Output Drive Strength (DS): * 00: The rated drive strength is 2 mA. * 01: The rated drive strength is 4 mA. * 10: The rated drive strength is 8 mA. * 11: The rated drive strength is 12 mA.
                    padcfg_pad_rtc_ds: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1702004c));

                /// AON IOMUX CFG SAIF SYSCFG 84
                pub const aon_iomux_cfgsaif_syscfg84 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] Output Drive Strength (DS): * 00: The rated drive strength is 2 mA. * 01: The rated drive strength is 4 mA. * 10: The rated drive strength is 8 mA. * 11: The rated drive strength is 12 mA.
                    padcfg_pad_osc_ds: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020054));

                /// AON IOMUX CFG SAIF SYSCFG 88
                pub const aon_iomux_cfgsaif_syscfg88 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_mdc_syscon
                    padcfg_pad_gmac0_mdc_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020058));

                /// AON IOMUX CFG SAIF SYSCFG 92
                pub const aon_iomux_cfgsaif_syscfg92 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_mdio_syscon
                    padcfg_pad_gmac0_mdio_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1702005c));

                /// AON IOMUX CFG SAIF SYSCFG 96
                pub const aon_iomux_cfgsaif_syscfg96 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] 0: GMAC0 IO voltage select 3.3V, 1: GMAC0 IO voltage select 2.5V, 2: GMAC0 IO voltage select 1.8V
                    padcfg_pad_gmac0_rxd0_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020060));

                /// AON IOMUX CFG SAIF SYSCFG 100
                pub const aon_iomux_cfgsaif_syscfg100 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_rxd1_syscon
                    padcfg_pad_gmac0_rxd1_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020064));

                /// AON IOMUX CFG SAIF SYSCFG 104
                pub const aon_iomux_cfgsaif_syscfg104 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_rxd2_syscon
                    padcfg_pad_gmac0_rxd2_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020068));

                /// AON IOMUX CFG SAIF SYSCFG 108
                pub const aon_iomux_cfgsaif_syscfg108 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_rxd3_syscon
                    padcfg_pad_gmac0_rxd3_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1702006c));

                /// AON IOMUX CFG SAIF SYSCFG 112
                pub const aon_iomux_cfgsaif_syscfg112 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_rxdv_syscon
                    padcfg_pad_gmac0_rxdv_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020070));

                /// AON IOMUX CFG SAIF SYSCFG 116
                pub const aon_iomux_cfgsaif_syscfg116 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_rxc_syscon
                    padcfg_pad_gmac0_rxc_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020074));

                /// AON IOMUX CFG SAIF SYSCFG 120
                pub const aon_iomux_cfgsaif_syscfg120 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_txd0_syscon
                    padcfg_pad_gmac0_txd0_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020078));

                /// AON IOMUX CFG SAIF SYSCFG 124
                pub const aon_iomux_cfgsaif_syscfg124 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_txd1_syscon
                    padcfg_pad_gmac0_txd1_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1702007c));

                /// AON IOMUX CFG SAIF SYSCFG 128
                pub const aon_iomux_cfgsaif_syscfg128 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_txd2_syscon
                    padcfg_pad_gmac0_txd2_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020080));

                /// AON IOMUX CFG SAIF SYSCFG 132
                pub const aon_iomux_cfgsaif_syscfg132 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_txd3_syscon
                    padcfg_pad_gmac0_txd3_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020084));

                /// AON IOMUX CFG SAIF SYSCFG 136
                pub const aon_iomux_cfgsaif_syscfg136 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_txen_syscon
                    padcfg_pad_gmac0_txen_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020088));

                /// AON IOMUX CFG SAIF SYSCFG 140
                pub const aon_iomux_cfgsaif_syscfg140 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] padcfg_pad_gmac0_txc_syscon
                    padcfg_pad_gmac0_txc_syscon: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x1702008c));

                /// AON IOMUX CFG SAIF SYSCFG 144
                pub const aon_iomux_cfgsaif_syscfg144 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    /// [0:1] Function selector of GMAC0_RXC: * Function 0: u0_aon_crg_clk_gmac0_rgmii_rx, * Function 1: u0_aon_crg_clk_gmac0_rmii_ref, * Function 2: None, * Function 3: None
                    pad_gmac0_rxc_func_sel: u2 = 0,

                    /// [2:31]
                    res0: u30 = 0,
                }), @ptrFromInt(0x17020090));
            };

            /// From starfive,jh7110-pcie,reg peripheral generator
            pub const starfive_jh7110_pcie_0 = struct {};

            /// From starfive,jh7110-pcie,config peripheral generator
            pub const starfive_jh7110_pcie_1 = struct {};

            /// From starfive,jh7110-pcie,reg peripheral generator
            pub const starfive_jh7110_pcie_2 = struct {};

            /// From starfive,jh7110-pcie,config peripheral generator
            pub const starfive_jh7110_pcie_3 = struct {};
        };
    };
};
