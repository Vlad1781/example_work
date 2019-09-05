	.file	"IfxI2c_I2c.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_I2CERROR,0,150
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_I2CTXE,0,151
#NO_APP
	.align 1
	.global	I2CHardFree
	.type	I2CHardFree, @function
I2CHardFree:
.LFB259:
	.file 1 "0_Src/0_AppSw/Tricore/I2C/IfxI2c_I2c.c"
	.loc 1 78 0
	.loc 1 79 0
	movh.a	%a15, 61452
	lea	%a15, [%a15] 20
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	.loc 1 80 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	ret
.LFE259:
	.size	I2CHardFree, .-I2CHardFree
	.align 1
	.global	ISR_I2CERROR
	.type	ISR_I2CERROR, @function
ISR_I2CERROR:
.LFB260:
	.loc 1 85 0
	.loc 1 86 0
	movh.a	%a15, hi:kkk
	ld.w	%d15, [%a15] lo:kkk
	add	%d15, 1
	st.w	[%a15] lo:kkk, %d15
	rslcx
	rfe
.LFE260:
	.size	ISR_I2CERROR, .-ISR_I2CERROR
	.align 1
	.global	IfxI2c_I2c_readstart
	.type	IfxI2c_I2c_readstart, @function
IfxI2c_I2c_readstart:
.LFB262:
	.loc 1 278 0
.LVL0:
	.loc 1 282 0
	ld.a	%a15, [%a4]0
	.loc 1 290 0
	movh.a	%a3, hi:I2CBusStatus
	.loc 1 284 0
	ld.bu	%d5, [%a4] 4
	movh.a	%a4, hi:kkk
.LVL1:
	ld.w	%d15, [%a4] lo:kkk
	.loc 1 290 0
	ld.w	%d2, [%a3] lo:I2CBusStatus
	.loc 1 282 0
	ld.a	%a15, [%a15]0
.LVL2:
	add	%d15, 1
	lea	%a2, [%a3] lo:I2CBusStatus
	.loc 1 290 0
	jz	%d2, .L6
.L7:
	ld.w	%d2, [%a2]0
	.loc 1 292 0
	mov	%d3, %d15
	add	%d15, 1
	.loc 1 290 0
	jnz	%d2, .L7
	st.w	[%a4] lo:kkk, %d3
.L6:
	.loc 1 305 0
	ld.w	%d2, [%a15] 112
	.loc 1 314 0
	or	%d15, %d5, 1
.LVL3:
	.loc 1 305 0
	or	%d2, %d2, 32
.LBB308:
.LBB309:
	.file 2 "./0_Src/4_McHal/Tricore/I2c/Std/IfxI2c.h"
	.loc 2 898 0
	lea	%a2, [%a15] -32768
	addih.a	%a2, %a2, 1
.LBE309:
.LBE308:
	.loc 1 305 0
	st.w	[%a15] 112, %d2
	.loc 1 306 0
	ld.w	%d2, [%a15] 112
	or	%d2, %d2, 8
	st.w	[%a15] 112, %d2
	.loc 1 307 0
	ld.w	%d2, [%a15] 112
	or	%d2, %d2, 16
	st.w	[%a15] 112, %d2
	.loc 1 308 0
	ld.w	%d2, [%a15] 132
	or	%d2, %d2, 32
	st.w	[%a15] 132, %d2
.LBB311:
.LBB312:
	.loc 2 879 0
	ld.w	%d2, [%a15] 52
	insert	%d2, %d2, 1, 0, 14
	st.w	[%a15] 52, %d2
.LVL4:
.LBE312:
.LBE311:
.LBB313:
.LBB314:
	.loc 2 861 0
	ld.w	%d2, [%a15] 44
	insert	%d4, %d2, %d4, 0, 14
.LVL5:
.LBE314:
.LBE313:
	.loc 1 327 0
	mov	%d2, 1
.LBB316:
.LBB315:
	.loc 2 861 0
	st.w	[%a15] 44, %d4
.LVL6:
.LBE315:
.LBE316:
.LBB317:
.LBB310:
	.loc 2 898 0
	st.w	[%a2]0, %d15
.LVL7:
.LBE310:
.LBE317:
.LBB318:
.LBB319:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LVL8:
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL9:
.LBE319:
.LBE318:
.LBB320:
.LBB321:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL10:
.LBE321:
.LBE320:
.LBB322:
.LBB323:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL11:
.LBE323:
.LBE322:
.LBB324:
.LBB325:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LBE325:
.LBE324:
	.loc 1 323 0
	mov	%d15, 2
	st.w	[%a3] lo:I2CBusStatus, %d15
	.loc 1 327 0
	ret
.LFE262:
	.size	IfxI2c_I2c_readstart, .-IfxI2c_I2c_readstart
	.align 1
	.global	ISR_I2CTXE
	.type	ISR_I2CTXE, @function
ISR_I2CTXE:
.LFB261:
	.loc 1 90 0
	.loc 1 91 0
	movh.a	%a15, hi:kkk
	ld.w	%d15, [%a15] lo:kkk
	.loc 1 95 0
	movh.a	%a3, hi:g_I2cBasic
	.loc 1 91 0
	add	%d15, 1
	.loc 1 95 0
	lea	%a3, [%a3] lo:g_I2cBasic
	.loc 1 96 0
	mov	%d2, 0
	.loc 1 91 0
	st.w	[%a15] lo:kkk, %d15
.LVL12:
	.loc 1 95 0
	ld.a	%a15, [%a3] 16
	.loc 1 90 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 96 0
	st.w	[%SP] 4, %d2
	.loc 1 95 0
	ld.a	%a15, [%a15]0
.LVL13:
.LBB326:
.LBB327:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
	and	%d15, %d15, 16
.LBE327:
.LBE326:
	.loc 1 102 0
	jnz	%d15, .L58
.LVL14:
.LBB328:
.LBB329:
	.loc 2 805 0
	ld.w	%d2, [%a15] 116
	and	%d2, %d2, 8
.LBE329:
.LBE328:
	.loc 1 112 0
	jnz	%d2, .L59
.LVL15:
.LBB330:
.LBB331:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE331:
.LBE330:
	.loc 1 124 0
	jz.t	%d15, 5, .L11
.LVL16:
	.loc 1 129 0
	movh.a	%a13, hi:I2CCurrentChannel
	ld.bu	%d3, [%a13] lo:I2CCurrentChannel
	movh.a	%a2, hi:diagcnt_TXEND
.LBB332:
.LBB333:
	.loc 2 603 0
	mov	%d15, 32
.LBE333:
.LBE332:
	.loc 1 129 0
	lea	%a2, [%a2] lo:diagcnt_TXEND
	addsc.a	%a2, %a2, %d3, 1
.LBB335:
.LBB334:
	.loc 2 603 0
	st.w	[%a15] 120, %d15
.LBE334:
.LBE335:
	.loc 1 129 0
	ld.h	%d15, [%a2]0
	.loc 1 132 0
	movh.a	%a12, hi:I2CBusStatus
	.loc 1 129 0
	add	%d15, 1
	st.h	[%a2]0, %d15
	.loc 1 130 0
	movh.a	%a2, hi:test_TXEND
	ld.w	%d15, [%a2] lo:test_TXEND
	add	%d15, 1
	st.w	[%a2] lo:test_TXEND, %d15
	.loc 1 132 0
	ld.w	%d15, [%a12] lo:I2CBusStatus
	jeq	%d15, 2, .L60
.LVL17:
.L16:
	.loc 1 244 0
	ld.w	%d15, [%a12] lo:I2CBusStatus
	jeq	%d15, 1, .L61
.L49:
	.loc 1 260 0
	ld.w	%d15, [%a12] lo:I2CBusStatus
	jeq	%d15, 4, .L62
.LVL18:
.L11:
	rslcx
	rfe
.LVL19:
.L59:
.LBB336:
.LBB337:
	.loc 2 603 0
	mov	%d2, 8
.LBE337:
.LBE336:
	.loc 1 115 0
	movh.a	%a2, hi:I2CCurrentChannel
	mov	%d3, 1
.LBB339:
.LBB338:
	.loc 2 603 0
	st.w	[%a15] 120, %d2
.LBE338:
.LBE339:
	.loc 1 115 0
	ld.bu	%d2, [%a2] lo:I2CCurrentChannel
	movh.a	%a2, hi:AccSensErr
	lea	%a2, [%a2] lo:AccSensErr
	addsc.a	%a2, %a2, %d2, 0
	st.b	[%a2]0, %d3
	.loc 1 116 0
	movh.a	%a2, hi:I2CBusStatus
	st.w	[%a2] lo:I2CBusStatus, %d15
	.loc 1 117 0
	ld.w	%d15, [%a15] 20
	or	%d15, %d15, 2
	st.w	[%a15] 20, %d15
	.loc 1 118 0
	movh.a	%a15, hi:diagcnt_AL
.LVL20:
	lea	%a15, [%a15] lo:diagcnt_AL
	addsc.a	%a15, %a15, %d2, 1
	ld.h	%d15, [%a15]0
	add	%d15, 1
	st.h	[%a15]0, %d15
	.loc 1 119 0
	movh.a	%a15, hi:test_al
	ld.w	%d15, [%a15] lo:test_al
	add	%d15, 1
	st.w	[%a15] lo:test_al, %d15
	rslcx
	rfe
.LVL21:
.L58:
.LBB340:
.LBB341:
	.loc 2 603 0
	mov	%d15, 16
.LBE341:
.LBE340:
	.loc 1 105 0
	movh.a	%a2, hi:I2CCurrentChannel
	ld.bu	%d3, [%a2] lo:I2CCurrentChannel
	movh.a	%a2, hi:AccSensErr
.LBB343:
.LBB342:
	.loc 2 603 0
	st.w	[%a15] 120, %d15
.LBE342:
.LBE343:
	.loc 1 105 0
	lea	%a2, [%a2] lo:AccSensErr
	mov	%d15, 1
	addsc.a	%a2, %a2, %d3, 0
	st.b	[%a2]0, %d15
	.loc 1 106 0
	movh.a	%a2, hi:I2CBusStatus
	st.w	[%a2] lo:I2CBusStatus, %d2
	.loc 1 107 0
	ld.w	%d15, [%a15] 20
	or	%d15, %d15, 2
	st.w	[%a15] 20, %d15
	.loc 1 108 0
	movh.a	%a15, hi:diagcnt_NACK
.LVL22:
	lea	%a15, [%a15] lo:diagcnt_NACK
	addsc.a	%a15, %a15, %d3, 1
	ld.h	%d15, [%a15]0
	add	%d15, 1
	st.h	[%a15]0, %d15
	.loc 1 109 0
	movh.a	%a15, hi:test_nack
	ld.w	%d15, [%a15] lo:test_nack
	add	%d15, 1
	st.w	[%a15] lo:test_nack, %d15
	rslcx
	rfe
.LVL23:
.L62:
	.loc 1 262 0
	mov	%d15, 0
	movh.a	%a15, hi:I2CBusStatus
.LVL24:
	.loc 1 263 0
	ld.bu	%d2, [%a13] lo:I2CCurrentChannel
	.loc 1 262 0
	st.w	[%a15] lo:I2CBusStatus, %d15
	.loc 1 263 0
	movh.a	%a15, hi:AccSensErr
	lea	%a15, [%a15] lo:AccSensErr
	addsc.a	%a15, %a15, %d2, 0
	st.b	[%a15]0, %d15
	rslcx
	rfe
.LVL25:
.L60:
.LBB344:
	.loc 1 135 0
	movh.a	%a2, hi:AccSensErr
	lea	%a2, [%a2] lo:AccSensErr
	addsc.a	%a2, %a2, %d3, 0
	lea	%a6, [%a15] -16384
	st.b	[%a2]0, %d2
	.loc 1 138 0
	st.w	[%a12] lo:I2CBusStatus, %d2
.LVL26:
.LBE344:
	.loc 1 97 0
	mov	%d5, 6
.LBB375:
	.loc 1 140 0
	mov	%d2, 0
.LBB345:
	.loc 1 154 0
	addih.a	%a6, %a6, 1
.LVL27:
.L21:
	.loc 1 142 0
	jlt	%d5, 4, .L17
.LVL28:
	.loc 1 154 0
	ld.w	%d15, [%a6]0
	st.w	[%SP] 4, %d15
.LBB346:
.LBB347:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LBE347:
.LBE346:
	.loc 1 145 0
	add	%d5, -4
.LVL29:
.LBB351:
.LBB348:
	.loc 2 597 0
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL30:
.LBE348:
.LBE351:
.LBB352:
.LBB353:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL31:
.LBE353:
.LBE352:
.LBB355:
.LBB356:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL32:
.LBE356:
.LBE355:
.LBB358:
.LBB359:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LVL33:
.LBE359:
.LBE358:
	.loc 1 144 0
	mov	%d15, 4
.LVL34:
.L18:
	add	%d4, %d15, -1
	cmovn	%d4, %d15, 0
	mov.a	%a2, %d4
	.loc 1 144 0 is_stmt 0 discriminator 3
	mov.a	%a4, 0
.LVL35:
.L20:
	mov.d	%d4, %a4
	.loc 1 162 0 is_stmt 1 discriminator 3
	lea	%a5, [%SP] 4
.LVL36:
	add.a	%a5, %a4
.LVL37:
	add	%d4, %d2
	ld.bu	%d15, [%a5]0
	addsc.a	%a5, %a3, %d4, 0
	.loc 1 160 0 discriminator 3
	add.a	%a4, 1
.LVL38:
	.loc 1 162 0 discriminator 3
	st.b	[%a5] 25, %d15
	.loc 1 160 0 discriminator 3
	loop	%a2, .L20
.LVL39:
.L19:
.LBE345:
	.loc 1 140 0 discriminator 2
	add	%d2, 4
.LVL40:
	ne	%d15, %d2, 8
	jnz	%d15, .L21
	movh.a	%a6, hi:acc_xyz
	lea	%a6, [%a6] lo:acc_xyz
	mov	%d15, 0
	.loc 1 171 0
	mov.aa	%a4, %a6
	mov.a	%a2, 9
.LVL41:
.L22:
	.loc 1 171 0 is_stmt 0 discriminator 3
	addsc.a	%a5, %a3, %d15, 0
	ld.bu	%d2, [%a5] 25
	addsc.a	%a5, %a6, %d15, 0
	.loc 1 169 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL42:
	.loc 1 171 0 discriminator 3
	st.b	[%a5]0, %d2
	.loc 1 169 0 discriminator 3
	loop	%a2, .L22
	.loc 1 174 0
	jz	%d3, .L63
	.loc 1 184 0
	jne	%d3, 1, .L30
	.loc 1 186 0
	ld.bu	%d3, [%a4] 1
	.loc 1 187 0
	ld.bu	%d2, [%a4] 3
	.loc 1 186 0
	sh	%d15, %d3, -4
.LVL43:
	ld.bu	%d3, [%a4]0
	.loc 1 188 0
	ld.bu	%d4, [%a4] 4
	.loc 1 186 0
	madd	%d3, %d15, %d3, 16
	.loc 1 187 0
	sh	%d15, %d2, -4
	ld.bu	%d2, [%a4] 2
	.loc 1 186 0
	movh.a	%a2, hi:xxx1
	.loc 1 187 0
	madd	%d2, %d15, %d2, 16
	.loc 1 188 0
	ld.bu	%d15, [%a4] 5
	.loc 1 186 0
	st.h	[%a2] lo:xxx1, %d3
	.loc 1 188 0
	sh	%d15, -4
	madd	%d15, %d15, %d4, 16
	.loc 1 187 0
	movh.a	%a2, hi:yyy1
	st.h	[%a2] lo:yyy1, %d2
	.loc 1 188 0
	movh.a	%a2, hi:zzz1
	st.h	[%a2] lo:zzz1, %d15
	.loc 1 190 0
	jz.t	%d3, 11, .L31
	.loc 1 190 0 is_stmt 0 discriminator 1
	mov	%d4, -2048
	or	%d3, %d4
	movh.a	%a2, hi:sxxx1
	st.h	[%a2] lo:sxxx1, %d3
.L32:
	.loc 1 191 0 is_stmt 1
	jz.t	%d2, 11, .L33
	.loc 1 191 0 is_stmt 0 discriminator 1
	mov	%d3, -2048
	or	%d2, %d3
	movh.a	%a2, hi:syyy1
	st.h	[%a2] lo:syyy1, %d2
.L34:
	.loc 1 192 0 is_stmt 1
	jz.t	%d15, 11, .L35
	.loc 1 192 0 is_stmt 0 discriminator 1
	mov	%d2, -2048
	or	%d15, %d2
	movh.a	%a2, hi:szzz1
	st.h	[%a2] lo:szzz1, %d15
	j	.L43
.LVL44:
.L17:
.LBB366:
	.loc 1 154 0 is_stmt 1
	ld.w	%d4, [%a6]0
	st.w	[%SP] 4, %d4
.LBB361:
.LBB349:
	.loc 2 597 0
	ld.w	%d4, [%a15] 140
.LBE349:
.LBE361:
	.loc 1 149 0
	mov	%d15, %d5
.LVL45:
.LBB362:
.LBB350:
	.loc 2 597 0
	or	%d4, %d4, 1
	st.w	[%a15] 140, %d4
.LVL46:
.LBE350:
.LBE362:
.LBB363:
.LBB354:
	.loc 2 609 0
	ld.w	%d4, [%a15] 140
	or	%d4, %d4, 2
	st.w	[%a15] 140, %d4
.LVL47:
.LBE354:
.LBE363:
.LBB364:
.LBB357:
	.loc 2 591 0
	ld.w	%d4, [%a15] 140
	or	%d4, %d4, 4
	st.w	[%a15] 140, %d4
.LVL48:
.LBE357:
.LBE364:
.LBB365:
.LBB360:
	.loc 2 579 0
	ld.w	%d4, [%a15] 140
	or	%d4, %d4, 8
	st.w	[%a15] 140, %d4
.LVL49:
.LBE360:
.LBE365:
	.loc 1 160 0
	jz	%d5, .L19
.LVL50:
	.loc 1 150 0
	mov	%d5, 0
.LVL51:
	j	.L18
.LVL52:
.L63:
.LBE366:
	.loc 1 176 0
	ld.bu	%d3, [%a4] 1
	.loc 1 177 0
	ld.bu	%d2, [%a4] 3
	.loc 1 176 0
	sh	%d15, %d3, -4
.LVL53:
	ld.bu	%d3, [%a4]0
	.loc 1 178 0
	ld.bu	%d4, [%a4] 4
	.loc 1 176 0
	madd	%d3, %d15, %d3, 16
	.loc 1 177 0
	sh	%d15, %d2, -4
	ld.bu	%d2, [%a4] 2
	.loc 1 176 0
	movh.a	%a2, hi:xxx
	.loc 1 177 0
	madd	%d2, %d15, %d2, 16
	.loc 1 178 0
	ld.bu	%d15, [%a4] 5
	.loc 1 176 0
	st.h	[%a2] lo:xxx, %d3
	.loc 1 178 0
	sh	%d15, -4
	madd	%d15, %d15, %d4, 16
	.loc 1 177 0
	movh.a	%a2, hi:yyy
	st.h	[%a2] lo:yyy, %d2
	.loc 1 178 0
	movh.a	%a2, hi:zzz
	st.h	[%a2] lo:zzz, %d15
	.loc 1 180 0
	jz.t	%d3, 11, .L24
	.loc 1 180 0 is_stmt 0 discriminator 1
	mov	%d4, -2048
	or	%d3, %d4
	movh.a	%a2, hi:sxxx
	st.h	[%a2] lo:sxxx, %d3
.L25:
	.loc 1 181 0 is_stmt 1
	jz.t	%d2, 11, .L26
	.loc 1 181 0 is_stmt 0 discriminator 1
	mov	%d3, -2048
	or	%d2, %d3
	movh.a	%a2, hi:syyy
	st.h	[%a2] lo:syyy, %d2
.L27:
	.loc 1 182 0 is_stmt 1
	jz.t	%d15, 11, .L28
	.loc 1 182 0 is_stmt 0 discriminator 1
	mov	%d2, -2048
	or	%d15, %d2
	movh.a	%a2, hi:szzz
	st.h	[%a2] lo:szzz, %d15
.L43:
.LVL54:
.LBB367:
.LBB368:
	.loc 2 597 0 is_stmt 1
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL55:
.LBE368:
.LBE367:
.LBB369:
.LBB370:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL56:
.LBE370:
.LBE369:
.LBB371:
.LBB372:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL57:
.LBE372:
.LBE371:
.LBB373:
.LBB374:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LBE374:
.LBE373:
	.loc 1 237 0
	ld.w	%d15, [%a15] 20
	or	%d15, %d15, 2
	st.w	[%a15] 20, %d15
	j	.L16
.LVL58:
.L61:
.LBE375:
	.loc 1 245 0
	mov	%d15, 0
	movh.a	%a2, hi:I2CBusStatus
	.loc 1 256 0
	movh.a	%a4, hi:g_I2cBasic+16
	.loc 1 245 0
	st.w	[%a2] lo:I2CBusStatus, %d15
.LVL59:
.LBB376:
.LBB377:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LBE377:
.LBE376:
	.loc 1 256 0
	lea	%a4, [%a4] lo:g_I2cBasic+16
.LBB380:
.LBB378:
	.loc 2 597 0
	or	%d15, %d15, 1
.LBE378:
.LBE380:
	.loc 1 256 0
	lea	%a5, [%a4] 9
	mov	%d4, 6
.LBB381:
.LBB379:
	.loc 2 597 0
	st.w	[%a15] 140, %d15
.LVL60:
.LBE379:
.LBE381:
.LBB382:
.LBB383:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL61:
.LBE383:
.LBE382:
.LBB384:
.LBB385:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL62:
.LBE385:
.LBE384:
.LBB386:
.LBB387:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LBE387:
.LBE386:
	.loc 1 256 0
	call	IfxI2c_I2c_readstart
.LVL63:
	j	.L49
.LVL64:
.L26:
.LBB388:
	.loc 1 181 0 discriminator 2
	movh.a	%a2, hi:syyy
	st.h	[%a2] lo:syyy, %d2
	j	.L27
.L24:
	.loc 1 180 0 discriminator 2
	movh.a	%a2, hi:sxxx
	st.h	[%a2] lo:sxxx, %d3
	j	.L25
.L28:
	.loc 1 182 0 discriminator 2
	movh.a	%a2, hi:szzz
	st.h	[%a2] lo:szzz, %d15
	j	.L43
.LVL65:
.L30:
	.loc 1 194 0
	jne	%d3, 2, .L37
	.loc 1 196 0
	ld.bu	%d3, [%a4] 1
	.loc 1 197 0
	ld.bu	%d2, [%a4] 3
	.loc 1 196 0
	sh	%d15, %d3, -4
.LVL66:
	ld.bu	%d3, [%a4]0
	.loc 1 198 0
	ld.bu	%d4, [%a4] 4
	.loc 1 196 0
	madd	%d3, %d15, %d3, 16
	.loc 1 197 0
	sh	%d15, %d2, -4
	ld.bu	%d2, [%a4] 2
	.loc 1 196 0
	movh.a	%a2, hi:xxx2
	.loc 1 197 0
	madd	%d2, %d15, %d2, 16
	.loc 1 198 0
	ld.bu	%d15, [%a4] 5
	.loc 1 196 0
	st.h	[%a2] lo:xxx2, %d3
	.loc 1 198 0
	sh	%d15, -4
	madd	%d15, %d15, %d4, 16
	.loc 1 197 0
	movh.a	%a2, hi:yyy2
	st.h	[%a2] lo:yyy2, %d2
	.loc 1 198 0
	movh.a	%a2, hi:zzz2
	st.h	[%a2] lo:zzz2, %d15
	.loc 1 200 0
	jz.t	%d3, 11, .L38
	.loc 1 200 0 is_stmt 0 discriminator 1
	mov	%d4, -2048
	or	%d3, %d4
	movh.a	%a2, hi:sxxx2
	st.h	[%a2] lo:sxxx2, %d3
.L39:
	.loc 1 201 0 is_stmt 1
	jz.t	%d2, 11, .L40
	.loc 1 201 0 is_stmt 0 discriminator 1
	mov	%d3, -2048
	or	%d2, %d3
	movh.a	%a2, hi:syyy2
	st.h	[%a2] lo:syyy2, %d2
.L41:
	.loc 1 202 0 is_stmt 1
	jz.t	%d15, 11, .L42
	.loc 1 202 0 is_stmt 0 discriminator 1
	mov	%d2, -2048
	or	%d15, %d2
	movh.a	%a2, hi:szzz2
	st.h	[%a2] lo:szzz2, %d15
	j	.L43
.L40:
	.loc 1 201 0 is_stmt 1 discriminator 2
	movh.a	%a2, hi:syyy2
	st.h	[%a2] lo:syyy2, %d2
	j	.L41
.L38:
	.loc 1 200 0 discriminator 2
	movh.a	%a2, hi:sxxx2
	st.h	[%a2] lo:sxxx2, %d3
	j	.L39
.L42:
	.loc 1 202 0 discriminator 2
	movh.a	%a2, hi:szzz2
	st.h	[%a2] lo:szzz2, %d15
	j	.L43
.L31:
	.loc 1 190 0 discriminator 2
	movh.a	%a2, hi:sxxx1
	st.h	[%a2] lo:sxxx1, %d3
	j	.L32
.L33:
	.loc 1 191 0 discriminator 2
	movh.a	%a2, hi:syyy1
	st.h	[%a2] lo:syyy1, %d2
	j	.L34
.L35:
	.loc 1 192 0 discriminator 2
	movh.a	%a2, hi:szzz1
	st.h	[%a2] lo:szzz1, %d15
	j	.L43
.LVL67:
.L37:
	.loc 1 204 0
	jne	%d3, 3, .L43
	.loc 1 206 0
	ld.bu	%d3, [%a4] 1
	.loc 1 207 0
	ld.bu	%d2, [%a4] 3
	.loc 1 206 0
	sh	%d15, %d3, -4
.LVL68:
	ld.bu	%d3, [%a4]0
	.loc 1 208 0
	ld.bu	%d4, [%a4] 4
	.loc 1 206 0
	madd	%d3, %d15, %d3, 16
	.loc 1 207 0
	sh	%d15, %d2, -4
	ld.bu	%d2, [%a4] 2
	.loc 1 206 0
	movh.a	%a2, hi:xxx3
	.loc 1 207 0
	madd	%d2, %d15, %d2, 16
	.loc 1 208 0
	ld.bu	%d15, [%a4] 5
	.loc 1 206 0
	st.h	[%a2] lo:xxx3, %d3
	.loc 1 208 0
	sh	%d15, -4
	madd	%d15, %d15, %d4, 16
	.loc 1 207 0
	movh.a	%a2, hi:yyy3
	st.h	[%a2] lo:yyy3, %d2
	.loc 1 208 0
	movh.a	%a2, hi:zzz3
	st.h	[%a2] lo:zzz3, %d15
	.loc 1 210 0
	jz.t	%d3, 11, .L44
	.loc 1 210 0 is_stmt 0 discriminator 1
	mov	%d4, -2048
	or	%d3, %d4
	movh.a	%a2, hi:sxxx3
	st.h	[%a2] lo:sxxx3, %d3
.L45:
	.loc 1 211 0 is_stmt 1
	jz.t	%d2, 11, .L46
	.loc 1 211 0 is_stmt 0 discriminator 1
	mov	%d3, -2048
	or	%d2, %d3
	movh.a	%a2, hi:syyy3
	st.h	[%a2] lo:syyy3, %d2
.L47:
	.loc 1 212 0 is_stmt 1
	jz.t	%d15, 11, .L48
	.loc 1 212 0 is_stmt 0 discriminator 1
	mov	%d2, -2048
	or	%d15, %d2
	movh.a	%a2, hi:szzz3
	st.h	[%a2] lo:szzz3, %d15
	j	.L43
.L46:
	.loc 1 211 0 is_stmt 1 discriminator 2
	movh.a	%a2, hi:syyy3
	st.h	[%a2] lo:syyy3, %d2
	j	.L47
.L44:
	.loc 1 210 0 discriminator 2
	movh.a	%a2, hi:sxxx3
	st.h	[%a2] lo:sxxx3, %d3
	j	.L45
.L48:
	.loc 1 212 0 discriminator 2
	movh.a	%a2, hi:szzz3
	st.h	[%a2] lo:szzz3, %d15
	j	.L43
.LBE388:
.LFE261:
	.size	ISR_I2CTXE, .-ISR_I2CTXE
	.align 1
	.global	IfxI2c_I2c_writereg
	.type	IfxI2c_I2c_writereg, @function
IfxI2c_I2c_writereg:
.LFB263:
	.loc 1 341 0
.LVL69:
	.loc 1 343 0
	ld.a	%a15, [%a4]0
.LBB389:
.LBB390:
	.loc 2 573 0
	mov	%d15, 127
.LBE390:
.LBE389:
	.loc 1 341 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 343 0
	ld.a	%a3, [%a15]0
.LVL70:
.LBB392:
.LBB391:
	.loc 2 573 0
	st.w	[%a3] 120, %d15
