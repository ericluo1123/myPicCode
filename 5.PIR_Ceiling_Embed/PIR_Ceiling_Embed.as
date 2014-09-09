opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F723A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 95 "G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
	psect config,class=CONFIG,delta=2 ;#
# 95 "G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF ;#
# 96 "G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
	psect config,class=CONFIG,delta=2 ;#
# 96 "G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
	dw 0xFFFF ;#
	FNCALL	_main,_MainT_Initial
	FNCALL	_main,_MainT
	FNCALL	_main,___awdiv
	FNCALL	_main,___lwdiv
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Buzzer
	global	_CDS
	global	_LED
	global	_Lights2
	global	_PIR
	global	_Timer1
	global	_VarTemp
	global	_Temp
	global	_VarTMain
	global	_VarCDS
	global	__Lights2
	global	_VarBuzzer
	global	_VarLED
	global	_VarTimer1
	global	_VarPIR
	global	_TMain
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_TMain:
       ds      1

	global	_ADCON0
_ADCON0	set	31
	global	_ADRES
_ADRES	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	249
	global	_PEIE
_PEIE	set	94
	global	_RA4
_RA4	set	44
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_TMR1IF
_TMR1IF	set	96
	global	_ADCON1
_ADCON1	set	159
	global	_OSCCON
_OSCCON	set	144
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TMR1IE
_TMR1IE	set	1120
	global	_ANSELA
_ANSELA	set	389
	global	_ANSELB
_ANSELB	set	390
	file	"PIR_Ceiling_Embed.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_VarTemp:
       ds      5

_Temp:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Buzzer:
       ds      1

_CDS:
       ds      1

_LED:
       ds      1

_Lights2:
       ds      1

_PIR:
       ds      1

_Timer1:
       ds      1

_VarTMain:
       ds      9

_VarCDS:
       ds      6

__Lights2:
       ds      6

_VarBuzzer:
       ds      5

_VarLED:
       ds      4

_VarTimer1:
       ds      3

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_VarPIR:
       ds      47

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+06h)
	fcall	clear_ram
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+027h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+02Fh)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_MainT_Initial
?_MainT_Initial:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x0
	global	??_MainT
??_MainT:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	6
	global	main@i
