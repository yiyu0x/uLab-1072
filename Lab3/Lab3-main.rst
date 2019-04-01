                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Lab3_main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _keyPressed
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
                                    109 	.globl _row
                                    110 	.globl _num
                                    111 	.globl _table
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
      000008                        227 _table::
      000008                        228 	.ds 8
      000010                        229 _num::
      000010                        230 	.ds 8
      000018                        231 _row::
      000018                        232 	.ds 2
      00001A                        233 _main_count_65537_7:
      00001A                        234 	.ds 2
      00001C                        235 _main_previous_65537_7:
      00001C                        236 	.ds 2
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; Stack segment in internal ram 
                                    243 ;--------------------------------------------------------
                                    244 	.area	SSEG
      00001E                        245 __start__stack:
      00001E                        246 	.ds	1
                                    247 
                                    248 ;--------------------------------------------------------
                                    249 ; indirectly addressable internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area ISEG    (DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; interrupt vector 
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
      000000                        291 __interrupt_vect:
      000000 02 00 06         [24]  292 	ljmp	__sdcc_gsinit_startup
                                    293 ;--------------------------------------------------------
                                    294 ; global & static initialisations
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.area GSFINAL (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.globl __sdcc_gsinit_startup
                                    301 	.globl __sdcc_program_startup
                                    302 	.globl __start__stack
                                    303 	.globl __mcs51_genXINIT
                                    304 	.globl __mcs51_genXRAMCLEAR
                                    305 	.globl __mcs51_genRAMCLEAR
                                    306 ;	Lab3-main.c:5: short table[] = {0x70, 0xb0, 0xd0, 0xe0};
      00005F 75 08 70         [24]  307 	mov	(_table + 0),#0x70
      000062 75 09 00         [24]  308 	mov	(_table + 1),#0x00
      000065 75 0A B0         [24]  309 	mov	((_table + 0x0002) + 0),#0xb0
      000068 75 0B 00         [24]  310 	mov	((_table + 0x0002) + 1),#0x00
      00006B 75 0C D0         [24]  311 	mov	((_table + 0x0004) + 0),#0xd0
      00006E 75 0D 00         [24]  312 	mov	((_table + 0x0004) + 1),#0x00
      000071 75 0E E0         [24]  313 	mov	((_table + 0x0006) + 0),#0xe0
      000074 75 0F 00         [24]  314 	mov	((_table + 0x0006) + 1),#0x00
                                    315 ;	Lab3-main.c:6: short num[4] = {15, 15, 15, 15};
      000077 75 10 0F         [24]  316 	mov	(_num + 0),#0x0f
      00007A 75 11 00         [24]  317 	mov	(_num + 1),#0x00
      00007D 75 12 0F         [24]  318 	mov	((_num + 0x0002) + 0),#0x0f
      000080 75 13 00         [24]  319 	mov	((_num + 0x0002) + 1),#0x00
      000083 75 14 0F         [24]  320 	mov	((_num + 0x0004) + 0),#0x0f
      000086 75 15 00         [24]  321 	mov	((_num + 0x0004) + 1),#0x00
      000089 75 16 0F         [24]  322 	mov	((_num + 0x0006) + 0),#0x0f
      00008C 75 17 00         [24]  323 	mov	((_num + 0x0006) + 1),#0x00
                                    324 ;	Lab3-main.c:7: short row   = 0;
      00008F E4               [12]  325 	clr	a
      000090 F5 18            [12]  326 	mov	_row,a
      000092 F5 19            [12]  327 	mov	(_row + 1),a
                                    328 	.area GSFINAL (CODE)
      000094 02 00 03         [24]  329 	ljmp	__sdcc_program_startup
                                    330 ;--------------------------------------------------------
                                    331 ; Home
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area HOME    (CODE)
      000003                        335 __sdcc_program_startup:
      000003 02 00 FF         [24]  336 	ljmp	_main
                                    337 ;	return from main will return to caller
                                    338 ;--------------------------------------------------------
                                    339 ; code
                                    340 ;--------------------------------------------------------
                                    341 	.area CSEG    (CODE)
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'keyPressed'
                                    344 ;------------------------------------------------------------
                                    345 ;c                         Allocated to registers r6 r7 
                                    346 ;col                       Allocated to registers r4 r5 
                                    347 ;magic                     Allocated to registers r0 r1 
                                    348 ;------------------------------------------------------------
                                    349 ;	Lab3-main.c:8: short keyPressed() {
                                    350 ;	-----------------------------------------
                                    351 ;	 function keyPressed
                                    352 ;	-----------------------------------------
      000097                        353 _keyPressed:
                           000007   354 	ar7 = 0x07
                           000006   355 	ar6 = 0x06
                           000005   356 	ar5 = 0x05
                           000004   357 	ar4 = 0x04
                           000003   358 	ar3 = 0x03
                           000002   359 	ar2 = 0x02
                           000001   360 	ar1 = 0x01
                           000000   361 	ar0 = 0x00
                                    362 ;	Lab3-main.c:9: if((P2 & 0b11110000) != 0b11110000){
      000097 AE A0            [24]  363 	mov	r6,_P2
      000099 53 06 F0         [24]  364 	anl	ar6,#0xf0
      00009C 7F 00            [12]  365 	mov	r7,#0x00
      00009E BE F0 05         [24]  366 	cjne	r6,#0xf0,00127$
      0000A1 BF 00 02         [24]  367 	cjne	r7,#0x00,00127$
      0000A4 80 55            [24]  368 	sjmp	00105$
      0000A6                        369 00127$:
                                    370 ;	Lab3-main.c:10: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      0000A6 7E 01            [12]  371 	mov	r6,#0x01
      0000A8 7F 00            [12]  372 	mov	r7,#0x00
      0000AA 7C 00            [12]  373 	mov	r4,#0x00
      0000AC 7D 00            [12]  374 	mov	r5,#0x00
      0000AE 7A 00            [12]  375 	mov	r2,#0x00
      0000B0 7B 00            [12]  376 	mov	r3,#0x00
      0000B2                        377 00107$:
      0000B2 C3               [12]  378 	clr	c
      0000B3 EA               [12]  379 	mov	a,r2
      0000B4 94 04            [12]  380 	subb	a,#0x04
      0000B6 EB               [12]  381 	mov	a,r3
      0000B7 64 80            [12]  382 	xrl	a,#0x80
      0000B9 94 80            [12]  383 	subb	a,#0x80
      0000BB 50 3E            [24]  384 	jnc	00105$
                                    385 ;	Lab3-main.c:11: `			short magic = ((P2 >> 4) ^ 0b11111111) & 0b00001111;
      0000BD E5 A0            [12]  386 	mov	a,_P2
      0000BF C4               [12]  387 	swap	a
      0000C0 54 0F            [12]  388 	anl	a,#0x0f
      0000C2 F8               [12]  389 	mov	r0,a
      0000C3 63 00 FF         [24]  390 	xrl	ar0,#0xff
      0000C6 53 00 0F         [24]  391 	anl	ar0,#0x0f
      0000C9 79 00            [12]  392 	mov	r1,#0x00
                                    393 ;	Lab3-main.c:12: if (magic == c) {
      0000CB E8               [12]  394 	mov	a,r0
      0000CC B5 06 1B         [24]  395 	cjne	a,ar6,00108$
      0000CF E9               [12]  396 	mov	a,r1
      0000D0 B5 07 17         [24]  397 	cjne	a,ar7,00108$
                                    398 ;	Lab3-main.c:13: return col * 4 + row;
      0000D3 EC               [12]  399 	mov	a,r4
      0000D4 2C               [12]  400 	add	a,r4
      0000D5 F8               [12]  401 	mov	r0,a
      0000D6 ED               [12]  402 	mov	a,r5
      0000D7 33               [12]  403 	rlc	a
      0000D8 F9               [12]  404 	mov	r1,a
      0000D9 E8               [12]  405 	mov	a,r0
      0000DA 28               [12]  406 	add	a,r0
      0000DB F8               [12]  407 	mov	r0,a
      0000DC E9               [12]  408 	mov	a,r1
      0000DD 33               [12]  409 	rlc	a
      0000DE F9               [12]  410 	mov	r1,a
      0000DF E5 18            [12]  411 	mov	a,_row
      0000E1 28               [12]  412 	add	a,r0
      0000E2 F5 82            [12]  413 	mov	dpl,a
      0000E4 E5 19            [12]  414 	mov	a,(_row + 1)
      0000E6 39               [12]  415 	addc	a,r1
      0000E7 F5 83            [12]  416 	mov	dph,a
      0000E9 22               [24]  417 	ret
      0000EA                        418 00108$:
                                    419 ;	Lab3-main.c:10: for (short c = 1, col = 0; col < 4; c *= 2, col++) {
      0000EA EE               [12]  420 	mov	a,r6
      0000EB 2E               [12]  421 	add	a,r6
      0000EC FE               [12]  422 	mov	r6,a
      0000ED EF               [12]  423 	mov	a,r7
      0000EE 33               [12]  424 	rlc	a
      0000EF FF               [12]  425 	mov	r7,a
      0000F0 0A               [12]  426 	inc	r2
      0000F1 BA 00 01         [24]  427 	cjne	r2,#0x00,00131$
      0000F4 0B               [12]  428 	inc	r3
      0000F5                        429 00131$:
      0000F5 8A 04            [24]  430 	mov	ar4,r2
      0000F7 8B 05            [24]  431 	mov	ar5,r3
      0000F9 80 B7            [24]  432 	sjmp	00107$
      0000FB                        433 00105$:
                                    434 ;	Lab3-main.c:17: return -1;
      0000FB 90 FF FF         [24]  435 	mov	dptr,#0xffff
                                    436 ;	Lab3-main.c:18: }
      0000FE 22               [24]  437 	ret
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'main'
                                    440 ;------------------------------------------------------------
                                    441 ;count                     Allocated with name '_main_count_65537_7'
                                    442 ;number                    Allocated to registers 
                                    443 ;light_index               Allocated to registers 
                                    444 ;previous                  Allocated with name '_main_previous_65537_7'
                                    445 ;key                       Allocated to registers r2 r3 
                                    446 ;i                         Allocated to registers r4 r5 
                                    447 ;------------------------------------------------------------
                                    448 ;	Lab3-main.c:20: int main() {
                                    449 ;	-----------------------------------------
                                    450 ;	 function main
                                    451 ;	-----------------------------------------
      0000FF                        452 _main:
                                    453 ;	Lab3-main.c:22: P2=0b11111110;
      0000FF 75 A0 FE         [24]  454 	mov	_P2,#0xfe
                                    455 ;	Lab3-main.c:23: short count = 1;
      000102 75 1A 01         [24]  456 	mov	_main_count_65537_7,#0x01
      000105 75 1B 00         [24]  457 	mov	(_main_count_65537_7 + 1),#0x00
                                    458 ;	Lab3-main.c:26: short previous = -1;
      000108 75 1C FF         [24]  459 	mov	_main_previous_65537_7,#0xff
      00010B 75 1D FF         [24]  460 	mov	(_main_previous_65537_7 + 1),#0xff
                                    461 ;	Lab3-main.c:30: while (1) {
      00010E                        462 00108$:
                                    463 ;	Lab3-main.c:32: P2    =count^0b11111111;
      00010E 74 FF            [12]  464 	mov	a,#0xff
      000110 65 1A            [12]  465 	xrl	a,_main_count_65537_7
      000112 FA               [12]  466 	mov	r2,a
      000113 8A A0            [24]  467 	mov	_P2,r2
                                    468 ;	Lab3-main.c:33: count *=2;
      000115 E5 1A            [12]  469 	mov	a,_main_count_65537_7
      000117 25 1A            [12]  470 	add	a,_main_count_65537_7
      000119 F5 1A            [12]  471 	mov	_main_count_65537_7,a
      00011B E5 1B            [12]  472 	mov	a,(_main_count_65537_7 + 1)
      00011D 33               [12]  473 	rlc	a
      00011E F5 1B            [12]  474 	mov	(_main_count_65537_7 + 1),a
                                    475 ;	Lab3-main.c:35: short key = keyPressed();
      000120 12 00 97         [24]  476 	lcall	_keyPressed
      000123 AA 82            [24]  477 	mov	r2,dpl
      000125 AB 83            [24]  478 	mov	r3,dph
                                    479 ;	Lab3-main.c:36: if (key != -1 && key != previous) {
      000127 BA FF 05         [24]  480 	cjne	r2,#0xff,00139$
      00012A BB FF 02         [24]  481 	cjne	r3,#0xff,00139$
      00012D 80 2A            [24]  482 	sjmp	00102$
      00012F                        483 00139$:
      00012F EA               [12]  484 	mov	a,r2
      000130 B5 1C 06         [24]  485 	cjne	a,_main_previous_65537_7,00140$
      000133 EB               [12]  486 	mov	a,r3
      000134 B5 1D 02         [24]  487 	cjne	a,(_main_previous_65537_7 + 1),00140$
      000137 80 20            [24]  488 	sjmp	00102$
      000139                        489 00140$:
                                    490 ;	Lab3-main.c:38: previous = key;
      000139 8A 1C            [24]  491 	mov	_main_previous_65537_7,r2
      00013B 8B 1D            [24]  492 	mov	(_main_previous_65537_7 + 1),r3
                                    493 ;	Lab3-main.c:40: num[0] =num[1];
      00013D AC 12            [24]  494 	mov	r4,((_num + 0x0002) + 0)
      00013F AD 13            [24]  495 	mov	r5,((_num + 0x0002) + 1)
      000141 8C 10            [24]  496 	mov	(_num + 0),r4
      000143 8D 11            [24]  497 	mov	(_num + 1),r5
                                    498 ;	Lab3-main.c:41: num[1] =num[2];
      000145 AC 14            [24]  499 	mov	r4,((_num + 0x0004) + 0)
      000147 AD 15            [24]  500 	mov	r5,((_num + 0x0004) + 1)
      000149 8C 12            [24]  501 	mov	((_num + 0x0002) + 0),r4
      00014B 8D 13            [24]  502 	mov	((_num + 0x0002) + 1),r5
                                    503 ;	Lab3-main.c:42: num[2] =num[3];			
      00014D AC 16            [24]  504 	mov	r4,((_num + 0x0006) + 0)
      00014F AD 17            [24]  505 	mov	r5,((_num + 0x0006) + 1)
      000151 8C 14            [24]  506 	mov	((_num + 0x0004) + 0),r4
      000153 8D 15            [24]  507 	mov	((_num + 0x0004) + 1),r5
                                    508 ;	Lab3-main.c:43: num[3] = key;
      000155 8A 16            [24]  509 	mov	((_num + 0x0006) + 0),r2
      000157 8B 17            [24]  510 	mov	((_num + 0x0006) + 1),r3
      000159                        511 00102$:
                                    512 ;	Lab3-main.c:47: row++;
      000159 05 18            [12]  513 	inc	_row
      00015B E4               [12]  514 	clr	a
      00015C B5 18 02         [24]  515 	cjne	a,_row,00141$
      00015F 05 19            [12]  516 	inc	(_row + 1)
      000161                        517 00141$:
                                    518 ;	Lab3-main.c:48: if (count == 0x10) {
      000161 74 10            [12]  519 	mov	a,#0x10
      000163 B5 1A 06         [24]  520 	cjne	a,_main_count_65537_7,00142$
      000166 E4               [12]  521 	clr	a
      000167 B5 1B 02         [24]  522 	cjne	a,(_main_count_65537_7 + 1),00142$
      00016A 80 02            [24]  523 	sjmp	00143$
      00016C                        524 00142$:
      00016C 80 0A            [24]  525 	sjmp	00120$
      00016E                        526 00143$:
                                    527 ;	Lab3-main.c:49: count = 1;
      00016E 75 1A 01         [24]  528 	mov	_main_count_65537_7,#0x01
                                    529 ;	Lab3-main.c:50: row   = 0;
      000171 E4               [12]  530 	clr	a
      000172 F5 1B            [12]  531 	mov	(_main_count_65537_7 + 1),a
      000174 F5 18            [12]  532 	mov	_row,a
      000176 F5 19            [12]  533 	mov	(_row + 1),a
                                    534 ;	Lab3-main.c:53: for(short i = 0; i < 4; i++)
      000178                        535 00120$:
      000178 7C 00            [12]  536 	mov	r4,#0x00
      00017A 7D 00            [12]  537 	mov	r5,#0x00
      00017C                        538 00111$:
      00017C C3               [12]  539 	clr	c
      00017D EC               [12]  540 	mov	a,r4
      00017E 94 04            [12]  541 	subb	a,#0x04
      000180 ED               [12]  542 	mov	a,r5
      000181 64 80            [12]  543 	xrl	a,#0x80
      000183 94 80            [12]  544 	subb	a,#0x80
      000185 50 87            [24]  545 	jnc	00108$
                                    546 ;	Lab3-main.c:54: P1  = table[i] + num[i];
      000187 EC               [12]  547 	mov	a,r4
      000188 2C               [12]  548 	add	a,r4
      000189 FA               [12]  549 	mov	r2,a
      00018A ED               [12]  550 	mov	a,r5
      00018B 33               [12]  551 	rlc	a
      00018C EA               [12]  552 	mov	a,r2
      00018D 24 08            [12]  553 	add	a,#_table
      00018F F9               [12]  554 	mov	r1,a
      000190 87 07            [24]  555 	mov	ar7,@r1
      000192 EA               [12]  556 	mov	a,r2
      000193 24 10            [12]  557 	add	a,#_num
      000195 F9               [12]  558 	mov	r1,a
      000196 E7               [12]  559 	mov	a,@r1
      000197 2F               [12]  560 	add	a,r7
      000198 F5 90            [12]  561 	mov	_P1,a
                                    562 ;	Lab3-main.c:53: for(short i = 0; i < 4; i++)
      00019A 0C               [12]  563 	inc	r4
      00019B BC 00 DE         [24]  564 	cjne	r4,#0x00,00111$
      00019E 0D               [12]  565 	inc	r5
                                    566 ;	Lab3-main.c:57: }
      00019F 80 DB            [24]  567 	sjmp	00111$
                                    568 	.area CSEG    (CODE)
                                    569 	.area CONST   (CODE)
                                    570 	.area XINIT   (CODE)
                                    571 	.area CABS    (ABS,CODE)