.LVL71:
.LBE391:
.LBE392:
.LBB393:
.LBB394:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a3] 104, %d15
.LBE394:
.LBE393:
	.loc 1 355 0
	ld.w	%d15, [%a3] 112
	or	%d15, %d15, 32
	st.w	[%a3] 112, %d15
	.loc 1 356 0
	ld.w	%d15, [%a3] 112
	or	%d15, %d15, 8
	st.w	[%a3] 112, %d15
	.loc 1 357 0
	ld.w	%d15, [%a3] 112
	or	%d15, %d15, 16
	st.w	[%a3] 112, %d15
	.loc 1 358 0
	ld.w	%d15, [%a3] 132
	or	%d15, %d15, 32
	st.w	[%a3] 132, %d15
	.loc 1 361 0
	jlez	%d4, .L65
.LVL72:
.LBB395:
.LBB396:
.LBB397:
	.loc 2 879 0
	ld.w	%d15, [%a3] 52
.LBE397:
.LBE396:
	.loc 1 368 0
	addi	%d3, %d4, 1
.LBB400:
.LBB398:
	.loc 2 879 0
	insert	%d15, %d15, %d3, 0, 14
	lea	%a6, [%a3] -32768
.LBE398:
.LBE400:
.LBE395:
	.loc 1 346 0
	mov	%d2, 0
.LBB416:
	.loc 1 374 0
	mov	%d6, 0
.LBB401:
.LBB399:
	.loc 2 879 0
	st.w	[%a3] 52, %d15
.LVL73:
.LBE399:
.LBE401:
.LBB402:
.LBB403:
	.loc 2 898 0
	addih.a	%a6, %a6, 1
.LVL74:
.L66:
.LBE403:
.LBE402:
	.loc 1 372 0
	jlt	%d3, 4, .L67
.LVL75:
	.loc 1 375 0
	add	%d3, -4
.LVL76:
	.loc 1 383 0
	st.w	[%SP] 4, %d6
.LVL77:
	.loc 1 374 0
	mov	%d15, 4
.LVL78:
.L68:
	add	%d5, %d15, -1
	cmovn	%d5, %d15, 0
	mov.a	%a15, %d5
	.loc 1 374 0 is_stmt 0 discriminator 3
	mov.a	%a2, 0
.LVL79:
.L70:
	addsc.a	%a4, %a2, %d2, 0
	add.a	%a4, %a5
	.loc 1 395 0 is_stmt 1 discriminator 3
	ld.bu	%d15, [%a4]0
	lea	%a4, [%SP] 4
.LVL80:
	add.a	%a4, %a2
.LVL81:
	st.b	[%a4]0, %d15
	.loc 1 385 0 discriminator 3
	add.a	%a2, 1
.LVL82:
	loop	%a15, .L70
	ld.w	%d5, [%SP] 4
.LVL83:
.L69:
.LBB405:
.LBB406:
	.loc 2 597 0
	ld.w	%d15, [%a3] 140
.LBE406:
.LBE405:
	.loc 1 370 0
	add	%d2, 4
.LVL84:
.LBB408:
.LBB407:
	.loc 2 597 0
	or	%d15, %d15, 1
	st.w	[%a3] 140, %d15
.LVL85:
.LBE407:
.LBE408:
.LBB409:
.LBB410:
	.loc 2 609 0
	ld.w	%d15, [%a3] 140
	or	%d15, %d15, 2
	st.w	[%a3] 140, %d15
.LVL86:
.LBE410:
.LBE409:
.LBB411:
.LBB412:
	.loc 2 591 0
	ld.w	%d15, [%a3] 140
	or	%d15, %d15, 4
	st.w	[%a3] 140, %d15
.LVL87:
.LBE412:
.LBE411:
.LBB413:
.LBB414:
	.loc 2 579 0
	ld.w	%d15, [%a3] 140
	or	%d15, %d15, 8
	st.w	[%a3] 140, %d15
.LVL88:
.LBE414:
.LBE413:
.LBB415:
.LBB404:
	.loc 2 898 0
	st.w	[%a6]0, %d5
.LBE404:
.LBE415:
	.loc 1 370 0
	jlt.u	%d2, %d4, .L66
	.loc 1 412 0
	mov	%d15, 1
	movh.a	%a15, hi:I2CBusStatus
	st.w	[%a15] lo:I2CBusStatus, %d15
	ret
.LVL89:
.L67:
	.loc 1 383 0
	st.w	[%SP] 4, %d6
	.loc 1 379 0
	mov	%d15, %d3
.LVL90:
	.loc 1 385 0
	mov	%d5, 0
	jz	%d3, .L69
.LVL91:
	.loc 1 380 0
	mov	%d3, 0
.LVL92:
	j	.L68
.LVL93:
.L65:
.LBE416:
	.loc 1 416 0
	ret
.LFE263:
	.size	IfxI2c_I2c_writereg, .-IfxI2c_I2c_writereg
	.align 1
	.global	IfxI2c_I2c_initConfig
	.type	IfxI2c_I2c_initConfig, @function
IfxI2c_I2c_initConfig:
.LFB264:
	.loc 1 424 0
.LVL94:
	.loc 1 426 0
	movh	%d15, 18627
	addi	%d15, %d15, 20480
	.loc 1 425 0
	st.a	[%a4]0, %a5
	.loc 1 426 0
	st.w	[%a4] 4, %d15
	.loc 1 427 0
	mov	%d15, 0
	st.w	[%a4] 8, %d15
	ret
.LFE264:
	.size	IfxI2c_I2c_initConfig, .-IfxI2c_I2c_initConfig
	.align 1
	.global	IfxI2c_I2c_initDevice
	.type	IfxI2c_I2c_initDevice, @function
IfxI2c_I2c_initDevice:
.LFB265:
	.loc 1 432 0
.LVL95:
	.loc 1 433 0
	ld.w	%d15, [%a5]0
	st.w	[%a4]0, %d15
	.loc 1 434 0
	ld.bu	%d15, [%a5] 4
	st.b	[%a4] 4, %d15
	ret
.LFE265:
	.size	IfxI2c_I2c_initDevice, .-IfxI2c_I2c_initDevice
	.align 1
	.global	IfxI2c_I2c_initDeviceConfig
	.type	IfxI2c_I2c_initDeviceConfig, @function
IfxI2c_I2c_initDeviceConfig:
.LFB266:
	.loc 1 439 0
.LVL96:
	.loc 1 441 0
	mov	%d15, -1
	.loc 1 440 0
	st.a	[%a4]0, %a5
	.loc 1 441 0
	st.b	[%a4] 4, %d15
	ret
.LFE266:
	.size	IfxI2c_I2c_initDeviceConfig, .-IfxI2c_I2c_initDeviceConfig
	.align 1
	.global	IfxI2c_I2c_initModule
	.type	IfxI2c_I2c_initModule, @function
IfxI2c_I2c_initModule:
.LFB267:
	.loc 1 446 0
.LVL97:
	.loc 1 447 0
	ld.a	%a15, [%a5]0
.LVL98:
.LBB417:
.LBB418:
	.loc 2 885 0
	mov	%d15, 0
.LBE418:
.LBE417:
	.loc 1 446 0
	mov.aa	%a12, %a4
	.loc 1 448 0
	st.a	[%a4]0, %a15
	.loc 1 450 0
	mov.aa	%a4, %a15
.LVL99:
	.loc 1 446 0
	mov.aa	%a13, %a5
	.loc 1 450 0
	call	IfxI2c_enableModule
.LVL100:
	.loc 1 452 0
	mov.aa	%a4, %a15
.LBB420:
.LBB419:
	.loc 2 885 0
	st.w	[%a15] 16, %d15
.LBE419:
.LBE420:
	.loc 1 452 0
	call	IfxI2c_configureAsMaster
.LVL101:
	.loc 1 453 0
	ld.w	%d4, [%a13] 4
	mov.aa	%a4, %a15
	call	IfxI2c_setBaudrate
.LVL102:
	.loc 1 454 0
	ld.a	%a2, [%a13] 8
	ld.a	%a4, [%a2]0
	ld.a	%a5, [%a2] 4
	ld.w	%d4, [%a2] 8
	call	IfxI2c_initSclSdaPin
.LVL103:
.LBB421:
.LBB422:
	.loc 2 849 0
	mov	%d2, 1
.LBE422:
.LBE421:
	.loc 1 456 0
	mov.aa	%a4, %a15
.LBB424:
.LBB423:
	.loc 2 849 0
	st.w	[%a15] 16, %d2
.LBE423:
.LBE424:
	.loc 1 456 0
	call	IfxI2c_getBaudrate
.LVL104:
	st.w	[%a12] 12, %d2
.LVL105:
.LBB425:
.LBB426:
	.loc 2 730 0
	ld.w	%d2, [%a15] 36
.LBE426:
.LBE425:
	.loc 1 458 0
	st.w	[%a12] 8, %d15
.LBB428:
.LBB427:
	.loc 2 730 0
	and	%d2, %d2, 3
	st.w	[%a12] 4, %d2
.LBE427:
.LBE428:
	.loc 1 458 0
	ret
.LFE267:
	.size	IfxI2c_I2c_initModule, .-IfxI2c_I2c_initModule
	.align 1
	.global	IfxI2c_I2c_read
	.type	IfxI2c_I2c_read, @function
IfxI2c_I2c_read:
.LFB268:
	.loc 1 467 0
.LVL106:
	.loc 1 469 0
	ld.a	%a2, [%a4]0
	.loc 1 473 0
	mov	%d15, 0
	.loc 1 467 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 469 0
	ld.a	%a15, [%a2]0
.LVL107:
	.loc 1 473 0
	st.w	[%SP] 4, %d15
	.loc 1 471 0
	ld.bu	%d2, [%a4] 4
.LVL108:
.LBB429:
.LBB430:
	.loc 2 556 0
	ld.w	%d15, [%a15] 36
	and	%d15, %d15, 3
	jnz	%d15, .L154
.LVL109:
.LBE430:
.LBE429:
.LBB431:
.LBB432:
	.loc 2 573 0
	mov	%d15, 127
.LBE432:
.LBE431:
.LBB434:
.LBB435:
	.loc 2 898 0
	lea	%a2, [%a15] -32768
	addih.a	%a2, %a2, 1
.LBE435:
.LBE434:
.LBB437:
.LBB433:
	.loc 2 573 0
	st.w	[%a15] 120, %d15
.LVL110:
.LBE433:
.LBE437:
.LBB438:
.LBB439:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LBE439:
.LBE438:
	.loc 1 492 0
	or	%d15, %d2, 1
.LVL111:
.LBB440:
.LBB441:
	.loc 2 879 0
	ld.w	%d2, [%a15] 52
.LVL112:
	insert	%d2, %d2, 1, 0, 14
	st.w	[%a15] 52, %d2
.LVL113:
.LBE441:
.LBE440:
.LBB442:
.LBB443:
	.loc 2 861 0
	ld.w	%d2, [%a15] 44
	insert	%d2, %d2, %d4, 0, 14
	st.w	[%a15] 44, %d2
.LVL114:
.LBE443:
.LBE442:
.LBB444:
.LBB436:
	.loc 2 898 0
	st.w	[%a2]0, %d15
.LVL115:
.LBE436:
.LBE444:
.LBB445:
.LBB446:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LVL116:
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL117:
.LBE446:
.LBE445:
.LBB447:
.LBB448:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL118:
.LBE448:
.LBE447:
.LBB449:
.LBB450:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL119:
.LBE450:
.LBE449:
.LBB451:
.LBB452:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.L86:
.LBE452:
.LBE451:
	.loc 1 502 0 discriminator 1
	ld.w	%d15, [%a15] 112
	jnz.t	%d15, 0, .L86
	.loc 1 506 0
	ld.w	%d15, [%a15] 100
	jz	%d15, .L155
.LVL120:
.L151:
.LBB453:
.LBB454:
.LBB455:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL121:
.LBE455:
.LBE454:
	.loc 1 659 0
	mov	%d15, 4
.LVL122:
.L88:
	mov.aa	%a12, %a4
.LVL123:
.LBE453:
	.loc 1 663 0
	mov.aa	%a4, %a15
.LVL124:
	call	IfxI2c_releaseBus
.LVL125:
.LBB529:
.LBB530:
	.loc 2 730 0
	ld.w	%d2, [%a15] 36
.LBE530:
.LBE529:
	.loc 1 664 0
	ld.a	%a2, [%a12]0
.LVL126:
.LBB533:
.LBB531:
	.loc 2 730 0
	and	%d2, %d2, 3
.LBE531:
.LBE533:
	.loc 1 665 0
	st.w	[%a2] 8, %d15
.LBB534:
.LBB532:
	.loc 2 730 0
	st.w	[%a2] 4, %d2
.LBE532:
.LBE534:
	.loc 1 666 0
	mov	%d2, %d15
	ret
.LVL127:
.L154:
.LBB535:
.LBB536:
	.loc 2 730 0
	ld.w	%d15, [%a15] 36
.LBE536:
.LBE535:
	.loc 1 484 0
	mov	%d2, 3
.LBB538:
.LBB537:
	.loc 2 730 0
	and	%d15, %d15, 3
	st.w	[%a2] 4, %d15
.LVL128:
.LBE537:
.LBE538:
	.loc 1 483 0
	mov	%d15, 3
	st.w	[%a2] 8, %d15
	.loc 1 484 0
	ret
.LVL129:
.L155:
.LBB539:
.LBB540:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE540:
.LBE539:
	.loc 1 511 0
	jz.t	%d15, 3, .L89
.LVL130:
.LBB541:
.LBB542:
	.loc 2 603 0
	mov	%d15, 8
	st.w	[%a15] 120, %d15
.LVL131:
.LBE542:
.LBE541:
	.loc 1 514 0
	mov	%d15, 2
	j	.L88
.LVL132:
.L89:
.LBB543:
.LBB544:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE544:
.LBE543:
	.loc 1 516 0
	jnz.t	%d15, 4, .L156
	.loc 1 468 0
	mov	%d15, 0
	.loc 1 521 0
	jlez	%d4, .L88
.LBB545:
	.loc 1 524 0
	lt	%d15, %d4, 33
.LBE545:
	.loc 1 474 0
	mov	%d3, %d4
.LBB546:
	.loc 1 524 0
	jnz	%d15, .L138
.LVL133:
.LBB456:
.LBB457:
.LBB458:
.LBB459:
.LBB460:
.LBB461:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 545 0
#APP
	# 545 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d7, LO:0xFE2C
	# 0 "" 2
.LVL134:
#NO_APP
.LBE461:
	.loc 3 546 0
	extr.u	%d7, %d7, 15, 1
.LVL135:
.LBE460:
.LBE459:
	.loc 3 554 0
#APP
	# 554 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB462:
.LBB463:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 4 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL136:
#NO_APP
.LBE463:
.LBE462:
.LBE458:
.LBE457:
.LBB464:
.LBB465:
	.loc 1 551 0
	lea	%a12, [%a15] -16384
.LBE465:
.LBE464:
	.loc 1 529 0
	mov	%d5, 0
.LBB480:
.LBB474:
	.loc 1 551 0
	addih.a	%a12, %a12, 1
.LVL137:
.L101:
.LBE474:
	.loc 1 531 0
	jlt	%d3, 4, .L92
.LVL138:
	.loc 1 534 0
	add	%d3, -4
.LVL139:
	.loc 1 533 0
	mov	%d6, 4
.LVL140:
.L94:
	.loc 1 544 0 discriminator 1
	ld.w	%d15, [%a15] 128
.LVL141:
	jz	%d15, .L94
	.loc 1 549 0
	and	%d2, %d15, 15
	jz	%d2, .L95
.LBB475:
	.loc 1 551 0
	ld.w	%d2, [%a12]0
	mov.a	%a2, %d6
	st.w	[%SP] 4, %d2
.LVL142:
	.loc 1 554 0
	mov.a	%a3, 0
	add.a	%a2, -1
	jz	%d6, .L97
.LVL143:
.L131:
	addsc.a	%a7, %a3, %d5, 0
	.loc 1 556 0 discriminator 3
	lea	%a6, [%SP] 4
.LVL144:
	add.a	%a6, %a3
.LVL145:
	add.a	%a7, %a5
	ld.bu	%d2, [%a6]0
	st.b	[%a7]0, %d2
	.loc 1 554 0 discriminator 3
	add.a	%a3, 1
.LVL146:
	loop	%a2, .L131
.LVL147:
.L97:
.LBB466:
.LBB467:
	.loc 2 597 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 1
	st.w	[%a15] 140, %d2
.LVL148:
.LBE467:
.LBE466:
.LBB468:
.LBB469:
	.loc 2 609 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 2
	st.w	[%a15] 140, %d2
.LVL149:
.LBE469:
.LBE468:
.LBB470:
.LBB471:
	.loc 2 591 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 4
	st.w	[%a15] 140, %d2
.LVL150:
.LBE471:
.LBE470:
.LBB472:
.LBB473:
	.loc 2 579 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 8
	st.w	[%a15] 140, %d2
.LVL151:
.L95:
.LBE473:
.LBE472:
.LBE475:
	.loc 1 566 0
	jnz.t	%d15, 5, .L157
	.loc 1 573 0
	jnz.t	%d15, 4, .L158
.LBE480:
	.loc 1 529 0 discriminator 2
	add	%d5, 4
.LVL152:
	jlt.u	%d5, %d4, .L101
.LBE456:
.LBE546:
	.loc 1 468 0
	mov	%d15, 0
.LVL153:
.L99:
.LBB547:
.LBB489:
.LBB481:
.LBB482:
	.loc 3 767 0
	jz	%d7, .L103
	.loc 3 769 0
#APP
	# 769 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L103:
.LVL154:
.LBE482:
.LBE481:
.LBB483:
.LBB484:
	.loc 2 805 0 discriminator 1
	ld.w	%d2, [%a15] 116
.LBE484:
.LBE483:
	.loc 1 584 0 discriminator 1
	jz.t	%d2, 5, .L103
.LVL155:
.LBB485:
.LBB486:
	.loc 2 603 0
	mov	%d2, 32
	st.w	[%a15] 120, %d2
	j	.L104
.LVL156:
.L138:
.LBE486:
.LBE485:
.LBE489:
.LBB490:
.LBB491:
.LBB492:
	.loc 2 805 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE492:
.LBE491:
	.loc 1 592 0 discriminator 1
	jz.t	%d15, 5, .L138
.LVL157:
.LBB493:
.LBB494:
	.loc 2 603 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LBE494:
.LBE493:
	.loc 1 599 0
	ld.w	%d2, [%a15] 128
.LVL158:
	.loc 1 601 0
	jz.t	%d2, 5, .L105
.LVL159:
.LBB495:
.LBB496:
	.loc 2 573 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
.LVL160:
.LBE496:
.LBE495:
	.loc 1 607 0
	mov	%d15, 4
	jz.t	%d2, 4, .L104
.LVL161:
.L113:
.LBB497:
.LBB498:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL162:
	mov	%d15, 4
.LVL163:
.L104:
.LBE498:
.LBE497:
.LBE490:
	.loc 1 648 0
	ld.w	%d2, [%a15] 128
.LVL164:
	.loc 1 650 0
	jz.t	%d2, 5, .L111
.LVL165:
.LBB523:
.LBB524:
	.loc 2 573 0
	mov	%d15, 127
.LVL166:
	st.w	[%a15] 120, %d15
.LVL167:
.LBE524:
.LBE523:
	.loc 1 653 0
	mov	%d15, 4
.LVL168:
.L111:
	.loc 1 656 0
	jz.t	%d2, 4, .L88
	j	.L151
.LVL169:
.L156:
.LBE547:
.LBB548:
.LBB549:
	.loc 2 603 0
	mov	%d15, 16
	st.w	[%a15] 120, %d15
.LVL170:
.LBE549:
.LBE548:
	.loc 1 519 0
	mov	%d15, 1
	j	.L88
.LVL171:
.L92:
.LBB550:
.LBB525:
.LBB487:
	.loc 1 538 0
	mov	%d6, %d3
.LVL172:
	.loc 1 539 0
	mov	%d3, 0
	j	.L94
.LVL173:
.L105:
.LBE487:
.LBE525:
.LBB526:
	.loc 1 607 0
	jnz.t	%d2, 4, .L113
.LVL174:
	lea	%a12, [%a15] -16384
.LBB499:
	.loc 1 618 0
	mov	%d2, 0
.LVL175:
.LBB500:
	.loc 1 632 0
	addih.a	%a12, %a12, 1
.LVL176:
.L110:
	.loc 1 620 0
	jlt	%d3, 4, .L106
.LVL177:
	.loc 1 632 0
	ld.w	%d15, [%a12]0
	st.w	[%SP] 4, %d15
.LBB501:
.LBB502:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LBE502:
.LBE501:
	.loc 1 623 0
	add	%d3, -4
.LVL178:
.LBB506:
.LBB503:
	.loc 2 597 0
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL179:
.LBE503:
.LBE506:
.LBB507:
.LBB508:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL180:
.LBE508:
.LBE507:
.LBB510:
.LBB511:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL181:
.LBE511:
.LBE510:
.LBB513:
.LBB514:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LVL182:
.LBE514:
.LBE513:
	.loc 1 622 0
	mov	%d15, 4
.LVL183:
.L107:
	add	%d5, %d15, -1
	cmovn	%d5, %d15, 0
	mov.a	%a2, %d5
	.loc 1 622 0 is_stmt 0 discriminator 3
	mov.a	%a3, 0
.LVL184:
.L109:
	addsc.a	%a7, %a3, %d2, 0
	.loc 1 640 0 is_stmt 1 discriminator 3
	lea	%a6, [%SP] 4
.LVL185:
	add.a	%a6, %a3
.LVL186:
	add.a	%a7, %a5
	ld.bu	%d15, [%a6]0
	st.b	[%a7]0, %d15
	.loc 1 638 0 discriminator 3
	add.a	%a3, 1
.LVL187:
	loop	%a2, .L109
.LVL188:
.L108:
.LBE500:
	.loc 1 618 0 discriminator 2
	add	%d2, 4
.LVL189:
	jlt.u	%d2, %d4, .L110
.LBE499:
.LBE526:
.LBE550:
	.loc 1 468 0
	mov	%d15, 0
.LBB551:
.LBB527:
.LBB522:
	j	.L104
.L106:
.LBB521:
	.loc 1 632 0
	ld.w	%d5, [%a12]0
	st.w	[%SP] 4, %d5
.LBB516:
.LBB504:
	.loc 2 597 0
	ld.w	%d5, [%a15] 140
.LBE504:
.LBE516:
	.loc 1 627 0
	mov	%d15, %d3
.LVL190:
.LBB517:
.LBB505:
	.loc 2 597 0
	or	%d5, %d5, 1
	st.w	[%a15] 140, %d5
.LVL191:
.LBE505:
.LBE517:
.LBB518:
.LBB509:
	.loc 2 609 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 2
	st.w	[%a15] 140, %d5
.LVL192:
.LBE509:
.LBE518:
.LBB519:
.LBB512:
	.loc 2 591 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 4
	st.w	[%a15] 140, %d5
.LVL193:
.LBE512:
.LBE519:
.LBB520:
.LBB515:
	.loc 2 579 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 8
	st.w	[%a15] 140, %d5
.LVL194:
.LBE515:
.LBE520:
	.loc 1 638 0
	jz	%d3, .L108
.LVL195:
	.loc 1 628 0
	mov	%d3, 0
.LVL196:
	j	.L107
.LVL197:
.L157:
.LBE521:
.LBE522:
.LBE527:
.LBB528:
.LBB488:
.LBB476:
.LBB477:
	.loc 2 573 0
	mov	%d15, 127
.LVL198:
	st.w	[%a15] 120, %d15
.LVL199:
.LBE477:
.LBE476:
	.loc 1 569 0
	mov	%d15, 4
	.loc 1 570 0
	j	.L99
.LVL200:
.L158:
.LBB478:
.LBB479:
	.loc 2 567 0
	mov	%d15, 15
.LVL201:
	st.w	[%a15] 104, %d15
.LVL202:
.LBE479:
.LBE478:
	.loc 1 576 0
	mov	%d15, 4
	.loc 1 577 0
	j	.L99
.LBE488:
.LBE528:
.LBE551:
.LFE268:
	.size	IfxI2c_I2c_read, .-IfxI2c_I2c_read
	.align 1
	.global	IfxI2c_I2c_write
	.type	IfxI2c_I2c_write, @function
IfxI2c_I2c_write:
.LFB269:
	.loc 1 674 0
.LVL203:
	.loc 1 676 0
	ld.a	%a2, [%a4]0
	.loc 1 674 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 676 0
	ld.a	%a15, [%a2]0
.LVL204:
.LBB552:
.LBB553:
	.loc 2 556 0
	ld.w	%d15, [%a15] 36
	and	%d15, %d15, 3
	jnz	%d15, .L212
.LVL205:
.LBE553:
.LBE552:
.LBB554:
.LBB555:
	.loc 2 573 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
.LVL206:
.LBE555:
.LBE554:
.LBB556:
.LBB557:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LBE557:
.LBE556:
	.loc 1 675 0
	mov	%d15, 0
	.loc 1 725 0
	jlez	%d4, .L177
.LVL207:
.LBB558:
.LBB559:
.LBB560:
.LBB561:
.LBB562:
.LBB563:
	.loc 3 545 0
#APP
	# 545 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d1, LO:0xFE2C
	# 0 "" 2
.LVL208:
#NO_APP
.LBE563:
	.loc 3 546 0
	extr.u	%d1, %d1, 15, 1
.LVL209:
.LBE562:
.LBE561:
	.loc 3 554 0
#APP
	# 554 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB564:
.LBB565:
	.loc 4 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL210:
#NO_APP
.LBE565:
.LBE564:
.LBE560:
.LBE559:
.LBB566:
.LBB567:
	.loc 2 879 0
	ld.w	%d15, [%a15] 52
.LBE567:
.LBE566:
	.loc 1 732 0
	addi	%d6, %d4, 1
.LBB570:
.LBB568:
	.loc 2 879 0
	insert	%d15, %d15, %d6, 0, 14
.LBE568:
.LBE570:
.LBB571:
.LBB572:
	.loc 2 898 0
	lea	%a7, [%a15] -32768
.LBE572:
.LBE571:
.LBE558:
	.loc 1 679 0
	mov	%d3, 0
.LBB606:
	.loc 1 738 0
	mov	%d0, 0
.LBB575:
.LBB569:
	.loc 2 879 0
	st.w	[%a15] 52, %d15
.LVL211:
.LBE569:
.LBE575:
.LBB576:
.LBB577:
.LBB578:
	.loc 2 573 0
	mov	%d5, 127
.LBE578:
.LBE577:
.LBE576:
.LBE606:
	.loc 1 679 0
	mov	%d15, 0
.LBB607:
.LBB583:
.LBB573:
	.loc 2 898 0
	addih.a	%a7, %a7, 1
.LVL212:
.LBE573:
.LBE583:
	.loc 1 736 0
	jlt	%d6, 4, .L162
.LVL213:
.L213:
	.loc 1 739 0
	add	%d6, -4
.LVL214:
	.loc 1 747 0
	st.w	[%SP] 4, %d0
.LVL215:
	.loc 1 738 0
	mov	%d2, 4
.LVL216:
.L163:
	addi	%d7, %d2, -1
	sel	%d7, %d2, %d7, 0
	mov.a	%a2, %d7
	.loc 1 738 0 is_stmt 0 discriminator 3
	mov.a	%a3, 0
.LVL217:
.L165:
	addsc.a	%a6, %a3, %d3, 0
	add.a	%a6, %a5
	.loc 1 759 0 is_stmt 1 discriminator 3
	ld.bu	%d2, [%a6]0
	lea	%a6, [%SP] 4
.LVL218:
	add.a	%a6, %a3
.LVL219:
	st.b	[%a6]0, %d2
	.loc 1 749 0 discriminator 3
	add.a	%a3, 1
.LVL220:
	loop	%a2, .L165
.LVL221:
.L171:
.LBB584:
	.loc 1 767 0
	ld.w	%d2, [%a15] 128
.LVL222:
	.loc 1 769 0
	jz.t	%d2, 5, .L166
.LVL223:
.LBB580:
.LBB579:
	.loc 2 573 0
	st.w	[%a15] 120, %d5
.LVL224:
.LBE579:
.LBE580:
	.loc 1 772 0
	mov	%d15, 4
.LVL225:
.L166:
	.loc 1 775 0
	jz.t	%d2, 4, .L167
.LVL226:
.LBB581:
.LBB582:
	.loc 2 567 0
	mov	%d15, 15
.LVL227:
	st.w	[%a15] 104, %d15
.LVL228:
.LBE582:
.LBE581:
.LBE584:
	.loc 1 780 0
	ld.w	%d15, [%a15] 56
.LVL229:
.L168:
	mov	%d15, 4
.L169:
.LVL230:
.LBB585:
.LBB586:
	.loc 3 767 0
	jz	%d1, .L175
	.loc 3 769 0
#APP
	# 769 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L175:
.LVL231:
.LBE586:
.LBE585:
.LBB587:
.LBB588:
	.loc 2 805 0 discriminator 1
	ld.w	%d2, [%a15] 116
