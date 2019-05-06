;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0
	.globl _main
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
	.globl _direct
	.globl _step
	.globl _sw
	.globl _times
	.globl _count
	.globl _AAA
	.globl _Ans
	.globl _view
	.globl _GetKey
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Ans::
	.ds 6
_AAA::
	.ds 2
_count::
	.ds 2
_times::
	.ds 2
_sw::
	.ds 2
_step::
	.ds 1
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
_direct::
	.ds 1
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
	ljmp	_timer0
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
;	main.c:3: unsigned Ans[3] = {0, 0, 0};
	clr	a
	mov	(_Ans + 0),a
	mov	(_Ans + 1),a
	mov	((_Ans + 0x0002) + 0),a
	mov	((_Ans + 0x0002) + 1),a
	mov	((_Ans + 0x0004) + 0),a
	mov	((_Ans + 0x0004) + 1),a
;	main.c:4: int AAA=60536;
	mov	_AAA,#0x78
	mov	(_AAA + 1),#0xec
;	main.c:5: int count = 800;
	mov	_count,#0x20
	mov	(_count + 1),#0x03
;	main.c:6: unsigned times = 0;
	mov	_times,a
	mov	(_times + 1),a
;	main.c:7: unsigned sw = 1;
	mov	_sw,#0x01
;	1-genFromRTrack replaced	mov	(_sw + 1),#0x00
	mov	(_sw + 1),a
;	main.c:8: unsigned char step=0x01; 
	mov	_step,#0x01
;	main.c:9: __bit direct = 0;
;	assignBit
	clr	_direct
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;P                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:14: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:16: IE = 0x82;
	mov	_IE,#0x82
;	main.c:17: TMOD = 0x11;
	mov	_TMOD,#0x11
;	main.c:19: TH0 = AAA >> 8;
	mov	_TH0,(_AAA + 1)
;	main.c:20: TL0 = AAA & 0xff;
	mov	_TL0,_AAA
;	main.c:21: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:24: while (1)
00112$:
;	main.c:26: int P = GetKey();
	lcall	_GetKey
	mov	r6,dpl
	mov	r7,dph
;	main.c:27: if (P != -1)
	cjne	r6,#0xff,00136$
	cjne	r7,#0xff,00136$
	ljmp	00110$
00136$:
;	main.c:28: if (P < 10)
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	main.c:30: Ans[0] = Ans[1];
	mov	r4,((_Ans + 0x0002) + 0)
	mov	r5,((_Ans + 0x0002) + 1)
	mov	(_Ans + 0),r4
	mov	(_Ans + 1),r5
;	main.c:31: Ans[1] = Ans[2];
	mov	r4,((_Ans + 0x0004) + 0)
	mov	r5,((_Ans + 0x0004) + 1)
	mov	((_Ans + 0x0002) + 0),r4
	mov	((_Ans + 0x0002) + 1),r5
;	main.c:32: Ans[2] = P;
	mov	((_Ans + 0x0004) + 0),r6
	mov	((_Ans + 0x0004) + 1),r7
	ljmp	00110$
00107$:
;	main.c:34: else if (P == 10)
	cjne	r6,#0x0a,00104$
	cjne	r7,#0x00,00104$
;	main.c:37: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:38: direct = 0;
;	assignBit
	clr	_direct
;	main.c:39: count = (Ans[0] * 100 + Ans[1] * 10 + Ans[2]) * 5 / 9;
	mov	__mulint_PARM_2,(_Ans + 0)
	mov	(__mulint_PARM_2 + 1),(_Ans + 1)
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	__mulint_PARM_2,((_Ans + 0x0002) + 0)
	mov	(__mulint_PARM_2 + 1),((_Ans + 0x0002) + 1)
	mov	dptr,#0x000a
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,(_Ans + 0x0004)
	add	a,r4
	mov	__mulint_PARM_2,a
	mov	a,((_Ans + 0x0004) + 1)
	addc	a,r5
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	__divuint_PARM_2,#0x09
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	_count,dpl
	mov	(_count + 1),dph
;	main.c:42: Ans[0] = 0;
	clr	a
	mov	(_Ans + 0),a
	mov	(_Ans + 1),a