main@i:	; 1 bytes @ 0xF
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 92, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      12
;; BANK0           80     16      56
;; BANK1           80      0      47
;; BANK2           16      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; Temp	PTR struct Temp size(1) Largest target is 0
;;		 -> NULL(NULL[0]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarTMain(BANK0[9]), 
;;
;; Lights2	PTR struct Lights size(1) Largest target is 6
;;		 -> NULL(NULL[0]), _Lights2(BANK0[6]), 
;;
;; PIR	PTR struct PIR size(1) Largest target is 47
;;		 -> NULL(NULL[0]), VarPIR(BANK1[47]), 
;;
;; CDS	PTR struct CDS size(1) Largest target is 6
;;		 -> NULL(NULL[0]), VarCDS(BANK0[6]), 
;;
;; Buzzer	PTR struct Buzzer size(1) Largest target is 5
;;		 -> NULL(NULL[0]), VarBuzzer(BANK0[5]), 
;;
;; LED	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarLED(BANK0[4]), 
;;
;; Timer1	PTR struct Timer1 size(1) Largest target is 3
;;		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___awdiv
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 7     7      0     884
;;                                              9 BANK0      7     7      0
;;                      _MainT_Initial
;;                              _MainT
;;                            ___awdiv
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     445
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     241
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _ISR                                                  6     6      0       0
;;                                              0 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initial
;;   _MainT
;;   ___awdiv
;;   ___lwdiv
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0      73       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     10      38       5       70.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0      2F       7       58.8%
;;BITBANK2            10      0       0       8        0.0%
;;BANK2               10      0       0       9        0.0%
;;DATA                 0      0      74      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 119 in file "G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       6       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MainT_Initial
;;		_MainT
;;		___awdiv
;;		___lwdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
	line	119
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	121
	
l3212:	
;PIR_Ceiling_Embed_V1.c: 120: char i;
;PIR_Ceiling_Embed_V1.c: 121: MainT_Initial();
	fcall	_MainT_Initial
	line	122
	
l3214:	
;PIR_Ceiling_Embed_V1.c: 122: ; OSCCON=0x3c; ; ; TRISA=0b00101111;; TRISB=0b00000001;; TRISC=0b00000000;; ANSELA=0b00000111;; ANSELB=0b00000001;; PORTA=0b10101111;; PORTB=0b00000001;; PORTC=0b00000000; ; ; _nop(); ; ; Timer1=&VarTimer1; T1CON=(0x40 | 0x00 | 0x01); TMR1H=((65536-5
	movlw	(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(144)^080h	;volatile
	
l3216:	
	movlw	(02Fh)
	movwf	(133)^080h	;volatile
	
l3218:	
	movlw	(01h)
	movwf	(134)^080h	;volatile
	
l3220:	
	clrf	(135)^080h	;volatile
	
l3222:	
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(389)^0180h	;volatile
	
l3224:	
	movlw	(01h)
	movwf	(390)^0180h	;volatile
	
l3226:	
	movlw	(0AFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l3228:	
	movlw	(01h)
	movwf	(6)	;volatile
	
l3230:	
	clrf	(7)	;volatile
	
l3232:	
	nop
	
l3234:	
	movlw	(_VarTimer1)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Timer1)
	
l3236:	
	movlw	(041h)
	movwf	(16)	;volatile
	
l3238:	
	movlw	(0FDh)
	movwf	(15)	;volatile
	
l3240:	
	movlw	(0DAh)
	movwf	(14)	;volatile
	
l3242:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l3244:	
	bsf	(94/8),(94)&7
	
l3246:	
	bsf	(95/8),(95)&7
	
l3248:	
	nop
	
l3250:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3252:	
	nop
	line	124
	
l3254:	
;PIR_Ceiling_Embed_V1.c: 124: LED=&VarLED; LED->Enable=1; while(RB5==0) RB5 = 1; while(RB4==0) RB4 = 1; while(RB3==0) RB3 = 1;
	movlw	(_VarLED)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_LED)
	
l3256:	
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	goto	l841
	
l842:	
	bsf	(53/8),(53)&7
	
l841:	
	btfss	(53/8),(53)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l842
u4300:
	goto	l844
	
l843:	
	goto	l844
	
l845:	
	bsf	(52/8),(52)&7
	
l844:	
	btfss	(52/8),(52)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l845
u4310:
	goto	l847
	
l846:	
	goto	l847
	
l848:	
	bsf	(51/8),(51)&7
	
l847:	
	btfss	(51/8),(51)&7
	goto	u4321
	goto	u4320
u4321:
	goto	l848
u4320:
	goto	l3258
	
l849:	
	line	125
	
l3258:	
;PIR_Ceiling_Embed_V1.c: 125: Buzzer=&VarBuzzer; Buzzer->Enable=1;
	movlw	(_VarBuzzer)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Buzzer)
	
l3260:	
	movf	(_Buzzer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	127
	
l3262:	
;PIR_Ceiling_Embed_V1.c: 127: CDS = &VarCDS; CDS->Enable=1;
	movlw	(_VarCDS)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_CDS)
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,0
	line	128
	
l3264:	
;PIR_Ceiling_Embed_V1.c: 128: PIR=&VarPIR; PIR->Enable=1; PIR->Switch=1; PIR->RangeValue=25; PIR->Trigger=2; PIR->CloseTimeValue=100; while(RB4==0) RB4 = 1; RB5 = 0;
	movlw	(_VarPIR)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_PIR)
	
l3266:	
	movf	(_PIR),w
	movwf	fsr0
	bsf	indf,0
	
l3268:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bsf	indf,2
	
l3270:	
	movlw	(019h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3272:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3274:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(064h)
	movwf	indf
	incf	fsr0,f
	movlw	high(064h)
	movwf	indf
	goto	l850
	
l851:	
	bsf	(52/8),(52)&7
	
l850:	
	btfss	(52/8),(52)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l851
u4330:
	
l852:	
	bcf	(53/8),(53)&7
	line	129
	
l3276:	
;PIR_Ceiling_Embed_V1.c: 129: Lights2=&_Lights2; Lights2->Enable=1;
	movlw	(__Lights2)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Lights2)
	
l3278:	
	movf	(_Lights2),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	goto	l3280
	line	130
;PIR_Ceiling_Embed_V1.c: 130: while(1)
	
l853:	
	line	137
	
l3280:	
;PIR_Ceiling_Embed_V1.c: 131: {
;PIR_Ceiling_Embed_V1.c: 137: if(TMain->T1_Timerout==1)
	movf	(_TMain),w
	movwf	fsr0
	btfss	indf,2
	goto	u4341
	goto	u4340
u4341:
	goto	l3280
u4340:
	line	139
	
l3282:	
;PIR_Ceiling_Embed_V1.c: 138: {
;PIR_Ceiling_Embed_V1.c: 139: TMain->T1_Timerout=0;
	movf	(_TMain),w
	movwf	fsr0
	bcf	indf,2
	line	141
	
l3284:	
;PIR_Ceiling_Embed_V1.c: 141: MainT();
	fcall	_MainT
	line	142
	
l3286:	
;PIR_Ceiling_Embed_V1.c: 142: if(LED->GO1==1) { LED->Time1++; if(LED->Time1 == 150) { LED->Time1=0; RB5=~RB5; } } if(LED->GO2==1) { LED->Time2++; if(LED->Time2 == 150) { LED->Time2=0; RB4=~RB4; } } if(LED->GO3==1) { LED->Time3++; if(LED->Time3 == 150) { LED->Time3=0; RB3=~RB3; } 
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u4351
	goto	u4350
u4351:
	goto	l3296
u4350:
	
l3288:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3290:	
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l3296
u4360:
	
l3292:	
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	
l3294:	
	movlw	1<<((53)&7)
	xorwf	((53)/8),f
	goto	l3296
	
l856:	
	goto	l3296
	
l855:	
	
l3296:	
	movf	(_LED),w
	movwf	fsr0
	btfss	indf,2
	goto	u4371
	goto	u4370
u4371:
	goto	l3306
u4370:
	
l3298:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3300:	
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l3306
u4380:
	
l3302:	
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	
l3304:	
	movlw	1<<((52)&7)
	xorwf	((52)/8),f
	goto	l3306
	
l858:	
	goto	l3306
	
l857:	
	
l3306:	
	movf	(_LED),w
	movwf	fsr0
	btfss	indf,3
	goto	u4391
	goto	u4390
u4391:
	goto	l3316
u4390:
	
l3308:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3310:	
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l3316
u4400:
	
l3312:	
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	
l3314:	
	movlw	1<<((51)&7)
	xorwf	((51)/8),f
	goto	l3316
	
l860:	
	goto	l3316
	
l859:	
	line	143
	
l3316:	
;PIR_Ceiling_Embed_V1.c: 143: if(Buzzer->Enable == 1) { if(Buzzer->GO == 0) { if(Buzzer->Beeps > 0) { Buzzer->Count=Buzzer->Beeps; Buzzer->Beeps=0; Buzzer->GO=1; RB1=1; } } else { Buzzer->Time++; if(Buzzer->Time==80) { Buzzer->Time=0; if(RB1==0) RB1=1; else { RB1=0; if(Buzzer->Co
	movf	(_Buzzer),w
	movwf	fsr0
	btfss	indf,0
	goto	u4411
	goto	u4410
u4411:
	goto	l861
u4410:
	
l3318:	
	movf	(_Buzzer),w
	movwf	fsr0
	btfsc	indf,1
	goto	u4421
	goto	u4420
u4421:
	goto	l3326
u4420:
	
l3320:	
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	movf	indf
	skipnz
	goto	u4431
	goto	u4430
u4431:
	goto	l861
u4430:
	
l3322:	
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	movf	(_Buzzer),w
	movwf	fsr0
	bsf	indf,1
	
l3324:	
	bsf	(49/8),(49)&7
	goto	l861
	
l863:	
	goto	l861
	
l862:	
	
l3326:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Buzzer),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3328:	
	movf	(_Buzzer),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	050h
	skipz
	goto	u4441
	goto	u4440
u4441:
	goto	l3348
u4440:
	
l3330:	
	movf	(_Buzzer),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	
l3332:	
	btfsc	(49/8),(49)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l866
u4450:
	
l3334:	
	bsf	(49/8),(49)&7
	goto	l3348
	
l866:	
	bcf	(49/8),(49)&7
	
l3336:	
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr0
	movlw	(02h)
	subwf	indf,w
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l3340
u4460:
	
l3338:	
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr0
	movlw	low(01h)
	subwf	indf,f
	goto	l3348
	
l868:	
	
l3340:	
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l3344
u4470:
	
l3342:	
	movf	(_Buzzer),w
	movwf	fsr0
	bcf	indf,1
	goto	l3348
	
l870:	
	
l3344:	
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3346:	
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	goto	l3348
	
l871:	
	goto	l3348
	
l869:	
	goto	l3348
	
l867:	
	goto	l3348
	
l865:	
	
l3348:	
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	movf	indf
	skipnz
	goto	u4481
	goto	u4480
u4481:
	goto	l861
u4480:
	
l3350:	
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	goto	l861
	
l872:	
	goto	l861
	
l864:	
	
l861:	
	line	145
;PIR_Ceiling_Embed_V1.c: 145: if(CDS->Enable==1) { CDS->Time++; if(CDS->Time == 100) { CDS->Time=0; CDS->ADCGO=1; ADCON1=0x70; ; ; ADCON0=0x31; ; GO_nDONE=1; while(GO_nDONE); CDS->SignalAD=ADRES; ; ; ADCON0=0x09; ; GO_nDONE=1; while(GO_nDONE); CDS->VRAD=ADRES; ; CDS->ADCGO=0; CDS
	movf	(_CDS),w
	movwf	fsr0
	btfss	indf,0
	goto	u4491
	goto	u4490
u4491:
	goto	l873
u4490:
	
l3352:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3354:	
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	064h
	skipz
	goto	u4501
	goto	u4500
u4501:
	goto	l873
u4500:
	
l3356:	
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	movf	(_CDS),w
	addlw	05h
	movwf	fsr0
	bsf	indf,0
	
l3358:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3360:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l3362:	
	bsf	(249/8),(249)&7
	goto	l875
	
l876:	
	
l875:	
	btfsc	(249/8),(249)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l875
u4510:
	goto	l3364
	
l877:	
	
l3364:	
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3366:	
	movlw	(09h)
	movwf	(31)	;volatile
	
l3368:	
	bsf	(249/8),(249)&7
	goto	l878
	
l879:	
	
l878:	
	btfsc	(249/8),(249)&7
	goto	u4521
	goto	u4520
u4521:
	goto	l878
u4520:
	goto	l3370
	
l880:	
	
l3370:	
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	(_CDS),w
	addlw	05h
	movwf	fsr0
	bcf	indf,0
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,1
	movf	(_CDS),w
	movwf	fsr0
	btfss	indf,1
	goto	u4531
	goto	u4530
u4531:
	goto	l873
u4530:
	
l3372:	
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,1
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfsc	indf,0
	goto	u4541
	goto	u4540
u4541:
	goto	l3378
u4540:
	
l3374:	
	movf	(_CDS),w
	addlw	03h
	movwf	fsr
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0
	movf	(??_main+0)+0,w
	subwf	(??_main+1)+0,w
	skipc
	goto	u4551
	goto	u4550
u4551:
	goto	l873
u4550:
	
l3376:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bsf	indf,0
	goto	l873
	
l883:	
	goto	l873
	
l882:	
	
l3378:	
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	addlw	low(-100)
	movwf	(??_main+0)+0
	movlw	high(-100)
	skipnc
	movlw	(high(-100)+1)&0ffh
	movwf	((??_main+0)+0)+1
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	movwf	(??_main+2)+0
	movlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u4565
	movf	indf,w
	subwf	0+(??_main+0)+0,w
u4565:

	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l873
u4560:
	
l3380:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,0
	goto	l873
	
l885:	
	goto	l873
	
l884:	
	goto	l873
	
l881:	
	goto	l873
	
l874:	
	
l873:	
	line	146
;PIR_Ceiling_Embed_V1.c: 146: if(PIR->Enable == 1) { PIR->Time++; if(PIR->Time == 100) { PIR->Time=0; PIR->ADCGO=1; ADCON1=0x70; ; ; ADCON0=0x05; ; GO_nDONE=1; while(GO_nDONE); PIR->VRAD=ADRES/51; ; ; ADCON0=0x0d; ; GO_nDONE=1; while(GO_nDONE); PIR->SignalAD=ADRES; ; PIR->ADCGO=0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u4571
	goto	u4570
u4571:
	goto	l3556
u4570:
	
l3382:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3384:	
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	064h
	skipz
	goto	u4581
	goto	u4580
u4581:
	goto	l3556
u4580:
	
l3386:	
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	movwf	fsr0
	bsf	indf,1
	
l3388:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3390:	
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l3392:	
	bsf	(249/8),(249)&7
	goto	l888
	
l889:	
	
l888:	
	btfsc	(249/8),(249)&7
	goto	u4591
	goto	u4590
u4591:
	goto	l888
u4590:
	goto	l3394
	
l890:	
	
l3394:	
	movlw	low(033h)
	movwf	(?___awdiv)
	movlw	high(033h)
	movwf	((?___awdiv))+1
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_main+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3396:	
	movlw	(0Dh)
	movwf	(31)	;volatile
	
l3398:	
	bsf	(249/8),(249)&7
	goto	l891
	
l892:	
	
l891:	
	btfsc	(249/8),(249)&7
	goto	u4601
	goto	u4600
u4601:
	goto	l891
u4600:
	goto	l3400
	
l893:	
	
l3400:	
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	(_PIR),w
	movwf	fsr0
	bcf	indf,1
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bsf	indf,0
	
l3402:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u4611
	goto	u4610
u4611:
	goto	l3406
u4610:
	
l3404:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(064h)
	movwf	indf
	incf	fsr0,f
	movlw	high(064h)
	movwf	indf
	goto	l3422
	
l894:	
	
l3406:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	01h
	skipz
	goto	u4621
	goto	u4620
u4621:
	goto	l3410
u4620:
	
l3408:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(0BB8h)
	movwf	indf
	incf	fsr0,f
	movlw	high(0BB8h)
	movwf	indf
	goto	l3422
	
l896:	
	
l3410:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	02h
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l3414
u4630:
	
l3412:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(01770h)
	movwf	indf
	incf	fsr0,f
	movlw	high(01770h)
	movwf	indf
	goto	l3422
	
l898:	
	
l3414:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	03h
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l3418
u4640:
	
l3416:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(02328h)
	movwf	indf
	incf	fsr0,f
	movlw	high(02328h)
	movwf	indf
	goto	l3422
	
l900:	
	
l3418:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movlw	(04h)
	subwf	indf,w
	skipc
	goto	u4651
	goto	u4650
u4651:
	goto	l3422
u4650:
	
l3420:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(02EE0h)
	movwf	indf
	incf	fsr0,f
	movlw	high(02EE0h)
	movwf	indf
	goto	l3422
	
l902:	
	goto	l3422
	
l901:	
	goto	l3422
	
l899:	
	goto	l3422
	
l897:	
	goto	l3422
	
l895:	
	
l3422:	
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	addlw	08h
	addwf	(_PIR),w
	movwf	(??_main+1)+0
	movf	0+(??_main+1)+0,w
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3424:	
	clrf	(main@i)
	
l3426:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u4661
	goto	u4660
u4661:
	goto	l3430
u4660:
	goto	l3436
	
l3428:	
	goto	l3436
	
l903:	
	
l3430:	
	movf	(main@i),w
	addlw	08h
	addwf	(_PIR),w
	movwf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	movf	(_PIR),w
	addlw	012h
	movwf	fsr0
	movf	0+(??_main+1)+0,w
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	1+(??_main+1)+0,w
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	
l3432:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3434:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l3430
u4670:
	goto	l3436
	
l904:	
	
l3436:	
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_PIR),w
	addlw	012h
	movwf	fsr0
	movf	indf,w
	movwf	0+(?___lwdiv)+02h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	014h
	addwf	(_PIR),w
	movwf	(??_main+1)+0
	movf	0+(??_main+1)+0,w
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3438:	
	movf	(_PIR),w
	addlw	012h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3440:	
	clrf	(main@i)
	
l3442:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u4681
	goto	u4680
u4681:
	goto	l3446
u4680:
	goto	l3452
	
l3444:	
	goto	l3452
	
l905:	
	
l3446:	
	movf	(main@i),w
	addlw	014h
	addwf	(_PIR),w
	movwf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	0+(??_main+1)+0,w
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	1+(??_main+1)+0,w
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	
l3448:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3450:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u4691
	goto	u4690
u4691:
	goto	l3446
u4690:
	goto	l3452
	
l906:	
	
l3452:	
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	indf,w
	movwf	0+(?___lwdiv)+02h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3454:	
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3456:	
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movlw	(0Ah)
	subwf	indf,w
	skipnc
	goto	u4701
	goto	u4700
u4701:
	goto	l3460
u4700:
	
l3458:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l908
	
l907:	
	
l3460:	
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movlw	(0Ah)
	subwf	indf,w
	skipnc
	goto	u4711
	goto	u4710
u4711:
	goto	l3464
u4710:
	
l3462:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l908
	
l909:	
	
l3464:	
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	goto	l908
	
l910:	
	
l908:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfsc	indf,2
	goto	u4721
	goto	u4720
u4721:
	goto	l3470
u4720:
	
l3466:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfss	indf,0
	goto	u4731
	goto	u4730
u4731:
	goto	l3478
u4730:
	
l3468:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bsf	indf,2
	movlw	(019h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3478
	
l912:	
	goto	l3478
	
l911:	
	
l3470:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfsc	indf,0
	goto	u4741
	goto	u4740
u4741:
	goto	l3478
u4740:
	
l3472:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bcf	indf,2
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,1
	goto	u4751
	goto	u4750
u4751:
	goto	l3478
u4750:
	goto	l916
	
l3474:	
	goto	l916
	
l917:	
	bsf	(53/8),(53)&7
	
l916:	
	btfss	(53/8),(53)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l917
u4760:
	goto	l919
	
l918:	
	goto	l919
	
l920:	
	bsf	(52/8),(52)&7
	
l919:	
	btfss	(52/8),(52)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l920
u4770:
	goto	l3476
	
l921:	
	
l3476:	
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	goto	l3478
	
l915:	
	goto	l3478
	
l914:	
	goto	l3478
	
l913:	
	
l3478:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,1
	goto	u4781
	goto	u4780
u4781:
	goto	l3550
u4780:
	
l3480:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,0
	goto	u4791
	goto	u4790
u4791:
	goto	l3556
u4790:
	
l3482:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bcf	indf,0
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,2
	goto	u4801
	goto	u4800
u4801:
	goto	l3556
u4800:
	
l3484:	
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	movlw	(064h)
	subwf	indf,w
	skipnc
	goto	u4811
	goto	u4810
u4811:
	goto	l3488
u4810:
	
l3486:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l3516
	
l925:	
	
l3488:	
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movlw	(05Ah)
	subwf	indf,w
	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l3498
u4820:
	
l3490:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Dh
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	xorlw	019h
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l3494
u4830:
	
l3492:	
	movlw	(023h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3516
	
l928:	
	
l3494:	
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	xorlw	023h
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l3516
u4840:
	
l3496:	
	movlw	(02Dh)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3516
	
l930:	
	goto	l3516
	
l929:	
	goto	l3516
	
l927:	
	
l3498:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Dh
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3500:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	clrf	indf
	
l3502:	
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	movlw	(06h)
	subwf	indf,w
	skipnc
	goto	u4851
	goto	u4850
u4851:
	goto	l3506
u4850:
	
l3504:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l3516
	
l932:	
	
l3506:	
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Dh
	movwf	fsr0
	movlw	(0Bh)
	subwf	indf,w
	skipnc
	goto	u4861
	goto	u4860
u4861:
	goto	l3516
u4860:
	
l3508:	
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l3512
u4870:
	
l3510:	
	movlw	(023h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l936
	
l935:	
	
l3512:	
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	xorlw	023h
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l936
u4880:
	
l3514:	
	movlw	(019h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l936
	
l937:	
	
l936:	
	movf	(_PIR),w
	addlw	02Dh
	movwf	fsr0
	clrf	indf
	goto	l3516
	
l934:	
	goto	l3516
	
l933:	
	goto	l3516
	
l931:	
	goto	l3516
	
l926:	
	
l3516:	
	movf	(_PIR),w
	addlw	02Eh
	movwf	fsr
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	rlf	1+(??_main+1)+0,f
	
	comf	(??_main+1)+0,f
	comf	(??_main+1)+1,f
	incf	(??_main+1)+0,f
	skipnz
	incf	(??_main+1)+1,f
	movf	(_PIR),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	addwf	0+(??_main+1)+0,w
	movwf	(??_main+3)+0
	movf	1+(??_main+1)+0,w
	skipnc
	incf	1+(??_main+1)+0,w
	movwf	((??_main+3)+0)+1
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_main+3)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u4895
	movf	0+(??_main+3)+0,w
	subwf	indf,w
u4895:

	skipc
	goto	u4891
	goto	u4890
u4891:
	goto	l3530
u4890:
	
l3518:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	02Eh
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	rlf	1+(??_main+1)+0,f
	
	movf	(_PIR),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	addwf	0+(??_main+1)+0,w
	movwf	(??_main+3)+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+1)+0,w
	movwf	1+(??_main+3)+0
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_main+3)+0,w
	xorlw	80h
	movwf	(??_main+5)+0
	movlw	80h
	subwf	(??_main+5)+0,w
	skipz
	goto	u4905
	movf	indf,w
	subwf	0+(??_main+3)+0,w
u4905:

	skipc
	goto	u4901
	goto	u4900
u4901:
	goto	l3530
u4900:
	
l3520:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l939
	
l940:	
	bsf	(53/8),(53)&7
	
l939:	
	btfss	(53/8),(53)&7
	goto	u4911
	goto	u4910
u4911:
	goto	l940
u4910:
	goto	l942
	
l941:	
	goto	l942
	
l943:	
	bsf	(52/8),(52)&7
	
l942:	
	btfss	(52/8),(52)&7
	goto	u4921
	goto	u4920
u4921:
	goto	l943
u4920:
	goto	l3522
	
l944:	
	
l3522:	
	movf	(_PIR),w
	addlw	024h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3524:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movf	(_PIR),w
	addlw	024h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+2)+0+1
	movf	1+(??_main+0)+0,w
	xorwf	1+(??_main+2)+0,w
	skipz
	goto	u4935
	movf	0+(??_main+0)+0,w
	xorwf	0+(??_main+2)+0,w
u4935:

	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l3556
u4930:
	
l3526:	
	movf	(_PIR),w
	addlw	024h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3528:	
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	goto	l3556
	
l945:	
	goto	l3556
	
l938:	
	
l3530:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3532:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	1+(??_main+0)+0,w
	xorwf	1+(??_main+2)+0,w
	skipz
	goto	u4945
	movf	0+(??_main+0)+0,w
	xorwf	0+(??_main+2)+0,w
u4945:

	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l3542
u4940:
	
l3534:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	movf	(_PIR),w
	addlw	024h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3536:	
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	
l3538:	
	movf	(_PIR),w
	addlw	02Eh
	movwf	fsr0
	clrf	indf
	
l3540:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3542
	
l947:	
	
l3542:	
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_PIR),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	incf	1+(??_main+0)+0,w
	movwf	((??_main+2)+0)+1
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_main+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u4955
	movf	0+(??_main+2)+0,w
	subwf	indf,w
u4955:

	skipnc
	goto	u4951
	goto	u4950
u4951:
	goto	l3546
u4950:
	goto	l949
	
l3544:	
	goto	l949
	
l950:	
	bsf	(52/8),(52)&7
	
l949:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u4961
	goto	u4960
u4961:
	goto	l950
u4960:
	
l951:	
	bcf	(53/8),(53)&7
	goto	l3556
	
l948:	
	
l3546:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	rlf	1+(??_main+1)+0,f
	
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_main+1)+0,w
	xorlw	80h
	movwf	(??_main+3)+0
	movlw	80h
	subwf	(??_main+3)+0,w
	skipz
	goto	u4975
	movf	indf,w
	subwf	0+(??_main+1)+0,w
u4975:

	skipnc
	goto	u4971
	goto	u4970
u4971:
	goto	l3556
u4970:
	goto	l954
	
l3548:	
	goto	l954
	
l955:	
	bsf	(53/8),(53)&7
	
l954:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l955
u4980:
	
l956:	
	bcf	(52/8),(52)&7
	goto	l3556
	
l953:	
	goto	l3556
	
l952:	
	goto	l3556
	
l946:	
	goto	l3556
	
l924:	
	goto	l3556
	
l923:	
	goto	l3556
	
l922:	
	
l3550:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3552:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movlw	high(012Ch)
	xorwf	1+(??_main+0)+0,w
	skipz
	goto	u4995
	movlw	low(012Ch)
	xorwf	0+(??_main+0)+0,w
u4995:

	skipz
	goto	u4991
	goto	u4990
u4991:
	goto	l3556
u4990:
	
l3554:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bsf	indf,1
	goto	l959
	
l960:	
	bsf	(53/8),(53)&7
	
l959:	
	btfss	(53/8),(53)&7
	goto	u5001
	goto	u5000
u5001:
	goto	l960
u5000:
	goto	l3556
	
l961:	
	goto	l3556
	
l958:	
	goto	l3556
	
l957:	
	goto	l3556
	
l887:	
	goto	l3556
	
l886:	
	line	147
	
l3556:	
;PIR_Ceiling_Embed_V1.c: 147: if(Lights2->Run > 0) { if(Lights2->Run == 21) { if(Lights2->Status == 0) { Lights2->Status = 1; if(RA4 == 0) { Lights2->GO =1; Lights2->TriacTime=90; Lights2->RelayTime=70; RB2=1; } else { Lights2->GO=0; RB2=0; } } } else if(Lights2->Run == 20) { if(
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights2),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5011
	goto	u5010
u5011:
	goto	l3590
u5010:
	
l3558:	
	movf	(_Lights2),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	015h
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l3574
u5020:
	
l3560:	
	movf	(_Lights2),w
	movwf	fsr0
	btfsc	indf,2
	goto	u5031
	goto	u5030
u5031:
	goto	l967
u5030:
	
l3562:	
	movf	(_Lights2),w
	movwf	fsr0
	bsf	indf,2
	
l3564:	
	btfsc	(44/8),(44)&7
	goto	u5041
	goto	u5040
u5041:
	goto	l3570
u5040:
	
l3566:	
	movf	(_Lights2),w
	movwf	fsr0
	bsf	indf,1
	movlw	(05Ah)
	movwf	(??_main+0)+0
	movf	(_Lights2),w
	addlw	02h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	movlw	(046h)
	movwf	(??_main+0)+0
	movf	(_Lights2),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3568:	
	bsf	(50/8),(50)&7
	goto	l967
	
l965:	
	
l3570:	
	movf	(_Lights2),w
	movwf	fsr0
	bcf	indf,1
	
l3572:	
	bcf	(50/8),(50)&7
	goto	l967
	
l966:	
	goto	l967
	
l964:	
	goto	l967
	
l963:	
	
l3574:	
	movf	(_Lights2),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	014h
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l967
u5050:
	
l3576:	
	movf	(_Lights2),w
	movwf	fsr0
	btfss	indf,2
	goto	u5061
	goto	u5060
u5061:
	goto	l967
u5060:
	
l3578:	
	movf	(_Lights2),w
	movwf	fsr0
	bcf	indf,2
	
l3580:	
	btfss	(44/8),(44)&7
	goto	u5071
	goto	u5070
u5071:
	goto	l3586
u5070:
	
l3582:	
	movf	(_Lights2),w
	movwf	fsr0
	bsf	indf,1
	movlw	(028h)
	movwf	(??_main+0)+0
	movf	(_Lights2),w
	addlw	02h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	movlw	(014h)
	movwf	(??_main+0)+0
	movf	(_Lights2),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3584:	
	bsf	(50/8),(50)&7
	goto	l967
	
l970:	
	
l3586:	
	movf	(_Lights2),w
	movwf	fsr0
	bcf	indf,1
	
l3588:	
	bcf	(50/8),(50)&7
	goto	l967
	
l971:	
	goto	l967
	
l969:	
	goto	l967
	
l968:	
	
l967:	
	movf	(_Lights2),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	goto	l3590
	
l962:	
	
l3590:	
	nop
	
l3592:	
	nop
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights2),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u5081
	goto	u5080
u5081:
	goto	l3280
u5080:
	
l3594:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Lights2),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3596:	
	movf	(_Lights2),w
	addlw	03h
	movwf	fsr
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_Lights2),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorwf	(??_main+0)+0,w
	skipz
	goto	u5091
	goto	u5090
u5091:
	goto	l3602
u5090:
	
l3598:	
	movf	(_Lights2),w
	movwf	fsr0
	btfss	indf,2
	goto	u5101
	goto	u5100
u5101:
	goto	l974
u5100:
	
l3600:	
	bsf	(44/8),(44)&7
	goto	l3602
	
l974:	
	bcf	(44/8),(44)&7
	goto	l3602
	
l975:	
	goto	l3602
	
l973:	
	
l3602:	
	movf	(_Lights2),w
	addlw	02h
	movwf	fsr
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_Lights2),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0
	movf	(??_main+0)+0,w
	subwf	(??_main+1)+0,w
	skipc
	goto	u5111
	goto	u5110
u5111:
	goto	l3280
u5110:
	
l3604:	
	movf	(_Lights2),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	movf	(_Lights2),w
	movwf	fsr0
	bcf	indf,1
	
l3606:	
	bcf	(50/8),(50)&7
	goto	l3280
	
l976:	
	goto	l3280
	
l972:	
	goto	l3280
	line	148
	
l854:	
	goto	l3280
	line	149
	
l977:	
	line	130
	goto	l3280
	
l978:	
	line	150
	
l979:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awdiv
psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text225
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3172:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u4201
	goto	u4200
u4201:
	goto	l3176
u4200:
	line	11
	
l3174:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3176
	line	13
	
l1144:	
	line	14
	
l3176:	
	btfss	(___awdiv@dividend+1),7
	goto	u4211
	goto	u4210
u4211:
	goto	l3182
u4210:
	line	15
	
l3178:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3180:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3182
	line	17
	
l1145:	
	line	18
	
l3182:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3184:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u4221
	goto	u4220
u4221:
	goto	l3204
u4220:
	line	20
	
l3186:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3192
	
l1148:	
	line	22
	
l3188:	
	movlw	01h
	
u4235:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4235
	line	23
	
l3190:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3192
	line	24
	
l1147:	
	line	21
	
l3192:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l3188
u4240:
	goto	l3194
	
l1149:	
	goto	l3194
	line	25
	
l1150:	
	line	26
	
l3194:	
	movlw	01h
	
u4255:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4255
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4265
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4265:
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l3200
u4260:
	line	28
	
l3196:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3198:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3200
	line	30
	
l1151:	
	line	31
	
l3200:	
	movlw	01h
	
u4275:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u4275
	line	32
	
l3202:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4281
	goto	u4280
u4281:
	goto	l3194
u4280:
	goto	l3204
	
l1152:	
	goto	l3204
	line	33
	
l1146:	
	line	34
	
l3204:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4290
	goto	l3208
u4290:
	line	35
	
l3206:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3208
	
l1153:	
	line	36
	
l3208:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1154
	
l3210:	
	line	37
	
l1154:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwdiv
psect	text226,local,class=CODE,delta=2
global __ptext226
__ptext226:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] unsigned int 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text226
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3146:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3148:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4131
	goto	u4130
u4131:
	goto	l3168
u4130:
	line	11
	
l3150:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3156
	
l1012:	
	line	13
	
l3152:	
	movlw	01h
	
u4145:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4145
	line	14
	
l3154:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3156
	line	15
	
l1011:	
	line	12
	
l3156:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l3152
u4150:
	goto	l3158
	
l1013:	
	goto	l3158
	line	16
	
l1014:	
	line	17
	
l3158:	
	movlw	01h
	
u4165:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4165
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4175
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4175:
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l3164
u4170:
	line	19
	
l3160:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3162:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3164
	line	21
	
l1015:	
	line	22
	
l3164:	
	movlw	01h
	
u4185:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4185
	line	23
	
l3166:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l3158
u4190:
	goto	l3168
	
l1016:	
	goto	l3168
	line	24
	
l1010:	
	line	25
	
l3168:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1017
	
l3170:	
	line	26
	
l1017:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_MainT
psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:

;; *************** function _MainT *****************
;; Defined at:
;;		line 170 in file "G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text227
	file	"G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
	line	170
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 6
; Regs used in _MainT: [wreg-fsr0h+status,2+status,0]
	line	171
	
l3132:	
;PIR_Ceiling_Embed_V1.c: 171: TMain->Count++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	172
;PIR_Ceiling_Embed_V1.c: 172: TMain->Count1++;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	173
	
l3134:	
;PIR_Ceiling_Embed_V1.c: 173: if(TMain->PowerON==0)
	movf	(_TMain),w
	movwf	fsr0
	btfsc	indf,0
	goto	u4091
	goto	u4090
u4091:
	goto	l3140
u4090:
	line	175
	
l3136:	
;PIR_Ceiling_Embed_V1.c: 174: {
;PIR_Ceiling_Embed_V1.c: 175: if(TMain->Count == 1000)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_MainT+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_MainT+0)+0+1
	movlw	high(03E8h)
	xorwf	1+(??_MainT+0)+0,w
	skipz
	goto	u4105
	movlw	low(03E8h)
	xorwf	0+(??_MainT+0)+0,w
u4105:

	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l992
u4100:
	line	177
	
l3138:	
;PIR_Ceiling_Embed_V1.c: 176: {
;PIR_Ceiling_Embed_V1.c: 177: TMain->Count=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	178
;PIR_Ceiling_Embed_V1.c: 178: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,0
	goto	l992
	line	179
	
l991:	
	line	180
;PIR_Ceiling_Embed_V1.c: 179: }
;PIR_Ceiling_Embed_V1.c: 180: }
	goto	l992
	line	181
	
l990:	
	line	183
	
l3140:	
;PIR_Ceiling_Embed_V1.c: 181: else
;PIR_Ceiling_Embed_V1.c: 182: {
;PIR_Ceiling_Embed_V1.c: 183: if(TMain->Count == 1000)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_MainT+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_MainT+0)+0+1
	movlw	high(03E8h)
	xorwf	1+(??_MainT+0)+0,w
	skipz
	goto	u4115
	movlw	low(03E8h)
	xorwf	0+(??_MainT+0)+0,w
u4115:

	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l992
u4110:
	line	185
	
l3142:	
;PIR_Ceiling_Embed_V1.c: 184: {
;PIR_Ceiling_Embed_V1.c: 185: TMain->Count=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l992
	line	188
	
l993:	
	line	189
	
l992:	
	line	190
;PIR_Ceiling_Embed_V1.c: 188: }
;PIR_Ceiling_Embed_V1.c: 189: }
;PIR_Ceiling_Embed_V1.c: 190: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_MainT+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_MainT+0)+0+1
	movlw	high(03E8h)
	xorwf	1+(??_MainT+0)+0,w
	skipz
	goto	u4125
	movlw	low(03E8h)
	xorwf	0+(??_MainT+0)+0,w
u4125:

	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l995
u4120:
	line	192
	
l3144:	
;PIR_Ceiling_Embed_V1.c: 191: {
;PIR_Ceiling_Embed_V1.c: 192: TMain->Count1=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l995
	line	193
	
l994:	
	line	194
	
l995:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_MainT_Initial
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 164 in file "G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text228
	file	"G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
	line	164
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 6
; Regs used in _MainT_Initial: [wreg]
	line	165
	
l3130:	
;PIR_Ceiling_Embed_V1.c: 165: TMain = &VarTMain;
	movlw	(_VarTMain)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_TMain)
	line	166
	
l987:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
;; =============== function _MainT_Initial ends ============

	signat	_MainT_Initial,88
	global	_ISR
psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:

;; *************** function _ISR *****************
;; Defined at:
;;		line 154 in file "G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          6       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text229
	file	"G:\Program\PIC\5.PIR_Ceiling_Embed\Release\PIR_Ceiling_Embed_V1.c"
	line	154
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 6
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text229
	line	155
	
i1l2644:	
;PIR_Ceiling_Embed_V1.c: 155: _nop();
	nop
	line	157
;PIR_Ceiling_Embed_V1.c: 157: if(TMR1IE && TMR1IF) { TMR1H=((65536-550)/256); TMR1L=((65536-550)%256); TMR1IF=0; _nop(); Timer1->Count++; if(Timer1->Count == 20) { Timer1->Count=0; TMain->T1_Timerout=1; } };
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l2660
u307_20:
	
i1l2646:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l2660
u308_20:
	
i1l2648:	
	movlw	(0FDh)
	movwf	(15)	;volatile
	movlw	(0DAh)
	movwf	(14)	;volatile
	
i1l2650:	
	bcf	(96/8),(96)&7
	
i1l2652:	
	nop
	
i1l2654:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
i1l2656:	
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_ISR+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_ISR+0)+0+1
	movlw	014h
	xorwf	0+(??_ISR+0)+0,w
	iorwf	1+(??_ISR+0)+0,w
	skipz
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l2660
u309_20:
	
i1l2658:	
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,2
	goto	i1l2660
	
i1l983:	
	goto	i1l2660
	
i1l982:	
	line	159
	
i1l2660:	
;PIR_Ceiling_Embed_V1.c: 159: _nop();
	nop
	line	160
	
i1l984:	
	movf	(??_ISR+5),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text230,local,class=CODE,delta=2
global __ptext230
__ptext230:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
