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
                                     11 	.globl _display_PARM_5
                                     12 	.globl _display_PARM_4
                                     13 	.globl _display_PARM_3
                                     14 	.globl _display_PARM_2
                                     15 	.globl _main
                                     16 	.globl _display
                                     17 	.globl _keyPressed
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
      000008                        229 _main_previous_65536_20:
      000008                        230 	.ds 2
      00000A                        231 _main_row_65536_20:
      00000A                        232 	.ds 2
      00000C                        233 _main_count_65536_20:
      00000C                        234 	.ds 2
      00000E                        235 _main_num_65536_20:
      00000E                        236 	.ds 8
      000016                        237 _main_alpha_65536_20:
      000016                        238 	.ds 22
      00002C                        239 _main_table_65536_20:
      00002C                        240 	.ds 8
      000034                        241 _main_index_65537_21:
      000034                        242 	.ds 2
      000036                        243 _main_flash_flag_65537_21:
      000036                        244 	.ds 4
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable items in internal ram 
                                    247 ;--------------------------------------------------------
                                    248 	.area	OSEG    (OVR,DATA)
      00003A                        249 _keyPressed_row_65536_1:
      00003A                        250 	.ds 2
                                    251 	.area	OSEG    (OVR,DATA)
      00003A                        252 _display_PARM_2:
      00003A                        253 	.ds 3
      00003D                        254 _display_PARM_3:
      00003D                        255 	.ds 3
      000040                        256 _display_PARM_4:
      000040                        257 	.ds 1
      000041                        258 _display_PARM_5:
      000041                        259 	.ds 4
      000045                        260 _display_table_65536_7:
      000045                        261 	.ds 3
      000048                        262 _display_t_262144_11:
      000048                        263 	.ds 2
      00004A                        264 _display_t_196608_16:
      00004A                        265 	.ds 2
                                    266 ;--------------------------------------------------------
                                    267 ; Stack segment in internal ram 
                                    268 ;--------------------------------------------------------
                                    269 	.area	SSEG
      00004C                        270 __start__stack:
      00004C                        271 	.ds	1
                                    272 
                                    273 ;--------------------------------------------------------
                                    274 ; indirectly addressable internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area ISEG    (DATA)
                                    277 ;--------------------------------------------------------
                                    278 ; absolute internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area IABS    (ABS,DATA)
                                    281 	.area IABS    (ABS,DATA)
                                    282 ;--------------------------------------------------------
                                    283 ; bit data
                                    284 ;--------------------------------------------------------
                                    285 	.area BSEG    (BIT)
                                    286 ;--------------------------------------------------------
                                    287 ; paged external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area PSEG    (PAG,XDATA)
                                    290 ;--------------------------------------------------------
                                    291 ; external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XSEG    (XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; absolute external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XABS    (ABS,XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; external initialized ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XISEG   (XDATA)
                                    302 	.area HOME    (CODE)
                                    303 	.area GSINIT0 (CODE)
                                    304 	.area GSINIT1 (CODE)
                                    305 	.area GSINIT2 (CODE)
                                    306 	.area GSINIT3 (CODE)
                                    307 	.area GSINIT4 (CODE)
                                    308 	.area GSINIT5 (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area CSEG    (CODE)
                                    312 ;--------------------------------------------------------
                                    313 ; interrupt vector 
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
      000000                        316 __interrupt_vect:
      000000 02 00 06         [24]  317 	ljmp	__sdcc_gsinit_startup
                                    318 ;--------------------------------------------------------
                                    319 ; global & static initialisations
                                    320 ;--------------------------------------------------------
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT  (CODE)
                                    323 	.area GSFINAL (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.globl __sdcc_gsinit_startup
                                    326 	.globl __sdcc_program_startup
                                    327 	.globl __start__stack
                                    328 	.globl __mcs51_genXINIT
                                    329 	.globl __mcs51_genXRAMCLEAR
                                    330 	.globl __mcs51_genRAMCLEAR
                                    331 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  332 	ljmp	__sdcc_program_startup
                                    333 ;--------------------------------------------------------
                                    334 ; Home
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area HOME    (CODE)
      000003                        338 __sdcc_program_startup:
      000003 02 02 16         [24]  339 	ljmp	_main
                                    340 ;	return from main will return to caller
                                    341 ;--------------------------------------------------------
                                    342 ; code
                                    343 ;--------------------------------------------------------
                                    344 	.area CSEG    (CODE)
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'keyPressed'
                                    347 ;------------------------------------------------------------
                                    348 ;row                       Allocated with name '_keyPressed_row_65536_1'
                                    349 ;c                         Allocated to registers r4 r5 
                                    350 ;col                       Allocated to registers r2 r3 
                                    351 ;magic                     Allocated to registers r7 r6 
                                    352 ;------------------------------------------------------------
                                    353 ;	main.c:4: short keyPressed(short row) {
                                    354 ;	-----------------------------------------
                                    355 ;	 function keyPressed
                                    356 ;	-----------------------------------------
      000062                        357 _keyPressed:
                           000007   358 	ar7 = 0x07
                           000006   359 	ar6 = 0x06
                           000005   360 	ar5 = 0x05
                           000004   361 	ar4 = 0x04
                           000003   362 	ar3 = 0x03
                           000002   363 	ar2 = 0x02
                           000001   364 	ar1 = 0x01
                           000000   365 	ar0 = 0x00
      000062 85 82 3A         [24]  366 	mov	_keyPressed_row_65536_1,dpl
      000065 85 83 3B         [24]  367 	mov	(_keyPressed_row_65536_1 + 1),dph
                                    368 ;	main.c:5: if((P0 & 0b11110000) != 0b11110000){	//if 按下按鈕
      000068 AC 80            [24]  369 	mov	r4,_P0
      00006A 53 04 F0         [24]  370 	anl	ar4,#0xf0
      00006D 7D 00            [12]  371 	mov	r5,#0x00
      00006F BC F0 05         [24]  372 	cjne	r4,#0xf0,00127$
      000072 BD 00 02         [24]  373 	cjne	r5,#0x00,00127$
      000075 80 56            [24]  374 	sjmp	00105$
      000077                        375 00127$:
                                    376 ;	main.c:6: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      000077 7C 01            [12]  377 	mov	r4,#0x01
      000079 7D 00            [12]  378 	mov	r5,#0x00
      00007B 7A 00            [12]  379 	mov	r2,#0x00
      00007D 7B 00            [12]  380 	mov	r3,#0x00
      00007F 78 00            [12]  381 	mov	r0,#0x00
      000081 79 00            [12]  382 	mov	r1,#0x00
      000083                        383 00107$:
      000083 C3               [12]  384 	clr	c
      000084 E8               [12]  385 	mov	a,r0
      000085 94 04            [12]  386 	subb	a,#0x04
      000087 E9               [12]  387 	mov	a,r1
      000088 64 80            [12]  388 	xrl	a,#0x80
      00008A 94 80            [12]  389 	subb	a,#0x80
      00008C 50 3F            [24]  390 	jnc	00105$
                                    391 ;	main.c:8: `			short magic = ((P0 >> 4) ^ 0b11111111) & 0b00001111;
      00008E E5 80            [12]  392 	mov	a,_P0
      000090 C4               [12]  393 	swap	a
      000091 54 0F            [12]  394 	anl	a,#0x0f
      000093 FF               [12]  395 	mov	r7,a
      000094 63 07 FF         [24]  396 	xrl	ar7,#0xff
      000097 53 07 0F         [24]  397 	anl	ar7,#0x0f
      00009A 7E 00            [12]  398 	mov	r6,#0x00
                                    399 ;	main.c:9: if (magic == c) {
      00009C EF               [12]  400 	mov	a,r7
      00009D B5 04 1C         [24]  401 	cjne	a,ar4,00108$
      0000A0 EE               [12]  402 	mov	a,r6
      0000A1 B5 05 18         [24]  403 	cjne	a,ar5,00108$
                                    404 ;	main.c:10: return row * 4 + col;
      0000A4 E5 3A            [12]  405 	mov	a,_keyPressed_row_65536_1
      0000A6 25 3A            [12]  406 	add	a,_keyPressed_row_65536_1
      0000A8 FE               [12]  407 	mov	r6,a
      0000A9 E5 3B            [12]  408 	mov	a,(_keyPressed_row_65536_1 + 1)
      0000AB 33               [12]  409 	rlc	a
      0000AC FF               [12]  410 	mov	r7,a
      0000AD EE               [12]  411 	mov	a,r6
      0000AE 2E               [12]  412 	add	a,r6
      0000AF FE               [12]  413 	mov	r6,a
      0000B0 EF               [12]  414 	mov	a,r7
      0000B1 33               [12]  415 	rlc	a
      0000B2 FF               [12]  416 	mov	r7,a
      0000B3 EA               [12]  417 	mov	a,r2
      0000B4 2E               [12]  418 	add	a,r6
      0000B5 F5 82            [12]  419 	mov	dpl,a
      0000B7 EB               [12]  420 	mov	a,r3
      0000B8 3F               [12]  421 	addc	a,r7
      0000B9 F5 83            [12]  422 	mov	dph,a
      0000BB 22               [24]  423 	ret
      0000BC                        424 00108$:
                                    425 ;	main.c:6: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      0000BC EC               [12]  426 	mov	a,r4
      0000BD 2C               [12]  427 	add	a,r4
      0000BE FC               [12]  428 	mov	r4,a
      0000BF ED               [12]  429 	mov	a,r5
      0000C0 33               [12]  430 	rlc	a
      0000C1 FD               [12]  431 	mov	r5,a
      0000C2 08               [12]  432 	inc	r0
      0000C3 B8 00 01         [24]  433 	cjne	r0,#0x00,00131$
      0000C6 09               [12]  434 	inc	r1
      0000C7                        435 00131$:
      0000C7 88 02            [24]  436 	mov	ar2,r0
      0000C9 89 03            [24]  437 	mov	ar3,r1
      0000CB 80 B6            [24]  438 	sjmp	00107$
      0000CD                        439 00105$:
                                    440 ;	main.c:14: return -1;	//沒按 return -1
      0000CD 90 FF FF         [24]  441 	mov	dptr,#0xffff
                                    442 ;	main.c:15: }
      0000D0 22               [24]  443 	ret
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'display'
                                    446 ;------------------------------------------------------------
                                    447 ;alpha                     Allocated with name '_display_PARM_2'
                                    448 ;num                       Allocated with name '_display_PARM_3'
                                    449 ;isSetting                 Allocated with name '_display_PARM_4'
                                    450 ;flash_flag                Allocated with name '_display_PARM_5'
                                    451 ;table                     Allocated with name '_display_table_65536_7'
                                    452 ;i                         Allocated to registers r1 r2 
                                    453 ;t                         Allocated with name '_display_t_262144_11'
                                    454 ;j                         Allocated to registers r6 r7 
                                    455 ;i                         Allocated to registers r4 r5 
                                    456 ;t                         Allocated with name '_display_t_196608_16'
                                    457 ;j                         Allocated to registers r6 r7 
                                    458 ;------------------------------------------------------------
                                    459 ;	main.c:17: void display(short table[], short alpha[], short num[], bool isSetting, long flash_flag) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function display
                                    462 ;	-----------------------------------------
      0000D1                        463 _display:
      0000D1 85 82 45         [24]  464 	mov	_display_table_65536_7,dpl
      0000D4 85 83 46         [24]  465 	mov	(_display_table_65536_7 + 1),dph
      0000D7 85 F0 47         [24]  466 	mov	(_display_table_65536_7 + 2),b
                                    467 ;	main.c:18: if (isSetting) {
      0000DA E5 40            [12]  468 	mov	a,_display_PARM_4
      0000DC 70 03            [24]  469 	jnz	00168$
      0000DE 02 01 88         [24]  470 	ljmp	00108$
      0000E1                        471 00168$:
                                    472 ;	main.c:19: if (flash_flag > 7800) { // 頻率
      0000E1 C3               [12]  473 	clr	c
      0000E2 74 78            [12]  474 	mov	a,#0x78
      0000E4 95 41            [12]  475 	subb	a,_display_PARM_5
      0000E6 74 1E            [12]  476 	mov	a,#0x1e
      0000E8 95 42            [12]  477 	subb	a,(_display_PARM_5 + 1)
      0000EA E4               [12]  478 	clr	a
      0000EB 95 43            [12]  479 	subb	a,(_display_PARM_5 + 2)
      0000ED 74 80            [12]  480 	mov	a,#(0x00 ^ 0x80)
      0000EF 85 44 F0         [24]  481 	mov	b,(_display_PARM_5 + 3)
      0000F2 63 F0 80         [24]  482 	xrl	b,#0x80
      0000F5 95 F0            [12]  483 	subb	a,b
      0000F7 40 01            [24]  484 	jc	00169$
      0000F9 22               [24]  485 	ret
      0000FA                        486 00169$:
                                    487 ;	main.c:20: for(short i = 0,t=1; i < 4; i++,t*=2) {
      0000FA 75 48 01         [24]  488 	mov	_display_t_262144_11,#0x01
      0000FD 75 49 00         [24]  489 	mov	(_display_t_262144_11 + 1),#0x00
      000100 79 00            [12]  490 	mov	r1,#0x00
      000102 7A 00            [12]  491 	mov	r2,#0x00
      000104                        492 00114$:
      000104 C3               [12]  493 	clr	c
      000105 E9               [12]  494 	mov	a,r1
      000106 94 04            [12]  495 	subb	a,#0x04
      000108 EA               [12]  496 	mov	a,r2
      000109 64 80            [12]  497 	xrl	a,#0x80
      00010B 94 80            [12]  498 	subb	a,#0x80
      00010D 40 01            [24]  499 	jc	00170$
      00010F 22               [24]  500 	ret
      000110                        501 00170$:
                                    502 ;	main.c:21: P1 = table[i];
      000110 E9               [12]  503 	mov	a,r1
      000111 29               [12]  504 	add	a,r1
      000112 F8               [12]  505 	mov	r0,a
      000113 EA               [12]  506 	mov	a,r2
      000114 33               [12]  507 	rlc	a
      000115 FC               [12]  508 	mov	r4,a
      000116 E8               [12]  509 	mov	a,r0
      000117 25 45            [12]  510 	add	a,_display_table_65536_7
      000119 FB               [12]  511 	mov	r3,a
      00011A EC               [12]  512 	mov	a,r4
      00011B 35 46            [12]  513 	addc	a,(_display_table_65536_7 + 1)
      00011D FE               [12]  514 	mov	r6,a
      00011E AF 47            [24]  515 	mov	r7,(_display_table_65536_7 + 2)
      000120 8B 82            [24]  516 	mov	dpl,r3
      000122 8E 83            [24]  517 	mov	dph,r6
      000124 8F F0            [24]  518 	mov	b,r7
      000126 12 03 A0         [24]  519 	lcall	__gptrget
      000129 F5 90            [12]  520 	mov	_P1,a
                                    521 ;	main.c:22: P2 = alpha[num[i]];
      00012B E8               [12]  522 	mov	a,r0
      00012C 25 3D            [12]  523 	add	a,_display_PARM_3
      00012E F8               [12]  524 	mov	r0,a
      00012F EC               [12]  525 	mov	a,r4
      000130 35 3E            [12]  526 	addc	a,(_display_PARM_3 + 1)
      000132 FC               [12]  527 	mov	r4,a
      000133 AF 3F            [24]  528 	mov	r7,(_display_PARM_3 + 2)
      000135 88 82            [24]  529 	mov	dpl,r0
      000137 8C 83            [24]  530 	mov	dph,r4
      000139 8F F0            [24]  531 	mov	b,r7
      00013B 12 03 A0         [24]  532 	lcall	__gptrget
      00013E F8               [12]  533 	mov	r0,a
      00013F A3               [24]  534 	inc	dptr
      000140 12 03 A0         [24]  535 	lcall	__gptrget
      000143 FC               [12]  536 	mov	r4,a
      000144 E8               [12]  537 	mov	a,r0
      000145 28               [12]  538 	add	a,r0
      000146 F8               [12]  539 	mov	r0,a
      000147 EC               [12]  540 	mov	a,r4
      000148 33               [12]  541 	rlc	a
      000149 FC               [12]  542 	mov	r4,a
      00014A E8               [12]  543 	mov	a,r0
      00014B 25 3A            [12]  544 	add	a,_display_PARM_2
      00014D F8               [12]  545 	mov	r0,a
      00014E EC               [12]  546 	mov	a,r4
      00014F 35 3B            [12]  547 	addc	a,(_display_PARM_2 + 1)
      000151 FC               [12]  548 	mov	r4,a
      000152 AF 3C            [24]  549 	mov	r7,(_display_PARM_2 + 2)
      000154 88 82            [24]  550 	mov	dpl,r0
      000156 8C 83            [24]  551 	mov	dph,r4
      000158 8F F0            [24]  552 	mov	b,r7
      00015A 12 03 A0         [24]  553 	lcall	__gptrget
      00015D F5 A0            [12]  554 	mov	_P2,a
                                    555 ;	main.c:23: for(int j = 0; j < 500; j++){}
      00015F 7E 00            [12]  556 	mov	r6,#0x00
      000161 7F 00            [12]  557 	mov	r7,#0x00
      000163                        558 00111$:
      000163 C3               [12]  559 	clr	c
      000164 EE               [12]  560 	mov	a,r6
      000165 94 F4            [12]  561 	subb	a,#0xf4
      000167 EF               [12]  562 	mov	a,r7
      000168 64 80            [12]  563 	xrl	a,#0x80
      00016A 94 81            [12]  564 	subb	a,#0x81
      00016C 50 07            [24]  565 	jnc	00115$
      00016E 0E               [12]  566 	inc	r6
      00016F BE 00 F1         [24]  567 	cjne	r6,#0x00,00111$
      000172 0F               [12]  568 	inc	r7
      000173 80 EE            [24]  569 	sjmp	00111$
      000175                        570 00115$:
                                    571 ;	main.c:20: for(short i = 0,t=1; i < 4; i++,t*=2) {
      000175 09               [12]  572 	inc	r1
      000176 B9 00 01         [24]  573 	cjne	r1,#0x00,00173$
      000179 0A               [12]  574 	inc	r2
      00017A                        575 00173$:
      00017A E5 48            [12]  576 	mov	a,_display_t_262144_11
      00017C 25 48            [12]  577 	add	a,_display_t_262144_11
      00017E F5 48            [12]  578 	mov	_display_t_262144_11,a
      000180 E5 49            [12]  579 	mov	a,(_display_t_262144_11 + 1)
      000182 33               [12]  580 	rlc	a
      000183 F5 49            [12]  581 	mov	(_display_t_262144_11 + 1),a
      000185 02 01 04         [24]  582 	ljmp	00114$
      000188                        583 00108$:
                                    584 ;	main.c:27: for(short i = 0,t=1; i < 4; i++,t*=2) {
      000188 75 4A 01         [24]  585 	mov	_display_t_196608_16,#0x01
      00018B 75 4B 00         [24]  586 	mov	(_display_t_196608_16 + 1),#0x00
      00018E 7C 00            [12]  587 	mov	r4,#0x00
      000190 7D 00            [12]  588 	mov	r5,#0x00
      000192                        589 00120$:
      000192 C3               [12]  590 	clr	c
      000193 EC               [12]  591 	mov	a,r4
      000194 94 04            [12]  592 	subb	a,#0x04
      000196 ED               [12]  593 	mov	a,r5
      000197 64 80            [12]  594 	xrl	a,#0x80
      000199 94 80            [12]  595 	subb	a,#0x80
      00019B 50 78            [24]  596 	jnc	00122$
                                    597 ;	main.c:28: P1 = table[i];
      00019D EC               [12]  598 	mov	a,r4
      00019E 2C               [12]  599 	add	a,r4
      00019F FA               [12]  600 	mov	r2,a
      0001A0 ED               [12]  601 	mov	a,r5
      0001A1 33               [12]  602 	rlc	a
      0001A2 FB               [12]  603 	mov	r3,a
      0001A3 EA               [12]  604 	mov	a,r2
      0001A4 25 45            [12]  605 	add	a,_display_table_65536_7
      0001A6 F8               [12]  606 	mov	r0,a
      0001A7 EB               [12]  607 	mov	a,r3
      0001A8 35 46            [12]  608 	addc	a,(_display_table_65536_7 + 1)
      0001AA F9               [12]  609 	mov	r1,a
      0001AB AF 47            [24]  610 	mov	r7,(_display_table_65536_7 + 2)
      0001AD 88 82            [24]  611 	mov	dpl,r0
      0001AF 89 83            [24]  612 	mov	dph,r1
      0001B1 8F F0            [24]  613 	mov	b,r7
      0001B3 12 03 A0         [24]  614 	lcall	__gptrget
      0001B6 F5 90            [12]  615 	mov	_P1,a
                                    616 ;	main.c:29: P2 = alpha[num[i]];
      0001B8 EA               [12]  617 	mov	a,r2
      0001B9 25 3D            [12]  618 	add	a,_display_PARM_3
      0001BB FA               [12]  619 	mov	r2,a
      0001BC EB               [12]  620 	mov	a,r3
      0001BD 35 3E            [12]  621 	addc	a,(_display_PARM_3 + 1)
      0001BF FB               [12]  622 	mov	r3,a
      0001C0 AF 3F            [24]  623 	mov	r7,(_display_PARM_3 + 2)
      0001C2 8A 82            [24]  624 	mov	dpl,r2
      0001C4 8B 83            [24]  625 	mov	dph,r3
      0001C6 8F F0            [24]  626 	mov	b,r7
      0001C8 12 03 A0         [24]  627 	lcall	__gptrget
      0001CB FA               [12]  628 	mov	r2,a
      0001CC A3               [24]  629 	inc	dptr
      0001CD 12 03 A0         [24]  630 	lcall	__gptrget
      0001D0 FB               [12]  631 	mov	r3,a
      0001D1 EA               [12]  632 	mov	a,r2
      0001D2 2A               [12]  633 	add	a,r2
      0001D3 FA               [12]  634 	mov	r2,a
      0001D4 EB               [12]  635 	mov	a,r3
      0001D5 33               [12]  636 	rlc	a
      0001D6 FB               [12]  637 	mov	r3,a
      0001D7 EA               [12]  638 	mov	a,r2
      0001D8 25 3A            [12]  639 	add	a,_display_PARM_2
      0001DA FA               [12]  640 	mov	r2,a
      0001DB EB               [12]  641 	mov	a,r3
      0001DC 35 3B            [12]  642 	addc	a,(_display_PARM_2 + 1)
      0001DE FB               [12]  643 	mov	r3,a
      0001DF AF 3C            [24]  644 	mov	r7,(_display_PARM_2 + 2)
      0001E1 8A 82            [24]  645 	mov	dpl,r2
      0001E3 8B 83            [24]  646 	mov	dph,r3
      0001E5 8F F0            [24]  647 	mov	b,r7
      0001E7 12 03 A0         [24]  648 	lcall	__gptrget
      0001EA F5 A0            [12]  649 	mov	_P2,a
                                    650 ;	main.c:30: for(int j = 0; j < 1000; j++){}
      0001EC 7E 00            [12]  651 	mov	r6,#0x00
      0001EE 7F 00            [12]  652 	mov	r7,#0x00
      0001F0                        653 00117$:
      0001F0 C3               [12]  654 	clr	c
      0001F1 EE               [12]  655 	mov	a,r6
      0001F2 94 E8            [12]  656 	subb	a,#0xe8
      0001F4 EF               [12]  657 	mov	a,r7
      0001F5 64 80            [12]  658 	xrl	a,#0x80
      0001F7 94 83            [12]  659 	subb	a,#0x83
      0001F9 50 07            [24]  660 	jnc	00121$
      0001FB 0E               [12]  661 	inc	r6
      0001FC BE 00 F1         [24]  662 	cjne	r6,#0x00,00117$
      0001FF 0F               [12]  663 	inc	r7
      000200 80 EE            [24]  664 	sjmp	00117$
      000202                        665 00121$:
                                    666 ;	main.c:27: for(short i = 0,t=1; i < 4; i++,t*=2) {
      000202 0C               [12]  667 	inc	r4
      000203 BC 00 01         [24]  668 	cjne	r4,#0x00,00177$
      000206 0D               [12]  669 	inc	r5
      000207                        670 00177$:
      000207 E5 4A            [12]  671 	mov	a,_display_t_196608_16
      000209 25 4A            [12]  672 	add	a,_display_t_196608_16
      00020B F5 4A            [12]  673 	mov	_display_t_196608_16,a
      00020D E5 4B            [12]  674 	mov	a,(_display_t_196608_16 + 1)
      00020F 33               [12]  675 	rlc	a
      000210 F5 4B            [12]  676 	mov	(_display_t_196608_16 + 1),a
      000212 02 01 92         [24]  677 	ljmp	00120$
      000215                        678 00122$:
                                    679 ;	main.c:33: }
      000215 22               [24]  680 	ret
                                    681 ;------------------------------------------------------------
                                    682 ;Allocation info for local variables in function 'main'
                                    683 ;------------------------------------------------------------
                                    684 ;previous                  Allocated with name '_main_previous_65536_20'
                                    685 ;row                       Allocated with name '_main_row_65536_20'
                                    686 ;count                     Allocated with name '_main_count_65536_20'
                                    687 ;num                       Allocated with name '_main_num_65536_20'
                                    688 ;alpha                     Allocated with name '_main_alpha_65536_20'
                                    689 ;table                     Allocated with name '_main_table_65536_20'
                                    690 ;index                     Allocated with name '_main_index_65537_21'
                                    691 ;flash_flag                Allocated with name '_main_flash_flag_65537_21'
                                    692 ;isSetting                 Allocated to registers r3 
                                    693 ;key                       Allocated to registers r6 r7 
                                    694 ;------------------------------------------------------------
                                    695 ;	main.c:36: int main() {
                                    696 ;	-----------------------------------------
                                    697 ;	 function main
                                    698 ;	-----------------------------------------
      000216                        699 _main:
                                    700 ;	main.c:46: short previous = -1;
      000216 75 08 FF         [24]  701 	mov	_main_previous_65536_20,#0xff
      000219 75 09 FF         [24]  702 	mov	(_main_previous_65536_20 + 1),#0xff
                                    703 ;	main.c:47: short row = 0;
      00021C E4               [12]  704 	clr	a
      00021D F5 0A            [12]  705 	mov	_main_row_65536_20,a
      00021F F5 0B            [12]  706 	mov	(_main_row_65536_20 + 1),a
                                    707 ;	main.c:48: short count = 1;
      000221 75 0C 01         [24]  708 	mov	_main_count_65536_20,#0x01
                                    709 ;	1-genFromRTrack replaced	mov	(_main_count_65536_20 + 1),#0x00
      000224 F5 0D            [12]  710 	mov	(_main_count_65536_20 + 1),a
                                    711 ;	main.c:49: short num[4] = {0};
      000226 F5 0E            [12]  712 	mov	(_main_num_65536_20 + 0),a
      000228 F5 0F            [12]  713 	mov	(_main_num_65536_20 + 1),a
      00022A F5 10            [12]  714 	mov	((_main_num_65536_20 + 0x0002) + 0),a
      00022C F5 11            [12]  715 	mov	((_main_num_65536_20 + 0x0002) + 1),a
      00022E F5 12            [12]  716 	mov	((_main_num_65536_20 + 0x0004) + 0),a
      000230 F5 13            [12]  717 	mov	((_main_num_65536_20 + 0x0004) + 1),a
      000232 F5 14            [12]  718 	mov	((_main_num_65536_20 + 0x0006) + 0),a
      000234 F5 15            [12]  719 	mov	((_main_num_65536_20 + 0x0006) + 1),a
                                    720 ;	main.c:50: const short alpha[11] = {
      000236 75 16 03         [24]  721 	mov	(_main_alpha_65536_20 + 0),#0x03
                                    722 ;	1-genFromRTrack replaced	mov	(_main_alpha_65536_20 + 1),#0x00
      000239 F5 17            [12]  723 	mov	(_main_alpha_65536_20 + 1),a
      00023B 75 18 9F         [24]  724 	mov	((_main_alpha_65536_20 + 0x0002) + 0),#0x9f
                                    725 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x0002) + 1),#0x00
      00023E F5 19            [12]  726 	mov	((_main_alpha_65536_20 + 0x0002) + 1),a
      000240 75 1A 25         [24]  727 	mov	((_main_alpha_65536_20 + 0x0004) + 0),#0x25
                                    728 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x0004) + 1),#0x00
      000243 F5 1B            [12]  729 	mov	((_main_alpha_65536_20 + 0x0004) + 1),a
      000245 75 1C 0D         [24]  730 	mov	((_main_alpha_65536_20 + 0x0006) + 0),#0x0d
                                    731 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x0006) + 1),#0x00
      000248 F5 1D            [12]  732 	mov	((_main_alpha_65536_20 + 0x0006) + 1),a
      00024A 75 1E 99         [24]  733 	mov	((_main_alpha_65536_20 + 0x0008) + 0),#0x99
                                    734 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x0008) + 1),#0x00
      00024D F5 1F            [12]  735 	mov	((_main_alpha_65536_20 + 0x0008) + 1),a
      00024F 75 20 49         [24]  736 	mov	((_main_alpha_65536_20 + 0x000a) + 0),#0x49
                                    737 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x000a) + 1),#0x00
      000252 F5 21            [12]  738 	mov	((_main_alpha_65536_20 + 0x000a) + 1),a
      000254 75 22 41         [24]  739 	mov	((_main_alpha_65536_20 + 0x000c) + 0),#0x41
                                    740 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x000c) + 1),#0x00
      000257 F5 23            [12]  741 	mov	((_main_alpha_65536_20 + 0x000c) + 1),a
      000259 75 24 1F         [24]  742 	mov	((_main_alpha_65536_20 + 0x000e) + 0),#0x1f
                                    743 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x000e) + 1),#0x00
      00025C F5 25            [12]  744 	mov	((_main_alpha_65536_20 + 0x000e) + 1),a
      00025E 75 26 01         [24]  745 	mov	((_main_alpha_65536_20 + 0x0010) + 0),#0x01
                                    746 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x0010) + 1),#0x00
      000261 F5 27            [12]  747 	mov	((_main_alpha_65536_20 + 0x0010) + 1),a
      000263 75 28 09         [24]  748 	mov	((_main_alpha_65536_20 + 0x0012) + 0),#0x09
                                    749 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x0012) + 1),#0x00
      000266 F5 29            [12]  750 	mov	((_main_alpha_65536_20 + 0x0012) + 1),a
      000268 75 2A FF         [24]  751 	mov	((_main_alpha_65536_20 + 0x0014) + 0),#0xff
                                    752 ;	1-genFromRTrack replaced	mov	((_main_alpha_65536_20 + 0x0014) + 1),#0x00
      00026B F5 2B            [12]  753 	mov	((_main_alpha_65536_20 + 0x0014) + 1),a
                                    754 ;	main.c:63: const short table[4] = {
      00026D 75 2C FE         [24]  755 	mov	(_main_table_65536_20 + 0),#0xfe
                                    756 ;	1-genFromRTrack replaced	mov	(_main_table_65536_20 + 1),#0x00
      000270 F5 2D            [12]  757 	mov	(_main_table_65536_20 + 1),a
      000272 75 2E FD         [24]  758 	mov	((_main_table_65536_20 + 0x0002) + 0),#0xfd
                                    759 ;	1-genFromRTrack replaced	mov	((_main_table_65536_20 + 0x0002) + 1),#0x00
      000275 F5 2F            [12]  760 	mov	((_main_table_65536_20 + 0x0002) + 1),a
      000277 75 30 FB         [24]  761 	mov	((_main_table_65536_20 + 0x0004) + 0),#0xfb
                                    762 ;	1-genFromRTrack replaced	mov	((_main_table_65536_20 + 0x0004) + 1),#0x00
      00027A F5 31            [12]  763 	mov	((_main_table_65536_20 + 0x0004) + 1),a
      00027C 75 32 F7         [24]  764 	mov	((_main_table_65536_20 + 0x0006) + 0),#0xf7
                                    765 ;	1-genFromRTrack replaced	mov	((_main_table_65536_20 + 0x0006) + 1),#0x00
      00027F F5 33            [12]  766 	mov	((_main_table_65536_20 + 0x0006) + 1),a
                                    767 ;	main.c:69: P0 = 0b00001111;
      000281 75 80 0F         [24]  768 	mov	_P0,#0x0f
                                    769 ;	main.c:70: short index = 0;
      000284 F5 34            [12]  770 	mov	_main_index_65537_21,a
      000286 F5 35            [12]  771 	mov	(_main_index_65537_21 + 1),a
                                    772 ;	main.c:71: long flash_flag = 0;
      000288 F5 36            [12]  773 	mov	_main_flash_flag_65537_21,a
      00028A F5 37            [12]  774 	mov	(_main_flash_flag_65537_21 + 1),a
      00028C F5 38            [12]  775 	mov	(_main_flash_flag_65537_21 + 2),a
      00028E F5 39            [12]  776 	mov	(_main_flash_flag_65537_21 + 3),a
                                    777 ;	main.c:72: bool isSetting = false;
      000290 7B 00            [12]  778 	mov	r3,#0x00
                                    779 ;	main.c:74: while (1) {
      000292                        780 00120$:
                                    781 ;	main.c:75: flash_flag++;
      000292 05 36            [12]  782 	inc	_main_flash_flag_65537_21
      000294 E4               [12]  783 	clr	a
      000295 B5 36 0C         [24]  784 	cjne	a,_main_flash_flag_65537_21,00168$
      000298 05 37            [12]  785 	inc	(_main_flash_flag_65537_21 + 1)
      00029A B5 37 07         [24]  786 	cjne	a,(_main_flash_flag_65537_21 + 1),00168$
      00029D 05 38            [12]  787 	inc	(_main_flash_flag_65537_21 + 2)
      00029F B5 38 02         [24]  788 	cjne	a,(_main_flash_flag_65537_21 + 2),00168$
      0002A2 05 39            [12]  789 	inc	(_main_flash_flag_65537_21 + 3)
      0002A4                        790 00168$:
                                    791 ;	main.c:76: if (flash_flag >= 8000)  // 頻率
      0002A4 C3               [12]  792 	clr	c
      0002A5 E5 36            [12]  793 	mov	a,_main_flash_flag_65537_21
      0002A7 94 40            [12]  794 	subb	a,#0x40
      0002A9 E5 37            [12]  795 	mov	a,(_main_flash_flag_65537_21 + 1)
      0002AB 94 1F            [12]  796 	subb	a,#0x1f
      0002AD E5 38            [12]  797 	mov	a,(_main_flash_flag_65537_21 + 2)
      0002AF 94 00            [12]  798 	subb	a,#0x00
      0002B1 E5 39            [12]  799 	mov	a,(_main_flash_flag_65537_21 + 3)
      0002B3 64 80            [12]  800 	xrl	a,#0x80
      0002B5 94 80            [12]  801 	subb	a,#0x80
      0002B7 40 09            [24]  802 	jc	00102$
                                    803 ;	main.c:77: flash_flag = 0;
      0002B9 E4               [12]  804 	clr	a
      0002BA F5 36            [12]  805 	mov	_main_flash_flag_65537_21,a
      0002BC F5 37            [12]  806 	mov	(_main_flash_flag_65537_21 + 1),a
      0002BE F5 38            [12]  807 	mov	(_main_flash_flag_65537_21 + 2),a
      0002C0 F5 39            [12]  808 	mov	(_main_flash_flag_65537_21 + 3),a
      0002C2                        809 00102$:
                                    810 ;	main.c:78: P0     =count^0b11111111;
      0002C2 74 FF            [12]  811 	mov	a,#0xff
      0002C4 65 0C            [12]  812 	xrl	a,_main_count_65536_20
      0002C6 FA               [12]  813 	mov	r2,a
      0002C7 8A 80            [24]  814 	mov	_P0,r2
                                    815 ;	main.c:79: count *=2; //shift
      0002C9 E5 0C            [12]  816 	mov	a,_main_count_65536_20
      0002CB 25 0C            [12]  817 	add	a,_main_count_65536_20
      0002CD F5 0C            [12]  818 	mov	_main_count_65536_20,a
      0002CF E5 0D            [12]  819 	mov	a,(_main_count_65536_20 + 1)
      0002D1 33               [12]  820 	rlc	a
      0002D2 F5 0D            [12]  821 	mov	(_main_count_65536_20 + 1),a
                                    822 ;	main.c:80: short key = keyPressed(row);
      0002D4 85 0A 82         [24]  823 	mov	dpl,_main_row_65536_20
      0002D7 85 0B 83         [24]  824 	mov	dph,(_main_row_65536_20 + 1)
      0002DA C0 03            [24]  825 	push	ar3
      0002DC 12 00 62         [24]  826 	lcall	_keyPressed
      0002DF AE 82            [24]  827 	mov	r6,dpl
      0002E1 AF 83            [24]  828 	mov	r7,dph
      0002E3 D0 03            [24]  829 	pop	ar3
                                    830 ;	main.c:81: if (key != previous && key != -1) {	//有按且不等於上一按 => 處理debounce
      0002E5 EE               [12]  831 	mov	a,r6
      0002E6 B5 08 06         [24]  832 	cjne	a,_main_previous_65536_20,00170$
      0002E9 EF               [12]  833 	mov	a,r7
      0002EA B5 09 02         [24]  834 	cjne	a,(_main_previous_65536_20 + 1),00170$
      0002ED 80 5F            [24]  835 	sjmp	00115$
      0002EF                        836 00170$:
      0002EF BE FF 05         [24]  837 	cjne	r6,#0xff,00171$
      0002F2 BF FF 02         [24]  838 	cjne	r7,#0xff,00171$
      0002F5 80 57            [24]  839 	sjmp	00115$
      0002F7                        840 00171$:
                                    841 ;	main.c:82: previous = key;
      0002F7 8E 08            [24]  842 	mov	_main_previous_65536_20,r6
      0002F9 8F 09            [24]  843 	mov	(_main_previous_65536_20 + 1),r7
                                    844 ;	main.c:87: if (key == 10) { // key == A, 設定模式
      0002FB BE 0A 05         [24]  845 	cjne	r6,#0x0a,00104$
      0002FE BF 00 02         [24]  846 	cjne	r7,#0x00,00104$
                                    847 ;	main.c:88: isSetting = true;
      000301 7B 01            [12]  848 	mov	r3,#0x01
      000303                        849 00104$:
                                    850 ;	main.c:90: if (key == 11) {
      000303 BE 0B 05         [24]  851 	cjne	r6,#0x0b,00106$
      000306 BF 00 02         [24]  852 	cjne	r7,#0x00,00106$
                                    853 ;	main.c:91: isSetting = false;
      000309 7B 00            [12]  854 	mov	r3,#0x00
      00030B                        855 00106$:
                                    856 ;	main.c:93: if (isSetting) {
      00030B EB               [12]  857 	mov	a,r3
      00030C 60 40            [24]  858 	jz	00115$
                                    859 ;	main.c:95: if (key >= 0 && key <= 9)
      00030E EF               [12]  860 	mov	a,r7
      00030F 20 E7 2A         [24]  861 	jb	acc.7,00108$
      000312 C3               [12]  862 	clr	c
      000313 74 09            [12]  863 	mov	a,#0x09
      000315 9E               [12]  864 	subb	a,r6
      000316 74 80            [12]  865 	mov	a,#(0x00 ^ 0x80)
      000318 8F F0            [24]  866 	mov	b,r7
      00031A 63 F0 80         [24]  867 	xrl	b,#0x80
      00031D 95 F0            [12]  868 	subb	a,b
      00031F 40 1B            [24]  869 	jc	00108$
                                    870 ;	main.c:96: num[index++] = key;
      000321 AC 34            [24]  871 	mov	r4,_main_index_65537_21
      000323 AD 35            [24]  872 	mov	r5,(_main_index_65537_21 + 1)
      000325 05 34            [12]  873 	inc	_main_index_65537_21
      000327 E4               [12]  874 	clr	a
      000328 B5 34 02         [24]  875 	cjne	a,_main_index_65537_21,00179$
      00032B 05 35            [12]  876 	inc	(_main_index_65537_21 + 1)
      00032D                        877 00179$:
      00032D EC               [12]  878 	mov	a,r4
      00032E 2C               [12]  879 	add	a,r4
      00032F FC               [12]  880 	mov	r4,a
      000330 ED               [12]  881 	mov	a,r5
      000331 33               [12]  882 	rlc	a
      000332 FD               [12]  883 	mov	r5,a
      000333 EC               [12]  884 	mov	a,r4
      000334 24 0E            [12]  885 	add	a,#_main_num_65536_20
      000336 F8               [12]  886 	mov	r0,a
      000337 A6 06            [24]  887 	mov	@r0,ar6
      000339 08               [12]  888 	inc	r0
      00033A A6 07            [24]  889 	mov	@r0,ar7
      00033C                        890 00108$:
                                    891 ;	main.c:97: if (index == 4) index = 0;
      00033C 74 04            [12]  892 	mov	a,#0x04
      00033E B5 34 06         [24]  893 	cjne	a,_main_index_65537_21,00180$
      000341 E4               [12]  894 	clr	a
      000342 B5 35 02         [24]  895 	cjne	a,(_main_index_65537_21 + 1),00180$
      000345 80 02            [24]  896 	sjmp	00181$
      000347                        897 00180$:
      000347 80 05            [24]  898 	sjmp	00115$
      000349                        899 00181$:
      000349 E4               [12]  900 	clr	a
      00034A F5 34            [12]  901 	mov	_main_index_65537_21,a
      00034C F5 35            [12]  902 	mov	(_main_index_65537_21 + 1),a
      00034E                        903 00115$:
                                    904 ;	main.c:102: row++;
      00034E 05 0A            [12]  905 	inc	_main_row_65536_20
      000350 E4               [12]  906 	clr	a
      000351 B5 0A 02         [24]  907 	cjne	a,_main_row_65536_20,00182$
      000354 05 0B            [12]  908 	inc	(_main_row_65536_20 + 1)
      000356                        909 00182$:
                                    910 ;	main.c:103: if (count == 0x10) {	//用count從上往下掃 
      000356 74 10            [12]  911 	mov	a,#0x10
      000358 B5 0C 06         [24]  912 	cjne	a,_main_count_65536_20,00183$
      00035B E4               [12]  913 	clr	a
      00035C B5 0D 02         [24]  914 	cjne	a,(_main_count_65536_20 + 1),00183$
      00035F 80 02            [24]  915 	sjmp	00184$
      000361                        916 00183$:
      000361 80 0D            [24]  917 	sjmp	00118$
      000363                        918 00184$:
                                    919 ;	main.c:104: count = 1;
      000363 75 0C 01         [24]  920 	mov	_main_count_65536_20,#0x01
                                    921 ;	main.c:105: row   = 0;
      000366 E4               [12]  922 	clr	a
      000367 F5 0D            [12]  923 	mov	(_main_count_65536_20 + 1),a
      000369 F5 0A            [12]  924 	mov	_main_row_65536_20,a
      00036B F5 0B            [12]  925 	mov	(_main_row_65536_20 + 1),a
                                    926 ;	main.c:106: P1 = 0b11111111;
      00036D 75 90 FF         [24]  927 	mov	_P1,#0xff
      000370                        928 00118$:
                                    929 ;	main.c:108: display(table, alpha, num, isSetting, flash_flag);
      000370 75 3A 16         [24]  930 	mov	_display_PARM_2,#_main_alpha_65536_20
      000373 75 3B 00         [24]  931 	mov	(_display_PARM_2 + 1),#0x00
      000376 75 3C 40         [24]  932 	mov	(_display_PARM_2 + 2),#0x40
      000379 75 3D 0E         [24]  933 	mov	_display_PARM_3,#_main_num_65536_20
      00037C 75 3E 00         [24]  934 	mov	(_display_PARM_3 + 1),#0x00
      00037F 75 3F 40         [24]  935 	mov	(_display_PARM_3 + 2),#0x40
      000382 8B 40            [24]  936 	mov	_display_PARM_4,r3
      000384 85 36 41         [24]  937 	mov	_display_PARM_5,_main_flash_flag_65537_21
      000387 85 37 42         [24]  938 	mov	(_display_PARM_5 + 1),(_main_flash_flag_65537_21 + 1)
      00038A 85 38 43         [24]  939 	mov	(_display_PARM_5 + 2),(_main_flash_flag_65537_21 + 2)
      00038D 85 39 44         [24]  940 	mov	(_display_PARM_5 + 3),(_main_flash_flag_65537_21 + 3)
      000390 90 00 2C         [24]  941 	mov	dptr,#_main_table_65536_20
      000393 75 F0 40         [24]  942 	mov	b,#0x40
      000396 C0 03            [24]  943 	push	ar3
      000398 12 00 D1         [24]  944 	lcall	_display
      00039B D0 03            [24]  945 	pop	ar3
                                    946 ;	main.c:111: }
      00039D 02 02 92         [24]  947 	ljmp	00120$
                                    948 	.area CSEG    (CODE)
                                    949 	.area CONST   (CODE)
                                    950 	.area XINIT   (CODE)
                                    951 	.area CABS    (ABS,CODE)