.LBE588:
.LBE587:
	.loc 1 797 0 discriminator 1
	jz.t	%d2, 5, .L175
.LVL232:
.LBB589:
.LBB590:
	.loc 2 603 0
	mov	%d2, 32
	st.w	[%a15] 120, %d2
.LBE590:
.LBE589:
	.loc 1 804 0
	ld.w	%d2, [%a15] 128
.LVL233:
	.loc 1 806 0
	jz.t	%d2, 5, .L176
.LVL234:
.LBB591:
.LBB592:
	.loc 2 573 0
	mov	%d15, 127
.LVL235:
	st.w	[%a15] 120, %d15
.LVL236:
.LBE592:
.LBE591:
	.loc 1 809 0
	mov	%d15, 4
.LVL237:
.L176:
	.loc 1 812 0
	jz.t	%d2, 4, .L177
.LVL238:
.LBB593:
.LBB594:
	.loc 2 567 0
	mov	%d15, 15
.LVL239:
	st.w	[%a15] 104, %d15
.LVL240:
.LBE594:
.LBE593:
	.loc 1 815 0
	mov	%d15, 4
.LVL241:
.L177:
	mov.aa	%a12, %a4
.LVL242:
.LBE607:
	.loc 1 819 0
	mov.aa	%a4, %a15
.LVL243:
	call	IfxI2c_releaseBus
.LVL244:
.LBB608:
.LBB609:
	.loc 2 730 0
	ld.w	%d2, [%a15] 36
.LBE609:
.LBE608:
	.loc 1 820 0
	ld.a	%a2, [%a12]0
.LVL245:
.LBB612:
.LBB610:
	.loc 2 730 0
	and	%d2, %d2, 3
.LBE610:
.LBE612:
	.loc 1 821 0
	st.w	[%a2] 8, %d15
.LBB613:
.LBB611:
	.loc 2 730 0
	st.w	[%a2] 4, %d2
.LBE611:
.LBE613:
	.loc 1 822 0
	mov	%d2, %d15
	ret
.LVL246:
.L212:
.LBB614:
.LBB615:
	.loc 2 730 0
	ld.w	%d15, [%a15] 36
.LBE615:
.LBE614:
	.loc 1 688 0
	mov	%d2, 3
.LBB617:
.LBB616:
	.loc 2 730 0
	and	%d15, %d15, 3
	st.w	[%a2] 4, %d15
.LVL247:
.LBE616:
.LBE617:
	.loc 1 687 0
	mov	%d15, 3
	st.w	[%a2] 8, %d15
	.loc 1 688 0
	ret
.LVL248:
.L167:
.LBB618:
	.loc 1 780 0
	ld.w	%d2, [%a15] 56
.LVL249:
	and	%d2, %d2, 63
	ne	%d2, %d2, 8
	jnz	%d2, .L170
	.loc 1 780 0 is_stmt 0 discriminator 1
	jne	%d15, 4, .L171
	mov	%d15, 4
.LVL250:
	j	.L169
.LVL251:
.L170:
	.loc 1 782 0 is_stmt 1
	jeq	%d15, 4, .L168
.LVL252:
.LBB595:
.LBB574:
	.loc 2 898 0 discriminator 2
	ld.w	%d2, [%SP] 4
	st.w	[%a7]0, %d2
.LVL253:
.LBE574:
.LBE595:
.LBB596:
.LBB597:
	.loc 2 597 0 discriminator 2
	ld.w	%d2, [%a15] 140
.LBE597:
.LBE596:
	.loc 1 734 0 discriminator 2
	add	%d3, 4
.LVL254:
.LBB599:
.LBB598:
	.loc 2 597 0 discriminator 2
	or	%d2, %d2, 1
	st.w	[%a15] 140, %d2
.LVL255:
.LBE598:
.LBE599:
.LBB600:
.LBB601:
	.loc 2 609 0 discriminator 2
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 2
	st.w	[%a15] 140, %d2
.LVL256:
.LBE601:
.LBE600:
.LBB602:
.LBB603:
	.loc 2 591 0 discriminator 2
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 4
	st.w	[%a15] 140, %d2
.LVL257:
.LBE603:
.LBE602:
.LBB604:
.LBB605:
	.loc 2 579 0 discriminator 2
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 8
	st.w	[%a15] 140, %d2
.LBE605:
.LBE604:
	.loc 1 734 0 discriminator 2
	jge.u	%d3, %d4, .L169
	.loc 1 736 0
	jge	%d6, 4, .L213
.LVL258:
.L162:
	.loc 1 747 0
	st.w	[%SP] 4, %d0
	.loc 1 743 0
	mov	%d2, %d6
.LVL259:
	.loc 1 749 0
	jz	%d6, .L171
	.loc 1 744 0
	mov	%d6, 0
	j	.L163
.LBE618:
.LFE269:
	.size	IfxI2c_I2c_write, .-IfxI2c_I2c_write
	.align 1
	.global	IfxI2c_I2c_write1
	.type	IfxI2c_I2c_write1, @function
IfxI2c_I2c_write1:
.LFB270:
	.loc 1 831 0
.LVL260:
	.loc 1 833 0
	ld.a	%a15, [%a4]0
.LBB619:
.LBB620:
	.loc 2 573 0
	mov	%d15, 127
.LBE620:
.LBE619:
	.loc 1 831 0
	sub.a	%SP, 8
.LCFI4:
	.loc 1 833 0
	ld.a	%a15, [%a15]0
.LVL261:
	.loc 1 836 0
	addi	%d6, %d4, 1
.LVL262:
	.loc 1 832 0
	mov	%d2, 0
.LBB622:
.LBB621:
	.loc 2 573 0
	st.w	[%a15] 120, %d15
.LVL263:
.LBE621:
.LBE622:
.LBB623:
.LBB624:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LBE624:
.LBE623:
	.loc 1 882 0
	jlez	%d4, .L215
.LVL264:
.LBB625:
.LBB626:
.LBB627:
.LBB628:
.LBB629:
.LBB630:
	.loc 3 545 0
#APP
	# 545 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d1, LO:0xFE2C
	# 0 "" 2
.LVL265:
#NO_APP
.LBE630:
	.loc 3 546 0
	extr.u	%d1, %d1, 15, 1
.LVL266:
.LBE629:
.LBE628:
	.loc 3 554 0
#APP
	# 554 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB631:
.LBB632:
	.loc 4 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL267:
#NO_APP
.LBE632:
.LBE631:
.LBE627:
.LBE626:
.LBB633:
.LBB634:
	.loc 2 879 0
	ld.w	%d15, [%a15] 52
.LBE634:
.LBE633:
.LBB637:
.LBB638:
	.loc 2 898 0
	lea	%a7, [%a15] -32768
.LBE638:
.LBE637:
.LBB641:
.LBB635:
	.loc 2 879 0
	insert	%d15, %d15, %d6, 0, 14
.LBE635:
.LBE641:
	.loc 1 891 0
	mov	%d3, 0
	.loc 1 895 0
	mov	%d0, 0
.LBB642:
.LBB643:
.LBB644:
	.loc 2 573 0
	mov	%d5, 127
.LBE644:
.LBE643:
.LBE642:
.LBB649:
.LBB636:
	.loc 2 879 0
	st.w	[%a15] 52, %d15
.LVL268:
.LBE636:
.LBE649:
.LBB650:
.LBB639:
	.loc 2 898 0
	addih.a	%a7, %a7, 1
.LVL269:
.LBE639:
.LBE650:
	.loc 1 893 0
	jlt	%d6, 4, .L216
.LVL270:
.L262:
	.loc 1 896 0
	add	%d6, -4
.LVL271:
	.loc 1 904 0
	st.w	[%SP] 4, %d0
.LVL272:
	.loc 1 895 0
	mov	%d15, 4
.LVL273:
.L217:
	add	%d7, %d15, -1
	cmovn	%d7, %d15, 0
	mov.a	%a2, %d7
	.loc 1 895 0 is_stmt 0 discriminator 3
	mov.a	%a3, 0
.LVL274:
.L219:
	addsc.a	%a6, %a3, %d3, 0
	add.a	%a6, %a5
	.loc 1 916 0 is_stmt 1 discriminator 3
	ld.bu	%d15, [%a6]0
	lea	%a6, [%SP] 4
.LVL275:
	add.a	%a6, %a3
.LVL276:
	st.b	[%a6]0, %d15
	.loc 1 906 0 discriminator 3
	add.a	%a3, 1
.LVL277:
	loop	%a2, .L219
.LVL278:
.L225:
.LBB651:
	.loc 1 924 0
	ld.w	%d15, [%a15] 128
.LVL279:
	.loc 1 926 0
	jz.t	%d15, 5, .L220
.LVL280:
.LBB646:
.LBB645:
	.loc 2 573 0
	st.w	[%a15] 120, %d5
.LVL281:
.LBE645:
.LBE646:
	.loc 1 929 0
	mov	%d2, 4
.LVL282:
.L220:
	.loc 1 932 0
	jz.t	%d15, 4, .L221
.LVL283:
.LBB647:
.LBB648:
	.loc 2 567 0
	mov	%d15, 15
.LVL284:
	st.w	[%a15] 104, %d15
.LVL285:
.LBE648:
.LBE647:
.LBE651:
	.loc 1 937 0
	ld.w	%d15, [%a15] 56
.LVL286:
.L222:
	mov	%d2, 4
.L223:
.LVL287:
.LBB652:
.LBB653:
	.loc 3 767 0
	jz	%d1, .L229
	.loc 3 769 0
#APP
	# 769 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L229:
.LVL288:
.LBE653:
.LBE652:
.LBB654:
.LBB655:
	.loc 2 805 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE655:
.LBE654:
	.loc 1 954 0 discriminator 1
	jz.t	%d15, 5, .L229
.LVL289:
.LBB656:
.LBB657:
	.loc 2 603 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LBE657:
.LBE656:
	.loc 1 961 0
	ld.w	%d15, [%a15] 128
.LVL290:
	.loc 1 963 0
	jnz.t	%d15, 5, .L261
.LVL291:
.L230:
	.loc 1 969 0
	jz.t	%d15, 4, .L215
.LVL292:
.LBB658:
.LBB659:
	.loc 2 567 0
	mov	%d15, 15
.LVL293:
.LBE659:
.LBE658:
	.loc 1 972 0
	mov	%d2, 4
.LVL294:
.LBB661:
.LBB660:
	.loc 2 567 0
	st.w	[%a15] 104, %d15
.LVL295:
.L215:
.LBE660:
.LBE661:
.LBE625:
.LBB675:
.LBB676:
	.loc 2 730 0
	ld.w	%d15, [%a15] 36
.LBE676:
.LBE675:
	.loc 1 977 0
	ld.a	%a2, [%a4]0
.LVL296:
.LBB679:
.LBB677:
	.loc 2 730 0
	and	%d15, %d15, 3
.LBE677:
.LBE679:
	.loc 1 978 0
	st.w	[%a2] 8, %d2
.LBB680:
.LBB678:
	.loc 2 730 0
	st.w	[%a2] 4, %d15
	ret
.LVL297:
.L221:
.LBE678:
.LBE680:
.LBB681:
	.loc 1 937 0
	ld.w	%d15, [%a15] 56
.LVL298:
	and	%d15, %d15, 63
	ne	%d15, %d15, 8
	jnz	%d15, .L224
	.loc 1 937 0 is_stmt 0 discriminator 1
	jne	%d2, 4, .L225
	mov	%d2, 4
.LVL299:
	j	.L223
.LVL300:
.L224:
	.loc 1 939 0 is_stmt 1
	jeq	%d2, 4, .L222
.LVL301:
.LBB662:
.LBB640:
	.loc 2 898 0 discriminator 2
	ld.w	%d15, [%SP] 4
	st.w	[%a7]0, %d15
.LVL302:
.LBE640:
.LBE662:
.LBB663:
.LBB664:
	.loc 2 597 0 discriminator 2
	ld.w	%d15, [%a15] 140
.LBE664:
.LBE663:
	.loc 1 891 0 discriminator 2
	add	%d3, 4
.LVL303:
.LBB666:
.LBB665:
	.loc 2 597 0 discriminator 2
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL304:
.LBE665:
.LBE666:
.LBB667:
.LBB668:
	.loc 2 609 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL305:
.LBE668:
.LBE667:
.LBB669:
.LBB670:
	.loc 2 591 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL306:
.LBE670:
.LBE669:
.LBB671:
.LBB672:
	.loc 2 579 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LBE672:
.LBE671:
	.loc 1 891 0 discriminator 2
	jge.u	%d3, %d4, .L223
	.loc 1 893 0
	jge	%d6, 4, .L262
.LVL307:
.L216:
	.loc 1 904 0
	st.w	[%SP] 4, %d0
	.loc 1 900 0
	mov	%d15, %d6
.LVL308:
	.loc 1 906 0
	jz	%d6, .L225
.LVL309:
	.loc 1 901 0
	mov	%d6, 0
.LVL310:
	j	.L217
.LVL311:
.L261:
.LBB673:
.LBB674:
	.loc 2 573 0
	mov	%d2, 127
.LVL312:
	st.w	[%a15] 120, %d2
.LVL313:
.LBE674:
.LBE673:
	.loc 1 966 0
	mov	%d2, 4
	j	.L230
.LBE681:
.LFE270:
	.size	IfxI2c_I2c_write1, .-IfxI2c_I2c_write1
	.align 1
	.global	IfxI2c_I2c_read2
	.type	IfxI2c_I2c_read2, @function
IfxI2c_I2c_read2:
.LFB271:
	.loc 1 987 0
.LVL314:
	.loc 1 989 0
	ld.a	%a15, [%a4]0
	.loc 1 993 0
	mov	%d2, 0
	.loc 1 987 0
	sub.a	%SP, 8
.LCFI5:
	.loc 1 989 0
	ld.a	%a15, [%a15]0
.LVL315:
	.loc 1 993 0
	st.w	[%SP] 4, %d2
.LBB682:
.LBB683:
	.loc 2 573 0
	mov	%d2, 127
.LBE683:
.LBE682:
	.loc 1 991 0
	ld.bu	%d15, [%a4] 4
.LVL316:
.LBB685:
.LBB686:
	.loc 2 898 0
	lea	%a2, [%a15] -32768
.LBE686:
.LBE685:
.LBB689:
.LBB684:
	.loc 2 573 0
	st.w	[%a15] 120, %d2
.LVL317:
.LBE684:
.LBE689:
.LBB690:
.LBB691:
	.loc 2 567 0
	mov	%d2, 15
.LBE691:
.LBE690:
	.loc 1 1011 0
	or	%d15, %d15, 1
.LVL318:
.LBB693:
.LBB687:
	.loc 2 898 0
	addih.a	%a2, %a2, 1
.LBE687:
.LBE693:
.LBB694:
.LBB692:
	.loc 2 567 0
	st.w	[%a15] 104, %d2
.LBE692:
.LBE694:
.LBB695:
.LBB696:
	.loc 2 879 0
	ld.w	%d2, [%a15] 52
.LBE696:
.LBE695:
	.loc 1 987 0
	mov.aa	%a12, %a4
.LBB698:
.LBB697:
	.loc 2 879 0
	insert	%d2, %d2, 1, 0, 14
	st.w	[%a15] 52, %d2
.LVL319:
.LBE697:
.LBE698:
.LBB699:
.LBB700:
	.loc 2 861 0
	ld.w	%d2, [%a15] 44
	insert	%d2, %d2, %d4, 0, 14
	st.w	[%a15] 44, %d2
.LVL320:
.LBE700:
.LBE699:
.LBB701:
.LBB688:
	.loc 2 898 0
	st.w	[%a2]0, %d15
.LVL321:
.LBE688:
.LBE701:
.LBB702:
.LBB703:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LVL322:
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL323:
.LBE703:
.LBE702:
.LBB704:
.LBB705:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL324:
.LBE705:
.LBE704:
.LBB706:
.LBB707:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL325:
.LBE707:
.LBE706:
.LBB708:
.LBB709:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.L264:
.LBE709:
.LBE708:
	.loc 1 1026 0 discriminator 1
	ld.w	%d15, [%a15] 116
	jnz.t	%d15, 0, .L264
	.loc 1 1030 0
	ld.w	%d15, [%a15] 100
	jz	%d15, .L304
.LVL326:
.L302:
.LBB710:
.LBB711:
.LBB712:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL327:
.LBE712:
.LBE711:
	.loc 1 1123 0
	mov	%d15, 4
.LVL328:
.L266:
.LBE710:
	.loc 1 1127 0
	mov.aa	%a4, %a15
	call	IfxI2c_releaseBus
.LVL329:
.LBB749:
.LBB750:
	.loc 2 730 0
	ld.w	%d2, [%a15] 36
.LBE750:
.LBE749:
	.loc 1 1128 0
	ld.a	%a2, [%a12]0
.LVL330:
.LBB753:
.LBB751:
	.loc 2 730 0
	and	%d2, %d2, 3
.LBE751:
.LBE753:
	.loc 1 1129 0
	st.w	[%a2] 8, %d15
.LBB754:
.LBB752:
	.loc 2 730 0
	st.w	[%a2] 4, %d2
.LBE752:
.LBE754:
	.loc 1 1131 0
	mov	%d2, %d15
	ret
.LVL331:
.L304:
.LBB755:
.LBB756:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE756:
.LBE755:
	.loc 1 1035 0
	jz.t	%d15, 3, .L267
.LVL332:
.LBB757:
.LBB758:
	.loc 2 603 0
	mov	%d15, 8
	st.w	[%a15] 120, %d15
.LVL333:
.LBE758:
.LBE757:
	.loc 1 1038 0
	mov	%d15, 2
	j	.L266
.LVL334:
.L267:
.LBB759:
.LBB760:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE760:
.LBE759:
	.loc 1 1040 0
	jnz.t	%d15, 4, .L305
	.loc 1 988 0
	mov	%d15, 0
	.loc 1 1045 0
	jlez	%d4, .L266
.LBB761:
	.loc 1 1048 0
	lt	%d15, %d4, 33
	jnz	%d15, .L294
.LVL335:
.L277:
.LBE761:
	.loc 1 988 0
	mov	%d15, 0
.LVL336:
.L270:
.LBB762:
	.loc 1 1112 0
	ld.w	%d2, [%a15] 128
.LVL337:
	.loc 1 1114 0
	jz.t	%d2, 5, .L278
.LVL338:
.LBB713:
.LBB714:
	.loc 2 573 0
	mov	%d15, 127
.LVL339:
	st.w	[%a15] 120, %d15
.LVL340:
.LBE714:
.LBE713:
	.loc 1 1117 0
	mov	%d15, 4
.LVL341:
.L278:
	.loc 1 1120 0
	jnz.t	%d2, 4, .L302
	j	.L266
.LVL342:
.L294:
.LBB715:
.LBB716:
.LBB717:
	.loc 2 805 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE717:
.LBE716:
	.loc 1 1055 0 discriminator 1
	jz.t	%d15, 5, .L294
.LVL343:
.LBB718:
.LBB719:
	.loc 2 603 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LBE719:
.LBE718:
	.loc 1 1062 0
	ld.w	%d2, [%a15] 128
.LVL344:
	.loc 1 1064 0
	jz.t	%d2, 5, .L271
.LVL345:
.LBB720:
.LBB721:
	.loc 2 573 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
.LVL346:
.LBE721:
.LBE720:
	.loc 1 1070 0
	mov	%d15, 4
	jz.t	%d2, 4, .L270
.LVL347:
.L279:
.LBB722:
.LBB723:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL348:
	mov	%d15, 4
	j	.L270
.LVL349:
.L305:
.LBE723:
.LBE722:
.LBE715:
.LBE762:
.LBB763:
.LBB764:
	.loc 2 603 0
	mov	%d15, 16
	st.w	[%a15] 120, %d15
.LVL350:
.LBE764:
.LBE763:
	.loc 1 1043 0
	mov	%d15, 1
	j	.L266
.LVL351:
.L271:
.LBB765:
.LBB747:
	.loc 1 1070 0
	jnz.t	%d2, 4, .L279
.LVL352:
	lea	%a5, [%a15] -16384
.LVL353:
	movh	%d6, hi:g_I2cBasic
.LBE747:
.LBE765:
	.loc 1 994 0
	mov	%d5, %d4
	mov	%d2, 0
.LVL354:
	addi	%d6, %d6, lo:g_I2cBasic
.LBB766:
.LBB748:
.LBB724:
.LBB725:
	.loc 1 1095 0
	addih.a	%a5, %a5, 1
.LVL355:
.L276:
	.loc 1 1083 0
	jlt	%d5, 4, .L272
.LVL356:
	.loc 1 1095 0
	ld.w	%d15, [%a5]0
	st.w	[%SP] 4, %d15
.LBB726:
.LBB727:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LBE727:
.LBE726:
	.loc 1 1086 0
	add	%d5, -4
.LVL357:
.LBB731:
.LBB728:
	.loc 2 597 0
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL358:
.LBE728:
.LBE731:
.LBB732:
.LBB733:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL359:
.LBE733:
.LBE732:
.LBB735:
.LBB736:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL360:
.LBE736:
.LBE735:
.LBB738:
.LBB739:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LVL361:
.LBE739:
.LBE738:
	.loc 1 1085 0
	mov	%d15, 4
.LVL362:
.L273:
	add	%d3, %d15, -1
	cmovn	%d3, %d15, 0
	mov.a	%a2, %d3
	.loc 1 1085 0 is_stmt 0 discriminator 3
	mov.a	%a3, 0
.LVL363:
.L275:
	mov.d	%d3, %a3
	.loc 1 1103 0 is_stmt 1 discriminator 3
	lea	%a4, [%SP] 4
.LVL364:
	mov.a	%a6, %d6
	add.a	%a4, %a3
.LVL365:
	add	%d3, %d2
	ld.bu	%d15, [%a4]0
	addsc.a	%a4, %a6, %d3, 0
	.loc 1 1101 0 discriminator 3
	add.a	%a3, 1
.LVL366:
	.loc 1 1103 0 discriminator 3
	st.b	[%a4] 25, %d15
	.loc 1 1101 0 discriminator 3
	loop	%a2, .L275
.LVL367:
.L274:
.LBE725:
	.loc 1 1081 0 discriminator 2
	add	%d2, 4
.LVL368:
	jlt.u	%d2, %d4, .L276
	j	.L277
.L272:
.LBB746:
	.loc 1 1095 0
	ld.w	%d3, [%a5]0
	st.w	[%SP] 4, %d3
.LBB741:
.LBB729:
	.loc 2 597 0
	ld.w	%d3, [%a15] 140
.LBE729:
.LBE741:
	.loc 1 1090 0
	mov	%d15, %d5
.LVL369:
.LBB742:
.LBB730:
	.loc 2 597 0
	or	%d3, %d3, 1
	st.w	[%a15] 140, %d3
.LVL370:
.LBE730:
.LBE742:
.LBB743:
.LBB734:
	.loc 2 609 0
	ld.w	%d3, [%a15] 140
	or	%d3, %d3, 2
	st.w	[%a15] 140, %d3
.LVL371:
.LBE734:
.LBE743:
.LBB744:
.LBB737:
	.loc 2 591 0
	ld.w	%d3, [%a15] 140
	or	%d3, %d3, 4
	st.w	[%a15] 140, %d3
.LVL372:
.LBE737:
.LBE744:
.LBB745:
.LBB740:
	.loc 2 579 0
	ld.w	%d3, [%a15] 140
	or	%d3, %d3, 8
	st.w	[%a15] 140, %d3
.LVL373:
.LBE740:
.LBE745:
	.loc 1 1101 0
	jz	%d5, .L274
.LVL374:
	.loc 1 1091 0
	mov	%d5, 0
.LVL375:
	j	.L273
.LBE746:
.LBE724:
.LBE748:
.LBE766:
.LFE271:
	.size	IfxI2c_I2c_read2, .-IfxI2c_I2c_read2
	.global	kkk
.section .bss.kkk,"aw",@nobits
	.align 2
	.type	kkk, @object
	.size	kkk, 4
kkk:
	.zero	4
	.global	StateI2C
.section .bss.StateI2C,"aw",@nobits
	.align 2
	.type	StateI2C, @object
	.size	StateI2C, 4
StateI2C:
	.zero	4
	.global	I2CBusStatus
.section .bss.I2CBusStatus,"aw",@nobits
	.align 2
	.type	I2CBusStatus, @object
	.size	I2CBusStatus, 4
I2CBusStatus:
	.zero	4
	.global	test_TXEND
.section .bss.test_TXEND,"aw",@nobits
	.align 2
	.type	test_TXEND, @object
	.size	test_TXEND, 4
test_TXEND:
	.zero	4
	.global	test_nack
.section .bss.test_nack,"aw",@nobits
	.align 2
	.type	test_nack, @object
	.size	test_nack, 4
test_nack:
	.zero	4
	.global	test_al
.section .bss.test_al,"aw",@nobits
	.align 2
	.type	test_al, @object
	.size	test_al, 4
