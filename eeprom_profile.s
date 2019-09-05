	.file	"eeprom_profile.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	get_eeprom_data_structure
	.type	get_eeprom_data_structure, @function
get_eeprom_data_structure:
.LFB149:
	.file 1 "0_Src/0_AppSw/Tricore/EEPROM/eeprom_profile.c"
	.loc 1 99 0
	.loc 1 100 0
	mov	%d15, 0
	movh.a	%a5, hi:Adapt_descr
	lea	%a3, [%a5] lo:Adapt_descr
	movh.a	%a4, hi:EEPROM_DATA
	st.h	[%a3] 6, %d15
.LVL0:
	.loc 1 102 0
	mov	%d2, 0
	.loc 1 100 0
	mov	%d15, 0
	lea	%a4, [%a4] lo:EEPROM_DATA
	mov.a	%a15, 9
.LVL1:
.L2:
	.loc 1 103 0 discriminator 3
	addsc.a	%a2, %a4, %d2, 3
	.loc 1 102 0 discriminator 3
	add	%d2, 1
.LVL2:
	.loc 1 103 0 discriminator 3
	ld.b	%d3, [%a2] 4
	add	%d15, %d3
	extr.u	%d15, %d15, 0, 16
	.loc 1 102 0 discriminator 3
	loop	%a15, .L2
	.loc 1 105 0
	sh	%d2, %d15, -3
.LVL3:
	st.h	[%a5] lo:Adapt_descr, %d15
	.loc 1 106 0
	and	%d15, %d15, 7
	.loc 1 105 0
	st.h	[%a3] 2, %d2
	.loc 1 106 0
	st.h	[%a3] 4, %d15
	.loc 1 107 0
	jz	%d15, .L3
	.loc 1 107 0 is_stmt 0 discriminator 1
	add	%d2, 1
	st.h	[%a3] 2, %d2
.L3:
	.loc 1 108 0 is_stmt 1
	movh	%d15, 44800
	st.w	[%a3] 8, %d15
	.loc 1 109 0
	mov	%d15, 0
	st.h	[%a3] 12, %d15
	.loc 1 110 0
	st.h	[%a3] 14, %d15
	ret
.LFE149:
	.size	get_eeprom_data_structure, .-get_eeprom_data_structure
	.align 1
	.global	read_data_from_eeprom
	.type	read_data_from_eeprom, @function
read_data_from_eeprom:
.LFB151:
	.loc 1 168 0
.LVL4:
	movh.a	%a5, hi:EEPROM_DATA
	movh.a	%a2, hi:Adapt_descr
	.loc 1 174 0
	mov	%d6, 0
	.loc 1 169 0
	mov	%d3, 0
	lea	%a5, [%a5] lo:EEPROM_DATA
	lea	%a2, [%a2] lo:Adapt_descr
	mov.a	%a4, 9
.LVL5:
.L10:
	.loc 1 176 0
	addsc.a	%a15, %a5, %d6, 3
	ld.b	%d4, [%a15] 4
	jlez	%d4, .L13
	ld.w	%d5, [%a15]0
	mov.a	%a15, %d4
	mov	%d2, 0
	add.a	%a15, -1
.LVL6:
.L11:
	.loc 1 177 0 discriminator 3
	ld.a	%a6, [%a2] 8
	add	%d15, %d3, %d2
	extr.u	%d15, %d15, 0, 16
	addsc.a	%a3, %a6, %d15, 0
	mov.a	%a6, %d5
	ld.bu	%d15, [%a3]0
	addsc.a	%a3, %a6, %d2, 0
	.loc 1 176 0 discriminator 3
	add	%d2, 1
.LVL7:
	.loc 1 177 0 discriminator 3
	st.b	[%a3]0, %d15
.LVL8:
	.loc 1 176 0 discriminator 3
	loop	%a15, .L11
	add	%d3, %d4
	extr.u	%d3, %d3, 0, 16
.LVL9:
.L13:
	.loc 1 174 0 discriminator 2
	add	%d6, 1
.LVL10:
	loop	%a4, .L10
	ret
.LFE151:
	.size	read_data_from_eeprom, .-read_data_from_eeprom
	.align 1
	.global	get_params_crc
	.type	get_params_crc, @function
