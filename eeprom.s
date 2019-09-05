	.file	"eeprom.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	erase_eeprom_sector
	.type	erase_eeprom_sector, @function
erase_eeprom_sector:
.LFB185:
	.file 1 "0_Src/0_AppSw/Tricore/EEPROM/eeprom.c"
	.loc 1 9 0
.LVL0:
	.loc 1 11 0
	movh.a	%a15, hi:IfxFlash_dFlashTableEepLog
	lea	%a15, [%a15] lo:IfxFlash_dFlashTableEepLog
	addsc.a	%a15, %a15, %d4, 3
	ld.w	%d8, [%a15]0
.LVL1:
	.loc 1 13 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL2:
	.loc 1 16 0
	mov	%d4, %d2
	.loc 1 13 0
	mov	%d15, %d2
.LVL3:
	.loc 1 16 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL4:
	.loc 1 17 0
	mov	%d4, %d8
	call	IfxFlash_eraseSector
.LVL5:
	.loc 1 18 0
	mov	%d4, %d15
	call	IfxScuWdt_setSafetyEndinit
.LVL6:
	.loc 1 21 0
	mov	%d4, 0
	mov	%d5, 1
	j	IfxFlash_waitUnbusy
.LVL7:
.LFE185:
	.size	erase_eeprom_sector, .-erase_eeprom_sector
	.align 1
	.global	write_eeprom_page
	.type	write_eeprom_page, @function
write_eeprom_page:
.LFB186:
	.loc 1 26 0
.LVL8:
	.loc 1 27 0
	mov	%d2, 0
	.loc 1 26 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 26 0
	mov.aa	%a15, %a4
	mov	%d15, %d4
	.loc 1 27 0
	st.w	[%SP] 4, %d2
	.loc 1 33 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL9:
	.loc 1 35 0
	mov	%d4, %d15
	.loc 1 33 0
	mov	%d8, %d2
.LVL10:
	.loc 1 35 0
	call	IfxFlash_enterPageMode
.LVL11:
	st.w	[%SP] 4, %d2
	.loc 1 36 0
	ld.w	%d2, [%SP] 4
	jz	%d2, .L5
	ret
.L5:
	.loc 1 39 0
	mov	%d4, 0
	mov	%d5, 1
	call	IfxFlash_waitUnbusy
.LVL12:
	.loc 1 50 0
	ld.w	%d5, [%a15]0
	ld.w	%d6, [%a15] 4
	mov	%d4, %d15
	call	IfxFlash_loadPage2X32
.LVL13:
	.loc 1 53 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL14:
	.loc 1 54 0
	mov	%d4, %d15
	call	IfxFlash_writePage
.LVL15:
	.loc 1 55 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL16:
	.loc 1 58 0
	mov	%d4, 0
	mov	%d5, 1
	call	IfxFlash_waitUnbusy
.LVL17:
	ret
