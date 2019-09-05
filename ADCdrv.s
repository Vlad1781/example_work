	.file	"ADCdrv.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	AdcPolling
	.type	AdcPolling, @function
AdcPolling:
.LFB397:
	.file 1 "0_Src/0_AppSw/Tricore/ADC/ADCdrv.c"
	.loc 1 19 0
	.loc 1 21 0
	mov	%e4, 1
	call	GetADCResult
.LVL0:
	sh	%d2, -2
	itof	%d2, %d2
	movh.a	%a15, hi:v_0_AIRVALVE1
	.loc 1 22 0
	mov	%d4, 1
	mov	%d5, 2
	.loc 1 21 0
	st.w	[%a15] lo:v_0_AIRVALVE1, %d2
	.loc 1 22 0
	call	GetADCResult
.LVL1:
	sh	%d2, -2
	itof	%d2, %d2
	movh.a	%a15, hi:v_0_AIRVALVE2
	.loc 1 23 0
	mov	%d4, 1
	mov	%d5, 3
	.loc 1 22 0
	st.w	[%a15] lo:v_0_AIRVALVE2, %d2
	.loc 1 23 0
	call	GetADCResult
.LVL2:
	sh	%d2, -2
	itof	%d2, %d2
	movh.a	%a15, hi:v_0_AIRVALVE3
	.loc 1 24 0
	mov	%d4, 1
	mov	%d5, 4
	.loc 1 23 0
	st.w	[%a15] lo:v_0_AIRVALVE3, %d2
	.loc 1 24 0
	call	GetADCResult
.LVL3:
	sh	%d2, -2
	itof	%d2, %d2
	movh.a	%a15, hi:v_0_AIRVALVE4
	.loc 1 25 0
	mov	%d4, 2
	mov	%d5, 1
	.loc 1 24 0
	st.w	[%a15] lo:v_0_AIRVALVE4, %d2
	.loc 1 25 0
	call	GetADCResult
.LVL4:
	sh	%d2, -2
	itof	%d2, %d2
	.loc 1 27 0
	mov	%e4, 2
	.loc 1 25 0
	movh.a	%a15, hi:v_0_AIRVALVE5
	st.w	[%a15] lo:v_0_AIRVALVE5, %d2
	.loc 1 27 0
	call	GetADCResult
.LVL5:
	sh	%d2, -2
	itof	%d2, %d2
	movh.a	%a15, hi:v_0_AIRPUMPRELAY
	.loc 1 28 0
	mov	%d4, 2
	mov	%d5, 2
	.loc 1 27 0
	st.w	[%a15] lo:v_0_AIRPUMPRELAY, %d2
	.loc 1 28 0
	call	GetADCResult
.LVL6:
	sh	%d2, -2
	itof	%d2, %d2
	movh.a	%a15, hi:v_0_AIRPUMPVALVE1
	.loc 1 29 0
	mov	%d4, 2
	mov	%d5, 3
	.loc 1 28 0
	st.w	[%a15] lo:v_0_AIRPUMPVALVE1, %d2
	.loc 1 29 0
	call	GetADCResult
.LVL7:
	sh	%d2, -2
	itof	%d2, %d2
	movh.a	%a15, hi:v_0_AIRPUMPVALVE2
	.loc 1 31 0
	mov	%d4, 0
	mov	%d5, 6
	.loc 1 29 0
	st.w	[%a15] lo:v_0_AIRPUMPVALVE2, %d2
	.loc 1 31 0
	call	GetADCResult
.LVL8:
	mul	%d2, %d2, 55
	movh.a	%a15, hi:v_0_ABSPumpCurrent
	sh	%d2, %d2, -12
	st.h	[%a15] lo:v_0_ABSPumpCurrent, %d2
	ret
.LFE397:
	.size	AdcPolling, .-AdcPolling
	.global	vadcResultBufferCH2
.section .bss.vadcResultBufferCH2,"aw",@nobits
	.align 9
	.type	vadcResultBufferCH2, @object
	.size	vadcResultBufferCH2, 512
