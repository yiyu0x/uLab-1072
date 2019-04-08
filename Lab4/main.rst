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
                                     11 	.globl _main
                                     12 	.globl _timer_isr
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
                                    109 	.globl _counter
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      000010                        227 _counter::
      000010                        228 	.ds 2
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable items in internal ram 
                                    231 ;--------------------------------------------------------
                                    232 	.area	OSEG    (OVR,DATA)
                                    233 ;--------------------------------------------------------
                                    234 ; Stack segment in internal ram 
                                    235 ;--------------------------------------------------------
                                    236 	.area	SSEG
      000012                        237 __start__stack:
      000012                        238 	.ds	1
                                    239 
                                    240 ;--------------------------------------------------------
                                    241 ; indirectly addressable internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area ISEG    (DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; absolute internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area IABS    (ABS,DATA)
                                    248 	.area IABS    (ABS,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; bit data
                                    251 ;--------------------------------------------------------
                                    252 	.area BSEG    (BIT)
                                    253 ;--------------------------------------------------------
                                    254 ; paged external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area PSEG    (PAG,XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XSEG    (XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external initialized ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; interrupt vector 
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
      000000                        283 __interrupt_vect:
      000000 02 00 11         [24]  284 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  285 	reti
      000004                        286 	.ds	7
      00000B 02 00 72         [24]  287 	ljmp	_timer_isr
                                    288 ;--------------------------------------------------------
                                    289 ; global & static initialisations
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.globl __sdcc_gsinit_startup
                                    296 	.globl __sdcc_program_startup
                                    297 	.globl __start__stack
                                    298 	.globl __mcs51_genXINIT
                                    299 	.globl __mcs51_genXRAMCLEAR
                                    300 	.globl __mcs51_genRAMCLEAR
                                    301 ;	main.c:4: unsigned int counter = 0;
      00006A E4               [12]  302 	clr	a
      00006B F5 10            [12]  303 	mov	_counter,a
      00006D F5 11            [12]  304 	mov	(_counter + 1),a
                                    305 	.area GSFINAL (CODE)
      00006F 02 00 0E         [24]  306 	ljmp	__sdcc_program_startup
                                    307 ;--------------------------------------------------------
                                    308 ; Home
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area HOME    (CODE)
      00000E                        312 __sdcc_program_startup:
      00000E 02 00 89         [24]  313 	ljmp	_main
                                    314 ;	return from main will return to caller
                                    315 ;--------------------------------------------------------
                                    316 ; code
                                    317 ;--------------------------------------------------------
                                    318 	.area CSEG    (CODE)
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'timer_isr'
                                    321 ;------------------------------------------------------------
                                    322 ;	main.c:5: void timer_isr (void) __interrupt (1) __using (1) {
                                    323 ;	-----------------------------------------
                                    324 ;	 function timer_isr
                                    325 ;	-----------------------------------------
      000072                        326 _timer_isr:
                           00000F   327 	ar7 = 0x0f
                           00000E   328 	ar6 = 0x0e
                           00000D   329 	ar5 = 0x0d
                           00000C   330 	ar4 = 0x0c
                           00000B   331 	ar3 = 0x0b
                           00000A   332 	ar2 = 0x0a
                           000009   333 	ar1 = 0x09
                           000008   334 	ar0 = 0x08
      000072 C0 E0            [24]  335 	push	acc
      000074 C0 D0            [24]  336 	push	psw
                                    337 ;	main.c:6: TH0  = PERIOD >> 8;
      000076 75 8C 3C         [24]  338 	mov	_TH0,#0x3c
                                    339 ;	main.c:7: TL0  = PERIOD & 0xff;
      000079 75 8A B0         [24]  340 	mov	_TL0,#0xb0
                                    341 ;	main.c:8: counter++;
      00007C 05 10            [12]  342 	inc	_counter
      00007E E4               [12]  343 	clr	a
      00007F B5 10 02         [24]  344 	cjne	a,_counter,00103$
      000082 05 11            [12]  345 	inc	(_counter + 1)
      000084                        346 00103$:
                                    347 ;	main.c:9: }
      000084 D0 D0            [24]  348 	pop	psw
      000086 D0 E0            [24]  349 	pop	acc
      000088 32               [24]  350 	reti
                                    351 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    352 ;	eliminated unneeded push/pop dpl
                                    353 ;	eliminated unneeded push/pop dph
                                    354 ;	eliminated unneeded push/pop b
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'main'
                                    357 ;------------------------------------------------------------
                                    358 ;dc                        Allocated to registers r6 r7 
                                    359 ;cc                        Allocated to registers r4 r5 
                                    360 ;t                         Allocated to registers r2 r3 
                                    361 ;i                         Allocated to registers r0 r1 
                                    362 ;------------------------------------------------------------
                                    363 ;	main.c:11: int main(){
                                    364 ;	-----------------------------------------
                                    365 ;	 function main
                                    366 ;	-----------------------------------------
      000089                        367 _main:
                           000007   368 	ar7 = 0x07
                           000006   369 	ar6 = 0x06
                           000005   370 	ar5 = 0x05
                           000004   371 	ar4 = 0x04
                           000003   372 	ar3 = 0x03
                           000002   373 	ar2 = 0x02
                           000001   374 	ar1 = 0x01
                           000000   375 	ar0 = 0x00
                                    376 ;	main.c:12: int dc   = 0x70; // 十位
      000089 7E 70            [12]  377 	mov	r6,#0x70
      00008B 7F 00            [12]  378 	mov	r7,#0x00
                                    379 ;	main.c:13: int cc   = 0xb0; // 個位
      00008D 7C B0            [12]  380 	mov	r4,#0xb0
      00008F 7D 00            [12]  381 	mov	r5,#0x00
                                    382 ;	main.c:14: int t=0;
      000091 7A 00            [12]  383 	mov	r2,#0x00
      000093 7B 00            [12]  384 	mov	r3,#0x00
                                    385 ;	main.c:15: P0   = 0x30;
      000095 75 80 30         [24]  386 	mov	_P0,#0x30
                                    387 ;	main.c:16: TMOD = 0b00000001;
      000098 75 89 01         [24]  388 	mov	_TMOD,#0x01
                                    389 ;	main.c:17: IE   = 0x82;
      00009B 75 A8 82         [24]  390 	mov	_IE,#0x82
                                    391 ;	main.c:18: TR0  = 1;
                                    392 ;	assignBit
      00009E D2 8C            [12]  393 	setb	_TR0
                                    394 ;	main.c:19: TH0  = PERIOD >> 8;
      0000A0 75 8C 3C         [24]  395 	mov	_TH0,#0x3c
                                    396 ;	main.c:20: TL0  = PERIOD & 0xff;
      0000A3 75 8A B0         [24]  397 	mov	_TL0,#0xb0
                                    398 ;	main.c:21: while (1){
      0000A6                        399 00116$:
                                    400 ;	main.c:22: EA = 0;
                                    401 ;	assignBit
      0000A6 C2 AF            [12]  402 	clr	_EA
                                    403 ;	main.c:23: if (counter == 10) {
      0000A8 74 0A            [12]  404 	mov	a,#0x0a
      0000AA B5 10 06         [24]  405 	cjne	a,_counter,00159$
      0000AD E4               [12]  406 	clr	a
      0000AE B5 11 02         [24]  407 	cjne	a,(_counter + 1),00159$
      0000B1 80 02            [24]  408 	sjmp	00160$
      0000B3                        409 00159$:
      0000B3 80 2D            [24]  410 	sjmp	00107$
      0000B5                        411 00160$:
                                    412 ;	main.c:24: counter = 0;
      0000B5 E4               [12]  413 	clr	a
      0000B6 F5 10            [12]  414 	mov	_counter,a
      0000B8 F5 11            [12]  415 	mov	(_counter + 1),a
                                    416 ;	main.c:25: cc++;
      0000BA 0C               [12]  417 	inc	r4
      0000BB BC 00 01         [24]  418 	cjne	r4,#0x00,00161$
      0000BE 0D               [12]  419 	inc	r5
      0000BF                        420 00161$:
                                    421 ;	main.c:27: if(dc == 0x79 && cc == 0xb9){
      0000BF BE 79 11         [24]  422 	cjne	r6,#0x79,00102$
      0000C2 BF 00 0E         [24]  423 	cjne	r7,#0x00,00102$
      0000C5 BC B9 0B         [24]  424 	cjne	r4,#0xb9,00102$
      0000C8 BD 00 08         [24]  425 	cjne	r5,#0x00,00102$
                                    426 ;	main.c:28: dc = 0x70;
      0000CB 7E 70            [12]  427 	mov	r6,#0x70
      0000CD 7F 00            [12]  428 	mov	r7,#0x00
                                    429 ;	main.c:29: cc = 0xb0;
      0000CF 7C B0            [12]  430 	mov	r4,#0xb0
      0000D1 7D 00            [12]  431 	mov	r5,#0x00
      0000D3                        432 00102$:
                                    433 ;	main.c:32: if(cc == 0xba){
      0000D3 BC BA 0C         [24]  434 	cjne	r4,#0xba,00107$
      0000D6 BD 00 09         [24]  435 	cjne	r5,#0x00,00107$
                                    436 ;	main.c:33: cc = 0xb0;
      0000D9 7C B0            [12]  437 	mov	r4,#0xb0
      0000DB 7D 00            [12]  438 	mov	r5,#0x00
                                    439 ;	main.c:34: dc++;
      0000DD 0E               [12]  440 	inc	r6
      0000DE BE 00 01         [24]  441 	cjne	r6,#0x00,00168$
      0000E1 0F               [12]  442 	inc	r7
      0000E2                        443 00168$:
      0000E2                        444 00107$:
                                    445 ;	main.c:39: EA = 1;
                                    446 ;	assignBit
      0000E2 D2 AF            [12]  447 	setb	_EA
                                    448 ;	main.c:41: if(t) P0 = dc;
      0000E4 EA               [12]  449 	mov	a,r2
      0000E5 4B               [12]  450 	orl	a,r3
      0000E6 60 04            [24]  451 	jz	00109$
      0000E8 8E 80            [24]  452 	mov	_P0,r6
      0000EA 80 02            [24]  453 	sjmp	00110$
      0000EC                        454 00109$:
                                    455 ;	main.c:42: else  P0 = cc;
      0000EC 8C 80            [24]  456 	mov	_P0,r4
      0000EE                        457 00110$:
                                    458 ;	main.c:43: if (t == 0) t = 1;
      0000EE EA               [12]  459 	mov	a,r2
      0000EF 4B               [12]  460 	orl	a,r3
      0000F0 70 05            [24]  461 	jnz	00112$
      0000F2 7A 01            [12]  462 	mov	r2,#0x01
      0000F4 FB               [12]  463 	mov	r3,a
      0000F5 80 04            [24]  464 	sjmp	00131$
      0000F7                        465 00112$:
                                    466 ;	main.c:44: else t = 0;			
      0000F7 7A 00            [12]  467 	mov	r2,#0x00
      0000F9 7B 00            [12]  468 	mov	r3,#0x00
                                    469 ;	main.c:45: for(int i = 0; i < 1000; i++){}
      0000FB                        470 00131$:
      0000FB 78 00            [12]  471 	mov	r0,#0x00
      0000FD 79 00            [12]  472 	mov	r1,#0x00
      0000FF                        473 00119$:
      0000FF C3               [12]  474 	clr	c
      000100 E8               [12]  475 	mov	a,r0
      000101 94 E8            [12]  476 	subb	a,#0xe8
      000103 E9               [12]  477 	mov	a,r1
      000104 64 80            [12]  478 	xrl	a,#0x80
      000106 94 83            [12]  479 	subb	a,#0x83
      000108 50 9C            [24]  480 	jnc	00116$
      00010A 08               [12]  481 	inc	r0
                                    482 ;	main.c:49: return 0;
      00010B B8 00 F1         [24]  483 	cjne	r0,#0x00,00119$
      00010E 09               [12]  484 	inc	r1
                                    485 ;	main.c:50: }
      00010F 80 EE            [24]  486 	sjmp	00119$
                                    487 	.area CSEG    (CODE)
                                    488 	.area CONST   (CODE)
                                    489 	.area XINIT   (CODE)
                                    490 	.area CABS    (ABS,CODE)
