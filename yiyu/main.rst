                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _display_PARM_3
                                     12 	.globl _display_PARM_2
                                     13 	.globl _main
                                     14 	.globl _display
                                     15 	.globl _keyPressed
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      000008                        227 _main_previous_65536_13:
      000008                        228 	.ds 2
      00000A                        229 _main_row_65536_13:
      00000A                        230 	.ds 2
      00000C                        231 _main_num_65536_13:
      00000C                        232 	.ds 8
      000014                        233 _main_alpha_65536_13:
      000014                        234 	.ds 22
      00002A                        235 _main_table_65536_13:
      00002A                        236 	.ds 8
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 	.area	OSEG    (OVR,DATA)
      000032                        241 _keyPressed_row_65536_1:
      000032                        242 	.ds 2
                                    243 	.area	OSEG    (OVR,DATA)
      000032                        244 _display_PARM_2:
      000032                        245 	.ds 3
      000035                        246 _display_PARM_3:
      000035                        247 	.ds 3
      000038                        248 _display_table_65536_7:
      000038                        249 	.ds 3
      00003B                        250 _display_t_131072_9:
      00003B                        251 	.ds 2
                                    252 ;--------------------------------------------------------
                                    253 ; Stack segment in internal ram 
                                    254 ;--------------------------------------------------------
                                    255 	.area	SSEG
      00003D                        256 __start__stack:
      00003D                        257 	.ds	1
                                    258 
                                    259 ;--------------------------------------------------------
                                    260 ; indirectly addressable internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area ISEG    (DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area IABS    (ABS,DATA)
                                    267 	.area IABS    (ABS,DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; bit data
                                    270 ;--------------------------------------------------------
                                    271 	.area BSEG    (BIT)
                                    272 ;--------------------------------------------------------
                                    273 ; paged external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area PSEG    (PAG,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XSEG    (XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XABS    (ABS,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; external initialized ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XISEG   (XDATA)
                                    288 	.area HOME    (CODE)
                                    289 	.area GSINIT0 (CODE)
                                    290 	.area GSINIT1 (CODE)
                                    291 	.area GSINIT2 (CODE)
                                    292 	.area GSINIT3 (CODE)
                                    293 	.area GSINIT4 (CODE)
                                    294 	.area GSINIT5 (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area CSEG    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; interrupt vector 
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
      000000                        302 __interrupt_vect:
      000000 02 00 06         [24]  303 	ljmp	__sdcc_gsinit_startup
                                    304 ;--------------------------------------------------------
                                    305 ; global & static initialisations
                                    306 ;--------------------------------------------------------
                                    307 	.area HOME    (CODE)
                                    308 	.area GSINIT  (CODE)
                                    309 	.area GSFINAL (CODE)
                                    310 	.area GSINIT  (CODE)
                                    311 	.globl __sdcc_gsinit_startup
                                    312 	.globl __sdcc_program_startup
                                    313 	.globl __start__stack
                                    314 	.globl __mcs51_genXINIT
                                    315 	.globl __mcs51_genXRAMCLEAR
                                    316 	.globl __mcs51_genRAMCLEAR
                                    317 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  318 	ljmp	__sdcc_program_startup
                                    319 ;--------------------------------------------------------
                                    320 ; Home
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
                                    323 	.area HOME    (CODE)
      000003                        324 __sdcc_program_startup:
      000003 02 01 68         [24]  325 	ljmp	_main
                                    326 ;	return from main will return to caller
                                    327 ;--------------------------------------------------------
                                    328 ; code
                                    329 ;--------------------------------------------------------
                                    330 	.area CSEG    (CODE)
                                    331 ;------------------------------------------------------------
                                    332 ;Allocation info for local variables in function 'keyPressed'
                                    333 ;------------------------------------------------------------
                                    334 ;row                       Allocated with name '_keyPressed_row_65536_1'
                                    335 ;c                         Allocated to registers r4 r5 
                                    336 ;col                       Allocated to registers r2 r3 
                                    337 ;magic                     Allocated to registers r7 r6 
                                    338 ;------------------------------------------------------------
                                    339 ;	main.c:3: short keyPressed(short row) {
                                    340 ;	-----------------------------------------
                                    341 ;	 function keyPressed
                                    342 ;	-----------------------------------------
      000062                        343 _keyPressed:
                           000007   344 	ar7 = 0x07
                           000006   345 	ar6 = 0x06
                           000005   346 	ar5 = 0x05
                           000004   347 	ar4 = 0x04
                           000003   348 	ar3 = 0x03
                           000002   349 	ar2 = 0x02
                           000001   350 	ar1 = 0x01
                           000000   351 	ar0 = 0x00
      000062 85 82 32         [24]  352 	mov	_keyPressed_row_65536_1,dpl
      000065 85 83 33         [24]  353 	mov	(_keyPressed_row_65536_1 + 1),dph
                                    354 ;	main.c:4: if((P0 & 0b11110000) != 0b11110000){	//if 按下按鈕
      000068 AC 80            [24]  355 	mov	r4,_P0
      00006A 53 04 F0         [24]  356 	anl	ar4,#0xf0
      00006D 7D 00            [12]  357 	mov	r5,#0x00
      00006F BC F0 05         [24]  358 	cjne	r4,#0xf0,00127$
      000072 BD 00 02         [24]  359 	cjne	r5,#0x00,00127$
      000075 80 56            [24]  360 	sjmp	00105$
      000077                        361 00127$:
                                    362 ;	main.c:5: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      000077 7C 01            [12]  363 	mov	r4,#0x01
      000079 7D 00            [12]  364 	mov	r5,#0x00
      00007B 7A 00            [12]  365 	mov	r2,#0x00
      00007D 7B 00            [12]  366 	mov	r3,#0x00
      00007F 78 00            [12]  367 	mov	r0,#0x00
      000081 79 00            [12]  368 	mov	r1,#0x00
      000083                        369 00107$:
      000083 C3               [12]  370 	clr	c
      000084 E8               [12]  371 	mov	a,r0
      000085 94 04            [12]  372 	subb	a,#0x04
      000087 E9               [12]  373 	mov	a,r1
      000088 64 80            [12]  374 	xrl	a,#0x80
      00008A 94 80            [12]  375 	subb	a,#0x80
      00008C 50 3F            [24]  376 	jnc	00105$
                                    377 ;	main.c:7: `			short magic = ((P0 >> 4) ^ 0b11111111) & 0b00001111;
      00008E E5 80            [12]  378 	mov	a,_P0
      000090 C4               [12]  379 	swap	a
      000091 54 0F            [12]  380 	anl	a,#0x0f
      000093 FF               [12]  381 	mov	r7,a
      000094 63 07 FF         [24]  382 	xrl	ar7,#0xff
      000097 53 07 0F         [24]  383 	anl	ar7,#0x0f
      00009A 7E 00            [12]  384 	mov	r6,#0x00
                                    385 ;	main.c:8: if (magic == c) {
      00009C EF               [12]  386 	mov	a,r7
      00009D B5 04 1C         [24]  387 	cjne	a,ar4,00108$
      0000A0 EE               [12]  388 	mov	a,r6
      0000A1 B5 05 18         [24]  389 	cjne	a,ar5,00108$
                                    390 ;	main.c:9: return row * 4 + col;
      0000A4 E5 32            [12]  391 	mov	a,_keyPressed_row_65536_1
      0000A6 25 32            [12]  392 	add	a,_keyPressed_row_65536_1
      0000A8 FE               [12]  393 	mov	r6,a
      0000A9 E5 33            [12]  394 	mov	a,(_keyPressed_row_65536_1 + 1)
      0000AB 33               [12]  395 	rlc	a
      0000AC FF               [12]  396 	mov	r7,a
      0000AD EE               [12]  397 	mov	a,r6
      0000AE 2E               [12]  398 	add	a,r6
      0000AF FE               [12]  399 	mov	r6,a
      0000B0 EF               [12]  400 	mov	a,r7
      0000B1 33               [12]  401 	rlc	a
      0000B2 FF               [12]  402 	mov	r7,a
      0000B3 EA               [12]  403 	mov	a,r2
      0000B4 2E               [12]  404 	add	a,r6
      0000B5 F5 82            [12]  405 	mov	dpl,a
      0000B7 EB               [12]  406 	mov	a,r3
      0000B8 3F               [12]  407 	addc	a,r7
      0000B9 F5 83            [12]  408 	mov	dph,a
      0000BB 22               [24]  409 	ret
      0000BC                        410 00108$:
                                    411 ;	main.c:5: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      0000BC EC               [12]  412 	mov	a,r4
      0000BD 2C               [12]  413 	add	a,r4
      0000BE FC               [12]  414 	mov	r4,a
      0000BF ED               [12]  415 	mov	a,r5
      0000C0 33               [12]  416 	rlc	a
      0000C1 FD               [12]  417 	mov	r5,a
      0000C2 08               [12]  418 	inc	r0
      0000C3 B8 00 01         [24]  419 	cjne	r0,#0x00,00131$
      0000C6 09               [12]  420 	inc	r1
      0000C7                        421 00131$:
      0000C7 88 02            [24]  422 	mov	ar2,r0
      0000C9 89 03            [24]  423 	mov	ar3,r1
      0000CB 80 B6            [24]  424 	sjmp	00107$
      0000CD                        425 00105$:
                                    426 ;	main.c:13: return -1;	//沒按 return -1
      0000CD 90 FF FF         [24]  427 	mov	dptr,#0xffff
                                    428 ;	main.c:14: }
      0000D0 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'display'
                                    432 ;------------------------------------------------------------
                                    433 ;alpha                     Allocated with name '_display_PARM_2'
                                    434 ;num                       Allocated with name '_display_PARM_3'
                                    435 ;table                     Allocated with name '_display_table_65536_7'
                                    436 ;i                         Allocated to registers r1 r2 
                                    437 ;t                         Allocated with name '_display_t_131072_9'
                                    438 ;j                         Allocated to registers r6 r7 
                                    439 ;------------------------------------------------------------
                                    440 ;	main.c:16: short display(short table[], short alpha[], short num[]) {
                                    441 ;	-----------------------------------------
                                    442 ;	 function display
                                    443 ;	-----------------------------------------
      0000D1                        444 _display:
      0000D1 85 82 38         [24]  445 	mov	_display_table_65536_7,dpl
      0000D4 85 83 39         [24]  446 	mov	(_display_table_65536_7 + 1),dph
      0000D7 85 F0 3A         [24]  447 	mov	(_display_table_65536_7 + 2),b
                                    448 ;	main.c:17: for(short i = 0,t=1; i < 4; i++,t*=2) {
      0000DA 75 3B 01         [24]  449 	mov	_display_t_131072_9,#0x01
      0000DD 75 3C 00         [24]  450 	mov	(_display_t_131072_9 + 1),#0x00
      0000E0 79 00            [12]  451 	mov	r1,#0x00
      0000E2 7A 00            [12]  452 	mov	r2,#0x00
      0000E4                        453 00107$:
      0000E4 C3               [12]  454 	clr	c
      0000E5 E9               [12]  455 	mov	a,r1
      0000E6 94 04            [12]  456 	subb	a,#0x04
      0000E8 EA               [12]  457 	mov	a,r2
      0000E9 64 80            [12]  458 	xrl	a,#0x80
      0000EB 94 80            [12]  459 	subb	a,#0x80
      0000ED 50 78            [24]  460 	jnc	00109$
                                    461 ;	main.c:18: P1 = table[i];
      0000EF E9               [12]  462 	mov	a,r1
      0000F0 29               [12]  463 	add	a,r1
      0000F1 F8               [12]  464 	mov	r0,a
      0000F2 EA               [12]  465 	mov	a,r2
      0000F3 33               [12]  466 	rlc	a
      0000F4 FC               [12]  467 	mov	r4,a
      0000F5 E8               [12]  468 	mov	a,r0
      0000F6 25 38            [12]  469 	add	a,_display_table_65536_7
      0000F8 FB               [12]  470 	mov	r3,a
      0000F9 EC               [12]  471 	mov	a,r4
      0000FA 35 39            [12]  472 	addc	a,(_display_table_65536_7 + 1)
      0000FC FE               [12]  473 	mov	r6,a
      0000FD AF 3A            [24]  474 	mov	r7,(_display_table_65536_7 + 2)
      0000FF 8B 82            [24]  475 	mov	dpl,r3
      000101 8E 83            [24]  476 	mov	dph,r6
      000103 8F F0            [24]  477 	mov	b,r7
      000105 12 02 68         [24]  478 	lcall	__gptrget
      000108 F5 90            [12]  479 	mov	_P1,a
                                    480 ;	main.c:19: P2 = alpha[num[i]];
      00010A E8               [12]  481 	mov	a,r0
      00010B 25 35            [12]  482 	add	a,_display_PARM_3
      00010D F8               [12]  483 	mov	r0,a
      00010E EC               [12]  484 	mov	a,r4
      00010F 35 36            [12]  485 	addc	a,(_display_PARM_3 + 1)
      000111 FC               [12]  486 	mov	r4,a
      000112 AF 37            [24]  487 	mov	r7,(_display_PARM_3 + 2)
      000114 88 82            [24]  488 	mov	dpl,r0
      000116 8C 83            [24]  489 	mov	dph,r4
      000118 8F F0            [24]  490 	mov	b,r7
      00011A 12 02 68         [24]  491 	lcall	__gptrget
      00011D F8               [12]  492 	mov	r0,a
      00011E A3               [24]  493 	inc	dptr
      00011F 12 02 68         [24]  494 	lcall	__gptrget
      000122 FC               [12]  495 	mov	r4,a
      000123 E8               [12]  496 	mov	a,r0
      000124 28               [12]  497 	add	a,r0
      000125 F8               [12]  498 	mov	r0,a
      000126 EC               [12]  499 	mov	a,r4
      000127 33               [12]  500 	rlc	a
      000128 FC               [12]  501 	mov	r4,a
      000129 E8               [12]  502 	mov	a,r0
      00012A 25 32            [12]  503 	add	a,_display_PARM_2
      00012C F8               [12]  504 	mov	r0,a
      00012D EC               [12]  505 	mov	a,r4
      00012E 35 33            [12]  506 	addc	a,(_display_PARM_2 + 1)
      000130 FC               [12]  507 	mov	r4,a
      000131 AF 34            [24]  508 	mov	r7,(_display_PARM_2 + 2)
      000133 88 82            [24]  509 	mov	dpl,r0
      000135 8C 83            [24]  510 	mov	dph,r4
      000137 8F F0            [24]  511 	mov	b,r7
      000139 12 02 68         [24]  512 	lcall	__gptrget
      00013C F5 A0            [12]  513 	mov	_P2,a
                                    514 ;	main.c:20: for(int j = 0; j < 1000; j++){}
      00013E 7E 00            [12]  515 	mov	r6,#0x00
      000140 7F 00            [12]  516 	mov	r7,#0x00
      000142                        517 00104$:
      000142 C3               [12]  518 	clr	c
      000143 EE               [12]  519 	mov	a,r6
      000144 94 E8            [12]  520 	subb	a,#0xe8
      000146 EF               [12]  521 	mov	a,r7
      000147 64 80            [12]  522 	xrl	a,#0x80
      000149 94 83            [12]  523 	subb	a,#0x83
      00014B 50 07            [24]  524 	jnc	00108$
      00014D 0E               [12]  525 	inc	r6
      00014E BE 00 F1         [24]  526 	cjne	r6,#0x00,00104$
      000151 0F               [12]  527 	inc	r7
      000152 80 EE            [24]  528 	sjmp	00104$
      000154                        529 00108$:
                                    530 ;	main.c:17: for(short i = 0,t=1; i < 4; i++,t*=2) {
      000154 09               [12]  531 	inc	r1
      000155 B9 00 01         [24]  532 	cjne	r1,#0x00,00132$
      000158 0A               [12]  533 	inc	r2
      000159                        534 00132$:
      000159 E5 3B            [12]  535 	mov	a,_display_t_131072_9
      00015B 25 3B            [12]  536 	add	a,_display_t_131072_9
      00015D F5 3B            [12]  537 	mov	_display_t_131072_9,a
      00015F E5 3C            [12]  538 	mov	a,(_display_t_131072_9 + 1)
      000161 33               [12]  539 	rlc	a
      000162 F5 3C            [12]  540 	mov	(_display_t_131072_9 + 1),a
      000164 02 00 E4         [24]  541 	ljmp	00107$
      000167                        542 00109$:
                                    543 ;	main.c:22: }
      000167 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'main'
                                    547 ;------------------------------------------------------------
                                    548 ;previous                  Allocated with name '_main_previous_65536_13'
                                    549 ;row                       Allocated with name '_main_row_65536_13'
                                    550 ;count                     Allocated to registers r2 r3 
                                    551 ;num                       Allocated with name '_main_num_65536_13'
                                    552 ;alpha                     Allocated with name '_main_alpha_65536_13'
                                    553 ;table                     Allocated with name '_main_table_65536_13'
                                    554 ;key                       Allocated to registers r6 r7 
                                    555 ;------------------------------------------------------------
                                    556 ;	main.c:24: int main() {
                                    557 ;	-----------------------------------------
                                    558 ;	 function main
                                    559 ;	-----------------------------------------
      000168                        560 _main:
                                    561 ;	main.c:31: short previous = -1;
      000168 75 08 FF         [24]  562 	mov	_main_previous_65536_13,#0xff
      00016B 75 09 FF         [24]  563 	mov	(_main_previous_65536_13 + 1),#0xff
                                    564 ;	main.c:32: short row = 0;
      00016E E4               [12]  565 	clr	a
      00016F F5 0A            [12]  566 	mov	_main_row_65536_13,a
      000171 F5 0B            [12]  567 	mov	(_main_row_65536_13 + 1),a
                                    568 ;	main.c:33: short count = 1;
      000173 7A 01            [12]  569 	mov	r2,#0x01
      000175 7B 00            [12]  570 	mov	r3,#0x00
                                    571 ;	main.c:34: short num[4] = {0};
      000177 F5 0C            [12]  572 	mov	(_main_num_65536_13 + 0),a
      000179 F5 0D            [12]  573 	mov	(_main_num_65536_13 + 1),a
      00017B F5 0E            [12]  574 	mov	((_main_num_65536_13 + 0x0002) + 0),a
      00017D F5 0F            [12]  575 	mov	((_main_num_65536_13 + 0x0002) + 1),a
      00017F F5 10            [12]  576 	mov	((_main_num_65536_13 + 0x0004) + 0),a
      000181 F5 11            [12]  577 	mov	((_main_num_65536_13 + 0x0004) + 1),a
      000183 F5 12            [12]  578 	mov	((_main_num_65536_13 + 0x0006) + 0),a
      000185 F5 13            [12]  579 	mov	((_main_num_65536_13 + 0x0006) + 1),a
                                    580 ;	main.c:35: const short alpha[11] = {
      000187 75 14 03         [24]  581 	mov	(_main_alpha_65536_13 + 0),#0x03
                                    582 ;	1-genFromRTrack replaced	mov	(_main_alpha_65536_13 + 1),#0x00
      00018A F5 15            [12]  583 	mov	(_main_alpha_65536_13 + 1),a
      00018C 75 16 9F         [24]  584 	mov	((_main_alpha_65536_13 + 0x0002) + 0),#0x9f
                                    585 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0002) + 1),#0x00
      00018F F5 17            [12]  586 	mov	((_main_alpha_65536_13 + 0x0002) + 1),a
      000191 75 18 25         [24]  587 	mov	((_main_alpha_65536_13 + 0x0004) + 0),#0x25
                                    588 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0004) + 1),#0x00
      000194 F5 19            [12]  589 	mov	((_main_alpha_65536_13 + 0x0004) + 1),a
      000196 75 1A 0D         [24]  590 	mov	((_main_alpha_65536_13 + 0x0006) + 0),#0x0d
                                    591 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0006) + 1),#0x00
      000199 F5 1B            [12]  592 	mov	((_main_alpha_65536_13 + 0x0006) + 1),a
      00019B 75 1C 99         [24]  593 	mov	((_main_alpha_65536_13 + 0x0008) + 0),#0x99
                                    594 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0008) + 1),#0x00
      00019E F5 1D            [12]  595 	mov	((_main_alpha_65536_13 + 0x0008) + 1),a
      0001A0 75 1E 49         [24]  596 	mov	((_main_alpha_65536_13 + 0x000a) + 0),#0x49
                                    597 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x000a) + 1),#0x00
      0001A3 F5 1F            [12]  598 	mov	((_main_alpha_65536_13 + 0x000a) + 1),a
      0001A5 75 20 41         [24]  599 	mov	((_main_alpha_65536_13 + 0x000c) + 0),#0x41
                                    600 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x000c) + 1),#0x00
      0001A8 F5 21            [12]  601 	mov	((_main_alpha_65536_13 + 0x000c) + 1),a
      0001AA 75 22 1F         [24]  602 	mov	((_main_alpha_65536_13 + 0x000e) + 0),#0x1f
                                    603 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x000e) + 1),#0x00
      0001AD F5 23            [12]  604 	mov	((_main_alpha_65536_13 + 0x000e) + 1),a
                                    605 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0010) + 0),#0x01
      0001AF 8A 24            [24]  606 	mov	((_main_alpha_65536_13 + 0x0010) + 0),r2
                                    607 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0010) + 1),#0x00
      0001B1 F5 25            [12]  608 	mov	((_main_alpha_65536_13 + 0x0010) + 1),a
      0001B3 75 26 09         [24]  609 	mov	((_main_alpha_65536_13 + 0x0012) + 0),#0x09
                                    610 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0012) + 1),#0x00
      0001B6 F5 27            [12]  611 	mov	((_main_alpha_65536_13 + 0x0012) + 1),a
      0001B8 75 28 FF         [24]  612 	mov	((_main_alpha_65536_13 + 0x0014) + 0),#0xff
                                    613 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_13 + 0x0014) + 1),#0x00
      0001BB F5 29            [12]  614 	mov	((_main_alpha_65536_13 + 0x0014) + 1),a
                                    615 ;	main.c:48: const short table[4] = {
      0001BD 75 2A FE         [24]  616 	mov	(_main_table_65536_13 + 0),#0xfe
                                    617 ;	1-genFromRTrack replaced	mov	(_main_table_65536_13 + 1),#0x00
      0001C0 F5 2B            [12]  618 	mov	(_main_table_65536_13 + 1),a
      0001C2 75 2C FD         [24]  619 	mov	((_main_table_65536_13 + 0x0002) + 0),#0xfd
                                    620 ;	1-genFromRTrack replaced	mov	((_main_table_65536_13 + 0x0002) + 1),#0x00
      0001C5 F5 2D            [12]  621 	mov	((_main_table_65536_13 + 0x0002) + 1),a
      0001C7 75 2E FB         [24]  622 	mov	((_main_table_65536_13 + 0x0004) + 0),#0xfb
                                    623 ;	1-genFromRTrack replaced	mov	((_main_table_65536_13 + 0x0004) + 1),#0x00
      0001CA F5 2F            [12]  624 	mov	((_main_table_65536_13 + 0x0004) + 1),a
      0001CC 75 30 F7         [24]  625 	mov	((_main_table_65536_13 + 0x0006) + 0),#0xf7
                                    626 ;	1-genFromRTrack replaced	mov	((_main_table_65536_13 + 0x0006) + 1),#0x00
      0001CF F5 31            [12]  627 	mov	((_main_table_65536_13 + 0x0006) + 1),a
                                    628 ;	main.c:54: P0 = 0b00001111;
      0001D1 75 80 0F         [24]  629 	mov	_P0,#0x0f
                                    630 ;	main.c:55: while (1) {
      0001D4                        631 00107$:
                                    632 ;	main.c:56: P0     =count^0b11111111;
      0001D4 74 FF            [12]  633 	mov	a,#0xff
      0001D6 6A               [12]  634 	xrl	a,r2
      0001D7 FE               [12]  635 	mov	r6,a
      0001D8 8B 07            [24]  636 	mov	ar7,r3
      0001DA 8E 80            [24]  637 	mov	_P0,r6
                                    638 ;	main.c:57: count *=2; //shift
      0001DC EA               [12]  639 	mov	a,r2
      0001DD 2A               [12]  640 	add	a,r2
      0001DE FA               [12]  641 	mov	r2,a
      0001DF EB               [12]  642 	mov	a,r3
      0001E0 33               [12]  643 	rlc	a
      0001E1 FB               [12]  644 	mov	r3,a
                                    645 ;	main.c:58: short key = keyPressed(row);
      0001E2 85 0A 82         [24]  646 	mov	dpl,_main_row_65536_13
      0001E5 85 0B 83         [24]  647 	mov	dph,(_main_row_65536_13 + 1)
      0001E8 C0 03            [24]  648 	push	ar3
      0001EA C0 02            [24]  649 	push	ar2
      0001EC 12 00 62         [24]  650 	lcall	_keyPressed
      0001EF AE 82            [24]  651 	mov	r6,dpl
      0001F1 AF 83            [24]  652 	mov	r7,dph
      0001F3 D0 02            [24]  653 	pop	ar2
      0001F5 D0 03            [24]  654 	pop	ar3
                                    655 ;	main.c:59: if (key != previous && key != -1) {	//有按且不等於上一按 => 處理debounce
      0001F7 EE               [12]  656 	mov	a,r6
      0001F8 B5 08 06         [24]  657 	cjne	a,_main_previous_65536_13,00127$
      0001FB EF               [12]  658 	mov	a,r7
      0001FC B5 09 02         [24]  659 	cjne	a,(_main_previous_65536_13 + 1),00127$
      0001FF 80 28            [24]  660 	sjmp	00102$
      000201                        661 00127$:
      000201 BE FF 05         [24]  662 	cjne	r6,#0xff,00128$
      000204 BF FF 02         [24]  663 	cjne	r7,#0xff,00128$
      000207 80 20            [24]  664 	sjmp	00102$
      000209                        665 00128$:
                                    666 ;	main.c:60: previous = key;
      000209 8E 08            [24]  667 	mov	_main_previous_65536_13,r6
      00020B 8F 09            [24]  668 	mov	(_main_previous_65536_13 + 1),r7
                                    669 ;	main.c:61: num[0] =num[1];
      00020D AC 0E            [24]  670 	mov	r4,((_main_num_65536_13 + 0x0002) + 0)
      00020F AD 0F            [24]  671 	mov	r5,((_main_num_65536_13 + 0x0002) + 1)
      000211 8C 0C            [24]  672 	mov	(_main_num_65536_13 + 0),r4
      000213 8D 0D            [24]  673 	mov	(_main_num_65536_13 + 1),r5
                                    674 ;	main.c:62: num[1] =num[2];
      000215 AC 10            [24]  675 	mov	r4,((_main_num_65536_13 + 0x0004) + 0)
      000217 AD 11            [24]  676 	mov	r5,((_main_num_65536_13 + 0x0004) + 1)
      000219 8C 0E            [24]  677 	mov	((_main_num_65536_13 + 0x0002) + 0),r4
      00021B 8D 0F            [24]  678 	mov	((_main_num_65536_13 + 0x0002) + 1),r5
                                    679 ;	main.c:63: num[2] =num[3];			
      00021D AC 12            [24]  680 	mov	r4,((_main_num_65536_13 + 0x0006) + 0)
      00021F AD 13            [24]  681 	mov	r5,((_main_num_65536_13 + 0x0006) + 1)
      000221 8C 10            [24]  682 	mov	((_main_num_65536_13 + 0x0004) + 0),r4
      000223 8D 11            [24]  683 	mov	((_main_num_65536_13 + 0x0004) + 1),r5
                                    684 ;	main.c:64: num[3] = key;	//往前推
      000225 8E 12            [24]  685 	mov	((_main_num_65536_13 + 0x0006) + 0),r6
      000227 8F 13            [24]  686 	mov	((_main_num_65536_13 + 0x0006) + 1),r7
      000229                        687 00102$:
                                    688 ;	main.c:67: row++;
      000229 05 0A            [12]  689 	inc	_main_row_65536_13
      00022B E4               [12]  690 	clr	a
      00022C B5 0A 02         [24]  691 	cjne	a,_main_row_65536_13,00129$
      00022F 05 0B            [12]  692 	inc	(_main_row_65536_13 + 1)
      000231                        693 00129$:
                                    694 ;	main.c:68: if (count == 0x10) {	//用count從上往下掃 
      000231 BA 10 0E         [24]  695 	cjne	r2,#0x10,00105$
      000234 BB 00 0B         [24]  696 	cjne	r3,#0x00,00105$
                                    697 ;	main.c:69: count = 1;
      000237 7A 01            [12]  698 	mov	r2,#0x01
                                    699 ;	main.c:70: row   = 0;
      000239 E4               [12]  700 	clr	a
      00023A FB               [12]  701 	mov	r3,a
      00023B F5 0A            [12]  702 	mov	_main_row_65536_13,a
      00023D F5 0B            [12]  703 	mov	(_main_row_65536_13 + 1),a
                                    704 ;	main.c:71: P1 = 0b11111111;
      00023F 75 90 FF         [24]  705 	mov	_P1,#0xff
      000242                        706 00105$:
                                    707 ;	main.c:73: display(table, alpha, num);
      000242 75 32 14         [24]  708 	mov	_display_PARM_2,#_main_alpha_65536_13
      000245 75 33 00         [24]  709 	mov	(_display_PARM_2 + 1),#0x00
      000248 75 34 40         [24]  710 	mov	(_display_PARM_2 + 2),#0x40
      00024B 75 35 0C         [24]  711 	mov	_display_PARM_3,#_main_num_65536_13
      00024E 75 36 00         [24]  712 	mov	(_display_PARM_3 + 1),#0x00
      000251 75 37 40         [24]  713 	mov	(_display_PARM_3 + 2),#0x40
      000254 90 00 2A         [24]  714 	mov	dptr,#_main_table_65536_13
      000257 75 F0 40         [24]  715 	mov	b,#0x40
      00025A C0 03            [24]  716 	push	ar3
      00025C C0 02            [24]  717 	push	ar2
      00025E 12 00 D1         [24]  718 	lcall	_display
      000261 D0 02            [24]  719 	pop	ar2
      000263 D0 03            [24]  720 	pop	ar3
                                    721 ;	main.c:76: }
      000265 02 01 D4         [24]  722 	ljmp	00107$
                                    723 	.area CSEG    (CODE)
                                    724 	.area CONST   (CODE)
                                    725 	.area XINIT   (CODE)
                                    726 	.area CABS    (ABS,CODE)
