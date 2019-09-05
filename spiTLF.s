	.file	"spiTLF.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	TLF35584
	.type	TLF35584, @function
TLF35584:
.LFB0:
	.file 1 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c"
	.loc 1 13 0
.LVL0:
	.loc 1 23 0
	sh	%d5, 1
.LVL1:
	.loc 1 24 0
	extr	%d15, %d6, 0, 8
	.loc 1 23 0
	and	%d5, %d5, 126
.LVL2:
	.loc 1 24 0
	or.lt	%d5, %d15, 0
.LVL3:
	.loc 1 26 0
	jeq	%d4, 1, .L3
	.loc 1 29 0
	mov	%d2, 1
	.loc 1 27 0
	jnz	%d4, .L4
	.loc 1 27 0 is_stmt 0 discriminator 1
	or	%d5, %d5, 128
.LVL4:
.L3:
	.loc 1 22 0 is_stmt 1
	sh	%d6, 1
.LVL5:
	.loc 1 31 0
	sh	%d5, %d5, 8
.LVL6:
	.loc 1 22 0
	and	%d6, %d6, 255
	.loc 1 31 0
	or	%d5, %d6
.LVL7:
	.loc 1 34 0
	mov	%d15, 2
.LVL8:
	.loc 1 35 0
	mov	%d2, 0
	mov.a	%a15, 14
.LVL9:
.L6:
	.loc 1 38 0
	and	%d3, %d15, %d5
	eq	%d3, %d3, %d15
	cadd	%d2, %d3, %d2, 1
.LVL10:
	.loc 1 39 0
	sh	%d15, 1
.LVL11:
	loop	%a15, .L6
	.loc 1 43 0
	mov.u	%d3, 65534
	and	%d2, %d2, 1
.LVL12:
	or	%d4, %d5, 1
.LVL13:
	and	%d5, %d3
.LVL14:
	.loc 1 46 0
	seln	%d4, %d2, %d5, %d4
.LVL15:
	call	Send16bitToTLF33584
.LVL16:
	extr.u	%d2, %d2, 0, 16
.LVL17:
.L4:
	.loc 1 48 0
	ret
.LFE0:
	.size	TLF35584, .-TLF35584
	.align 1
	.global	UnlockTLF35584
	.type	UnlockTLF35584, @function
UnlockTLF35584:
.LFB1:
	.loc 1 57 0
	.loc 1 63 0
	mov	%d4, 1
	mov	%d5, 13
	mov	%d6, 0
	call	TLF35584
.LVL18:
	.loc 1 67 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 171
	.loc 1 63 0
	movh.a	%a15, hi:read_
	st.h	[%a15] lo:read_, %d2
	.loc 1 67 0
	call	TLF35584
.LVL19:
	.loc 1 69 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 239
	call	TLF35584
.LVL20:
	.loc 1 71 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 86
	call	TLF35584
.LVL21:
	.loc 1 73 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 18
	call	TLF35584
.LVL22:
	.loc 1 78 0
	mov	%d4, 0
	mov	%d5, 6
	mov	%d6, 145
	call	TLF35584
.LVL23:
	.loc 1 80 0
	mov	%d4, 0
	mov	%d5, 5
	mov	%d6, 0
	call	TLF35584
.LVL24:
	.loc 1 84 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 223
	call	TLF35584
.LVL25:
	.loc 1 86 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 52
	call	TLF35584
.LVL26:
	.loc 1 88 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 190
	call	TLF35584
.LVL27:
	.loc 1 90 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 202
	j	TLF35584
.LVL28:
.LFE1:
	.size	UnlockTLF35584, .-UnlockTLF35584
	.align 1
	.global	GoToNormalTLF35584
	.type	GoToNormalTLF35584, @function
GoToNormalTLF35584:
.LFB2:
	.loc 1 95 0
	.loc 1 97 0
	mov	%d4, 0
	mov	%d5, 21
	mov	%d6, 250
	call	TLF35584
.LVL29:
	.loc 1 98 0
	mov	%d4, 0
	mov	%d5, 22
	mov	%d6, 5
	j	TLF35584
.LVL30:
.LFE2:
	.size	GoToNormalTLF35584, .-GoToNormalTLF35584
	.align 1
	.global	EnaDetectedTLF35584
	.type	EnaDetectedTLF35584, @function
EnaDetectedTLF35584:
.LFB3:
	.loc 1 102 0
	.loc 1 103 0
	mov	%d4, 1
	mov	%d5, 30
	mov	%d6, 0
	call	TLF35584
.LVL31:
	.loc 1 106 0
	mov	%d2, 1
	ret
.LFE3:
	.size	EnaDetectedTLF35584, .-EnaDetectedTLF35584
	.align 1
	.global	GoToStanbyTLF35584
	.type	GoToStanbyTLF35584, @function