test_al:
	.zero	4
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.byte	0x4
	.uaword	.LCFI0-.LFB261
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.byte	0x4
	.uaword	.LCFI1-.LFB263
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB267
	.uaword	.LFE267-.LFB267
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB268
	.uaword	.LFE268-.LFB268
	.byte	0x4
	.uaword	.LCFI2-.LFB268
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB269
	.uaword	.LFE269-.LFB269
	.byte	0x4
	.uaword	.LCFI3-.LFB269
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB270
	.uaword	.LFE270-.LFB270
	.byte	0x4
	.uaword	.LCFI4-.LFB270
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB271
	.uaword	.LFE271-.LFB271
	.byte	0x4
	.uaword	.LCFI5-.LFB271
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 8 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 9 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Reg/IfxI2c_regdef.h"
	.file 11 "./0_Src/4_McHal/Tricore/_PinMap/IfxI2c_PinMap.h"
	.file 12 "0_Src/0_AppSw/Tricore/I2C/IfxI2c_I2c.h"
	.file 13 "0_Src/0_AppSw/Tricore/I2C/I2cBasicDemo.h"
	.file 14 "./0_Src/0_AppSw/Tricore/Models\\Global_pars_vars\\rtwtypes.h"
	.file 15 "./0_Src/0_AppSw/Tricore/Models/Global_pars_vars/global_low_vars.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x71d8
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2017-01-30 -mlicen"
	.string	"se-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mcpu=tc27xx -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fdata-sections -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/I2C/IfxI2c_I2c.c"
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x5
	.byte	0x5a
	.uaword	0x1e1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x1fc
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x19f
	.uleb128 0x3
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x22e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x24d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x5
	.byte	0x6b
	.uaword	0x1c2
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
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x6
	.byte	0x38
	.uaword	0x1d3
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0x5f
	.uaword	0x32c
	.uleb128 0x5
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x5
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x5
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x5
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x5
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x5
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x5
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x5
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_RxSel"
	.byte	0x6
	.byte	0x68
	.uaword	0x2b3
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x34d
	.uleb128 0x7
	.uaword	0x34d
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x369
	.uleb128 0x7
	.uaword	0x34d
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x379
	.uleb128 0x7
	.uaword	0x34d
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x389
	.uleb128 0x7
	.uaword	0x34d
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x399
	.uleb128 0x7
	.uaword	0x34d
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.uaword	0x22e
	.uleb128 0x9
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x176
	.uaword	0x413
	.uleb128 0xa
	.string	"CCPN"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x399
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x179
	.uaword	0x399
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"IE"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x399
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PIPN"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x399
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"reserved_26"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x399
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x39e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x451
	.uaword	0x454
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x454
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x456
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x458
	.uaword	0x413
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_ICR"
	.byte	0x7
	.uahalf	0x459
	.uaword	0x42c
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x478
	.uleb128 0x7
	.uaword	0x34d
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x488
	.uleb128 0x7
	.uaword	0x34d
	.byte	0x3f
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x498
	.uleb128 0x7
	.uaword	0x34d
	.byte	0xdf
	.byte	0
	.uleb128 0xf
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x6aa
	.uleb128 0x10
	.string	"EN0"
	.byte	0x8
	.byte	0x2f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"EN1"
	.byte	0x8
	.byte	0x30
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"EN2"
	.byte	0x8
	.byte	0x31
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EN3"
	.byte	0x8
	.byte	0x32
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EN4"
	.byte	0x8
	.byte	0x33
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EN5"
	.byte	0x8
	.byte	0x34
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EN6"
	.byte	0x8
	.byte	0x35
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EN7"
	.byte	0x8
	.byte	0x36
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EN8"
	.byte	0x8
	.byte	0x37
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"EN9"
	.byte	0x8
	.byte	0x38
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"EN10"
	.byte	0x8
	.byte	0x39
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"EN11"
	.byte	0x8
	.byte	0x3a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"EN12"
	.byte	0x8
	.byte	0x3b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"EN13"
	.byte	0x8
	.byte	0x3c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"EN14"
	.byte	0x8
	.byte	0x3d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"EN15"
	.byte	0x8
	.byte	0x3e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"EN16"
	.byte	0x8
	.byte	0x3f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"EN17"
	.byte	0x8
	.byte	0x40
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"EN18"
	.byte	0x8
	.byte	0x41
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"EN19"
	.byte	0x8
	.byte	0x42
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"EN20"
	.byte	0x8
	.byte	0x43
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"EN21"
	.byte	0x8
	.byte	0x44
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"EN22"
	.byte	0x8
	.byte	0x45
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"EN23"
	.byte	0x8
	.byte	0x46
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"EN24"
	.byte	0x8
	.byte	0x47
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EN25"
	.byte	0x8
	.byte	0x48
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"EN26"
	.byte	0x8
	.byte	0x49
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"EN27"
	.byte	0x8
	.byte	0x4a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"EN28"
	.byte	0x8
	.byte	0x4b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"EN29"
	.byte	0x8
	.byte	0x4c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"EN30"
	.byte	0x8
	.byte	0x4d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"EN31"
	.byte	0x8
	.byte	0x4e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x8
	.byte	0x4f
	.uaword	0x498
	.uleb128 0xf
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x52
	.uaword	0x6ee
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0x54
	.uaword	0x22e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x8
	.byte	0x55
	.uaword	0x6c3
	.uleb128 0xf
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x58
	.uaword	0x825
	.uleb128 0x10
	.string	"EN0"
	.byte	0x8
	.byte	0x5a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"EN1"
	.byte	0x8
	.byte	0x5b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"EN2"
	.byte	0x8
	.byte	0x5c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EN3"
	.byte	0x8
	.byte	0x5d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EN4"
	.byte	0x8
	.byte	0x5e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EN5"
	.byte	0x8
	.byte	0x5f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EN6"
	.byte	0x8
	.byte	0x60
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EN7"
	.byte	0x8
	.byte	0x61
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EN8"
	.byte	0x8
	.byte	0x62
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"EN9"
	.byte	0x8
	.byte	0x63
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"EN10"
	.byte	0x8
	.byte	0x64
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"EN11"
	.byte	0x8
	.byte	0x65
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"EN12"
	.byte	0x8
	.byte	0x66
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"EN13"
	.byte	0x8
	.byte	0x67
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"EN14"
	.byte	0x8
	.byte	0x68
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"EN15"
	.byte	0x8
	.byte	0x69
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x6a
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x8
	.byte	0x6b
	.uaword	0x707
	.uleb128 0xf
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x6e
	.uaword	0x887
	.uleb128 0x10
	.string	"MODREV"
	.byte	0x8
	.byte	0x70
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"MODTYPE"
	.byte	0x8
	.byte	0x71
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x8
	.byte	0x72
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x8
	.byte	0x73
	.uaword	0x83b
	.uleb128 0xf
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x76
	.uaword	0x9a9
	.uleb128 0x10
	.string	"P0"
	.byte	0x8
	.byte	0x78
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"P1"
	.byte	0x8
	.byte	0x79
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"P2"
	.byte	0x8
	.byte	0x7a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"P3"
	.byte	0x8
	.byte	0x7b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"P4"
	.byte	0x8
	.byte	0x7c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"P5"
	.byte	0x8
	.byte	0x7d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"P6"
	.byte	0x8
	.byte	0x7e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"P7"
	.byte	0x8
	.byte	0x7f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"P8"
	.byte	0x8
	.byte	0x80
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"P9"
	.byte	0x8
	.byte	0x81
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"P10"
	.byte	0x8
	.byte	0x82
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"P11"
	.byte	0x8
	.byte	0x83
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"P12"
	.byte	0x8
	.byte	0x84
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"P13"
	.byte	0x8
	.byte	0x85
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"P14"
	.byte	0x8
	.byte	0x86
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"P15"
	.byte	0x8
	.byte	0x87
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x88
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x8
	.byte	0x89
	.uaword	0x89c
	.uleb128 0xf
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x8c
	.uaword	0xa51
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0x8e
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC0"
	.byte	0x8
	.byte	0x8f
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0x90
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC1"
	.byte	0x8
	.byte	0x91
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x92
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC2"
	.byte	0x8
	.byte	0x93
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.byte	0x94
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC3"
	.byte	0x8
	.byte	0x95
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x8
	.byte	0x96
	.uaword	0x9be
	.uleb128 0xf
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x99
	.uaword	0xb01
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0x9b
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC12"
	.byte	0x8
	.byte	0x9c
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0x9d
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC13"
	.byte	0x8
	.byte	0x9e
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x9f
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC14"
	.byte	0x8
	.byte	0xa0
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.byte	0xa1
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC15"
	.byte	0x8
	.byte	0xa2
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x8
	.byte	0xa3
	.uaword	0xa69
	.uleb128 0xf
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.uaword	0xbad
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xa8
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC4"
	.byte	0x8
	.byte	0xa9
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0xaa
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC5"
	.byte	0x8
	.byte	0xab
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0xac
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC6"
	.byte	0x8
	.byte	0xad
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.byte	0xae
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC7"
	.byte	0x8
	.byte	0xaf
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x8
	.byte	0xb0
	.uaword	0xb1a
	.uleb128 0xf
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb3
	.uaword	0xc5a
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xb5
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC8"
	.byte	0x8
	.byte	0xb6
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0xb7
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC9"
	.byte	0x8
	.byte	0xb8
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0xb9
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC10"
	.byte	0x8
	.byte	0xba
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.byte	0xbb
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC11"
	.byte	0x8
	.byte	0xbc
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x8
	.byte	0xbd
	.uaword	0xbc5
	.uleb128 0xf
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc0
	.uaword	0xcba
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xc2
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x8
	.byte	0xc3
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x8
	.byte	0xc4
	.uaword	0x22e
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x8
	.byte	0xc5
	.uaword	0xc72
	.uleb128 0xf
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc8
	.uaword	0xd1a
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xca
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x8
	.byte	0xcb
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x8
	.byte	0xcc
	.uaword	0x22e
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x8
	.byte	0xcd
	.uaword	0xcd2
	.uleb128 0xf
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xd0
	.uaword	0xdaa
	.uleb128 0x10
	.string	"RDIS_CTRL"
	.byte	0x8
	.byte	0xd2
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RX_DIS"
	.byte	0x8
	.byte	0xd3
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TERM"
	.byte	0x8
	.byte	0xd4
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"LRXTERM"
	.byte	0x8
	.byte	0xd5
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0xd6
	.uaword	0x22e
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x8
	.byte	0xd7
	.uaword	0xd32
	.uleb128 0xf
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xda
	.uaword	0xe7d
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xdc
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"LVDSR"
	.byte	0x8
	.byte	0xdd
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"LVDSRL"
	.byte	0x8
	.byte	0xde
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x8
	.byte	0xdf
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"TDIS_CTRL"
	.byte	0x8
	.byte	0xe0
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"TX_DIS"
	.byte	0x8
	.byte	0xe1
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"TX_PD"
	.byte	0x8
	.byte	0xe2
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"TX_PWDPD"
	.byte	0x8
	.byte	0xe3
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0xe4
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x8
	.byte	0xe5
	.uaword	0xdc6
	.uleb128 0xf
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xe8
	.uaword	0xf0e
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xea
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x8
	.byte	0xeb
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x8
	.byte	0xec
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x8
	.byte	0xed
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x8
	.byte	0xee
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x8
	.byte	0xef
	.uaword	0x22e
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x8
	.byte	0xf0
	.uaword	0xe95
	.uleb128 0xf
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xf3
	.uaword	0xf95
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xf5
	.uaword	0x22e
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x8
	.byte	0xf6
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x8
	.byte	0xf7
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x8
	.byte	0xf8
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x8
	.byte	0xf9
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x8
	.byte	0xfa
	.uaword	0xf26
	.uleb128 0xf
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xfd
	.uaword	0x102c
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xff
	.uaword	0x22e
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x104
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x8
	.uahalf	0x105
	.uaword	0xfae
	.uleb128 0x9
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x108
	.uaword	0x10c7
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x10a
	.uaword	0x22e
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x22e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x1045
	.uleb128 0x9
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x113
	.uaword	0x1221
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x115
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PCL0"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"PCL1"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"PCL2"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PCL3"
	.byte	0x8
	.uahalf	0x119
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x120
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PCL12"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"PCL13"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"PCL14"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PCL15"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x10e0
	.uleb128 0x9
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x129
	.uaword	0x146f
	.uleb128 0xa
	.string	"PS0"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x8
	.uahalf	0x12c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x8
	.uahalf	0x131
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x8
	.uahalf	0x132
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PCL0"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"PCL1"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"PCL2"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PCL3"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PCL12"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"PCL13"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"PCL14"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PCL15"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMR_Bits"
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x1239
	.uleb128 0x9
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x14e
	.uaword	0x14f2
	.uleb128 0xa
	.string	"PS0"
	.byte	0x8
	.uahalf	0x150
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x154
	.uaword	0x22e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x8
	.uahalf	0x155
	.uaword	0x1486
	.uleb128 0x9
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0x158c
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x22e
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x150b
	.uleb128 0x9
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x163
	.uaword	0x1622
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x165
	.uaword	0x22e
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x22e
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x15a6
	.uleb128 0x9
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16e
	.uaword	0x16b9
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x170
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x8
	.uahalf	0x173
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x175
	.uaword	0x22e
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x163b
	.uleb128 0x9
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x179
	.uaword	0x1803
	.uleb128 0xa
	.string	"PS0"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x8
	.uahalf	0x186
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x8
	.uahalf	0x188
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x8
	.uahalf	0x189
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x18b
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x16d2
	.uleb128 0x9
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x193b
	.uleb128 0xa
	.string	"P0"
	.byte	0x8
	.uahalf	0x191
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"P1"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"P2"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"P3"
	.byte	0x8
	.uahalf	0x194
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"P4"
	.byte	0x8
	.uahalf	0x195
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"P5"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"P6"
	.byte	0x8
	.uahalf	0x197
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"P7"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"P8"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"P9"
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"P10"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"P11"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"P12"
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"P13"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"P14"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"P15"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x1a1
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OUT_Bits"
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x181b
	.uleb128 0x9
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x1a38
	.uleb128 0xa
	.string	"SEL0"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"SEL1"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"SEL2"
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"SEL3"
	.byte	0x8
	.uahalf	0x1aa
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"SEL4"
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"SEL5"
	.byte	0x8
	.uahalf	0x1ac
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"SEL6"
	.byte	0x8
	.uahalf	0x1ad
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"SEL10"
	.byte	0x8
	.uahalf	0x1af
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"SEL11"
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x22e
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"LCK"
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x1952
	.uleb128 0x9
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x1ba2
	.uleb128 0xa
	.string	"PDIS0"
	.byte	0x8
	.uahalf	0x1b8
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PDIS1"
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"PDIS2"
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PDIS3"
	.byte	0x8
	.uahalf	0x1bb
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PDIS4"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"PDIS5"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"PDIS6"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PDIS7"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PDIS8"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"PDIS9"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"PDIS10"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PDIS11"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PDIS12"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"PDIS13"
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"PDIS14"
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PDIS15"
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x1a50
	.uleb128 0x9
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x1cd6
	.uleb128 0xa
	.string	"PD0"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PL0"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PD1"
	.byte	0x8
	.uahalf	0x1d0
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PL1"
	.byte	0x8
	.uahalf	0x1d1
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PD2"
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PL2"
	.byte	0x8
	.uahalf	0x1d3
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PD3"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PL3"
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PD4"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PL4"
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PD5"
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PL5"
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PD6"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PL6"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PD7"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PL7"
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x1bbb
	.uleb128 0x9
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x1e15
	.uleb128 0xa
	.string	"PD8"
	.byte	0x8
	.uahalf	0x1e3
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PL8"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PD9"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PL9"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PD10"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PL10"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PD11"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PL11"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PD12"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PL12"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PD13"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PL13"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PD14"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PL14"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PD15"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PL15"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x1cee
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x1e55
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x1fe
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x200
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x202
	.uaword	0x6aa
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_ACCEN0"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x1e2d
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x206
	.uaword	0x1e92
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x209
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0x6ee
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_ACCEN1"
	.byte	0x8
	.uahalf	0x20e
	.uaword	0x1e6a
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x211
	.uaword	0x1ecf
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x216
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x825
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_ESR"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x1ea7
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x1f09
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x21f
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x221
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x887
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_ID"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x1ee1
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x227
	.uaword	0x1f42
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x22c
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x22e
	.uaword	0x9a9
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IN"
	.byte	0x8
	.uahalf	0x22f
	.uaword	0x1f1a
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x232
	.uaword	0x1f7b
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x235
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x239
	.uaword	0xa51
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IOCR0"
	.byte	0x8
	.uahalf	0x23a
	.uaword	0x1f53
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x1fb7
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x240
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x244
	.uaword	0xb01
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IOCR12"
	.byte	0x8
	.uahalf	0x245
	.uaword	0x1f8f
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x248
	.uaword	0x1ff4
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x24b
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x24d
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x24f
	.uaword	0xbad
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IOCR4"
	.byte	0x8
	.uahalf	0x250
	.uaword	0x1fcc
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x253
	.uaword	0x2030
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x256
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x258
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0xc5a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IOCR8"
	.byte	0x8
	.uahalf	0x25b
	.uaword	0x2008
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x25e
	.uaword	0x206c
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x261
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x263
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x265
	.uaword	0xcba
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_LPCR0"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x2044
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x269
	.uaword	0x20b6
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x270
	.uaword	0xd1a
	.uleb128 0xe
	.string	"B_P21"
	.byte	0x8
	.uahalf	0x272
	.uaword	0xdaa
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_LPCR1"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x2080
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x276
	.uaword	0x20f2
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x279
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0xe7d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_LPCR2"
	.byte	0x8
	.uahalf	0x27e
	.uaword	0x20ca
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x281
	.uaword	0x212e
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x284
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x1221
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x2106
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x2169
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x293
	.uaword	0xf0e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR0"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x2141
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x297
	.uaword	0x21a5
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x29a
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x29c
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x29e
	.uaword	0xf95
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR12"
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x217d
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2a2
	.uaword	0x21e2
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2a5
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2a7
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x102c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR4"
	.byte	0x8
	.uahalf	0x2aa
	.uaword	0x21ba
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ad
	.uaword	0x221e
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2b0
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2b2
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x10c7
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR8"
	.byte	0x8
	.uahalf	0x2b5
	.uaword	0x21f6
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x225a
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2bb
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2bd
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2bf
	.uaword	0x146f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMR"
	.byte	0x8
	.uahalf	0x2c0
	.uaword	0x2232
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2c3
	.uaword	0x2294
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2c6
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2c8
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2ca
	.uaword	0x1803
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR"
	.byte	0x8
	.uahalf	0x2cb
	.uaword	0x226c
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ce
	.uaword	0x22cf
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2d1
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2d3
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2d5
	.uaword	0x14f2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR0"
	.byte	0x8
	.uahalf	0x2d6
	.uaword	0x22a7
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x230b
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2de
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2e0
	.uaword	0x158c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR12"
	.byte	0x8
	.uahalf	0x2e1
	.uaword	0x22e3
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2e4
	.uaword	0x2348
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2e7
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2e9
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2eb
	.uaword	0x1622
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR4"
	.byte	0x8
	.uahalf	0x2ec
	.uaword	0x2320
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ef
	.uaword	0x2384
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2f2
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2f6
	.uaword	0x16b9
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR8"
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x235c
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2fa
	.uaword	0x23c0
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2fd
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2ff
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x301
	.uaword	0x193b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OUT"
	.byte	0x8
	.uahalf	0x302
	.uaword	0x2398
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x305
	.uaword	0x23fa
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x308
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x30a
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x30c
	.uaword	0x1a38
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PCSR"
	.byte	0x8
	.uahalf	0x30d
	.uaword	0x23d2
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x310
	.uaword	0x2435
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x313
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x315
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x317
	.uaword	0x1ba2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDISC"
	.byte	0x8
	.uahalf	0x318
	.uaword	0x240d
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x31b
	.uaword	0x2471
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x31e
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x320
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x322
	.uaword	0x1cd6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDR0"
	.byte	0x8
	.uahalf	0x323
	.uaword	0x2449
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x326
	.uaword	0x24ac
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x329
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x32b
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x32d
	.uaword	0x1e15
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDR1"
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x2484
	.uleb128 0x12
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x8
	.uahalf	0x339
	.uaword	0x26f9
	.uleb128 0x13
	.string	"OUT"
	.byte	0x8
	.uahalf	0x33b
	.uaword	0x23c0
	.byte	0
	.uleb128 0x13
	.string	"OMR"
	.byte	0x8
	.uahalf	0x33c
	.uaword	0x225a
	.byte	0x4
	.uleb128 0x13
	.string	"ID"
	.byte	0x8
	.uahalf	0x33d
	.uaword	0x1f09
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x33e
	.uaword	0x359
	.byte	0xc
	.uleb128 0x13
	.string	"IOCR0"
	.byte	0x8
	.uahalf	0x33f
	.uaword	0x1f7b
	.byte	0x10
	.uleb128 0x13
	.string	"IOCR4"
	.byte	0x8
	.uahalf	0x340
	.uaword	0x1ff4
	.byte	0x14
	.uleb128 0x13
	.string	"IOCR8"
	.byte	0x8
	.uahalf	0x341
	.uaword	0x2030
	.byte	0x18
	.uleb128 0x13
	.string	"IOCR12"
	.byte	0x8
	.uahalf	0x342
	.uaword	0x1fb7
	.byte	0x1c
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x343
	.uaword	0x359
	.byte	0x20
	.uleb128 0x13
	.string	"IN"
	.byte	0x8
	.uahalf	0x344
	.uaword	0x1f42
	.byte	0x24
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x345
	.uaword	0x468
	.byte	0x28
	.uleb128 0x13
	.string	"PDR0"
	.byte	0x8
	.uahalf	0x346
	.uaword	0x2471
	.byte	0x40
	.uleb128 0x13
	.string	"PDR1"
	.byte	0x8
	.uahalf	0x347
	.uaword	0x24ac
	.byte	0x44
	.uleb128 0x13
	.string	"reserved_48"
	.byte	0x8
	.uahalf	0x348
	.uaword	0x33d
	.byte	0x48
	.uleb128 0x13
	.string	"ESR"
	.byte	0x8
	.uahalf	0x349
	.uaword	0x1ecf
	.byte	0x50
	.uleb128 0x13
	.string	"reserved_54"
	.byte	0x8
	.uahalf	0x34a
	.uaword	0x369
	.byte	0x54
	.uleb128 0x13
	.string	"PDISC"
	.byte	0x8
	.uahalf	0x34b
	.uaword	0x2435
	.byte	0x60
	.uleb128 0x13
	.string	"PCSR"
	.byte	0x8
	.uahalf	0x34c
	.uaword	0x23fa
	.byte	0x64
	.uleb128 0x13
	.string	"reserved_68"
	.byte	0x8
	.uahalf	0x34d
	.uaword	0x33d
	.byte	0x68
	.uleb128 0x13
	.string	"OMSR0"
	.byte	0x8
	.uahalf	0x34e
	.uaword	0x22cf
	.byte	0x70
	.uleb128 0x13
	.string	"OMSR4"
	.byte	0x8
	.uahalf	0x34f
	.uaword	0x2348
	.byte	0x74
	.uleb128 0x13
	.string	"OMSR8"
	.byte	0x8
	.uahalf	0x350
	.uaword	0x2384
	.byte	0x78
	.uleb128 0x13
	.string	"OMSR12"
	.byte	0x8
	.uahalf	0x351
	.uaword	0x230b
	.byte	0x7c
	.uleb128 0x13
	.string	"OMCR0"
	.byte	0x8
	.uahalf	0x352
	.uaword	0x2169
	.byte	0x80
	.uleb128 0x13
	.string	"OMCR4"
	.byte	0x8
	.uahalf	0x353
	.uaword	0x21e2
	.byte	0x84
	.uleb128 0x13
	.string	"OMCR8"
	.byte	0x8
	.uahalf	0x354
	.uaword	0x221e
	.byte	0x88
	.uleb128 0x13
	.string	"OMCR12"
	.byte	0x8
	.uahalf	0x355
	.uaword	0x21a5
	.byte	0x8c
	.uleb128 0x13
	.string	"OMSR"
	.byte	0x8
	.uahalf	0x356
	.uaword	0x2294
	.byte	0x90
	.uleb128 0x13
	.string	"OMCR"
	.byte	0x8
	.uahalf	0x357
	.uaword	0x212e
	.byte	0x94
	.uleb128 0x13
	.string	"reserved_98"
	.byte	0x8
	.uahalf	0x358
	.uaword	0x33d
	.byte	0x98
	.uleb128 0x13
	.string	"LPCR0"
	.byte	0x8
	.uahalf	0x359
	.uaword	0x206c
	.byte	0xa0
	.uleb128 0x13
	.string	"LPCR1"
	.byte	0x8
	.uahalf	0x35a
	.uaword	0x20b6
	.byte	0xa4
	.uleb128 0x13
	.string	"LPCR2"
	.byte	0x8
	.uahalf	0x35b
	.uaword	0x20f2
	.byte	0xa8
	.uleb128 0x13
	.string	"reserved_A4"
	.byte	0x8
	.uahalf	0x35c
	.uaword	0x26f9
	.byte	0xac
	.uleb128 0x13
	.string	"ACCEN1"
	.byte	0x8
	.uahalf	0x35d
	.uaword	0x1e92
	.byte	0xf8
	.uleb128 0x13
	.string	"ACCEN0"
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x1e55
	.byte	0xfc
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x2709
	.uleb128 0x7
	.uaword	0x34d
	.byte	0x4b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P"
	.byte	0x8
	.uahalf	0x35f
	.uaword	0x2717
	.uleb128 0x8
	.uaword	0x24bf
	.uleb128 0x15
	.byte	0x4
	.uaword	0x2709
	.uleb128 0x4
	.byte	0x4
	.byte	0x9
	.byte	0x65
	.uaword	0x27fe
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputIdx"
	.byte	0x9
	.byte	0x6e
	.uaword	0x2722
	.uleb128 0x4
	.byte	0x4
	.byte	0x9
	.byte	0x7d
	.uaword	0x29b8
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x9
	.byte	0x8a
	.uaword	0x2817
	.uleb128 0x16
	.byte	0x8
	.byte	0x9
	.byte	0xaa
	.uaword	0x29f8
	.uleb128 0x17
	.string	"port"
	.byte	0x9
	.byte	0xac
	.uaword	0x271c
	.byte	0
	.uleb128 0x17
	.string	"pinIndex"
	.byte	0x9
	.byte	0xad
	.uaword	0x1b5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0x9
	.byte	0xae
	.uaword	0x29d1
	.uleb128 0xf
	.string	"_Ifx_I2C_ACCEN0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.uaword	0x2c1f
	.uleb128 0x10
	.string	"EN0"
	.byte	0xa
	.byte	0x2f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"EN1"
	.byte	0xa
	.byte	0x30
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"EN2"
	.byte	0xa
	.byte	0x31
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EN3"
	.byte	0xa
	.byte	0x32
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EN4"
	.byte	0xa
	.byte	0x33
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EN5"
	.byte	0xa
	.byte	0x34
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EN6"
	.byte	0xa
	.byte	0x35
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EN7"
	.byte	0xa
	.byte	0x36
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EN8"
	.byte	0xa
	.byte	0x37
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"EN9"
	.byte	0xa
	.byte	0x38
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"EN10"
	.byte	0xa
	.byte	0x39
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"EN11"
	.byte	0xa
	.byte	0x3a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"EN12"
	.byte	0xa
	.byte	0x3b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"EN13"
	.byte	0xa
	.byte	0x3c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"EN14"
	.byte	0xa
	.byte	0x3d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"EN15"
	.byte	0xa
	.byte	0x3e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"EN16"
	.byte	0xa
	.byte	0x3f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"EN17"
	.byte	0xa
	.byte	0x40
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"EN18"
	.byte	0xa
	.byte	0x41
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"EN19"
	.byte	0xa
	.byte	0x42
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"EN20"
	.byte	0xa
	.byte	0x43
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"EN21"
	.byte	0xa
	.byte	0x44
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"EN22"
	.byte	0xa
	.byte	0x45
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"EN23"
	.byte	0xa
	.byte	0x46
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"EN24"
	.byte	0xa
	.byte	0x47
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EN25"
	.byte	0xa
	.byte	0x48
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"EN26"
	.byte	0xa
	.byte	0x49
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"EN27"
	.byte	0xa
	.byte	0x4a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"EN28"
	.byte	0xa
	.byte	0x4b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"EN29"
	.byte	0xa
	.byte	0x4c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"EN30"
	.byte	0xa
	.byte	0x4d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"EN31"
	.byte	0xa
	.byte	0x4e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ACCEN0_Bits"
	.byte	0xa
	.byte	0x4f
	.uaword	0x2a0b
	.uleb128 0xf
	.string	"_Ifx_I2C_ACCEN1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x52
	.uaword	0x2c67
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0xa
	.byte	0x54
	.uaword	0x22e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ACCEN1_Bits"
	.byte	0xa
	.byte	0x55
	.uaword	0x2c3a
	.uleb128 0xf
	.string	"_Ifx_I2C_ADDRCFG_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x58
	.uaword	0x2d33
	.uleb128 0x10
	.string	"ADR"
	.byte	0xa
	.byte	0x5a
	.uaword	0x22e
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0xa
	.byte	0x5b
	.uaword	0x22e
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"TBAM"
	.byte	0xa
	.byte	0x5c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"GCE"
	.byte	0xa
	.byte	0x5d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"MCE"
	.byte	0xa
	.byte	0x5e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"MnS"
	.byte	0xa
	.byte	0x5f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"SONA"
	.byte	0xa
	.byte	0x60
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"SOPE"
	.byte	0xa
	.byte	0x61
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"reserved_22"
	.byte	0xa
	.byte	0x62
	.uaword	0x22e
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ADDRCFG_Bits"
	.byte	0xa
	.byte	0x63
	.uaword	0x2c82
	.uleb128 0xf
	.string	"_Ifx_I2C_BUSSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x66
	.uaword	0x2d9a
	.uleb128 0x10
	.string	"BS"
	.byte	0xa
	.byte	0x68
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RnW"
	.byte	0xa
	.byte	0x69
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0xa
	.byte	0x6a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_BUSSTAT_Bits"
	.byte	0xa
	.byte	0x6b
	.uaword	0x2d4f
	.uleb128 0xf
	.string	"_Ifx_I2C_CLC1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x6e
	.uaword	0x2e5f
	.uleb128 0x10
	.string	"DISR"
	.byte	0xa
	.byte	0x70
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"DISS"
	.byte	0xa
	.byte	0x71
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"SPEN"
	.byte	0xa
	.byte	0x72
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EDIS"
	.byte	0xa
	.byte	0x73
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SBWE"
	.byte	0xa
	.byte	0x74
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"FSOE"
	.byte	0xa
	.byte	0x75
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0xa
	.byte	0x76
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RMC"
	.byte	0xa
	.byte	0x77
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xa
	.byte	0x78
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_CLC1_Bits"
	.byte	0xa
	.byte	0x79
	.uaword	0x2db6
	.uleb128 0xf
	.string	"_Ifx_I2C_CLC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x7c
	.uaword	0x2ec2
	.uleb128 0x10
	.string	"DISR"
	.byte	0xa
	.byte	0x7e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"DISS"
	.byte	0xa
	.byte	0x7f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xa
	.byte	0x80
	.uaword	0x22e
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_CLC_Bits"
	.byte	0xa
	.byte	0x81
	.uaword	0x2e78
	.uleb128 0xf
	.string	"_Ifx_I2C_ENDDCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x84
	.uaword	0x2f2d
	.uleb128 0x10
	.string	"SETRSC"
	.byte	0xa
	.byte	0x86
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SETEND"
	.byte	0xa
	.byte	0x87
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xa
	.byte	0x88
	.uaword	0x22e
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ENDDCTRL_Bits"
	.byte	0xa
	.byte	0x89
	.uaword	0x2eda
	.uleb128 0xf
	.string	"_Ifx_I2C_ERRIRQSC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x8c
	.uaword	0x2fb5
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0xa
	.byte	0x8e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0xa
	.byte	0x8f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xa
	.byte	0x90
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xa
	.byte	0x91
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xa
	.byte	0x92
	.uaword	0x22e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSC_Bits"
	.byte	0xa
	.byte	0x93
	.uaword	0x2f4a
	.uleb128 0xf
	.string	"_Ifx_I2C_ERRIRQSM_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x96
	.uaword	0x303d
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0xa
	.byte	0x98
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0xa
	.byte	0x99
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xa
	.byte	0x9a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xa
	.byte	0x9b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xa
	.byte	0x9c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSM_Bits"
	.byte	0xa
	.byte	0x9d
	.uaword	0x2fd2
	.uleb128 0xf
	.string	"_Ifx_I2C_ERRIRQSS_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa0
	.uaword	0x30c5
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0xa
	.byte	0xa2
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0xa
	.byte	0xa3
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xa
	.byte	0xa4
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xa
	.byte	0xa5
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xa
	.byte	0xa6
	.uaword	0x22e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSS_Bits"
	.byte	0xa
	.byte	0xa7
	.uaword	0x305a
	.uleb128 0xf
	.string	"_Ifx_I2C_FDIVCFG_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xaa
	.uaword	0x313d
	.uleb128 0x10
	.string	"DEC"
	.byte	0xa
	.byte	0xac
	.uaword	0x22e
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0xa
	.byte	0xad
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"INC"
	.byte	0xa
	.byte	0xae
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xa
	.byte	0xaf
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FDIVCFG_Bits"
	.byte	0xa
	.byte	0xb0
	.uaword	0x30e2
	.uleb128 0xf
	.string	"_Ifx_I2C_FDIVHIGHCFG_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xb3
	.uaword	0x31b8
	.uleb128 0x10
	.string	"DEC"
	.byte	0xa
	.byte	0xb5
	.uaword	0x22e
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0xa
	.byte	0xb6
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"INC"
	.byte	0xa
	.byte	0xb7
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xa
	.byte	0xb8
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FDIVHIGHCFG_Bits"
	.byte	0xa
	.byte	0xb9
	.uaword	0x3159
	.uleb128 0xf
	.string	"_Ifx_I2C_FFSSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xbc
	.uaword	0x3215
	.uleb128 0x10
	.string	"FFS"
	.byte	0xa
	.byte	0xbe
	.uaword	0x22e
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0xa
	.byte	0xbf
	.uaword	0x22e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FFSSTAT_Bits"
	.byte	0xa
	.byte	0xc0
	.uaword	0x31d8
	.uleb128 0xf
	.string	"_Ifx_I2C_FIFOCFG_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xc3
	.uaword	0x3303
	.uleb128 0x10
	.string	"RXBS"
	.byte	0xa
	.byte	0xc5
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xa
	.byte	0xc6
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"TXBS"
	.byte	0xa
	.byte	0xc7
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0xa
	.byte	0xc8
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RXFA"
	.byte	0xa
	.byte	0xc9
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0xa
	.byte	0xca
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"TXFA"
	.byte	0xa
	.byte	0xcb
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0xa
	.byte	0xcc
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"RXFC"
	.byte	0xa
	.byte	0xcd
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"TXFC"
	.byte	0xa
	.byte	0xce
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"reserved_18"
	.byte	0xa
	.byte	0xcf
	.uaword	0x22e
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FIFOCFG_Bits"
	.byte	0xa
	.byte	0xd0
	.uaword	0x3231
	.uleb128 0xf
	.string	"_Ifx_I2C_GPCTL_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd3
	.uaword	0x335c
	.uleb128 0x10
	.string	"PISEL"
	.byte	0xa
	.byte	0xd5
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0xa
	.byte	0xd6
	.uaword	0x22e
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_GPCTL_Bits"
	.byte	0xa
	.byte	0xd7
	.uaword	0x331f
	.uleb128 0xf
	.string	"_Ifx_I2C_ICR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xda
	.uaword	0x33dc
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xa
	.byte	0xdc
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0xa
	.byte	0xdd
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xa
	.byte	0xde
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xa
	.byte	0xdf
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xa
	.byte	0xe0
	.uaword	0x22e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ICR_Bits"
	.byte	0xa
	.byte	0xe1
	.uaword	0x3376
	.uleb128 0xf
	.string	"_Ifx_I2C_ID_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xe4
	.uaword	0x343f
	.uleb128 0x10
	.string	"MOD_REV"
	.byte	0xa
	.byte	0xe6
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0xa
	.byte	0xe7
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xa
	.byte	0xe8
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ID_Bits"
	.byte	0xa
	.byte	0xe9
	.uaword	0x33f4
	.uleb128 0xf
	.string	"_Ifx_I2C_IMSC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xec
	.uaword	0x34db
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xa
	.byte	0xee
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0xa
	.byte	0xef
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xa
	.byte	0xf0
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xa
	.byte	0xf1
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xa
	.byte	0xf2
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xa
	.byte	0xf3
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0xa
	.byte	0xf4
	.uaword	0x22e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_IMSC_Bits"
	.byte	0xa
	.byte	0xf5
	.uaword	0x3456
	.uleb128 0xf
	.string	"_Ifx_I2C_ISR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xf8
	.uaword	0x3579
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xa
	.byte	0xfa
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0xa
	.byte	0xfb
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xa
	.byte	0xfc
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xa
	.byte	0xfd
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xa
	.byte	0xfe
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xa
	.byte	0xff
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x100
	.uaword	0x22e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ISR_Bits"
	.byte	0xa
	.uahalf	0x101
	.uaword	0x34f4
	.uleb128 0x9
	.string	"_Ifx_I2C_KRST0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x104
	.uaword	0x35e4
	.uleb128 0xa
	.string	"RST"
	.byte	0xa
	.uahalf	0x106
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"RSTSTAT"
	.byte	0xa
	.uahalf	0x107
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x108
	.uaword	0x22e
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRST0_Bits"
	.byte	0xa
	.uahalf	0x109
	.uaword	0x3592
	.uleb128 0x9
	.string	"_Ifx_I2C_KRST1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x10c
	.uaword	0x363d
	.uleb128 0xa
	.string	"RST"
	.byte	0xa
	.uahalf	0x10e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF27
	.byte	0xa
	.uahalf	0x10f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRST1_Bits"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x35ff
	.uleb128 0x9
	.string	"_Ifx_I2C_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x113
	.uaword	0x3698
	.uleb128 0xa
	.string	"CLR"
	.byte	0xa
	.uahalf	0x115
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF27
	.byte	0xa
	.uahalf	0x116
	.uaword	0x22e
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRSTCLR_Bits"
	.byte	0xa
	.uahalf	0x117
	.uaword	0x3658
	.uleb128 0x9
	.string	"_Ifx_I2C_MIS_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x11a
	.uaword	0x3741
	.uleb128 0xb
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x11c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x11d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF23
	.byte	0xa
	.uahalf	0x11e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.uaword	.LASF24
	.byte	0xa
	.uahalf	0x11f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF25
	.byte	0xa
	.uahalf	0x120
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF26
	.byte	0xa
	.uahalf	0x121
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x122
	.uaword	0x22e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MIS_Bits"
	.byte	0xa
	.uahalf	0x123
	.uaword	0x36b5
	.uleb128 0x9
	.string	"_Ifx_I2C_MODID_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x126
	.uaword	0x37b1
	.uleb128 0xa
	.string	"MOD_REV"
	.byte	0xa
	.uahalf	0x128
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"MOD_TYPE"
	.byte	0xa
	.uahalf	0x129
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x12a
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MODID_Bits"
	.byte	0xa
	.uahalf	0x12b
	.uaword	0x375a
	.uleb128 0x9
	.string	"_Ifx_I2C_MRPSCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x12e
	.uaword	0x380e
	.uleb128 0xa
	.string	"MRPS"
	.byte	0xa
	.uahalf	0x130
	.uaword	0x22e
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.uaword	.LASF20
	.byte	0xa
	.uahalf	0x131
	.uaword	0x22e
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MRPSCTRL_Bits"
	.byte	0xa
	.uahalf	0x132
	.uaword	0x37cc
	.uleb128 0x9
	.string	"_Ifx_I2C_PIRQSC_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x135
	.uaword	0x38c7
	.uleb128 0xa
	.string	"AM"
	.byte	0xa
	.uahalf	0x137
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"GC"
	.byte	0xa
	.uahalf	0x138
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"MC"
	.byte	0xa
	.uahalf	0x139
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"AL"
	.byte	0xa
	.uahalf	0x13a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"NACK"
	.byte	0xa
	.uahalf	0x13b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x13c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"RX"
	.byte	0xa
	.uahalf	0x13d
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x13e
	.uaword	0x22e
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSC_Bits"
	.byte	0xa
	.uahalf	0x13f
	.uaword	0x382c
	.uleb128 0x9
	.string	"_Ifx_I2C_PIRQSM_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x142
	.uaword	0x397e
	.uleb128 0xa
	.string	"AM"
	.byte	0xa
	.uahalf	0x144
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"GC"
	.byte	0xa
	.uahalf	0x145
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"MC"
	.byte	0xa
	.uahalf	0x146
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"AL"
	.byte	0xa
	.uahalf	0x147
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"NACK"
	.byte	0xa
	.uahalf	0x148
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x149
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"RX"
	.byte	0xa
	.uahalf	0x14a
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x14b
	.uaword	0x22e
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSM_Bits"
	.byte	0xa
	.uahalf	0x14c
	.uaword	0x38e3
	.uleb128 0x9
	.string	"_Ifx_I2C_PIRQSS_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x14f
	.uaword	0x3a35
	.uleb128 0xa
	.string	"AM"
	.byte	0xa
	.uahalf	0x151
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"GC"
	.byte	0xa
	.uahalf	0x152
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"MC"
	.byte	0xa
	.uahalf	0x153
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"AL"
	.byte	0xa
	.uahalf	0x154
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"NACK"
	.byte	0xa
	.uahalf	0x155
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x156
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"RX"
	.byte	0xa
	.uahalf	0x157
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x158
	.uaword	0x22e
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSS_Bits"
	.byte	0xa
	.uahalf	0x159
	.uaword	0x399a
	.uleb128 0x9
	.string	"_Ifx_I2C_RIS_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x15c
	.uaword	0x3add
	.uleb128 0xb
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x15e
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF23
	.byte	0xa
	.uahalf	0x160
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.uaword	.LASF24
	.byte	0xa
	.uahalf	0x161
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF25
	.byte	0xa
	.uahalf	0x162
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF26
	.byte	0xa
	.uahalf	0x163
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x164
	.uaword	0x22e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RIS_Bits"
	.byte	0xa
	.uahalf	0x165
	.uaword	0x3a51
	.uleb128 0x9
	.string	"_Ifx_I2C_RPSSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x168
	.uaword	0x3b36
	.uleb128 0xa
	.string	"RPS"
	.byte	0xa
	.uahalf	0x16a
	.uaword	0x22e
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.uaword	.LASF20
	.byte	0xa
	.uahalf	0x16b
	.uaword	0x22e
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RPSSTAT_Bits"
	.byte	0xa
	.uahalf	0x16c
	.uaword	0x3af6
	.uleb128 0x9
	.string	"_Ifx_I2C_RUNCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x16f
	.uaword	0x3b93
	.uleb128 0xa
	.string	"RUN"
	.byte	0xa
	.uahalf	0x171
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF27
	.byte	0xa
	.uahalf	0x172
	.uaword	0x22e
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RUNCTRL_Bits"
	.byte	0xa
	.uahalf	0x173
	.uaword	0x3b53
	.uleb128 0x9
	.string	"_Ifx_I2C_RXD_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x176
	.uaword	0x3bdc
	.uleb128 0xa
	.string	"RXD"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x22e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RXD_Bits"
	.byte	0xa
	.uahalf	0x179
	.uaword	0x3bb0
	.uleb128 0x9
	.string	"_Ifx_I2C_TIMCFG_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x17c
	.uaword	0x3cf1
	.uleb128 0xa
	.string	"SDA_DEL_HD_DAT"
	.byte	0xa
	.uahalf	0x17e
	.uaword	0x22e
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"HS_SDA_DEL_HD_DAT"
	.byte	0xa
	.uahalf	0x17f
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"SCL_DEL_HD_STA"
	.byte	0xa
	.uahalf	0x180
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	.LASF10
	.byte	0xa
	.uahalf	0x181
	.uaword	0x22e
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"EN_SCL_LOW_LEN"
	.byte	0xa
	.uahalf	0x182
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"FS_SCL_LOW"
	.byte	0xa
	.uahalf	0x183
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"HS_SDA_DEL"
	.byte	0xa
	.uahalf	0x184
	.uaword	0x22e
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"reserved_19"
	.byte	0xa
	.uahalf	0x185
	.uaword	0x22e
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"SCL_LOW_LEN"
	.byte	0xa
	.uahalf	0x186
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TIMCFG_Bits"
	.byte	0xa
	.uahalf	0x187
	.uaword	0x3bf5
	.uleb128 0x9
	.string	"_Ifx_I2C_TPSCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x18a
	.uaword	0x3d4d
	.uleb128 0xa
	.string	"TPS"
	.byte	0xa
	.uahalf	0x18c
	.uaword	0x22e
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.uaword	.LASF20
	.byte	0xa
	.uahalf	0x18d
	.uaword	0x22e
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TPSCTRL_Bits"
	.byte	0xa
	.uahalf	0x18e
	.uaword	0x3d0d
	.uleb128 0x9
	.string	"_Ifx_I2C_TXD_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x191
	.uaword	0x3d96
	.uleb128 0xa
	.string	"TXD"
	.byte	0xa
	.uahalf	0x193
	.uaword	0x22e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TXD_Bits"
	.byte	0xa
	.uahalf	0x194
	.uaword	0x3d6a
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x19c
	.uaword	0x3dd7
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1a1
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1a3
	.uaword	0x2c1f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ACCEN0"
	.byte	0xa
	.uahalf	0x1a4
	.uaword	0x3daf
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1a7
	.uaword	0x3e16
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1aa
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1ac
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1ae
	.uaword	0x2c67
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ACCEN1"
	.byte	0xa
	.uahalf	0x1af
	.uaword	0x3dee
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1b2
	.uaword	0x3e55
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1b5
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1b7
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1b9
	.uaword	0x2d33
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ADDRCFG"
	.byte	0xa
	.uahalf	0x1ba
	.uaword	0x3e2d
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1bd
	.uaword	0x3e95
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1c0
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1c2
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1c4
	.uaword	0x2d9a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_BUSSTAT"
	.byte	0xa
	.uahalf	0x1c5
	.uaword	0x3e6d
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1c8
	.uaword	0x3ed5
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1cb
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1cd
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1cf
	.uaword	0x2ec2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_CLC"
	.byte	0xa
	.uahalf	0x1d0
	.uaword	0x3ead
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1d3
	.uaword	0x3f11
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1d6
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1d8
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1da
	.uaword	0x2e5f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_CLC1"
	.byte	0xa
	.uahalf	0x1db
	.uaword	0x3ee9
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1de
	.uaword	0x3f4e
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1e1
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1e3
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1e5
	.uaword	0x2f2d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ENDDCTRL"
	.byte	0xa
	.uahalf	0x1e6
	.uaword	0x3f26
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1e9
	.uaword	0x3f8f
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1ec
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1ee
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1f0
	.uaword	0x2fb5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ERRIRQSC"
	.byte	0xa
	.uahalf	0x1f1
	.uaword	0x3f67
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1f4
	.uaword	0x3fd0
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1f7
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1f9
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1fb
	.uaword	0x303d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ERRIRQSM"
	.byte	0xa
	.uahalf	0x1fc
	.uaword	0x3fa8
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1ff
	.uaword	0x4011
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x202
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x204
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x206
	.uaword	0x30c5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ERRIRQSS"
	.byte	0xa
	.uahalf	0x207
	.uaword	0x3fe9
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x20a
	.uaword	0x4052
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x20d
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x20f
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x211
	.uaword	0x313d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_FDIVCFG"
	.byte	0xa
	.uahalf	0x212
	.uaword	0x402a
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x215
	.uaword	0x4092
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x218
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x21a
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x21c
	.uaword	0x31b8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_FDIVHIGHCFG"
	.byte	0xa
	.uahalf	0x21d
	.uaword	0x406a
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x220
	.uaword	0x40d6
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x223
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x225
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x227
	.uaword	0x3215
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_FFSSTAT"
	.byte	0xa
	.uahalf	0x228
	.uaword	0x40ae
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x22b
	.uaword	0x4116
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x22e
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x230
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x232
	.uaword	0x3303
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_FIFOCFG"
	.byte	0xa
	.uahalf	0x233
	.uaword	0x40ee
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x236
	.uaword	0x4156
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x239
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x23b
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x23d
	.uaword	0x335c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_GPCTL"
	.byte	0xa
	.uahalf	0x23e
	.uaword	0x412e
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x241
	.uaword	0x4194
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x244
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x246
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x248
	.uaword	0x33dc
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ICR"
	.byte	0xa
	.uahalf	0x249
	.uaword	0x416c
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x24c
	.uaword	0x41d0
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x24f
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x251
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x253
	.uaword	0x343f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ID"
	.byte	0xa
	.uahalf	0x254
	.uaword	0x41a8
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x257
	.uaword	0x420b
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x25a
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x25c
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x25e
	.uaword	0x34db
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_IMSC"
	.byte	0xa
	.uahalf	0x25f
	.uaword	0x41e3
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x262
	.uaword	0x4248
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x265
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x267
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x269
	.uaword	0x3579
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ISR"
	.byte	0xa
	.uahalf	0x26a
	.uaword	0x4220
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x26d
	.uaword	0x4284
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x270
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x272
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x274
	.uaword	0x35e4
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRST0"
	.byte	0xa
	.uahalf	0x275
	.uaword	0x425c
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x278
	.uaword	0x42c2
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x27b
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x27d
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x27f
	.uaword	0x363d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRST1"
	.byte	0xa
	.uahalf	0x280
	.uaword	0x429a
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x283
	.uaword	0x4300
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x286
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x288
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x28a
	.uaword	0x3698
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRSTCLR"
	.byte	0xa
	.uahalf	0x28b
	.uaword	0x42d8
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x28e
	.uaword	0x4340
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x291
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x293
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x295
	.uaword	0x3741
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MIS"
	.byte	0xa
	.uahalf	0x296
	.uaword	0x4318
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x299
	.uaword	0x437c
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x29c
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x29e
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2a0
	.uaword	0x37b1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MODID"
	.byte	0xa
	.uahalf	0x2a1
	.uaword	0x4354
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2a4
	.uaword	0x43ba
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2a7
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2a9
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2ab
	.uaword	0x380e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MRPSCTRL"
	.byte	0xa
	.uahalf	0x2ac
	.uaword	0x4392
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2af
	.uaword	0x43fb
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2b2
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2b4
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2b6
	.uaword	0x38c7
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSC"
	.byte	0xa
	.uahalf	0x2b7
	.uaword	0x43d3
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2ba
	.uaword	0x443a
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2bd
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2bf
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2c1
	.uaword	0x397e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSM"
	.byte	0xa
	.uahalf	0x2c2
	.uaword	0x4412
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2c5
	.uaword	0x4479
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2c8
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2ca
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2cc
	.uaword	0x3a35
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSS"
	.byte	0xa
	.uahalf	0x2cd
	.uaword	0x4451
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2d0
	.uaword	0x44b8
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2d3
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2d5
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2d7
	.uaword	0x3add
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RIS"
	.byte	0xa
	.uahalf	0x2d8
	.uaword	0x4490
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2db
	.uaword	0x44f4
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2de
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2e0
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2e2
	.uaword	0x3b36
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RPSSTAT"
	.byte	0xa
	.uahalf	0x2e3
	.uaword	0x44cc
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2e6
	.uaword	0x4534
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2e9
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2eb
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2ed
	.uaword	0x3b93
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RUNCTRL"
	.byte	0xa
	.uahalf	0x2ee
	.uaword	0x450c
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2f1
	.uaword	0x4574
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2f4
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2f6
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2f8
	.uaword	0x3bdc
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RXD"
	.byte	0xa
	.uahalf	0x2f9
	.uaword	0x454c
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2fc
	.uaword	0x45b0
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2ff
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x301
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x303
	.uaword	0x3cf1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TIMCFG"
	.byte	0xa
	.uahalf	0x304
	.uaword	0x4588
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x307
	.uaword	0x45ef
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x30a
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x30c
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x30e
	.uaword	0x3d4d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TPSCTRL"
	.byte	0xa
	.uahalf	0x30f
	.uaword	0x45c7
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x312
	.uaword	0x462f
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x315
	.uaword	0x22e
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x317
	.uaword	0x19f
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x319
	.uaword	0x3d96
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TXD"
	.byte	0xa
	.uahalf	0x31a
	.uaword	0x4607
	.uleb128 0x18
	.string	"_Ifx_I2C"
	.uaword	0x10100
	.byte	0xa
	.uahalf	0x325
	.uaword	0x495f
	.uleb128 0x13
	.string	"CLC1"
	.byte	0xa
	.uahalf	0x327
	.uaword	0x3f11
	.byte	0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0xa
	.uahalf	0x328
	.uaword	0x359
	.byte	0x4
	.uleb128 0x13
	.string	"ID"
	.byte	0xa
	.uahalf	0x329
	.uaword	0x41d0
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0xa
	.uahalf	0x32a
	.uaword	0x359
	.byte	0xc
	.uleb128 0x13
	.string	"RUNCTRL"
	.byte	0xa
	.uahalf	0x32b
	.uaword	0x4534
	.byte	0x10
	.uleb128 0x13
	.string	"ENDDCTRL"
	.byte	0xa
	.uahalf	0x32c
	.uaword	0x3f4e
	.byte	0x14
	.uleb128 0x13
	.string	"FDIVCFG"
	.byte	0xa
	.uahalf	0x32d
	.uaword	0x4052
	.byte	0x18
	.uleb128 0x13
	.string	"FDIVHIGHCFG"
	.byte	0xa
	.uahalf	0x32e
	.uaword	0x4092
	.byte	0x1c
	.uleb128 0x13
	.string	"ADDRCFG"
	.byte	0xa
	.uahalf	0x32f
	.uaword	0x3e55
	.byte	0x20
	.uleb128 0x13
	.string	"BUSSTAT"
	.byte	0xa
	.uahalf	0x330
	.uaword	0x3e95
	.byte	0x24
	.uleb128 0x13
	.string	"FIFOCFG"
	.byte	0xa
	.uahalf	0x331
	.uaword	0x4116
	.byte	0x28
	.uleb128 0x13
	.string	"MRPSCTRL"
	.byte	0xa
	.uahalf	0x332
	.uaword	0x43ba
	.byte	0x2c
	.uleb128 0x13
	.string	"RPSSTAT"
	.byte	0xa
	.uahalf	0x333
	.uaword	0x44f4
	.byte	0x30
	.uleb128 0x13
	.string	"TPSCTRL"
	.byte	0xa
	.uahalf	0x334
	.uaword	0x45ef
	.byte	0x34
	.uleb128 0x13
	.string	"FFSSTAT"
	.byte	0xa
	.uahalf	0x335
	.uaword	0x40d6
	.byte	0x38
	.uleb128 0x13
	.string	"reserved_3C"
	.byte	0xa
	.uahalf	0x336
	.uaword	0x359
	.byte	0x3c
	.uleb128 0x13
	.string	"TIMCFG"
	.byte	0xa
	.uahalf	0x337
	.uaword	0x45b0
	.byte	0x40
	.uleb128 0x13
	.string	"reserved_44"
	.byte	0xa
	.uahalf	0x338
	.uaword	0x389
	.byte	0x44
	.uleb128 0x13
	.string	"ERRIRQSM"
	.byte	0xa
	.uahalf	0x339
	.uaword	0x3fd0
	.byte	0x60
	.uleb128 0x13
	.string	"ERRIRQSS"
	.byte	0xa
	.uahalf	0x33a
	.uaword	0x4011
	.byte	0x64
	.uleb128 0x13
	.string	"ERRIRQSC"
	.byte	0xa
	.uahalf	0x33b
	.uaword	0x3f8f
	.byte	0x68
	.uleb128 0x13
	.string	"reserved_6C"
	.byte	0xa
	.uahalf	0x33c
	.uaword	0x359
	.byte	0x6c
	.uleb128 0x13
	.string	"PIRQSM"
	.byte	0xa
	.uahalf	0x33d
	.uaword	0x443a
	.byte	0x70
	.uleb128 0x13
	.string	"PIRQSS"
	.byte	0xa
	.uahalf	0x33e
	.uaword	0x4479
	.byte	0x74
	.uleb128 0x13
	.string	"PIRQSC"
	.byte	0xa
	.uahalf	0x33f
	.uaword	0x43fb
	.byte	0x78
	.uleb128 0x13
	.string	"reserved_7C"
	.byte	0xa
	.uahalf	0x340
	.uaword	0x359
	.byte	0x7c
	.uleb128 0x13
	.string	"RIS"
	.byte	0xa
	.uahalf	0x341
	.uaword	0x44b8
	.byte	0x80
	.uleb128 0x13
	.string	"IMSC"
	.byte	0xa
	.uahalf	0x342
	.uaword	0x420b
	.byte	0x84
	.uleb128 0x13
	.string	"MIS"
	.byte	0xa
	.uahalf	0x343
	.uaword	0x4340
	.byte	0x88
	.uleb128 0x13
	.string	"ICR"
	.byte	0xa
	.uahalf	0x344
	.uaword	0x4194
	.byte	0x8c
	.uleb128 0x13
	.string	"ISR"
	.byte	0xa
	.uahalf	0x345
	.uaword	0x4248
	.byte	0x90
	.uleb128 0x13
	.string	"reserved_94"
	.byte	0xa
	.uahalf	0x346
	.uaword	0x495f
	.byte	0x94
	.uleb128 0x19
	.string	"TXD"
	.byte	0xa
	.uahalf	0x347
	.uaword	0x462f
	.uahalf	0x8000
	.uleb128 0x19
	.string	"reserved_8004"
	.byte	0xa
	.uahalf	0x348
	.uaword	0x4970
	.uahalf	0x8004
	.uleb128 0x19
	.string	"RXD"
	.byte	0xa
	.uahalf	0x349
	.uaword	0x4574
	.uahalf	0xc000
	.uleb128 0x19
	.string	"reserved_C004"
	.byte	0xa
	.uahalf	0x34a
	.uaword	0x4970
	.uahalf	0xc004
	.uleb128 0x1a
	.string	"CLC"
	.byte	0xa
	.uahalf	0x34b
	.uaword	0x3ed5
	.uleb128 0x10000
	.uleb128 0x1a
	.string	"MODID"
	.byte	0xa
	.uahalf	0x34c
	.uaword	0x437c
	.uleb128 0x10004
	.uleb128 0x1a
	.string	"GPCTL"
	.byte	0xa
	.uahalf	0x34d
	.uaword	0x4156
	.uleb128 0x10008
	.uleb128 0x1a
	.string	"ACCEN0"
	.byte	0xa
	.uahalf	0x34e
	.uaword	0x3dd7
	.uleb128 0x1000c
	.uleb128 0x1a
	.string	"ACCEN1"
	.byte	0xa
	.uahalf	0x34f
	.uaword	0x3e16
	.uleb128 0x10010
	.uleb128 0x1a
	.string	"KRST0"
	.byte	0xa
	.uahalf	0x350
	.uaword	0x4284
	.uleb128 0x10014
	.uleb128 0x1a
	.string	"KRST1"
	.byte	0xa
	.uahalf	0x351
	.uaword	0x42c2
	.uleb128 0x10018
	.uleb128 0x1a
	.string	"KRSTCLR"
	.byte	0xa
	.uahalf	0x352
	.uaword	0x4300
	.uleb128 0x1001c
	.uleb128 0x1a
	.string	"reserved_10020"
	.byte	0xa
	.uahalf	0x353
	.uaword	0x488
	.uleb128 0x10020
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x4970
	.uleb128 0x1b
	.uaword	0x34d
	.uahalf	0x7f6b
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uaword	0x4981
	.uleb128 0x1b
	.uaword	0x34d
	.uahalf	0x3ffb
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C"
	.byte	0xa
	.uahalf	0x354
	.uaword	0x4991
	.uleb128 0x8
	.uaword	0x4643
	.uleb128 0x16
	.byte	0x14
	.byte	0xb
	.byte	0x27
	.uaword	0x49d2
	.uleb128 0x17
	.string	"module"
	.byte	0xb
	.byte	0x29
	.uaword	0x49d2
	.byte	0
	.uleb128 0x17
	.string	"pin"
	.byte	0xb
	.byte	0x2a
	.uaword	0x29f8
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LASF29
	.byte	0xb
	.byte	0x2b
	.uaword	0x32c
	.byte	0xc
	.uleb128 0x1c
	.uaword	.LASF30
	.byte	0xb
	.byte	0x2c
	.uaword	0x27fe
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4981
	.uleb128 0x3
	.string	"IfxI2c_Scl_InOut"
	.byte	0xb
	.byte	0x2d
	.uaword	0x49f0
	.uleb128 0x1d
	.uaword	0x4996
	.uleb128 0x16
	.byte	0x14
	.byte	0xb
	.byte	0x30
	.uaword	0x4a31
	.uleb128 0x17
	.string	"module"
	.byte	0xb
	.byte	0x32
	.uaword	0x49d2
	.byte	0
	.uleb128 0x17
	.string	"pin"
	.byte	0xb
	.byte	0x33
	.uaword	0x29f8
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LASF29
	.byte	0xb
	.byte	0x34
	.uaword	0x32c
	.byte	0xc
	.uleb128 0x1c
	.uaword	.LASF30
	.byte	0xb
	.byte	0x35
	.uaword	0x27fe
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_Sda_InOut"
	.byte	0xb
	.byte	0x36
	.uaword	0x4a49
	.uleb128 0x1d
	.uaword	0x49f5
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x36
	.uaword	0x4ac7
	.uleb128 0x5
	.string	"IfxI2c_BusStatus_idle"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxI2c_BusStatus_started"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxI2c_BusStatus_busyMaster"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxI2c_BusStatus_remoteSlave"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_BusStatus"
	.byte	0x2
	.byte	0x3b
	.uaword	0x4a4e
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x58
	.uaword	0x4c36
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_addressMatch"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_generalCall"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_masterCode"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_arbitrationLost"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_notAcknowledgeReceived"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_transmissionEnd"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_receiveMode"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_ProtocolInterruptSource"
	.byte	0x2
	.byte	0x60
	.uaword	0x4adf
	.uleb128 0x16
	.byte	0xc
	.byte	0x2
	.byte	0x75
	.uaword	0x4c8f
	.uleb128 0x17
	.string	"scl"
	.byte	0x2
	.byte	0x77
	.uaword	0x4c8f
	.byte	0
	.uleb128 0x17
	.string	"sda"
	.byte	0x2
	.byte	0x78
	.uaword	0x4c95
	.byte	0x4
	.uleb128 0x17
	.string	"padDriver"
	.byte	0x2
	.byte	0x79
	.uaword	0x29b8
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x49d8
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4a31
	.uleb128 0x3
	.string	"IfxI2c_Pins"
	.byte	0x2
	.byte	0x7a
	.uaword	0x4c5c
	.uleb128 0x1e
	.byte	0x4
	.byte	0xc
	.uahalf	0x132
	.uaword	0x4d37
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_ok"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_nak"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_al"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_busNotFree"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_error"
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.string	"IfxI2c_I2c_Status"
	.byte	0xc
	.uahalf	0x138
	.uaword	0x4cae
	.uleb128 0x1f
	.byte	0x10
	.byte	0xc
	.uahalf	0x144
	.uaword	0x4d95
	.uleb128 0x13
	.string	"i2c"
	.byte	0xc
	.uahalf	0x146
	.uaword	0x49d2
	.byte	0
	.uleb128 0x13
	.string	"busStatus"
	.byte	0xc
	.uahalf	0x147
	.uaword	0x4ac7
	.byte	0x4
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xc
	.uahalf	0x148
	.uaword	0x4d37
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x149
	.uaword	0x23e
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"IfxI2c_I2c"
	.byte	0xc
	.uahalf	0x14a
	.uaword	0x4d51
	.uleb128 0x1f
	.byte	0xc
	.byte	0xc
	.uahalf	0x14e
	.uaword	0x4dda
	.uleb128 0x13
	.string	"i2c"
	.byte	0xc
	.uahalf	0x150
	.uaword	0x49d2
	.byte	0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x151
	.uaword	0x23e
	.byte	0x4
	.uleb128 0x13
	.string	"pins"
	.byte	0xc
	.uahalf	0x152
	.uaword	0x4dda
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4de0
	.uleb128 0x1d
	.uaword	0x4c9b
	.uleb128 0xc
	.string	"IfxI2c_I2c_Config"
	.byte	0xc
	.uahalf	0x153
	.uaword	0x4da8
	.uleb128 0x1f
	.byte	0x8
	.byte	0xc
	.uahalf	0x157
	.uaword	0x4e23
	.uleb128 0x13
	.string	"i2c"
	.byte	0xc
	.uahalf	0x159
	.uaword	0x4e23
	.byte	0
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x15a
	.uaword	0x1b5
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4d95
	.uleb128 0xc
	.string	"IfxI2c_I2c_Device"
	.byte	0xc
	.uahalf	0x15b
	.uaword	0x4dff
	.uleb128 0x1f
	.byte	0x8
	.byte	0xc
	.uahalf	0x15f
	.uaword	0x4e67
	.uleb128 0x13
	.string	"i2c"
	.byte	0xc
	.uahalf	0x161
	.uaword	0x4e23
	.byte	0
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x162
	.uaword	0x1b5
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IfxI2c_I2c_deviceConfig"
	.byte	0xc
	.uahalf	0x163
	.uaword	0x4e43
	.uleb128 0x16
	.byte	0x9c
	.byte	0xd
	.byte	0x31
	.uaword	0x4ed5
	.uleb128 0x17
	.string	"i2c"
	.byte	0xd
	.byte	0x33
	.uaword	0x4d95
	.byte	0
	.uleb128 0x17
	.string	"i2cDev"
	.byte	0xd
	.byte	0x34
	.uaword	0x4e29
	.byte	0x10
	.uleb128 0x17
	.string	"i2cAddr"
	.byte	0xd
	.byte	0x35
	.uaword	0x1c2
	.byte	0x18
	.uleb128 0x1c
	.uaword	.LASF34
	.byte	0xd
	.byte	0x36
	.uaword	0x4ed5
	.byte	0x19
	.uleb128 0x17
	.string	"cdata"
	.byte	0xd
	.byte	0x37
	.uaword	0x4eda
	.byte	0x59
	.byte	0
	.uleb128 0x8
	.uaword	0x478
	.uleb128 0x8
	.uaword	0x478
	.uleb128 0x3
	.string	"App_I2cBasic"
	.byte	0xd
	.byte	0x38
	.uaword	0x4e87
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0xe
	.byte	0x2a
	.uaword	0x1c2
	.uleb128 0x3
	.string	"int16_T"
	.byte	0xe
	.byte	0x2b
	.uaword	0x1e1
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0xe
	.byte	0x2c
	.uaword	0x1fc
	.uleb128 0x20
	.string	"IfxCpu_areInterruptsEnabled"
	.byte	0x3
	.uahalf	0x21e
	.byte	0x1
	.uaword	0x260
	.byte	0x3
	.uaword	0x4f68
	.uleb128 0x21
	.string	"reg"
	.byte	0x3
	.uahalf	0x220
	.uaword	0x454
	.uleb128 0x22
	.uleb128 0x21
	.string	"__res"
	.byte	0x3
	.uahalf	0x221
	.uaword	0x22e
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"__nop"
	.byte	0x4
	.uahalf	0x557
	.byte	0x1
	.byte	0x3
	.uleb128 0x24
	.string	"IfxI2c_setTransmitPacketSize"
	.byte	0x2
	.uahalf	0x36d
	.byte	0x1
	.byte	0x3
	.uaword	0x4fb4
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x36d
	.uaword	0x49d2
	.uleb128 0x26
	.uaword	.LASF35
	.byte	0x2
	.uahalf	0x36d
	.uaword	0x2a2
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_setReceivePacketSize"
	.byte	0x2
	.uahalf	0x35b
	.byte	0x1
	.byte	0x3
	.uaword	0x4ff3
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x35b
	.uaword	0x49d2
	.uleb128 0x26
	.uaword	.LASF35
	.byte	0x2
	.uahalf	0x35b
	.uaword	0x2a2
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_writeFifo"
	.byte	0x2
	.uahalf	0x380
	.byte	0x1
	.byte	0x3
	.uaword	0x5027
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x380
	.uaword	0x49d2
	.uleb128 0x26
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x380
	.uaword	0x220
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearLastSingleRequestInterruptSource"
	.byte	0x2
	.uahalf	0x253
	.byte	0x1
	.byte	0x3
	.uaword	0x506b
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x253
	.uaword	0x49d2
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearSingleRequestInterruptSource"
	.byte	0x2
	.uahalf	0x25f
	.byte	0x1
	.byte	0x3
	.uaword	0x50ab
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x25f
	.uaword	0x49d2
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearLastBurstRequestInterruptSource"
	.byte	0x2
	.uahalf	0x24d
	.byte	0x1
	.byte	0x3
	.uaword	0x50ee
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x24d
	.uaword	0x49d2
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearBurstRequestInterruptSource"
	.byte	0x2
	.uahalf	0x241
	.byte	0x1
	.byte	0x3
	.uaword	0x512d
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x241
	.uaword	0x49d2
	.byte	0
	.uleb128 0x20
	.string	"IfxI2c_getProtocolInterruptSourceStatus"
	.byte	0x2
	.uahalf	0x323
	.byte	0x1
	.uaword	0x260
	.byte	0x3
	.uaword	0x517f
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x323
	.uaword	0x49d2
	.uleb128 0x25
	.string	"source"
	.byte	0x2
	.uahalf	0x323
	.uaword	0x4c36
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearProtocolInterruptSource"
	.byte	0x2
	.uahalf	0x259
	.byte	0x1
	.byte	0x3
	.uaword	0x51c9
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x259
	.uaword	0x49d2
	.uleb128 0x25
	.string	"source"
	.byte	0x2
	.uahalf	0x259
	.uaword	0x4c36
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearAllProtocolInterruptSources"
	.byte	0x2
	.uahalf	0x23b
	.byte	0x1
	.byte	0x3
	.uaword	0x5208
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x23b
	.uaword	0x49d2
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearAllErrorInterruptSources"
	.byte	0x2
	.uahalf	0x235
	.byte	0x1
	.byte	0x3
	.uaword	0x5244
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x235
	.uaword	0x49d2
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_stop"
	.byte	0x2
	.uahalf	0x373
	.byte	0x1
	.byte	0x3
	.uaword	0x5267
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x373
	.uaword	0x49d2
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_run"
	.byte	0x2
	.uahalf	0x34f
	.byte	0x1
	.byte	0x3
	.uaword	0x5289
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x34f
	.uaword	0x49d2
	.byte	0
	.uleb128 0x20
	.string	"IfxI2c_getBusStatus"
	.byte	0x2
	.uahalf	0x2d8
	.byte	0x1
	.uaword	0x4ac7
	.byte	0x3
	.uaword	0x52b8
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x2d8
	.uaword	0x49d2
	.byte	0
	.uleb128 0x20
	.string	"IfxI2c_busIsFree"
	.byte	0x2
	.uahalf	0x228
	.byte	0x1
	.uaword	0x260
	.byte	0x3
	.uaword	0x52f1
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x228
	.uaword	0x49d2
	.uleb128 0x21
	.string	"free"
	.byte	0x2
	.uahalf	0x22a
	.uaword	0x260
	.byte	0
	.uleb128 0x20
	.string	"IfxCpu_disableInterrupts"
	.byte	0x3
	.uahalf	0x226
	.byte	0x1
	.uaword	0x260
	.byte	0x3
	.uaword	0x5329
	.uleb128 0x21
	.string	"enabled"
	.byte	0x3
	.uahalf	0x228
	.uaword	0x260
	.byte	0
	.uleb128 0x24
	.string	"IfxCpu_restoreInterrupts"
	.byte	0x3
	.uahalf	0x2fd
	.byte	0x1
	.byte	0x3
	.uaword	0x535d
	.uleb128 0x25
	.string	"enabled"
	.byte	0x3
	.uahalf	0x2fd
	.uaword	0x260
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"I2CHardFree"
	.byte	0x1
	.byte	0x4d
	.uaword	.LFB259
	.uaword	.LFE259
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.string	"ISR_I2CERROR"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.uaword	.LFB260
	.uaword	.LFE260
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"IfxI2c_I2c_readstart"
	.byte	0x1
	.uahalf	0x115
	.byte	0x1
	.uaword	0x4d37
	.uaword	.LFB262
	.uaword	.LFE262
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x553f
	.uleb128 0x2a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x115
	.uaword	0x553f
	.uaword	.LLST0
	.uleb128 0x2b
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x115
	.uaword	0x5545
	.byte	0x1
	.byte	0x65
	.uleb128 0x2a
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x115
	.uaword	0x2a2
	.uaword	.LLST1
	.uleb128 0x2c
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x119
	.uaword	0x4d37
	.byte	0
	.uleb128 0x2d
	.string	"i2c"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x49d2
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x220
	.uaword	.LLST2
	.uleb128 0x2f
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x1b5
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x220
	.byte	0
	.uleb128 0x2e
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x212
	.uaword	.LLST3
	.uleb128 0x2f
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x5550
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+21546
	.sleb128 0
	.uleb128 0x30
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x120
	.uaword	0x220
	.uleb128 0x31
	.uaword	0x4ff3
	.uaword	.LBB308
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x548b
	.uleb128 0x32
	.uaword	0x501a
	.uaword	.LLST4
	.uleb128 0x33
	.uaword	0x500e
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x4f74
	.uaword	.LBB311
	.uaword	.LBE311
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x54ad
	.uleb128 0x35
	.uaword	0x4fa7
	.byte	0x1
	.uleb128 0x33
	.uaword	0x4f9b
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x31
	.uaword	0x4fb4
	.uaword	.LBB313
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x54d2
	.uleb128 0x32
	.uaword	0x4fe6
	.uaword	.LLST5
	.uleb128 0x33
	.uaword	0x4fda
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x5027
	.uaword	.LBB318
	.uaword	.LBE318
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x54ee
	.uleb128 0x33
	.uaword	0x505e
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x506b
	.uaword	.LBB320
	.uaword	.LBE320
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x550a
	.uleb128 0x33
	.uaword	0x509e
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x50ab
	.uaword	.LBB322
	.uaword	.LBE322
	.byte	0x1
	.uahalf	0x140
	.uaword	0x5526
	.uleb128 0x33
	.uaword	0x50e1
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x36
	.uaword	0x50ee
	.uaword	.LBB324
	.uaword	.LBE324
	.byte	0x1
	.uahalf	0x141
	.uleb128 0x33
	.uaword	0x5120
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4e29
	.uleb128 0x15
	.byte	0x4
	.uaword	0x554b
	.uleb128 0x8
	.uaword	0x1b5
	.uleb128 0x15
	.byte	0x4
	.uaword	0x1b5
	.uleb128 0x37
	.byte	0x1
	.string	"ISR_I2CTXE"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x583e
	.uleb128 0x38
	.uaword	.LASF35
	.byte	0x1
	.byte	0x5c
	.uaword	0x212
	.byte	0x6
	.uleb128 0x39
	.string	"i2c"
	.byte	0x1
	.byte	0x5f
	.uaword	0x49d2
	.uaword	.LLST6
	.uleb128 0x3a
	.uaword	.LASF39
	.byte	0x1
	.byte	0x60
	.uaword	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3b
	.uaword	.LASF40
	.byte	0x1
	.byte	0x61
	.uaword	0x212
	.uaword	.LLST7
	.uleb128 0x3b
	.uaword	.LASF41
	.byte	0x1
	.byte	0x62
	.uaword	0x5550
	.uaword	.LLST8
	.uleb128 0x3b
	.uaword	.LASF42
	.byte	0x1
	.byte	0x63
	.uaword	0x220
	.uaword	.LLST9
	.uleb128 0x3c
	.uaword	0x512d
	.uaword	.LBB326
	.uaword	.LBE326
	.byte	0x1
	.byte	0x66
	.uaword	0x55ee
	.uleb128 0x35
	.uaword	0x516f
	.byte	0x4
	.uleb128 0x32
	.uaword	0x5163
	.uaword	.LLST6
	.byte	0
	.uleb128 0x3c
	.uaword	0x512d
	.uaword	.LBB328
	.uaword	.LBE328
	.byte	0x1
	.byte	0x70
	.uaword	0x5614
	.uleb128 0x32
	.uaword	0x516f
	.uaword	.LLST11
	.uleb128 0x32
	.uaword	0x5163
	.uaword	.LLST12
	.byte	0
	.uleb128 0x3c
	.uaword	0x512d
	.uaword	.LBB330
	.uaword	.LBE330
	.byte	0x1
	.byte	0x7c
	.uaword	0x563a
	.uleb128 0x32
	.uaword	0x516f
	.uaword	.LLST13
	.uleb128 0x32
	.uaword	0x5163
	.uaword	.LLST14
	.byte	0
	.uleb128 0x3d
	.uaword	0x517f
	.uaword	.LBB332
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x7f
	.uaword	0x5660
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST15
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST16
	.byte	0
	.uleb128 0x3d
	.uaword	0x517f
	.uaword	.LBB336
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x71
	.uaword	0x5686
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST17
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST18
	.byte	0
	.uleb128 0x3d
	.uaword	0x517f
	.uaword	.LBB340
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x67
	.uaword	0x56ac
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST19
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST20
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x78
	.uaword	0x57ba
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.byte	0x89
	.uaword	0x220
	.uaword	.LLST21
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x98
	.uaword	0x5749
	.uleb128 0x39
	.string	"k"
	.byte	0x1
	.byte	0x99
	.uaword	0x220
	.uaword	.LLST22
	.uleb128 0x3d
	.uaword	0x5027
	.uaword	.LBB346
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x9b
	.uaword	0x56f5
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST23
	.byte	0
	.uleb128 0x3d
	.uaword	0x506b
	.uaword	.LBB352
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x9c
	.uaword	0x5712
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST24
	.byte	0
	.uleb128 0x3d
	.uaword	0x50ab
	.uaword	.LBB355
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x9d
	.uaword	0x572f
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST25
	.byte	0
	.uleb128 0x3f
	.uaword	0x50ee
	.uaword	.LBB358
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0x9e
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0x5027
	.uaword	.LBB367
	.uaword	.LBE367
	.byte	0x1
	.byte	0xe8
	.uaword	0x5766
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST27
	.byte	0
	.uleb128 0x3c
	.uaword	0x506b
	.uaword	.LBB369
	.uaword	.LBE369
	.byte	0x1
	.byte	0xe9
	.uaword	0x5783
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST28
	.byte	0
	.uleb128 0x3c
	.uaword	0x50ab
	.uaword	.LBB371
	.uaword	.LBE371
	.byte	0x1
	.byte	0xea
	.uaword	0x57a0
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST29
	.byte	0
	.uleb128 0x40
	.uaword	0x50ee
	.uaword	.LBB373
	.uaword	.LBE373
	.byte	0x1
	.byte	0xeb
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x5027
	.uaword	.LBB376
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0xf6
	.uaword	0x57d7
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST31
	.byte	0
	.uleb128 0x3c
	.uaword	0x506b
	.uaword	.LBB382
	.uaword	.LBE382
	.byte	0x1
	.byte	0xf7
	.uaword	0x57f4
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST32
	.byte	0
	.uleb128 0x3c
	.uaword	0x50ab
	.uaword	.LBB384
	.uaword	.LBE384
	.byte	0x1
	.byte	0xf8
	.uaword	0x5811
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST33
	.byte	0
	.uleb128 0x3c
	.uaword	0x50ee
	.uaword	.LBB386
	.uaword	.LBE386
	.byte	0x1
	.byte	0xf9
	.uaword	0x582e
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST34
	.byte	0
	.uleb128 0x41
	.uaword	.LVL63
	.uaword	0x5395
	.uleb128 0x42
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxI2c_I2c_writereg"
	.byte	0x1
	.uahalf	0x154
	.byte	0x1
	.uaword	0x4d37
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5a1e
	.uleb128 0x2a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x154
	.uaword	0x553f
	.uaword	.LLST35
	.uleb128 0x2b
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x154
	.uaword	0x5545
	.byte	0x1
	.byte	0x65
	.uleb128 0x2b
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x154
	.uaword	0x2a2
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x156
	.uaword	0x4d37
	.byte	0
	.uleb128 0x2d
	.string	"i2c"
	.byte	0x1
	.uahalf	0x157
	.uaword	0x49d2
	.byte	0x1
	.byte	0x63
	.uleb128 0x2e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x158
	.uaword	0x1b5
	.uaword	.LLST36
	.uleb128 0x2f
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x159
	.uaword	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x212
	.uaword	.LLST37
	.uleb128 0x2e
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x220
	.uaword	.LLST38
	.uleb128 0x2e
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x5550
	.uaword	.LLST39
	.uleb128 0x31
	.uaword	0x51c9
	.uaword	.LBB389
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x591d
	.uleb128 0x33
	.uaword	0x51fb
	.byte	0x1
	.byte	0x63
	.byte	0
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB393
	.uaword	.LBE393
	.byte	0x1
	.uahalf	0x160
	.uaword	0x5939
	.uleb128 0x33
	.uaword	0x5237
	.byte	0x1
	.byte	0x63
	.byte	0
	.uleb128 0x43
	.uaword	.Ldebug_ranges0+0x158
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x220
	.uaword	.LLST40
	.uleb128 0x44
	.string	"j"
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x220
	.uaword	.LLST41
	.uleb128 0x31
	.uaword	0x4f74
	.uaword	.LBB396
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.uahalf	0x170
	.uaword	0x5981
	.uleb128 0x32
	.uaword	0x4fa7
	.uaword	.LLST42
	.uleb128 0x32
	.uaword	0x4f9b
	.uaword	.LLST43
	.byte	0
	.uleb128 0x31
	.uaword	0x4ff3
	.uaword	.LBB402
	.uaword	.Ldebug_ranges0+0x190
	.byte	0x1
	.uahalf	0x196
	.uaword	0x59a8
	.uleb128 0x32
	.uaword	0x501a
	.uaword	.LLST44
	.uleb128 0x32
	.uaword	0x500e
	.uaword	.LLST45
	.byte	0
	.uleb128 0x31
	.uaword	0x5027
	.uaword	.LBB405
	.uaword	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.uahalf	0x191
	.uaword	0x59c6
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST46
	.byte	0
	.uleb128 0x34
	.uaword	0x506b
	.uaword	.LBB409
	.uaword	.LBE409
	.byte	0x1
	.uahalf	0x192
	.uaword	0x59e4
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST47
	.byte	0
	.uleb128 0x34
	.uaword	0x50ab
	.uaword	.LBB411
	.uaword	.LBE411
	.byte	0x1
	.uahalf	0x193
	.uaword	0x5a02
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST48
	.byte	0
	.uleb128 0x36
	.uaword	0x50ee
	.uaword	.LBB413
	.uaword	.LBE413
	.byte	0x1
	.uahalf	0x194
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"IfxI2c_I2c_initConfig"
	.byte	0x1
	.uahalf	0x1a7
	.byte	0x1
	.uaword	.LFB264
	.uaword	.LFE264
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5a69
	.uleb128 0x46
	.string	"config"
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x5a69
	.byte	0x1
	.byte	0x64
	.uleb128 0x46
	.string	"i2c"
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x49d2
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4de5
	.uleb128 0x45
	.byte	0x1
	.string	"IfxI2c_I2c_initDevice"
	.byte	0x1
	.uahalf	0x1af
	.byte	0x1
	.uaword	.LFB265
	.uaword	.LFE265
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ab7
	.uleb128 0x2b
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x553f
	.byte	0x1
	.byte	0x64
	.uleb128 0x2b
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x5ab7
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x5abd
	.uleb128 0x1d
	.uaword	0x4e67
	.uleb128 0x45
	.byte	0x1
	.string	"IfxI2c_I2c_initDeviceConfig"
	.byte	0x1
	.uahalf	0x1b6
	.byte	0x1
	.uaword	.LFB266
	.uaword	.LFE266
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5b10
	.uleb128 0x2b
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x5b10
	.byte	0x1
	.byte	0x64
	.uleb128 0x46
	.string	"i2c"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x4e23
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4e67
	.uleb128 0x45
	.byte	0x1
	.string	"IfxI2c_I2c_initModule"
	.byte	0x1
	.uahalf	0x1bd
	.byte	0x1
	.uaword	.LFB267
	.uaword	.LFE267
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5c1f
	.uleb128 0x47
	.string	"i2c"
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x4e23
	.uaword	.LLST50
	.uleb128 0x47
	.string	"config"
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x5c1f
	.uaword	.LLST51
	.uleb128 0x2d
	.string	"i2cSFR"
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x49d2
	.byte	0x1
	.byte	0x6f
	.uleb128 0x31
	.uaword	0x5244
	.uaword	.LBB417
	.uaword	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x5b91
	.uleb128 0x33
	.uaword	0x525a
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x31
	.uaword	0x5267
	.uaword	.LBB421
	.uaword	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0x5bad
	.uleb128 0x33
	.uaword	0x527c
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x31
	.uaword	0x5289
	.uaword	.LBB425
	.uaword	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x5bc9
	.uleb128 0x33
	.uaword	0x52ab
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x48
	.uaword	.LVL100
	.uaword	0x70ec
	.uaword	0x5bdd
	.uleb128 0x42
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL101
	.uaword	0x7111
	.uaword	0x5bf1
	.uleb128 0x42
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL102
	.uaword	0x713b
	.uaword	0x5c05
	.uleb128 0x42
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL103
	.uaword	0x7164
	.uleb128 0x41
	.uaword	.LVL104
	.uaword	0x7194
	.uleb128 0x42
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x5c25
	.uleb128 0x1d
	.uaword	0x4de5
	.uleb128 0x29
	.byte	0x1
	.string	"IfxI2c_I2c_read"
	.byte	0x1
	.uahalf	0x1d2
	.byte	0x1
	.uaword	0x4d37
	.uaword	.LFB268
	.uaword	.LFE268
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6298
	.uleb128 0x2a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x553f
	.uaword	.LLST52
	.uleb128 0x2a
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x5545
	.uaword	.LLST53
	.uleb128 0x2a
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x2a2
	.uaword	.LLST54
	.uleb128 0x2e
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x4d37
	.uaword	.LLST55
	.uleb128 0x2d
	.string	"i2c"
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x49d2
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0x220
	.uaword	.LLST56
	.uleb128 0x2e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x1b5
	.uaword	.LLST57
	.uleb128 0x2f
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x212
	.uaword	.LLST58
	.uleb128 0x2e
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x1db
	.uaword	0x5550
	.uaword	.LLST59
	.uleb128 0x2e
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x1dc
	.uaword	0x220
	.uaword	.LLST60
	.uleb128 0x34
	.uaword	0x52b8
	.uaword	.LBB429
	.uaword	.LBE429
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x5d2f
	.uleb128 0x33
	.uaword	0x52d7
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4a
	.uaword	.LBB430
	.uaword	.LBE430
	.uleb128 0x4b
	.uaword	0x52e3
	.uaword	.LLST61
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x51c9
	.uaword	.LBB431
	.uaword	.Ldebug_ranges0+0x208
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0x5d4d
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST62
	.byte	0
	.uleb128 0x31
	.uaword	0x4ff3
	.uaword	.LBB434
	.uaword	.Ldebug_ranges0+0x220
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x5d74
	.uleb128 0x32
	.uaword	0x501a
	.uaword	.LLST63
	.uleb128 0x32
	.uaword	0x500e
	.uaword	.LLST64
	.byte	0
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB438
	.uaword	.LBE438
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x5d92
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST65
	.byte	0
	.uleb128 0x34
	.uaword	0x4f74
	.uaword	.LBB440
	.uaword	.LBE440
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x5db9
	.uleb128 0x32
	.uaword	0x4fa7
	.uaword	.LLST66
	.uleb128 0x32
	.uaword	0x4f9b
	.uaword	.LLST67
	.byte	0
	.uleb128 0x34
	.uaword	0x4fb4
	.uaword	.LBB442
	.uaword	.LBE442
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x5de0
	.uleb128 0x32
	.uaword	0x4fe6
	.uaword	.LLST68
	.uleb128 0x32
	.uaword	0x4fda
	.uaword	.LLST69
	.byte	0
	.uleb128 0x34
	.uaword	0x5027
	.uaword	.LBB445
	.uaword	.LBE445
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x5dfe
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST70
	.byte	0
	.uleb128 0x34
	.uaword	0x506b
	.uaword	.LBB447
	.uaword	.LBE447
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x5e1c
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST71
	.byte	0
	.uleb128 0x34
	.uaword	0x50ab
	.uaword	.LBB449
	.uaword	.LBE449
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x5e3a
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST72
	.byte	0
	.uleb128 0x34
	.uaword	0x50ee
	.uaword	.LBB451
	.uaword	.LBE451
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x5e58
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST73
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x238
	.uaword	0x61b9
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x287
	.uaword	0x220
	.uaword	.LLST74
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB454
	.uaword	.LBE454
	.byte	0x1
	.uahalf	0x292
	.uaword	0x5e8f
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST75
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x270
	.uaword	0x605e
	.uleb128 0x30
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x260
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x220
	.uaword	.LLST76
	.uleb128 0x34
	.uaword	0x52f1
	.uaword	.LBB457
	.uaword	.LBE457
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x5f1d
	.uleb128 0x4a
	.uaword	.LBB458
	.uaword	.LBE458
	.uleb128 0x4c
	.uaword	0x5318
	.uleb128 0x34
	.uaword	0x4f21
	.uaword	.LBB459
	.uaword	.LBE459
	.byte	0x3
	.uahalf	0x229
	.uaword	0x5f0b
	.uleb128 0x4a
	.uaword	.LBB460
	.uaword	.LBE460
	.uleb128 0x4c
	.uaword	0x4f4b
	.uleb128 0x4a
	.uaword	.LBB461
	.uaword	.LBE461
	.uleb128 0x4b
	.uaword	0x4f58
	.uaword	.LLST77
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	0x4f68
	.uaword	.LBB462
	.uaword	.LBE462
	.byte	0x3
	.uahalf	0x22b
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x298
	.uaword	0x5ff9
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x21e
	.uaword	0x220
	.uaword	.LLST78
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x2c0
	.uaword	0x5fc2
	.uleb128 0x44
	.string	"k"
	.byte	0x1
	.uahalf	0x228
	.uaword	0x220
	.uaword	.LLST79
	.uleb128 0x34
	.uaword	0x5027
	.uaword	.LBB466
	.uaword	.LBE466
	.byte	0x1
	.uahalf	0x22f
	.uaword	0x5f6b
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST80
	.byte	0
	.uleb128 0x34
	.uaword	0x506b
	.uaword	.LBB468
	.uaword	.LBE468
	.byte	0x1
	.uahalf	0x230
	.uaword	0x5f89
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST81
	.byte	0
	.uleb128 0x34
	.uaword	0x50ab
	.uaword	.LBB470
	.uaword	.LBE470
	.byte	0x1
	.uahalf	0x231
	.uaword	0x5fa7
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST82
	.byte	0
	.uleb128 0x36
	.uaword	0x50ee
	.uaword	.LBB472
	.uaword	.LBE472
	.byte	0x1
	.uahalf	0x232
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST83
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x51c9
	.uaword	.LBB476
	.uaword	.LBE476
	.byte	0x1
	.uahalf	0x238
	.uaword	0x5fe0
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST84
	.byte	0
	.uleb128 0x36
	.uaword	0x5208
	.uaword	.LBB478
	.uaword	.LBE478
	.byte	0x1
	.uahalf	0x23f
	.uleb128 0x33
	.uaword	0x5237
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x5329
	.uaword	.LBB481
	.uaword	.LBE481
	.byte	0x1
	.uahalf	0x245
	.uaword	0x6013
	.uleb128 0x4e
	.uaword	0x534c
	.byte	0
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB483
	.uaword	.LBE483
	.byte	0x1
	.uahalf	0x248
	.uaword	0x603a
	.uleb128 0x32
	.uaword	0x516f
	.uaword	.LLST85
	.uleb128 0x32
	.uaword	0x5163
	.uaword	.LLST86
	.byte	0
	.uleb128 0x36
	.uaword	0x517f
	.uaword	.LBB485
	.uaword	.LBE485
	.byte	0x1
	.uahalf	0x24b
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST87
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST88
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x2e0
	.uaword	0x619e
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x256
	.uaword	0x220
	.uaword	.LLST89
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB491
	.uaword	.LBE491
	.byte	0x1
	.uahalf	0x250
	.uaword	0x609e
	.uleb128 0x32
	.uaword	0x516f
	.uaword	.LLST90
	.uleb128 0x32
	.uaword	0x5163
	.uaword	.LLST91
	.byte	0
	.uleb128 0x34
	.uaword	0x517f
	.uaword	.LBB493
	.uaword	.LBE493
	.byte	0x1
	.uahalf	0x253
	.uaword	0x60c5
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST92
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST93
	.byte	0
	.uleb128 0x34
	.uaword	0x51c9
	.uaword	.LBB495
	.uaword	.LBE495
	.byte	0x1
	.uahalf	0x25b
	.uaword	0x60e3
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST94
	.byte	0
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB497
	.uaword	.LBE497
	.byte	0x1
	.uahalf	0x261
	.uaword	0x6101
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST95
	.byte	0
	.uleb128 0x43
	.uaword	.Ldebug_ranges0+0x300
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.uahalf	0x268
	.uaword	0x220
	.uaword	.LLST96
	.uleb128 0x43
	.uaword	.Ldebug_ranges0+0x318
	.uleb128 0x44
	.string	"k"
	.byte	0x1
	.uahalf	0x277
	.uaword	0x220
	.uaword	.LLST97
	.uleb128 0x31
	.uaword	0x5027
	.uaword	.LBB501
	.uaword	.Ldebug_ranges0+0x330
	.byte	0x1
	.uahalf	0x279
	.uaword	0x6145
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST98
	.byte	0
	.uleb128 0x31
	.uaword	0x506b
	.uaword	.LBB507
	.uaword	.Ldebug_ranges0+0x358
	.byte	0x1
	.uahalf	0x27a
	.uaword	0x6163
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST99
	.byte	0
	.uleb128 0x31
	.uaword	0x50ab
	.uaword	.LBB510
	.uaword	.Ldebug_ranges0+0x370
	.byte	0x1
	.uahalf	0x27b
	.uaword	0x6181
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST100
	.byte	0
	.uleb128 0x4f
	.uaword	0x50ee
	.uaword	.LBB513
	.uaword	.Ldebug_ranges0+0x388
	.byte	0x1
	.uahalf	0x27c
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST101
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x51c9
	.uaword	.LBB523
	.uaword	.LBE523
	.byte	0x1
	.uahalf	0x28c
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST102
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x5289
	.uaword	.LBB529
	.uaword	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.uahalf	0x298
	.uaword	0x61d7
	.uleb128 0x32
	.uaword	0x52ab
	.uaword	.LLST103
	.byte	0
	.uleb128 0x31
	.uaword	0x5289
	.uaword	.LBB535
	.uaword	.Ldebug_ranges0+0x3c0
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x61f5
	.uleb128 0x32
	.uaword	0x52ab
	.uaword	.LLST104
	.byte	0
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB539
	.uaword	.LBE539
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x6217
	.uleb128 0x35
	.uaword	0x516f
	.byte	0x3
	.uleb128 0x33
	.uaword	0x5163
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x517f
	.uaword	.LBB541
	.uaword	.LBE541
	.byte	0x1
	.uahalf	0x201
	.uaword	0x623e
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST105
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST106
	.byte	0
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB543
	.uaword	.LBE543
	.byte	0x1
	.uahalf	0x204
	.uaword	0x6260
	.uleb128 0x35
	.uaword	0x516f
	.byte	0x4
	.uleb128 0x33
	.uaword	0x5163
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x517f
	.uaword	.LBB548
	.uaword	.LBE548
	.byte	0x1
	.uahalf	0x206
	.uaword	0x6287
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST107
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST108
	.byte	0
	.uleb128 0x41
	.uaword	.LVL125
	.uaword	0x71bc
	.uleb128 0x42
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxI2c_I2c_write"
	.byte	0x1
	.uahalf	0x2a1
	.byte	0x1
	.uaword	0x4d37
	.uaword	.LFB269
	.uaword	.LFE269
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x667c
	.uleb128 0x2a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0x553f
	.uaword	.LLST109
	.uleb128 0x2a
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0x5545
	.uaword	.LLST110
	.uleb128 0x2a
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0x2a2
	.uaword	.LLST111
	.uleb128 0x2e
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0x4d37
	.uaword	.LLST112
	.uleb128 0x2d
	.string	"i2c"
	.byte	0x1
	.uahalf	0x2a4
	.uaword	0x49d2
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0x1b5
	.uaword	.LLST113
	.uleb128 0x2f
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x212
	.uaword	.LLST114
	.uleb128 0x2e
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x2a8
	.uaword	0x220
	.uaword	.LLST115
	.uleb128 0x2e
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x2a9
	.uaword	0x5550
	.uaword	.LLST116
	.uleb128 0x34
	.uaword	0x52b8
	.uaword	.LBB552
	.uaword	.LBE552
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0x638e
	.uleb128 0x33
	.uaword	0x52d7
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4a
	.uaword	.LBB553
	.uaword	.LBE553
	.uleb128 0x4b
	.uaword	0x52e3
	.uaword	.LLST117
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x51c9
	.uaword	.LBB554
	.uaword	.LBE554
	.byte	0x1
	.uahalf	0x2b5
	.uaword	0x63ac
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST118
	.byte	0
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB556
	.uaword	.LBE556
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0x63ca
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST119
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x3d8
	.uaword	0x662f
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x220
	.uaword	.LLST120
	.uleb128 0x44
	.string	"j"
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x220
	.uaword	.LLST121
	.uleb128 0x30
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x2db
	.uaword	0x260
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x323
	.uaword	0x220
	.uaword	.LLST122
	.uleb128 0x34
	.uaword	0x52f1
	.uaword	.LBB559
	.uaword	.LBE559
	.byte	0x1
	.uahalf	0x2db
	.uaword	0x6476
	.uleb128 0x4a
	.uaword	.LBB560
	.uaword	.LBE560
	.uleb128 0x4c
	.uaword	0x5318
	.uleb128 0x34
	.uaword	0x4f21
	.uaword	.LBB561
	.uaword	.LBE561
	.byte	0x3
	.uahalf	0x229
	.uaword	0x6464
	.uleb128 0x4a
	.uaword	.LBB562
	.uaword	.LBE562
	.uleb128 0x4c
	.uaword	0x4f4b
	.uleb128 0x4a
	.uaword	.LBB563
	.uaword	.LBE563
	.uleb128 0x4b
	.uaword	0x4f58
	.uaword	.LLST123
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	0x4f68
	.uaword	.LBB564
	.uaword	.LBE564
	.byte	0x3
	.uahalf	0x22b
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x4f74
	.uaword	.LBB566
	.uaword	.Ldebug_ranges0+0x400
	.byte	0x1
	.uahalf	0x2dc
	.uaword	0x649d
	.uleb128 0x32
	.uaword	0x4fa7
	.uaword	.LLST124
	.uleb128 0x32
	.uaword	0x4f9b
	.uaword	.LLST125
	.byte	0
	.uleb128 0x31
	.uaword	0x4ff3
	.uaword	.LBB571
	.uaword	.Ldebug_ranges0+0x420
	.byte	0x1
	.uahalf	0x313
	.uaword	0x64c4
	.uleb128 0x32
	.uaword	0x501a
	.uaword	.LLST126
	.uleb128 0x32
	.uaword	0x500e
	.uaword	.LLST127
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x440
	.uaword	0x6516
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x2fe
	.uaword	0x220
	.uaword	.LLST128
	.uleb128 0x31
	.uaword	0x51c9
	.uaword	.LBB577
	.uaword	.Ldebug_ranges0+0x458
	.byte	0x1
	.uahalf	0x303
	.uaword	0x64fb
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST129
	.byte	0
	.uleb128 0x36
	.uaword	0x5208
	.uaword	.LBB581
	.uaword	.LBE581
	.byte	0x1
	.uahalf	0x309
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST130
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x5329
	.uaword	.LBB585
	.uaword	.LBE585
	.byte	0x1
	.uahalf	0x31a
	.uaword	0x6530
	.uleb128 0x4e
	.uaword	0x534c
	.byte	0
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB587
	.uaword	.LBE587
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x6557
	.uleb128 0x32
	.uaword	0x516f
	.uaword	.LLST131
	.uleb128 0x32
	.uaword	0x5163
	.uaword	.LLST132
	.byte	0
	.uleb128 0x34
	.uaword	0x517f
	.uaword	.LBB589
	.uaword	.LBE589
	.byte	0x1
	.uahalf	0x320
	.uaword	0x657e
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST133
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST134
	.byte	0
	.uleb128 0x34
	.uaword	0x51c9
	.uaword	.LBB591
	.uaword	.LBE591
	.byte	0x1
	.uahalf	0x328
	.uaword	0x659c
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST135
	.byte	0
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB593
	.uaword	.LBE593
	.byte	0x1
	.uahalf	0x32e
	.uaword	0x65ba
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST136
	.byte	0
	.uleb128 0x31
	.uaword	0x5027
	.uaword	.LBB596
	.uaword	.Ldebug_ranges0+0x470
	.byte	0x1
	.uahalf	0x314
	.uaword	0x65d8
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST137
	.byte	0
	.uleb128 0x34
	.uaword	0x506b
	.uaword	.LBB600
	.uaword	.LBE600
	.byte	0x1
	.uahalf	0x315
	.uaword	0x65f6
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST138
	.byte	0
	.uleb128 0x34
	.uaword	0x50ab
	.uaword	.LBB602
	.uaword	.LBE602
	.byte	0x1
	.uahalf	0x316
	.uaword	0x6614
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST139
	.byte	0
	.uleb128 0x36
	.uaword	0x50ee
	.uaword	.LBB604
	.uaword	.LBE604
	.byte	0x1
	.uahalf	0x317
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST140
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x5289
	.uaword	.LBB608
	.uaword	.Ldebug_ranges0+0x488
	.byte	0x1
	.uahalf	0x334
	.uaword	0x664d
	.uleb128 0x32
	.uaword	0x52ab
	.uaword	.LLST141
	.byte	0
	.uleb128 0x31
	.uaword	0x5289
	.uaword	.LBB614
	.uaword	.Ldebug_ranges0+0x4a8
	.byte	0x1
	.uahalf	0x2ae
	.uaword	0x666b
	.uleb128 0x32
	.uaword	0x52ab
	.uaword	.LLST142
	.byte	0
	.uleb128 0x41
	.uaword	.LVL244
	.uaword	0x71bc
	.uleb128 0x42
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxI2c_I2c_write1"
	.byte	0x1
	.uahalf	0x33e
	.byte	0x1
	.uaword	0x4d37
	.uaword	.LFB270
	.uaword	.LFE270
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69f4
	.uleb128 0x2b
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x33e
	.uaword	0x553f
	.byte	0x1
	.byte	0x64
	.uleb128 0x2b
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x33e
	.uaword	0x5545
	.byte	0x1
	.byte	0x65
	.uleb128 0x2b
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x33e
	.uaword	0x2a2
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x340
	.uaword	0x4d37
	.uaword	.LLST143
	.uleb128 0x2d
	.string	"i2c"
	.byte	0x1
	.uahalf	0x341
	.uaword	0x49d2
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x342
	.uaword	0x1b5
	.uaword	.LLST144
	.uleb128 0x2f
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x343
	.uaword	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x344
	.uaword	0x212
	.uaword	.LLST145
	.uleb128 0x2e
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x345
	.uaword	0x220
	.uaword	.LLST146
	.uleb128 0x2e
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x346
	.uaword	0x5550
	.uaword	.LLST147
	.uleb128 0x31
	.uaword	0x51c9
	.uaword	.LBB619
	.uaword	.Ldebug_ranges0+0x4c0
	.byte	0x1
	.uahalf	0x352
	.uaword	0x675a
	.uleb128 0x33
	.uaword	0x51fb
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB623
	.uaword	.LBE623
	.byte	0x1
	.uahalf	0x353
	.uaword	0x6776
	.uleb128 0x33
	.uaword	0x5237
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x4d8
	.uaword	0x69d9
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.uahalf	0x375
	.uaword	0x220
	.uaword	.LLST148
	.uleb128 0x44
	.string	"j"
	.byte	0x1
	.uahalf	0x375
	.uaword	0x220
	.uaword	.LLST149
	.uleb128 0x30
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x378
	.uaword	0x260
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x3c0
	.uaword	0x220
	.uaword	.LLST150
	.uleb128 0x34
	.uaword	0x52f1
	.uaword	.LBB626
	.uaword	.LBE626
	.byte	0x1
	.uahalf	0x378
	.uaword	0x6822
	.uleb128 0x4a
	.uaword	.LBB627
	.uaword	.LBE627
	.uleb128 0x4c
	.uaword	0x5318
	.uleb128 0x34
	.uaword	0x4f21
	.uaword	.LBB628
	.uaword	.LBE628
	.byte	0x3
	.uahalf	0x229
	.uaword	0x6810
	.uleb128 0x4a
	.uaword	.LBB629
	.uaword	.LBE629
	.uleb128 0x4c
	.uaword	0x4f4b
	.uleb128 0x4a
	.uaword	.LBB630
	.uaword	.LBE630
	.uleb128 0x4b
	.uaword	0x4f58
	.uaword	.LLST151
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	0x4f68
	.uaword	.LBB631
	.uaword	.LBE631
	.byte	0x3
	.uahalf	0x22b
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x4f74
	.uaword	.LBB633
	.uaword	.Ldebug_ranges0+0x4f0
	.byte	0x1
	.uahalf	0x379
	.uaword	0x6849
	.uleb128 0x32
	.uaword	0x4fa7
	.uaword	.LLST152
	.uleb128 0x32
	.uaword	0x4f9b
	.uaword	.LLST153
	.byte	0
	.uleb128 0x31
	.uaword	0x4ff3
	.uaword	.LBB637
	.uaword	.Ldebug_ranges0+0x510
	.byte	0x1
	.uahalf	0x3b0
	.uaword	0x6870
	.uleb128 0x32
	.uaword	0x501a
	.uaword	.LLST154
	.uleb128 0x32
	.uaword	0x500e
	.uaword	.LLST155
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x530
	.uaword	0x68c2
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x39b
	.uaword	0x220
	.uaword	.LLST156
	.uleb128 0x31
	.uaword	0x51c9
	.uaword	.LBB643
	.uaword	.Ldebug_ranges0+0x548
	.byte	0x1
	.uahalf	0x3a0
	.uaword	0x68a7
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST157
	.byte	0
	.uleb128 0x36
	.uaword	0x5208
	.uaword	.LBB647
	.uaword	.LBE647
	.byte	0x1
	.uahalf	0x3a6
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST158
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x5329
	.uaword	.LBB652
	.uaword	.LBE652
	.byte	0x1
	.uahalf	0x3b7
	.uaword	0x68dc
	.uleb128 0x4e
	.uaword	0x534c
	.byte	0
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB654
	.uaword	.LBE654
	.byte	0x1
	.uahalf	0x3ba
	.uaword	0x6903
	.uleb128 0x32
	.uaword	0x516f
	.uaword	.LLST159
	.uleb128 0x32
	.uaword	0x5163
	.uaword	.LLST160
	.byte	0
	.uleb128 0x34
	.uaword	0x517f
	.uaword	.LBB656
	.uaword	.LBE656
	.byte	0x1
	.uahalf	0x3bd
	.uaword	0x692a
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST161
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST162
	.byte	0
	.uleb128 0x31
	.uaword	0x5208
	.uaword	.LBB658
	.uaword	.Ldebug_ranges0+0x560
	.byte	0x1
	.uahalf	0x3cb
	.uaword	0x6948
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST163
	.byte	0
	.uleb128 0x31
	.uaword	0x5027
	.uaword	.LBB663
	.uaword	.Ldebug_ranges0+0x578
	.byte	0x1
	.uahalf	0x3b1
	.uaword	0x6966
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST164
	.byte	0
	.uleb128 0x34
	.uaword	0x506b
	.uaword	.LBB667
	.uaword	.LBE667
	.byte	0x1
	.uahalf	0x3b2
	.uaword	0x6984
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST165
	.byte	0
	.uleb128 0x34
	.uaword	0x50ab
	.uaword	.LBB669
	.uaword	.LBE669
	.byte	0x1
	.uahalf	0x3b3
	.uaword	0x69a2
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST166
	.byte	0
	.uleb128 0x34
	.uaword	0x50ee
	.uaword	.LBB671
	.uaword	.LBE671
	.byte	0x1
	.uahalf	0x3b4
	.uaword	0x69c0
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST167
	.byte	0
	.uleb128 0x36
	.uaword	0x51c9
	.uaword	.LBB673
	.uaword	.LBE673
	.byte	0x1
	.uahalf	0x3c5
	.uleb128 0x33
	.uaword	0x51fb
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uaword	0x5289
	.uaword	.LBB675
	.uaword	.Ldebug_ranges0+0x590
	.byte	0x1
	.uahalf	0x3d1
	.uleb128 0x32
	.uaword	0x52ab
	.uaword	.LLST168
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxI2c_I2c_read2"
	.byte	0x1
	.uahalf	0x3da
	.byte	0x1
	.uaword	0x4d37
	.uaword	.LFB271
	.uaword	.LFE271
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e36
	.uleb128 0x2a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x3da
	.uaword	0x553f
	.uaword	.LLST169
	.uleb128 0x2a
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x3da
	.uaword	0x5545
	.uaword	.LLST170
	.uleb128 0x2a
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x3da
	.uaword	0x2a2
	.uaword	.LLST171
	.uleb128 0x2e
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x3dc
	.uaword	0x4d37
	.uaword	.LLST172
	.uleb128 0x2d
	.string	"i2c"
	.byte	0x1
	.uahalf	0x3dd
	.uaword	0x49d2
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x3de
	.uaword	0x220
	.uaword	.LLST173
	.uleb128 0x2e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x3df
	.uaword	0x1b5
	.uaword	.LLST174
	.uleb128 0x2f
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x3e1
	.uaword	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x3e2
	.uaword	0x212
	.uaword	.LLST175
	.uleb128 0x2e
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x3e3
	.uaword	0x5550
	.uaword	.LLST176
	.uleb128 0x2e
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x3e4
	.uaword	0x220
	.uaword	.LLST177
	.uleb128 0x31
	.uaword	0x51c9
	.uaword	.LBB682
	.uaword	.Ldebug_ranges0+0x5b0
	.byte	0x1
	.uahalf	0x3ef
	.uaword	0x6ae7
	.uleb128 0x33
	.uaword	0x51fb
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x31
	.uaword	0x4ff3
	.uaword	.LBB685
	.uaword	.Ldebug_ranges0+0x5c8
	.byte	0x1
	.uahalf	0x3f6
	.uaword	0x6b0c
	.uleb128 0x32
	.uaword	0x501a
	.uaword	.LLST178
	.uleb128 0x33
	.uaword	0x500e
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x31
	.uaword	0x5208
	.uaword	.LBB690
	.uaword	.Ldebug_ranges0+0x5e8
	.byte	0x1
	.uahalf	0x3f0
	.uaword	0x6b28
	.uleb128 0x33
	.uaword	0x5237
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x31
	.uaword	0x4f74
	.uaword	.LBB695
	.uaword	.Ldebug_ranges0+0x600
	.byte	0x1
	.uahalf	0x3f4
	.uaword	0x6b4a
	.uleb128 0x35
	.uaword	0x4fa7
	.byte	0x1
	.uleb128 0x33
	.uaword	0x4f9b
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x4fb4
	.uaword	.LBB699
	.uaword	.LBE699
	.byte	0x1
	.uahalf	0x3f5
	.uaword	0x6b6f
	.uleb128 0x32
	.uaword	0x4fe6
	.uaword	.LLST179
	.uleb128 0x33
	.uaword	0x4fda
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x5027
	.uaword	.LBB702
	.uaword	.LBE702
	.byte	0x1
	.uahalf	0x3f7
	.uaword	0x6b8b
	.uleb128 0x33
	.uaword	0x505e
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x506b
	.uaword	.LBB704
	.uaword	.LBE704
	.byte	0x1
	.uahalf	0x3f8
	.uaword	0x6ba7
	.uleb128 0x33
	.uaword	0x509e
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x50ab
	.uaword	.LBB706
	.uaword	.LBE706
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x6bc3
	.uleb128 0x33
	.uaword	0x50e1
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x50ee
	.uaword	.LBB708
	.uaword	.LBE708
	.byte	0x1
	.uahalf	0x3fa
	.uaword	0x6bdf
	.uleb128 0x33
	.uaword	0x5120
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x618
	.uaword	0x6d75
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x457
	.uaword	0x220
	.uaword	.LLST180
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB711
	.uaword	.LBE711
	.byte	0x1
	.uahalf	0x462
	.uaword	0x6c16
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST181
	.byte	0
	.uleb128 0x34
	.uaword	0x51c9
	.uaword	.LBB713
	.uaword	.LBE713
	.byte	0x1
	.uahalf	0x45c
	.uaword	0x6c34
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST182
	.byte	0
	.uleb128 0x43
	.uaword	.Ldebug_ranges0+0x648
	.uleb128 0x44
	.string	"ris"
	.byte	0x1
	.uahalf	0x425
	.uaword	0x220
	.uaword	.LLST183
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB716
	.uaword	.LBE716
	.byte	0x1
	.uahalf	0x41f
	.uaword	0x6c70
	.uleb128 0x32
	.uaword	0x516f
	.uaword	.LLST184
	.uleb128 0x32
	.uaword	0x5163
	.uaword	.LLST185
	.byte	0
	.uleb128 0x34
	.uaword	0x517f
	.uaword	.LBB718
	.uaword	.LBE718
	.byte	0x1
	.uahalf	0x422
	.uaword	0x6c97
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST186
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST187
	.byte	0
	.uleb128 0x34
	.uaword	0x51c9
	.uaword	.LBB720
	.uaword	.LBE720
	.byte	0x1
	.uahalf	0x42a
	.uaword	0x6cb5
	.uleb128 0x32
	.uaword	0x51fb
	.uaword	.LLST188
	.byte	0
	.uleb128 0x34
	.uaword	0x5208
	.uaword	.LBB722
	.uaword	.LBE722
	.byte	0x1
	.uahalf	0x430
	.uaword	0x6cd3
	.uleb128 0x32
	.uaword	0x5237
	.uaword	.LLST189
	.byte	0
	.uleb128 0x4a
	.uaword	.LBB724
	.uaword	.LBE724
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.uahalf	0x437
	.uaword	0x220
	.uaword	.LLST190
	.uleb128 0x43
	.uaword	.Ldebug_ranges0+0x668
	.uleb128 0x44
	.string	"k"
	.byte	0x1
	.uahalf	0x446
	.uaword	0x220
	.uaword	.LLST191
	.uleb128 0x31
	.uaword	0x5027
	.uaword	.LBB726
	.uaword	.Ldebug_ranges0+0x680
	.byte	0x1
	.uahalf	0x448
	.uaword	0x6d1b
	.uleb128 0x32
	.uaword	0x505e
	.uaword	.LLST192
	.byte	0
	.uleb128 0x31
	.uaword	0x506b
	.uaword	.LBB732
	.uaword	.Ldebug_ranges0+0x6a8
	.byte	0x1
	.uahalf	0x449
	.uaword	0x6d39
	.uleb128 0x32
	.uaword	0x509e
	.uaword	.LLST193
	.byte	0
	.uleb128 0x31
	.uaword	0x50ab
	.uaword	.LBB735
	.uaword	.Ldebug_ranges0+0x6c0
	.byte	0x1
	.uahalf	0x44a
	.uaword	0x6d57
	.uleb128 0x32
	.uaword	0x50e1
	.uaword	.LLST194
	.byte	0
	.uleb128 0x4f
	.uaword	0x50ee
	.uaword	.LBB738
	.uaword	.Ldebug_ranges0+0x6d8
	.byte	0x1
	.uahalf	0x44b
	.uleb128 0x32
	.uaword	0x5120
	.uaword	.LLST195
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x5289
	.uaword	.LBB749
	.uaword	.Ldebug_ranges0+0x6f0
	.byte	0x1
	.uahalf	0x468
	.uaword	0x6d93
	.uleb128 0x32
	.uaword	0x52ab
	.uaword	.LLST196
	.byte	0
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB755
	.uaword	.LBE755
	.byte	0x1
	.uahalf	0x40b
	.uaword	0x6db5
	.uleb128 0x35
	.uaword	0x516f
	.byte	0x3
	.uleb128 0x33
	.uaword	0x5163
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x517f
	.uaword	.LBB757
	.uaword	.LBE757
	.byte	0x1
	.uahalf	0x40d
	.uaword	0x6ddc
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST197
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST198
	.byte	0
	.uleb128 0x34
	.uaword	0x512d
	.uaword	.LBB759
	.uaword	.LBE759
	.byte	0x1
	.uahalf	0x410
	.uaword	0x6dfe
	.uleb128 0x35
	.uaword	0x516f
	.byte	0x4
	.uleb128 0x33
	.uaword	0x5163
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x34
	.uaword	0x517f
	.uaword	.LBB763
	.uaword	.LBE763
	.byte	0x1
	.uahalf	0x412
	.uaword	0x6e25
	.uleb128 0x32
	.uaword	0x51b9
	.uaword	.LLST199
	.uleb128 0x32
	.uaword	0x51ad
	.uaword	.LLST200
	.byte	0
	.uleb128 0x41
	.uaword	.LVL329
	.uaword	0x71bc
	.uleb128 0x42
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x50
	.string	"I2CCurrentChannel"
	.byte	0x1
	.byte	0x1e
	.uaword	0x1c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.string	"g_I2cBasic"
	.byte	0x1
	.byte	0x48
	.uaword	0x4edf
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x4ef3
	.uaword	0x6e75
	.uleb128 0x7
	.uaword	0x34d
	.byte	0x3
	.byte	0
	.uleb128 0x50
	.string	"AccSensErr"
	.byte	0xf
	.byte	0x4f
	.uaword	0x6e65
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x4f11
	.uaword	0x6e99
	.uleb128 0x7
	.uaword	0x34d
	.byte	0x3
	.byte	0
	.uleb128 0x51
	.string	"diagcnt_AL"
	.byte	0xf
	.uahalf	0x11b
	.uaword	0x6e89
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"diagcnt_NACK"
	.byte	0xf
	.uahalf	0x11f
	.uaword	0x6e89
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"diagcnt_TXEND"
	.byte	0xf
	.uahalf	0x123
	.uaword	0x6e89
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"sxxx"
	.byte	0xf
	.uahalf	0x35f
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"sxxx1"
	.byte	0xf
	.uahalf	0x363
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"sxxx2"
	.byte	0xf
	.uahalf	0x367
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"sxxx3"
	.byte	0xf
	.uahalf	0x36b
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"syyy"
	.byte	0xf
	.uahalf	0x36f
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"syyy1"
	.byte	0xf
	.uahalf	0x373
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"syyy2"
	.byte	0xf
	.uahalf	0x377
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"syyy3"
	.byte	0xf
	.uahalf	0x37b
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"szzz"
	.byte	0xf
	.uahalf	0x37f
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"szzz1"
	.byte	0xf
	.uahalf	0x383
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"szzz2"
	.byte	0xf
	.uahalf	0x387
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"szzz3"
	.byte	0xf
	.uahalf	0x38b
	.uaword	0x4f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"xxx"
	.byte	0xf
	.uahalf	0x437
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"xxx1"
	.byte	0xf
	.uahalf	0x43b
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"xxx2"
	.byte	0xf
	.uahalf	0x43f
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"xxx3"
	.byte	0xf
	.uahalf	0x443
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"yyy"
	.byte	0xf
	.uahalf	0x447
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"yyy1"
	.byte	0xf
	.uahalf	0x44b
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"yyy2"
	.byte	0xf
	.uahalf	0x44f
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"yyy3"
	.byte	0xf
	.uahalf	0x453
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"zzz"
	.byte	0xf
	.uahalf	0x457
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"zzz1"
	.byte	0xf
	.uahalf	0x45b
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"zzz2"
	.byte	0xf
	.uahalf	0x45f
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"zzz3"
	.byte	0xf
	.uahalf	0x463
	.uaword	0x4f11
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.string	"test_al"
	.byte	0x1
	.byte	0x38
	.uaword	0x7061
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	test_al
	.uleb128 0x8
	.uaword	0x19f
	.uleb128 0x52
	.string	"test_nack"
	.byte	0x1
	.byte	0x39
	.uaword	0x7061
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	test_nack
	.uleb128 0x52
	.string	"test_TXEND"
	.byte	0x1
	.byte	0x3a
	.uaword	0x7061
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	test_TXEND
	.uleb128 0x52
	.string	"I2CBusStatus"
	.byte	0x1
	.byte	0x3b
	.uaword	0x7061
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	I2CBusStatus
	.uleb128 0x52
	.string	"StateI2C"
	.byte	0x1
	.byte	0x44
	.uaword	0x19f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	StateI2C
	.uleb128 0x50
	.string	"acc_xyz"
	.byte	0x1
	.byte	0x49
	.uaword	0x379
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.string	"kkk"
	.byte	0x1
	.byte	0x4a
	.uaword	0x19f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kkk
	.uleb128 0x53
	.byte	0x1
	.string	"IfxI2c_enableModule"
	.byte	0x2
	.uahalf	0x1ef
	.byte	0x1
	.byte	0x1
	.uaword	0x7111
	.uleb128 0x54
	.uaword	0x49d2
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxI2c_configureAsMaster"
	.byte	0x2
	.uahalf	0x1c3
	.byte	0x1
	.byte	0x1
	.uaword	0x713b
	.uleb128 0x54
	.uaword	0x49d2
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxI2c_setBaudrate"
	.byte	0x2
	.uahalf	0x220
	.byte	0x1
	.byte	0x1
	.uaword	0x7164
	.uleb128 0x54
	.uaword	0x49d2
	.uleb128 0x54
	.uaword	0x23e
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxI2c_initSclSdaPin"
	.byte	0x2
	.uahalf	0x209
	.byte	0x1
	.byte	0x1
	.uaword	0x7194
	.uleb128 0x54
	.uaword	0x4c8f
	.uleb128 0x54
	.uaword	0x4c95
	.uleb128 0x54
	.uaword	0x29b8
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"IfxI2c_getBaudrate"
	.byte	0x2
	.uahalf	0x204
	.byte	0x1
	.uaword	0x23e
	.byte	0x1
	.uaword	0x71bc
	.uleb128 0x54
	.uaword	0x49d2
	.byte	0
	.uleb128 0x56
	.byte	0x1
	.string	"IfxI2c_releaseBus"
	.byte	0x2
	.uahalf	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x54
	.uaword	0x49d2
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x38
	.uleb128 0xf
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
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
	.uleb128 0x1f
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-.Ltext0
	.uaword	.LFE262-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-.Ltext0
	.uaword	.LFE262-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL9-.Ltext0
	.uaword	.LFE262-.Ltext0
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL9-.Ltext0
	.uaword	.LFE262-.Ltext0
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL64-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL37-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE261-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL93-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL93-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL92-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL81-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL84-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL88-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL97-.Ltext0
	.uaword	.LVL99-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL99-.Ltext0
	.uaword	.LFE267-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL97-.Ltext0
	.uaword	.LVL100-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL100-1-.Ltext0
	.uaword	.LFE267-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL124-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL127-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL125-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL125-1-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL127-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL125-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL125-1-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL127-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL120-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL122-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL129-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL131-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL131-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL132-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL160-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL160-.Ltext0
	.uaword	.LVL161-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL162-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL166-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL167-.Ltext0
	.uaword	.LVL168-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL169-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL170-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL170-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL199-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL199-.Ltext0
	.uaword	.LVL200-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL200-.Ltext0
	.uaword	.LVL202-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL202-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL116-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL110-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL112-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL120-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL133-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL137-.Ltext0
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL140-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL172-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL176-.Ltext0
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL188-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL189-.Ltext0
	.uaword	.LVL190-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL190-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL144-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL145-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL145-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL185-.Ltext0
	.uaword	.LVL186-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL186-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL138-.Ltext0
	.uaword	.LVL140-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL177-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL184-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL190-.Ltext0
	.uaword	.LVL195-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL195-.Ltext0
	.uaword	.LVL196-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL196-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL109-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL129-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL116-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL125-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL133-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL137-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL176-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL176-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL115-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL119-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL164-.Ltext0
	.uaword	.LVL169-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL122-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL136-.Ltext0
	.uaword	.LVL137-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL197-.Ltext0
	.uaword	.LFE268-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL134-.Ltext0
	.uaword	.LVL135-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL141-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL197-.Ltext0
	.uaword	.LVL198-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL200-.Ltext0
	.uaword	.LVL201-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL147-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL147-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL148-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL197-.Ltext0
	.uaword	.LVL200-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL155-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL155-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL158-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL175-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL157-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL157-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL161-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL161-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL174-.Ltext0
	.uaword	.LVL176-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL182-.Ltext0
	.uaword	.LVL184-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL184-.Ltext0
	.uaword	.LVL188-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL190-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL179-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL191-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL180-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL181-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL193-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL165-.Ltext0
	.uaword	.LVL168-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL126-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL129-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL243-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL243-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL246-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL244-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL244-1-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL246-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL244-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL244-1-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL246-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL212-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL212-.Ltext0
	.uaword	.LVL213-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL224-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL224-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL225-.Ltext0
	.uaword	.LVL227-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL228-.Ltext0
	.uaword	.LVL229-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL230-.Ltext0
	.uaword	.LVL235-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL237-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL237-.Ltext0
	.uaword	.LVL239-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL240-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL246-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL250-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL251-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL206-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL246-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL212-.Ltext0
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL212-.Ltext0
	.uaword	.LVL221-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL246-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL257-.Ltext0
	.uaword	.LVL259-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL259-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL216-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL217-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL259-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL218-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL218-.Ltext0
	.uaword	.LVL219-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL219-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL246-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL248-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL248-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL206-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL248-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL211-.Ltext0
	.uaword	.LVL212-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL212-.Ltext0
	.uaword	.LVL213-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL254-.Ltext0
	.uaword	.LVL257-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL257-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL207-.Ltext0
	.uaword	.LVL213-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL215-.Ltext0
	.uaword	.LVL217-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL217-.Ltext0
	.uaword	.LVL221-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL259-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL233-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL208-.Ltext0
	.uaword	.LVL209-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL210-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL248-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL210-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL248-.Ltext0
	.uaword	.LFE269-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL252-.Ltext0
	.uaword	.LVL255-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL252-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL229-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL249-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL223-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL226-.Ltext0
	.uaword	.LVL229-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL231-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL231-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL234-.Ltext0
	.uaword	.LVL237-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL238-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL253-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL255-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL256-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL257-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL245-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL246-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL260-.Ltext0
	.uaword	.LVL269-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL269-.Ltext0
	.uaword	.LVL270-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL270-.Ltext0
	.uaword	.LVL281-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL281-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL285-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL285-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL287-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL295-.Ltext0
	.uaword	.LVL299-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL300-.Ltext0
	.uaword	.LVL312-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL313-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL263-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL262-.Ltext0
	.uaword	.LVL278-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL306-.Ltext0
	.uaword	.LVL308-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL308-.Ltext0
	.uaword	.LVL311-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL270-.Ltext0
	.uaword	.LVL273-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL308-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL309-.Ltext0
	.uaword	.LVL310-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL310-.Ltext0
	.uaword	.LVL311-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL262-.Ltext0
	.uaword	.LVL275-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL276-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL276-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL268-.Ltext0
	.uaword	.LVL269-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL269-.Ltext0
	.uaword	.LVL270-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL270-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL297-.Ltext0
	.uaword	.LVL303-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL303-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL270-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL272-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL274-.Ltext0
	.uaword	.LVL278-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL308-.Ltext0
	.uaword	.LVL311-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL311-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL265-.Ltext0
	.uaword	.LVL266-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL297-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL297-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL301-.Ltext0
	.uaword	.LVL304-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL301-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL279-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL297-.Ltext0
	.uaword	.LVL298-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL280-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL283-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL288-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL311-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL288-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL311-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL289-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL311-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL289-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL311-.Ltext0
	.uaword	.LFE270-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL304-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL305-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL306-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL296-.Ltext0
	.uaword	.LVL297-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL326-.Ltext0
	.uaword	.LVL331-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL335-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL335-.Ltext0
	.uaword	.LVL342-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL355-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL355-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL326-.Ltext0
	.uaword	.LVL331-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL335-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL335-.Ltext0
	.uaword	.LVL342-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL353-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL353-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL329-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL329-1-.Ltext0
	.uaword	.LVL331-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL331-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL327-.Ltext0
	.uaword	.LVL328-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL328-.Ltext0
	.uaword	.LVL331-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL333-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL333-.Ltext0
	.uaword	.LVL334-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL334-.Ltext0
	.uaword	.LVL336-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL336-.Ltext0
	.uaword	.LVL339-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL340-.Ltext0
	.uaword	.LVL341-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL341-.Ltext0
	.uaword	.LVL342-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL346-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL346-.Ltext0
	.uaword	.LVL347-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL348-.Ltext0
	.uaword	.LVL349-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL349-.Ltext0
	.uaword	.LVL350-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL350-.Ltext0
	.uaword	.LVL351-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL318-.Ltext0
	.uaword	.LVL322-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL322-.Ltext0
	.uaword	.LVL323-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL316-.Ltext0
	.uaword	.LVL317-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL317-.Ltext0
	.uaword	.LVL318-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL316-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL335-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL355-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL355-.Ltext0
	.uaword	.LVL367-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL368-.Ltext0
	.uaword	.LVL369-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL369-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL316-.Ltext0
	.uaword	.LVL364-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL364-.Ltext0
	.uaword	.LVL365-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL365-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL356-.Ltext0
	.uaword	.LVL362-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL362-.Ltext0
	.uaword	.LVL363-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL369-.Ltext0
	.uaword	.LVL374-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL374-.Ltext0
	.uaword	.LVL375-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL375-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL320-.Ltext0
	.uaword	.LVL322-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL322-.Ltext0
	.uaword	.LVL323-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL329-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL331-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL337-.Ltext0
	.uaword	.LVL342-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL326-.Ltext0
	.uaword	.LVL328-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL338-.Ltext0
	.uaword	.LVL341-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL344-.Ltext0
	.uaword	.LVL349-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL351-.Ltext0
	.uaword	.LVL354-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL349-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL349-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL343-.Ltext0
	.uaword	.LVL349-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL343-.Ltext0
	.uaword	.LVL349-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL345-.Ltext0
	.uaword	.LVL347-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL347-.Ltext0
	.uaword	.LVL349-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL352-.Ltext0
	.uaword	.LVL355-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL355-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL361-.Ltext0
	.uaword	.LVL363-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL363-.Ltext0
	.uaword	.LVL367-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL373-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL357-.Ltext0
	.uaword	.LVL362-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL369-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL358-.Ltext0
	.uaword	.LVL362-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL370-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL359-.Ltext0
	.uaword	.LVL362-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL371-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL360-.Ltext0
	.uaword	.LVL362-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL372-.Ltext0
	.uaword	.LFE271-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL330-.Ltext0
	.uaword	.LVL331-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL332-.Ltext0
	.uaword	.LVL334-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL332-.Ltext0
	.uaword	.LVL334-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL349-.Ltext0
	.uaword	.LVL351-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL349-.Ltext0
	.uaword	.LVL351-.Ltext0
	.uahalf	0x1
	.byte	0x6f
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB308-.Ltext0
	.uaword	.LBE308-.Ltext0
	.uaword	.LBB317-.Ltext0
	.uaword	.LBE317-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB313-.Ltext0
	.uaword	.LBE313-.Ltext0
	.uaword	.LBB316-.Ltext0
	.uaword	.LBE316-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB332-.Ltext0
	.uaword	.LBE332-.Ltext0
	.uaword	.LBB335-.Ltext0
	.uaword	.LBE335-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB336-.Ltext0
	.uaword	.LBE336-.Ltext0
	.uaword	.LBB339-.Ltext0
	.uaword	.LBE339-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB340-.Ltext0
	.uaword	.LBE340-.Ltext0
	.uaword	.LBB343-.Ltext0
	.uaword	.LBE343-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB344-.Ltext0
	.uaword	.LBE344-.Ltext0
	.uaword	.LBB375-.Ltext0
	.uaword	.LBE375-.Ltext0
	.uaword	.LBB388-.Ltext0
	.uaword	.LBE388-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB345-.Ltext0
	.uaword	.LBE345-.Ltext0
	.uaword	.LBB366-.Ltext0
	.uaword	.LBE366-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB346-.Ltext0
	.uaword	.LBE346-.Ltext0
	.uaword	.LBB351-.Ltext0
	.uaword	.LBE351-.Ltext0
	.uaword	.LBB361-.Ltext0
	.uaword	.LBE361-.Ltext0
	.uaword	.LBB362-.Ltext0
	.uaword	.LBE362-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB352-.Ltext0
	.uaword	.LBE352-.Ltext0
	.uaword	.LBB363-.Ltext0
	.uaword	.LBE363-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB355-.Ltext0
	.uaword	.LBE355-.Ltext0
	.uaword	.LBB364-.Ltext0
	.uaword	.LBE364-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB358-.Ltext0
	.uaword	.LBE358-.Ltext0
	.uaword	.LBB365-.Ltext0
	.uaword	.LBE365-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB376-.Ltext0
	.uaword	.LBE376-.Ltext0
	.uaword	.LBB380-.Ltext0
	.uaword	.LBE380-.Ltext0
	.uaword	.LBB381-.Ltext0
	.uaword	.LBE381-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB389-.Ltext0
	.uaword	.LBE389-.Ltext0
	.uaword	.LBB392-.Ltext0
	.uaword	.LBE392-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB395-.Ltext0
	.uaword	.LBE395-.Ltext0
	.uaword	.LBB416-.Ltext0
	.uaword	.LBE416-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB396-.Ltext0
	.uaword	.LBE396-.Ltext0
	.uaword	.LBB400-.Ltext0
	.uaword	.LBE400-.Ltext0
	.uaword	.LBB401-.Ltext0
	.uaword	.LBE401-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB402-.Ltext0
	.uaword	.LBE402-.Ltext0
	.uaword	.LBB415-.Ltext0
	.uaword	.LBE415-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB405-.Ltext0
	.uaword	.LBE405-.Ltext0
	.uaword	.LBB408-.Ltext0
	.uaword	.LBE408-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB417-.Ltext0
	.uaword	.LBE417-.Ltext0
	.uaword	.LBB420-.Ltext0
	.uaword	.LBE420-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB421-.Ltext0
	.uaword	.LBE421-.Ltext0
	.uaword	.LBB424-.Ltext0
	.uaword	.LBE424-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB425-.Ltext0
	.uaword	.LBE425-.Ltext0
	.uaword	.LBB428-.Ltext0
	.uaword	.LBE428-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB431-.Ltext0
	.uaword	.LBE431-.Ltext0
	.uaword	.LBB437-.Ltext0
	.uaword	.LBE437-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB434-.Ltext0
	.uaword	.LBE434-.Ltext0
	.uaword	.LBB444-.Ltext0
	.uaword	.LBE444-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB453-.Ltext0
	.uaword	.LBE453-.Ltext0
	.uaword	.LBB545-.Ltext0
	.uaword	.LBE545-.Ltext0
	.uaword	.LBB546-.Ltext0
	.uaword	.LBE546-.Ltext0
	.uaword	.LBB547-.Ltext0
	.uaword	.LBE547-.Ltext0
	.uaword	.LBB550-.Ltext0
	.uaword	.LBE550-.Ltext0
	.uaword	.LBB551-.Ltext0
	.uaword	.LBE551-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB456-.Ltext0
	.uaword	.LBE456-.Ltext0
	.uaword	.LBB489-.Ltext0
	.uaword	.LBE489-.Ltext0
	.uaword	.LBB525-.Ltext0
	.uaword	.LBE525-.Ltext0
	.uaword	.LBB528-.Ltext0
	.uaword	.LBE528-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB464-.Ltext0
	.uaword	.LBE464-.Ltext0
	.uaword	.LBB480-.Ltext0
	.uaword	.LBE480-.Ltext0
	.uaword	.LBB487-.Ltext0
	.uaword	.LBE487-.Ltext0
	.uaword	.LBB488-.Ltext0
	.uaword	.LBE488-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB465-.Ltext0
	.uaword	.LBE465-.Ltext0
	.uaword	.LBB474-.Ltext0
	.uaword	.LBE474-.Ltext0
	.uaword	.LBB475-.Ltext0
	.uaword	.LBE475-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB490-.Ltext0
	.uaword	.LBE490-.Ltext0
	.uaword	.LBB526-.Ltext0
	.uaword	.LBE526-.Ltext0
	.uaword	.LBB527-.Ltext0
	.uaword	.LBE527-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB499-.Ltext0
	.uaword	.LBE499-.Ltext0
	.uaword	.LBB522-.Ltext0
	.uaword	.LBE522-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB500-.Ltext0
	.uaword	.LBE500-.Ltext0
	.uaword	.LBB521-.Ltext0
	.uaword	.LBE521-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB501-.Ltext0
	.uaword	.LBE501-.Ltext0
	.uaword	.LBB506-.Ltext0
	.uaword	.LBE506-.Ltext0
	.uaword	.LBB516-.Ltext0
	.uaword	.LBE516-.Ltext0
	.uaword	.LBB517-.Ltext0
	.uaword	.LBE517-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB507-.Ltext0
	.uaword	.LBE507-.Ltext0
	.uaword	.LBB518-.Ltext0
	.uaword	.LBE518-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB510-.Ltext0
	.uaword	.LBE510-.Ltext0
	.uaword	.LBB519-.Ltext0
	.uaword	.LBE519-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB513-.Ltext0
	.uaword	.LBE513-.Ltext0
	.uaword	.LBB520-.Ltext0
	.uaword	.LBE520-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB529-.Ltext0
	.uaword	.LBE529-.Ltext0
	.uaword	.LBB533-.Ltext0
	.uaword	.LBE533-.Ltext0
	.uaword	.LBB534-.Ltext0
	.uaword	.LBE534-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB535-.Ltext0
	.uaword	.LBE535-.Ltext0
	.uaword	.LBB538-.Ltext0
	.uaword	.LBE538-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB558-.Ltext0
	.uaword	.LBE558-.Ltext0
	.uaword	.LBB606-.Ltext0
	.uaword	.LBE606-.Ltext0
	.uaword	.LBB607-.Ltext0
	.uaword	.LBE607-.Ltext0
	.uaword	.LBB618-.Ltext0
	.uaword	.LBE618-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB566-.Ltext0
	.uaword	.LBE566-.Ltext0
	.uaword	.LBB570-.Ltext0
	.uaword	.LBE570-.Ltext0
	.uaword	.LBB575-.Ltext0
	.uaword	.LBE575-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB571-.Ltext0
	.uaword	.LBE571-.Ltext0
	.uaword	.LBB583-.Ltext0
	.uaword	.LBE583-.Ltext0
	.uaword	.LBB595-.Ltext0
	.uaword	.LBE595-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB576-.Ltext0
	.uaword	.LBE576-.Ltext0
	.uaword	.LBB584-.Ltext0
	.uaword	.LBE584-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB577-.Ltext0
	.uaword	.LBE577-.Ltext0
	.uaword	.LBB580-.Ltext0
	.uaword	.LBE580-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB596-.Ltext0
	.uaword	.LBE596-.Ltext0
	.uaword	.LBB599-.Ltext0
	.uaword	.LBE599-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB608-.Ltext0
	.uaword	.LBE608-.Ltext0
	.uaword	.LBB612-.Ltext0
	.uaword	.LBE612-.Ltext0
	.uaword	.LBB613-.Ltext0
	.uaword	.LBE613-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB614-.Ltext0
	.uaword	.LBE614-.Ltext0
	.uaword	.LBB617-.Ltext0
	.uaword	.LBE617-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB619-.Ltext0
	.uaword	.LBE619-.Ltext0
	.uaword	.LBB622-.Ltext0
	.uaword	.LBE622-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB625-.Ltext0
	.uaword	.LBE625-.Ltext0
	.uaword	.LBB681-.Ltext0
	.uaword	.LBE681-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB633-.Ltext0
	.uaword	.LBE633-.Ltext0
	.uaword	.LBB641-.Ltext0
	.uaword	.LBE641-.Ltext0
	.uaword	.LBB649-.Ltext0
	.uaword	.LBE649-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB637-.Ltext0
	.uaword	.LBE637-.Ltext0
	.uaword	.LBB650-.Ltext0
	.uaword	.LBE650-.Ltext0
	.uaword	.LBB662-.Ltext0
	.uaword	.LBE662-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB642-.Ltext0
	.uaword	.LBE642-.Ltext0
	.uaword	.LBB651-.Ltext0
	.uaword	.LBE651-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB643-.Ltext0
	.uaword	.LBE643-.Ltext0
	.uaword	.LBB646-.Ltext0
	.uaword	.LBE646-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB658-.Ltext0
	.uaword	.LBE658-.Ltext0
	.uaword	.LBB661-.Ltext0
	.uaword	.LBE661-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB663-.Ltext0
	.uaword	.LBE663-.Ltext0
	.uaword	.LBB666-.Ltext0
	.uaword	.LBE666-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB675-.Ltext0
	.uaword	.LBE675-.Ltext0
	.uaword	.LBB679-.Ltext0
	.uaword	.LBE679-.Ltext0
	.uaword	.LBB680-.Ltext0
	.uaword	.LBE680-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB682-.Ltext0
	.uaword	.LBE682-.Ltext0
	.uaword	.LBB689-.Ltext0
	.uaword	.LBE689-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB685-.Ltext0
	.uaword	.LBE685-.Ltext0
	.uaword	.LBB693-.Ltext0
	.uaword	.LBE693-.Ltext0
	.uaword	.LBB701-.Ltext0
	.uaword	.LBE701-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB690-.Ltext0
	.uaword	.LBE690-.Ltext0
	.uaword	.LBB694-.Ltext0
	.uaword	.LBE694-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB695-.Ltext0
	.uaword	.LBE695-.Ltext0
	.uaword	.LBB698-.Ltext0
	.uaword	.LBE698-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB710-.Ltext0
	.uaword	.LBE710-.Ltext0
	.uaword	.LBB761-.Ltext0
	.uaword	.LBE761-.Ltext0
	.uaword	.LBB762-.Ltext0
	.uaword	.LBE762-.Ltext0
	.uaword	.LBB765-.Ltext0
	.uaword	.LBE765-.Ltext0
	.uaword	.LBB766-.Ltext0
	.uaword	.LBE766-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB715-.Ltext0
	.uaword	.LBE715-.Ltext0
	.uaword	.LBB747-.Ltext0
	.uaword	.LBE747-.Ltext0
	.uaword	.LBB748-.Ltext0
	.uaword	.LBE748-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB725-.Ltext0
	.uaword	.LBE725-.Ltext0
	.uaword	.LBB746-.Ltext0
	.uaword	.LBE746-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB726-.Ltext0
	.uaword	.LBE726-.Ltext0
	.uaword	.LBB731-.Ltext0
	.uaword	.LBE731-.Ltext0
	.uaword	.LBB741-.Ltext0
	.uaword	.LBE741-.Ltext0
	.uaword	.LBB742-.Ltext0
	.uaword	.LBE742-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB732-.Ltext0
	.uaword	.LBE732-.Ltext0
	.uaword	.LBB743-.Ltext0
	.uaword	.LBE743-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB735-.Ltext0
	.uaword	.LBE735-.Ltext0
	.uaword	.LBB744-.Ltext0
	.uaword	.LBE744-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB738-.Ltext0
	.uaword	.LBE738-.Ltext0
	.uaword	.LBB745-.Ltext0
	.uaword	.LBE745-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB749-.Ltext0
	.uaword	.LBE749-.Ltext0
	.uaword	.LBB753-.Ltext0
	.uaword	.LBE753-.Ltext0
	.uaword	.LBB754-.Ltext0
	.uaword	.LBE754-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF38:
	.string	"slAddr"
