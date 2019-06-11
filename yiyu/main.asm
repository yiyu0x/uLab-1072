;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _display_PARM_5
	.globl _display_PARM_4
	.globl _display_PARM_3
	.globl _display_PARM_2
	.globl _main
	.globl _check_sound_trigger
	.globl _display
	.globl _keyPressed
	.globl _timer1
	.globl _timer_isr
	.globl _run_clock
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _counter
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_counter::
	.ds 2
_main_previous_65537_32:
	.ds 2
_main_row_65537_32:
	.ds 2
_main_count_65537_32:
	.ds 2
_main_num_65537_32:
	.ds 8
_main_num_bi_65537_32:
	.ds 8
_main_alpha_65537_32:
	.ds 22
_main_table_65537_32:
	.ds 8
_main_index_65538_33:
	.ds 2
_main_flash_flag_65538_33:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_run_clock_sloc0_1_0:
	.ds 3
	.area	OSEG    (OVR,DATA)
_keyPressed_row_65536_11:
	.ds 2
	.area	OSEG    (OVR,DATA)
_display_PARM_2:
	.ds 3
_display_PARM_3:
	.ds 3
_display_PARM_4:
	.ds 1
_display_PARM_5:
	.ds 4
_display_table_65536_17:
	.ds 3
_display_t_262144_21:
	.ds 2