GoToStanbyTLF35584:
.LFB4:
	.loc 1 109 0
	.loc 1 111 0
	mov	%d4, 0
	mov	%d5, 21
	mov	%d6, 4
	call	TLF35584
.LVL32:
	.loc 1 112 0
	mov	%d4, 0
	mov	%d5, 22
	mov	%d6, 251
	j	TLF35584
.LVL33:
.LFE4:
	.size	GoToStanbyTLF35584, .-GoToStanbyTLF35584
	.align 1
	.global	WDIcfgTLF35584
	.type	WDIcfgTLF35584, @function
WDIcfgTLF35584:
.LFB5:
	.loc 1 120 0
	.loc 1 125 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 171
	call	TLF35584
.LVL34:
	.loc 1 127 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 239
	call	TLF35584
.LVL35:
	.loc 1 129 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 86
	call	TLF35584
.LVL36:
	.loc 1 131 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 18
	call	TLF35584
.LVL37:
	.loc 1 136 0
	mov	%d4, 0
	mov	%d5, 6
	mov	%d6, 153
	call	TLF35584
.LVL38:
	.loc 1 144 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 223
	call	TLF35584
.LVL39:
	.loc 1 146 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 52
	call	TLF35584
.LVL40:
	.loc 1 148 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 190
	call	TLF35584
.LVL41:
	.loc 1 150 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 202
	j	TLF35584
.LVL42:
.LFE5:
	.size	WDIcfgTLF35584, .-WDIcfgTLF35584
	.align 1
	.global	TurnOff
	.type	TurnOff, @function
TurnOff:
.LFB6:
	.loc 1 156 0
	.loc 1 161 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 171
	call	TLF35584
.LVL43:
	.loc 1 163 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 239
	call	TLF35584
.LVL44:
	.loc 1 165 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 86
	call	TLF35584
.LVL45:
	.loc 1 167 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 18
	call	TLF35584
.LVL46:
	.loc 1 180 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 223
	call	TLF35584
.LVL47:
	.loc 1 182 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 52
	call	TLF35584
.LVL48:
	.loc 1 184 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 190
	call	TLF35584
.LVL49:
	.loc 1 186 0
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, 202
	call	TLF35584
.LVL50:
.L21:
	.loc 1 188 0 discriminator 1
	j	.L21
.LFE6:
	.size	TurnOff, .-TurnOff
	.align 1
	.global	PWR_GotoNormal
	.type	PWR_GotoNormal, @function
PWR_GotoNormal:
.LFB7:
	.loc 1 194 0
	mov	%d15, 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 194 0
	st.w	[%SP] 4, %d15
	.loc 1 196 0
	call	WDIcfgTLF35584
.LVL51:
	.loc 1 197 0
	st.w	[%SP] 4, %d15
	ld.w	%d3, [%SP] 4
	mov.u	%d15, 65535
	mov	%d2, %d15
	jge	%d3, %d15, .L24
.L25:
	.loc 1 197 0 is_stmt 0 discriminator 3
	ld.w	%d15, [%SP] 4
	add	%d15, 1
	st.w	[%SP] 4, %d15
	ld.w	%d15, [%SP] 4
	jlt	%d15, %d2, .L25
.L24:
	.loc 1 199 0 is_stmt 1
	call	GoToNormalTLF35584
.LVL52:
	.loc 1 212 0
	mov	%d2, 0
	ret
.LFE7:
	.size	PWR_GotoNormal, .-PWR_GotoNormal
	.global	read_
.section .bss.read_,"aw",@nobits
	.align 1
	.type	read_, @object
	.size	read_, 2