.LASF3:
	.string	"MODNUMBER"
.LASF4:
	.string	"reserved_8"
.LASF22:
	.string	"SREQ_INT"
.LASF32:
	.string	"baudrate"
.LASF36:
	.string	"packet"
.LASF29:
	.string	"inSelect"
.LASF45:
	.string	"i2cDeviceConfig"
.LASF15:
	.string	"RXF_UFL"
.LASF42:
	.string	"bytes"
.LASF17:
	.string	"TXF_UFL"
.LASF33:
	.string	"deviceAddress"
.LASF16:
	.string	"RXF_OFL"
.LASF0:
	.string	"reserved_10"
.LASF19:
	.string	"reserved_11"
.LASF10:
	.string	"reserved_12"
.LASF20:
	.string	"reserved_14"
.LASF2:
	.string	"reserved_16"
.LASF18:
	.string	"TXF_OFL"
.LASF34:
	.string	"data"
.LASF35:
	.string	"size"
.LASF25:
	.string	"I2C_ERR_INT"
.LASF7:
	.string	"reserved_20"
.LASF41:
	.string	"bytePtrRxData"
.LASF5:
	.string	"reserved_24"
.LASF8:
	.string	"reserved_28"
.LASF1:
	.string	"reserved_0"
.LASF27:
	.string	"reserved_1"
