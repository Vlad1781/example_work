	.file	"SPI_TLF33584.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	QSPI0_init
	.type	QSPI0_init, @function
QSPI0_init:
.LFB166:
	.file 1 "0_Src/0_AppSw/Tricore/TLF33584/SPI_TLF33584.c"
	.loc 1 90 0
	.loc 1 93 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL0:
	mov	%d15, %d2
.LVL1:
	.loc 1 94 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL2:
	.loc 1 97 0
	mov	%d4, %d15
	call	IfxScuWdt_clearCpuEndinit
.LVL3:
	.loc 1 99 0
	mov	%d4, %d15
	.loc 1 106 0
	mov	%d15, 15364
.LVL4:
	.loc 1 98 0
	mov	%d2, 8
	.loc 1 106 0
	insert	%d15, %d15, 1, 27, 1
.LVL5:
	lea	%a15, -268428272
	.loc 1 98 0
	st.w	0xf0001c00, %d2
	.loc 1 99 0
	call	IfxScuWdt_setCpuEndinit
.LVL6:
	.loc 1 106 0
	st.w	[%a15]0, %d15
.LVL7:
	.loc 1 114 0
	mov	%d15, 0
.LVL8:
	insert	%d15, %d15, 2, 0, 3
.LVL9:
	st.w	0xf0001c04, %d15
.LVL10:
	.loc 1 119 0
	mov	%d15, 0
.LVL11:
	insert	%d15, %d15, 1, 26, 2
.LVL12:
	insert	%d15, %d15, 1, 28, 2
	st.w	0xf0001c14, %d15
.LVL13:
	.loc 1 129 0
	mov	%d15, 19
.LVL14:
	insert	%d15, %d15, 1, 10, 5
.LVL15:
	st.w	0xf0001c20, %d15
.LVL16:
	.loc 1 135 0
	mov	%d15, 0
.LVL17:
	insert	%d15, %d15, 1, 16, 16
.LVL18:
	st.w	0xf0001c48, %d15
	.loc 1 145 0
	movh	%d15, 1952
.LVL19:
	addi	%d15, %d15, 257
.LVL20:
	.loc 1 146 0
	insert	%d15, %d15, 2, 13, 3
.LVL21:
	.loc 1 147 0
	insert	%d15, %d15, 2, 1, 3
	.loc 1 148 0
	st.w	0xf0001c60, %d15
	.loc 1 150 0
	ld.w	%d15, [%a15]0
.LVL22:
	insert	%d15, %d15, 15, 24, 1
	st.w	[%a15]0, %d15
	ret
.LFE166:
	.size	QSPI0_init, .-QSPI0_init
	.align 1
	.global	Send16bitToTLF33584
	.type	Send16bitToTLF33584, @function
Send16bitToTLF33584:
.LFB167:
	.loc 1 156 0
.LVL23:
	.loc 1 162 0
	st.w	0xf0001c64, %d4
.L3:
	.loc 1 163 0 discriminator 1
	ld.w	%d15, 0xf0001c40
	jz.t	%d15, 9, .L3
	.loc 1 164 0
	ld.w	%d15, 0xf0001c54
	insert	%d15, %d15, 15, 9, 1
	st.w	0xf0001c54, %d15
.L4:
	.loc 1 165 0 discriminator 1
	ld.w	%d15, 0xf0001c40
	jz.t	%d15, 10, .L4
	.loc 1 166 0
	ld.w	%d15, 0xf0001c54
	insert	%d15, %d15, 15, 10, 1
	st.w	0xf0001c54, %d15
	.loc 1 167 0
	ld.w	%d15, 0xf0001c90
	.loc 1 169 0
	ret
