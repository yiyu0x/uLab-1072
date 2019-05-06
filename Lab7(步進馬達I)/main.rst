                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer0
                                     12 	.globl _main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _direct
                                    110 	.globl _step
                                    111 	.globl _sw
                                    112 	.globl _times
                                    113 	.globl _count
                                    114 	.globl _AAA
                                    115 	.globl _Ans
                                    116 	.globl _view
                                    117 	.globl _GetKey
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000010                        235 _Ans::
      000010                        236 	.ds 6
      000016                        237 _AAA::
      000016                        238 	.ds 2
      000018                        239 _count::
      000018                        240 	.ds 2
      00001A                        241 _times::
      00001A                        242 	.ds 2
      00001C                        243 _sw::
      00001C                        244 	.ds 2
      00001E                        245 _step::
      00001E                        246 	.ds 1
                                    247 ;--------------------------------------------------------
                                    248 ; overlayable items in internal ram 
                                    249 ;--------------------------------------------------------
                                    250 	.area	OSEG    (OVR,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; Stack segment in internal ram 
                                    253 ;--------------------------------------------------------
                                    254 	.area	SSEG
      000023                        255 __start__stack:
      000023                        256 	.ds	1
                                    257 
                                    258 ;--------------------------------------------------------
                                    259 ; indirectly addressable internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area ISEG    (DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute internal ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area IABS    (ABS,DATA)
                                    266 	.area IABS    (ABS,DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; bit data
                                    269 ;--------------------------------------------------------
                                    270 	.area BSEG    (BIT)
      000000                        271 _direct::
      000000                        272 	.ds 1
                                    273 ;--------------------------------------------------------
                                    274 ; paged external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area PSEG    (PAG,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XSEG    (XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XABS    (ABS,XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; external initialized ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XISEG   (XDATA)
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT0 (CODE)
                                    291 	.area GSINIT1 (CODE)
                                    292 	.area GSINIT2 (CODE)
                                    293 	.area GSINIT3 (CODE)
                                    294 	.area GSINIT4 (CODE)
                                    295 	.area GSINIT5 (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area CSEG    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; interrupt vector 
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
      000000                        303 __interrupt_vect:
      000000 02 00 11         [24]  304 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  305 	reti
      000004                        306 	.ds	7
      00000B 02 01 A4         [24]  307 	ljmp	_timer0
                                    308 ;--------------------------------------------------------
                                    309 ; global & static initialisations
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.globl __sdcc_gsinit_startup
                                    316 	.globl __sdcc_program_startup
                                    317 	.globl __start__stack
                                    318 	.globl __mcs51_genXINIT
                                    319 	.globl __mcs51_genXRAMCLEAR
                                    320 	.globl __mcs51_genRAMCLEAR
                                    321 ;	main.c:3: unsigned Ans[3] = {0, 0, 0};
      00006A E4               [12]  322 	clr	a
      00006B F5 10            [12]  323 	mov	(_Ans + 0),a
      00006D F5 11            [12]  324 	mov	(_Ans + 1),a
      00006F F5 12            [12]  325 	mov	((_Ans + 0x0002) + 0),a
      000071 F5 13            [12]  326 	mov	((_Ans + 0x0002) + 1),a
      000073 F5 14            [12]  327 	mov	((_Ans + 0x0004) + 0),a
      000075 F5 15            [12]  328 	mov	((_Ans + 0x0004) + 1),a
                                    329 ;	main.c:4: int AAA=60536;
      000077 75 16 78         [24]  330 	mov	_AAA,#0x78
      00007A 75 17 EC         [24]  331 	mov	(_AAA + 1),#0xec
                                    332 ;	main.c:5: int count = 800;
      00007D 75 18 20         [24]  333 	mov	_count,#0x20
      000080 75 19 03         [24]  334 	mov	(_count + 1),#0x03
                                    335 ;	main.c:6: unsigned times = 0;
      000083 F5 1A            [12]  336 	mov	_times,a
      000085 F5 1B            [12]  337 	mov	(_times + 1),a
                                    338 ;	main.c:7: unsigned sw = 1;
      000087 75 1C 01         [24]  339 	mov	_sw,#0x01
                                    340 ;	1-genFromRTrack replaced	mov	(_sw + 1),#0x00
      00008A F5 1D            [12]  341 	mov	(_sw + 1),a
                                    342 ;	main.c:8: unsigned char step=0x01; 
      00008C 75 1E 01         [24]  343 	mov	_step,#0x01
                                    344 ;	main.c:9: __bit direct = 0;
                                    345 ;	assignBit
      00008F C2 00            [12]  346 	clr	_direct
                                    347 	.area GSFINAL (CODE)
      000091 02 00 0E         [24]  348 	ljmp	__sdcc_program_startup
                                    349 ;--------------------------------------------------------
                                    350 ; Home
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
                                    353 	.area HOME    (CODE)
      00000E                        354 __sdcc_program_startup:
      00000E 02 00 94         [24]  355 	ljmp	_main
                                    356 ;	return from main will return to caller
                                    357 ;--------------------------------------------------------
                                    358 ; code
                                    359 ;--------------------------------------------------------
                                    360 	.area CSEG    (CODE)
                                    361 ;------------------------------------------------------------
                                    362 ;Allocation info for local variables in function 'main'
                                    363 ;------------------------------------------------------------
                                    364 ;P                         Allocated to registers r6 r7 
                                    365 ;------------------------------------------------------------
                                    366 ;	main.c:14: void main()
                                    367 ;	-----------------------------------------
                                    368 ;	 function main
                                    369 ;	-----------------------------------------
      000094                        370 _main:
                           000007   371 	ar7 = 0x07
                           000006   372 	ar6 = 0x06
                           000005   373 	ar5 = 0x05
                           000004   374 	ar4 = 0x04
                           000003   375 	ar3 = 0x03
                           000002   376 	ar2 = 0x02
                           000001   377 	ar1 = 0x01
                           000000   378 	ar0 = 0x00
                                    379 ;	main.c:16: IE = 0x82;
      000094 75 A8 82         [24]  380 	mov	_IE,#0x82
                                    381 ;	main.c:17: TMOD = 0x11;
      000097 75 89 11         [24]  382 	mov	_TMOD,#0x11
                                    383 ;	main.c:19: TH0 = AAA >> 8;
      00009A 85 17 8C         [24]  384 	mov	_TH0,(_AAA + 1)
                                    385 ;	main.c:20: TL0 = AAA & 0xff;
      00009D 85 16 8A         [24]  386 	mov	_TL0,_AAA
                                    387 ;	main.c:21: TR0 = 0;
                                    388 ;	assignBit
      0000A0 C2 8C            [12]  389 	clr	_TR0
                                    390 ;	main.c:24: while (1)
      0000A2                        391 00112$:
                                    392 ;	main.c:26: int P = GetKey();
      0000A2 12 02 58         [24]  393 	lcall	_GetKey
      0000A5 AE 82            [24]  394 	mov	r6,dpl
      0000A7 AF 83            [24]  395 	mov	r7,dph
                                    396 ;	main.c:27: if (P != -1)
      0000A9 BE FF 06         [24]  397 	cjne	r6,#0xff,00136$
      0000AC BF FF 03         [24]  398 	cjne	r7,#0xff,00136$
      0000AF 02 01 9E         [24]  399 	ljmp	00110$
      0000B2                        400 00136$:
                                    401 ;	main.c:28: if (P < 10)
      0000B2 C3               [12]  402 	clr	c
      0000B3 EE               [12]  403 	mov	a,r6
      0000B4 94 0A            [12]  404 	subb	a,#0x0a
      0000B6 EF               [12]  405 	mov	a,r7
      0000B7 64 80            [12]  406 	xrl	a,#0x80
      0000B9 94 80            [12]  407 	subb	a,#0x80
      0000BB 50 17            [24]  408 	jnc	00107$
                                    409 ;	main.c:30: Ans[0] = Ans[1];
      0000BD AC 12            [24]  410 	mov	r4,((_Ans + 0x0002) + 0)
      0000BF AD 13            [24]  411 	mov	r5,((_Ans + 0x0002) + 1)
      0000C1 8C 10            [24]  412 	mov	(_Ans + 0),r4
      0000C3 8D 11            [24]  413 	mov	(_Ans + 1),r5
                                    414 ;	main.c:31: Ans[1] = Ans[2];
      0000C5 AC 14            [24]  415 	mov	r4,((_Ans + 0x0004) + 0)
      0000C7 AD 15            [24]  416 	mov	r5,((_Ans + 0x0004) + 1)
      0000C9 8C 12            [24]  417 	mov	((_Ans + 0x0002) + 0),r4
      0000CB 8D 13            [24]  418 	mov	((_Ans + 0x0002) + 1),r5
                                    419 ;	main.c:32: Ans[2] = P;
      0000CD 8E 14            [24]  420 	mov	((_Ans + 0x0004) + 0),r6
      0000CF 8F 15            [24]  421 	mov	((_Ans + 0x0004) + 1),r7
      0000D1 02 01 9E         [24]  422 	ljmp	00110$
      0000D4                        423 00107$:
                                    424 ;	main.c:34: else if (P == 10)
      0000D4 BE 0A 63         [24]  425 	cjne	r6,#0x0a,00104$
      0000D7 BF 00 60         [24]  426 	cjne	r7,#0x00,00104$
                                    427 ;	main.c:37: TR0 = 1;
                                    428 ;	assignBit
      0000DA D2 8C            [12]  429 	setb	_TR0
                                    430 ;	main.c:38: direct = 0;
                                    431 ;	assignBit
      0000DC C2 00            [12]  432 	clr	_direct
                                    433 ;	main.c:39: count = (Ans[0] * 100 + Ans[1] * 10 + Ans[2]) * 5 / 9;
      0000DE 85 10 21         [24]  434 	mov	__mulint_PARM_2,(_Ans + 0)
      0000E1 85 11 22         [24]  435 	mov	(__mulint_PARM_2 + 1),(_Ans + 1)
      0000E4 90 00 64         [24]  436 	mov	dptr,#0x0064
      0000E7 12 03 5C         [24]  437 	lcall	__mulint
      0000EA AC 82            [24]  438 	mov	r4,dpl
      0000EC AD 83            [24]  439 	mov	r5,dph
      0000EE 85 12 21         [24]  440 	mov	__mulint_PARM_2,((_Ans + 0x0002) + 0)
      0000F1 85 13 22         [24]  441 	mov	(__mulint_PARM_2 + 1),((_Ans + 0x0002) + 1)
      0000F4 90 00 0A         [24]  442 	mov	dptr,#0x000a
      0000F7 C0 05            [24]  443 	push	ar5
      0000F9 C0 04            [24]  444 	push	ar4
      0000FB 12 03 5C         [24]  445 	lcall	__mulint
      0000FE AA 82            [24]  446 	mov	r2,dpl
      000100 AB 83            [24]  447 	mov	r3,dph
      000102 D0 04            [24]  448 	pop	ar4
      000104 D0 05            [24]  449 	pop	ar5
      000106 EA               [12]  450 	mov	a,r2
      000107 2C               [12]  451 	add	a,r4
      000108 FC               [12]  452 	mov	r4,a
      000109 EB               [12]  453 	mov	a,r3
      00010A 3D               [12]  454 	addc	a,r5
      00010B FD               [12]  455 	mov	r5,a
      00010C E5 14            [12]  456 	mov	a,(_Ans + 0x0004)
      00010E 2C               [12]  457 	add	a,r4
      00010F F5 21            [12]  458 	mov	__mulint_PARM_2,a
      000111 E5 15            [12]  459 	mov	a,((_Ans + 0x0004) + 1)
      000113 3D               [12]  460 	addc	a,r5
      000114 F5 22            [12]  461 	mov	(__mulint_PARM_2 + 1),a
      000116 90 00 05         [24]  462 	mov	dptr,#0x0005
      000119 12 03 5C         [24]  463 	lcall	__mulint
      00011C 75 21 09         [24]  464 	mov	__divuint_PARM_2,#0x09
      00011F 75 22 00         [24]  465 	mov	(__divuint_PARM_2 + 1),#0x00
      000122 12 03 33         [24]  466 	lcall	__divuint
      000125 85 82 18         [24]  467 	mov	_count,dpl
      000128 85 83 19         [24]  468 	mov	(_count + 1),dph
                                    469 ;	main.c:42: Ans[0] = 0;
      00012B E4               [12]  470 	clr	a
      00012C F5 10            [12]  471 	mov	(_Ans + 0),a
      00012E F5 11            [12]  472 	mov	(_Ans + 1),a
                                    473 ;	main.c:43: Ans[1] = 0;
      000130 F5 12            [12]  474 	mov	((_Ans + 0x0002) + 0),a
      000132 F5 13            [12]  475 	mov	((_Ans + 0x0002) + 1),a
                                    476 ;	main.c:44: Ans[2] = 0;
      000134 F5 14            [12]  477 	mov	((_Ans + 0x0004) + 0),a
      000136 F5 15            [12]  478 	mov	((_Ans + 0x0004) + 1),a
      000138 80 64            [24]  479 	sjmp	00110$
      00013A                        480 00104$:
                                    481 ;	main.c:46: else if (P == 11)
      00013A BE 0B 61         [24]  482 	cjne	r6,#0x0b,00110$
      00013D BF 00 5E         [24]  483 	cjne	r7,#0x00,00110$
                                    484 ;	main.c:49: TR0 = 1;
                                    485 ;	assignBit
      000140 D2 8C            [12]  486 	setb	_TR0
                                    487 ;	main.c:50: direct = 1;
                                    488 ;	assignBit
      000142 D2 00            [12]  489 	setb	_direct
                                    490 ;	main.c:51: count = (Ans[0] * 100 + Ans[1] * 10 + Ans[2]) * 5 / 9;
      000144 85 10 21         [24]  491 	mov	__mulint_PARM_2,(_Ans + 0)
      000147 85 11 22         [24]  492 	mov	(__mulint_PARM_2 + 1),(_Ans + 1)
      00014A 90 00 64         [24]  493 	mov	dptr,#0x0064
      00014D 12 03 5C         [24]  494 	lcall	__mulint
      000150 AE 82            [24]  495 	mov	r6,dpl
      000152 AF 83            [24]  496 	mov	r7,dph
      000154 85 12 21         [24]  497 	mov	__mulint_PARM_2,((_Ans + 0x0002) + 0)
      000157 85 13 22         [24]  498 	mov	(__mulint_PARM_2 + 1),((_Ans + 0x0002) + 1)
      00015A 90 00 0A         [24]  499 	mov	dptr,#0x000a
      00015D C0 07            [24]  500 	push	ar7
      00015F C0 06            [24]  501 	push	ar6
      000161 12 03 5C         [24]  502 	lcall	__mulint
      000164 AC 82            [24]  503 	mov	r4,dpl
      000166 AD 83            [24]  504 	mov	r5,dph
      000168 D0 06            [24]  505 	pop	ar6
      00016A D0 07            [24]  506 	pop	ar7
      00016C EC               [12]  507 	mov	a,r4
      00016D 2E               [12]  508 	add	a,r6
      00016E FE               [12]  509 	mov	r6,a
      00016F ED               [12]  510 	mov	a,r5
      000170 3F               [12]  511 	addc	a,r7
      000171 FF               [12]  512 	mov	r7,a
      000172 E5 14            [12]  513 	mov	a,(_Ans + 0x0004)
      000174 2E               [12]  514 	add	a,r6
      000175 F5 21            [12]  515 	mov	__mulint_PARM_2,a
      000177 E5 15            [12]  516 	mov	a,((_Ans + 0x0004) + 1)
      000179 3F               [12]  517 	addc	a,r7
      00017A F5 22            [12]  518 	mov	(__mulint_PARM_2 + 1),a
      00017C 90 00 05         [24]  519 	mov	dptr,#0x0005
      00017F 12 03 5C         [24]  520 	lcall	__mulint
      000182 75 21 09         [24]  521 	mov	__divuint_PARM_2,#0x09
      000185 75 22 00         [24]  522 	mov	(__divuint_PARM_2 + 1),#0x00
      000188 12 03 33         [24]  523 	lcall	__divuint
      00018B 85 82 18         [24]  524 	mov	_count,dpl
      00018E 85 83 19         [24]  525 	mov	(_count + 1),dph
                                    526 ;	main.c:55: Ans[0] = 0;
      000191 E4               [12]  527 	clr	a
      000192 F5 10            [12]  528 	mov	(_Ans + 0),a
      000194 F5 11            [12]  529 	mov	(_Ans + 1),a
                                    530 ;	main.c:56: Ans[1] = 0;
      000196 F5 12            [12]  531 	mov	((_Ans + 0x0002) + 0),a
      000198 F5 13            [12]  532 	mov	((_Ans + 0x0002) + 1),a
                                    533 ;	main.c:57: Ans[2] = 0;
      00019A F5 14            [12]  534 	mov	((_Ans + 0x0004) + 0),a
      00019C F5 15            [12]  535 	mov	((_Ans + 0x0004) + 1),a
      00019E                        536 00110$:
                                    537 ;	main.c:60: view();
      00019E 12 02 02         [24]  538 	lcall	_view
                                    539 ;	main.c:62: }
      0001A1 02 00 A2         [24]  540 	ljmp	00112$
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'timer0'
                                    543 ;------------------------------------------------------------
                                    544 ;	main.c:64: void timer0 (void) __interrupt (1) __using (1)
                                    545 ;	-----------------------------------------
                                    546 ;	 function timer0
                                    547 ;	-----------------------------------------
      0001A4                        548 _timer0:
                           00000F   549 	ar7 = 0x0f
                           00000E   550 	ar6 = 0x0e
                           00000D   551 	ar5 = 0x0d
                           00000C   552 	ar4 = 0x0c
                           00000B   553 	ar3 = 0x0b
                           00000A   554 	ar2 = 0x0a
                           000009   555 	ar1 = 0x09
                           000008   556 	ar0 = 0x08
      0001A4 C0 E0            [24]  557 	push	acc
      0001A6 C0 F0            [24]  558 	push	b
      0001A8 C0 D0            [24]  559 	push	psw
      0001AA 75 D0 08         [24]  560 	mov	psw,#0x08
                                    561 ;	main.c:67: TH0 = AAA >> 8;
      0001AD 85 17 8C         [24]  562 	mov	_TH0,(_AAA + 1)
                                    563 ;	main.c:68: TL0 = AAA & 0xff;
      0001B0 85 16 8A         [24]  564 	mov	_TL0,_AAA
                                    565 ;	main.c:70: if(direct==1)
      0001B3 30 00 14         [24]  566 	jnb	_direct,00106$
                                    567 ;	main.c:72: step>>=1; 
      0001B6 E5 1E            [12]  568 	mov	a,_step
      0001B8 C3               [12]  569 	clr	c
      0001B9 13               [12]  570 	rrc	a
                                    571 ;	main.c:73: if(step==0x00)
      0001BA F5 1E            [12]  572 	mov	_step,a
      0001BC 70 03            [24]  573 	jnz	00102$
                                    574 ;	main.c:74: step=0x08; 
      0001BE 75 1E 08         [24]  575 	mov	_step,#0x08
      0001C1                        576 00102$:
                                    577 ;	main.c:76: P0&=0xf0; 
      0001C1 53 80 F0         [24]  578 	anl	_P0,#0xf0
                                    579 ;	main.c:77: P0|=step; 
      0001C4 E5 1E            [12]  580 	mov	a,_step
      0001C6 42 80            [12]  581 	orl	_P0,a
      0001C8 80 16            [24]  582 	sjmp	00107$
      0001CA                        583 00106$:
                                    584 ;	main.c:81: step<<=1; 
      0001CA E5 1E            [12]  585 	mov	a,_step
      0001CC FF               [12]  586 	mov	r7,a
      0001CD 25 E0            [12]  587 	add	a,acc
      0001CF F5 1E            [12]  588 	mov	_step,a
                                    589 ;	main.c:82: if(step==0x10) 
      0001D1 74 10            [12]  590 	mov	a,#0x10
      0001D3 B5 1E 03         [24]  591 	cjne	a,_step,00104$
                                    592 ;	main.c:83: step=0x01; 
      0001D6 75 1E 01         [24]  593 	mov	_step,#0x01
      0001D9                        594 00104$:
                                    595 ;	main.c:85: P0&=0xf0; 
      0001D9 53 80 F0         [24]  596 	anl	_P0,#0xf0
                                    597 ;	main.c:86: P0|=step;
      0001DC E5 1E            [12]  598 	mov	a,_step
      0001DE 42 80            [12]  599 	orl	_P0,a
      0001E0                        600 00107$:
                                    601 ;	main.c:89: if (--count<=0)
      0001E0 15 18            [12]  602 	dec	_count
      0001E2 74 FF            [12]  603 	mov	a,#0xff
      0001E4 B5 18 02         [24]  604 	cjne	a,_count,00132$
      0001E7 15 19            [12]  605 	dec	(_count + 1)
      0001E9                        606 00132$:
      0001E9 C3               [12]  607 	clr	c
      0001EA E4               [12]  608 	clr	a
      0001EB 95 18            [12]  609 	subb	a,_count
      0001ED 74 80            [12]  610 	mov	a,#(0x00 ^ 0x80)
      0001EF 85 19 F0         [24]  611 	mov	b,(_count + 1)
      0001F2 63 F0 80         [24]  612 	xrl	b,#0x80
      0001F5 95 F0            [12]  613 	subb	a,b
      0001F7 40 02            [24]  614 	jc	00110$
                                    615 ;	main.c:90: TR0 = 0;
                                    616 ;	assignBit
      0001F9 C2 8C            [12]  617 	clr	_TR0
      0001FB                        618 00110$:
                                    619 ;	main.c:91: }
      0001FB D0 D0            [24]  620 	pop	psw
      0001FD D0 F0            [24]  621 	pop	b
      0001FF D0 E0            [24]  622 	pop	acc
      000201 32               [24]  623 	reti
                                    624 ;	eliminated unneeded push/pop dpl
                                    625 ;	eliminated unneeded push/pop dph
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'view'
                                    628 ;------------------------------------------------------------
                                    629 ;i                         Allocated to registers r6 r7 
                                    630 ;------------------------------------------------------------
                                    631 ;	main.c:93: void view()
                                    632 ;	-----------------------------------------
                                    633 ;	 function view
                                    634 ;	-----------------------------------------
      000202                        635 _view:
                           000007   636 	ar7 = 0x07
                           000006   637 	ar6 = 0x06
                           000005   638 	ar5 = 0x05
                           000004   639 	ar4 = 0x04
                           000003   640 	ar3 = 0x03
                           000002   641 	ar2 = 0x02
                           000001   642 	ar1 = 0x01
                           000000   643 	ar0 = 0x00
                                    644 ;	main.c:97: for (i=0; i<55; i++);
      000202 7E 37            [12]  645 	mov	r6,#0x37
      000204 7F 00            [12]  646 	mov	r7,#0x00
      000206                        647 00108$:
      000206 1E               [12]  648 	dec	r6
      000207 BE FF 01         [24]  649 	cjne	r6,#0xff,00148$
      00020A 1F               [12]  650 	dec	r7
      00020B                        651 00148$:
      00020B EE               [12]  652 	mov	a,r6
      00020C 4F               [12]  653 	orl	a,r7
      00020D 70 F7            [24]  654 	jnz	00108$
                                    655 ;	main.c:98: P1 = Ans[0] + 0x70;
      00020F AF 10            [24]  656 	mov	r7,_Ans
      000211 74 70            [12]  657 	mov	a,#0x70
      000213 2F               [12]  658 	add	a,r7
      000214 F5 90            [12]  659 	mov	_P1,a
                                    660 ;	main.c:99: for (i=0; i<55; i++);
      000216 7E 37            [12]  661 	mov	r6,#0x37
      000218 7F 00            [12]  662 	mov	r7,#0x00
      00021A                        663 00111$:
      00021A 1E               [12]  664 	dec	r6
      00021B BE FF 01         [24]  665 	cjne	r6,#0xff,00150$
      00021E 1F               [12]  666 	dec	r7
      00021F                        667 00150$:
      00021F EE               [12]  668 	mov	a,r6
      000220 4F               [12]  669 	orl	a,r7
      000221 70 F7            [24]  670 	jnz	00111$
                                    671 ;	main.c:100: P1 = Ans[1] + 0xb0;
      000223 AF 12            [24]  672 	mov	r7,(_Ans + 0x0002)
      000225 74 B0            [12]  673 	mov	a,#0xb0
      000227 2F               [12]  674 	add	a,r7
      000228 F5 90            [12]  675 	mov	_P1,a
                                    676 ;	main.c:101: for (i=0; i<55; i++);
      00022A 7E 37            [12]  677 	mov	r6,#0x37
      00022C 7F 00            [12]  678 	mov	r7,#0x00
      00022E                        679 00114$:
      00022E 1E               [12]  680 	dec	r6
      00022F BE FF 01         [24]  681 	cjne	r6,#0xff,00152$
      000232 1F               [12]  682 	dec	r7
      000233                        683 00152$:
      000233 EE               [12]  684 	mov	a,r6
      000234 4F               [12]  685 	orl	a,r7
      000235 70 F7            [24]  686 	jnz	00114$
                                    687 ;	main.c:102: P1 = Ans[2] + 0xd0;
      000237 AF 14            [24]  688 	mov	r7,(_Ans + 0x0004)
      000239 74 D0            [12]  689 	mov	a,#0xd0
      00023B 2F               [12]  690 	add	a,r7
      00023C F5 90            [12]  691 	mov	_P1,a
                                    692 ;	main.c:104: times++;
      00023E 05 1A            [12]  693 	inc	_times
      000240 E4               [12]  694 	clr	a
      000241 B5 1A 02         [24]  695 	cjne	a,_times,00154$
      000244 05 1B            [12]  696 	inc	(_times + 1)
      000246                        697 00154$:
                                    698 ;	main.c:105: if (times > 792)
      000246 C3               [12]  699 	clr	c
      000247 74 18            [12]  700 	mov	a,#0x18
      000249 95 1A            [12]  701 	subb	a,_times
      00024B 74 03            [12]  702 	mov	a,#0x03
      00024D 95 1B            [12]  703 	subb	a,(_times + 1)
      00024F 50 06            [24]  704 	jnc	00115$
                                    705 ;	main.c:106: sw = 1;
      000251 75 1C 01         [24]  706 	mov	_sw,#0x01
      000254 75 1D 00         [24]  707 	mov	(_sw + 1),#0x00
      000257                        708 00115$:
                                    709 ;	main.c:107: }
      000257 22               [24]  710 	ret
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'GetKey'
                                    713 ;------------------------------------------------------------
                                    714 ;p                         Allocated to registers r6 r7 
                                    715 ;q                         Allocated to registers r2 r3 
                                    716 ;------------------------------------------------------------
                                    717 ;	main.c:108: int GetKey()
                                    718 ;	-----------------------------------------
                                    719 ;	 function GetKey
                                    720 ;	-----------------------------------------
      000258                        721 _GetKey:
                                    722 ;	main.c:111: for (p=0; p<4; p++)
      000258 7E 00            [12]  723 	mov	r6,#0x00
      00025A 7F 00            [12]  724 	mov	r7,#0x00
      00025C 7C 00            [12]  725 	mov	r4,#0x00
      00025E 7D 00            [12]  726 	mov	r5,#0x00
      000260                        727 00111$:
                                    728 ;	main.c:113: P2 = ((~(1<<p))<<4) | 0xf;
      000260 8C 03            [24]  729 	mov	ar3,r4
      000262 8B F0            [24]  730 	mov	b,r3
      000264 05 F0            [12]  731 	inc	b
      000266 74 01            [12]  732 	mov	a,#0x01
      000268 80 02            [24]  733 	sjmp	00142$
      00026A                        734 00140$:
      00026A 25 E0            [12]  735 	add	a,acc
      00026C                        736 00142$:
      00026C D5 F0 FB         [24]  737 	djnz	b,00140$
      00026F F4               [12]  738 	cpl	a
      000270 C4               [12]  739 	swap	a
      000271 54 F0            [12]  740 	anl	a,#0xf0
      000273 FB               [12]  741 	mov	r3,a
      000274 33               [12]  742 	rlc	a
      000275 95 E0            [12]  743 	subb	a,acc
      000277 43 03 0F         [24]  744 	orl	ar3,#0x0f
      00027A 8B A0            [24]  745 	mov	_P2,r3
                                    746 ;	main.c:114: if ( ((P2 & 0xf) != 0xf) && (sw == 1) )
      00027C AA A0            [24]  747 	mov	r2,_P2
      00027E 53 02 0F         [24]  748 	anl	ar2,#0x0f
      000281 7B 00            [12]  749 	mov	r3,#0x00
      000283 BA 0F 06         [24]  750 	cjne	r2,#0x0f,00143$
      000286 BB 00 03         [24]  751 	cjne	r3,#0x00,00143$
      000289 02 03 1A         [24]  752 	ljmp	00112$
      00028C                        753 00143$:
      00028C 74 01            [12]  754 	mov	a,#0x01
      00028E B5 1C 06         [24]  755 	cjne	a,_sw,00144$
      000291 14               [12]  756 	dec	a
      000292 B5 1D 02         [24]  757 	cjne	a,(_sw + 1),00144$
      000295 80 03            [24]  758 	sjmp	00145$
      000297                        759 00144$:
      000297 02 03 1A         [24]  760 	ljmp	00112$
      00029A                        761 00145$:
                                    762 ;	main.c:116: for (q=0; q<4; q++)
      00029A 7A 00            [12]  763 	mov	r2,#0x00
      00029C 7B 00            [12]  764 	mov	r3,#0x00
      00029E                        765 00109$:
                                    766 ;	main.c:117: if (P2 % 2 == 1)
      00029E A8 A0            [24]  767 	mov	r0,_P2
      0002A0 79 00            [12]  768 	mov	r1,#0x00
      0002A2 75 21 02         [24]  769 	mov	__modsint_PARM_2,#0x02
                                    770 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0002A5 89 22            [24]  771 	mov	(__modsint_PARM_2 + 1),r1
      0002A7 88 82            [24]  772 	mov	dpl,r0
      0002A9 89 83            [24]  773 	mov	dph,r1
      0002AB C0 07            [24]  774 	push	ar7
      0002AD C0 06            [24]  775 	push	ar6
      0002AF C0 03            [24]  776 	push	ar3
      0002B1 C0 02            [24]  777 	push	ar2
      0002B3 12 03 C6         [24]  778 	lcall	__modsint
      0002B6 A8 82            [24]  779 	mov	r0,dpl
      0002B8 A9 83            [24]  780 	mov	r1,dph
      0002BA D0 02            [24]  781 	pop	ar2
      0002BC D0 03            [24]  782 	pop	ar3
      0002BE D0 06            [24]  783 	pop	ar6
      0002C0 D0 07            [24]  784 	pop	ar7
      0002C2 B8 01 37         [24]  785 	cjne	r0,#0x01,00104$
      0002C5 B9 00 34         [24]  786 	cjne	r1,#0x00,00104$
                                    787 ;	main.c:118: P2 /= 2;
      0002C8 A8 A0            [24]  788 	mov	r0,_P2
      0002CA 79 00            [12]  789 	mov	r1,#0x00
      0002CC 75 21 02         [24]  790 	mov	__divsint_PARM_2,#0x02
                                    791 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0002CF 89 22            [24]  792 	mov	(__divsint_PARM_2 + 1),r1
      0002D1 88 82            [24]  793 	mov	dpl,r0
      0002D3 89 83            [24]  794 	mov	dph,r1
      0002D5 C0 07            [24]  795 	push	ar7
      0002D7 C0 06            [24]  796 	push	ar6
      0002D9 C0 03            [24]  797 	push	ar3
      0002DB C0 02            [24]  798 	push	ar2
      0002DD 12 03 FC         [24]  799 	lcall	__divsint
      0002E0 A8 82            [24]  800 	mov	r0,dpl
      0002E2 A9 83            [24]  801 	mov	r1,dph
      0002E4 D0 02            [24]  802 	pop	ar2
      0002E6 D0 03            [24]  803 	pop	ar3
      0002E8 D0 06            [24]  804 	pop	ar6
      0002EA D0 07            [24]  805 	pop	ar7
      0002EC 88 A0            [24]  806 	mov	_P2,r0
                                    807 ;	main.c:116: for (q=0; q<4; q++)
      0002EE 0A               [12]  808 	inc	r2
      0002EF BA 00 01         [24]  809 	cjne	r2,#0x00,00148$
      0002F2 0B               [12]  810 	inc	r3
      0002F3                        811 00148$:
      0002F3 C3               [12]  812 	clr	c
      0002F4 EA               [12]  813 	mov	a,r2
      0002F5 94 04            [12]  814 	subb	a,#0x04
      0002F7 EB               [12]  815 	mov	a,r3
      0002F8 94 00            [12]  816 	subb	a,#0x00
      0002FA 40 A2            [24]  817 	jc	00109$
      0002FC                        818 00104$:
                                    819 ;	main.c:121: sw = 0;
      0002FC E4               [12]  820 	clr	a
      0002FD F5 1C            [12]  821 	mov	_sw,a
      0002FF F5 1D            [12]  822 	mov	(_sw + 1),a
                                    823 ;	main.c:122: times = 0;
      000301 F5 1A            [12]  824 	mov	_times,a
      000303 F5 1B            [12]  825 	mov	(_times + 1),a
                                    826 ;	main.c:123: return 4*p+q;	//1e?U?e?Jao-E(10?i|i)
      000305 EE               [12]  827 	mov	a,r6
      000306 2E               [12]  828 	add	a,r6
      000307 F8               [12]  829 	mov	r0,a
      000308 EF               [12]  830 	mov	a,r7
      000309 33               [12]  831 	rlc	a
      00030A F9               [12]  832 	mov	r1,a
      00030B E8               [12]  833 	mov	a,r0
      00030C 28               [12]  834 	add	a,r0
      00030D F8               [12]  835 	mov	r0,a
      00030E E9               [12]  836 	mov	a,r1
      00030F 33               [12]  837 	rlc	a
      000310 F9               [12]  838 	mov	r1,a
      000311 EA               [12]  839 	mov	a,r2
      000312 28               [12]  840 	add	a,r0
      000313 F5 82            [12]  841 	mov	dpl,a
      000315 EB               [12]  842 	mov	a,r3
      000316 39               [12]  843 	addc	a,r1
      000317 F5 83            [12]  844 	mov	dph,a
      000319 22               [24]  845 	ret
      00031A                        846 00112$:
                                    847 ;	main.c:111: for (p=0; p<4; p++)
      00031A 0C               [12]  848 	inc	r4
      00031B BC 00 01         [24]  849 	cjne	r4,#0x00,00150$
      00031E 0D               [12]  850 	inc	r5
      00031F                        851 00150$:
      00031F 8C 06            [24]  852 	mov	ar6,r4
      000321 8D 07            [24]  853 	mov	ar7,r5
      000323 C3               [12]  854 	clr	c
      000324 EC               [12]  855 	mov	a,r4
      000325 94 04            [12]  856 	subb	a,#0x04
      000327 ED               [12]  857 	mov	a,r5
      000328 94 00            [12]  858 	subb	a,#0x00
      00032A 50 03            [24]  859 	jnc	00151$
      00032C 02 02 60         [24]  860 	ljmp	00111$
      00032F                        861 00151$:
                                    862 ;	main.c:126: return -1;
      00032F 90 FF FF         [24]  863 	mov	dptr,#0xffff
                                    864 ;	main.c:127: }
      000332 22               [24]  865 	ret
                                    866 	.area CSEG    (CODE)
                                    867 	.area CONST   (CODE)
                                    868 	.area XINIT   (CODE)
                                    869 	.area CABS    (ABS,CODE)
