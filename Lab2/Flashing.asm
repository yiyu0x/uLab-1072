;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module Flashing
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _delay
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
_main_table_65536_5:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;time                      Allocated to registers 
;d1                        Allocated to registers r4 r5 
;------------------------------------------------------------
;	Flashing.c:5: void delay(short time) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
;	Flashing.c:7: for (d1 = 0; d1 < time*100; d1 ++) {
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	Flashing.c:9: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;table                     Allocated with name '_main_table_65536_5'
;index                     Allocated to registers r7 
;flag_plus                 Allocated to registers r6 
;flag_minus                Allocated to registers r5 
;------------------------------------------------------------
;	Flashing.c:10: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Flashing.c:11: short table[] = {0x75, 0xb0};
	mov	(_main_table_65536_5 + 0),#0x75
	mov	(_main_table_65536_5 + 1),#0x00
	mov	((_main_table_65536_5 + 0x0002) + 0),#0xb0
	mov	((_main_table_65536_5 + 0x0002) + 1),#0x00
;	Flashing.c:12: bool index = 0;
	mov	r7,#0x00
;	Flashing.c:13: bool flag_plus = 1;
	mov	r6,#0x01
;	Flashing.c:14: bool flag_minus = 1;
	mov	r5,#0x01
;	Flashing.c:15: while (1) {
00124$:
;	Flashing.c:17: index = !index;
	mov	a,r7
	cjne	a,#0x01,00172$
00172$:
	clr	a
	rlc	a
;	Flashing.c:18: P1 = table[index];
	mov	r7,a
	mov	r4,a
	mov	a,r4
	add	a,r4
	add	a,#_main_table_65536_5
	mov	r1,a
	mov	_P1,@r1
;	Flashing.c:19: delay(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	Flashing.c:21: if (P0_0 == 0 && flag_minus) {
	jb	_P0_0,00109$
	mov	a,r5
	jz	00109$
;	Flashing.c:22: if (table[0] == 0x70 && table[1] == 0xb0) continue;
	mov	a,#0x70
	cjne	a,_main_table_65536_5,00175$
	clr	a
	cjne	a,(_main_table_65536_5 + 1),00175$
	sjmp	00176$
00175$:
	sjmp	00102$
00176$:
	mov	a,#0xb0
	cjne	a,(_main_table_65536_5 + 0x0002),00177$
	clr	a
	cjne	a,((_main_table_65536_5 + 0x0002) + 1),00177$
	sjmp	00124$
00177$:
00102$:
;	Flashing.c:23: flag_minus = 0;
	mov	r5,#0x00
;	Flashing.c:24: table[1] -= 1;
	mov	a,(_main_table_65536_5 + 0x0002)
	add	a,#0xff
	mov	r3,a
	mov	a,((_main_table_65536_5 + 0x0002) + 1)
	addc	a,#0xff
	mov	r4,a
	mov	((_main_table_65536_5 + 0x0002) + 0),r3
	mov	((_main_table_65536_5 + 0x0002) + 1),r4
;	Flashing.c:25: if (table[1] == 0xaf) {
	cjne	r3,#0xaf,00110$
	cjne	r4,#0x00,00110$
;	Flashing.c:26: table[1] = 0xb9;
	mov	((_main_table_65536_5 + 0x0002) + 0),#0xb9
	mov	((_main_table_65536_5 + 0x0002) + 1),#0x00
;	Flashing.c:27: table[0]--;
	mov	r3,(_main_table_65536_5 + 0)
	mov	r4,(_main_table_65536_5 + 1)
	dec	r3
	cjne	r3,#0xff,00180$
	dec	r4
00180$:
	mov	(_main_table_65536_5 + 0),r3
	mov	(_main_table_65536_5 + 1),r4
	sjmp	00110$
00109$:
;	Flashing.c:30: else if (P0_0 == 1) flag_minus = 1;
	jnb	_P0_0,00110$
	mov	r5,#0x01
00110$:
;	Flashing.c:32: if (P0_1 == 0 && flag_plus) {
	jb	_P0_1,00120$
	mov	a,r6
	jz	00120$
;	Flashing.c:33: if (table[0] == 0x79 && table[1] == 0xb9) continue;
	mov	a,#0x79
	cjne	a,_main_table_65536_5,00184$
	clr	a
	cjne	a,(_main_table_65536_5 + 1),00184$
	sjmp	00185$
00184$:
	sjmp	00113$
00185$:
	mov	a,#0xb9
	cjne	a,(_main_table_65536_5 + 0x0002),00186$
	clr	a
	cjne	a,((_main_table_65536_5 + 0x0002) + 1),00186$
	ljmp	00124$
00186$:
00113$:
;	Flashing.c:34: flag_plus = 0;
	mov	r6,#0x00
;	Flashing.c:35: table[1] += 1;
	mov	a,#0x01
	add	a,(_main_table_65536_5 + 0x0002)
	mov	r3,a
	clr	a
	addc	a,((_main_table_65536_5 + 0x0002) + 1)
	mov	r4,a
	mov	((_main_table_65536_5 + 0x0002) + 0),r3
	mov	((_main_table_65536_5 + 0x0002) + 1),r4
;	Flashing.c:36: if (table[1] == 0xba) {
	cjne	r3,#0xba,00187$
	cjne	r4,#0x00,00187$
	sjmp	00188$
00187$:
	ljmp	00124$
00188$:
;	Flashing.c:37: table[1] = 0xb0;
	mov	((_main_table_65536_5 + 0x0002) + 0),#0xb0
	mov	((_main_table_65536_5 + 0x0002) + 1),#0x00
;	Flashing.c:38: table[0]++;
	mov	r3,(_main_table_65536_5 + 0)
	mov	r4,(_main_table_65536_5 + 1)
	inc	r3
	cjne	r3,#0x00,00189$
	inc	r4
00189$:
	mov	(_main_table_65536_5 + 0),r3
	mov	(_main_table_65536_5 + 1),r4
	ljmp	00124$
00120$:
;	Flashing.c:41: else if (P0_1 == 1) flag_plus = 1;
	jb	_P0_1,00190$
	ljmp	00124$
00190$:
	mov	r6,#0x01
;	Flashing.c:46: }
	ljmp	00124$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
