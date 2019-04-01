;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module Lab3_main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
	.globl _row
	.globl _num
	.globl _table
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
_table::
	.ds 8
_num::
	.ds 8
_row::
	.ds 2
_main_count_65537_7:
	.ds 2
_main_previous_65537_7:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;	Lab3-main.c:5: short table[] = {0x70, 0xb0, 0xd0, 0xe0};
	mov	(_table + 0),#0x70
	mov	(_table + 1),#0x00
	mov	((_table + 0x0002) + 0),#0xb0
	mov	((_table + 0x0002) + 1),#0x00
	mov	((_table + 0x0004) + 0),#0xd0
	mov	((_table + 0x0004) + 1),#0x00
	mov	((_table + 0x0006) + 0),#0xe0
	mov	((_table + 0x0006) + 1),#0x00
;	Lab3-main.c:6: short num[4] = {15, 15, 15, 15};
	mov	(_num + 0),#0x0f
	mov	(_num + 1),#0x00
	mov	((_num + 0x0002) + 0),#0x0f
	mov	((_num + 0x0002) + 1),#0x00
	mov	((_num + 0x0004) + 0),#0x0f
	mov	((_num + 0x0004) + 1),#0x00
	mov	((_num + 0x0006) + 0),#0x0f
	mov	((_num + 0x0006) + 1),#0x00
