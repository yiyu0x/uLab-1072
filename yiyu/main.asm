;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _display_PARM_3
	.globl _display_PARM_2
	.globl _main
	.globl _display
	.globl _keyPressed
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_previous_65536_13:
	.ds 2
_main_row_65536_13:
	.ds 2
_main_num_65536_13:
	.ds 8
_main_alpha_65536_13:
	.ds 22
_main_table_65536_13:
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_keyPressed_row_65536_1:
	.ds 2
	.area	OSEG    (OVR,DATA)
_display_PARM_2:
	.ds 3
_display_PARM_3:
	.ds 3
_display_table_65536_7:
	.ds 3
_display_t_131072_9:
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
;Allocation info for local variables in function 'keyPressed'
;------------------------------------------------------------
;row                       Allocated with name '_keyPressed_row_65536_1'
;c                         Allocated to registers r4 r5 
;col                       Allocated to registers r2 r3 
;magic                     Allocated to registers r7 r6 
;------------------------------------------------------------
;	main.c:3: short keyPressed(short row) {
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
	mov	_keyPressed_row_65536_1,dpl
	mov	(_keyPressed_row_65536_1 + 1),dph
;	main.c:4: if((P0 & 0b11110000) != 0b11110000){	//if 按下按鈕
	mov	r4,_P0
	anl	ar4,#0xf0
	mov	r5,#0x00
	cjne	r4,#0xf0,00127$
	cjne	r5,#0x00,00127$
	sjmp	00105$
00127$:
;	main.c:5: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
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
;	main.c:7: `			short magic = ((P0 >> 4) ^ 0b11111111) & 0b00001111;
	mov	a,_P0
	swap	a
	anl	a,#0x0f
	mov	r7,a
	xrl	ar7,#0xff
	anl	ar7,#0x0f
	mov	r6,#0x00
;	main.c:8: if (magic == c) {
	mov	a,r7
	cjne	a,ar4,00108$
	mov	a,r6
	cjne	a,ar5,00108$
;	main.c:9: return row * 4 + col;
	mov	a,_keyPressed_row_65536_1
	add	a,_keyPressed_row_65536_1
	mov	r6,a
	mov	a,(_keyPressed_row_65536_1 + 1)
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
;	main.c:5: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
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
;	main.c:13: return -1;	//沒按 return -1
	mov	dptr,#0xffff
;	main.c:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;alpha                     Allocated with name '_display_PARM_2'
;num                       Allocated with name '_display_PARM_3'
;table                     Allocated with name '_display_table_65536_7'
;i                         Allocated to registers r1 r2 
;t                         Allocated with name '_display_t_131072_9'
;j                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:16: short display(short table[], short alpha[], short num[]) {
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	_display_table_65536_7,dpl
	mov	(_display_table_65536_7 + 1),dph
	mov	(_display_table_65536_7 + 2),b
;	main.c:17: for(short i = 0,t=1; i < 4; i++,t*=2) {
	mov	_display_t_131072_9,#0x01
	mov	(_display_t_131072_9 + 1),#0x00
	mov	r1,#0x00
	mov	r2,#0x00
00107$:
	clr	c
	mov	a,r1
	subb	a,#0x04
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	main.c:18: P1 = table[i];
	mov	a,r1
	add	a,r1
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r4,a
	mov	a,r0
	add	a,_display_table_65536_7
	mov	r3,a
	mov	a,r4
	addc	a,(_display_table_65536_7 + 1)
	mov	r6,a
	mov	r7,(_display_table_65536_7 + 2)
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_P1,a
;	main.c:19: P2 = alpha[num[i]];
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
;	main.c:20: for(int j = 0; j < 1000; j++){}
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00108$
	inc	r6
	cjne	r6,#0x00,00104$
	inc	r7
	sjmp	00104$
00108$:
;	main.c:17: for(short i = 0,t=1; i < 4; i++,t*=2) {
	inc	r1
	cjne	r1,#0x00,00132$
	inc	r2
00132$:
	mov	a,_display_t_131072_9
	add	a,_display_t_131072_9
	mov	_display_t_131072_9,a
	mov	a,(_display_t_131072_9 + 1)
	rlc	a
	mov	(_display_t_131072_9 + 1),a
	ljmp	00107$
00109$:
;	main.c:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;previous                  Allocated with name '_main_previous_65536_13'
;row                       Allocated with name '_main_row_65536_13'
;count                     Allocated to registers r2 r3 
;num                       Allocated with name '_main_num_65536_13'
;alpha                     Allocated with name '_main_alpha_65536_13'
;table                     Allocated with name '_main_table_65536_13'
;key                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:24: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:31: short previous = -1;
	mov	_main_previous_65536_13,#0xff
	mov	(_main_previous_65536_13 + 1),#0xff
;	main.c:32: short row = 0;
	clr	a
	mov	_main_row_65536_13,a
	mov	(_main_row_65536_13 + 1),a
;	main.c:33: short count = 1;
	mov	r2,#0x01
	mov	r3,#0x00
;	main.c:34: short num[4] = {0};
	mov	(_main_num_65536_13 + 0),a
	mov	(_main_num_65536_13 + 1),a
	mov	((_main_num_65536_13 + 0x0002) + 0),a
	mov	((_main_num_65536_13 + 0x0002) + 1),a
	mov	((_main_num_65536_13 + 0x0004) + 0),a
	mov	((_main_num_65536_13 + 0x0004) + 1),a
	mov	((_main_num_65536_13 + 0x0006) + 0),a
	mov	((_main_num_65536_13 + 0x0006) + 1),a
;	main.c:35: const short alpha[11] = {
	mov	(_main_alpha_65536_13 + 0),#0x03
;	1-genFromRTrack replaced	mov	(_main_alpha_65536_13 + 1),#0x00
	mov	(_main_alpha_65536_13 + 1),a
	mov	((_main_alpha_65536_13 + 0x0002) + 0),#0x9f
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0002) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x0002) + 1),a
	mov	((_main_alpha_65536_13 + 0x0004) + 0),#0x25
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0004) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x0004) + 1),a
	mov	((_main_alpha_65536_13 + 0x0006) + 0),#0x0d
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0006) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x0006) + 1),a
	mov	((_main_alpha_65536_13 + 0x0008) + 0),#0x99
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0008) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x0008) + 1),a
	mov	((_main_alpha_65536_13 + 0x000a) + 0),#0x49
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x000a) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x000a) + 1),a
	mov	((_main_alpha_65536_13 + 0x000c) + 0),#0x41
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x000c) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x000c) + 1),a
	mov	((_main_alpha_65536_13 + 0x000e) + 0),#0x1f
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x000e) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x000e) + 1),a
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0010) + 0),#0x01
	mov	((_main_alpha_65536_13 + 0x0010) + 0),r2
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0010) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x0010) + 1),a
	mov	((_main_alpha_65536_13 + 0x0012) + 0),#0x09
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0012) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x0012) + 1),a
	mov	((_main_alpha_65536_13 + 0x0014) + 0),#0xff
;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0014) + 1),#0x00
	mov	((_main_alpha_65536_13 + 0x0014) + 1),a
;	main.c:48: const short table[4] = {
	mov	(_main_table_65536_13 + 0),#0xfe
;	1-genFromRTrack replaced	mov	(_main_table_65536_13 + 1),#0x00
	mov	(_main_table_65536_13 + 1),a
	mov	((_main_table_65536_13 + 0x0002) + 0),#0xfd
;	1-genFromRTrack replaced	mov	((_main_table_65536_13 + 0x0002) + 1),#0x00
	mov	((_main_table_65536_13 + 0x0002) + 1),a
	mov	((_main_table_65536_13 + 0x0004) + 0),#0xfb
;	1-genFromRTrack replaced	mov	((_main_table_65536_13 + 0x0004) + 1),#0x00
	mov	((_main_table_65536_13 + 0x0004) + 1),a
	mov	((_main_table_65536_13 + 0x0006) + 0),#0xf7
;	1-genFromRTrack replaced	mov	((_main_table_65536_13 + 0x0006) + 1),#0x00
	mov	((_main_table_65536_13 + 0x0006) + 1),a
;	main.c:54: P0 = 0b00001111;
	mov	_P0,#0x0f
;	main.c:55: while (1) {
00107$:
;	main.c:56: P0     =count^0b11111111;
	mov	a,#0xff
	xrl	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	_P0,r6
;	main.c:57: count *=2; //shift
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
;	main.c:58: short key = keyPressed(row);
	mov	dpl,_main_row_65536_13
	mov	dph,(_main_row_65536_13 + 1)
	push	ar3
	push	ar2
	lcall	_keyPressed
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
;	main.c:59: if (key != previous && key != -1) {	//有按且不等於上一按 => 處理debounce
	mov	a,r6
	cjne	a,_main_previous_65536_13,00127$
	mov	a,r7
	cjne	a,(_main_previous_65536_13 + 1),00127$
	sjmp	00102$
00127$:
	cjne	r6,#0xff,00128$
	cjne	r7,#0xff,00128$
	sjmp	00102$
00128$:
;	main.c:60: previous = key;
	mov	_main_previous_65536_13,r6
	mov	(_main_previous_65536_13 + 1),r7
;	main.c:61: num[0] =num[1];
	mov	r4,((_main_num_65536_13 + 0x0002) + 0)
	mov	r5,((_main_num_65536_13 + 0x0002) + 1)
	mov	(_main_num_65536_13 + 0),r4
	mov	(_main_num_65536_13 + 1),r5
;	main.c:62: num[1] =num[2];
	mov	r4,((_main_num_65536_13 + 0x0004) + 0)
	mov	r5,((_main_num_65536_13 + 0x0004) + 1)
	mov	((_main_num_65536_13 + 0x0002) + 0),r4
	mov	((_main_num_65536_13 + 0x0002) + 1),r5
;	main.c:63: num[2] =num[3];			
	mov	r4,((_main_num_65536_13 + 0x0006) + 0)
	mov	r5,((_main_num_65536_13 + 0x0006) + 1)
	mov	((_main_num_65536_13 + 0x0004) + 0),r4
	mov	((_main_num_65536_13 + 0x0004) + 1),r5
;	main.c:64: num[3] = key;	//往前推
	mov	((_main_num_65536_13 + 0x0006) + 0),r6
	mov	((_main_num_65536_13 + 0x0006) + 1),r7
00102$:
;	main.c:67: row++;
	inc	_main_row_65536_13
	clr	a
	cjne	a,_main_row_65536_13,00129$
	inc	(_main_row_65536_13 + 1)
00129$:
;	main.c:68: if (count == 0x10) {	//用count從上往下掃 
	cjne	r2,#0x10,00105$
	cjne	r3,#0x00,00105$
;	main.c:69: count = 1;
	mov	r2,#0x01
;	main.c:70: row   = 0;
	clr	a
	mov	r3,a
	mov	_main_row_65536_13,a
	mov	(_main_row_65536_13 + 1),a
;	main.c:71: P1 = 0b11111111;
	mov	_P1,#0xff
00105$:
;	main.c:73: display(table, alpha, num);
	mov	_display_PARM_2,#_main_alpha_65536_13
	mov	(_display_PARM_2 + 1),#0x00
	mov	(_display_PARM_2 + 2),#0x40
	mov	_display_PARM_3,#_main_num_65536_13
	mov	(_display_PARM_3 + 1),#0x00
	mov	(_display_PARM_3 + 2),#0x40
	mov	dptr,#_main_table_65536_13
	mov	b,#0x40
	push	ar3
	push	ar2
	lcall	_display
	pop	ar2
	pop	ar3
;	main.c:76: }
	ljmp	00107$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)