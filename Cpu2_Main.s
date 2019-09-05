	.file	"Cpu2_Main.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	core2_main
	.type	core2_main, @function
core2_main:
.LFB259:
	.file 1 "0_Src/0_AppSw/Tricore/Main/Cpu2_Main.c"
	.loc 1 13 0
	movh.a	%a15, hi:core0_started
	movh.a	%a2, hi:core1_started
	lea	%a15, [%a15] lo:core0_started
	lea	%a2, [%a2] lo:core1_started
.L2:
	.loc 1 15 0 discriminator 7
	ld.b	%d15, [%a15]0
	jz	%d15, .L2
	.loc 1 15 0 is_stmt 0 discriminator 1
	ld.b	%d15, [%a2]0
	j	.L2
.LFE259:
	.size	core2_main, .-core2_main
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2b3
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2017-01-30 -mlicen"
	.string	"se-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mcpu=tc27xx -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fdata-sections -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Main/Cpu2_Main.c"
	.string	"C:\\\\SCU\\\\Project_AU_C"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x1
	.string	"core2_main"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.uaword	0x19f
	.uaword	.LFB259
	.uaword	.LFE259
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x4
	.string	"core1_started"
	.byte	0x1
	.byte	0x8
	.uaword	0x281
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x237
	.uleb128 0x4
	.string	"core0_started"
	.byte	0x1
	.byte	0x9
	.uaword	0x281
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.string	"flag10mstoCore2"
	.byte	0x1
	.byte	0xa
	.uaword	0x281
	.byte	0x1
	.byte	0x1
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	core1_started,STT_OBJECT,1
	.extern	core0_started,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