.LASF6:
	.string	"reserved_2"
.LASF13:
	.string	"reserved_3"
.LASF9:
	.string	"reserved_4"
.LASF14:
	.string	"reserved_6"
.LASF11:
	.string	"reserved_7"
.LASF46:
	.string	"intEnabled"
.LASF12:
	.string	"reserved_C"
.LASF21:
	.string	"LSREQ_INT"
.LASF44:
	.string	"bytePtrPacket"
.LASF37:
	.string	"i2cDevice"
.LASF39:
	.string	"rxData"
.LASF23:
	.string	"LBREQ_INT"
.LASF43:
	.string	"bytesToSend"
.LASF24:
	.string	"BREQ_INT"
.LASF26:
	.string	"I2C_P_INT"
.LASF31:
	.string	"status"
.LASF40:
	.string	"bytesToReceive"
.LASF28:
	.string	"TX_END"
.LASF30:
	.string	"outSelect"
	.extern	IfxI2c_releaseBus,STT_FUNC,0
	.extern	IfxI2c_getBaudrate,STT_FUNC,0
	.extern	IfxI2c_initSclSdaPin,STT_FUNC,0
	.extern	IfxI2c_setBaudrate,STT_FUNC,0
	.extern	IfxI2c_configureAsMaster,STT_FUNC,0
	.extern	IfxI2c_enableModule,STT_FUNC,0
	.extern	szzz3,STT_OBJECT,2
	.extern	syyy3,STT_OBJECT,2
	.extern	sxxx3,STT_OBJECT,2
	.extern	zzz3,STT_OBJECT,2
	.extern	yyy3,STT_OBJECT,2
	.extern	xxx3,STT_OBJECT,2
	.extern	szzz2,STT_OBJECT,2
	.extern	syyy2,STT_OBJECT,2
	.extern	sxxx2,STT_OBJECT,2
	.extern	zzz2,STT_OBJECT,2
	.extern	yyy2,STT_OBJECT,2
	.extern	xxx2,STT_OBJECT,2
	.extern	szzz,STT_OBJECT,2
	.extern	syyy,STT_OBJECT,2
	.extern	sxxx,STT_OBJECT,2
	.extern	zzz,STT_OBJECT,2
	.extern	yyy,STT_OBJECT,2
	.extern	xxx,STT_OBJECT,2
	.extern	szzz1,STT_OBJECT,2
	.extern	syyy1,STT_OBJECT,2
	.extern	sxxx1,STT_OBJECT,2
	.extern	zzz1,STT_OBJECT,2
	.extern	yyy1,STT_OBJECT,2
	.extern	xxx1,STT_OBJECT,2
	.extern	acc_xyz,STT_OBJECT,16
	.extern	diagcnt_NACK,STT_OBJECT,8
	.extern	diagcnt_AL,STT_OBJECT,8
	.extern	AccSensErr,STT_OBJECT,4
	.extern	diagcnt_TXEND,STT_OBJECT,8
	.extern	I2CCurrentChannel,STT_OBJECT,1
	.extern	g_I2cBasic,STT_OBJECT,156
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
