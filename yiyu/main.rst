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
                                     16 	.globl _check_sound_trigger
                                     17 	.globl _display
                                     18 	.globl _keyPressed
                                     19 	.globl _timer1
                                     20 	.globl _timer_isr
                                     21 	.globl _run_clock
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _counter
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        231 	.ds 8
                                    232 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        233 	.ds 8
                                    234 ;--------------------------------------------------------
                                    235 ; internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area DSEG    (DATA)
      000018                        238 _counter::
      000018                        239 	.ds 2
      00001A                        240 _main_previous_65537_32:
      00001A                        241 	.ds 2
      00001C                        242 _main_row_65537_32:
      00001C                        243 	.ds 2
      00001E                        244 _main_count_65537_32:
      00001E                        245 	.ds 2
      000020                        246 _main_num_65537_32:
      000020                        247 	.ds 8
      000028                        248 _main_num_bi_65537_32:
      000028                        249 	.ds 8
      000030                        250 _main_alpha_65537_32:
      000030                        251 	.ds 22
      000046                        252 _main_table_65537_32:
      000046                        253 	.ds 8
      00004E                        254 _main_index_65538_33:
      00004E                        255 	.ds 2
      000050                        256 _main_flash_flag_65538_33:
      000050                        257 	.ds 4
                                    258 ;--------------------------------------------------------
                                    259 ; overlayable items in internal ram 
                                    260 ;--------------------------------------------------------
                                    261 	.area	OSEG    (OVR,DATA)
      000054                        262 _run_clock_sloc0_1_0:
      000054                        263 	.ds 3
                                    264 	.area	OSEG    (OVR,DATA)
      000054                        265 _keyPressed_row_65536_11:
      000054                        266 	.ds 2
                                    267 	.area	OSEG    (OVR,DATA)
      000054                        268 _display_PARM_2:
      000054                        269 	.ds 3
      000057                        270 _display_PARM_3:
      000057                        271 	.ds 3
      00005A                        272 _display_PARM_4:
      00005A                        273 	.ds 1
      00005B                        274 _display_PARM_5:
      00005B                        275 	.ds 4
      00005F                        276 _display_table_65536_17:
      00005F                        277 	.ds 3
      000062                        278 _display_t_262144_21:
      000062                        279 	.ds 2
      000064                        280 _display_t_196608_26:
      000064                        281 	.ds 2
                                    282 ;--------------------------------------------------------
                                    283 ; Stack segment in internal ram 
                                    284 ;--------------------------------------------------------
                                    285 	.area	SSEG
      000066                        286 __start__stack:
      000066                        287 	.ds	1
                                    288 
                                    289 ;--------------------------------------------------------
                                    290 ; indirectly addressable internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area ISEG    (DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; absolute internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area IABS    (ABS,DATA)
                                    297 	.area IABS    (ABS,DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; bit data
                                    300 ;--------------------------------------------------------
                                    301 	.area BSEG    (BIT)
                                    302 ;--------------------------------------------------------
                                    303 ; paged external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area PSEG    (PAG,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XSEG    (XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; absolute external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XABS    (ABS,XDATA)
                                    314 ;--------------------------------------------------------
                                    315 ; external initialized ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area XISEG   (XDATA)
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT0 (CODE)
                                    320 	.area GSINIT1 (CODE)
                                    321 	.area GSINIT2 (CODE)
                                    322 	.area GSINIT3 (CODE)
                                    323 	.area GSINIT4 (CODE)
                                    324 	.area GSINIT5 (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area CSEG    (CODE)
                                    328 ;--------------------------------------------------------
                                    329 ; interrupt vector 
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
      000000                        332 __interrupt_vect:
      000000 02 00 21         [24]  333 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  334 	reti
      000004                        335 	.ds	7
      00000B 02 01 9F         [24]  336 	ljmp	_timer_isr
      00000E                        337 	.ds	5
      000013 32               [24]  338 	reti
      000014                        339 	.ds	7
      00001B 02 01 B6         [24]  340 	ljmp	_timer1
                                    341 ;--------------------------------------------------------
                                    342 ; global & static initialisations
                                    343 ;--------------------------------------------------------
                                    344 	.area HOME    (CODE)
                                    345 	.area GSINIT  (CODE)
                                    346 	.area GSFINAL (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.globl __sdcc_gsinit_startup
                                    349 	.globl __sdcc_program_startup
                                    350 	.globl __start__stack
                                    351 	.globl __mcs51_genXINIT
                                    352 	.globl __mcs51_genXRAMCLEAR
                                    353 	.globl __mcs51_genRAMCLEAR
                                    354 ;	main.c:5: short counter = 0;
      00007A E4               [12]  355 	clr	a
      00007B F5 18            [12]  356 	mov	_counter,a
      00007D F5 19            [12]  357 	mov	(_counter + 1),a
                                    358 	.area GSFINAL (CODE)
      00007F 02 00 1E         [24]  359 	ljmp	__sdcc_program_startup
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
      00001E                        365 __sdcc_program_startup:
      00001E 02 03 7C         [24]  366 	ljmp	_main
                                    367 ;	return from main will return to caller
                                    368 ;--------------------------------------------------------
                                    369 ; code
                                    370 ;--------------------------------------------------------
                                    371 	.area CSEG    (CODE)
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'run_clock'
                                    374 ;------------------------------------------------------------
                                    375 ;num                       Allocated to registers r5 r6 r7 
                                    376 ;sloc0                     Allocated with name '_run_clock_sloc0_1_0'
                                    377 ;------------------------------------------------------------
                                    378 ;	main.c:8: void run_clock(short num[]) {
                                    379 ;	-----------------------------------------
                                    380 ;	 function run_clock
                                    381 ;	-----------------------------------------
      000082                        382 _run_clock:
                           000007   383 	ar7 = 0x07
                           000006   384 	ar6 = 0x06
                           000005   385 	ar5 = 0x05
                           000004   386 	ar4 = 0x04
                           000003   387 	ar3 = 0x03
                           000002   388 	ar2 = 0x02
                           000001   389 	ar1 = 0x01
                           000000   390 	ar0 = 0x00
      000082 AD 82            [24]  391 	mov	r5,dpl
      000084 AE 83            [24]  392 	mov	r6,dph
      000086 AF F0            [24]  393 	mov	r7,b
                                    394 ;	main.c:9: if (counter >= 20) {
      000088 C3               [12]  395 	clr	c
      000089 E5 18            [12]  396 	mov	a,_counter
      00008B 94 14            [12]  397 	subb	a,#0x14
      00008D E5 19            [12]  398 	mov	a,(_counter + 1)
      00008F 64 80            [12]  399 	xrl	a,#0x80
      000091 94 80            [12]  400 	subb	a,#0x80
      000093 50 01            [24]  401 	jnc	00127$
      000095 22               [24]  402 	ret
      000096                        403 00127$:
                                    404 ;	main.c:10: num[3]++;
      000096 74 06            [12]  405 	mov	a,#0x06
      000098 2D               [12]  406 	add	a,r5
      000099 FA               [12]  407 	mov	r2,a
      00009A E4               [12]  408 	clr	a
      00009B 3E               [12]  409 	addc	a,r6
      00009C FB               [12]  410 	mov	r3,a
      00009D 8F 04            [24]  411 	mov	ar4,r7
      00009F 8A 82            [24]  412 	mov	dpl,r2
      0000A1 8B 83            [24]  413 	mov	dph,r3
      0000A3 8C F0            [24]  414 	mov	b,r4
      0000A5 12 06 30         [24]  415 	lcall	__gptrget
      0000A8 F8               [12]  416 	mov	r0,a
      0000A9 A3               [24]  417 	inc	dptr
      0000AA 12 06 30         [24]  418 	lcall	__gptrget
      0000AD F9               [12]  419 	mov	r1,a
      0000AE 08               [12]  420 	inc	r0
      0000AF B8 00 01         [24]  421 	cjne	r0,#0x00,00128$
      0000B2 09               [12]  422 	inc	r1
      0000B3                        423 00128$:
      0000B3 8A 82            [24]  424 	mov	dpl,r2
      0000B5 8B 83            [24]  425 	mov	dph,r3
      0000B7 8C F0            [24]  426 	mov	b,r4
      0000B9 E8               [12]  427 	mov	a,r0
      0000BA 12 06 15         [24]  428 	lcall	__gptrput
      0000BD A3               [24]  429 	inc	dptr
      0000BE E9               [12]  430 	mov	a,r1
      0000BF 12 06 15         [24]  431 	lcall	__gptrput
                                    432 ;	main.c:11: counter = 0;
      0000C2 E4               [12]  433 	clr	a
      0000C3 F5 18            [12]  434 	mov	_counter,a
      0000C5 F5 19            [12]  435 	mov	(_counter + 1),a
                                    436 ;	main.c:12: if (num[3] == 10) {
      0000C7 8A 82            [24]  437 	mov	dpl,r2
      0000C9 8B 83            [24]  438 	mov	dph,r3
      0000CB 8C F0            [24]  439 	mov	b,r4
      0000CD 12 06 30         [24]  440 	lcall	__gptrget
      0000D0 F8               [12]  441 	mov	r0,a
      0000D1 A3               [24]  442 	inc	dptr
      0000D2 12 06 30         [24]  443 	lcall	__gptrget
      0000D5 F9               [12]  444 	mov	r1,a
      0000D6 B8 0A 05         [24]  445 	cjne	r0,#0x0a,00129$
      0000D9 B9 00 02         [24]  446 	cjne	r1,#0x00,00129$
      0000DC 80 01            [24]  447 	sjmp	00130$
      0000DE                        448 00129$:
      0000DE 22               [24]  449 	ret
      0000DF                        450 00130$:
                                    451 ;	main.c:13: num[3] = 0;
      0000DF 8A 82            [24]  452 	mov	dpl,r2
      0000E1 8B 83            [24]  453 	mov	dph,r3
      0000E3 8C F0            [24]  454 	mov	b,r4
      0000E5 E4               [12]  455 	clr	a
      0000E6 12 06 15         [24]  456 	lcall	__gptrput
      0000E9 A3               [24]  457 	inc	dptr
      0000EA 12 06 15         [24]  458 	lcall	__gptrput
                                    459 ;	main.c:14: num[2]++;
      0000ED 74 04            [12]  460 	mov	a,#0x04
      0000EF 2D               [12]  461 	add	a,r5
      0000F0 FA               [12]  462 	mov	r2,a
      0000F1 E4               [12]  463 	clr	a
      0000F2 3E               [12]  464 	addc	a,r6
      0000F3 FB               [12]  465 	mov	r3,a
      0000F4 8F 04            [24]  466 	mov	ar4,r7
      0000F6 8A 82            [24]  467 	mov	dpl,r2
      0000F8 8B 83            [24]  468 	mov	dph,r3
      0000FA 8C F0            [24]  469 	mov	b,r4
      0000FC 12 06 30         [24]  470 	lcall	__gptrget
      0000FF F8               [12]  471 	mov	r0,a
      000100 A3               [24]  472 	inc	dptr
      000101 12 06 30         [24]  473 	lcall	__gptrget
      000104 F9               [12]  474 	mov	r1,a
      000105 08               [12]  475 	inc	r0
      000106 B8 00 01         [24]  476 	cjne	r0,#0x00,00131$
      000109 09               [12]  477 	inc	r1
      00010A                        478 00131$:
      00010A 8A 82            [24]  479 	mov	dpl,r2
      00010C 8B 83            [24]  480 	mov	dph,r3
      00010E 8C F0            [24]  481 	mov	b,r4
      000110 E8               [12]  482 	mov	a,r0
      000111 12 06 15         [24]  483 	lcall	__gptrput
      000114 A3               [24]  484 	inc	dptr
      000115 E9               [12]  485 	mov	a,r1
      000116 12 06 15         [24]  486 	lcall	__gptrput
                                    487 ;	main.c:15: if (num[2] == 6) {
      000119 B8 06 05         [24]  488 	cjne	r0,#0x06,00132$
      00011C B9 00 02         [24]  489 	cjne	r1,#0x00,00132$
      00011F 80 01            [24]  490 	sjmp	00133$
      000121                        491 00132$:
      000121 22               [24]  492 	ret
      000122                        493 00133$:
                                    494 ;	main.c:16: num[1]++;
      000122 74 02            [12]  495 	mov	a,#0x02
      000124 2D               [12]  496 	add	a,r5
      000125 F5 54            [12]  497 	mov	_run_clock_sloc0_1_0,a
      000127 E4               [12]  498 	clr	a
      000128 3E               [12]  499 	addc	a,r6
      000129 F5 55            [12]  500 	mov	(_run_clock_sloc0_1_0 + 1),a
      00012B 8F 56            [24]  501 	mov	(_run_clock_sloc0_1_0 + 2),r7
      00012D 85 54 82         [24]  502 	mov	dpl,_run_clock_sloc0_1_0
      000130 85 55 83         [24]  503 	mov	dph,(_run_clock_sloc0_1_0 + 1)
      000133 85 56 F0         [24]  504 	mov	b,(_run_clock_sloc0_1_0 + 2)
      000136 12 06 30         [24]  505 	lcall	__gptrget
      000139 F8               [12]  506 	mov	r0,a
      00013A A3               [24]  507 	inc	dptr
      00013B 12 06 30         [24]  508 	lcall	__gptrget
      00013E F9               [12]  509 	mov	r1,a
      00013F 08               [12]  510 	inc	r0
      000140 B8 00 01         [24]  511 	cjne	r0,#0x00,00134$
      000143 09               [12]  512 	inc	r1
      000144                        513 00134$:
      000144 85 54 82         [24]  514 	mov	dpl,_run_clock_sloc0_1_0
      000147 85 55 83         [24]  515 	mov	dph,(_run_clock_sloc0_1_0 + 1)
      00014A 85 56 F0         [24]  516 	mov	b,(_run_clock_sloc0_1_0 + 2)
      00014D E8               [12]  517 	mov	a,r0
      00014E 12 06 15         [24]  518 	lcall	__gptrput
      000151 A3               [24]  519 	inc	dptr
      000152 E9               [12]  520 	mov	a,r1
      000153 12 06 15         [24]  521 	lcall	__gptrput
                                    522 ;	main.c:17: num[2] = 0;
      000156 8A 82            [24]  523 	mov	dpl,r2
      000158 8B 83            [24]  524 	mov	dph,r3
      00015A 8C F0            [24]  525 	mov	b,r4
      00015C E4               [12]  526 	clr	a
      00015D 12 06 15         [24]  527 	lcall	__gptrput
      000160 A3               [24]  528 	inc	dptr
      000161 12 06 15         [24]  529 	lcall	__gptrput
                                    530 ;	main.c:18: if (num[1] == 10) {
      000164 B8 0A 37         [24]  531 	cjne	r0,#0x0a,00109$
      000167 B9 00 34         [24]  532 	cjne	r1,#0x00,00109$
                                    533 ;	main.c:19: num[1] = 0;
      00016A 85 54 82         [24]  534 	mov	dpl,_run_clock_sloc0_1_0
      00016D 85 55 83         [24]  535 	mov	dph,(_run_clock_sloc0_1_0 + 1)
      000170 85 56 F0         [24]  536 	mov	b,(_run_clock_sloc0_1_0 + 2)
      000173 E4               [12]  537 	clr	a
      000174 12 06 15         [24]  538 	lcall	__gptrput
      000177 A3               [24]  539 	inc	dptr
      000178 12 06 15         [24]  540 	lcall	__gptrput
                                    541 ;	main.c:20: num[0]++;
      00017B 8D 82            [24]  542 	mov	dpl,r5
      00017D 8E 83            [24]  543 	mov	dph,r6
      00017F 8F F0            [24]  544 	mov	b,r7
      000181 12 06 30         [24]  545 	lcall	__gptrget
      000184 FB               [12]  546 	mov	r3,a
      000185 A3               [24]  547 	inc	dptr
      000186 12 06 30         [24]  548 	lcall	__gptrget
      000189 FC               [12]  549 	mov	r4,a
      00018A 0B               [12]  550 	inc	r3
      00018B BB 00 01         [24]  551 	cjne	r3,#0x00,00137$
      00018E 0C               [12]  552 	inc	r4
      00018F                        553 00137$:
      00018F 8D 82            [24]  554 	mov	dpl,r5
      000191 8E 83            [24]  555 	mov	dph,r6
      000193 8F F0            [24]  556 	mov	b,r7
      000195 EB               [12]  557 	mov	a,r3
      000196 12 06 15         [24]  558 	lcall	__gptrput
      000199 A3               [24]  559 	inc	dptr
      00019A EC               [12]  560 	mov	a,r4
                                    561 ;	main.c:25: }
      00019B 02 06 15         [24]  562 	ljmp	__gptrput
      00019E                        563 00109$:
      00019E 22               [24]  564 	ret
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'timer_isr'
                                    567 ;------------------------------------------------------------
                                    568 ;	main.c:27: void timer_isr (void) __interrupt (1) __using (1) {	//控制聲音頻率
                                    569 ;	-----------------------------------------
                                    570 ;	 function timer_isr
                                    571 ;	-----------------------------------------
      00019F                        572 _timer_isr:
                           00000F   573 	ar7 = 0x0f
                           00000E   574 	ar6 = 0x0e
                           00000D   575 	ar5 = 0x0d
                           00000C   576 	ar4 = 0x0c
                           00000B   577 	ar3 = 0x0b
                           00000A   578 	ar2 = 0x0a
                           000009   579 	ar1 = 0x09
                           000008   580 	ar0 = 0x08
      00019F C0 E0            [24]  581 	push	acc
      0001A1 C0 D0            [24]  582 	push	psw
                                    583 ;	main.c:28: TH0  = 15536 >> 8;
      0001A3 75 8C 3C         [24]  584 	mov	_TH0,#0x3c
                                    585 ;	main.c:29: TL0  = 15536 & 0xff;
      0001A6 75 8A B0         [24]  586 	mov	_TL0,#0xb0
                                    587 ;	main.c:32: counter++;
      0001A9 05 18            [12]  588 	inc	_counter
      0001AB E4               [12]  589 	clr	a
      0001AC B5 18 02         [24]  590 	cjne	a,_counter,00103$
      0001AF 05 19            [12]  591 	inc	(_counter + 1)
      0001B1                        592 00103$:
                                    593 ;	main.c:34: }
      0001B1 D0 D0            [24]  594 	pop	psw
      0001B3 D0 E0            [24]  595 	pop	acc
      0001B5 32               [24]  596 	reti
                                    597 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    598 ;	eliminated unneeded push/pop dpl
                                    599 ;	eliminated unneeded push/pop dph
                                    600 ;	eliminated unneeded push/pop b
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'timer1'
                                    603 ;------------------------------------------------------------
                                    604 ;	main.c:36: void timer1 (void) __interrupt (3) __using (2) {	//換下一個音
                                    605 ;	-----------------------------------------
                                    606 ;	 function timer1
                                    607 ;	-----------------------------------------
      0001B6                        608 _timer1:
                           000017   609 	ar7 = 0x17
                           000016   610 	ar6 = 0x16
                           000015   611 	ar5 = 0x15
                           000014   612 	ar4 = 0x14
                           000013   613 	ar3 = 0x13
                           000012   614 	ar2 = 0x12
                           000011   615 	ar1 = 0x11
                           000010   616 	ar0 = 0x10
      0001B6 C0 D0            [24]  617 	push	psw
                                    618 ;	main.c:37: TH1  = 15536 >> 8;
      0001B8 75 8D 3C         [24]  619 	mov	_TH1,#0x3c
                                    620 ;	main.c:38: TL1  = 15536 & 0xff;
      0001BB 75 8B B0         [24]  621 	mov	_TL1,#0xb0
                                    622 ;	main.c:39: P1_4 != P1_4;
      0001BE A2 94            [12]  623 	mov	c,_P1_4
      0001C0 A2 94            [12]  624 	mov	c,_P1_4
                                    625 ;	main.c:40: }
      0001C2 D0 D0            [24]  626 	pop	psw
      0001C4 32               [24]  627 	reti
                                    628 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    629 ;	eliminated unneeded push/pop dpl
                                    630 ;	eliminated unneeded push/pop dph
                                    631 ;	eliminated unneeded push/pop b
                                    632 ;	eliminated unneeded push/pop acc
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'keyPressed'
                                    635 ;------------------------------------------------------------
                                    636 ;row                       Allocated with name '_keyPressed_row_65536_11'
                                    637 ;c                         Allocated to registers r4 r5 
                                    638 ;col                       Allocated to registers r2 r3 
                                    639 ;magic                     Allocated to registers r7 r6 
                                    640 ;------------------------------------------------------------
                                    641 ;	main.c:43: short keyPressed(short row) {
                                    642 ;	-----------------------------------------
                                    643 ;	 function keyPressed
                                    644 ;	-----------------------------------------
      0001C5                        645 _keyPressed:
                           000007   646 	ar7 = 0x07
                           000006   647 	ar6 = 0x06
                           000005   648 	ar5 = 0x05
                           000004   649 	ar4 = 0x04
                           000003   650 	ar3 = 0x03
                           000002   651 	ar2 = 0x02
                           000001   652 	ar1 = 0x01
                           000000   653 	ar0 = 0x00
      0001C5 85 82 54         [24]  654 	mov	_keyPressed_row_65536_11,dpl
      0001C8 85 83 55         [24]  655 	mov	(_keyPressed_row_65536_11 + 1),dph
                                    656 ;	main.c:44: if((P0 & 0b11110000) != 0b11110000){	//if 按下按鈕
      0001CB AC 80            [24]  657 	mov	r4,_P0
      0001CD 53 04 F0         [24]  658 	anl	ar4,#0xf0
      0001D0 7D 00            [12]  659 	mov	r5,#0x00
      0001D2 BC F0 05         [24]  660 	cjne	r4,#0xf0,00127$
      0001D5 BD 00 02         [24]  661 	cjne	r5,#0x00,00127$
      0001D8 80 56            [24]  662 	sjmp	00105$
      0001DA                        663 00127$:
                                    664 ;	main.c:45: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      0001DA 7C 01            [12]  665 	mov	r4,#0x01
      0001DC 7D 00            [12]  666 	mov	r5,#0x00
      0001DE 7A 00            [12]  667 	mov	r2,#0x00
      0001E0 7B 00            [12]  668 	mov	r3,#0x00
      0001E2 78 00            [12]  669 	mov	r0,#0x00
      0001E4 79 00            [12]  670 	mov	r1,#0x00
      0001E6                        671 00107$:
      0001E6 C3               [12]  672 	clr	c
      0001E7 E8               [12]  673 	mov	a,r0
      0001E8 94 04            [12]  674 	subb	a,#0x04
      0001EA E9               [12]  675 	mov	a,r1
      0001EB 64 80            [12]  676 	xrl	a,#0x80
      0001ED 94 80            [12]  677 	subb	a,#0x80
      0001EF 50 3F            [24]  678 	jnc	00105$
                                    679 ;	main.c:47: `			short magic = ((P0 >> 4) ^ 0b11111111) & 0b00001111;
      0001F1 E5 80            [12]  680 	mov	a,_P0
      0001F3 C4               [12]  681 	swap	a
      0001F4 54 0F            [12]  682 	anl	a,#0x0f
      0001F6 FF               [12]  683 	mov	r7,a
      0001F7 63 07 FF         [24]  684 	xrl	ar7,#0xff
      0001FA 53 07 0F         [24]  685 	anl	ar7,#0x0f
      0001FD 7E 00            [12]  686 	mov	r6,#0x00
                                    687 ;	main.c:48: if (magic == c) {
      0001FF EF               [12]  688 	mov	a,r7
      000200 B5 04 1C         [24]  689 	cjne	a,ar4,00108$
      000203 EE               [12]  690 	mov	a,r6
      000204 B5 05 18         [24]  691 	cjne	a,ar5,00108$
                                    692 ;	main.c:49: return row * 4 + col;
      000207 E5 54            [12]  693 	mov	a,_keyPressed_row_65536_11
      000209 25 54            [12]  694 	add	a,_keyPressed_row_65536_11
      00020B FE               [12]  695 	mov	r6,a
      00020C E5 55            [12]  696 	mov	a,(_keyPressed_row_65536_11 + 1)
      00020E 33               [12]  697 	rlc	a
      00020F FF               [12]  698 	mov	r7,a
      000210 EE               [12]  699 	mov	a,r6
      000211 2E               [12]  700 	add	a,r6
      000212 FE               [12]  701 	mov	r6,a
      000213 EF               [12]  702 	mov	a,r7
      000214 33               [12]  703 	rlc	a
      000215 FF               [12]  704 	mov	r7,a
      000216 EA               [12]  705 	mov	a,r2
      000217 2E               [12]  706 	add	a,r6
      000218 F5 82            [12]  707 	mov	dpl,a
      00021A EB               [12]  708 	mov	a,r3
      00021B 3F               [12]  709 	addc	a,r7
      00021C F5 83            [12]  710 	mov	dph,a
      00021E 22               [24]  711 	ret
      00021F                        712 00108$:
                                    713 ;	main.c:45: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      00021F EC               [12]  714 	mov	a,r4
      000220 2C               [12]  715 	add	a,r4
      000221 FC               [12]  716 	mov	r4,a
      000222 ED               [12]  717 	mov	a,r5
      000223 33               [12]  718 	rlc	a
      000224 FD               [12]  719 	mov	r5,a
      000225 08               [12]  720 	inc	r0
      000226 B8 00 01         [24]  721 	cjne	r0,#0x00,00131$
      000229 09               [12]  722 	inc	r1
      00022A                        723 00131$:
      00022A 88 02            [24]  724 	mov	ar2,r0
      00022C 89 03            [24]  725 	mov	ar3,r1
      00022E 80 B6            [24]  726 	sjmp	00107$
      000230                        727 00105$:
                                    728 ;	main.c:53: return -1;	//沒按 return -1
      000230 90 FF FF         [24]  729 	mov	dptr,#0xffff
                                    730 ;	main.c:54: }
      000233 22               [24]  731 	ret
                                    732 ;------------------------------------------------------------
                                    733 ;Allocation info for local variables in function 'display'
                                    734 ;------------------------------------------------------------
                                    735 ;alpha                     Allocated with name '_display_PARM_2'
                                    736 ;num                       Allocated with name '_display_PARM_3'
                                    737 ;isSetting                 Allocated with name '_display_PARM_4'
                                    738 ;flash_flag                Allocated with name '_display_PARM_5'
                                    739 ;table                     Allocated with name '_display_table_65536_17'
                                    740 ;i                         Allocated to registers r1 r2 
                                    741 ;t                         Allocated with name '_display_t_262144_21'
                                    742 ;j                         Allocated to registers r6 r7 
                                    743 ;i                         Allocated to registers r4 r5 
                                    744 ;t                         Allocated with name '_display_t_196608_26'
                                    745 ;j                         Allocated to registers r6 r7 
                                    746 ;------------------------------------------------------------
                                    747 ;	main.c:56: void display(short table[], short alpha[], short num[], bool isSetting, long flash_flag) {
                                    748 ;	-----------------------------------------
                                    749 ;	 function display
                                    750 ;	-----------------------------------------
      000234                        751 _display:
      000234 85 82 5F         [24]  752 	mov	_display_table_65536_17,dpl
      000237 85 83 60         [24]  753 	mov	(_display_table_65536_17 + 1),dph
      00023A 85 F0 61         [24]  754 	mov	(_display_table_65536_17 + 2),b
                                    755 ;	main.c:57: if (isSetting) { // flashing
      00023D E5 5A            [12]  756 	mov	a,_display_PARM_4
      00023F 70 03            [24]  757 	jnz	00168$
      000241 02 02 EB         [24]  758 	ljmp	00108$
      000244                        759 00168$:
                                    760 ;	main.c:58: if (flash_flag > 7800) { // 頻率
      000244 C3               [12]  761 	clr	c
      000245 74 78            [12]  762 	mov	a,#0x78
      000247 95 5B            [12]  763 	subb	a,_display_PARM_5
      000249 74 1E            [12]  764 	mov	a,#0x1e
      00024B 95 5C            [12]  765 	subb	a,(_display_PARM_5 + 1)
      00024D E4               [12]  766 	clr	a
      00024E 95 5D            [12]  767 	subb	a,(_display_PARM_5 + 2)
      000250 74 80            [12]  768 	mov	a,#(0x00 ^ 0x80)
      000252 85 5E F0         [24]  769 	mov	b,(_display_PARM_5 + 3)
      000255 63 F0 80         [24]  770 	xrl	b,#0x80
      000258 95 F0            [12]  771 	subb	a,b
      00025A 40 01            [24]  772 	jc	00169$
      00025C 22               [24]  773 	ret
      00025D                        774 00169$:
                                    775 ;	main.c:59: for(short i = 0,t=1; i < 4; i++,t*=2) {
      00025D 75 62 01         [24]  776 	mov	_display_t_262144_21,#0x01
      000260 75 63 00         [24]  777 	mov	(_display_t_262144_21 + 1),#0x00
      000263 79 00            [12]  778 	mov	r1,#0x00
      000265 7A 00            [12]  779 	mov	r2,#0x00
      000267                        780 00114$:
      000267 C3               [12]  781 	clr	c
      000268 E9               [12]  782 	mov	a,r1
      000269 94 04            [12]  783 	subb	a,#0x04
      00026B EA               [12]  784 	mov	a,r2
      00026C 64 80            [12]  785 	xrl	a,#0x80
      00026E 94 80            [12]  786 	subb	a,#0x80
      000270 40 01            [24]  787 	jc	00170$
      000272 22               [24]  788 	ret
      000273                        789 00170$:
                                    790 ;	main.c:60: P1 = table[i];
      000273 E9               [12]  791 	mov	a,r1
      000274 29               [12]  792 	add	a,r1
      000275 F8               [12]  793 	mov	r0,a
      000276 EA               [12]  794 	mov	a,r2
      000277 33               [12]  795 	rlc	a
      000278 FC               [12]  796 	mov	r4,a
      000279 E8               [12]  797 	mov	a,r0
      00027A 25 5F            [12]  798 	add	a,_display_table_65536_17
      00027C FB               [12]  799 	mov	r3,a
      00027D EC               [12]  800 	mov	a,r4
      00027E 35 60            [12]  801 	addc	a,(_display_table_65536_17 + 1)
      000280 FE               [12]  802 	mov	r6,a
      000281 AF 61            [24]  803 	mov	r7,(_display_table_65536_17 + 2)
      000283 8B 82            [24]  804 	mov	dpl,r3
      000285 8E 83            [24]  805 	mov	dph,r6
      000287 8F F0            [24]  806 	mov	b,r7
      000289 12 06 30         [24]  807 	lcall	__gptrget
      00028C F5 90            [12]  808 	mov	_P1,a
                                    809 ;	main.c:61: P2 = alpha[num[i]];
      00028E E8               [12]  810 	mov	a,r0
      00028F 25 57            [12]  811 	add	a,_display_PARM_3
      000291 F8               [12]  812 	mov	r0,a
      000292 EC               [12]  813 	mov	a,r4
      000293 35 58            [12]  814 	addc	a,(_display_PARM_3 + 1)
      000295 FC               [12]  815 	mov	r4,a
      000296 AF 59            [24]  816 	mov	r7,(_display_PARM_3 + 2)
      000298 88 82            [24]  817 	mov	dpl,r0
      00029A 8C 83            [24]  818 	mov	dph,r4
      00029C 8F F0            [24]  819 	mov	b,r7
      00029E 12 06 30         [24]  820 	lcall	__gptrget
      0002A1 F8               [12]  821 	mov	r0,a
      0002A2 A3               [24]  822 	inc	dptr
      0002A3 12 06 30         [24]  823 	lcall	__gptrget
      0002A6 FC               [12]  824 	mov	r4,a
      0002A7 E8               [12]  825 	mov	a,r0
      0002A8 28               [12]  826 	add	a,r0
      0002A9 F8               [12]  827 	mov	r0,a
      0002AA EC               [12]  828 	mov	a,r4
      0002AB 33               [12]  829 	rlc	a
      0002AC FC               [12]  830 	mov	r4,a
      0002AD E8               [12]  831 	mov	a,r0
      0002AE 25 54            [12]  832 	add	a,_display_PARM_2
      0002B0 F8               [12]  833 	mov	r0,a
      0002B1 EC               [12]  834 	mov	a,r4
      0002B2 35 55            [12]  835 	addc	a,(_display_PARM_2 + 1)
      0002B4 FC               [12]  836 	mov	r4,a
      0002B5 AF 56            [24]  837 	mov	r7,(_display_PARM_2 + 2)
      0002B7 88 82            [24]  838 	mov	dpl,r0
      0002B9 8C 83            [24]  839 	mov	dph,r4
      0002BB 8F F0            [24]  840 	mov	b,r7
      0002BD 12 06 30         [24]  841 	lcall	__gptrget
      0002C0 F5 A0            [12]  842 	mov	_P2,a
                                    843 ;	main.c:62: for(int j = 0; j < 500; j++){}
      0002C2 7E 00            [12]  844 	mov	r6,#0x00
      0002C4 7F 00            [12]  845 	mov	r7,#0x00
      0002C6                        846 00111$:
      0002C6 C3               [12]  847 	clr	c
      0002C7 EE               [12]  848 	mov	a,r6
      0002C8 94 F4            [12]  849 	subb	a,#0xf4
      0002CA EF               [12]  850 	mov	a,r7
      0002CB 64 80            [12]  851 	xrl	a,#0x80
      0002CD 94 81            [12]  852 	subb	a,#0x81
      0002CF 50 07            [24]  853 	jnc	00115$
      0002D1 0E               [12]  854 	inc	r6
      0002D2 BE 00 F1         [24]  855 	cjne	r6,#0x00,00111$
      0002D5 0F               [12]  856 	inc	r7
      0002D6 80 EE            [24]  857 	sjmp	00111$
      0002D8                        858 00115$:
                                    859 ;	main.c:59: for(short i = 0,t=1; i < 4; i++,t*=2) {
      0002D8 09               [12]  860 	inc	r1
      0002D9 B9 00 01         [24]  861 	cjne	r1,#0x00,00173$
      0002DC 0A               [12]  862 	inc	r2
      0002DD                        863 00173$:
      0002DD E5 62            [12]  864 	mov	a,_display_t_262144_21
      0002DF 25 62            [12]  865 	add	a,_display_t_262144_21
      0002E1 F5 62            [12]  866 	mov	_display_t_262144_21,a
      0002E3 E5 63            [12]  867 	mov	a,(_display_t_262144_21 + 1)
      0002E5 33               [12]  868 	rlc	a
      0002E6 F5 63            [12]  869 	mov	(_display_t_262144_21 + 1),a
      0002E8 02 02 67         [24]  870 	ljmp	00114$
      0002EB                        871 00108$:
                                    872 ;	main.c:66: for(short i = 0,t=1; i < 4; i++,t*=2) {
      0002EB 75 64 01         [24]  873 	mov	_display_t_196608_26,#0x01
      0002EE 75 65 00         [24]  874 	mov	(_display_t_196608_26 + 1),#0x00
      0002F1 7C 00            [12]  875 	mov	r4,#0x00
      0002F3 7D 00            [12]  876 	mov	r5,#0x00
      0002F5                        877 00120$:
      0002F5 C3               [12]  878 	clr	c
      0002F6 EC               [12]  879 	mov	a,r4
      0002F7 94 04            [12]  880 	subb	a,#0x04
      0002F9 ED               [12]  881 	mov	a,r5
      0002FA 64 80            [12]  882 	xrl	a,#0x80
      0002FC 94 80            [12]  883 	subb	a,#0x80
      0002FE 50 78            [24]  884 	jnc	00122$
                                    885 ;	main.c:67: P1 = table[i];
      000300 EC               [12]  886 	mov	a,r4
      000301 2C               [12]  887 	add	a,r4
      000302 FA               [12]  888 	mov	r2,a
      000303 ED               [12]  889 	mov	a,r5
      000304 33               [12]  890 	rlc	a
      000305 FB               [12]  891 	mov	r3,a
      000306 EA               [12]  892 	mov	a,r2
      000307 25 5F            [12]  893 	add	a,_display_table_65536_17
      000309 F8               [12]  894 	mov	r0,a
      00030A EB               [12]  895 	mov	a,r3
      00030B 35 60            [12]  896 	addc	a,(_display_table_65536_17 + 1)
      00030D F9               [12]  897 	mov	r1,a
      00030E AF 61            [24]  898 	mov	r7,(_display_table_65536_17 + 2)
      000310 88 82            [24]  899 	mov	dpl,r0
      000312 89 83            [24]  900 	mov	dph,r1
      000314 8F F0            [24]  901 	mov	b,r7
      000316 12 06 30         [24]  902 	lcall	__gptrget
      000319 F5 90            [12]  903 	mov	_P1,a
                                    904 ;	main.c:68: P2 = alpha[num[i]];
      00031B EA               [12]  905 	mov	a,r2
      00031C 25 57            [12]  906 	add	a,_display_PARM_3
      00031E FA               [12]  907 	mov	r2,a
      00031F EB               [12]  908 	mov	a,r3
      000320 35 58            [12]  909 	addc	a,(_display_PARM_3 + 1)
      000322 FB               [12]  910 	mov	r3,a
      000323 AF 59            [24]  911 	mov	r7,(_display_PARM_3 + 2)
      000325 8A 82            [24]  912 	mov	dpl,r2
      000327 8B 83            [24]  913 	mov	dph,r3
      000329 8F F0            [24]  914 	mov	b,r7
      00032B 12 06 30         [24]  915 	lcall	__gptrget
      00032E FA               [12]  916 	mov	r2,a
      00032F A3               [24]  917 	inc	dptr
      000330 12 06 30         [24]  918 	lcall	__gptrget
      000333 FB               [12]  919 	mov	r3,a
      000334 EA               [12]  920 	mov	a,r2
      000335 2A               [12]  921 	add	a,r2
      000336 FA               [12]  922 	mov	r2,a
      000337 EB               [12]  923 	mov	a,r3
      000338 33               [12]  924 	rlc	a
      000339 FB               [12]  925 	mov	r3,a
      00033A EA               [12]  926 	mov	a,r2
      00033B 25 54            [12]  927 	add	a,_display_PARM_2
      00033D FA               [12]  928 	mov	r2,a
      00033E EB               [12]  929 	mov	a,r3
      00033F 35 55            [12]  930 	addc	a,(_display_PARM_2 + 1)
      000341 FB               [12]  931 	mov	r3,a
      000342 AF 56            [24]  932 	mov	r7,(_display_PARM_2 + 2)
      000344 8A 82            [24]  933 	mov	dpl,r2
      000346 8B 83            [24]  934 	mov	dph,r3
      000348 8F F0            [24]  935 	mov	b,r7
      00034A 12 06 30         [24]  936 	lcall	__gptrget
      00034D F5 A0            [12]  937 	mov	_P2,a
                                    938 ;	main.c:69: for(int j = 0; j < 1000; j++){}
      00034F 7E 00            [12]  939 	mov	r6,#0x00
      000351 7F 00            [12]  940 	mov	r7,#0x00
      000353                        941 00117$:
      000353 C3               [12]  942 	clr	c
      000354 EE               [12]  943 	mov	a,r6
      000355 94 E8            [12]  944 	subb	a,#0xe8
      000357 EF               [12]  945 	mov	a,r7
      000358 64 80            [12]  946 	xrl	a,#0x80
      00035A 94 83            [12]  947 	subb	a,#0x83
      00035C 50 07            [24]  948 	jnc	00121$
      00035E 0E               [12]  949 	inc	r6
      00035F BE 00 F1         [24]  950 	cjne	r6,#0x00,00117$
      000362 0F               [12]  951 	inc	r7
      000363 80 EE            [24]  952 	sjmp	00117$
      000365                        953 00121$:
                                    954 ;	main.c:66: for(short i = 0,t=1; i < 4; i++,t*=2) {
      000365 0C               [12]  955 	inc	r4
      000366 BC 00 01         [24]  956 	cjne	r4,#0x00,00177$
      000369 0D               [12]  957 	inc	r5
      00036A                        958 00177$:
      00036A E5 64            [12]  959 	mov	a,_display_t_196608_26
      00036C 25 64            [12]  960 	add	a,_display_t_196608_26
      00036E F5 64            [12]  961 	mov	_display_t_196608_26,a
      000370 E5 65            [12]  962 	mov	a,(_display_t_196608_26 + 1)
      000372 33               [12]  963 	rlc	a
      000373 F5 65            [12]  964 	mov	(_display_t_196608_26 + 1),a
      000375 02 02 F5         [24]  965 	ljmp	00120$
      000378                        966 00122$:
                                    967 ;	main.c:72: }
      000378 22               [24]  968 	ret
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'check_sound_trigger'
                                    971 ;------------------------------------------------------------
                                    972 ;	main.c:74: void check_sound_trigger() {
                                    973 ;	-----------------------------------------
                                    974 ;	 function check_sound_trigger
                                    975 ;	-----------------------------------------
      000379                        976 _check_sound_trigger:
                                    977 ;	main.c:75: P1_4 = 1;
                                    978 ;	assignBit
      000379 D2 94            [12]  979 	setb	_P1_4
                                    980 ;	main.c:76: }
      00037B 22               [24]  981 	ret
                                    982 ;------------------------------------------------------------
                                    983 ;Allocation info for local variables in function 'main'
                                    984 ;------------------------------------------------------------
                                    985 ;previous                  Allocated with name '_main_previous_65537_32'
                                    986 ;row                       Allocated with name '_main_row_65537_32'
                                    987 ;count                     Allocated with name '_main_count_65537_32'
                                    988 ;num                       Allocated with name '_main_num_65537_32'
                                    989 ;num_bi                    Allocated with name '_main_num_bi_65537_32'
                                    990 ;alpha                     Allocated with name '_main_alpha_65537_32'
                                    991 ;table                     Allocated with name '_main_table_65537_32'
                                    992 ;index                     Allocated with name '_main_index_65538_33'
                                    993 ;flash_flag                Allocated with name '_main_flash_flag_65538_33'
                                    994 ;isSetting                 Allocated to registers r5 
                                    995 ;afterSetting              Allocated to registers 
                                    996 ;setting_bi_time           Allocated to registers r4 
                                    997 ;key                       Allocated to registers r2 r3 
                                    998 ;------------------------------------------------------------
                                    999 ;	main.c:79: int main() {
                                   1000 ;	-----------------------------------------
                                   1001 ;	 function main
                                   1002 ;	-----------------------------------------
      00037C                       1003 _main:
                                   1004 ;	main.c:91: EA = 1;
                                   1005 ;	assignBit
      00037C D2 AF            [12] 1006 	setb	_EA
                                   1007 ;	main.c:92: TMOD = 0b00010001;
      00037E 75 89 11         [24] 1008 	mov	_TMOD,#0x11
                                   1009 ;	main.c:93: IE   = 0x8A;
      000381 75 A8 8A         [24] 1010 	mov	_IE,#0x8a
                                   1011 ;	main.c:94: TR0  = 1;	//timer 0 control bit
                                   1012 ;	assignBit
      000384 D2 8C            [12] 1013 	setb	_TR0
                                   1014 ;	main.c:95: TR1  = 1;	//timer 1 control bit
                                   1015 ;	assignBit
      000386 D2 8E            [12] 1016 	setb	_TR1
                                   1017 ;	main.c:97: short previous = -1;
      000388 75 1A FF         [24] 1018 	mov	_main_previous_65537_32,#0xff
      00038B 75 1B FF         [24] 1019 	mov	(_main_previous_65537_32 + 1),#0xff
                                   1020 ;	main.c:98: short row = 0;
      00038E E4               [12] 1021 	clr	a
      00038F F5 1C            [12] 1022 	mov	_main_row_65537_32,a
      000391 F5 1D            [12] 1023 	mov	(_main_row_65537_32 + 1),a
                                   1024 ;	main.c:99: short count = 1;
      000393 75 1E 01         [24] 1025 	mov	_main_count_65537_32,#0x01
                                   1026 ;	1-genFromRTrack replaced	mov	(_main_count_65537_32 + 1),#0x00
      000396 F5 1F            [12] 1027 	mov	(_main_count_65537_32 + 1),a
                                   1028 ;	main.c:100: short num[4] = {0};
      000398 F5 20            [12] 1029 	mov	(_main_num_65537_32 + 0),a
      00039A F5 21            [12] 1030 	mov	(_main_num_65537_32 + 1),a
      00039C F5 22            [12] 1031 	mov	((_main_num_65537_32 + 0x0002) + 0),a
      00039E F5 23            [12] 1032 	mov	((_main_num_65537_32 + 0x0002) + 1),a
      0003A0 F5 24            [12] 1033 	mov	((_main_num_65537_32 + 0x0004) + 0),a
      0003A2 F5 25            [12] 1034 	mov	((_main_num_65537_32 + 0x0004) + 1),a
      0003A4 F5 26            [12] 1035 	mov	((_main_num_65537_32 + 0x0006) + 0),a
      0003A6 F5 27            [12] 1036 	mov	((_main_num_65537_32 + 0x0006) + 1),a
                                   1037 ;	main.c:101: short num_bi[4] = {0};
      0003A8 F5 28            [12] 1038 	mov	(_main_num_bi_65537_32 + 0),a
      0003AA F5 29            [12] 1039 	mov	(_main_num_bi_65537_32 + 1),a
      0003AC F5 2A            [12] 1040 	mov	((_main_num_bi_65537_32 + 0x0002) + 0),a
      0003AE F5 2B            [12] 1041 	mov	((_main_num_bi_65537_32 + 0x0002) + 1),a
      0003B0 F5 2C            [12] 1042 	mov	((_main_num_bi_65537_32 + 0x0004) + 0),a
      0003B2 F5 2D            [12] 1043 	mov	((_main_num_bi_65537_32 + 0x0004) + 1),a
      0003B4 F5 2E            [12] 1044 	mov	((_main_num_bi_65537_32 + 0x0006) + 0),a
      0003B6 F5 2F            [12] 1045 	mov	((_main_num_bi_65537_32 + 0x0006) + 1),a
                                   1046 ;	main.c:102: const short alpha[11] = {
      0003B8 75 30 03         [24] 1047 	mov	(_main_alpha_65537_32 + 0),#0x03
                                   1048 ;	1-genFromRTrack replaced	mov	(_main_alpha_65537_32 + 1),#0x00
      0003BB F5 31            [12] 1049 	mov	(_main_alpha_65537_32 + 1),a
      0003BD 75 32 9F         [24] 1050 	mov	((_main_alpha_65537_32 + 0x0002) + 0),#0x9f
                                   1051 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0002) + 1),#0x00
      0003C0 F5 33            [12] 1052 	mov	((_main_alpha_65537_32 + 0x0002) + 1),a
      0003C2 75 34 25         [24] 1053 	mov	((_main_alpha_65537_32 + 0x0004) + 0),#0x25
                                   1054 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0004) + 1),#0x00
      0003C5 F5 35            [12] 1055 	mov	((_main_alpha_65537_32 + 0x0004) + 1),a
      0003C7 75 36 0D         [24] 1056 	mov	((_main_alpha_65537_32 + 0x0006) + 0),#0x0d
                                   1057 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0006) + 1),#0x00
      0003CA F5 37            [12] 1058 	mov	((_main_alpha_65537_32 + 0x0006) + 1),a
      0003CC 75 38 99         [24] 1059 	mov	((_main_alpha_65537_32 + 0x0008) + 0),#0x99
                                   1060 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0008) + 1),#0x00
      0003CF F5 39            [12] 1061 	mov	((_main_alpha_65537_32 + 0x0008) + 1),a
      0003D1 75 3A 49         [24] 1062 	mov	((_main_alpha_65537_32 + 0x000a) + 0),#0x49
                                   1063 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x000a) + 1),#0x00
      0003D4 F5 3B            [12] 1064 	mov	((_main_alpha_65537_32 + 0x000a) + 1),a
      0003D6 75 3C 41         [24] 1065 	mov	((_main_alpha_65537_32 + 0x000c) + 0),#0x41
                                   1066 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x000c) + 1),#0x00
      0003D9 F5 3D            [12] 1067 	mov	((_main_alpha_65537_32 + 0x000c) + 1),a
      0003DB 75 3E 1F         [24] 1068 	mov	((_main_alpha_65537_32 + 0x000e) + 0),#0x1f
                                   1069 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x000e) + 1),#0x00
      0003DE F5 3F            [12] 1070 	mov	((_main_alpha_65537_32 + 0x000e) + 1),a
      0003E0 75 40 01         [24] 1071 	mov	((_main_alpha_65537_32 + 0x0010) + 0),#0x01
                                   1072 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0010) + 1),#0x00
      0003E3 F5 41            [12] 1073 	mov	((_main_alpha_65537_32 + 0x0010) + 1),a
      0003E5 75 42 09         [24] 1074 	mov	((_main_alpha_65537_32 + 0x0012) + 0),#0x09
                                   1075 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0012) + 1),#0x00
      0003E8 F5 43            [12] 1076 	mov	((_main_alpha_65537_32 + 0x0012) + 1),a
      0003EA 75 44 FF         [24] 1077 	mov	((_main_alpha_65537_32 + 0x0014) + 0),#0xff
                                   1078 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_32 + 0x0014) + 1),#0x00
      0003ED F5 45            [12] 1079 	mov	((_main_alpha_65537_32 + 0x0014) + 1),a
                                   1080 ;	main.c:115: const short table[4] = {
      0003EF 75 46 FE         [24] 1081 	mov	(_main_table_65537_32 + 0),#0xfe
                                   1082 ;	1-genFromRTrack replaced	mov	(_main_table_65537_32 + 1),#0x00
      0003F2 F5 47            [12] 1083 	mov	(_main_table_65537_32 + 1),a
      0003F4 75 48 FD         [24] 1084 	mov	((_main_table_65537_32 + 0x0002) + 0),#0xfd
                                   1085 ;	1-genFromRTrack replaced	mov	((_main_table_65537_32 + 0x0002) + 1),#0x00
      0003F7 F5 49            [12] 1086 	mov	((_main_table_65537_32 + 0x0002) + 1),a
      0003F9 75 4A FB         [24] 1087 	mov	((_main_table_65537_32 + 0x0004) + 0),#0xfb
                                   1088 ;	1-genFromRTrack replaced	mov	((_main_table_65537_32 + 0x0004) + 1),#0x00
      0003FC F5 4B            [12] 1089 	mov	((_main_table_65537_32 + 0x0004) + 1),a
      0003FE 75 4C F7         [24] 1090 	mov	((_main_table_65537_32 + 0x0006) + 0),#0xf7
                                   1091 ;	1-genFromRTrack replaced	mov	((_main_table_65537_32 + 0x0006) + 1),#0x00
      000401 F5 4D            [12] 1092 	mov	((_main_table_65537_32 + 0x0006) + 1),a
                                   1093 ;	main.c:121: P0 = 0b00001111;
      000403 75 80 0F         [24] 1094 	mov	_P0,#0x0f
                                   1095 ;	main.c:122: short index = 0;
      000406 F5 4E            [12] 1096 	mov	_main_index_65538_33,a
      000408 F5 4F            [12] 1097 	mov	(_main_index_65538_33 + 1),a
                                   1098 ;	main.c:123: long flash_flag = 0;
      00040A F5 50            [12] 1099 	mov	_main_flash_flag_65538_33,a
      00040C F5 51            [12] 1100 	mov	(_main_flash_flag_65538_33 + 1),a
      00040E F5 52            [12] 1101 	mov	(_main_flash_flag_65538_33 + 2),a
      000410 F5 53            [12] 1102 	mov	(_main_flash_flag_65538_33 + 3),a
                                   1103 ;	main.c:124: bool isSetting = false;
      000412 7D 00            [12] 1104 	mov	r5,#0x00
                                   1105 ;	main.c:126: bool setting_bi_time = false;
      000414 7C 00            [12] 1106 	mov	r4,#0x00
                                   1107 ;	main.c:127: while (1) {
      000416                       1108 00141$:
                                   1109 ;	main.c:128: flash_flag++;
      000416 05 50            [12] 1110 	inc	_main_flash_flag_65538_33
      000418 E4               [12] 1111 	clr	a
      000419 B5 50 0C         [24] 1112 	cjne	a,_main_flash_flag_65538_33,00229$
      00041C 05 51            [12] 1113 	inc	(_main_flash_flag_65538_33 + 1)
      00041E B5 51 07         [24] 1114 	cjne	a,(_main_flash_flag_65538_33 + 1),00229$
      000421 05 52            [12] 1115 	inc	(_main_flash_flag_65538_33 + 2)
      000423 B5 52 02         [24] 1116 	cjne	a,(_main_flash_flag_65538_33 + 2),00229$
      000426 05 53            [12] 1117 	inc	(_main_flash_flag_65538_33 + 3)
      000428                       1118 00229$:
                                   1119 ;	main.c:129: if (flash_flag >= 8000)  // 頻率
      000428 C3               [12] 1120 	clr	c
      000429 E5 50            [12] 1121 	mov	a,_main_flash_flag_65538_33
      00042B 94 40            [12] 1122 	subb	a,#0x40
      00042D E5 51            [12] 1123 	mov	a,(_main_flash_flag_65538_33 + 1)
      00042F 94 1F            [12] 1124 	subb	a,#0x1f
      000431 E5 52            [12] 1125 	mov	a,(_main_flash_flag_65538_33 + 2)
      000433 94 00            [12] 1126 	subb	a,#0x00
      000435 E5 53            [12] 1127 	mov	a,(_main_flash_flag_65538_33 + 3)
      000437 64 80            [12] 1128 	xrl	a,#0x80
      000439 94 80            [12] 1129 	subb	a,#0x80
      00043B 40 09            [24] 1130 	jc	00102$
                                   1131 ;	main.c:130: flash_flag = 0;
      00043D E4               [12] 1132 	clr	a
      00043E F5 50            [12] 1133 	mov	_main_flash_flag_65538_33,a
      000440 F5 51            [12] 1134 	mov	(_main_flash_flag_65538_33 + 1),a
      000442 F5 52            [12] 1135 	mov	(_main_flash_flag_65538_33 + 2),a
      000444 F5 53            [12] 1136 	mov	(_main_flash_flag_65538_33 + 3),a
      000446                       1137 00102$:
                                   1138 ;	main.c:131: P0     =count^0b11111111;
      000446 74 FF            [12] 1139 	mov	a,#0xff
      000448 65 1E            [12] 1140 	xrl	a,_main_count_65537_32
      00044A FA               [12] 1141 	mov	r2,a
      00044B 8A 80            [24] 1142 	mov	_P0,r2
                                   1143 ;	main.c:132: count *=2; //shift
      00044D E5 1E            [12] 1144 	mov	a,_main_count_65537_32
      00044F 25 1E            [12] 1145 	add	a,_main_count_65537_32
      000451 F5 1E            [12] 1146 	mov	_main_count_65537_32,a
      000453 E5 1F            [12] 1147 	mov	a,(_main_count_65537_32 + 1)
      000455 33               [12] 1148 	rlc	a
      000456 F5 1F            [12] 1149 	mov	(_main_count_65537_32 + 1),a
                                   1150 ;	main.c:133: short key = keyPressed(row);
      000458 85 1C 82         [24] 1151 	mov	dpl,_main_row_65537_32
      00045B 85 1D 83         [24] 1152 	mov	dph,(_main_row_65537_32 + 1)
      00045E C0 05            [24] 1153 	push	ar5
      000460 C0 04            [24] 1154 	push	ar4
      000462 12 01 C5         [24] 1155 	lcall	_keyPressed
      000465 AA 82            [24] 1156 	mov	r2,dpl
      000467 AB 83            [24] 1157 	mov	r3,dph
      000469 D0 04            [24] 1158 	pop	ar4
      00046B D0 05            [24] 1159 	pop	ar5
                                   1160 ;	main.c:134: if (key != previous && key != -1) {	//有按且不等於上一按 => 處理debounce
      00046D EA               [12] 1161 	mov	a,r2
      00046E B5 1A 07         [24] 1162 	cjne	a,_main_previous_65537_32,00231$
      000471 EB               [12] 1163 	mov	a,r3
      000472 B5 1B 03         [24] 1164 	cjne	a,(_main_previous_65537_32 + 1),00231$
      000475 02 05 2B         [24] 1165 	ljmp	00126$
      000478                       1166 00231$:
      000478 BA FF 06         [24] 1167 	cjne	r2,#0xff,00232$
      00047B BB FF 03         [24] 1168 	cjne	r3,#0xff,00232$
      00047E 02 05 2B         [24] 1169 	ljmp	00126$
      000481                       1170 00232$:
                                   1171 ;	main.c:135: previous = key;
      000481 8A 1A            [24] 1172 	mov	_main_previous_65537_32,r2
      000483 8B 1B            [24] 1173 	mov	(_main_previous_65537_32 + 1),r3
                                   1174 ;	main.c:141: if (key == 10) isSetting = true;
      000485 BA 0A 05         [24] 1175 	cjne	r2,#0x0a,00104$
      000488 BB 00 02         [24] 1176 	cjne	r3,#0x00,00104$
      00048B 7D 01            [12] 1177 	mov	r5,#0x01
      00048D                       1178 00104$:
                                   1179 ;	main.c:142: if (key == 11) isSetting = false;
      00048D BA 0B 05         [24] 1180 	cjne	r2,#0x0b,00106$
      000490 BB 00 02         [24] 1181 	cjne	r3,#0x00,00106$
      000493 7D 00            [12] 1182 	mov	r5,#0x00
      000495                       1183 00106$:
                                   1184 ;	main.c:143: if (key == 12) setting_bi_time = true;
      000495 BA 0C 05         [24] 1185 	cjne	r2,#0x0c,00108$
      000498 BB 00 02         [24] 1186 	cjne	r3,#0x00,00108$
      00049B 7C 01            [12] 1187 	mov	r4,#0x01
      00049D                       1188 00108$:
                                   1189 ;	main.c:144: if (key == 13) setting_bi_time = false;
      00049D BA 0D 05         [24] 1190 	cjne	r2,#0x0d,00110$
      0004A0 BB 00 02         [24] 1191 	cjne	r3,#0x00,00110$
      0004A3 7C 00            [12] 1192 	mov	r4,#0x00
      0004A5                       1193 00110$:
                                   1194 ;	main.c:147: if (isSetting) {
      0004A5 ED               [12] 1195 	mov	a,r5
      0004A6 60 40            [24] 1196 	jz	00117$
                                   1197 ;	main.c:149: if (key >= 0 && key <= 9)
      0004A8 EB               [12] 1198 	mov	a,r3
      0004A9 20 E7 2A         [24] 1199 	jb	acc.7,00112$
      0004AC C3               [12] 1200 	clr	c
      0004AD 74 09            [12] 1201 	mov	a,#0x09
      0004AF 9A               [12] 1202 	subb	a,r2
      0004B0 74 80            [12] 1203 	mov	a,#(0x00 ^ 0x80)
      0004B2 8B F0            [24] 1204 	mov	b,r3
      0004B4 63 F0 80         [24] 1205 	xrl	b,#0x80
      0004B7 95 F0            [12] 1206 	subb	a,b
      0004B9 40 1B            [24] 1207 	jc	00112$
                                   1208 ;	main.c:150: num[index++] = key;
      0004BB AE 4E            [24] 1209 	mov	r6,_main_index_65538_33
      0004BD AF 4F            [24] 1210 	mov	r7,(_main_index_65538_33 + 1)
      0004BF 05 4E            [12] 1211 	inc	_main_index_65538_33
      0004C1 E4               [12] 1212 	clr	a
      0004C2 B5 4E 02         [24] 1213 	cjne	a,_main_index_65538_33,00244$
      0004C5 05 4F            [12] 1214 	inc	(_main_index_65538_33 + 1)
      0004C7                       1215 00244$:
      0004C7 EE               [12] 1216 	mov	a,r6
      0004C8 2E               [12] 1217 	add	a,r6
      0004C9 FE               [12] 1218 	mov	r6,a
      0004CA EF               [12] 1219 	mov	a,r7
      0004CB 33               [12] 1220 	rlc	a
      0004CC FF               [12] 1221 	mov	r7,a
      0004CD EE               [12] 1222 	mov	a,r6
      0004CE 24 20            [12] 1223 	add	a,#_main_num_65537_32
      0004D0 F8               [12] 1224 	mov	r0,a
      0004D1 A6 02            [24] 1225 	mov	@r0,ar2
      0004D3 08               [12] 1226 	inc	r0
      0004D4 A6 03            [24] 1227 	mov	@r0,ar3
      0004D6                       1228 00112$:
                                   1229 ;	main.c:151: if (index == 4) index = 0;
      0004D6 74 04            [12] 1230 	mov	a,#0x04
      0004D8 B5 4E 06         [24] 1231 	cjne	a,_main_index_65538_33,00245$
      0004DB E4               [12] 1232 	clr	a
      0004DC B5 4F 02         [24] 1233 	cjne	a,(_main_index_65538_33 + 1),00245$
      0004DF 80 02            [24] 1234 	sjmp	00246$
      0004E1                       1235 00245$:
      0004E1 80 05            [24] 1236 	sjmp	00117$
      0004E3                       1237 00246$:
      0004E3 E4               [12] 1238 	clr	a
      0004E4 F5 4E            [12] 1239 	mov	_main_index_65538_33,a
      0004E6 F5 4F            [12] 1240 	mov	(_main_index_65538_33 + 1),a
      0004E8                       1241 00117$:
                                   1242 ;	main.c:154: if (setting_bi_time) {
      0004E8 EC               [12] 1243 	mov	a,r4
      0004E9 60 40            [24] 1244 	jz	00126$
                                   1245 ;	main.c:155: if (key >= 0 && key <= 9)
      0004EB EB               [12] 1246 	mov	a,r3
      0004EC 20 E7 2A         [24] 1247 	jb	acc.7,00119$
      0004EF C3               [12] 1248 	clr	c
      0004F0 74 09            [12] 1249 	mov	a,#0x09
      0004F2 9A               [12] 1250 	subb	a,r2
      0004F3 74 80            [12] 1251 	mov	a,#(0x00 ^ 0x80)
      0004F5 8B F0            [24] 1252 	mov	b,r3
      0004F7 63 F0 80         [24] 1253 	xrl	b,#0x80
      0004FA 95 F0            [12] 1254 	subb	a,b
      0004FC 40 1B            [24] 1255 	jc	00119$
                                   1256 ;	main.c:156: num_bi[index++] = key;
      0004FE AE 4E            [24] 1257 	mov	r6,_main_index_65538_33
      000500 AF 4F            [24] 1258 	mov	r7,(_main_index_65538_33 + 1)
      000502 05 4E            [12] 1259 	inc	_main_index_65538_33
      000504 E4               [12] 1260 	clr	a
      000505 B5 4E 02         [24] 1261 	cjne	a,_main_index_65538_33,00250$
      000508 05 4F            [12] 1262 	inc	(_main_index_65538_33 + 1)
      00050A                       1263 00250$:
      00050A EE               [12] 1264 	mov	a,r6
      00050B 2E               [12] 1265 	add	a,r6
      00050C FE               [12] 1266 	mov	r6,a
      00050D EF               [12] 1267 	mov	a,r7
      00050E 33               [12] 1268 	rlc	a
      00050F FF               [12] 1269 	mov	r7,a
      000510 EE               [12] 1270 	mov	a,r6
      000511 24 28            [12] 1271 	add	a,#_main_num_bi_65537_32
      000513 F8               [12] 1272 	mov	r0,a
      000514 A6 02            [24] 1273 	mov	@r0,ar2
      000516 08               [12] 1274 	inc	r0
      000517 A6 03            [24] 1275 	mov	@r0,ar3
      000519                       1276 00119$:
                                   1277 ;	main.c:157: if (index == 4) index = 0;
      000519 74 04            [12] 1278 	mov	a,#0x04
      00051B B5 4E 06         [24] 1279 	cjne	a,_main_index_65538_33,00251$
      00051E E4               [12] 1280 	clr	a
      00051F B5 4F 02         [24] 1281 	cjne	a,(_main_index_65538_33 + 1),00251$
      000522 80 02            [24] 1282 	sjmp	00252$
      000524                       1283 00251$:
      000524 80 05            [24] 1284 	sjmp	00126$
      000526                       1285 00252$:
      000526 E4               [12] 1286 	clr	a
      000527 F5 4E            [12] 1287 	mov	_main_index_65538_33,a
      000529 F5 4F            [12] 1288 	mov	(_main_index_65538_33 + 1),a
      00052B                       1289 00126$:
                                   1290 ;	main.c:161: if (!isSetting && !setting_bi_time) {
      00052B ED               [12] 1291 	mov	a,r5
      00052C 70 14            [24] 1292 	jnz	00129$
      00052E EC               [12] 1293 	mov	a,r4
      00052F 70 11            [24] 1294 	jnz	00129$
                                   1295 ;	main.c:162: run_clock(num);
      000531 90 00 20         [24] 1296 	mov	dptr,#_main_num_65537_32
      000534 75 F0 40         [24] 1297 	mov	b,#0x40
      000537 C0 05            [24] 1298 	push	ar5
      000539 C0 04            [24] 1299 	push	ar4
      00053B 12 00 82         [24] 1300 	lcall	_run_clock
      00053E D0 04            [24] 1301 	pop	ar4
      000540 D0 05            [24] 1302 	pop	ar5
      000542                       1303 00129$:
                                   1304 ;	main.c:165: row++;
      000542 05 1C            [12] 1305 	inc	_main_row_65537_32
      000544 E4               [12] 1306 	clr	a
      000545 B5 1C 02         [24] 1307 	cjne	a,_main_row_65537_32,00255$
      000548 05 1D            [12] 1308 	inc	(_main_row_65537_32 + 1)
      00054A                       1309 00255$:
                                   1310 ;	main.c:166: if (count == 0x10) {	//用count從上往下掃 
      00054A 74 10            [12] 1311 	mov	a,#0x10
      00054C B5 1E 06         [24] 1312 	cjne	a,_main_count_65537_32,00256$
      00054F E4               [12] 1313 	clr	a
      000550 B5 1F 02         [24] 1314 	cjne	a,(_main_count_65537_32 + 1),00256$
      000553 80 02            [24] 1315 	sjmp	00257$
      000555                       1316 00256$:
      000555 80 0D            [24] 1317 	sjmp	00132$
      000557                       1318 00257$:
                                   1319 ;	main.c:167: count = 1;
      000557 75 1E 01         [24] 1320 	mov	_main_count_65537_32,#0x01
                                   1321 ;	main.c:168: row   = 0;
      00055A E4               [12] 1322 	clr	a
      00055B F5 1F            [12] 1323 	mov	(_main_count_65537_32 + 1),a
      00055D F5 1C            [12] 1324 	mov	_main_row_65537_32,a
      00055F F5 1D            [12] 1325 	mov	(_main_row_65537_32 + 1),a
                                   1326 ;	main.c:169: P1 = 0b11111111;
      000561 75 90 FF         [24] 1327 	mov	_P1,#0xff
      000564                       1328 00132$:
                                   1329 ;	main.c:172: if (setting_bi_time || isSetting)
      000564 EC               [12] 1330 	mov	a,r4
      000565 70 03            [24] 1331 	jnz	00136$
      000567 ED               [12] 1332 	mov	a,r5
      000568 60 6B            [24] 1333 	jz	00137$
      00056A                       1334 00136$:
                                   1335 ;	main.c:173: if (isSetting)
      00056A ED               [12] 1336 	mov	a,r5
      00056B 60 34            [24] 1337 	jz	00134$
                                   1338 ;	main.c:174: display(table, alpha, num, 1, flash_flag);
      00056D 75 54 30         [24] 1339 	mov	_display_PARM_2,#_main_alpha_65537_32
      000570 75 55 00         [24] 1340 	mov	(_display_PARM_2 + 1),#0x00
      000573 75 56 40         [24] 1341 	mov	(_display_PARM_2 + 2),#0x40
      000576 75 57 20         [24] 1342 	mov	_display_PARM_3,#_main_num_65537_32
      000579 75 58 00         [24] 1343 	mov	(_display_PARM_3 + 1),#0x00
      00057C 75 59 40         [24] 1344 	mov	(_display_PARM_3 + 2),#0x40
      00057F 75 5A 01         [24] 1345 	mov	_display_PARM_4,#0x01
      000582 85 50 5B         [24] 1346 	mov	_display_PARM_5,_main_flash_flag_65538_33
      000585 85 51 5C         [24] 1347 	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_33 + 1)
      000588 85 52 5D         [24] 1348 	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_33 + 2)
      00058B 85 53 5E         [24] 1349 	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_33 + 3)
      00058E 90 00 46         [24] 1350 	mov	dptr,#_main_table_65537_32
      000591 75 F0 40         [24] 1351 	mov	b,#0x40
      000594 C0 05            [24] 1352 	push	ar5
      000596 C0 04            [24] 1353 	push	ar4
      000598 12 02 34         [24] 1354 	lcall	_display
      00059B D0 04            [24] 1355 	pop	ar4
      00059D D0 05            [24] 1356 	pop	ar5
      00059F 80 66            [24] 1357 	sjmp	00138$
      0005A1                       1358 00134$:
                                   1359 ;	main.c:176: display(table, alpha, num_bi, 1, flash_flag);
      0005A1 75 54 30         [24] 1360 	mov	_display_PARM_2,#_main_alpha_65537_32
      0005A4 75 55 00         [24] 1361 	mov	(_display_PARM_2 + 1),#0x00
      0005A7 75 56 40         [24] 1362 	mov	(_display_PARM_2 + 2),#0x40
      0005AA 75 57 28         [24] 1363 	mov	_display_PARM_3,#_main_num_bi_65537_32
      0005AD 75 58 00         [24] 1364 	mov	(_display_PARM_3 + 1),#0x00
      0005B0 75 59 40         [24] 1365 	mov	(_display_PARM_3 + 2),#0x40
      0005B3 75 5A 01         [24] 1366 	mov	_display_PARM_4,#0x01
      0005B6 85 50 5B         [24] 1367 	mov	_display_PARM_5,_main_flash_flag_65538_33
      0005B9 85 51 5C         [24] 1368 	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_33 + 1)
      0005BC 85 52 5D         [24] 1369 	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_33 + 2)
      0005BF 85 53 5E         [24] 1370 	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_33 + 3)
      0005C2 90 00 46         [24] 1371 	mov	dptr,#_main_table_65537_32
      0005C5 75 F0 40         [24] 1372 	mov	b,#0x40
      0005C8 C0 05            [24] 1373 	push	ar5
      0005CA C0 04            [24] 1374 	push	ar4
      0005CC 12 02 34         [24] 1375 	lcall	_display
      0005CF D0 04            [24] 1376 	pop	ar4
      0005D1 D0 05            [24] 1377 	pop	ar5
      0005D3 80 32            [24] 1378 	sjmp	00138$
      0005D5                       1379 00137$:
                                   1380 ;	main.c:178: display(table, alpha, num, 0, flash_flag);
      0005D5 75 54 30         [24] 1381 	mov	_display_PARM_2,#_main_alpha_65537_32
      0005D8 75 55 00         [24] 1382 	mov	(_display_PARM_2 + 1),#0x00
      0005DB 75 56 40         [24] 1383 	mov	(_display_PARM_2 + 2),#0x40
      0005DE 75 57 20         [24] 1384 	mov	_display_PARM_3,#_main_num_65537_32
      0005E1 75 58 00         [24] 1385 	mov	(_display_PARM_3 + 1),#0x00
      0005E4 75 59 40         [24] 1386 	mov	(_display_PARM_3 + 2),#0x40
      0005E7 75 5A 00         [24] 1387 	mov	_display_PARM_4,#0x00
      0005EA 85 50 5B         [24] 1388 	mov	_display_PARM_5,_main_flash_flag_65538_33
      0005ED 85 51 5C         [24] 1389 	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_33 + 1)
      0005F0 85 52 5D         [24] 1390 	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_33 + 2)
      0005F3 85 53 5E         [24] 1391 	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_33 + 3)
      0005F6 90 00 46         [24] 1392 	mov	dptr,#_main_table_65537_32
      0005F9 75 F0 40         [24] 1393 	mov	b,#0x40
      0005FC C0 05            [24] 1394 	push	ar5
      0005FE C0 04            [24] 1395 	push	ar4
      000600 12 02 34         [24] 1396 	lcall	_display
      000603 D0 04            [24] 1397 	pop	ar4
      000605 D0 05            [24] 1398 	pop	ar5
      000607                       1399 00138$:
                                   1400 ;	main.c:179: check_sound_trigger();
      000607 C0 05            [24] 1401 	push	ar5
      000609 C0 04            [24] 1402 	push	ar4
      00060B 12 03 79         [24] 1403 	lcall	_check_sound_trigger
      00060E D0 04            [24] 1404 	pop	ar4
      000610 D0 05            [24] 1405 	pop	ar5
                                   1406 ;	main.c:182: }
      000612 02 04 16         [24] 1407 	ljmp	00141$
                                   1408 	.area CSEG    (CODE)
                                   1409 	.area CONST   (CODE)
                                   1410 	.area XINIT   (CODE)
                                   1411 	.area CABS    (ABS,CODE)