_display_t_196608_26:
	.ds 2
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer_isr
	.ds	5
	reti
	.ds	7
	ljmp	_timer1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:5: short counter = 0;
	clr	a
	mov	_counter,a
	mov	(_counter + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'run_clock'
;------------------------------------------------------------
;num                       Allocated to registers r5 r6 r7 
;sloc0                     Allocated with name '_run_clock_sloc0_1_0'
;------------------------------------------------------------
;	main.c:8: void run_clock(short num[]) {
;	-----------------------------------------
;	 function run_clock
;	-----------------------------------------
_run_clock:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:9: if (counter >= 20) {
	clr	c
	mov	a,_counter
	subb	a,#0x14
	mov	a,(_counter + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00127$
	ret
00127$:
;	main.c:10: num[3]++;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	r0
	cjne	r0,#0x00,00128$
	inc	r1
00128$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	main.c:11: counter = 0;
	clr	a
	mov	_counter,a
	mov	(_counter + 1),a
;	main.c:12: if (num[3] == 10) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	cjne	r0,#0x0a,00129$
	cjne	r1,#0x00,00129$
	sjmp	00130$
00129$:
	ret
00130$:
;	main.c:13: num[3] = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	main.c:14: num[2]++;
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	r0
	cjne	r0,#0x00,00131$
	inc	r1
00131$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	main.c:15: if (num[2] == 6) {
	cjne	r0,#0x06,00132$
	cjne	r1,#0x00,00132$
	sjmp	00133$
00132$:
	ret
00133$:
;	main.c:16: num[1]++;
	mov	a,#0x02
	add	a,r5
	mov	_run_clock_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_run_clock_sloc0_1_0 + 1),a
	mov	(_run_clock_sloc0_1_0 + 2),r7
	mov	dpl,_run_clock_sloc0_1_0
	mov	dph,(_run_clock_sloc0_1_0 + 1)
	mov	b,(_run_clock_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	r0
	cjne	r0,#0x00,00134$
	inc	r1
00134$:
	mov	dpl,_run_clock_sloc0_1_0
	mov	dph,(_run_clock_sloc0_1_0 + 1)
	mov	b,(_run_clock_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	main.c:17: num[2] = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	main.c:18: if (num[1] == 10) {
	cjne	r0,#0x0a,00109$
	cjne	r1,#0x00,00109$
;	main.c:19: num[1] = 0;
	mov	dpl,_run_clock_sloc0_1_0
	mov	dph,(_run_clock_sloc0_1_0 + 1)
	mov	b,(_run_clock_sloc0_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	main.c:20: num[0]++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00137$
	inc	r4
00137$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
;	main.c:25: }
	ljmp	__gptrput
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_isr'
;------------------------------------------------------------
;	main.c:27: void timer_isr (void) __interrupt (1) __using (1) {	//控制聲音頻率
;	-----------------------------------------
;	 function timer_isr
;	-----------------------------------------
_timer_isr:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	psw
;	main.c:28: TH0  = 15536 >> 8;
	mov	_TH0,#0x3c
;	main.c:29: TL0  = 15536 & 0xff;
	mov	_TL0,#0xb0
;	main.c:32: counter++;
	inc	_counter
	clr	a
	cjne	a,_counter,00103$
	inc	(_counter + 1)
00103$:
;	main.c:34: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1'
;------------------------------------------------------------
;	main.c:36: void timer1 (void) __interrupt (3) __using (2) {	//換下一個音
;	-----------------------------------------
;	 function timer1
;	-----------------------------------------
_timer1:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
	push	psw
;	main.c:37: TH1  = 15536 >> 8;
	mov	_TH1,#0x3c
;	main.c:38: TL1  = 15536 & 0xff;
	mov	_TL1,#0xb0
;	main.c:39: P1_4 != P1_4;
	mov	c,_P1_4
	mov	c,_P1_4
;	main.c:40: }
	pop	psw
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'keyPressed'
;------------------------------------------------------------
;row                       Allocated with name '_keyPressed_row_65536_11'
;c                         Allocated to registers r4 r5 
;col                       Allocated to registers r2 r3 
;magic                     Allocated to registers r7 r6 
;------------------------------------------------------------
;	main.c:43: short keyPressed(short row) {
;	-----------------------------------------
;	 function keyPressed
;	-----------------------------------------
_keyPressed:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_keyPressed_row_65536_11,dpl
	mov	(_keyPressed_row_65536_11 + 1),dph
;	main.c:44: if((P0 & 0b11110000) != 0b11110000){	//if 按下按鈕
	mov	r4,_P0
	anl	ar4,#0xf0
	mov	r5,#0x00
	cjne	r4,#0xf0,00127$
	cjne	r5,#0x00,00127$
	sjmp	00105$
00127$:
;	main.c:45: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
	mov	r4,#0x01
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
00107$:
	clr	c
	mov	a,r0
	subb	a,#0x04
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	main.c:47: `			short magic = ((P0 >> 4) ^ 0b11111111) & 0b00001111;
	mov	a,_P0
	swap	a
	anl	a,#0x0f
	mov	r7,a
	xrl	ar7,#0xff
	anl	ar7,#0x0f
	mov	r6,#0x00
;	main.c:48: if (magic == c) {
	mov	a,r7
	cjne	a,ar4,00108$
	mov	a,r6
	cjne	a,ar5,00108$
;	main.c:49: return row * 4 + col;
	mov	a,_keyPressed_row_65536_11
	add	a,_keyPressed_row_65536_11
	mov	r6,a
	mov	a,(_keyPressed_row_65536_11 + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r2
	add	a,r6
	mov	dpl,a
	mov	a,r3
	addc	a,r7
	mov	dph,a
	ret
00108$:
;	main.c:45: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	inc	r0
	cjne	r0,#0x00,00131$
	inc	r1
00131$:
	mov	ar2,r0
	mov	ar3,r1
	sjmp	00107$
00105$:
;	main.c:53: return -1;	//沒按 return -1
	mov	dptr,#0xffff
;	main.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;alpha                     Allocated with name '_display_PARM_2'
;num                       Allocated with name '_display_PARM_3'
;isSetting                 Allocated with name '_display_PARM_4'
;flash_flag                Allocated with name '_display_PARM_5'
;table                     Allocated with name '_display_table_65536_17'
;i                         Allocated to registers r1 r2 
;t                         Allocated with name '_display_t_262144_21'
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;t                         Allocated with name '_display_t_196608_26'
;j                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:56: void display(short table[], short alpha[], short num[], bool isSetting, long flash_flag) {
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	_display_table_65536_17,dpl
	mov	(_display_table_65536_17 + 1),dph
	mov	(_display_table_65536_17 + 2),b
;	main.c:57: if (isSetting) { // flashing
	mov	a,_display_PARM_4
	jnz	00168$
	ljmp	00108$
00168$:
;	main.c:58: if (flash_flag > 7800) { // 頻率
	clr	c
	mov	a,#0x78
	subb	a,_display_PARM_5
	mov	a,#0x1e
	subb	a,(_display_PARM_5 + 1)
	clr	a
	subb	a,(_display_PARM_5 + 2)
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_display_PARM_5 + 3)
	xrl	b,#0x80
	subb	a,b
	jc	00169$
	ret
00169$:
;	main.c:59: for(short i = 0,t=1; i < 4; i++,t*=2) {
	mov	_display_t_262144_21,#0x01
	mov	(_display_t_262144_21 + 1),#0x00
	mov	r1,#0x00
	mov	r2,#0x00
00114$:
	clr	c
	mov	a,r1
	subb	a,#0x04
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00170$
	ret
00170$:
;	main.c:60: P1 = table[i];
	mov	a,r1
	add	a,r1
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r4,a
	mov	a,r0
	add	a,_display_table_65536_17
	mov	r3,a
	mov	a,r4
	addc	a,(_display_table_65536_17 + 1)
	mov	r6,a
	mov	r7,(_display_table_65536_17 + 2)
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_P1,a
;	main.c:61: P2 = alpha[num[i]];
	mov	a,r0
	add	a,_display_PARM_3
	mov	r0,a
	mov	a,r4
	addc	a,(_display_PARM_3 + 1)
	mov	r4,a
	mov	r7,(_display_PARM_3 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r0
	add	a,_display_PARM_2
	mov	r0,a
	mov	a,r4
	addc	a,(_display_PARM_2 + 1)
	mov	r4,a
	mov	r7,(_display_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	_P2,a
;	main.c:62: for(int j = 0; j < 500; j++){}
	mov	r6,#0x00
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r6
	subb	a,#0xf4
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00115$
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00115$:
;	main.c:59: for(short i = 0,t=1; i < 4; i++,t*=2) {
	inc	r1
	cjne	r1,#0x00,00173$
	inc	r2
00173$:
	mov	a,_display_t_262144_21
	add	a,_display_t_262144_21
	mov	_display_t_262144_21,a
	mov	a,(_display_t_262144_21 + 1)
	rlc	a
	mov	(_display_t_262144_21 + 1),a
	ljmp	00114$
00108$:
;	main.c:66: for(short i = 0,t=1; i < 4; i++,t*=2) {
	mov	_display_t_196608_26,#0x01
	mov	(_display_t_196608_26 + 1),#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00120$:
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00122$
;	main.c:67: P1 = table[i];
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,_display_table_65536_17
	mov	r0,a
	mov	a,r3
	addc	a,(_display_table_65536_17 + 1)
	mov	r1,a
	mov	r7,(_display_table_65536_17 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_P1,a
;	main.c:68: P2 = alpha[num[i]];
	mov	a,r2
	add	a,_display_PARM_3
	mov	r2,a
	mov	a,r3
	addc	a,(_display_PARM_3 + 1)
	mov	r3,a
	mov	r7,(_display_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,_display_PARM_2
	mov	r2,a
	mov	a,r3
	addc	a,(_display_PARM_2 + 1)
	mov	r3,a
	mov	r7,(_display_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	_P2,a
;	main.c:69: for(int j = 0; j < 1000; j++){}
	mov	r6,#0x00
	mov	r7,#0x00
00117$:
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00121$
	inc	r6
	cjne	r6,#0x00,00117$
	inc	r7
	sjmp	00117$
00121$:
;	main.c:66: for(short i = 0,t=1; i < 4; i++,t*=2) {
	inc	r4
	cjne	r4,#0x00,00177$
	inc	r5
00177$:
	mov	a,_display_t_196608_26
	add	a,_display_t_196608_26
	mov	_display_t_196608_26,a
	mov	a,(_display_t_196608_26 + 1)
	rlc	a
	mov	(_display_t_196608_26 + 1),a
	ljmp	00120$
00122$:
;	main.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_sound_trigger'
;------------------------------------------------------------
;	main.c:74: void check_sound_trigger() {
;	-----------------------------------------
;	 function check_sound_trigger
;	-----------------------------------------
_check_sound_trigger:
;	main.c:75: P1_4 = 1;
;	assignBit
	setb	_P1_4
;	main.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;previous                  Allocated with name '_main_previous_65537_32'
;row                       Allocated with name '_main_row_65537_32'
;count                     Allocated with name '_main_count_65537_32'
;num                       Allocated with name '_main_num_65537_32'
;num_bi                    Allocated with name '_main_num_bi_65537_32'
;alpha                     Allocated with name '_main_alpha_65537_32'
;table                     Allocated with name '_main_table_65537_32'
;index                     Allocated with name '_main_index_65538_33'
;flash_flag                Allocated with name '_main_flash_flag_65538_33'
;isSetting                 Allocated to registers r5 
;afterSetting              Allocated to registers 
;setting_bi_time           Allocated to registers r4 
;key                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:79: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:91: EA = 1;
;	assignBit
	setb	_EA
;	main.c:92: TMOD = 0b00010001;
	mov	_TMOD,#0x11
;	main.c:93: IE   = 0x8A;
	mov	_IE,#0x8a
;	main.c:94: TR0  = 1;	//timer 0 control bit
;	assignBit
	setb	_TR0
;	main.c:95: TR1  = 1;	//timer 1 control bit
;	assignBit
	setb	_TR1
;	main.c:97: short previous = -1;
	mov	_main_previous_65537_32,#0xff
	mov	(_main_previous_65537_32 + 1),#0xff
;	main.c:98: short row = 0;
	clr	a
	mov	_main_row_65537_32,a
	mov	(_main_row_65537_32 + 1),a
;	main.c:99: short count = 1;
	mov	_main_count_65537_32,#0x01
;	1-genFromRTrack replaced	mov	(_main_count_65537_32 + 1),#0x00
	mov	(_main_count_65537_32 + 1),a
;	main.c:100: short num[4] = {0};
	mov	(_main_num_65537_32 + 0),a
	mov	(_main_num_65537_32 + 1),a
	mov	((_main_num_65537_32 + 0x0002) + 0),a
	mov	((_main_num_65537_32 + 0x0002) + 1),a
	mov	((_main_num_65537_32 + 0x0004) + 0),a
	mov	((_main_num_65537_32 + 0x0004) + 1),a
	mov	((_main_num_65537_32 + 0x0006) + 0),a
	mov	((_main_num_65537_32 + 0x0006) + 1),a
;	main.c:101: short num_bi[4] = {0};
	mov	(_main_num_bi_65537_32 + 0),a
	mov	(_main_num_bi_65537_32 + 1),a
	mov	((_main_num_bi_65537_32 + 0x0002) + 0),a
	mov	((_main_num_bi_65537_32 + 0x0002) + 1),a
	mov	((_main_num_bi_65537_32 + 0x0004) + 0),a
	mov	((_main_num_bi_65537_32 + 0x0004) + 1),a
	mov	((_main_num_bi_65537_32 + 0x0006) + 0),a
	mov	((_main_num_bi_65537_32 + 0x0006) + 1),a
;	main.c:102: const short alpha[11] = {
	mov	(_main_alpha_65537_32 + 0),#0x03
;	1-genFromRTrack replaced	mov	(_main_alpha_65537_32 + 1),#0x00
	mov	(_main_alpha_65537_32 + 1),a
	mov	((_main_alpha_65537_32 + 0x0002) + 0),#0x9f
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0002) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x0002) + 1),a
	mov	((_main_alpha_65537_32 + 0x0004) + 0),#0x25
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0004) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x0004) + 1),a
	mov	((_main_alpha_65537_32 + 0x0006) + 0),#0x0d
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0006) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x0006) + 1),a
	mov	((_main_alpha_65537_32 + 0x0008) + 0),#0x99
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0008) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x0008) + 1),a
	mov	((_main_alpha_65537_32 + 0x000a) + 0),#0x49
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x000a) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x000a) + 1),a
	mov	((_main_alpha_65537_32 + 0x000c) + 0),#0x41
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x000c) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x000c) + 1),a
	mov	((_main_alpha_65537_32 + 0x000e) + 0),#0x1f
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x000e) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x000e) + 1),a
	mov	((_main_alpha_65537_32 + 0x0010) + 0),#0x01
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0010) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x0010) + 1),a
	mov	((_main_alpha_65537_32 + 0x0012) + 0),#0x09
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0012) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x0012) + 1),a
	mov	((_main_alpha_65537_32 + 0x0014) + 0),#0xff
;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0014) + 1),#0x00
	mov	((_main_alpha_65537_32 + 0x0014) + 1),a
;	main.c:115: const short table[4] = {
	mov	(_main_table_65537_32 + 0),#0xfe
;	1-genFromRTrack replaced	mov	(_main_table_65537_32 + 1),#0x00
	mov	(_main_table_65537_32 + 1),a
	mov	((_main_table_65537_32 + 0x0002) + 0),#0xfd
;	1-genFromRTrack replaced	mov	((_main_table_65537_32 + 0x0002) + 1),#0x00
	mov	((_main_table_65537_32 + 0x0002) + 1),a
	mov	((_main_table_65537_32 + 0x0004) + 0),#0xfb
;	1-genFromRTrack replaced	mov	((_main_table_65537_32 + 0x0004) + 1),#0x00
	mov	((_main_table_65537_32 + 0x0004) + 1),a
	mov	((_main_table_65537_32 + 0x0006) + 0),#0xf7
;	1-genFromRTrack replaced	mov	((_main_table_65537_32 + 0x0006) + 1),#0x00
	mov	((_main_table_65537_32 + 0x0006) + 1),a
;	main.c:121: P0 = 0b00001111;
	mov	_P0,#0x0f
;	main.c:122: short index = 0;
	mov	_main_index_65538_33,a
	mov	(_main_index_65538_33 + 1),a
;	main.c:123: long flash_flag = 0;
	mov	_main_flash_flag_65538_33,a
	mov	(_main_flash_flag_65538_33 + 1),a
	mov	(_main_flash_flag_65538_33 + 2),a
	mov	(_main_flash_flag_65538_33 + 3),a
;	main.c:124: bool isSetting = false;
	mov	r5,#0x00
;	main.c:126: bool setting_bi_time = false;
	mov	r4,#0x00
;	main.c:127: while (1) {
00141$:
;	main.c:128: flash_flag++;
	inc	_main_flash_flag_65538_33
	clr	a
	cjne	a,_main_flash_flag_65538_33,00229$
	inc	(_main_flash_flag_65538_33 + 1)
	cjne	a,(_main_flash_flag_65538_33 + 1),00229$
	inc	(_main_flash_flag_65538_33 + 2)
	cjne	a,(_main_flash_flag_65538_33 + 2),00229$
	inc	(_main_flash_flag_65538_33 + 3)
00229$:
;	main.c:129: if (flash_flag >= 8000)  // 頻率
	clr	c
	mov	a,_main_flash_flag_65538_33
	subb	a,#0x40
	mov	a,(_main_flash_flag_65538_33 + 1)
	subb	a,#0x1f
	mov	a,(_main_flash_flag_65538_33 + 2)
	subb	a,#0x00
	mov	a,(_main_flash_flag_65538_33 + 3)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	main.c:130: flash_flag = 0;
	clr	a
	mov	_main_flash_flag_65538_33,a
	mov	(_main_flash_flag_65538_33 + 1),a
	mov	(_main_flash_flag_65538_33 + 2),a
	mov	(_main_flash_flag_65538_33 + 3),a
00102$:
;	main.c:131: P0     =count^0b11111111;
	mov	a,#0xff
	xrl	a,_main_count_65537_32
	mov	r2,a
	mov	_P0,r2
;	main.c:132: count *=2; //shift
	mov	a,_main_count_65537_32
	add	a,_main_count_65537_32
	mov	_main_count_65537_32,a
	mov	a,(_main_count_65537_32 + 1)
	rlc	a
	mov	(_main_count_65537_32 + 1),a
;	main.c:133: short key = keyPressed(row);
	mov	dpl,_main_row_65537_32
	mov	dph,(_main_row_65537_32 + 1)
	push	ar5
	push	ar4
	lcall	_keyPressed
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
;	main.c:134: if (key != previous && key != -1) {	//有按且不等於上一按 => 處理debounce
	mov	a,r2
	cjne	a,_main_previous_65537_32,00231$
	mov	a,r3
	cjne	a,(_main_previous_65537_32 + 1),00231$
	ljmp	00126$
00231$:
	cjne	r2,#0xff,00232$
	cjne	r3,#0xff,00232$
	ljmp	00126$
00232$:
;	main.c:135: previous = key;
	mov	_main_previous_65537_32,r2
	mov	(_main_previous_65537_32 + 1),r3
;	main.c:141: if (key == 10) isSetting = true;
	cjne	r2,#0x0a,00104$
	cjne	r3,#0x00,00104$
	mov	r5,#0x01
00104$:
;	main.c:142: if (key == 11) isSetting = false;
	cjne	r2,#0x0b,00106$
	cjne	r3,#0x00,00106$
	mov	r5,#0x00
00106$:
;	main.c:143: if (key == 12) setting_bi_time = true;
	cjne	r2,#0x0c,00108$
	cjne	r3,#0x00,00108$
	mov	r4,#0x01
00108$:
;	main.c:144: if (key == 13) setting_bi_time = false;
	cjne	r2,#0x0d,00110$
	cjne	r3,#0x00,00110$
	mov	r4,#0x00
00110$:
;	main.c:147: if (isSetting) {
	mov	a,r5
	jz	00117$
;	main.c:149: if (key >= 0 && key <= 9)
	mov	a,r3
	jb	acc.7,00112$
	clr	c
	mov	a,#0x09
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00112$
;	main.c:150: num[index++] = key;
	mov	r6,_main_index_65538_33
	mov	r7,(_main_index_65538_33 + 1)
	inc	_main_index_65538_33
	clr	a
	cjne	a,_main_index_65538_33,00244$
	inc	(_main_index_65538_33 + 1)
00244$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_main_num_65537_32
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
00112$:
;	main.c:151: if (index == 4) index = 0;
	mov	a,#0x04
	cjne	a,_main_index_65538_33,00245$
	clr	a
	cjne	a,(_main_index_65538_33 + 1),00245$
	sjmp	00246$
00245$:
	sjmp	00117$
00246$:
	clr	a
	mov	_main_index_65538_33,a
	mov	(_main_index_65538_33 + 1),a
00117$:
;	main.c:154: if (setting_bi_time) {
	mov	a,r4
	jz	00126$
;	main.c:155: if (key >= 0 && key <= 9)
	mov	a,r3
	jb	acc.7,00119$
	clr	c
	mov	a,#0x09
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00119$
;	main.c:156: num_bi[index++] = key;
	mov	r6,_main_index_65538_33
	mov	r7,(_main_index_65538_33 + 1)
	inc	_main_index_65538_33
	clr	a
	cjne	a,_main_index_65538_33,00250$
	inc	(_main_index_65538_33 + 1)
00250$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_main_num_bi_65537_32
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
00119$:
;	main.c:157: if (index == 4) index = 0;
	mov	a,#0x04
	cjne	a,_main_index_65538_33,00251$
	clr	a
	cjne	a,(_main_index_65538_33 + 1),00251$
	sjmp	00252$
00251$:
	sjmp	00126$
00252$:
	clr	a
	mov	_main_index_65538_33,a
	mov	(_main_index_65538_33 + 1),a
00126$:
;	main.c:161: if (!isSetting && !setting_bi_time) {
	mov	a,r5
	jnz	00129$
	mov	a,r4
	jnz	00129$
;	main.c:162: run_clock(num);
	mov	dptr,#_main_num_65537_32
	mov	b,#0x40
	push	ar5
	push	ar4
	lcall	_run_clock
	pop	ar4
	pop	ar5
00129$:
;	main.c:165: row++;
	inc	_main_row_65537_32
	clr	a
	cjne	a,_main_row_65537_32,00255$
	inc	(_main_row_65537_32 + 1)
00255$:
;	main.c:166: if (count == 0x10) {	//用count從上往下掃 
	mov	a,#0x10
	cjne	a,_main_count_65537_32,00256$
	clr	a
	cjne	a,(_main_count_65537_32 + 1),00256$
	sjmp	00257$
00256$:
	sjmp	00132$
00257$:
;	main.c:167: count = 1;
	mov	_main_count_65537_32,#0x01
;	main.c:168: row   = 0;
	clr	a
	mov	(_main_count_65537_32 + 1),a
	mov	_main_row_65537_32,a
	mov	(_main_row_65537_32 + 1),a
;	main.c:169: P1 = 0b11111111;
	mov	_P1,#0xff
00132$:
;	main.c:172: if (setting_bi_time || isSetting)
	mov	a,r4
	jnz	00136$
	mov	a,r5
	jz	00137$
00136$:
;	main.c:173: if (isSetting)
	mov	a,r5
	jz	00134$
;	main.c:174: display(table, alpha, num, 1, flash_flag);
	mov	_display_PARM_2,#_main_alpha_65537_32
	mov	(_display_PARM_2 + 1),#0x00
	mov	(_display_PARM_2 + 2),#0x40
	mov	_display_PARM_3,#_main_num_65537_32
	mov	(_display_PARM_3 + 1),#0x00
	mov	(_display_PARM_3 + 2),#0x40
	mov	_display_PARM_4,#0x01
	mov	_display_PARM_5,_main_flash_flag_65538_33
	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_33 + 1)
	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_33 + 2)
	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_33 + 3)
	mov	dptr,#_main_table_65537_32
	mov	b,#0x40
	push	ar5
	push	ar4
	lcall	_display
	pop	ar4
	pop	ar5
	sjmp	00138$
00134$:
;	main.c:176: display(table, alpha, num_bi, 1, flash_flag);
	mov	_display_PARM_2,#_main_alpha_65537_32
	mov	(_display_PARM_2 + 1),#0x00
	mov	(_display_PARM_2 + 2),#0x40
	mov	_display_PARM_3,#_main_num_bi_65537_32
	mov	(_display_PARM_3 + 1),#0x00
	mov	(_display_PARM_3 + 2),#0x40
	mov	_display_PARM_4,#0x01
	mov	_display_PARM_5,_main_flash_flag_65538_33
	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_33 + 1)
	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_33 + 2)
	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_33 + 3)
	mov	dptr,#_main_table_65537_32
	mov	b,#0x40
	push	ar5
	push	ar4
	lcall	_display
	pop	ar4
	pop	ar5
	sjmp	00138$
00137$:
;	main.c:178: display(table, alpha, num, 0, flash_flag);
	mov	_display_PARM_2,#_main_alpha_65537_32
	mov	(_display_PARM_2 + 1),#0x00
	mov	(_display_PARM_2 + 2),#0x40
	mov	_display_PARM_3,#_main_num_65537_32
	mov	(_display_PARM_3 + 1),#0x00
	mov	(_display_PARM_3 + 2),#0x40
	mov	_display_PARM_4,#0x00
	mov	_display_PARM_5,_main_flash_flag_65538_33
	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_33 + 1)
	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_33 + 2)
	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_33 + 3)
	mov	dptr,#_main_table_65537_32
	mov	b,#0x40
	push	ar5
	push	ar4
	lcall	_display
	pop	ar4
	pop	ar5
00138$:
;	main.c:179: check_sound_trigger();
	push	ar5
	push	ar4
	lcall	_check_sound_trigger
	pop	ar4
	pop	ar5
;	main.c:182: }
	ljmp	00141$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