get_params_crc:
.LFB152:
	.loc 1 188 0
.LVL11:
	.loc 1 192 0
	mov	%d15, 0
	.loc 1 195 0
	movh.a	%a15, hi:Adapt_descr
	lea	%a15, [%a15] lo:Adapt_descr
	.loc 1 188 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 192 0
	st.w	[%SP] 4, %d15
	.loc 1 195 0
	st.h	[%a15] 12, %d15
	.loc 1 196 0
	st.h	[%a15] 14, %d15
	.loc 1 197 0
	mov	%d15, 14
	movh.a	%a4, hi:EEPROM_DATA
	.loc 1 200 0
	mov	%d3, 0
	.loc 1 197 0
	st.h	[%a15] 16, %d15
.LVL12:
	lea	%a4, [%a4] lo:EEPROM_DATA
	mov.a	%a3, 9
.LVL13:
.L18:
	.loc 1 202 0
	addsc.a	%a2, %a4, %d3, 3
	ld.b	%d15, [%a2] 4
	jlez	%d15, .L21
	ld.a	%a2, [%a2]0
	addsc.a	%a15, %a2, %d15, 0
	mov.d	%d2, %a2
	not	%d2
	addsc.a	%a15, %a15, %d2, 0
.LVL14:
.L19:
	.loc 1 203 0 discriminator 3
	ld.w	%d2, [%SP] 4
	ld.bu	%d15, [%a2+]1
.LVL15:
	add	%d15, %d2
	st.w	[%SP] 4, %d15
.LVL16:
	loop	%a15, .L19
.LVL17:
.L21:
	.loc 1 200 0
	add	%d3, 1
.LVL18:
	loop	%a3, .L18
	.loc 1 208 0
	ld.w	%d2, [%SP] 4
	.loc 1 209 0
	ret
.LFE152:
	.size	get_params_crc, .-get_params_crc
	.align 1
	.global	write_data_to_eeprom
	.type	write_data_to_eeprom, @function
write_data_to_eeprom:
.LFB150:
	.loc 1 122 0
	.loc 1 136 0
	mov	%d15, 0
	movh.a	%a15, hi:Adapt_descr
	lea	%a15, [%a15] lo:Adapt_descr
	.loc 1 122 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 132 0
	mov	%d4, 0
	call	erase_eeprom_sector
.LVL19:
	.loc 1 136 0
	st.h	[%a15] 12, %d15
	.loc 1 138 0
	mov	%d15, 14
	.loc 1 149 0
	movh.a	%a14, hi:EEPROM_DATA
	.loc 1 141 0
	ld.hu	%d2, [%a15] 2
	movh.a	%a13, hi:page_data
	.loc 1 149 0
	lea	%a14, [%a14] lo:EEPROM_DATA
	.loc 1 138 0
	st.h	[%a15] 16, %d15
.LVL20:
	.loc 1 141 0
	mov	%d9, 0
	mov	%d3, 0
	lea	%a13, [%a13] lo:page_data
	.loc 1 145 0
	mov.aa	%a12, %a15
	.loc 1 149 0
	mov	%d10, 0
	mov.d	%d8, %a14
	.loc 1 141 0
	jz	%d2, .L39
.LVL21:
.L37:
	.loc 1 145 0
	ld.hu	%d2, [%a15] 14
	extr.u	%d11, %d9, 0, 16
.LVL22:
	.loc 1 122 0
	mov	%d4, 0
	.loc 1 148 0
	mov	%d5, 0
	mov.a	%a2, 7
.LVL23:
	.loc 1 145 0
	jge.u	%d2, %d15, .L29
.LVL24:
.L40:
	mov	%d15, %d3
	addi	%d3, %d2, 1
	extr.u	%d3, %d3, 0, 16
	mov.a	%a3, %d8
.L30:
	.loc 1 154 0
	addsc.a	%a3, %a3, %d15, 3
	ld.a	%a3, [%a3]0
	addsc.a	%a3, %a3, %d2, 0
	ld.bu	%d15, [%a3]0
	addsc.a	%a3, %a13, %d4, 0
	.loc 1 155 0
	st.h	[%a15] 14, %d3
	.loc 1 154 0
	st.b	[%a3]0, %d15