;	main.c:43: Ans[1] = 0;
	mov	((_Ans + 0x0002) + 0),a
	mov	((_Ans + 0x0002) + 1),a
;	main.c:44: Ans[2] = 0;
	mov	((_Ans + 0x0004) + 0),a
	mov	((_Ans + 0x0004) + 1),a
	sjmp	00110$
00104$:
;	main.c:46: else if (P == 11)
	cjne	r6,#0x0b,00110$
	cjne	r7,#0x00,00110$
;	main.c:49: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:50: direct = 1;
;	assignBit
	setb	_direct
;	main.c:51: count = (Ans[0] * 100 + Ans[1] * 10 + Ans[2]) * 5 / 9;
	mov	__mulint_PARM_2,(_Ans + 0)
	mov	(__mulint_PARM_2 + 1),(_Ans + 1)
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	__mulint_PARM_2,((_Ans + 0x0002) + 0)
	mov	(__mulint_PARM_2 + 1),((_Ans + 0x0002) + 1)
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	a,(_Ans + 0x0004)
	add	a,r6
	mov	__mulint_PARM_2,a
	mov	a,((_Ans + 0x0004) + 1)
	addc	a,r7
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	__divuint_PARM_2,#0x09
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	_count,dpl
	mov	(_count + 1),dph
;	main.c:55: Ans[0] = 0;
	clr	a
	mov	(_Ans + 0),a
	mov	(_Ans + 1),a
;	main.c:56: Ans[1] = 0;
	mov	((_Ans + 0x0002) + 0),a
	mov	((_Ans + 0x0002) + 1),a
;	main.c:57: Ans[2] = 0;
	mov	((_Ans + 0x0004) + 0),a
	mov	((_Ans + 0x0004) + 1),a
00110$:
;	main.c:60: view();
	lcall	_view
;	main.c:62: }
	ljmp	00112$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;	main.c:64: void timer0 (void) __interrupt (1) __using (1)
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	b
	push	psw
	mov	psw,#0x08
;	main.c:67: TH0 = AAA >> 8;
	mov	_TH0,(_AAA + 1)
;	main.c:68: TL0 = AAA & 0xff;
	mov	_TL0,_AAA
;	main.c:70: if(direct==1)
	jnb	_direct,00106$
;	main.c:72: step>>=1; 
	mov	a,_step
	clr	c
	rrc	a
;	main.c:73: if(step==0x00)
	mov	_step,a
	jnz	00102$
;	main.c:74: step=0x08; 
	mov	_step,#0x08
00102$:
;	main.c:76: P0&=0xf0; 
	anl	_P0,#0xf0
;	main.c:77: P0|=step; 
	mov	a,_step
	orl	_P0,a
	sjmp	00107$
00106$:
;	main.c:81: step<<=1; 
	mov	a,_step
	mov	r7,a
	add	a,acc
	mov	_step,a
;	main.c:82: if(step==0x10) 
	mov	a,#0x10
	cjne	a,_step,00104$
;	main.c:83: step=0x01; 
	mov	_step,#0x01
00104$:
;	main.c:85: P0&=0xf0; 
	anl	_P0,#0xf0
;	main.c:86: P0|=step;
	mov	a,_step
	orl	_P0,a
00107$:
;	main.c:89: if (--count<=0)
	dec	_count
	mov	a,#0xff
	cjne	a,_count,00132$
	dec	(_count + 1)
00132$:
	clr	c
	clr	a
	subb	a,_count
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_count + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	main.c:90: TR0 = 0;
;	assignBit
	clr	_TR0
00110$:
;	main.c:91: }
	pop	psw
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'view'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:93: void view()
;	-----------------------------------------
;	 function view
;	-----------------------------------------
_view:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:97: for (i=0; i<55; i++);
	mov	r6,#0x37
	mov	r7,#0x00
00108$:
	dec	r6
	cjne	r6,#0xff,00148$
	dec	r7
00148$:
	mov	a,r6
	orl	a,r7
	jnz	00108$
;	main.c:98: P1 = Ans[0] + 0x70;
	mov	r7,_Ans
	mov	a,#0x70
	add	a,r7
	mov	_P1,a
;	main.c:99: for (i=0; i<55; i++);
	mov	r6,#0x37
	mov	r7,#0x00