.LFE186:
	.size	write_eeprom_page, .-write_eeprom_page
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
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.byte	0x4
	.uaword	.LCFI0-.LFB186
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/4_McHal/Tricore/_Impl/IfxFlash_cfg.h"
	.file 4 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
	.file 5 "./0_Src/4_McHal/Tricore/Flash/Std/IfxFlash.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x720
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2017-01-30 -mlicen"
	.string	"se-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mcpu=tc27xx -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fdata-sections -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/EEPROM/eeprom.c"
	.string	"C:\\\\SCU\\\\Project_AU_C"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
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
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1a1
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1bf
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1dc
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x7a
	.uaword	0x324
	.uleb128 0x5
	.string	"IfxFlash_FlashType_Fa"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxFlash_FlashType_D0"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxFlash_FlashType_D1"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxFlash_FlashType_P0"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxFlash_FlashType_P1"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxFlash_FlashType_P2"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxFlash_FlashType_P3"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_FlashType"
	.byte	0x3
	.byte	0x82
	.uaword	0x273
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x94
	.uaword	0x361
	.uleb128 0x7
	.string	"start"
	.byte	0x3
	.byte	0x96
	.uaword	0x252
	.byte	0
	.uleb128 0x7
	.string	"end"
	.byte	0x3
	.byte	0x97
	.uaword	0x252
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_flashSector"
	.byte	0x3
	.byte	0x98
	.uaword	0x33e
	.uleb128 0x8
	.byte	0x1
	.string	"erase_eeprom_sector"
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x43a
	.uleb128 0x9
	.string	"sector_num"
	.byte	0x1
	.byte	0x8
	.uaword	0x237
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa
	.uaword	0x244
	.uaword	.LLST1
	.uleb128 0xb
	.string	"sector_addr"
	.byte	0x1
	.byte	0xb
	.uaword	0x252
	.byte	0x1
	.byte	0x58
	.uleb128 0xc
	.uaword	.LVL2
	.uaword	0x5ce
	.uleb128 0xd
	.uaword	.LVL4
	.uaword	0x5fd
	.uaword	0x3fc
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL5
	.uaword	0x62a
	.uaword	0x410
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL6
	.uaword	0x64f
	.uaword	0x424
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x67a
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"write_eeprom_page"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x58a
	.uleb128 0x9
	.string	"page_data"
	.byte	0x1
	.byte	0x19
	.uaword	0x58a
	.uaword	.LLST2
	.uleb128 0x9
	.string	"start_addres"
	.byte	0x1
	.byte	0x19
	.uaword	0x252
	.uaword	.LLST3
	.uleb128 0xb
	.string	"errors"
	.byte	0x1
	.byte	0x1b
	.uaword	0x590
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1c
	.uaword	0x244
	.uaword	.LLST4
	.uleb128 0x10
	.string	"write_int_low"
	.byte	0x1
	.byte	0x1d
	.uaword	0x252
	.uaword	.LLST5
	.uleb128 0x10
	.string	"write_int_high"
	.byte	0x1
	.byte	0x1e
	.uaword	0x252
	.uaword	.LLST6
	.uleb128 0x10
	.string	"temp"
	.byte	0x1
	.byte	0x1f
	.uaword	0x252
	.uaword	.LLST6
	.uleb128 0xc
	.uaword	.LVL9
	.uaword	0x5ce
	.uleb128 0xd
	.uaword	.LVL11
	.uaword	0x6a8
	.uaword	0x50d
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL12
	.uaword	0x67a
	.uaword	0x525
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.uaword	.LVL13
	.uaword	0x6d3
	.uaword	0x539
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL14
	.uaword	0x5fd
	.uaword	0x54d
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL15
	.uaword	0x703
	.uaword	0x561
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL16
	.uaword	0x64f
	.uaword	0x575
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.uaword	.LVL17
	.uaword	0x67a
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.uaword	0x237
	.uleb128 0x13
	.uaword	0x252
	.uleb128 0x14
	.uaword	0x361
	.uaword	0x5a5
	.uleb128 0x15
	.uaword	0x223
	.byte	0x2f
	.byte	0
	.uleb128 0x16
	.string	"IfxFlash_dFlashTableEepLog"
	.byte	0x3
	.byte	0x9f
	.uaword	0x5c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x595
	.uleb128 0x18
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0x4
	.uahalf	0x166
	.byte	0x1
	.uaword	0x244
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0x4
	.byte	0xc7
	.byte	0x1
	.byte	0x1
	.uaword	0x62a
	.uleb128 0x1a
	.uaword	0x244
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"IfxFlash_eraseSector"
	.byte	0x5
	.byte	0xc1
	.byte	0x1
	.byte	0x1
	.uaword	0x64f
	.uleb128 0x1a
	.uaword	0x252
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0x4
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x67a
	.uleb128 0x1a
	.uaword	0x244
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"IfxFlash_waitUnbusy"
	.byte	0x5
	.uahalf	0x126
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uaword	0x6a8
	.uleb128 0x1a
	.uaword	0x252
	.uleb128 0x1a
	.uaword	0x324
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"IfxFlash_enterPageMode"
	.byte	0x5
	.byte	0x7b
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uaword	0x6d3
	.uleb128 0x1a
	.uaword	0x252
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"IfxFlash_loadPage2X32"
	.byte	0x5
	.byte	0xf4
	.byte	0x1
	.byte	0x1
	.uaword	0x703
	.uleb128 0x1a
	.uaword	0x252
	.uleb128 0x1a
	.uaword	0x252
	.uleb128 0x1a
	.uaword	0x252
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_writePage"
	.byte	0x5
	.uahalf	0x144
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x252
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
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x7
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1-.Ltext0
	.uaword	.LFE185-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-1-.Ltext0
	.uaword	.LFE185-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1-.Ltext0
	.uaword	.LFE186-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1-.Ltext0
	.uaword	.LFE186-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11-1-.Ltext0
	.uaword	.LFE186-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-1-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-1-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
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
	.string	"endinitSfty_pw"
	.extern	IfxFlash_writePage,STT_FUNC,0
	.extern	IfxFlash_loadPage2X32,STT_FUNC,0
	.extern	IfxFlash_enterPageMode,STT_FUNC,0
	.extern	IfxFlash_waitUnbusy,STT_FUNC,0
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxFlash_eraseSector,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxFlash_dFlashTableEepLog,STT_OBJECT,384
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