;	Lab3-main.c:7: short row   = 0;
	clr	a
	mov	_row,a
	mov	(_row + 1),a
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
;c                         Allocated to registers r6 r7 
;col                       Allocated to registers r4 r5 
;magic                     Allocated to registers r0 r1 
;------------------------------------------------------------
;	Lab3-main.c:8: short keyPressed() {
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
;	Lab3-main.c:9: if((P2 & 0b11110000) != 0b11110000){
	mov	r6,_P2
	anl	ar6,#0xf0
	mov	r7,#0x00
	cjne	r6,#0xf0,00127$
	cjne	r7,#0x00,00127$
	sjmp	00105$
00127$:
;	Lab3-main.c:10: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
	mov	r6,#0x01
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	Lab3-main.c:11: `			short magic = ((P2 >> 4) ^ 0b11111111) & 0b00001111;
	mov	a,_P2
	swap	a
	anl	a,#0x0f
	mov	r0,a
	xrl	ar0,#0xff
	anl	ar0,#0x0f
	mov	r1,#0x00
;	Lab3-main.c:12: if (magic == c) {
	mov	a,r0
	cjne	a,ar6,00108$
	mov	a,r1
	cjne	a,ar7,00108$
;	Lab3-main.c:13: return col * 4 + row;
	mov	a,r4
	add	a,r4
	mov	r0,a
	mov	a,r5
	rlc	a
	mov	r1,a
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,_row
	add	a,r0
	mov	dpl,a
	mov	a,(_row + 1)
	addc	a,r1
	mov	dph,a
	ret
00108$:
;	Lab3-main.c:10: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00131$
	inc	r3
00131$:
	mov	ar4,r2
	mov	ar5,r3
	sjmp	00107$
00105$:
;	Lab3-main.c:17: return -1;
	mov	dptr,#0xffff
;	Lab3-main.c:18: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;count                     Allocated with name '_main_count_65537_7'
;number                    Allocated to registers 
;light_index               Allocated to registers 
;previous                  Allocated with name '_main_previous_65537_7'
;key                       Allocated to registers r2 r3 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	Lab3-main.c:20: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Lab3-main.c:22: P2=0b11111110;
	mov	_P2,#0xfe
;	Lab3-main.c:23: short count = 1;
	mov	_main_count_65537_7,#0x01
	mov	(_main_count_65537_7 + 1),#0x00
;	Lab3-main.c:26: short previous = -1;
	mov	_main_previous_65537_7,#0xff
	mov	(_main_previous_65537_7 + 1),#0xff
;	Lab3-main.c:30: while (1) {
00109$:
;	Lab3-main.c:32: P2    =count^0b11111111;
	mov	a,#0xff
	xrl	a,_main_count_65537_7
	mov	r2,a
	mov	_P2,r2
;	Lab3-main.c:33: count *=2;
	mov	a,_main_count_65537_7
	add	a,_main_count_65537_7
	mov	_main_count_65537_7,a
	mov	a,(_main_count_65537_7 + 1)
	rlc	a
	mov	(_main_count_65537_7 + 1),a
;	Lab3-main.c:35: short key = keyPressed();
	lcall	_keyPressed
	mov	r2,dpl
	mov	r3,dph
;	Lab3-main.c:36: if (key != -1 && key != previous) {
	cjne	r2,#0xff,00152$
	cjne	r3,#0xff,00152$
	sjmp	00102$
00152$:
	mov	a,r2
	cjne	a,_main_previous_65537_7,00153$
	mov	a,r3
	cjne	a,(_main_previous_65537_7 + 1),00153$
	sjmp	00102$
00153$:
;	Lab3-main.c:38: previous = key;
	mov	_main_previous_65537_7,r2
	mov	(_main_previous_65537_7 + 1),r3
;	Lab3-main.c:40: num[0] =num[1];
	mov	r4,((_num + 0x0002) + 0)
	mov	r5,((_num + 0x0002) + 1)
	mov	(_num + 0),r4
	mov	(_num + 1),r5
;	Lab3-main.c:41: num[1] =num[2];
	mov	r4,((_num + 0x0004) + 0)
	mov	r5,((_num + 0x0004) + 1)
	mov	((_num + 0x0002) + 0),r4
	mov	((_num + 0x0002) + 1),r5
;	Lab3-main.c:42: num[2] =num[3];			
	mov	r4,((_num + 0x0006) + 0)
	mov	r5,((_num + 0x0006) + 1)
	mov	((_num + 0x0004) + 0),r4
	mov	((_num + 0x0004) + 1),r5
;	Lab3-main.c:43: num[3] = key;
	mov	((_num + 0x0006) + 0),r2
	mov	((_num + 0x0006) + 1),r3
00102$:
;	Lab3-main.c:47: row++;
	inc	_row
	clr	a
	cjne	a,_row,00154$
	inc	(_row + 1)
00154$:
;	Lab3-main.c:48: if (count == 0x10) {
	mov	a,#0x10
	cjne	a,_main_count_65537_7,00155$
	clr	a
	cjne	a,(_main_count_65537_7 + 1),00155$
	sjmp	00156$
00155$:
	sjmp	00126$
00156$:
;	Lab3-main.c:49: count = 1;
	mov	_main_count_65537_7,#0x01
;	Lab3-main.c:50: row   = 0;
	clr	a
	mov	(_main_count_65537_7 + 1),a
	mov	_row,a
	mov	(_row + 1),a
;	Lab3-main.c:53: for(short i = 0; i < 4; i++) {
00126$:
	mov	r4,#0x00
	mov	r5,#0x00
00115$:
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	Lab3-main.c:54: P1  = table[i] + num[i];
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	a,r2
	add	a,#_table
	mov	r1,a
	mov	ar7,@r1
	mov	a,r2
	add	a,#_num
	mov	r1,a
	mov	a,@r1
	add	a,r7
	mov	_P1,a
;	Lab3-main.c:55: for(int j=0; j<1000; j++){}
	mov	r6,#0x00
	mov	r7,#0x00
00112$:
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00116$
	inc	r6
	cjne	r6,#0x00,00112$
	inc	r7
	sjmp	00112$
00116$:
;	Lab3-main.c:53: for(short i = 0; i < 4; i++) {
	inc	r4
	cjne	r4,#0x00,00115$
	inc	r5
;	Lab3-main.c:62: }
	sjmp	00115$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