vadcResultBufferCH2:
	.zero	512
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
	.uaword	.LFB397
	.uaword	.LFE397-.LFB397
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/0_AppSw/Tricore/Models\\Global_pars_vars\\rtwtypes.h"
	.file 3 "./0_Src/0_AppSw/Tricore/Models/Global_pars_vars/global_low_vars.h"
	.file 4 "0_Src/0_AppSw/Tricore/ADC/ADCinit.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x499
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2017-01-30 -mlicen"
	.string	"se-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mcpu=tc27xx -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fdata-sections -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/ADC/ADCdrv.c"
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
	.string	"uint16_T"
	.byte	0x2
	.byte	0x2c
	.uaword	0x1cf
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x2f
	.uaword	0x1f5
	.uleb128 0x4
	.byte	0x1
	.string	"AdcPolling"
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.uaword	.LFB397
	.uaword	.LFE397
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35b
	.uleb128 0x5
	.uaword	.LVL0
	.uaword	0x47a
	.uaword	0x29e
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.uaword	.LVL1
	.uaword	0x47a
	.uaword	0x2b6
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.uaword	.LVL2
	.uaword	0x47a
	.uaword	0x2ce
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.uaword	.LVL3
	.uaword	0x47a
	.uaword	0x2e6
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.uaword	.LVL4
	.uaword	0x47a
	.uaword	0x2fe
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.uaword	.LVL5
	.uaword	0x47a
	.uaword	0x316
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.uaword	.LVL6
	.uaword	0x47a
	.uaword	0x32e
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.uaword	.LVL7
	.uaword	0x47a
	.uaword	0x346
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x7
	.uaword	.LVL8
	.uaword	0x47a
	.uleb128 0x6
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x6
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.string	"v_0_ABSPumpCurrent"
	.byte	0x3
	.uahalf	0x413
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"v_0_AIRPUMPRELAY"
	.byte	0x3
	.uahalf	0x417
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"v_0_AIRPUMPVALVE1"
	.byte	0x3
	.uahalf	0x41b
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"v_0_AIRPUMPVALVE2"
	.byte	0x3
	.uahalf	0x41f
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"v_0_AIRVALVE1"
	.byte	0x3
	.uahalf	0x423
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"v_0_AIRVALVE2"
	.byte	0x3
	.uahalf	0x427
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"v_0_AIRVALVE3"
	.byte	0x3
	.uahalf	0x42b
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"v_0_AIRVALVE4"
	.byte	0x3
	.uahalf	0x42f
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"v_0_AIRVALVE5"
	.byte	0x3
	.uahalf	0x433
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1e5
	.uaword	0x453
	.uleb128 0xa
	.uaword	0x23b
	.byte	0x7f
	.byte	0
	.uleb128 0xb
	.string	"vadcResultBufferCH2"
	.byte	0x1
	.byte	0xd
	.uaword	0x475
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	vadcResultBufferCH2
	.uleb128 0xc
	.uaword	0x443
	.uleb128 0xd
	.byte	0x1
	.string	"GetADCResult"
	.byte	0x4
	.byte	0xc
	.byte	0x1
	.uaword	0x1e5
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1b1
	.uleb128 0xe
	.uaword	0x1b1
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
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
	.extern	v_0_ABSPumpCurrent,STT_OBJECT,2
	.extern	v_0_AIRPUMPVALVE2,STT_OBJECT,4
	.extern	v_0_AIRPUMPVALVE1,STT_OBJECT,4
	.extern	v_0_AIRPUMPRELAY,STT_OBJECT,4
	.extern	v_0_AIRVALVE5,STT_OBJECT,4
	.extern	v_0_AIRVALVE4,STT_OBJECT,4
	.extern	v_0_AIRVALVE3,STT_OBJECT,4
	.extern	v_0_AIRVALVE2,STT_OBJECT,4
	.extern	v_0_AIRVALVE1,STT_OBJECT,4
	.extern	GetADCResult,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