read_:
	.zero	2
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.byte	0x4
	.uaword	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7c9
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2017-01-30 -mlicen"
	.string	"se-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mcpu=tc27xx -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fdata-sections -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c"
	.string	"C:\\\\SCU\\\\Project_AU_C"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.string	"TLF35584"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.uaword	0x278
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x278
	.uleb128 0x3
	.string	"mode"
	.byte	0x1
	.byte	0xc
	.uaword	0x28e
	.uaword	.LLST0
	.uleb128 0x3
	.string	"address"
	.byte	0x1
	.byte	0xc
	.uaword	0x28e
	.uaword	.LLST1
	.uleb128 0x3
	.string	"data"
	.byte	0x1
	.byte	0xc
	.uaword	0x28e
	.uaword	.LLST2
	.uleb128 0x4
	.string	"result"
	.byte	0x1
	.byte	0xe
	.uaword	0x29f
	.byte	0
	.uleb128 0x5
	.string	"packet"
	.byte	0x1
	.byte	0xf
	.uaword	0x29f
	.uaword	.LLST3
	.uleb128 0x5
	.string	"packet_l"
	.byte	0x1
	.byte	0x10
	.uaword	0x29f
	.uaword	.LLST4
	.uleb128 0x5
	.string	"packet_h"
	.byte	0x1
	.byte	0x10
	.uaword	0x29f
	.uaword	.LLST5
	.uleb128 0x5
	.string	"parity"
	.byte	0x1
	.byte	0x11
	.uaword	0x29f
	.uaword	.LLST6
	.uleb128 0x5
	.string	"idx"
	.byte	0x1
	.byte	0x11
	.uaword	0x29f
	.uaword	.LLST7
	.uleb128 0x5
	.string	"mask"
	.byte	0x1
	.byte	0x12
	.uaword	0x29f
	.uaword	.LLST8
	.uleb128 0x6
	.string	"rdword"
	.byte	0x1
	.byte	0x14
	.uaword	0x29f
	.uleb128 0x7
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2e
	.uaword	0x2af
	.byte	0x1
	.uaword	0x26e
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.uaword	.LVL16
	.uaword	0x7bd
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x1
	.string	"UnlockTLF35584"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x41e
	.uleb128 0xc
	.uaword	.LVL18
	.uaword	0x17f
	.uaword	0x2f6
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3d
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xc
	.uaword	.LVL19
	.uaword	0x17f
	.uaword	0x314
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xab
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL20
	.uaword	0x17f
	.uaword	0x332
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xef
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL21
	.uaword	0x17f
	.uaword	0x350
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL22
	.uaword	0x17f
	.uaword	0x36d
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x42
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL23
	.uaword	0x17f
	.uaword	0x38b
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x91
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL24
	.uaword	0x17f
	.uaword	0x3a8
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL25
	.uaword	0x17f
	.uaword	0x3c6
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xdf
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL26
	.uaword	0x17f
	.uaword	0x3e4
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL27
	.uaword	0x17f
	.uaword	0x402
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xbe
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x17f
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xca
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"GoToNormalTLF35584"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x47e
	.uleb128 0xc
	.uaword	.LVL29
	.uaword	0x17f
	.uaword	0x463
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xfa
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x45
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL30
	.byte	0x1
	.uaword	0x17f
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x46
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.string	"EnaDetectedTLF35584"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4c4
	.uleb128 0xf
	.uaword	.LVL31
	.uaword	0x17f
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x4e
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"GoToStanbyTLF35584"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x524
	.uleb128 0xc
	.uaword	.LVL32
	.uaword	0x17f
	.uaword	0x508
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x45
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL33
	.byte	0x1
	.uaword	0x17f
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xfb
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x46
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"WDIcfgTLF35584"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x652
	.uleb128 0xc
	.uaword	.LVL34
	.uaword	0x17f
	.uaword	0x565
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xab
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL35
	.uaword	0x17f
	.uaword	0x583
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xef
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL36
	.uaword	0x17f
	.uaword	0x5a1
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL37
	.uaword	0x17f
	.uaword	0x5be
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x42
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL38
	.uaword	0x17f
	.uaword	0x5dc
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x99
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL39
	.uaword	0x17f
	.uaword	0x5fa
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xdf
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL40
	.uaword	0x17f
	.uaword	0x618
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL41
	.uaword	0x17f
	.uaword	0x636
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xbe
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL42
	.byte	0x1
	.uaword	0x17f
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xca
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"TurnOff"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x75a
	.uleb128 0xc
	.uaword	.LVL43
	.uaword	0x17f
	.uaword	0x68c
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xab
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL44
	.uaword	0x17f
	.uaword	0x6aa
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xef
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL45
	.uaword	0x17f
	.uaword	0x6c8
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL46
	.uaword	0x17f
	.uaword	0x6e5
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x42
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL47
	.uaword	0x17f
	.uaword	0x703
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xdf
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL48
	.uaword	0x17f
	.uaword	0x721
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.uaword	.LVL49
	.uaword	0x17f
	.uaword	0x73f
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xbe
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.uaword	.LVL50
	.uaword	0x17f
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xca
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"PWR_GotoNormal"
	.byte	0x1
	.byte	0xc1
	.uaword	0x2af
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x79f
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.uaword	0x79f
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x9
	.uaword	.LVL51
	.uaword	0x524
	.uleb128 0x9
	.uaword	.LVL52
	.uaword	0x41e
	.byte	0
	.uleb128 0x12
	.uaword	0x2af
	.uleb128 0x13
	.string	"read_"
	.byte	0x1
	.byte	0x36
	.uaword	0x7b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	read_
	.uleb128 0x12
	.uaword	0x278
	.uleb128 0x14
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2e
	.uaword	0x2af
	.byte	0x1
	.uleb128 0x8
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
	.uleb128 0x3
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
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0xe
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL17-.Ltext0
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
	.string	"Send16bitToTLF33584"
	.extern	Send16bitToTLF33584,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