.L32:
.LVL25:
	add	%d4, 1
.LVL26:
	.loc 1 143 0 discriminator 2
	loop	%a2, .L33
	.loc 1 158 0 discriminator 2
	ld.w	%d15, [%a15] 8
	insert	%d4, %d9, 0, 16, 16
.LVL27:
	mov.aa	%a4, %a13
	madd	%d4, %d15, %d4, 8
	add	%d15, %d11, 1
	extr.u	%d15, %d15, 0, 16
	call	write_eeprom_page
.LVL28:
	.loc 1 141 0 discriminator 2
	ld.hu	%d2, [%a15] 2
	add	%d9, 1
	jge.u	%d15, %d2, .L34
	ld.hu	%d15, [%a12] 16
.LVL29:
	ld.hu	%d3, [%a12] 12
	j	.L37
.LVL30:
.L33:
	ld.hu	%d15, [%a15] 16
	.loc 1 145 0
	ld.hu	%d2, [%a15] 14
	ld.hu	%d3, [%a15] 12
.LVL31:
	jlt.u	%d2, %d15, .L40
.LVL32:
.L29:
	.loc 1 147 0
	add	%d15, %d3, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a12] 12, %d15
	.loc 1 148 0
	jlt.u	%d15, 10, .L31
	.loc 1 148 0 is_stmt 0 discriminator 1
	addsc.a	%a3, %a13, %d4, 0
	st.b	[%a3]0, %d5
	j	.L32
.L31:
	.loc 1 149 0 is_stmt 1
	addsc.a	%a4, %a14, %d15, 3
	mov.a	%a3, %d8
	ld.b	%d2, [%a4] 4
	st.h	[%a12] 16, %d2
	st.h	[%a12] 14, %d10
	mov	%d3, 1
	mov	%d2, 0
	j	.L30
.LVL33:
.L34:
	sh	%d15, 3
.LVL34:
.L28:
	.loc 1 162 0
	call	get_params_crc
.LVL35:
	.loc 1 163 0
	ld.w	%d4, [%a15] 8
	.loc 1 162 0
	lea	%a4, [%SP] 8
	st.w	[+%a4]-4, %d2
	.loc 1 163 0
	add	%d4, %d15
	j	write_eeprom_page
.LVL36:
.L39:
	.loc 1 141 0
	mov	%d15, 0
	j	.L28
.LFE150:
	.size	write_data_to_eeprom, .-write_data_to_eeprom
	.align 1
	.global	get_eeprom_crc
	.type	get_eeprom_crc, @function
get_eeprom_crc:
.LFB153:
	.loc 1 217 0
	.loc 1 221 0
	mov	%d15, 0
	.loc 1 224 0
	movh.a	%a2, hi:Adapt_descr
	lea	%a2, [%a2] lo:Adapt_descr
	.loc 1 217 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 221 0
	st.w	[%SP] 4, %d15
	.loc 1 224 0
	st.h	[%a2] 12, %d15
	.loc 1 225 0
	st.h	[%a2] 14, %d15
	.loc 1 226 0
	mov	%d15, 14
	st.h	[%a2] 16, %d15
.LVL37:
	.loc 1 229 0
	ld.hu	%d15, [%a2] 2
	jz	%d15, .L44
	sh	%d15, 3
	add	%d3, %d15, -1
	ge	%d15, %d15, 1
	sel	%d15, %d15, %d3, 0
	ld.w	%d4, [%a2] 8
	mov.a	%a15, %d15
	mov	%d2, 0
.LVL38:
.L43:
	.loc 1 232 0 discriminator 3
	mov.a	%a3, %d2
	ld.w	%d3, [%SP] 4
	addsc.a	%a2, %a3, %d4, 0
	.loc 1 229 0 discriminator 3
	add	%d2, 1
.LVL39:
	.loc 1 232 0 discriminator 3
	ld.bu	%d15, [%a2]0
	add	%d15, %d3
	st.w	[%SP] 4, %d15
	.loc 1 229 0 discriminator 3
	loop	%a15, .L43
.LVL40:
.L44:
	.loc 1 251 0
	ld.w	%d2, [%SP] 4
	ret
