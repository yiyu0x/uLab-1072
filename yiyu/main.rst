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
                                     11 	.globl _check_sound_trigger_PARM_2
                                     12 	.globl _display_PARM_5
                                     13 	.globl _display_PARM_4
                                     14 	.globl _display_PARM_3
                                     15 	.globl _display_PARM_2
                                     16 	.globl _main
                                     17 	.globl _play
                                     18 	.globl _check_sound_trigger
                                     19 	.globl _display
                                     20 	.globl _keyPressed
                                     21 	.globl _timer1
                                     22 	.globl _timer_isr
                                     23 	.globl _run_clock
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _F1
                                     31 	.globl _P
                                     32 	.globl _PS
                                     33 	.globl _PT1
                                     34 	.globl _PX1
                                     35 	.globl _PT0
                                     36 	.globl _PX0
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _EA
                                     54 	.globl _ES
                                     55 	.globl _ET1
                                     56 	.globl _EX1
                                     57 	.globl _ET0
                                     58 	.globl _EX0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _SM0
                                     68 	.globl _SM1
                                     69 	.globl _SM2
                                     70 	.globl _REN
                                     71 	.globl _TB8
                                     72 	.globl _RB8
                                     73 	.globl _TI
                                     74 	.globl _RI
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _TF1
                                     84 	.globl _TR1
                                     85 	.globl _TF0
                                     86 	.globl _TR0
                                     87 	.globl _IE1
                                     88 	.globl _IT1
                                     89 	.globl _IE0
                                     90 	.globl _IT0
                                     91 	.globl _P0_7
                                     92 	.globl _P0_6
                                     93 	.globl _P0_5
                                     94 	.globl _P0_4
                                     95 	.globl _P0_3
                                     96 	.globl _P0_2
                                     97 	.globl _P0_1
                                     98 	.globl _P0_0
                                     99 	.globl _B
                                    100 	.globl _ACC
                                    101 	.globl _PSW
                                    102 	.globl _IP
                                    103 	.globl _P3
                                    104 	.globl _IE
                                    105 	.globl _P2
                                    106 	.globl _SBUF
                                    107 	.globl _SCON
                                    108 	.globl _P1
                                    109 	.globl _TH1
                                    110 	.globl _TH0
                                    111 	.globl _TL1
                                    112 	.globl _TL0
                                    113 	.globl _TMOD
                                    114 	.globl _TCON
                                    115 	.globl _PCON
                                    116 	.globl _DPH
                                    117 	.globl _DPL
                                    118 	.globl _SP
                                    119 	.globl _P0
                                    120 	.globl _play_sound
                                    121 	.globl _counter
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        234 	.ds 8
                                    235 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        236 	.ds 8
                                    237 ;--------------------------------------------------------
                                    238 ; internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area DSEG    (DATA)
      000018                        241 _counter::
      000018                        242 	.ds 2
      00001A                        243 _play_sound::
      00001A                        244 	.ds 1
      00001B                        245 _main_previous_65537_36:
      00001B                        246 	.ds 2
      00001D                        247 _main_row_65537_36:
      00001D                        248 	.ds 2
      00001F                        249 _main_count_65537_36:
      00001F                        250 	.ds 2
      000021                        251 _main_num_65537_36:
      000021                        252 	.ds 8
      000029                        253 _main_num_bi_65537_36:
      000029                        254 	.ds 8
      000031                        255 _main_alpha_65537_36:
      000031                        256 	.ds 22
      000047                        257 _main_table_65537_36:
      000047                        258 	.ds 8
      00004F                        259 _main_index_65538_37:
      00004F                        260 	.ds 2
      000051                        261 _main_flash_flag_65538_37:
      000051                        262 	.ds 4
                                    263 ;--------------------------------------------------------
                                    264 ; overlayable items in internal ram 
                                    265 ;--------------------------------------------------------
                                    266 	.area	OSEG    (OVR,DATA)
      000055                        267 _run_clock_sloc0_1_0:
      000055                        268 	.ds 3
                                    269 	.area	OSEG    (OVR,DATA)
      000055                        270 _keyPressed_row_65536_11:
      000055                        271 	.ds 2
                                    272 	.area	OSEG    (OVR,DATA)
      000055                        273 _display_PARM_2:
      000055                        274 	.ds 3
      000058                        275 _display_PARM_3:
      000058                        276 	.ds 3
      00005B                        277 _display_PARM_4:
      00005B                        278 	.ds 1
      00005C                        279 _display_PARM_5:
      00005C                        280 	.ds 4
      000060                        281 _display_table_65536_17:
      000060                        282 	.ds 3
      000063                        283 _display_t_262144_21:
      000063                        284 	.ds 2
      000065                        285 _display_t_196608_26:
      000065                        286 	.ds 2
                                    287 	.area	OSEG    (OVR,DATA)
      000055                        288 _check_sound_trigger_PARM_2:
      000055                        289 	.ds 3
      000058                        290 _check_sound_trigger_num_65536_30:
      000058                        291 	.ds 3
                                    292 ;--------------------------------------------------------
                                    293 ; Stack segment in internal ram 
                                    294 ;--------------------------------------------------------
                                    295 	.area	SSEG
      000067                        296 __start__stack:
      000067                        297 	.ds	1
                                    298 
                                    299 ;--------------------------------------------------------
                                    300 ; indirectly addressable internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area ISEG    (DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area IABS    (ABS,DATA)
                                    307 	.area IABS    (ABS,DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; bit data
                                    310 ;--------------------------------------------------------
                                    311 	.area BSEG    (BIT)
                                    312 ;--------------------------------------------------------
                                    313 ; paged external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area PSEG    (PAG,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XSEG    (XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; absolute external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XABS    (ABS,XDATA)
                                    324 ;--------------------------------------------------------
                                    325 ; external initialized ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area XISEG   (XDATA)
                                    328 	.area HOME    (CODE)
                                    329 	.area GSINIT0 (CODE)
                                    330 	.area GSINIT1 (CODE)
                                    331 	.area GSINIT2 (CODE)
                                    332 	.area GSINIT3 (CODE)
                                    333 	.area GSINIT4 (CODE)
                                    334 	.area GSINIT5 (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.area GSFINAL (CODE)
                                    337 	.area CSEG    (CODE)
                                    338 ;--------------------------------------------------------
                                    339 ; interrupt vector 
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
      000000                        342 __interrupt_vect:
      000000 02 00 21         [24]  343 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  344 	reti
      000004                        345 	.ds	7
      00000B 02 01 A1         [24]  346 	ljmp	_timer_isr
      00000E                        347 	.ds	5
      000013 32               [24]  348 	reti
      000014                        349 	.ds	7
      00001B 02 01 B8         [24]  350 	ljmp	_timer1
                                    351 ;--------------------------------------------------------
                                    352 ; global & static initialisations
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.globl __sdcc_gsinit_startup
                                    359 	.globl __sdcc_program_startup
                                    360 	.globl __start__stack
                                    361 	.globl __mcs51_genXINIT
                                    362 	.globl __mcs51_genXRAMCLEAR
                                    363 	.globl __mcs51_genRAMCLEAR
                                    364 ;	main.c:5: short counter = 0;
      00007A E4               [12]  365 	clr	a
      00007B F5 18            [12]  366 	mov	_counter,a
      00007D F5 19            [12]  367 	mov	(_counter + 1),a
                                    368 ;	main.c:6: bool play_sound = false;
                                    369 ;	1-genFromRTrack replaced	mov	_play_sound,#0x00
      00007F F5 1A            [12]  370 	mov	_play_sound,a
                                    371 	.area GSFINAL (CODE)
      000081 02 00 1E         [24]  372 	ljmp	__sdcc_program_startup
                                    373 ;--------------------------------------------------------
                                    374 ; Home
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area HOME    (CODE)
      00001E                        378 __sdcc_program_startup:
      00001E 02 03 D9         [24]  379 	ljmp	_main
                                    380 ;	return from main will return to caller
                                    381 ;--------------------------------------------------------
                                    382 ; code
                                    383 ;--------------------------------------------------------
                                    384 	.area CSEG    (CODE)
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'run_clock'
                                    387 ;------------------------------------------------------------
                                    388 ;num                       Allocated to registers r5 r6 r7 
                                    389 ;sloc0                     Allocated with name '_run_clock_sloc0_1_0'
                                    390 ;------------------------------------------------------------
                                    391 ;	main.c:7: void run_clock(short num[]) {
                                    392 ;	-----------------------------------------
                                    393 ;	 function run_clock
                                    394 ;	-----------------------------------------
      000084                        395 _run_clock:
                           000007   396 	ar7 = 0x07
                           000006   397 	ar6 = 0x06
                           000005   398 	ar5 = 0x05
                           000004   399 	ar4 = 0x04
                           000003   400 	ar3 = 0x03
                           000002   401 	ar2 = 0x02
                           000001   402 	ar1 = 0x01
                           000000   403 	ar0 = 0x00
      000084 AD 82            [24]  404 	mov	r5,dpl
      000086 AE 83            [24]  405 	mov	r6,dph
      000088 AF F0            [24]  406 	mov	r7,b
                                    407 ;	main.c:8: if (counter >= 20) {
      00008A C3               [12]  408 	clr	c
      00008B E5 18            [12]  409 	mov	a,_counter
      00008D 94 14            [12]  410 	subb	a,#0x14
      00008F E5 19            [12]  411 	mov	a,(_counter + 1)
      000091 64 80            [12]  412 	xrl	a,#0x80
      000093 94 80            [12]  413 	subb	a,#0x80
      000095 50 01            [24]  414 	jnc	00127$
      000097 22               [24]  415 	ret
      000098                        416 00127$:
                                    417 ;	main.c:9: num[3]++;
      000098 74 06            [12]  418 	mov	a,#0x06
      00009A 2D               [12]  419 	add	a,r5
      00009B FA               [12]  420 	mov	r2,a
      00009C E4               [12]  421 	clr	a
      00009D 3E               [12]  422 	addc	a,r6
      00009E FB               [12]  423 	mov	r3,a
      00009F 8F 04            [24]  424 	mov	ar4,r7
      0000A1 8A 82            [24]  425 	mov	dpl,r2
      0000A3 8B 83            [24]  426 	mov	dph,r3
      0000A5 8C F0            [24]  427 	mov	b,r4
      0000A7 12 06 BB         [24]  428 	lcall	__gptrget
      0000AA F8               [12]  429 	mov	r0,a
      0000AB A3               [24]  430 	inc	dptr
      0000AC 12 06 BB         [24]  431 	lcall	__gptrget
      0000AF F9               [12]  432 	mov	r1,a
      0000B0 08               [12]  433 	inc	r0
      0000B1 B8 00 01         [24]  434 	cjne	r0,#0x00,00128$
      0000B4 09               [12]  435 	inc	r1
      0000B5                        436 00128$:
      0000B5 8A 82            [24]  437 	mov	dpl,r2
      0000B7 8B 83            [24]  438 	mov	dph,r3
      0000B9 8C F0            [24]  439 	mov	b,r4
      0000BB E8               [12]  440 	mov	a,r0
      0000BC 12 06 A0         [24]  441 	lcall	__gptrput
      0000BF A3               [24]  442 	inc	dptr
      0000C0 E9               [12]  443 	mov	a,r1
      0000C1 12 06 A0         [24]  444 	lcall	__gptrput
                                    445 ;	main.c:10: counter = 0;
      0000C4 E4               [12]  446 	clr	a
      0000C5 F5 18            [12]  447 	mov	_counter,a
      0000C7 F5 19            [12]  448 	mov	(_counter + 1),a
                                    449 ;	main.c:11: if (num[3] == 10) {
      0000C9 8A 82            [24]  450 	mov	dpl,r2
      0000CB 8B 83            [24]  451 	mov	dph,r3
      0000CD 8C F0            [24]  452 	mov	b,r4
      0000CF 12 06 BB         [24]  453 	lcall	__gptrget
      0000D2 F8               [12]  454 	mov	r0,a
      0000D3 A3               [24]  455 	inc	dptr
      0000D4 12 06 BB         [24]  456 	lcall	__gptrget
      0000D7 F9               [12]  457 	mov	r1,a
      0000D8 B8 0A 05         [24]  458 	cjne	r0,#0x0a,00129$
      0000DB B9 00 02         [24]  459 	cjne	r1,#0x00,00129$
      0000DE 80 01            [24]  460 	sjmp	00130$
      0000E0                        461 00129$:
      0000E0 22               [24]  462 	ret
      0000E1                        463 00130$:
                                    464 ;	main.c:12: num[3] = 0;
      0000E1 8A 82            [24]  465 	mov	dpl,r2
      0000E3 8B 83            [24]  466 	mov	dph,r3
      0000E5 8C F0            [24]  467 	mov	b,r4
      0000E7 E4               [12]  468 	clr	a
      0000E8 12 06 A0         [24]  469 	lcall	__gptrput
      0000EB A3               [24]  470 	inc	dptr
      0000EC 12 06 A0         [24]  471 	lcall	__gptrput
                                    472 ;	main.c:13: num[2]++;
      0000EF 74 04            [12]  473 	mov	a,#0x04
      0000F1 2D               [12]  474 	add	a,r5
      0000F2 FA               [12]  475 	mov	r2,a
      0000F3 E4               [12]  476 	clr	a
      0000F4 3E               [12]  477 	addc	a,r6
      0000F5 FB               [12]  478 	mov	r3,a
      0000F6 8F 04            [24]  479 	mov	ar4,r7
      0000F8 8A 82            [24]  480 	mov	dpl,r2
      0000FA 8B 83            [24]  481 	mov	dph,r3
      0000FC 8C F0            [24]  482 	mov	b,r4
      0000FE 12 06 BB         [24]  483 	lcall	__gptrget
      000101 F8               [12]  484 	mov	r0,a
      000102 A3               [24]  485 	inc	dptr
      000103 12 06 BB         [24]  486 	lcall	__gptrget
      000106 F9               [12]  487 	mov	r1,a
      000107 08               [12]  488 	inc	r0
      000108 B8 00 01         [24]  489 	cjne	r0,#0x00,00131$
      00010B 09               [12]  490 	inc	r1
      00010C                        491 00131$:
      00010C 8A 82            [24]  492 	mov	dpl,r2
      00010E 8B 83            [24]  493 	mov	dph,r3
      000110 8C F0            [24]  494 	mov	b,r4
      000112 E8               [12]  495 	mov	a,r0
      000113 12 06 A0         [24]  496 	lcall	__gptrput
      000116 A3               [24]  497 	inc	dptr
      000117 E9               [12]  498 	mov	a,r1
      000118 12 06 A0         [24]  499 	lcall	__gptrput
                                    500 ;	main.c:14: if (num[2] == 6) {
      00011B B8 06 05         [24]  501 	cjne	r0,#0x06,00132$
      00011E B9 00 02         [24]  502 	cjne	r1,#0x00,00132$
      000121 80 01            [24]  503 	sjmp	00133$
      000123                        504 00132$:
      000123 22               [24]  505 	ret
      000124                        506 00133$:
                                    507 ;	main.c:15: num[1]++;
      000124 74 02            [12]  508 	mov	a,#0x02
      000126 2D               [12]  509 	add	a,r5
      000127 F5 55            [12]  510 	mov	_run_clock_sloc0_1_0,a
      000129 E4               [12]  511 	clr	a
      00012A 3E               [12]  512 	addc	a,r6
      00012B F5 56            [12]  513 	mov	(_run_clock_sloc0_1_0 + 1),a
      00012D 8F 57            [24]  514 	mov	(_run_clock_sloc0_1_0 + 2),r7
      00012F 85 55 82         [24]  515 	mov	dpl,_run_clock_sloc0_1_0
      000132 85 56 83         [24]  516 	mov	dph,(_run_clock_sloc0_1_0 + 1)
      000135 85 57 F0         [24]  517 	mov	b,(_run_clock_sloc0_1_0 + 2)
      000138 12 06 BB         [24]  518 	lcall	__gptrget
      00013B F8               [12]  519 	mov	r0,a
      00013C A3               [24]  520 	inc	dptr
      00013D 12 06 BB         [24]  521 	lcall	__gptrget
      000140 F9               [12]  522 	mov	r1,a
      000141 08               [12]  523 	inc	r0
      000142 B8 00 01         [24]  524 	cjne	r0,#0x00,00134$
      000145 09               [12]  525 	inc	r1
      000146                        526 00134$:
      000146 85 55 82         [24]  527 	mov	dpl,_run_clock_sloc0_1_0
      000149 85 56 83         [24]  528 	mov	dph,(_run_clock_sloc0_1_0 + 1)
      00014C 85 57 F0         [24]  529 	mov	b,(_run_clock_sloc0_1_0 + 2)
      00014F E8               [12]  530 	mov	a,r0
      000150 12 06 A0         [24]  531 	lcall	__gptrput
      000153 A3               [24]  532 	inc	dptr
      000154 E9               [12]  533 	mov	a,r1
      000155 12 06 A0         [24]  534 	lcall	__gptrput
                                    535 ;	main.c:16: num[2] = 0;
      000158 8A 82            [24]  536 	mov	dpl,r2
      00015A 8B 83            [24]  537 	mov	dph,r3
      00015C 8C F0            [24]  538 	mov	b,r4
      00015E E4               [12]  539 	clr	a
      00015F 12 06 A0         [24]  540 	lcall	__gptrput
      000162 A3               [24]  541 	inc	dptr
      000163 12 06 A0         [24]  542 	lcall	__gptrput
                                    543 ;	main.c:17: if (num[1] == 10) {
      000166 B8 0A 37         [24]  544 	cjne	r0,#0x0a,00109$
      000169 B9 00 34         [24]  545 	cjne	r1,#0x00,00109$
                                    546 ;	main.c:18: num[1] = 0;
      00016C 85 55 82         [24]  547 	mov	dpl,_run_clock_sloc0_1_0
      00016F 85 56 83         [24]  548 	mov	dph,(_run_clock_sloc0_1_0 + 1)
      000172 85 57 F0         [24]  549 	mov	b,(_run_clock_sloc0_1_0 + 2)
      000175 E4               [12]  550 	clr	a
      000176 12 06 A0         [24]  551 	lcall	__gptrput
      000179 A3               [24]  552 	inc	dptr
      00017A 12 06 A0         [24]  553 	lcall	__gptrput
                                    554 ;	main.c:19: num[0]++;
      00017D 8D 82            [24]  555 	mov	dpl,r5
      00017F 8E 83            [24]  556 	mov	dph,r6
      000181 8F F0            [24]  557 	mov	b,r7
      000183 12 06 BB         [24]  558 	lcall	__gptrget
      000186 FB               [12]  559 	mov	r3,a
      000187 A3               [24]  560 	inc	dptr
      000188 12 06 BB         [24]  561 	lcall	__gptrget
      00018B FC               [12]  562 	mov	r4,a
      00018C 0B               [12]  563 	inc	r3
      00018D BB 00 01         [24]  564 	cjne	r3,#0x00,00137$
      000190 0C               [12]  565 	inc	r4
      000191                        566 00137$:
      000191 8D 82            [24]  567 	mov	dpl,r5
      000193 8E 83            [24]  568 	mov	dph,r6
      000195 8F F0            [24]  569 	mov	b,r7
      000197 EB               [12]  570 	mov	a,r3
      000198 12 06 A0         [24]  571 	lcall	__gptrput
      00019B A3               [24]  572 	inc	dptr
      00019C EC               [12]  573 	mov	a,r4
                                    574 ;	main.c:24: }
      00019D 02 06 A0         [24]  575 	ljmp	__gptrput
      0001A0                        576 00109$:
      0001A0 22               [24]  577 	ret
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'timer_isr'
                                    580 ;------------------------------------------------------------
                                    581 ;	main.c:26: void timer_isr (void) __interrupt (1) __using (1) {	//控制聲音頻率
                                    582 ;	-----------------------------------------
                                    583 ;	 function timer_isr
                                    584 ;	-----------------------------------------
      0001A1                        585 _timer_isr:
                           00000F   586 	ar7 = 0x0f
                           00000E   587 	ar6 = 0x0e
                           00000D   588 	ar5 = 0x0d
                           00000C   589 	ar4 = 0x0c
                           00000B   590 	ar3 = 0x0b
                           00000A   591 	ar2 = 0x0a
                           000009   592 	ar1 = 0x09
                           000008   593 	ar0 = 0x08
      0001A1 C0 E0            [24]  594 	push	acc
      0001A3 C0 D0            [24]  595 	push	psw
                                    596 ;	main.c:27: TH0  = 15536 >> 8;
      0001A5 75 8C 3C         [24]  597 	mov	_TH0,#0x3c
                                    598 ;	main.c:28: TL0  = 15536 & 0xff;
      0001A8 75 8A B0         [24]  599 	mov	_TL0,#0xb0
                                    600 ;	main.c:31: counter++;
      0001AB 05 18            [12]  601 	inc	_counter
      0001AD E4               [12]  602 	clr	a
      0001AE B5 18 02         [24]  603 	cjne	a,_counter,00103$
      0001B1 05 19            [12]  604 	inc	(_counter + 1)
      0001B3                        605 00103$:
                                    606 ;	main.c:34: }
      0001B3 D0 D0            [24]  607 	pop	psw
      0001B5 D0 E0            [24]  608 	pop	acc
      0001B7 32               [24]  609 	reti
                                    610 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    611 ;	eliminated unneeded push/pop dpl
                                    612 ;	eliminated unneeded push/pop dph
                                    613 ;	eliminated unneeded push/pop b
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'timer1'
                                    616 ;------------------------------------------------------------
                                    617 ;	main.c:36: void timer1 (void) __interrupt (3) __using (2) {	//換下一個音
                                    618 ;	-----------------------------------------
                                    619 ;	 function timer1
                                    620 ;	-----------------------------------------
      0001B8                        621 _timer1:
                           000017   622 	ar7 = 0x17
                           000016   623 	ar6 = 0x16
                           000015   624 	ar5 = 0x15
                           000014   625 	ar4 = 0x14
                           000013   626 	ar3 = 0x13
                           000012   627 	ar2 = 0x12
                           000011   628 	ar1 = 0x11
                           000010   629 	ar0 = 0x10
                                    630 ;	main.c:37: TH1  = 15536 >> 8;
      0001B8 75 8D 3C         [24]  631 	mov	_TH1,#0x3c
                                    632 ;	main.c:38: TL1  = 15536 & 0xff;
      0001BB 75 8B B0         [24]  633 	mov	_TL1,#0xb0
                                    634 ;	main.c:39: }
      0001BE 32               [24]  635 	reti
                                    636 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    637 ;	eliminated unneeded push/pop psw
                                    638 ;	eliminated unneeded push/pop dpl
                                    639 ;	eliminated unneeded push/pop dph
                                    640 ;	eliminated unneeded push/pop b
                                    641 ;	eliminated unneeded push/pop acc
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'keyPressed'
                                    644 ;------------------------------------------------------------
                                    645 ;row                       Allocated with name '_keyPressed_row_65536_11'
                                    646 ;c                         Allocated to registers r4 r5 
                                    647 ;col                       Allocated to registers r2 r3 
                                    648 ;magic                     Allocated to registers r7 r6 
                                    649 ;------------------------------------------------------------
                                    650 ;	main.c:42: short keyPressed(short row) {
                                    651 ;	-----------------------------------------
                                    652 ;	 function keyPressed
                                    653 ;	-----------------------------------------
      0001BF                        654 _keyPressed:
                           000007   655 	ar7 = 0x07
                           000006   656 	ar6 = 0x06
                           000005   657 	ar5 = 0x05
                           000004   658 	ar4 = 0x04
                           000003   659 	ar3 = 0x03
                           000002   660 	ar2 = 0x02
                           000001   661 	ar1 = 0x01
                           000000   662 	ar0 = 0x00
      0001BF 85 82 55         [24]  663 	mov	_keyPressed_row_65536_11,dpl
      0001C2 85 83 56         [24]  664 	mov	(_keyPressed_row_65536_11 + 1),dph
                                    665 ;	main.c:43: if((P0 & 0b11110000) != 0b11110000){	//if 按下按鈕
      0001C5 AC 80            [24]  666 	mov	r4,_P0
      0001C7 53 04 F0         [24]  667 	anl	ar4,#0xf0
      0001CA 7D 00            [12]  668 	mov	r5,#0x00
      0001CC BC F0 05         [24]  669 	cjne	r4,#0xf0,00127$
      0001CF BD 00 02         [24]  670 	cjne	r5,#0x00,00127$
      0001D2 80 56            [24]  671 	sjmp	00105$
      0001D4                        672 00127$:
                                    673 ;	main.c:44: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      0001D4 7C 01            [12]  674 	mov	r4,#0x01
      0001D6 7D 00            [12]  675 	mov	r5,#0x00
      0001D8 7A 00            [12]  676 	mov	r2,#0x00
      0001DA 7B 00            [12]  677 	mov	r3,#0x00
      0001DC 78 00            [12]  678 	mov	r0,#0x00
      0001DE 79 00            [12]  679 	mov	r1,#0x00
      0001E0                        680 00107$:
      0001E0 C3               [12]  681 	clr	c
      0001E1 E8               [12]  682 	mov	a,r0
      0001E2 94 04            [12]  683 	subb	a,#0x04
      0001E4 E9               [12]  684 	mov	a,r1
      0001E5 64 80            [12]  685 	xrl	a,#0x80
      0001E7 94 80            [12]  686 	subb	a,#0x80
      0001E9 50 3F            [24]  687 	jnc	00105$
                                    688 ;	main.c:46: `			short magic = ((P0 >> 4) ^ 0b11111111) & 0b00001111;
      0001EB E5 80            [12]  689 	mov	a,_P0
      0001ED C4               [12]  690 	swap	a
      0001EE 54 0F            [12]  691 	anl	a,#0x0f
      0001F0 FF               [12]  692 	mov	r7,a
      0001F1 63 07 FF         [24]  693 	xrl	ar7,#0xff
      0001F4 53 07 0F         [24]  694 	anl	ar7,#0x0f
      0001F7 7E 00            [12]  695 	mov	r6,#0x00
                                    696 ;	main.c:47: if (magic == c) {
      0001F9 EF               [12]  697 	mov	a,r7
      0001FA B5 04 1C         [24]  698 	cjne	a,ar4,00108$
      0001FD EE               [12]  699 	mov	a,r6
      0001FE B5 05 18         [24]  700 	cjne	a,ar5,00108$
                                    701 ;	main.c:48: return row * 4 + col;
      000201 E5 55            [12]  702 	mov	a,_keyPressed_row_65536_11
      000203 25 55            [12]  703 	add	a,_keyPressed_row_65536_11
      000205 FE               [12]  704 	mov	r6,a
      000206 E5 56            [12]  705 	mov	a,(_keyPressed_row_65536_11 + 1)
      000208 33               [12]  706 	rlc	a
      000209 FF               [12]  707 	mov	r7,a
      00020A EE               [12]  708 	mov	a,r6
      00020B 2E               [12]  709 	add	a,r6
      00020C FE               [12]  710 	mov	r6,a
      00020D EF               [12]  711 	mov	a,r7
      00020E 33               [12]  712 	rlc	a
      00020F FF               [12]  713 	mov	r7,a
      000210 EA               [12]  714 	mov	a,r2
      000211 2E               [12]  715 	add	a,r6
      000212 F5 82            [12]  716 	mov	dpl,a
      000214 EB               [12]  717 	mov	a,r3
      000215 3F               [12]  718 	addc	a,r7
      000216 F5 83            [12]  719 	mov	dph,a
      000218 22               [24]  720 	ret
      000219                        721 00108$:
                                    722 ;	main.c:44: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      000219 EC               [12]  723 	mov	a,r4
      00021A 2C               [12]  724 	add	a,r4
      00021B FC               [12]  725 	mov	r4,a
      00021C ED               [12]  726 	mov	a,r5
      00021D 33               [12]  727 	rlc	a
      00021E FD               [12]  728 	mov	r5,a
      00021F 08               [12]  729 	inc	r0
      000220 B8 00 01         [24]  730 	cjne	r0,#0x00,00131$
      000223 09               [12]  731 	inc	r1
      000224                        732 00131$:
      000224 88 02            [24]  733 	mov	ar2,r0
      000226 89 03            [24]  734 	mov	ar3,r1
      000228 80 B6            [24]  735 	sjmp	00107$
      00022A                        736 00105$:
                                    737 ;	main.c:52: return -1;	//沒按 return -1
      00022A 90 FF FF         [24]  738 	mov	dptr,#0xffff
                                    739 ;	main.c:53: }
      00022D 22               [24]  740 	ret
                                    741 ;------------------------------------------------------------
                                    742 ;Allocation info for local variables in function 'display'
                                    743 ;------------------------------------------------------------
                                    744 ;alpha                     Allocated with name '_display_PARM_2'
                                    745 ;num                       Allocated with name '_display_PARM_3'
                                    746 ;isSetting                 Allocated with name '_display_PARM_4'
                                    747 ;flash_flag                Allocated with name '_display_PARM_5'
                                    748 ;table                     Allocated with name '_display_table_65536_17'
                                    749 ;i                         Allocated to registers r1 r2 
                                    750 ;t                         Allocated with name '_display_t_262144_21'
                                    751 ;j                         Allocated to registers r6 r7 
                                    752 ;i                         Allocated to registers r4 r5 
                                    753 ;t                         Allocated with name '_display_t_196608_26'
                                    754 ;j                         Allocated to registers r6 r7 
                                    755 ;------------------------------------------------------------
                                    756 ;	main.c:55: void display(short table[], short alpha[], short num[], bool isSetting, long flash_flag) {
                                    757 ;	-----------------------------------------
                                    758 ;	 function display
                                    759 ;	-----------------------------------------
      00022E                        760 _display:
      00022E 85 82 60         [24]  761 	mov	_display_table_65536_17,dpl
      000231 85 83 61         [24]  762 	mov	(_display_table_65536_17 + 1),dph
      000234 85 F0 62         [24]  763 	mov	(_display_table_65536_17 + 2),b
                                    764 ;	main.c:56: if (isSetting) { // flashing
      000237 E5 5B            [12]  765 	mov	a,_display_PARM_4
      000239 70 03            [24]  766 	jnz	00168$
      00023B 02 02 E5         [24]  767 	ljmp	00108$
      00023E                        768 00168$:
                                    769 ;	main.c:57: if (flash_flag > 7800) { // 頻率
      00023E C3               [12]  770 	clr	c
      00023F 74 78            [12]  771 	mov	a,#0x78
      000241 95 5C            [12]  772 	subb	a,_display_PARM_5
      000243 74 1E            [12]  773 	mov	a,#0x1e
      000245 95 5D            [12]  774 	subb	a,(_display_PARM_5 + 1)
      000247 E4               [12]  775 	clr	a
      000248 95 5E            [12]  776 	subb	a,(_display_PARM_5 + 2)
      00024A 74 80            [12]  777 	mov	a,#(0x00 ^ 0x80)
      00024C 85 5F F0         [24]  778 	mov	b,(_display_PARM_5 + 3)
      00024F 63 F0 80         [24]  779 	xrl	b,#0x80
      000252 95 F0            [12]  780 	subb	a,b
      000254 40 01            [24]  781 	jc	00169$
      000256 22               [24]  782 	ret
      000257                        783 00169$:
                                    784 ;	main.c:58: for(short i = 0,t=1; i < 4; i++,t*=2) {
      000257 75 63 01         [24]  785 	mov	_display_t_262144_21,#0x01
      00025A 75 64 00         [24]  786 	mov	(_display_t_262144_21 + 1),#0x00
      00025D 79 00            [12]  787 	mov	r1,#0x00
      00025F 7A 00            [12]  788 	mov	r2,#0x00
      000261                        789 00114$:
      000261 C3               [12]  790 	clr	c
      000262 E9               [12]  791 	mov	a,r1
      000263 94 04            [12]  792 	subb	a,#0x04
      000265 EA               [12]  793 	mov	a,r2
      000266 64 80            [12]  794 	xrl	a,#0x80
      000268 94 80            [12]  795 	subb	a,#0x80
      00026A 40 01            [24]  796 	jc	00170$
      00026C 22               [24]  797 	ret
      00026D                        798 00170$:
                                    799 ;	main.c:59: P1 = table[i];
      00026D E9               [12]  800 	mov	a,r1
      00026E 29               [12]  801 	add	a,r1
      00026F F8               [12]  802 	mov	r0,a
      000270 EA               [12]  803 	mov	a,r2
      000271 33               [12]  804 	rlc	a
      000272 FC               [12]  805 	mov	r4,a
      000273 E8               [12]  806 	mov	a,r0
      000274 25 60            [12]  807 	add	a,_display_table_65536_17
      000276 FB               [12]  808 	mov	r3,a
      000277 EC               [12]  809 	mov	a,r4
      000278 35 61            [12]  810 	addc	a,(_display_table_65536_17 + 1)
      00027A FE               [12]  811 	mov	r6,a
      00027B AF 62            [24]  812 	mov	r7,(_display_table_65536_17 + 2)
      00027D 8B 82            [24]  813 	mov	dpl,r3
      00027F 8E 83            [24]  814 	mov	dph,r6
      000281 8F F0            [24]  815 	mov	b,r7
      000283 12 06 BB         [24]  816 	lcall	__gptrget
      000286 F5 90            [12]  817 	mov	_P1,a
                                    818 ;	main.c:60: P2 = alpha[num[i]];
      000288 E8               [12]  819 	mov	a,r0
      000289 25 58            [12]  820 	add	a,_display_PARM_3
      00028B F8               [12]  821 	mov	r0,a
      00028C EC               [12]  822 	mov	a,r4
      00028D 35 59            [12]  823 	addc	a,(_display_PARM_3 + 1)
      00028F FC               [12]  824 	mov	r4,a
      000290 AF 5A            [24]  825 	mov	r7,(_display_PARM_3 + 2)
      000292 88 82            [24]  826 	mov	dpl,r0
      000294 8C 83            [24]  827 	mov	dph,r4
      000296 8F F0            [24]  828 	mov	b,r7
      000298 12 06 BB         [24]  829 	lcall	__gptrget
      00029B F8               [12]  830 	mov	r0,a
      00029C A3               [24]  831 	inc	dptr
      00029D 12 06 BB         [24]  832 	lcall	__gptrget
      0002A0 FC               [12]  833 	mov	r4,a
      0002A1 E8               [12]  834 	mov	a,r0
      0002A2 28               [12]  835 	add	a,r0
      0002A3 F8               [12]  836 	mov	r0,a
      0002A4 EC               [12]  837 	mov	a,r4
      0002A5 33               [12]  838 	rlc	a
      0002A6 FC               [12]  839 	mov	r4,a
      0002A7 E8               [12]  840 	mov	a,r0
      0002A8 25 55            [12]  841 	add	a,_display_PARM_2
      0002AA F8               [12]  842 	mov	r0,a
      0002AB EC               [12]  843 	mov	a,r4
      0002AC 35 56            [12]  844 	addc	a,(_display_PARM_2 + 1)
      0002AE FC               [12]  845 	mov	r4,a
      0002AF AF 57            [24]  846 	mov	r7,(_display_PARM_2 + 2)
      0002B1 88 82            [24]  847 	mov	dpl,r0
      0002B3 8C 83            [24]  848 	mov	dph,r4
      0002B5 8F F0            [24]  849 	mov	b,r7
      0002B7 12 06 BB         [24]  850 	lcall	__gptrget
      0002BA F5 A0            [12]  851 	mov	_P2,a
                                    852 ;	main.c:61: for(int j = 0; j < 500; j++){}
      0002BC 7E 00            [12]  853 	mov	r6,#0x00
      0002BE 7F 00            [12]  854 	mov	r7,#0x00
      0002C0                        855 00111$:
      0002C0 C3               [12]  856 	clr	c
      0002C1 EE               [12]  857 	mov	a,r6
      0002C2 94 F4            [12]  858 	subb	a,#0xf4
      0002C4 EF               [12]  859 	mov	a,r7
      0002C5 64 80            [12]  860 	xrl	a,#0x80
      0002C7 94 81            [12]  861 	subb	a,#0x81
      0002C9 50 07            [24]  862 	jnc	00115$
      0002CB 0E               [12]  863 	inc	r6
      0002CC BE 00 F1         [24]  864 	cjne	r6,#0x00,00111$
      0002CF 0F               [12]  865 	inc	r7
      0002D0 80 EE            [24]  866 	sjmp	00111$
      0002D2                        867 00115$:
                                    868 ;	main.c:58: for(short i = 0,t=1; i < 4; i++,t*=2) {
      0002D2 09               [12]  869 	inc	r1
      0002D3 B9 00 01         [24]  870 	cjne	r1,#0x00,00173$
      0002D6 0A               [12]  871 	inc	r2
      0002D7                        872 00173$:
      0002D7 E5 63            [12]  873 	mov	a,_display_t_262144_21
      0002D9 25 63            [12]  874 	add	a,_display_t_262144_21
      0002DB F5 63            [12]  875 	mov	_display_t_262144_21,a
      0002DD E5 64            [12]  876 	mov	a,(_display_t_262144_21 + 1)
      0002DF 33               [12]  877 	rlc	a
      0002E0 F5 64            [12]  878 	mov	(_display_t_262144_21 + 1),a
      0002E2 02 02 61         [24]  879 	ljmp	00114$
      0002E5                        880 00108$:
                                    881 ;	main.c:65: for(short i = 0,t=1; i < 4; i++,t*=2) {
      0002E5 75 65 01         [24]  882 	mov	_display_t_196608_26,#0x01
      0002E8 75 66 00         [24]  883 	mov	(_display_t_196608_26 + 1),#0x00
      0002EB 7C 00            [12]  884 	mov	r4,#0x00
      0002ED 7D 00            [12]  885 	mov	r5,#0x00
      0002EF                        886 00120$:
      0002EF C3               [12]  887 	clr	c
      0002F0 EC               [12]  888 	mov	a,r4
      0002F1 94 04            [12]  889 	subb	a,#0x04
      0002F3 ED               [12]  890 	mov	a,r5
      0002F4 64 80            [12]  891 	xrl	a,#0x80
      0002F6 94 80            [12]  892 	subb	a,#0x80
      0002F8 50 78            [24]  893 	jnc	00122$
                                    894 ;	main.c:66: P1 = table[i];
      0002FA EC               [12]  895 	mov	a,r4
      0002FB 2C               [12]  896 	add	a,r4
      0002FC FA               [12]  897 	mov	r2,a
      0002FD ED               [12]  898 	mov	a,r5
      0002FE 33               [12]  899 	rlc	a
      0002FF FB               [12]  900 	mov	r3,a
      000300 EA               [12]  901 	mov	a,r2
      000301 25 60            [12]  902 	add	a,_display_table_65536_17
      000303 F8               [12]  903 	mov	r0,a
      000304 EB               [12]  904 	mov	a,r3
      000305 35 61            [12]  905 	addc	a,(_display_table_65536_17 + 1)
      000307 F9               [12]  906 	mov	r1,a
      000308 AF 62            [24]  907 	mov	r7,(_display_table_65536_17 + 2)
      00030A 88 82            [24]  908 	mov	dpl,r0
      00030C 89 83            [24]  909 	mov	dph,r1
      00030E 8F F0            [24]  910 	mov	b,r7
      000310 12 06 BB         [24]  911 	lcall	__gptrget
      000313 F5 90            [12]  912 	mov	_P1,a
                                    913 ;	main.c:67: P2 = alpha[num[i]];
      000315 EA               [12]  914 	mov	a,r2
      000316 25 58            [12]  915 	add	a,_display_PARM_3
      000318 FA               [12]  916 	mov	r2,a
      000319 EB               [12]  917 	mov	a,r3
      00031A 35 59            [12]  918 	addc	a,(_display_PARM_3 + 1)
      00031C FB               [12]  919 	mov	r3,a
      00031D AF 5A            [24]  920 	mov	r7,(_display_PARM_3 + 2)
      00031F 8A 82            [24]  921 	mov	dpl,r2
      000321 8B 83            [24]  922 	mov	dph,r3
      000323 8F F0            [24]  923 	mov	b,r7
      000325 12 06 BB         [24]  924 	lcall	__gptrget
      000328 FA               [12]  925 	mov	r2,a
      000329 A3               [24]  926 	inc	dptr
      00032A 12 06 BB         [24]  927 	lcall	__gptrget
      00032D FB               [12]  928 	mov	r3,a
      00032E EA               [12]  929 	mov	a,r2
      00032F 2A               [12]  930 	add	a,r2
      000330 FA               [12]  931 	mov	r2,a
      000331 EB               [12]  932 	mov	a,r3
      000332 33               [12]  933 	rlc	a
      000333 FB               [12]  934 	mov	r3,a
      000334 EA               [12]  935 	mov	a,r2
      000335 25 55            [12]  936 	add	a,_display_PARM_2
      000337 FA               [12]  937 	mov	r2,a
      000338 EB               [12]  938 	mov	a,r3
      000339 35 56            [12]  939 	addc	a,(_display_PARM_2 + 1)
      00033B FB               [12]  940 	mov	r3,a
      00033C AF 57            [24]  941 	mov	r7,(_display_PARM_2 + 2)
      00033E 8A 82            [24]  942 	mov	dpl,r2
      000340 8B 83            [24]  943 	mov	dph,r3
      000342 8F F0            [24]  944 	mov	b,r7
      000344 12 06 BB         [24]  945 	lcall	__gptrget
      000347 F5 A0            [12]  946 	mov	_P2,a
                                    947 ;	main.c:68: for(int j = 0; j < 1000; j++){}
      000349 7E 00            [12]  948 	mov	r6,#0x00
      00034B 7F 00            [12]  949 	mov	r7,#0x00
      00034D                        950 00117$:
      00034D C3               [12]  951 	clr	c
      00034E EE               [12]  952 	mov	a,r6
      00034F 94 E8            [12]  953 	subb	a,#0xe8
      000351 EF               [12]  954 	mov	a,r7
      000352 64 80            [12]  955 	xrl	a,#0x80
      000354 94 83            [12]  956 	subb	a,#0x83
      000356 50 07            [24]  957 	jnc	00121$
      000358 0E               [12]  958 	inc	r6
      000359 BE 00 F1         [24]  959 	cjne	r6,#0x00,00117$
      00035C 0F               [12]  960 	inc	r7
      00035D 80 EE            [24]  961 	sjmp	00117$
      00035F                        962 00121$:
                                    963 ;	main.c:65: for(short i = 0,t=1; i < 4; i++,t*=2) {
      00035F 0C               [12]  964 	inc	r4
      000360 BC 00 01         [24]  965 	cjne	r4,#0x00,00177$
      000363 0D               [12]  966 	inc	r5
      000364                        967 00177$:
      000364 E5 65            [12]  968 	mov	a,_display_t_196608_26
      000366 25 65            [12]  969 	add	a,_display_t_196608_26
      000368 F5 65            [12]  970 	mov	_display_t_196608_26,a
      00036A E5 66            [12]  971 	mov	a,(_display_t_196608_26 + 1)
      00036C 33               [12]  972 	rlc	a
      00036D F5 66            [12]  973 	mov	(_display_t_196608_26 + 1),a
      00036F 02 02 EF         [24]  974 	ljmp	00120$
      000372                        975 00122$:
                                    976 ;	main.c:71: }
      000372 22               [24]  977 	ret
                                    978 ;------------------------------------------------------------
                                    979 ;Allocation info for local variables in function 'check_sound_trigger'
                                    980 ;------------------------------------------------------------
                                    981 ;num_bi                    Allocated with name '_check_sound_trigger_PARM_2'
                                    982 ;num                       Allocated with name '_check_sound_trigger_num_65536_30'
                                    983 ;i                         Allocated to registers r3 r4 
                                    984 ;------------------------------------------------------------
                                    985 ;	main.c:73: void check_sound_trigger(short num[], short num_bi[]) {
                                    986 ;	-----------------------------------------
                                    987 ;	 function check_sound_trigger
                                    988 ;	-----------------------------------------
      000373                        989 _check_sound_trigger:
      000373 85 82 58         [24]  990 	mov	_check_sound_trigger_num_65536_30,dpl
      000376 85 83 59         [24]  991 	mov	(_check_sound_trigger_num_65536_30 + 1),dph
      000379 85 F0 5A         [24]  992 	mov	(_check_sound_trigger_num_65536_30 + 2),b
                                    993 ;	main.c:74: for (int i = 0; i < 4; i++) {
      00037C 7B 00            [12]  994 	mov	r3,#0x00
      00037E 7C 00            [12]  995 	mov	r4,#0x00
      000380                        996 00105$:
      000380 C3               [12]  997 	clr	c
      000381 EB               [12]  998 	mov	a,r3
      000382 94 04            [12]  999 	subb	a,#0x04
      000384 EC               [12] 1000 	mov	a,r4
      000385 64 80            [12] 1001 	xrl	a,#0x80
      000387 94 80            [12] 1002 	subb	a,#0x80
      000389 50 47            [24] 1003 	jnc	00103$
                                   1004 ;	main.c:75: if (num[i] != num_bi[i]) 
      00038B EB               [12] 1005 	mov	a,r3
      00038C 2B               [12] 1006 	add	a,r3
      00038D F9               [12] 1007 	mov	r1,a
      00038E EC               [12] 1008 	mov	a,r4
      00038F 33               [12] 1009 	rlc	a
      000390 FA               [12] 1010 	mov	r2,a
      000391 E9               [12] 1011 	mov	a,r1
      000392 25 58            [12] 1012 	add	a,_check_sound_trigger_num_65536_30
      000394 F8               [12] 1013 	mov	r0,a
      000395 EA               [12] 1014 	mov	a,r2
      000396 35 59            [12] 1015 	addc	a,(_check_sound_trigger_num_65536_30 + 1)
      000398 FE               [12] 1016 	mov	r6,a
      000399 AF 5A            [24] 1017 	mov	r7,(_check_sound_trigger_num_65536_30 + 2)
      00039B 88 82            [24] 1018 	mov	dpl,r0
      00039D 8E 83            [24] 1019 	mov	dph,r6
      00039F 8F F0            [24] 1020 	mov	b,r7
      0003A1 12 06 BB         [24] 1021 	lcall	__gptrget
      0003A4 F8               [12] 1022 	mov	r0,a
      0003A5 A3               [24] 1023 	inc	dptr
      0003A6 12 06 BB         [24] 1024 	lcall	__gptrget
      0003A9 FE               [12] 1025 	mov	r6,a
      0003AA E9               [12] 1026 	mov	a,r1
      0003AB 25 55            [12] 1027 	add	a,_check_sound_trigger_PARM_2
      0003AD F9               [12] 1028 	mov	r1,a
      0003AE EA               [12] 1029 	mov	a,r2
      0003AF 35 56            [12] 1030 	addc	a,(_check_sound_trigger_PARM_2 + 1)
      0003B1 FA               [12] 1031 	mov	r2,a
      0003B2 AF 57            [24] 1032 	mov	r7,(_check_sound_trigger_PARM_2 + 2)
      0003B4 89 82            [24] 1033 	mov	dpl,r1
      0003B6 8A 83            [24] 1034 	mov	dph,r2
      0003B8 8F F0            [24] 1035 	mov	b,r7
      0003BA 12 06 BB         [24] 1036 	lcall	__gptrget
      0003BD F9               [12] 1037 	mov	r1,a
      0003BE A3               [24] 1038 	inc	dptr
      0003BF 12 06 BB         [24] 1039 	lcall	__gptrget
      0003C2 FA               [12] 1040 	mov	r2,a
      0003C3 E8               [12] 1041 	mov	a,r0
                                   1042 ;	main.c:76: return;
      0003C4 B5 01 0E         [24] 1043 	cjne	a,ar1,00107$
      0003C7 EE               [12] 1044 	mov	a,r6
      0003C8 B5 02 0A         [24] 1045 	cjne	a,ar2,00107$
                                   1046 ;	main.c:74: for (int i = 0; i < 4; i++) {
      0003CB 0B               [12] 1047 	inc	r3
      0003CC BB 00 B1         [24] 1048 	cjne	r3,#0x00,00105$
      0003CF 0C               [12] 1049 	inc	r4
      0003D0 80 AE            [24] 1050 	sjmp	00105$
      0003D2                       1051 00103$:
                                   1052 ;	main.c:78: play_sound = true;	
      0003D2 75 1A 01         [24] 1053 	mov	_play_sound,#0x01
      0003D5                       1054 00107$:
                                   1055 ;	main.c:81: }
      0003D5 22               [24] 1056 	ret
                                   1057 ;------------------------------------------------------------
                                   1058 ;Allocation info for local variables in function 'play'
                                   1059 ;------------------------------------------------------------
                                   1060 ;	main.c:83: void play() {
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function play
                                   1063 ;	-----------------------------------------
      0003D6                       1064 _play:
                                   1065 ;	main.c:84: P1_5 = !P1_5;
      0003D6 B2 95            [12] 1066 	cpl	_P1_5
                                   1067 ;	main.c:85: }
      0003D8 22               [24] 1068 	ret
                                   1069 ;------------------------------------------------------------
                                   1070 ;Allocation info for local variables in function 'main'
                                   1071 ;------------------------------------------------------------
                                   1072 ;previous                  Allocated with name '_main_previous_65537_36'
                                   1073 ;row                       Allocated with name '_main_row_65537_36'
                                   1074 ;count                     Allocated with name '_main_count_65537_36'
                                   1075 ;num                       Allocated with name '_main_num_65537_36'
                                   1076 ;num_bi                    Allocated with name '_main_num_bi_65537_36'
                                   1077 ;alpha                     Allocated with name '_main_alpha_65537_36'
                                   1078 ;table                     Allocated with name '_main_table_65537_36'
                                   1079 ;index                     Allocated with name '_main_index_65538_37'
                                   1080 ;flash_flag                Allocated with name '_main_flash_flag_65538_37'
                                   1081 ;isSetting                 Allocated to registers r5 
                                   1082 ;afterSetting              Allocated to registers 
                                   1083 ;setting_bi_time           Allocated to registers r4 
                                   1084 ;key                       Allocated to registers r2 r3 
                                   1085 ;------------------------------------------------------------
                                   1086 ;	main.c:87: int main() {
                                   1087 ;	-----------------------------------------
                                   1088 ;	 function main
                                   1089 ;	-----------------------------------------
      0003D9                       1090 _main:
                                   1091 ;	main.c:98: P1_5=0;
                                   1092 ;	assignBit
      0003D9 C2 95            [12] 1093 	clr	_P1_5
                                   1094 ;	main.c:100: EA = 1;
                                   1095 ;	assignBit
      0003DB D2 AF            [12] 1096 	setb	_EA
                                   1097 ;	main.c:101: TMOD = 0b00010001;
      0003DD 75 89 11         [24] 1098 	mov	_TMOD,#0x11
                                   1099 ;	main.c:102: IE   = 0x8A;
      0003E0 75 A8 8A         [24] 1100 	mov	_IE,#0x8a
                                   1101 ;	main.c:103: TR0  = 1;	//timer 0 control bit
                                   1102 ;	assignBit
      0003E3 D2 8C            [12] 1103 	setb	_TR0
                                   1104 ;	main.c:104: TR1  = 1;	//timer 1 control bit
                                   1105 ;	assignBit
      0003E5 D2 8E            [12] 1106 	setb	_TR1
                                   1107 ;	main.c:106: short previous = -1;
      0003E7 75 1B FF         [24] 1108 	mov	_main_previous_65537_36,#0xff
      0003EA 75 1C FF         [24] 1109 	mov	(_main_previous_65537_36 + 1),#0xff
                                   1110 ;	main.c:107: short row = 0;
      0003ED E4               [12] 1111 	clr	a
      0003EE F5 1D            [12] 1112 	mov	_main_row_65537_36,a
      0003F0 F5 1E            [12] 1113 	mov	(_main_row_65537_36 + 1),a
                                   1114 ;	main.c:108: short count = 1;
      0003F2 75 1F 01         [24] 1115 	mov	_main_count_65537_36,#0x01
                                   1116 ;	1-genFromRTrack replaced	mov	(_main_count_65537_36 + 1),#0x00
      0003F5 F5 20            [12] 1117 	mov	(_main_count_65537_36 + 1),a
                                   1118 ;	main.c:109: short num[4] = {0};
      0003F7 F5 21            [12] 1119 	mov	(_main_num_65537_36 + 0),a
      0003F9 F5 22            [12] 1120 	mov	(_main_num_65537_36 + 1),a
      0003FB F5 23            [12] 1121 	mov	((_main_num_65537_36 + 0x0002) + 0),a
      0003FD F5 24            [12] 1122 	mov	((_main_num_65537_36 + 0x0002) + 1),a
      0003FF F5 25            [12] 1123 	mov	((_main_num_65537_36 + 0x0004) + 0),a
      000401 F5 26            [12] 1124 	mov	((_main_num_65537_36 + 0x0004) + 1),a
      000403 F5 27            [12] 1125 	mov	((_main_num_65537_36 + 0x0006) + 0),a
      000405 F5 28            [12] 1126 	mov	((_main_num_65537_36 + 0x0006) + 1),a
                                   1127 ;	main.c:110: short num_bi[4] = {-1};
      000407 75 29 FF         [24] 1128 	mov	(_main_num_bi_65537_36 + 0),#0xff
      00040A 75 2A FF         [24] 1129 	mov	(_main_num_bi_65537_36 + 1),#0xff
      00040D F5 2B            [12] 1130 	mov	((_main_num_bi_65537_36 + 0x0002) + 0),a
      00040F F5 2C            [12] 1131 	mov	((_main_num_bi_65537_36 + 0x0002) + 1),a
      000411 F5 2D            [12] 1132 	mov	((_main_num_bi_65537_36 + 0x0004) + 0),a
      000413 F5 2E            [12] 1133 	mov	((_main_num_bi_65537_36 + 0x0004) + 1),a
      000415 F5 2F            [12] 1134 	mov	((_main_num_bi_65537_36 + 0x0006) + 0),a
      000417 F5 30            [12] 1135 	mov	((_main_num_bi_65537_36 + 0x0006) + 1),a
                                   1136 ;	main.c:111: const short alpha[11] = {
      000419 75 31 03         [24] 1137 	mov	(_main_alpha_65537_36 + 0),#0x03
                                   1138 ;	1-genFromRTrack replaced	mov	(_main_alpha_65537_36 + 1),#0x00
      00041C F5 32            [12] 1139 	mov	(_main_alpha_65537_36 + 1),a
      00041E 75 33 9F         [24] 1140 	mov	((_main_alpha_65537_36 + 0x0002) + 0),#0x9f
                                   1141 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x0002) + 1),#0x00
      000421 F5 34            [12] 1142 	mov	((_main_alpha_65537_36 + 0x0002) + 1),a
      000423 75 35 25         [24] 1143 	mov	((_main_alpha_65537_36 + 0x0004) + 0),#0x25
                                   1144 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x0004) + 1),#0x00
      000426 F5 36            [12] 1145 	mov	((_main_alpha_65537_36 + 0x0004) + 1),a
      000428 75 37 0D         [24] 1146 	mov	((_main_alpha_65537_36 + 0x0006) + 0),#0x0d
                                   1147 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x0006) + 1),#0x00
      00042B F5 38            [12] 1148 	mov	((_main_alpha_65537_36 + 0x0006) + 1),a
      00042D 75 39 99         [24] 1149 	mov	((_main_alpha_65537_36 + 0x0008) + 0),#0x99
                                   1150 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x0008) + 1),#0x00
      000430 F5 3A            [12] 1151 	mov	((_main_alpha_65537_36 + 0x0008) + 1),a
      000432 75 3B 49         [24] 1152 	mov	((_main_alpha_65537_36 + 0x000a) + 0),#0x49
                                   1153 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x000a) + 1),#0x00
      000435 F5 3C            [12] 1154 	mov	((_main_alpha_65537_36 + 0x000a) + 1),a
      000437 75 3D 41         [24] 1155 	mov	((_main_alpha_65537_36 + 0x000c) + 0),#0x41
                                   1156 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x000c) + 1),#0x00
      00043A F5 3E            [12] 1157 	mov	((_main_alpha_65537_36 + 0x000c) + 1),a
      00043C 75 3F 1F         [24] 1158 	mov	((_main_alpha_65537_36 + 0x000e) + 0),#0x1f
                                   1159 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x000e) + 1),#0x00
      00043F F5 40            [12] 1160 	mov	((_main_alpha_65537_36 + 0x000e) + 1),a
      000441 75 41 01         [24] 1161 	mov	((_main_alpha_65537_36 + 0x0010) + 0),#0x01
                                   1162 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x0010) + 1),#0x00
      000444 F5 42            [12] 1163 	mov	((_main_alpha_65537_36 + 0x0010) + 1),a
      000446 75 43 09         [24] 1164 	mov	((_main_alpha_65537_36 + 0x0012) + 0),#0x09
                                   1165 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x0012) + 1),#0x00
      000449 F5 44            [12] 1166 	mov	((_main_alpha_65537_36 + 0x0012) + 1),a
      00044B 75 45 FF         [24] 1167 	mov	((_main_alpha_65537_36 + 0x0014) + 0),#0xff
                                   1168 ;	1-genFromRTrack replaced	mov	((_main_alpha_65537_36 + 0x0014) + 1),#0x00
      00044E F5 46            [12] 1169 	mov	((_main_alpha_65537_36 + 0x0014) + 1),a
                                   1170 ;	main.c:124: const short table[4] = {
      000450 75 47 FE         [24] 1171 	mov	(_main_table_65537_36 + 0),#0xfe
                                   1172 ;	1-genFromRTrack replaced	mov	(_main_table_65537_36 + 1),#0x00
      000453 F5 48            [12] 1173 	mov	(_main_table_65537_36 + 1),a
      000455 75 49 FD         [24] 1174 	mov	((_main_table_65537_36 + 0x0002) + 0),#0xfd
                                   1175 ;	1-genFromRTrack replaced	mov	((_main_table_65537_36 + 0x0002) + 1),#0x00
      000458 F5 4A            [12] 1176 	mov	((_main_table_65537_36 + 0x0002) + 1),a
      00045A 75 4B FB         [24] 1177 	mov	((_main_table_65537_36 + 0x0004) + 0),#0xfb
                                   1178 ;	1-genFromRTrack replaced	mov	((_main_table_65537_36 + 0x0004) + 1),#0x00
      00045D F5 4C            [12] 1179 	mov	((_main_table_65537_36 + 0x0004) + 1),a
      00045F 75 4D F7         [24] 1180 	mov	((_main_table_65537_36 + 0x0006) + 0),#0xf7
                                   1181 ;	1-genFromRTrack replaced	mov	((_main_table_65537_36 + 0x0006) + 1),#0x00
      000462 F5 4E            [12] 1182 	mov	((_main_table_65537_36 + 0x0006) + 1),a
                                   1183 ;	main.c:130: P0 = 0b00001111;
      000464 75 80 0F         [24] 1184 	mov	_P0,#0x0f
                                   1185 ;	main.c:131: short index = 0;
      000467 F5 4F            [12] 1186 	mov	_main_index_65538_37,a
      000469 F5 50            [12] 1187 	mov	(_main_index_65538_37 + 1),a
                                   1188 ;	main.c:132: long flash_flag = 0;
      00046B F5 51            [12] 1189 	mov	_main_flash_flag_65538_37,a
      00046D F5 52            [12] 1190 	mov	(_main_flash_flag_65538_37 + 1),a
      00046F F5 53            [12] 1191 	mov	(_main_flash_flag_65538_37 + 2),a
      000471 F5 54            [12] 1192 	mov	(_main_flash_flag_65538_37 + 3),a
                                   1193 ;	main.c:133: bool isSetting = false;
      000473 7D 00            [12] 1194 	mov	r5,#0x00
                                   1195 ;	main.c:135: bool setting_bi_time = false;
      000475 7C 00            [12] 1196 	mov	r4,#0x00
                                   1197 ;	main.c:136: while (1) {
      000477                       1198 00145$:
                                   1199 ;	main.c:137: flash_flag++;
      000477 05 51            [12] 1200 	inc	_main_flash_flag_65538_37
      000479 E4               [12] 1201 	clr	a
      00047A B5 51 0C         [24] 1202 	cjne	a,_main_flash_flag_65538_37,00241$
      00047D 05 52            [12] 1203 	inc	(_main_flash_flag_65538_37 + 1)
      00047F B5 52 07         [24] 1204 	cjne	a,(_main_flash_flag_65538_37 + 1),00241$
      000482 05 53            [12] 1205 	inc	(_main_flash_flag_65538_37 + 2)
      000484 B5 53 02         [24] 1206 	cjne	a,(_main_flash_flag_65538_37 + 2),00241$
      000487 05 54            [12] 1207 	inc	(_main_flash_flag_65538_37 + 3)
      000489                       1208 00241$:
                                   1209 ;	main.c:138: if (flash_flag >= 8000)  // 頻率
      000489 C3               [12] 1210 	clr	c
      00048A E5 51            [12] 1211 	mov	a,_main_flash_flag_65538_37
      00048C 94 40            [12] 1212 	subb	a,#0x40
      00048E E5 52            [12] 1213 	mov	a,(_main_flash_flag_65538_37 + 1)
      000490 94 1F            [12] 1214 	subb	a,#0x1f
      000492 E5 53            [12] 1215 	mov	a,(_main_flash_flag_65538_37 + 2)
      000494 94 00            [12] 1216 	subb	a,#0x00
      000496 E5 54            [12] 1217 	mov	a,(_main_flash_flag_65538_37 + 3)
      000498 64 80            [12] 1218 	xrl	a,#0x80
      00049A 94 80            [12] 1219 	subb	a,#0x80
      00049C 40 09            [24] 1220 	jc	00102$
                                   1221 ;	main.c:139: flash_flag = 0;
      00049E E4               [12] 1222 	clr	a
      00049F F5 51            [12] 1223 	mov	_main_flash_flag_65538_37,a
      0004A1 F5 52            [12] 1224 	mov	(_main_flash_flag_65538_37 + 1),a
      0004A3 F5 53            [12] 1225 	mov	(_main_flash_flag_65538_37 + 2),a
      0004A5 F5 54            [12] 1226 	mov	(_main_flash_flag_65538_37 + 3),a
      0004A7                       1227 00102$:
                                   1228 ;	main.c:140: P0     =count^0b11111111;
      0004A7 74 FF            [12] 1229 	mov	a,#0xff
      0004A9 65 1F            [12] 1230 	xrl	a,_main_count_65537_36
      0004AB FA               [12] 1231 	mov	r2,a
      0004AC 8A 80            [24] 1232 	mov	_P0,r2
                                   1233 ;	main.c:141: count *=2; //shift
      0004AE E5 1F            [12] 1234 	mov	a,_main_count_65537_36
      0004B0 25 1F            [12] 1235 	add	a,_main_count_65537_36
      0004B2 F5 1F            [12] 1236 	mov	_main_count_65537_36,a
      0004B4 E5 20            [12] 1237 	mov	a,(_main_count_65537_36 + 1)
      0004B6 33               [12] 1238 	rlc	a
      0004B7 F5 20            [12] 1239 	mov	(_main_count_65537_36 + 1),a
                                   1240 ;	main.c:142: short key = keyPressed(row);
      0004B9 85 1D 82         [24] 1241 	mov	dpl,_main_row_65537_36
      0004BC 85 1E 83         [24] 1242 	mov	dph,(_main_row_65537_36 + 1)
      0004BF C0 05            [24] 1243 	push	ar5
      0004C1 C0 04            [24] 1244 	push	ar4
      0004C3 12 01 BF         [24] 1245 	lcall	_keyPressed
      0004C6 AA 82            [24] 1246 	mov	r2,dpl
      0004C8 AB 83            [24] 1247 	mov	r3,dph
      0004CA D0 04            [24] 1248 	pop	ar4
      0004CC D0 05            [24] 1249 	pop	ar5
                                   1250 ;	main.c:143: if (key != previous && key != -1) {	//有按且不等於上一按 => 處理debounce
      0004CE EA               [12] 1251 	mov	a,r2
      0004CF B5 1B 07         [24] 1252 	cjne	a,_main_previous_65537_36,00243$
      0004D2 EB               [12] 1253 	mov	a,r3
      0004D3 B5 1C 03         [24] 1254 	cjne	a,(_main_previous_65537_36 + 1),00243$
      0004D6 02 05 95         [24] 1255 	ljmp	00128$
      0004D9                       1256 00243$:
      0004D9 BA FF 06         [24] 1257 	cjne	r2,#0xff,00244$
      0004DC BB FF 03         [24] 1258 	cjne	r3,#0xff,00244$
      0004DF 02 05 95         [24] 1259 	ljmp	00128$
      0004E2                       1260 00244$:
                                   1261 ;	main.c:144: previous = key;
      0004E2 8A 1B            [24] 1262 	mov	_main_previous_65537_36,r2
      0004E4 8B 1C            [24] 1263 	mov	(_main_previous_65537_36 + 1),r3
                                   1264 ;	main.c:150: if (key == 10) isSetting = true;
      0004E6 BA 0A 05         [24] 1265 	cjne	r2,#0x0a,00104$
      0004E9 BB 00 02         [24] 1266 	cjne	r3,#0x00,00104$
      0004EC 7D 01            [12] 1267 	mov	r5,#0x01
      0004EE                       1268 00104$:
                                   1269 ;	main.c:151: if (key == 11) isSetting = false;
      0004EE BA 0B 05         [24] 1270 	cjne	r2,#0x0b,00106$
      0004F1 BB 00 02         [24] 1271 	cjne	r3,#0x00,00106$
      0004F4 7D 00            [12] 1272 	mov	r5,#0x00
      0004F6                       1273 00106$:
                                   1274 ;	main.c:152: if (key == 12) setting_bi_time = true;
      0004F6 BA 0C 05         [24] 1275 	cjne	r2,#0x0c,00108$
      0004F9 BB 00 02         [24] 1276 	cjne	r3,#0x00,00108$
      0004FC 7C 01            [12] 1277 	mov	r4,#0x01
      0004FE                       1278 00108$:
                                   1279 ;	main.c:153: if (key == 13) setting_bi_time = false;
      0004FE BA 0D 05         [24] 1280 	cjne	r2,#0x0d,00110$
      000501 BB 00 02         [24] 1281 	cjne	r3,#0x00,00110$
      000504 7C 00            [12] 1282 	mov	r4,#0x00
      000506                       1283 00110$:
                                   1284 ;	main.c:154: if (key == 14) play_sound = false;
      000506 BA 0E 06         [24] 1285 	cjne	r2,#0x0e,00112$
      000509 BB 00 03         [24] 1286 	cjne	r3,#0x00,00112$
      00050C 75 1A 00         [24] 1287 	mov	_play_sound,#0x00
      00050F                       1288 00112$:
                                   1289 ;	main.c:157: if (isSetting) {
      00050F ED               [12] 1290 	mov	a,r5
      000510 60 40            [24] 1291 	jz	00119$
                                   1292 ;	main.c:159: if (key >= 0 && key <= 9)
      000512 EB               [12] 1293 	mov	a,r3
      000513 20 E7 2A         [24] 1294 	jb	acc.7,00114$
      000516 C3               [12] 1295 	clr	c
      000517 74 09            [12] 1296 	mov	a,#0x09
      000519 9A               [12] 1297 	subb	a,r2
      00051A 74 80            [12] 1298 	mov	a,#(0x00 ^ 0x80)
      00051C 8B F0            [24] 1299 	mov	b,r3
      00051E 63 F0 80         [24] 1300 	xrl	b,#0x80
      000521 95 F0            [12] 1301 	subb	a,b
      000523 40 1B            [24] 1302 	jc	00114$
                                   1303 ;	main.c:160: num[index++] = key;
      000525 AE 4F            [24] 1304 	mov	r6,_main_index_65538_37
      000527 AF 50            [24] 1305 	mov	r7,(_main_index_65538_37 + 1)
      000529 05 4F            [12] 1306 	inc	_main_index_65538_37
      00052B E4               [12] 1307 	clr	a
      00052C B5 4F 02         [24] 1308 	cjne	a,_main_index_65538_37,00258$
      00052F 05 50            [12] 1309 	inc	(_main_index_65538_37 + 1)
      000531                       1310 00258$:
      000531 EE               [12] 1311 	mov	a,r6
      000532 2E               [12] 1312 	add	a,r6
      000533 FE               [12] 1313 	mov	r6,a
      000534 EF               [12] 1314 	mov	a,r7
      000535 33               [12] 1315 	rlc	a
      000536 FF               [12] 1316 	mov	r7,a
      000537 EE               [12] 1317 	mov	a,r6
      000538 24 21            [12] 1318 	add	a,#_main_num_65537_36
      00053A F8               [12] 1319 	mov	r0,a
      00053B A6 02            [24] 1320 	mov	@r0,ar2
      00053D 08               [12] 1321 	inc	r0
      00053E A6 03            [24] 1322 	mov	@r0,ar3
      000540                       1323 00114$:
                                   1324 ;	main.c:161: if (index == 4) index = 0;
      000540 74 04            [12] 1325 	mov	a,#0x04
      000542 B5 4F 06         [24] 1326 	cjne	a,_main_index_65538_37,00259$
      000545 E4               [12] 1327 	clr	a
      000546 B5 50 02         [24] 1328 	cjne	a,(_main_index_65538_37 + 1),00259$
      000549 80 02            [24] 1329 	sjmp	00260$
      00054B                       1330 00259$:
      00054B 80 05            [24] 1331 	sjmp	00119$
      00054D                       1332 00260$:
      00054D E4               [12] 1333 	clr	a
      00054E F5 4F            [12] 1334 	mov	_main_index_65538_37,a
      000550 F5 50            [12] 1335 	mov	(_main_index_65538_37 + 1),a
      000552                       1336 00119$:
                                   1337 ;	main.c:164: if (setting_bi_time) {
      000552 EC               [12] 1338 	mov	a,r4
      000553 60 40            [24] 1339 	jz	00128$
                                   1340 ;	main.c:165: if (key >= 0 && key <= 9)
      000555 EB               [12] 1341 	mov	a,r3
      000556 20 E7 2A         [24] 1342 	jb	acc.7,00121$
      000559 C3               [12] 1343 	clr	c
      00055A 74 09            [12] 1344 	mov	a,#0x09
      00055C 9A               [12] 1345 	subb	a,r2
      00055D 74 80            [12] 1346 	mov	a,#(0x00 ^ 0x80)
      00055F 8B F0            [24] 1347 	mov	b,r3
      000561 63 F0 80         [24] 1348 	xrl	b,#0x80
      000564 95 F0            [12] 1349 	subb	a,b
      000566 40 1B            [24] 1350 	jc	00121$
                                   1351 ;	main.c:166: num_bi[index++] = key;
      000568 AE 4F            [24] 1352 	mov	r6,_main_index_65538_37
      00056A AF 50            [24] 1353 	mov	r7,(_main_index_65538_37 + 1)
      00056C 05 4F            [12] 1354 	inc	_main_index_65538_37
      00056E E4               [12] 1355 	clr	a
      00056F B5 4F 02         [24] 1356 	cjne	a,_main_index_65538_37,00264$
      000572 05 50            [12] 1357 	inc	(_main_index_65538_37 + 1)
      000574                       1358 00264$:
      000574 EE               [12] 1359 	mov	a,r6
      000575 2E               [12] 1360 	add	a,r6
      000576 FE               [12] 1361 	mov	r6,a
      000577 EF               [12] 1362 	mov	a,r7
      000578 33               [12] 1363 	rlc	a
      000579 FF               [12] 1364 	mov	r7,a
      00057A EE               [12] 1365 	mov	a,r6
      00057B 24 29            [12] 1366 	add	a,#_main_num_bi_65537_36
      00057D F8               [12] 1367 	mov	r0,a
      00057E A6 02            [24] 1368 	mov	@r0,ar2
      000580 08               [12] 1369 	inc	r0
      000581 A6 03            [24] 1370 	mov	@r0,ar3
      000583                       1371 00121$:
                                   1372 ;	main.c:167: if (index == 4) index = 0;
      000583 74 04            [12] 1373 	mov	a,#0x04
      000585 B5 4F 06         [24] 1374 	cjne	a,_main_index_65538_37,00265$
      000588 E4               [12] 1375 	clr	a
      000589 B5 50 02         [24] 1376 	cjne	a,(_main_index_65538_37 + 1),00265$
      00058C 80 02            [24] 1377 	sjmp	00266$
      00058E                       1378 00265$:
      00058E 80 05            [24] 1379 	sjmp	00128$
      000590                       1380 00266$:
      000590 E4               [12] 1381 	clr	a
      000591 F5 4F            [12] 1382 	mov	_main_index_65538_37,a
      000593 F5 50            [12] 1383 	mov	(_main_index_65538_37 + 1),a
      000595                       1384 00128$:
                                   1385 ;	main.c:171: if (!isSetting && !setting_bi_time) {
      000595 ED               [12] 1386 	mov	a,r5
      000596 70 14            [24] 1387 	jnz	00131$
      000598 EC               [12] 1388 	mov	a,r4
      000599 70 11            [24] 1389 	jnz	00131$
                                   1390 ;	main.c:172: run_clock(num);
      00059B 90 00 21         [24] 1391 	mov	dptr,#_main_num_65537_36
      00059E 75 F0 40         [24] 1392 	mov	b,#0x40
      0005A1 C0 05            [24] 1393 	push	ar5
      0005A3 C0 04            [24] 1394 	push	ar4
      0005A5 12 00 84         [24] 1395 	lcall	_run_clock
      0005A8 D0 04            [24] 1396 	pop	ar4
      0005AA D0 05            [24] 1397 	pop	ar5
      0005AC                       1398 00131$:
                                   1399 ;	main.c:174: row++;
      0005AC 05 1D            [12] 1400 	inc	_main_row_65537_36
      0005AE E4               [12] 1401 	clr	a
      0005AF B5 1D 02         [24] 1402 	cjne	a,_main_row_65537_36,00269$
      0005B2 05 1E            [12] 1403 	inc	(_main_row_65537_36 + 1)
      0005B4                       1404 00269$:
                                   1405 ;	main.c:175: if (count == 0x10) {	//用count從上往下掃 
      0005B4 74 10            [12] 1406 	mov	a,#0x10
      0005B6 B5 1F 06         [24] 1407 	cjne	a,_main_count_65537_36,00270$
      0005B9 E4               [12] 1408 	clr	a
      0005BA B5 20 02         [24] 1409 	cjne	a,(_main_count_65537_36 + 1),00270$
      0005BD 80 02            [24] 1410 	sjmp	00271$
      0005BF                       1411 00270$:
      0005BF 80 0A            [24] 1412 	sjmp	00134$
      0005C1                       1413 00271$:
                                   1414 ;	main.c:176: count = 1;
      0005C1 75 1F 01         [24] 1415 	mov	_main_count_65537_36,#0x01
                                   1416 ;	main.c:177: row   = 0;
      0005C4 E4               [12] 1417 	clr	a
      0005C5 F5 20            [12] 1418 	mov	(_main_count_65537_36 + 1),a
      0005C7 F5 1D            [12] 1419 	mov	_main_row_65537_36,a
      0005C9 F5 1E            [12] 1420 	mov	(_main_row_65537_36 + 1),a
      0005CB                       1421 00134$:
                                   1422 ;	main.c:179: P1 = 0b11111111; // 讓頻率一致 閃爍時4個位置同步
      0005CB 75 90 FF         [24] 1423 	mov	_P1,#0xff
                                   1424 ;	main.c:180: if (setting_bi_time || isSetting)
      0005CE EC               [12] 1425 	mov	a,r4
      0005CF 70 03            [24] 1426 	jnz	00138$
      0005D1 ED               [12] 1427 	mov	a,r5
      0005D2 60 6B            [24] 1428 	jz	00139$
      0005D4                       1429 00138$:
                                   1430 ;	main.c:181: if (isSetting)
      0005D4 ED               [12] 1431 	mov	a,r5
      0005D5 60 34            [24] 1432 	jz	00136$
                                   1433 ;	main.c:182: display(table, alpha, num, 1, flash_flag);
      0005D7 75 55 31         [24] 1434 	mov	_display_PARM_2,#_main_alpha_65537_36
      0005DA 75 56 00         [24] 1435 	mov	(_display_PARM_2 + 1),#0x00
      0005DD 75 57 40         [24] 1436 	mov	(_display_PARM_2 + 2),#0x40
      0005E0 75 58 21         [24] 1437 	mov	_display_PARM_3,#_main_num_65537_36
      0005E3 75 59 00         [24] 1438 	mov	(_display_PARM_3 + 1),#0x00
      0005E6 75 5A 40         [24] 1439 	mov	(_display_PARM_3 + 2),#0x40
      0005E9 75 5B 01         [24] 1440 	mov	_display_PARM_4,#0x01
      0005EC 85 51 5C         [24] 1441 	mov	_display_PARM_5,_main_flash_flag_65538_37
      0005EF 85 52 5D         [24] 1442 	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_37 + 1)
      0005F2 85 53 5E         [24] 1443 	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_37 + 2)
      0005F5 85 54 5F         [24] 1444 	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_37 + 3)
      0005F8 90 00 47         [24] 1445 	mov	dptr,#_main_table_65537_36
      0005FB 75 F0 40         [24] 1446 	mov	b,#0x40
      0005FE C0 05            [24] 1447 	push	ar5
      000600 C0 04            [24] 1448 	push	ar4
      000602 12 02 2E         [24] 1449 	lcall	_display
      000605 D0 04            [24] 1450 	pop	ar4
      000607 D0 05            [24] 1451 	pop	ar5
      000609 80 66            [24] 1452 	sjmp	00140$
      00060B                       1453 00136$:
                                   1454 ;	main.c:184: display(table, alpha, num_bi, 1, flash_flag);
      00060B 75 55 31         [24] 1455 	mov	_display_PARM_2,#_main_alpha_65537_36
      00060E 75 56 00         [24] 1456 	mov	(_display_PARM_2 + 1),#0x00
      000611 75 57 40         [24] 1457 	mov	(_display_PARM_2 + 2),#0x40
      000614 75 58 29         [24] 1458 	mov	_display_PARM_3,#_main_num_bi_65537_36
      000617 75 59 00         [24] 1459 	mov	(_display_PARM_3 + 1),#0x00
      00061A 75 5A 40         [24] 1460 	mov	(_display_PARM_3 + 2),#0x40
      00061D 75 5B 01         [24] 1461 	mov	_display_PARM_4,#0x01
      000620 85 51 5C         [24] 1462 	mov	_display_PARM_5,_main_flash_flag_65538_37
      000623 85 52 5D         [24] 1463 	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_37 + 1)
      000626 85 53 5E         [24] 1464 	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_37 + 2)
      000629 85 54 5F         [24] 1465 	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_37 + 3)
      00062C 90 00 47         [24] 1466 	mov	dptr,#_main_table_65537_36
      00062F 75 F0 40         [24] 1467 	mov	b,#0x40
      000632 C0 05            [24] 1468 	push	ar5
      000634 C0 04            [24] 1469 	push	ar4
      000636 12 02 2E         [24] 1470 	lcall	_display
      000639 D0 04            [24] 1471 	pop	ar4
      00063B D0 05            [24] 1472 	pop	ar5
      00063D 80 32            [24] 1473 	sjmp	00140$
      00063F                       1474 00139$:
                                   1475 ;	main.c:186: display(table, alpha, num, 0, flash_flag);
      00063F 75 55 31         [24] 1476 	mov	_display_PARM_2,#_main_alpha_65537_36
      000642 75 56 00         [24] 1477 	mov	(_display_PARM_2 + 1),#0x00
      000645 75 57 40         [24] 1478 	mov	(_display_PARM_2 + 2),#0x40
      000648 75 58 21         [24] 1479 	mov	_display_PARM_3,#_main_num_65537_36
      00064B 75 59 00         [24] 1480 	mov	(_display_PARM_3 + 1),#0x00
      00064E 75 5A 40         [24] 1481 	mov	(_display_PARM_3 + 2),#0x40
      000651 75 5B 00         [24] 1482 	mov	_display_PARM_4,#0x00
      000654 85 51 5C         [24] 1483 	mov	_display_PARM_5,_main_flash_flag_65538_37
      000657 85 52 5D         [24] 1484 	mov	(_display_PARM_5 + 1),(_main_flash_flag_65538_37 + 1)
      00065A 85 53 5E         [24] 1485 	mov	(_display_PARM_5 + 2),(_main_flash_flag_65538_37 + 2)
      00065D 85 54 5F         [24] 1486 	mov	(_display_PARM_5 + 3),(_main_flash_flag_65538_37 + 3)
      000660 90 00 47         [24] 1487 	mov	dptr,#_main_table_65537_36
      000663 75 F0 40         [24] 1488 	mov	b,#0x40
      000666 C0 05            [24] 1489 	push	ar5
      000668 C0 04            [24] 1490 	push	ar4
      00066A 12 02 2E         [24] 1491 	lcall	_display
      00066D D0 04            [24] 1492 	pop	ar4
      00066F D0 05            [24] 1493 	pop	ar5
      000671                       1494 00140$:
                                   1495 ;	main.c:187: check_sound_trigger(num, num_bi);
      000671 75 55 29         [24] 1496 	mov	_check_sound_trigger_PARM_2,#_main_num_bi_65537_36
      000674 75 56 00         [24] 1497 	mov	(_check_sound_trigger_PARM_2 + 1),#0x00
      000677 75 57 40         [24] 1498 	mov	(_check_sound_trigger_PARM_2 + 2),#0x40
      00067A 90 00 21         [24] 1499 	mov	dptr,#_main_num_65537_36
      00067D 75 F0 40         [24] 1500 	mov	b,#0x40
      000680 C0 05            [24] 1501 	push	ar5
      000682 C0 04            [24] 1502 	push	ar4
      000684 12 03 73         [24] 1503 	lcall	_check_sound_trigger
      000687 D0 04            [24] 1504 	pop	ar4
      000689 D0 05            [24] 1505 	pop	ar5
                                   1506 ;	main.c:188: if (play_sound) play();
      00068B E5 1A            [12] 1507 	mov	a,_play_sound
      00068D 70 03            [24] 1508 	jnz	00275$
      00068F 02 04 77         [24] 1509 	ljmp	00145$
      000692                       1510 00275$:
      000692 C0 05            [24] 1511 	push	ar5
      000694 C0 04            [24] 1512 	push	ar4
      000696 12 03 D6         [24] 1513 	lcall	_play
      000699 D0 04            [24] 1514 	pop	ar4
      00069B D0 05            [24] 1515 	pop	ar5
                                   1516 ;	main.c:191: }
      00069D 02 04 77         [24] 1517 	ljmp	00145$
                                   1518 	.area CSEG    (CODE)
                                   1519 	.area CONST   (CODE)
                                   1520 	.area XINIT   (CODE)
                                   1521 	.area CABS    (ABS,CODE)