00111$:
	dec	r6
	cjne	r6,#0xff,00150$
	dec	r7
00150$:
	mov	a,r6
	orl	a,r7
	jnz	00111$
;	main.c:100: P1 = Ans[1] + 0xb0;
	mov	r7,(_Ans + 0x0002)
	mov	a,#0xb0
	add	a,r7
	mov	_P1,a
;	main.c:101: for (i=0; i<55; i++);
	mov	r6,#0x37
	mov	r7,#0x00
00114$:
	dec	r6
	cjne	r6,#0xff,00152$
	dec	r7
00152$:
	mov	a,r6
	orl	a,r7
	jnz	00114$
;	main.c:102: P1 = Ans[2] + 0xd0;
	mov	r7,(_Ans + 0x0004)
	mov	a,#0xd0
	add	a,r7
	mov	_P1,a
;	main.c:104: times++;
	inc	_times
	clr	a
	cjne	a,_times,00154$
	inc	(_times + 1)
00154$:
;	main.c:105: if (times > 792)
	clr	c
	mov	a,#0x18
	subb	a,_times
	mov	a,#0x03
	subb	a,(_times + 1)
	jnc	00115$
;	main.c:106: sw = 1;
	mov	_sw,#0x01
	mov	(_sw + 1),#0x00
00115$:
;	main.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetKey'
;------------------------------------------------------------
;p                         Allocated to registers r6 r7 
;q                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:108: int GetKey()
;	-----------------------------------------
;	 function GetKey
;	-----------------------------------------
_GetKey:
;	main.c:111: for (p=0; p<4; p++)
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00111$:
;	main.c:113: P2 = ((~(1<<p))<<4) | 0xf;
	mov	ar3,r4
	mov	b,r3
	inc	b
	mov	a,#0x01
	sjmp	00142$
00140$:
	add	a,acc
00142$:
	djnz	b,00140$
	cpl	a
	swap	a
	anl	a,#0xf0
	mov	r3,a
	rlc	a
	subb	a,acc
	orl	ar3,#0x0f
	mov	_P2,r3
;	main.c:114: if ( ((P2 & 0xf) != 0xf) && (sw == 1) )
	mov	r2,_P2
	anl	ar2,#0x0f
	mov	r3,#0x00
	cjne	r2,#0x0f,00143$
	cjne	r3,#0x00,00143$
	ljmp	00112$
00143$:
	mov	a,#0x01
	cjne	a,_sw,00144$
	dec	a
	cjne	a,(_sw + 1),00144$
	sjmp	00145$
00144$:
	ljmp	00112$
00145$:
;	main.c:116: for (q=0; q<4; q++)
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
;	main.c:117: if (P2 % 2 == 1)
	mov	r0,_P2
	mov	r1,#0x00
	mov	__modsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r1
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	cjne	r0,#0x01,00104$
	cjne	r1,#0x00,00104$
;	main.c:118: P2 /= 2;
	mov	r0,_P2
	mov	r1,#0x00
	mov	__divsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r1
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	_P2,r0
;	main.c:116: for (q=0; q<4; q++)
	inc	r2
	cjne	r2,#0x00,00148$
	inc	r3
00148$:
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	subb	a,#0x00
	jc	00109$
00104$:
;	main.c:121: sw = 0;
	clr	a
	mov	_sw,a
	mov	(_sw + 1),a
;	main.c:122: times = 0;
	mov	_times,a
	mov	(_times + 1),a
;	main.c:123: return 4*p+q;	//1e?U?e?Jao-E(10?i|i)
	mov	a,r6
	add	a,r6
	mov	r0,a
	mov	a,r7
	rlc	a
	mov	r1,a
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	add	a,r0
	mov	dpl,a
	mov	a,r3
	addc	a,r1
	mov	dph,a
	ret
00112$:
;	main.c:111: for (p=0; p<4; p++)
	inc	r4
	cjne	r4,#0x00,00150$
	inc	r5
00150$:
	mov	ar6,r4
	mov	ar7,r5
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	subb	a,#0x00
	jnc	00151$
	ljmp	00111$
00151$:
;	main.c:126: return -1;
	mov	dptr,#0xffff
;	main.c:127: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