.LFE153:
	.size	get_eeprom_crc, .-get_eeprom_crc
	.align 1
	.global	read_flashed_crc_value
	.type	read_flashed_crc_value, @function
read_flashed_crc_value:
.LFB154:
	.loc 1 256 0
	.loc 1 257 0
	movh.a	%a15, hi:Adapt_descr
	lea	%a15, [%a15] lo:Adapt_descr
	ld.hu	%d15, [%a15] 2
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d15, 3
	.loc 1 258 0
	ld.w	%d2, [%a15]0
	ret
.LFE154:
	.size	read_flashed_crc_value, .-read_flashed_crc_value
	.align 1
	.global	get_eeprom_data_status
	.type	get_eeprom_data_status, @function
get_eeprom_data_status:
.LFB155:
	.loc 1 262 0
	.loc 1 264 0
	call	get_eeprom_crc
.LVL41:
	mov	%d15, %d2
.LVL42:
	.loc 1 267 0
	mov	%d2, 1
.LVL43:
	.loc 1 266 0
	jz	%d15, .L50
.LBB4:
.LBB5:
	.loc 1 257 0
	movh.a	%a15, hi:Adapt_descr
	lea	%a15, [%a15] lo:Adapt_descr
	ld.hu	%d2, [%a15] 2
	ld.a	%a15, [%a15] 8
.LBE5:
.LBE4:
	.loc 1 274 0
	mov	%d3, 0
.LBB7:
.LBB6:
	.loc 1 257 0
	addsc.a	%a15, %a15, %d2, 3
.LBE6:
.LBE7:
	.loc 1 271 0
	ld.w	%d2, [%a15]0
	.loc 1 274 0
	eq	%d2, %d15, %d2
	sel	%d2, %d2, %d3, 2
.L50:
	.loc 1 275 0
	ret
.LFE155:
	.size	get_eeprom_data_status, .-get_eeprom_data_status
	.align 1
	.global	get_eeprom_init
	.type	get_eeprom_init, @function
get_eeprom_init:
.LFB156:
	.loc 1 279 0
	.loc 1 283 0
	call	get_eeprom_data_structure
.LVL44:
	.loc 1 285 0
	call	get_eeprom_data_status
.LVL45:
	mov	%d15, %d2
.LVL46:
	.loc 1 287 0
	jeq	%d2, 2, .L63
	.loc 1 297 0
	mov	%d2, 1
.LVL47:
	.loc 1 296 0
	jeq	%d15, 1, .L56
	.loc 1 299 0
	jz	%d15, .L64
	.loc 1 291 0
	mov	%d2, 3
	ret
.L64:
	.loc 1 301 0
	call	read_data_from_eeprom
.LVL48:
	.loc 1 302 0
	mov	%d2, 0
.L56:
	.loc 1 306 0
	ret
.LVL49:
.L63:
	.loc 1 289 0
	mov	%d4, 0
	call	erase_eeprom_sector
.LVL50:
	.loc 1 290 0
	call	get_eeprom_data_status
.LVL51:
	jeq	%d2, 1, .L56
	.loc 1 291 0
	mov	%d2, 3
	ret
.LFE156:
	.size	get_eeprom_init, .-get_eeprom_init
	.global	array_idx
.section .bss.array_idx,"aw",@nobits
	.type	array_idx, @object
	.size	array_idx, 1
array_idx:
	.zero	1
	.global	page_data
.section .bss.page_data,"aw",@nobits
	.align 5
	.type	page_data, @object
	.size	page_data, 8
page_data:
	.zero	8
	.global	EEPROM_DATA
.section .rodata.EEPROM_DATA,"a",@progbits
	.align 2
	.type	EEPROM_DATA, @object
	.size	EEPROM_DATA, 80
EEPROM_DATA:
	.word	tarray
	.byte	14
	.zero	3
	.word	t1
	.byte	1
	.zero	3
	.word	t2
	.byte	1
	.zero	3
	.word	t3
	.byte	1
	.zero	3
	.word	t4
	.byte	1
	.zero	3
	.word	t5
	.byte	1
	.zero	3
	.word	t6
	.byte	2
	.zero	3
	.word	t7
	.byte	2
	.zero	3
	.word	t8
	.byte	2
	.zero	3
	.word	t9
	.byte	2
	.zero	3
	.global	eeprom_write_cnt3
