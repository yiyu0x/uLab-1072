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
                                     11 	.globl _music
                                     12 	.globl _main
                                     13 	.globl _init
                                     14 	.globl _timer1
                                     15 	.globl _timer_isr
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
                                    112 	.globl _table_index
                                    113 	.globl _counter
                                    114 	.globl _table
                                    115 	.globl _isSound
                                    116 	.globl _music_index
                                    117 	.globl _timer1_count
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
                                    231 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
      000018                        237 _timer1_count::
      000018                        238 	.ds 2
      00001A                        239 _music_index::
      00001A                        240 	.ds 1
      00001B                        241 _isSound::
      00001B                        242 	.ds 2
      00001D                        243 _table::
      00001D                        244 	.ds 32
      00003D                        245 _counter::
      00003D                        246 	.ds 1
      00003E                        247 _table_index::
      00003E                        248 	.ds 1
                                    249 ;--------------------------------------------------------
                                    250 ; overlayable items in internal ram 
                                    251 ;--------------------------------------------------------
                                    252 ;--------------------------------------------------------
                                    253 ; Stack segment in internal ram 
                                    254 ;--------------------------------------------------------
                                    255 	.area	SSEG
      00003F                        256 __start__stack:
      00003F                        257 	.ds	1
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
      000000 02 00 21         [24]  303 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  304 	reti
      000004                        305 	.ds	7
      00000B 02 00 AD         [24]  306 	ljmp	_timer_isr
      00000E                        307 	.ds	5
      000013 32               [24]  308 	reti
      000014                        309 	.ds	7
      00001B 02 00 EF         [24]  310 	ljmp	_timer1
                                    311 ;--------------------------------------------------------
                                    312 ; global & static initialisations
                                    313 ;--------------------------------------------------------
                                    314 	.area HOME    (CODE)
                                    315 	.area GSINIT  (CODE)
                                    316 	.area GSFINAL (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.globl __sdcc_gsinit_startup
                                    319 	.globl __sdcc_program_startup
                                    320 	.globl __start__stack
                                    321 	.globl __mcs51_genXINIT
                                    322 	.globl __mcs51_genXRAMCLEAR
                                    323 	.globl __mcs51_genRAMCLEAR
                                    324 ;	main.c:9: int table[16] = {262, 294, 330, 349, 392, 440, 494};
      00007A 75 1D 06         [24]  325 	mov	(_table + 0),#0x06
      00007D 75 1E 01         [24]  326 	mov	(_table + 1),#0x01
      000080 75 1F 26         [24]  327 	mov	((_table + 0x0002) + 0),#0x26
      000083 75 20 01         [24]  328 	mov	((_table + 0x0002) + 1),#0x01
      000086 75 21 4A         [24]  329 	mov	((_table + 0x0004) + 0),#0x4a
      000089 75 22 01         [24]  330 	mov	((_table + 0x0004) + 1),#0x01
      00008C 75 23 5D         [24]  331 	mov	((_table + 0x0006) + 0),#0x5d
      00008F 75 24 01         [24]  332 	mov	((_table + 0x0006) + 1),#0x01
      000092 75 25 88         [24]  333 	mov	((_table + 0x0008) + 0),#0x88
      000095 75 26 01         [24]  334 	mov	((_table + 0x0008) + 1),#0x01
      000098 75 27 B8         [24]  335 	mov	((_table + 0x000a) + 0),#0xb8
      00009B 75 28 01         [24]  336 	mov	((_table + 0x000a) + 1),#0x01
      00009E 75 29 EE         [24]  337 	mov	((_table + 0x000c) + 0),#0xee
      0000A1 75 2A 01         [24]  338 	mov	((_table + 0x000c) + 1),#0x01
                                    339 ;	main.c:16: char counter = 0;
      0000A4 75 3D 00         [24]  340 	mov	_counter,#0x00
                                    341 ;	main.c:17: char table_index=0;
      0000A7 75 3E 00         [24]  342 	mov	_table_index,#0x00
                                    343 	.area GSFINAL (CODE)
      0000AA 02 00 1E         [24]  344 	ljmp	__sdcc_program_startup
                                    345 ;--------------------------------------------------------
                                    346 ; Home
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
                                    349 	.area HOME    (CODE)
      00001E                        350 __sdcc_program_startup:
      00001E 02 01 DB         [24]  351 	ljmp	_main
                                    352 ;	return from main will return to caller
                                    353 ;--------------------------------------------------------
                                    354 ; code
                                    355 ;--------------------------------------------------------
                                    356 	.area CSEG    (CODE)
                                    357 ;------------------------------------------------------------
                                    358 ;Allocation info for local variables in function 'timer_isr'
                                    359 ;------------------------------------------------------------
                                    360 ;	main.c:19: void timer_isr (void) __interrupt (1) __using (1) {
                                    361 ;	-----------------------------------------
                                    362 ;	 function timer_isr
                                    363 ;	-----------------------------------------
      0000AD                        364 _timer_isr:
                           00000F   365 	ar7 = 0x0f
                           00000E   366 	ar6 = 0x0e
                           00000D   367 	ar5 = 0x0d
                           00000C   368 	ar4 = 0x0c
                           00000B   369 	ar3 = 0x0b
                           00000A   370 	ar2 = 0x0a
                           000009   371 	ar1 = 0x09
                           000008   372 	ar0 = 0x08
      0000AD C0 E0            [24]  373 	push	acc
      0000AF C0 82            [24]  374 	push	dpl
      0000B1 C0 83            [24]  375 	push	dph
      0000B3 C0 D0            [24]  376 	push	psw
      0000B5 75 D0 08         [24]  377 	mov	psw,#0x08
                                    378 ;	main.c:21: TH0  = (PERIOD-table[music[music_index]]) >> 8;
      0000B8 E5 1A            [12]  379 	mov	a,_music_index
      0000BA 90 05 5A         [24]  380 	mov	dptr,#_music
      0000BD 93               [24]  381 	movc	a,@a+dptr
      0000BE 25 E0            [12]  382 	add	a,acc
      0000C0 24 1D            [12]  383 	add	a,#_table
      0000C2 F9               [12]  384 	mov	r1,a
      0000C3 87 0E            [24]  385 	mov	ar6,@r1
      0000C5 09               [12]  386 	inc	r1
      0000C6 87 0F            [24]  387 	mov	ar7,@r1
      0000C8 8E 0A            [24]  388 	mov	ar2,r6
      0000CA EF               [12]  389 	mov	a,r7
      0000CB FB               [12]  390 	mov	r3,a
      0000CC 33               [12]  391 	rlc	a
      0000CD 95 E0            [12]  392 	subb	a,acc
      0000CF FC               [12]  393 	mov	r4,a
      0000D0 FD               [12]  394 	mov	r5,a
      0000D1 E4               [12]  395 	clr	a
      0000D2 C3               [12]  396 	clr	c
      0000D3 9A               [12]  397 	subb	a,r2
      0000D4 E4               [12]  398 	clr	a
      0000D5 9B               [12]  399 	subb	a,r3
      0000D6 FB               [12]  400 	mov	r3,a
      0000D7 74 01            [12]  401 	mov	a,#0x01
      0000D9 9C               [12]  402 	subb	a,r4
      0000DA E4               [12]  403 	clr	a
      0000DB 9D               [12]  404 	subb	a,r5
      0000DC 8B 8C            [24]  405 	mov	_TH0,r3
                                    406 ;	main.c:22: TL0  = (PERIOD-table[music[music_index]]) & 0xff;
      0000DE C3               [12]  407 	clr	c
      0000DF E4               [12]  408 	clr	a
      0000E0 9E               [12]  409 	subb	a,r6
      0000E1 FE               [12]  410 	mov	r6,a
      0000E2 8E 8A            [24]  411 	mov	_TL0,r6
                                    412 ;	main.c:26: counter++;
      0000E4 05 3D            [12]  413 	inc	_counter
                                    414 ;	main.c:27: }
      0000E6 D0 D0            [24]  415 	pop	psw
      0000E8 D0 83            [24]  416 	pop	dph
      0000EA D0 82            [24]  417 	pop	dpl
      0000EC D0 E0            [24]  418 	pop	acc
      0000EE 32               [24]  419 	reti
                                    420 ;	eliminated unneeded push/pop b
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'timer1'
                                    423 ;------------------------------------------------------------
                                    424 ;	main.c:29: void timer1 (void) __interrupt (3) __using (2) {
                                    425 ;	-----------------------------------------
                                    426 ;	 function timer1
                                    427 ;	-----------------------------------------
      0000EF                        428 _timer1:
                           000017   429 	ar7 = 0x17
                           000016   430 	ar6 = 0x16
                           000015   431 	ar5 = 0x15
                           000014   432 	ar4 = 0x14
                           000013   433 	ar3 = 0x13
                           000012   434 	ar2 = 0x12
                           000011   435 	ar1 = 0x11
                           000010   436 	ar0 = 0x10
      0000EF C0 E0            [24]  437 	push	acc
      0000F1 C0 D0            [24]  438 	push	psw
                                    439 ;	main.c:30: TH1  = INIT_TIME >> 8;
      0000F3 75 8D 0B         [24]  440 	mov	_TH1,#0x0b
                                    441 ;	main.c:31: TL1  = INIT_TIME & 0xff;
      0000F6 75 8B DC         [24]  442 	mov	_TL1,#0xdc
                                    443 ;	main.c:32: timer1_count++;
      0000F9 05 18            [12]  444 	inc	_timer1_count
      0000FB E4               [12]  445 	clr	a
      0000FC B5 18 02         [24]  446 	cjne	a,_timer1_count,00103$
      0000FF 05 19            [12]  447 	inc	(_timer1_count + 1)
      000101                        448 00103$:
                                    449 ;	main.c:33: }
      000101 D0 D0            [24]  450 	pop	psw
      000103 D0 E0            [24]  451 	pop	acc
      000105 32               [24]  452 	reti
                                    453 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    454 ;	eliminated unneeded push/pop dpl
                                    455 ;	eliminated unneeded push/pop dph
                                    456 ;	eliminated unneeded push/pop b
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'init'
                                    459 ;------------------------------------------------------------
                                    460 ;tmp                       Allocated to registers r2 r3 r4 r5 
                                    461 ;i                         Allocated to registers r6 r7 
                                    462 ;i                         Allocated to registers r6 r7 
                                    463 ;------------------------------------------------------------
                                    464 ;	main.c:35: void init(){
                                    465 ;	-----------------------------------------
                                    466 ;	 function init
                                    467 ;	-----------------------------------------
      000106                        468 _init:
                           000007   469 	ar7 = 0x07
                           000006   470 	ar6 = 0x06
                           000005   471 	ar5 = 0x05
                           000004   472 	ar4 = 0x04
                           000003   473 	ar3 = 0x03
                           000002   474 	ar2 = 0x02
                           000001   475 	ar1 = 0x01
                           000000   476 	ar0 = 0x00
                                    477 ;	main.c:36: music_index=0;
      000106 75 1A 00         [24]  478 	mov	_music_index,#0x00
                                    479 ;	main.c:37: timer1_count=-1;
      000109 75 18 FF         [24]  480 	mov	_timer1_count,#0xff
      00010C 75 19 FF         [24]  481 	mov	(_timer1_count + 1),#0xff
                                    482 ;	main.c:39: for(int i=7;i<16;i++){
      00010F 7E 07            [12]  483 	mov	r6,#0x07
      000111 7F 00            [12]  484 	mov	r7,#0x00
      000113                        485 00104$:
      000113 C3               [12]  486 	clr	c
      000114 EE               [12]  487 	mov	a,r6
      000115 94 10            [12]  488 	subb	a,#0x10
      000117 EF               [12]  489 	mov	a,r7
      000118 64 80            [12]  490 	xrl	a,#0x80
      00011A 94 80            [12]  491 	subb	a,#0x80
      00011C 50 2C            [24]  492 	jnc	00101$
                                    493 ;	main.c:40: table[i]=table[i-7]*2;
      00011E EE               [12]  494 	mov	a,r6
      00011F 2E               [12]  495 	add	a,r6
      000120 FC               [12]  496 	mov	r4,a
      000121 EF               [12]  497 	mov	a,r7
      000122 33               [12]  498 	rlc	a
      000123 EC               [12]  499 	mov	a,r4
      000124 24 1D            [12]  500 	add	a,#_table
      000126 F9               [12]  501 	mov	r1,a
      000127 8E 05            [24]  502 	mov	ar5,r6
      000129 ED               [12]  503 	mov	a,r5
      00012A 24 F9            [12]  504 	add	a,#0xf9
      00012C 25 E0            [12]  505 	add	a,acc
      00012E 24 1D            [12]  506 	add	a,#_table
      000130 F8               [12]  507 	mov	r0,a
      000131 86 04            [24]  508 	mov	ar4,@r0
      000133 08               [12]  509 	inc	r0
      000134 86 05            [24]  510 	mov	ar5,@r0
      000136 18               [12]  511 	dec	r0
      000137 EC               [12]  512 	mov	a,r4
      000138 2C               [12]  513 	add	a,r4
      000139 FC               [12]  514 	mov	r4,a
      00013A ED               [12]  515 	mov	a,r5
      00013B 33               [12]  516 	rlc	a
      00013C FD               [12]  517 	mov	r5,a
      00013D A7 04            [24]  518 	mov	@r1,ar4
      00013F 09               [12]  519 	inc	r1
      000140 A7 05            [24]  520 	mov	@r1,ar5
      000142 19               [12]  521 	dec	r1
                                    522 ;	main.c:39: for(int i=7;i<16;i++){
      000143 0E               [12]  523 	inc	r6
      000144 BE 00 CC         [24]  524 	cjne	r6,#0x00,00104$
      000147 0F               [12]  525 	inc	r7
      000148 80 C9            [24]  526 	sjmp	00104$
      00014A                        527 00101$:
                                    528 ;	main.c:42: for(int i=0;i<16;i++){
      00014A 7E 00            [12]  529 	mov	r6,#0x00
      00014C 7F 00            [12]  530 	mov	r7,#0x00
      00014E                        531 00107$:
      00014E C3               [12]  532 	clr	c
      00014F EE               [12]  533 	mov	a,r6
      000150 94 10            [12]  534 	subb	a,#0x10
      000152 EF               [12]  535 	mov	a,r7
      000153 64 80            [12]  536 	xrl	a,#0x80
      000155 94 80            [12]  537 	subb	a,#0x80
      000157 40 01            [24]  538 	jc	00131$
      000159 22               [24]  539 	ret
      00015A                        540 00131$:
                                    541 ;	main.c:43: tmp=1.0/table[i]*1000000;
      00015A EE               [12]  542 	mov	a,r6
      00015B 2E               [12]  543 	add	a,r6
      00015C FC               [12]  544 	mov	r4,a
      00015D EF               [12]  545 	mov	a,r7
      00015E 33               [12]  546 	rlc	a
      00015F EC               [12]  547 	mov	a,r4
      000160 24 1D            [12]  548 	add	a,#_table
      000162 F9               [12]  549 	mov	r1,a
      000163 87 82            [24]  550 	mov	dpl,@r1
      000165 09               [12]  551 	inc	r1
      000166 87 83            [24]  552 	mov	dph,@r1
      000168 19               [12]  553 	dec	r1
      000169 C0 07            [24]  554 	push	ar7
      00016B C0 06            [24]  555 	push	ar6
      00016D C0 01            [24]  556 	push	ar1
      00016F 12 03 26         [24]  557 	lcall	___sint2fs
      000172 AA 82            [24]  558 	mov	r2,dpl
      000174 AB 83            [24]  559 	mov	r3,dph
      000176 AC F0            [24]  560 	mov	r4,b
      000178 FD               [12]  561 	mov	r5,a
      000179 C0 02            [24]  562 	push	ar2
      00017B C0 03            [24]  563 	push	ar3
      00017D C0 04            [24]  564 	push	ar4
      00017F C0 05            [24]  565 	push	ar5
      000181 90 00 00         [24]  566 	mov	dptr,#0x0000
      000184 75 F0 80         [24]  567 	mov	b,#0x80
      000187 74 3F            [12]  568 	mov	a,#0x3f
      000189 12 03 B6         [24]  569 	lcall	___fsdiv
      00018C AA 82            [24]  570 	mov	r2,dpl
      00018E AB 83            [24]  571 	mov	r3,dph
      000190 AC F0            [24]  572 	mov	r4,b
      000192 FD               [12]  573 	mov	r5,a
      000193 E5 81            [12]  574 	mov	a,sp
      000195 24 FC            [12]  575 	add	a,#0xfc
      000197 F5 81            [12]  576 	mov	sp,a
      000199 C0 02            [24]  577 	push	ar2
      00019B C0 03            [24]  578 	push	ar3
      00019D C0 04            [24]  579 	push	ar4
      00019F C0 05            [24]  580 	push	ar5
      0001A1 90 24 00         [24]  581 	mov	dptr,#0x2400
      0001A4 75 F0 74         [24]  582 	mov	b,#0x74
      0001A7 74 49            [12]  583 	mov	a,#0x49
      0001A9 12 02 22         [24]  584 	lcall	___fsmul
      0001AC AA 82            [24]  585 	mov	r2,dpl
      0001AE AB 83            [24]  586 	mov	r3,dph
      0001B0 AC F0            [24]  587 	mov	r4,b
      0001B2 FD               [12]  588 	mov	r5,a
      0001B3 E5 81            [12]  589 	mov	a,sp
      0001B5 24 FC            [12]  590 	add	a,#0xfc
      0001B7 F5 81            [12]  591 	mov	sp,a
                                    592 ;	main.c:44: table[i]=tmp;
      0001B9 8A 82            [24]  593 	mov	dpl,r2
      0001BB 8B 83            [24]  594 	mov	dph,r3
      0001BD 8C F0            [24]  595 	mov	b,r4
      0001BF ED               [12]  596 	mov	a,r5
      0001C0 12 03 33         [24]  597 	lcall	___fs2sint
      0001C3 E5 82            [12]  598 	mov	a,dpl
      0001C5 85 83 F0         [24]  599 	mov	b,dph
      0001C8 D0 01            [24]  600 	pop	ar1
      0001CA D0 06            [24]  601 	pop	ar6
      0001CC D0 07            [24]  602 	pop	ar7
      0001CE F7               [12]  603 	mov	@r1,a
      0001CF 09               [12]  604 	inc	r1
      0001D0 A7 F0            [24]  605 	mov	@r1,b
      0001D2 19               [12]  606 	dec	r1
                                    607 ;	main.c:42: for(int i=0;i<16;i++){
      0001D3 0E               [12]  608 	inc	r6
      0001D4 BE 00 01         [24]  609 	cjne	r6,#0x00,00132$
      0001D7 0F               [12]  610 	inc	r7
      0001D8                        611 00132$:
                                    612 ;	main.c:46: }
      0001D8 02 01 4E         [24]  613 	ljmp	00107$
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'main'
                                    616 ;------------------------------------------------------------
                                    617 ;	main.c:47: int main(){
                                    618 ;	-----------------------------------------
                                    619 ;	 function main
                                    620 ;	-----------------------------------------
      0001DB                        621 _main:
                                    622 ;	main.c:48: init();
      0001DB 12 01 06         [24]  623 	lcall	_init
                                    624 ;	main.c:49: TMOD = 0b00010001;
      0001DE 75 89 11         [24]  625 	mov	_TMOD,#0x11
                                    626 ;	main.c:50: IE   = 0x8A;
      0001E1 75 A8 8A         [24]  627 	mov	_IE,#0x8a
                                    628 ;	main.c:51: TR0  = 1;
                                    629 ;	assignBit
      0001E4 D2 8C            [12]  630 	setb	_TR0
                                    631 ;	main.c:52: TR1  = 1;
                                    632 ;	assignBit
      0001E6 D2 8E            [12]  633 	setb	_TR1
                                    634 ;	main.c:53: TH0  = PERIOD >> 8;
      0001E8 75 8C 00         [24]  635 	mov	_TH0,#0x00
                                    636 ;	main.c:54: TL0  = PERIOD & 0xff;
      0001EB 75 8A 00         [24]  637 	mov	_TL0,#0x00
                                    638 ;	main.c:55: P2_7=0;
                                    639 ;	assignBit
      0001EE C2 A7            [12]  640 	clr	_P2_7
                                    641 ;	main.c:56: isSound=1;
      0001F0 75 1B 01         [24]  642 	mov	_isSound,#0x01
      0001F3 75 1C 00         [24]  643 	mov	(_isSound + 1),#0x00
                                    644 ;	main.c:57: while (1){
      0001F6                        645 00108$:
                                    646 ;	main.c:58: EA = 0;
                                    647 ;	assignBit
      0001F6 C2 AF            [12]  648 	clr	_EA
                                    649 ;	main.c:59: if (counter == 1) {
      0001F8 74 01            [12]  650 	mov	a,#0x01
      0001FA B5 3D 05         [24]  651 	cjne	a,_counter,00102$
                                    652 ;	main.c:60: counter = 0;
      0001FD 75 3D 00         [24]  653 	mov	_counter,#0x00
                                    654 ;	main.c:61: P2_7=!P2_7;
      000200 B2 A7            [12]  655 	cpl	_P2_7
      000202                        656 00102$:
                                    657 ;	main.c:63: if(timer1_count == 10){
      000202 74 0A            [12]  658 	mov	a,#0x0a
      000204 B5 18 06         [24]  659 	cjne	a,_timer1_count,00130$
      000207 E4               [12]  660 	clr	a
      000208 B5 19 02         [24]  661 	cjne	a,(_timer1_count + 1),00130$
      00020B 80 02            [24]  662 	sjmp	00131$
      00020D                        663 00130$:
      00020D 80 0F            [24]  664 	sjmp	00106$
      00020F                        665 00131$:
                                    666 ;	main.c:76: music_index++;
      00020F 05 1A            [12]  667 	inc	_music_index
                                    668 ;	main.c:77: timer1_count=0;
      000211 E4               [12]  669 	clr	a
      000212 F5 18            [12]  670 	mov	_timer1_count,a
      000214 F5 19            [12]  671 	mov	(_timer1_count + 1),a
                                    672 ;	main.c:78: if(music_index == 96)
      000216 74 60            [12]  673 	mov	a,#0x60
      000218 B5 1A 03         [24]  674 	cjne	a,_music_index,00106$
                                    675 ;	main.c:79: music_index = 0;
      00021B 75 1A 00         [24]  676 	mov	_music_index,#0x00
      00021E                        677 00106$:
                                    678 ;	main.c:82: EA = 1;
                                    679 ;	assignBit
      00021E D2 AF            [12]  680 	setb	_EA
                                    681 ;	main.c:85: return 0;
                                    682 ;	main.c:86: }
      000220 80 D4            [24]  683 	sjmp	00108$
                                    684 	.area CSEG    (CODE)
                                    685 	.area CONST   (CODE)
      00055A                        686 _music:
      00055A 0A                     687 	.db #0x0a	; 10
      00055B 0A                     688 	.db #0x0a	; 10
      00055C 0A                     689 	.db #0x0a	; 10
      00055D 0A                     690 	.db #0x0a	; 10
      00055E 09                     691 	.db #0x09	; 9
      00055F 08                     692 	.db #0x08	; 8
      000560 08                     693 	.db #0x08	; 8
      000561 07                     694 	.db #0x07	; 7
      000562 06                     695 	.db #0x06	; 6
      000563 06                     696 	.db #0x06	; 6
      000564 08                     697 	.db #0x08	; 8
      000565 0A                     698 	.db #0x0a	; 10
      000566 0D                     699 	.db #0x0d	; 13
      000567 0D                     700 	.db #0x0d	; 13
      000568 0D                     701 	.db #0x0d	; 13
      000569 0D                     702 	.db #0x0d	; 13
      00056A 0C                     703 	.db #0x0c	; 12
      00056B 0B                     704 	.db #0x0b	; 11
      00056C 0B                     705 	.db #0x0b	; 11
      00056D 0A                     706 	.db #0x0a	; 10
      00056E 09                     707 	.db #0x09	; 9
      00056F 09                     708 	.db #0x09	; 9
      000570 0A                     709 	.db #0x0a	; 10
      000571 0B                     710 	.db #0x0b	; 11
      000572 0A                     711 	.db #0x0a	; 10
      000573 0B                     712 	.db #0x0b	; 11
      000574 0A                     713 	.db #0x0a	; 10
      000575 0C                     714 	.db #0x0c	; 12
      000576 0B                     715 	.db #0x0b	; 11
      000577 0A                     716 	.db #0x0a	; 10
      000578 0A                     717 	.db #0x0a	; 10
      000579 09                     718 	.db #0x09	; 9
      00057A 08                     719 	.db #0x08	; 8
      00057B 08                     720 	.db #0x08	; 8
      00057C 07                     721 	.db #0x07	; 7
      00057D 06                     722 	.db #0x06	; 6
      00057E 07                     723 	.db #0x07	; 7
      00057F 07                     724 	.db #0x07	; 7
      000580 07                     725 	.db #0x07	; 7
      000581 07                     726 	.db #0x07	; 7
      000582 08                     727 	.db #0x08	; 8
      000583 07                     728 	.db #0x07	; 7
      000584 06                     729 	.db #0x06	; 6
      000585 00                     730 	.db #0x00	; 0
      000586 00                     731 	.db #0x00	; 0
      000587 06                     732 	.db #0x06	; 6
      000588 00                     733 	.db #0x00	; 0
      000589 00                     734 	.db #0x00	; 0
      00058A 0A                     735 	.db #0x0a	; 10
      00058B 0A                     736 	.db #0x0a	; 10
      00058C 0A                     737 	.db #0x0a	; 10
      00058D 0A                     738 	.db #0x0a	; 10
      00058E 09                     739 	.db #0x09	; 9
      00058F 08                     740 	.db #0x08	; 8
      000590 08                     741 	.db #0x08	; 8
      000591 07                     742 	.db #0x07	; 7
      000592 07                     743 	.db #0x07	; 7
      000593 07                     744 	.db #0x07	; 7
      000594 07                     745 	.db #0x07	; 7
      000595 07                     746 	.db #0x07	; 7
      000596 0D                     747 	.db #0x0d	; 13
      000597 0D                     748 	.db #0x0d	; 13
      000598 0D                     749 	.db #0x0d	; 13
      000599 0D                     750 	.db #0x0d	; 13
      00059A 0E                     751 	.db #0x0e	; 14
      00059B 0D                     752 	.db #0x0d	; 13
      00059C 0D                     753 	.db #0x0d	; 13
      00059D 0C                     754 	.db #0x0c	; 12
      00059E 0C                     755 	.db #0x0c	; 12
      00059F 0C                     756 	.db #0x0c	; 12
      0005A0 0D                     757 	.db #0x0d	; 13
      0005A1 0E                     758 	.db #0x0e	; 14
      0005A2 0F                     759 	.db #0x0f	; 15
      0005A3 0F                     760 	.db #0x0f	; 15
      0005A4 0F                     761 	.db #0x0f	; 15
      0005A5 0F                     762 	.db #0x0f	; 15
      0005A6 0E                     763 	.db #0x0e	; 14
      0005A7 0E                     764 	.db #0x0e	; 14
      0005A8 0D                     765 	.db #0x0d	; 13
      0005A9 0D                     766 	.db #0x0d	; 13
      0005AA 0D                     767 	.db #0x0d	; 13
      0005AB 0D                     768 	.db #0x0d	; 13
      0005AC 0C                     769 	.db #0x0c	; 12
      0005AD 0B                     770 	.db #0x0b	; 11
      0005AE 0A                     771 	.db #0x0a	; 10
      0005AF 0A                     772 	.db #0x0a	; 10
      0005B0 0A                     773 	.db #0x0a	; 10
      0005B1 0A                     774 	.db #0x0a	; 10
      0005B2 0B                     775 	.db #0x0b	; 11
      0005B3 09                     776 	.db #0x09	; 9
      0005B4 08                     777 	.db #0x08	; 8
      0005B5 00                     778 	.db #0x00	; 0
      0005B6 00                     779 	.db #0x00	; 0
      0005B7 08                     780 	.db #0x08	; 8
      0005B8 00                     781 	.db #0x00	; 0
      0005B9 00                     782 	.db #0x00	; 0
                                    783 	.area XINIT   (CODE)
                                    784 	.area CABS    (ABS,CODE)