.LFE167:
	.size	Send16bitToTLF33584, .-Send16bitToTLF33584
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
	.uaword	.LFB166
	.uaword	.LFE166-.LFB166
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB167
	.uaword	.LFE167-.LFB167
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_regdef.h"
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1043
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2017-01-30 -mlicen"
	.string	"se-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mcpu=tc27xx -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fdata-sections -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/TLF33584/SPI_TLF33584.c"
	.string	"C:\\\\SCU\\\\Project_AU_C"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x204
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
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
	.uleb128 0x4
	.string	"_Ifx_QSPI_BACON_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x58
	.uaword	0x34c
	.uleb128 0x5
	.string	"LAST"
	.byte	0x2
	.byte	0x5a
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.string	"IPRE"
	.byte	0x2
	.byte	0x5b
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.string	"IDLE"
	.byte	0x2
	.byte	0x5c
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.string	"LPRE"
	.byte	0x2
	.byte	0x5d
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"LEAD"
	.byte	0x2
	.byte	0x5e
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"TPRE"
	.byte	0x2
	.byte	0x5f
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"TRAIL"
	.byte	0x2
	.byte	0x60
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.string	"PARTYP"
	.byte	0x2
	.byte	0x61
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.string	"UINT"
	.byte	0x2
	.byte	0x62
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.string	"MSB"
	.byte	0x2
	.byte	0x63
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.string	"BYTE"
	.byte	0x2
	.byte	0x64
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.string	"DL"
	.byte	0x2
	.byte	0x65
	.uaword	0x185
	.byte	0x4
	.byte	0x5
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"CS"
	.byte	0x2
	.byte	0x66
	.uaword	0x185
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACON_Bits"
	.byte	0x2
	.byte	0x67
	.uaword	0x260
	.uleb128 0x4
	.string	"_Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x6a
	.uaword	0x397
	.uleb128 0x5
	.string	"E"
	.byte	0x2
	.byte	0x6c
	.uaword	0x185
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x2
	.byte	0x6d
	.uaword	0x367
	.uleb128 0x4
	.string	"_Ifx_QSPI_CLC_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x70
	.uaword	0x42f
	.uleb128 0x5
	.string	"DISR"
	.byte	0x2
	.byte	0x72
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.string	"DISS"
	.byte	0x2
	.byte	0x73
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.string	"reserved_2"
	.byte	0x2
	.byte	0x74
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.string	"EDIS"
	.byte	0x2
	.byte	0x75
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.string	"reserved_4"
	.byte	0x2
	.byte	0x76
	.uaword	0x185
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_CLC_Bits"
	.byte	0x2
	.byte	0x77
	.uaword	0x3b7
	.uleb128 0x4
	.string	"_Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x7a
	.uaword	0x477
	.uleb128 0x5
	.string	"E"
	.byte	0x2
	.byte	0x7c
	.uaword	0x185
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x2
	.byte	0x7d
	.uaword	0x448
	.uleb128 0x4
	.string	"_Ifx_QSPI_ECON_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x80
	.uaword	0x534
	.uleb128 0x5
	.string	"Q"
	.byte	0x2
	.byte	0x82
	.uaword	0x185
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.string	"A"
	.byte	0x2
	.byte	0x83
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"B"
	.byte	0x2
	.byte	0x84
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"C"
	.byte	0x2
	.byte	0x85
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"CPH"
	.byte	0x2
	.byte	0x86
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"CPOL"
	.byte	0x2
	.byte	0x87
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"PAREN"
	.byte	0x2
	.byte	0x88
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x2
	.byte	0x89
	.uaword	0x185
	.byte	0x4
	.byte	0xf
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"BE"
	.byte	0x2
	.byte	0x8a
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ECON_Bits"
	.byte	0x2
	.byte	0x8b
	.uaword	0x496
	.uleb128 0x4
	.string	"_Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x8e
	.uaword	0x5fc
	.uleb128 0x5
	.string	"ERRORCLEARS"
	.byte	0x2
	.byte	0x90
	.uaword	0x185
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"TXC"
	.byte	0x2
	.byte	0x91
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"RXC"
	.byte	0x2
	.byte	0x92
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"PT1C"
	.byte	0x2
	.byte	0x93
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"PT2C"
	.byte	0x2
	.byte	0x94
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x2
	.byte	0x95
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"USRC"
	.byte	0x2
	.byte	0x96
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"reserved_16"
	.byte	0x2
	.byte	0x97
	.uaword	0x185
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x2
	.byte	0x98
	.uaword	0x54e
	.uleb128 0x4
	.string	"_Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x9b
	.uaword	0x734
	.uleb128 0x5
	.string	"ERRORENS"
	.byte	0x2
	.byte	0x9d
	.uaword	0x185
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"TXEN"
	.byte	0x2
	.byte	0x9e
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"RXEN"
	.byte	0x2
	.byte	0x9f
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"PT1EN"
	.byte	0x2
	.byte	0xa0
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"PT2EN"
	.byte	0x2
	.byte	0xa1
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x2
	.byte	0xa2
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"USREN"
	.byte	0x2
	.byte	0xa3
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"TXFIFOINT"
	.byte	0x2
	.byte	0xa4
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.string	"RXFIFOINT"
	.byte	0x2
	.byte	0xa5
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.string	"PT1"
	.byte	0x2
	.byte	0xa6
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.string	"PT2"
	.byte	0x2
	.byte	0xa7
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"TXFM"
	.byte	0x2
	.byte	0xa8
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"RXFM"
	.byte	0x2
	.byte	0xa9
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"reserved_30"
	.byte	0x2
	.byte	0xaa
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x2
	.byte	0xab
	.uaword	0x61c
	.uleb128 0x4
	.string	"_Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xae
	.uaword	0x85e
	.uleb128 0x5
	.string	"TQ"
	.byte	0x2
	.byte	0xb0
	.uaword	0x185
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"reserved_8"
	.byte	0x2
	.byte	0xb1
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"SI"
	.byte	0x2
	.byte	0xb2
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"EXPECT"
	.byte	0x2
	.byte	0xb3
	.uaword	0x185
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"LB"
	.byte	0x2
	.byte	0xb4
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"DEL0"
	.byte	0x2
	.byte	0xb5
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"STROBE"
	.byte	0x2
	.byte	0xb6
	.uaword	0x185
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.string	"SRF"
	.byte	0x2
	.byte	0xb7
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.string	"STIP"
	.byte	0x2
	.byte	0xb8
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.string	"reserved_23"
	.byte	0x2
	.byte	0xb9
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"EN"
	.byte	0x2
	.byte	0xba
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"MS"
	.byte	0x2
	.byte	0xbb
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"AREN"
	.byte	0x2
	.byte	0xbc
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"RESETS"
	.byte	0x2
	.byte	0xbd
	.uaword	0x185
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x2
	.byte	0xbe
	.uaword	0x754
	.uleb128 0x4
	.string	"_Ifx_QSPI_PISEL_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xef
	.uaword	0x92e
	.uleb128 0x5
	.string	"MRIS"
	.byte	0x2
	.byte	0xf1
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.string	"reserved_3"
	.byte	0x2
	.byte	0xf2
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.string	"SRIS"
	.byte	0x2
	.byte	0xf3
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.string	"reserved_7"
	.byte	0x2
	.byte	0xf4
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"SCIS"
	.byte	0x2
	.byte	0xf5
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"reserved_11"
	.byte	0x2
	.byte	0xf6
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"SLSIS"
	.byte	0x2
	.byte	0xf7
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x2
	.byte	0xf8
	.uaword	0x185
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_PISEL_Bits"
	.byte	0x2
	.byte	0xf9
	.uaword	0x87d
	.uleb128 0x4
	.string	"_Ifx_QSPI_RXEXIT_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xfc
	.uaword	0x975
	.uleb128 0x5
	.string	"E"
	.byte	0x2
	.byte	0xfe
	.uaword	0x185
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_RXEXIT_Bits"
	.byte	0x2
	.byte	0xff
	.uaword	0x949
	.uleb128 0x7
	.string	"_Ifx_QSPI_SSOC_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x108
	.uaword	0x9cf
	.uleb128 0x8
	.string	"AOL"
	.byte	0x2
	.uahalf	0x10a
	.uaword	0x185
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"OEN"
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x185
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_SSOC_Bits"
	.byte	0x2
	.uahalf	0x10c
	.uaword	0x991
	.uleb128 0x7
	.string	"_Ifx_QSPI_STATUS_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x11a
	.uaword	0xafb
	.uleb128 0x8
	.string	"ERRORFLAGS"
	.byte	0x2
	.uahalf	0x11c
	.uaword	0x185
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"TXF"
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"RXF"
	.byte	0x2
	.uahalf	0x11e
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"PT1F"
	.byte	0x2
	.uahalf	0x11f
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"PT2F"
	.byte	0x2
	.uahalf	0x120
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x121
	.uaword	0x185
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"USRF"
	.byte	0x2
	.uahalf	0x122
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"TXFIFOLEVEL"
	.byte	0x2
	.uahalf	0x123
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"RXFIFOLEVEL"
	.byte	0x2
	.uahalf	0x124
	.uaword	0x185
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"SLAVESEL"
	.byte	0x2
	.uahalf	0x125
	.uaword	0x185
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.string	"RPV"
	.byte	0x2
	.uahalf	0x126
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.string	"TPV"
	.byte	0x2
	.uahalf	0x127
	.uaword	0x185
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"PHASE"
	.byte	0x2
	.uahalf	0x128
	.uaword	0x185
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_STATUS_Bits"
	.byte	0x2
	.uahalf	0x129
	.uaword	0x9ea
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x14e
	.uaword	0xb40
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x151
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x153
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x155
	.uaword	0x34c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_BACON"
	.byte	0x2
	.uahalf	0x156
	.uaword	0xb18
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x159
	.uaword	0xb7f
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x15c
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x15e
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x160
	.uaword	0x397
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_BACONENTRY"
	.byte	0x2
	.uahalf	0x161
	.uaword	0xb57
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x164
	.uaword	0xbc3
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x167
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x169
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x16b
	.uaword	0x42f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_CLC"
	.byte	0x2
	.uahalf	0x16c
	.uaword	0xb9b
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x16f
	.uaword	0xc00
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x172
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x174
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x176
	.uaword	0x477
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_DATAENTRY"
	.byte	0x2
	.uahalf	0x177
	.uaword	0xbd8
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x17a
	.uaword	0xc43
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x17f
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x181
	.uaword	0x534
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_ECON"
	.byte	0x2
	.uahalf	0x182
	.uaword	0xc1b
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x185
	.uaword	0xc81
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x188
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x18c
	.uaword	0x5fc
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_FLAGSCLEAR"
	.byte	0x2
	.uahalf	0x18d
	.uaword	0xc59
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x190
	.uaword	0xcc5
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x193
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x195
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x197
	.uaword	0x85e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_GLOBALCON"
	.byte	0x2
	.uahalf	0x198
	.uaword	0xc9d
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x19b
	.uaword	0xd08
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x19e
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x1a0
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0x734
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_GLOBALCON1"
	.byte	0x2
	.uahalf	0x1a3
	.uaword	0xce0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x1e8
	.uaword	0xd4c
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x1eb
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x1ed
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x1ef
	.uaword	0x92e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_PISEL"
	.byte	0x2
	.uahalf	0x1f0
	.uaword	0xd24
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x1f3
	.uaword	0xd8b
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x1f6
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x1f8
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x1fa
	.uaword	0x975
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_RXEXIT"
	.byte	0x2
	.uahalf	0x1fb
	.uaword	0xd63
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x209
	.uaword	0xdcb
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x20c
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x20e
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x210
	.uaword	0x9cf
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_SSOC"
	.byte	0x2
	.uahalf	0x211
	.uaword	0xda3
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x214
	.uaword	0xe09
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x217
	.uaword	0x185
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x219
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x21b
	.uaword	0xafb
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_STATUS"
	.byte	0x2
	.uahalf	0x21c
	.uaword	0xde1
	.uleb128 0xd
	.byte	0x1
	.string	"QSPI0_init"
	.byte	0x1
	.byte	0x59
	.uaword	.LFB166
	.uaword	.LFE166
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf44
	.uleb128 0xe
	.string	"endinit_pw"
	.byte	0x1
	.byte	0x5c
	.uaword	0x185
	.uaword	.LLST0
	.uleb128 0xf
	.string	"endinitSfty_pw"
	.byte	0x1
	.byte	0x5c
	.uaword	0x185
	.uleb128 0xe
	.string	"Temp_QSPI_GLOBALCON"
	.byte	0x1
	.byte	0x65
	.uaword	0xcc5
	.uaword	.LLST1
	.uleb128 0xe
	.string	"Temp_QSPI_PISEL"
	.byte	0x1
	.byte	0x6d
	.uaword	0xd4c
	.uaword	.LLST2
	.uleb128 0xe
	.string	"Temp_QSPI_GLOBALCON1"
	.byte	0x1
	.byte	0x74
	.uaword	0xd08
	.uaword	.LLST3
	.uleb128 0xe
	.string	"Temp_QSPI_ECON"
	.byte	0x1
	.byte	0x7a
	.uaword	0xc43
	.uaword	.LLST4
	.uleb128 0xe
	.string	"Temp_QSPI_SSOC"
	.byte	0x1
	.byte	0x84
	.uaword	0xdcb
	.uaword	.LLST5
	.uleb128 0xe
	.string	"Temp_QSPI_BACON"
	.byte	0x1
	.byte	0x8a
	.uaword	0xb40
	.uaword	.LLST6
	.uleb128 0x10
	.uaword	.LVL0
	.uaword	0xf9d
	.uleb128 0x10
	.uaword	.LVL2
	.uaword	0xfc9
	.uleb128 0x11
	.uaword	.LVL3
	.uaword	0xff8
	.uaword	0xf3a
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL6
	.uaword	0x1022
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Send16bitToTLF33584"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	0x204
	.uaword	.LFB167
	.uaword	.LFE167
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf9d
	.uleb128 0x14
	.string	"transmit_word"
	.byte	0x1
	.byte	0x9b
	.uaword	0x204
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.string	"received_word"
	.byte	0x1
	.byte	0x9e
	.uaword	0x204
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x4
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x1f6
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0x4
	.uahalf	0x166
	.byte	0x1
	.uaword	0x1f6
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0x4
	.byte	0xbb
	.byte	0x1
	.byte	0x1
	.uaword	0x1022
	.uleb128 0x17
	.uaword	0x1f6
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0x4
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x1f6
	.byte	0
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL2-1-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL6-1-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1c
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x3f
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0xb
	.uleb128 0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x8
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1d
	.uleb128 0
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x10
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x24
	.byte	0x43
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x11
	.uleb128 0
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
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
.LASF0:
	.string	"reserved_15"
.LASF1:
	.string	"reserved_13"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