.section .bss.eeprom_write_cnt3,"aw",@nobits
	.type	eeprom_write_cnt3, @object
	.size	eeprom_write_cnt3, 1
eeprom_write_cnt3:
	.zero	1
	.global	eeprom_write_cnt_mem3
.section .bss.eeprom_write_cnt_mem3,"aw",@nobits
	.type	eeprom_write_cnt_mem3, @object
	.size	eeprom_write_cnt_mem3, 1
eeprom_write_cnt_mem3:
	.zero	1
	.global	eeprom_write_cnt2
.section .bss.eeprom_write_cnt2,"aw",@nobits
	.align 2
	.type	eeprom_write_cnt2, @object
	.size	eeprom_write_cnt2, 4
eeprom_write_cnt2:
	.zero	4
	.global	eeprom_write_cnt_mem2
.section .bss.eeprom_write_cnt_mem2,"aw",@nobits
	.align 2
	.type	eeprom_write_cnt_mem2, @object
	.size	eeprom_write_cnt_mem2, 4
eeprom_write_cnt_mem2:
	.zero	4
	.global	eeprom_write_cnt
.section .bss.eeprom_write_cnt,"aw",@nobits
	.align 1
	.type	eeprom_write_cnt, @object
	.size	eeprom_write_cnt, 2
eeprom_write_cnt:
	.zero	2
	.global	eeprom_write_cnt_mem
.section .bss.eeprom_write_cnt_mem,"aw",@nobits
	.align 1
	.type	eeprom_write_cnt_mem, @object
	.size	eeprom_write_cnt_mem, 2
eeprom_write_cnt_mem:
	.zero	2
	.global	eeprom_test_long1
.section .data.eeprom_test_long1,"aw",@progbits
	.align 2
	.type	eeprom_test_long1, @object
	.size	eeprom_test_long1, 4
eeprom_test_long1:
	.word	305419896
	.global	Adapt_descr
.section .bss.Adapt_descr,"aw",@nobits
	.align 2
	.type	Adapt_descr, @object
	.size	Adapt_descr, 20
Adapt_descr:
	.zero	20
	.global	Longs_descr
.section .bss.Longs_descr,"aw",@nobits
	.align 2
	.type	Longs_descr, @object
	.size	Longs_descr, 20
Longs_descr:
	.zero	20
	.global	Words_descr
.section .bss.Words_descr,"aw",@nobits
	.align 2
	.type	Words_descr, @object
	.size	Words_descr, 20
Words_descr:
	.zero	20
	.global	Bytes_descr
.section .bss.Bytes_descr,"aw",@nobits
	.align 2
	.type	Bytes_descr, @object
	.size	Bytes_descr, 20
Bytes_descr:
	.zero	20
	.global	tarray
.section .data.tarray,"aw",@progbits
	.type	tarray, @object
	.size	tarray, 14
tarray:
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.global	t10
.section .data.t10,"aw",@progbits
	.align 2
	.type	t10, @object
	.size	t10, 4
t10:
	.word	9
	.global	t9
.section .data.t9,"aw",@progbits
	.align 1
	.type	t9, @object
	.size	t9, 2
t9:
	.short	8
	.global	t8
.section .data.t8,"aw",@progbits
	.align 1
	.type	t8, @object
	.size	t8, 2
t8:
	.short	7
	.global	t7
.section .data.t7,"aw",@progbits
	.align 1
	.type	t7, @object
	.size	t7, 2
t7:
	.short	6
	.global	t6
.section .data.t6,"aw",@progbits
	.align 1
	.type	t6, @object
	.size	t6, 2
t6:
	.short	5
	.global	t5
.section .data.t5,"aw",@progbits
	.type	t5, @object
	.size	t5, 1
t5:
	.byte	4
	.global	t4
.section .data.t4,"aw",@progbits
	.type	t4, @object
	.size	t4, 1
t4:
	.byte	3
	.global	t3
.section .data.t3,"aw",@progbits
	.type	t3, @object
	.size	t3, 1
t3:
	.byte	2
	.global	t2
.section .data.t2,"aw",@progbits
	.type	t2, @object
	.size	t2, 1
t2:
	.byte	1
	.global	t1
.section .bss.t1,"aw",@nobits
	.type	t1, @object
	.size	t1, 1
t1:
	.zero	1
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
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB151
	.uaword	.LFE151-.LFB151
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB152
	.uaword	.LFE152-.LFB152
	.byte	0x4
	.uaword	.LCFI0-.LFB152
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB150
	.uaword	.LFE150-.LFB150
	.byte	0x4
	.uaword	.LCFI1-.LFB150
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB153
	.uaword	.LFE153-.LFB153
	.byte	0x4
	.uaword	.LCFI2-.LFB153
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB154
	.uaword	.LFE154-.LFB154
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB155
	.uaword	.LFE155-.LFB155
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB156
	.uaword	.LFE156-.LFB156
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/0_AppSw/Tricore/EEPROM/eeprom_profile.h"
	.file 4 "0_Src/0_AppSw/Tricore/EEPROM/eeprom.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x98a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2017-01-30 -mlicen"
	.string	"se-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mcpu=tc27xx -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fdata-sections -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/EEPROM/eeprom_profile.c"
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
	.byte	0x2
	.byte	0x59
	.uaword	0x1c9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1f5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x219
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x8
	.byte	0x3
	.byte	0x1a
	.uaword	0x29a
	.uleb128 0x6
	.string	"data_"
	.byte	0x3
	.byte	0x1c
	.uaword	0x26f
	.byte	0
	.uleb128 0x6
	.string	"data_type"
	.byte	0x3
	.byte	0x1d
	.uaword	0x267
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"T_EEPROM_DATA"
	.byte	0x3
	.byte	0x1e
	.uaword	0x271
	.uleb128 0x5
	.byte	0x14
	.byte	0x3
	.byte	0x24
	.uaword	0x34b
	.uleb128 0x6
	.string	"par_amount"
	.byte	0x3
	.byte	0x26
	.uaword	0x1e7
	.byte	0
	.uleb128 0x6
	.string	"par_pages"
	.byte	0x3
	.byte	0x27
	.uaword	0x1e7
	.byte	0x2
	.uleb128 0x6
	.string	"par_remain"
	.byte	0x3
	.byte	0x28
	.uaword	0x1e7
	.byte	0x4
	.uleb128 0x6
	.string	"par_start_idx"
	.byte	0x3
	.byte	0x29
	.uaword	0x1e7
	.byte	0x6
	.uleb128 0x6
	.string	"base_addr"
	.byte	0x3
	.byte	0x2a
	.uaword	0x20b
	.byte	0x8
	.uleb128 0x6
	.string	"cur_row"
	.byte	0x3
	.byte	0x2b
	.uaword	0x1e7
	.byte	0xc
	.uleb128 0x6
	.string	"cur_bytes"
	.byte	0x3
	.byte	0x2c
	.uaword	0x1e7
	.byte	0xe
	.uleb128 0x6
	.string	"row_size"
	.byte	0x3
	.byte	0x2d
	.uaword	0x1e7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"T_EEPROM_DESC"
	.byte	0x3
	.byte	0x2e
	.uaword	0x2af
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.string	"read_flashed_crc_value"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.uaword	0x20b
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.string	"get_eeprom_data_structure"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3c9
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x63
	.uaword	0x1a6
	.uaword	.LLST0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"read_data_from_eeprom"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	.LFB151
	.uaword	.LFE151
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x433
	.uleb128 0x9
	.string	"cnt"
	.byte	0x1
	.byte	0xa9
	.uaword	0x1e7
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xaa
	.uaword	0x1e7
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0xab
	.uaword	0x20b
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0xac
	.uaword	0x1a6
	.uaword	.LLST2
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0xac
	.uaword	0x1a6
	.uaword	.LLST3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"get_params_crc"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.uaword	0x20b
	.uaword	.LFB152
	.uaword	.LFE152
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a5
	.uleb128 0xc
	.string	"cnt"
	.byte	0x1
	.byte	0xbd
	.uaword	0x1e7
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbe
	.uaword	0x1e7
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0xbf
	.uaword	0x20b
	.uleb128 0xd
	.string	"sum"
	.byte	0x1
	.byte	0xc0
	.uaword	0x4a5
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x9
	.string	"k"
	.byte	0x1
	.byte	0xc2
	.uaword	0x1a6
	.uaword	.LLST4
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0xc2
	.uaword	0x1a6
	.uaword	.LLST5
	.byte	0
	.uleb128 0xe
	.uaword	0x20b
	.uleb128 0x8
	.byte	0x1
	.string	"write_data_to_eeprom"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	.LFB150
	.uaword	.LFE150
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x53d
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x7b
	.uaword	0x1e7
	.uaword	.LLST6
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0x7b
	.uaword	0x1e7
	.uaword	.LLST7
	.uleb128 0xd
	.string	"crc"
	.byte	0x1
	.byte	0x7c
	.uaword	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xf
	.uaword	.LVL19
	.uaword	0x93c
	.uaword	0x50e
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.uaword	.LVL28
	.uaword	0x960
	.uaword	0x522
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.uaword	.LVL35
	.uaword	0x433
	.uleb128 0x12
	.uaword	.LVL36
	.byte	0x1
	.uaword	0x960
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"get_eeprom_crc"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.uaword	0x20b
	.uaword	.LFB153
	.uaword	.LFE153
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5aa
	.uleb128 0x13
	.string	"cnt"
	.byte	0x1
	.byte	0xda
	.uaword	0x1e7
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdb
	.uaword	0x1e7
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0xdc
	.uaword	0x20b
	.uleb128 0xd
	.string	"sum"
	.byte	0x1
	.byte	0xdd
	.uaword	0x4a5
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x9
	.string	"k"
	.byte	0x1
	.byte	0xdf
	.uaword	0x1a6
	.uaword	.LLST8
	.uleb128 0x13
	.string	"j"
	.byte	0x1
	.byte	0xdf
	.uaword	0x1a6
	.byte	0
	.uleb128 0x14
	.uaword	0x36c
	.uaword	.LFB154
	.uaword	.LFE154
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"get_eeprom_data_status"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	0x1bc
	.uaword	.LFB155
	.uaword	.LFE155
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x628
	.uleb128 0x16
	.string	"crc"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x20b
	.uaword	.LLST9
	.uleb128 0x17
	.string	"flashed_crc"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x20b
	.uleb128 0x18
	.uaword	0x36c
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x10d
	.uleb128 0x11
	.uaword	.LVL41
	.uaword	0x53d
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"get_eeprom_init"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.uaword	0x1bc
	.uaword	.LFB156
	.uaword	.LFE156
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6a1
	.uleb128 0x16
	.string	"eeprom_stat"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x1bc
	.uaword	.LLST10
	.uleb128 0x11
	.uaword	.LVL44
	.uaword	0x38d
	.uleb128 0x11
	.uaword	.LVL45
	.uaword	0x5ba
	.uleb128 0x11
	.uaword	.LVL48
	.uaword	0x3c9
	.uleb128 0xf
	.uaword	.LVL50
	.uaword	0x93c
	.uaword	0x697
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.uaword	.LVL51
	.uaword	0x5ba
	.byte	0
	.uleb128 0x19
	.uaword	0x29a
	.uaword	0x6b1
	.uleb128 0x1a
	.uaword	0x360
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.string	"EEPROM_DATA"
	.byte	0x1
	.byte	0x32
	.uaword	0x6cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EEPROM_DATA
	.uleb128 0x1c
	.uaword	0x6a1
	.uleb128 0x1b
	.string	"Bytes_descr"
	.byte	0x1
	.byte	0x1f
	.uaword	0x34b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Bytes_descr
	.uleb128 0x1b
	.string	"Words_descr"
	.byte	0x1
	.byte	0x20
	.uaword	0x34b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Words_descr
	.uleb128 0x1b
	.string	"Longs_descr"
	.byte	0x1
	.byte	0x21
	.uaword	0x34b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Longs_descr
	.uleb128 0x1b
	.string	"t1"
	.byte	0x1
	.byte	0x12
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t1
	.uleb128 0x1b
	.string	"t2"
	.byte	0x1
	.byte	0x13
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t2
	.uleb128 0x1b
	.string	"t3"
	.byte	0x1
	.byte	0x14
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t3
	.uleb128 0x1b
	.string	"t4"
	.byte	0x1
	.byte	0x15
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t4
	.uleb128 0x1b
	.string	"t5"
	.byte	0x1
	.byte	0x16
	.uaword	0x267
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t5
	.uleb128 0x1b
	.string	"t6"
	.byte	0x1
	.byte	0x17
	.uaword	0x1da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t6
	.uleb128 0x1b
	.string	"t7"
	.byte	0x1
	.byte	0x18
	.uaword	0x1da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t7
	.uleb128 0x1b
	.string	"t8"
	.byte	0x1
	.byte	0x19
	.uaword	0x1da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t8
	.uleb128 0x1b
	.string	"t9"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t9
	.uleb128 0x1b
	.string	"t10"
	.byte	0x1
	.byte	0x1b
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	t10
	.uleb128 0x19
	.uaword	0x1bc
	.uaword	0x7d9
	.uleb128 0x1a
	.uaword	0x360
	.byte	0xd
	.byte	0
	.uleb128 0x1b
	.string	"tarray"
	.byte	0x1
	.byte	0x1c
	.uaword	0x7c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	tarray
	.uleb128 0x1b
	.string	"Adapt_descr"
	.byte	0x1
	.byte	0x22
	.uaword	0x34b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Adapt_descr
	.uleb128 0x1b
	.string	"eeprom_test_long1"
	.byte	0x1
	.byte	0x24
	.uaword	0x20b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	eeprom_test_long1
	.uleb128 0x1b
	.string	"eeprom_write_cnt_mem"
	.byte	0x1
	.byte	0x28
	.uaword	0x1e7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	eeprom_write_cnt_mem
	.uleb128 0x1b
	.string	"eeprom_write_cnt"
	.byte	0x1
	.byte	0x29
	.uaword	0x1e7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	eeprom_write_cnt
	.uleb128 0x1b
	.string	"eeprom_write_cnt_mem2"
	.byte	0x1
	.byte	0x2b
	.uaword	0x20b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	eeprom_write_cnt_mem2
	.uleb128 0x1b
	.string	"eeprom_write_cnt2"
	.byte	0x1
	.byte	0x2c
	.uaword	0x20b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	eeprom_write_cnt2
	.uleb128 0x1b
	.string	"eeprom_write_cnt_mem3"
	.byte	0x1
	.byte	0x2e
	.uaword	0x1bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	eeprom_write_cnt_mem3
	.uleb128 0x1b
	.string	"eeprom_write_cnt3"
	.byte	0x1
	.byte	0x2f
	.uaword	0x1bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	eeprom_write_cnt3
	.uleb128 0x19
	.uaword	0x1bc
	.uaword	0x902
	.uleb128 0x1a
	.uaword	0x360
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.string	"page_data"
	.byte	0x1
	.byte	0x72
	.uaword	0x91a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	page_data
	.uleb128 0xe
	.uaword	0x8f2
	.uleb128 0x1b
	.string	"array_idx"
	.byte	0x1
	.byte	0x73
	.uaword	0x937
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	array_idx
	.uleb128 0xe
	.uaword	0x1bc
	.uleb128 0x1d
	.byte	0x1
	.string	"erase_eeprom_sector"
	.byte	0x4
	.byte	0x5e
	.byte	0x1
	.byte	0x1
	.uaword	0x960
	.uleb128 0x1e
	.uaword	0x1bc
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"write_eeprom_page"
	.byte	0x4
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uaword	0x987
	.uleb128 0x1e
	.uaword	0x987
	.uleb128 0x1e
	.uaword	0x20b
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x1bc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x20
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 -1
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL10-.Ltext0
	.uaword	.LFE151-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LFE151-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13-.Ltext0
	.uaword	.LFE152-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0xc
	.byte	0x82
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x20
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0xe
	.byte	0x82
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE150-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43-.Ltext0
	.uaword	.LFE155-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL50-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL50-1-.Ltext0
	.uaword	.LFE156-.Ltext0
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4-.Ltext0
	.uaword	.LBE4-.Ltext0
	.uaword	.LBB7-.Ltext0
	.uaword	.LBE7-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"temp_int"
.LASF0:
	.string	"temp_short"
	.extern	write_eeprom_page,STT_FUNC,0
	.extern	erase_eeprom_sector,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
