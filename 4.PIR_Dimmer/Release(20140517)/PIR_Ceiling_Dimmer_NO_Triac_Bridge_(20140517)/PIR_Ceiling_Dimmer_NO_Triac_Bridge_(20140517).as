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
# 14 "D:\PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517)\Release\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "D:\PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517)\Release\Main.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF ;#
# 15 "D:\PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517)\Release\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 15 "D:\PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517)\Release\Main.c"
	dw 0xFFFF ;#
	FNCALL	_main,___awdiv
	FNCALL	_main,___lwdiv
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Timer1
	global	_CDS
	global	_Dimmer
	global	_LED
	global	_PIR
	global	_Temp
	global	_VarDimmer
	global	_VarTMain
	global	_VarCDS
	global	_VarTemp
	global	_VarLED
	global	_VarTimer1
	global	_VarPIR
	global	_TMain
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
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
	global	_RA7
_RA7	set	47
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
	file	"PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517).as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_CDS:
       ds      1

_Dimmer:
       ds      1

_LED:
       ds      1

_PIR:
       ds      1

_Temp:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Timer1:
       ds      1

_VarDimmer:
       ds      17

_VarTMain:
       ds      9

_VarCDS:
       ds      6

_VarTemp:
       ds      5

_VarLED:
       ds      4

_VarTimer1:
       ds      3

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_VarPIR:
       ds      45

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
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+02Dh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+02Dh)
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
	ds	4
	global	main@i
main@i:	; 1 bytes @ 0xD
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 95, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      12
;; BANK0           80     14      59
;; BANK1           80      0      45
;; BANK2           16      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; PIR	PTR struct PIR size(1) Largest target is 45
;;		 -> NULL(NULL[0]), VarPIR(BANK1[45]), 
;;
;; CDS	PTR struct CDS size(1) Largest target is 6
;;		 -> NULL(NULL[0]), VarCDS(BANK0[6]), 
;;
;; Temp	PTR struct Temp size(1) Largest target is 5
;;		 -> NULL(NULL[0]), VarTemp(BANK0[5]), 
;;
;; LED	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarLED(BANK0[4]), 
;;
;; Dimmer	PTR struct Dimmer size(1) Largest target is 17
;;		 -> NULL(NULL[0]), VarDimmer(BANK0[17]), 
;;
;; Timer1	PTR struct Timer1 size(1) Largest target is 3
;;		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarTMain(BANK0[9]), 
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0     884
;;                                              9 BANK0      5     5      0
;;                            ___awdiv
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     445
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     241
;;                                              0 BANK0      8     4      4
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
;;ABS                  0      0      74       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      E      3B       5       73.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0      2D       7       56.3%
;;BITBANK2            10      0       0       8        0.0%
;;BANK2               10      0       0       9        0.0%
;;DATA                 0      0      75      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517)\Release\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   13[BANK0 ] unsigned char 
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
;;      Temps:          0       4       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___lwdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517)\Release\Main.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l3244:	
;Main.c: 20: char i;
;Main.c: 21: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_TMain)
	line	22
;Main.c: 22: ; OSCCON=0x3c; ; ; TRISA=0xaf; TRISB=0x01; TRISC=0x00; ANSELA=0x07; ANSELB=0x01; PORTA=0xaf; PORTB=0x01; PORTC=0x00; ; ; _nop(); ; ; Timer1=&VarTimer1; T1CON=(0x40 | 0x00 | 0x01); TMR1H=((65536-550)/256); TMR1L=((65536-550)%256); TMR1IE=1; PEIE=1; GI
	movlw	(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(144)^080h	;volatile
	movlw	(0AFh)
	movwf	(133)^080h	;volatile
	movlw	(01h)
	movwf	(134)^080h	;volatile
	
l3246:	
	clrf	(135)^080h	;volatile
	
l3248:	
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(389)^0180h	;volatile
	
l3250:	
	movlw	(01h)
	movwf	(390)^0180h	;volatile
	
l3252:	
	movlw	(0AFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l3254:	
	movlw	(01h)
	movwf	(6)	;volatile
	
l3256:	
	clrf	(7)	;volatile
	
l3258:	
	nop
	movlw	(_VarTimer1)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Timer1)
	movlw	(041h)
	movwf	(16)	;volatile
	movlw	(0FDh)
	movwf	(15)	;volatile
	movlw	(0DAh)
	movwf	(14)	;volatile
	
l3260:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l3262:	
	bsf	(94/8),(94)&7
	
l3264:	
	bsf	(95/8),(95)&7
	
l3266:	
	nop
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3268:	
	nop
	line	23
;Main.c: 23: Dimmer=&VarDimmer; Dimmer->Enable=1; Dimmer->StartValue = ((int)(10*1.85)); Dimmer->StopValue = ((int)(95*1.85)); Dimmer->DimmingValue = Dimmer->StopValue; Dimmer->GO_nDONE=0;
	movlw	(_VarDimmer)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Dimmer)
	
l3270:	
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	
l3272:	
	movlw	(012h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Eh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3274:	
	movlw	(0AFh)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3276:	
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3278:	
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	indf,1
	line	24
	
l3280:	
;Main.c: 24: LED=&VarLED; LED->Enable=1; while(RB5==0) RB5 = 1; while(RB4==0) RB4 = 1; while(RB3==0) RB3 = 1;
	movlw	(_VarLED)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_LED)
	movf	(_LED),w
	movwf	fsr0
	bsf	indf,0
	goto	l833
	
l834:	
	bsf	(53/8),(53)&7
	
l833:	
	btfss	(53/8),(53)&7
	goto	u4661
	goto	u4660
u4661:
	goto	l834
u4660:
	goto	l836
	
l835:	
	goto	l836
	
l837:	
	bsf	(52/8),(52)&7
	
l836:	
	btfss	(52/8),(52)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l837
u4670:
	goto	l839
	
l838:	
	goto	l839
	
l840:	
	bsf	(51/8),(51)&7
	
l839:	
	btfss	(51/8),(51)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l840
u4680:
	goto	l3282
	
l841:	
	line	25
	
l3282:	
;Main.c: 25: Temp=&VarTemp; Temp->Enable=1;;
	movlw	(_VarTemp)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Temp)
	
l3284:	
	movf	(_Temp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	26
	
l3286:	
;Main.c: 26: CDS=&VarCDS; CDS->Enable=1;
	movlw	(_VarCDS)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_CDS)
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,0
	line	27
	
l3288:	
;Main.c: 27: PIR=&VarPIR; PIR->Enable=1; PIR->RangeValue=10; PIR->CloseTimeValue=600; while(RB4==0) RB4 = 1; RB5 = 0;
	movlw	(_VarPIR)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_PIR)
	
l3290:	
	movf	(_PIR),w
	movwf	fsr0
	bsf	indf,0
	
l3292:	
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3294:	
	movf	(_PIR),w
	addlw	025h
	movwf	fsr0
	movlw	low(0258h)
	movwf	indf
	incf	fsr0,f
	movlw	high(0258h)
	movwf	indf
	goto	l842
	
l843:	
	bsf	(52/8),(52)&7
	
l842:	
	btfss	(52/8),(52)&7
	goto	u4691
	goto	u4690
u4691:
	goto	l843
u4690:
	
l844:	
	bcf	(53/8),(53)&7
	goto	l3296
	line	28
;Main.c: 28: while(1)
	
l845:	
	line	36
	
l3296:	
;Main.c: 29: {
;Main.c: 36: if(TMain->T1_Timerout==1)
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,2
	goto	u4701
	goto	u4700
u4701:
	goto	l3296
u4700:
	line	38
	
l3298:	
;Main.c: 37: {
;Main.c: 38: TMain->T1_Timerout=0;
	movf	(_TMain),w
	movwf	fsr0
	bcf	indf,2
	line	40
	
l3300:	
;Main.c: 40: TMain->Count++; TMain->Count1++; if(TMain->PowerON==0) { if(TMain->Count == 1000) { TMain->Count=0; TMain->PowerON=1; } } else { if(TMain->Count == 1000) { TMain->Count=0; } } if(TMain->Count1 == 1000) { TMain->Count1=0; };
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3302:	
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	movf	(_TMain),w
	movwf	fsr0
	btfsc	indf,0
	goto	u4711
	goto	u4710
u4711:
	goto	l3308
u4710:
	
l3304:	
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movlw	high(03E8h)
	xorwf	1+(??_main+0)+0,w
	skipz
	goto	u4725
	movlw	low(03E8h)
	xorwf	0+(??_main+0)+0,w
u4725:

	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l849
u4720:
	
l3306:	
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,0
	goto	l849
	
l848:	
	goto	l849
	
l847:	
	
l3308:	
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movlw	high(03E8h)
	xorwf	1+(??_main+0)+0,w
	skipz
	goto	u4735
	movlw	low(03E8h)
	xorwf	0+(??_main+0)+0,w
u4735:

	skipz
	goto	u4731
	goto	u4730
u4731:
	goto	l849
u4730:
	
l3310:	
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l849
	
l850:	
	
l849:	
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movlw	high(03E8h)
	xorwf	1+(??_main+0)+0,w
	skipz
	goto	u4745
	movlw	low(03E8h)
	xorwf	0+(??_main+0)+0,w
u4745:

	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l851
u4740:
	
l3312:	
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l851:	
	line	41
;Main.c: 41: if(LED->GO1==1) { LED->Time1++; if(LED->Time1 == 150) { LED->Time1=0; RB5=~RB5; } } if(LED->GO2==1) { LED->Time2++; if(LED->Time2 == 150) { LED->Time2=0; RB4=~RB4; } } if(LED->GO3==1) { LED->Time3++; if(LED->Time3 == 150) { LED->Time3=0; RB3=~RB3; } 
	movf	(_LED),w
	movwf	fsr0
	btfss	indf,1
	goto	u4751
	goto	u4750
u4751:
	goto	l3322
u4750:
	
l3314:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3316:	
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u4761
	goto	u4760
u4761:
	goto	l3322
u4760:
	
l3318:	
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	
l3320:	
	movlw	1<<((53)&7)
	xorwf	((53)/8),f
	goto	l3322
	
l853:	
	goto	l3322
	
l852:	
	
l3322:	
	movf	(_LED),w
	movwf	fsr0
	btfss	indf,2
	goto	u4771
	goto	u4770
u4771:
	goto	l3332
u4770:
	
l3324:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3326:	
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u4781
	goto	u4780
u4781:
	goto	l3332
u4780:
	
l3328:	
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	
l3330:	
	movlw	1<<((52)&7)
	xorwf	((52)/8),f
	goto	l3332
	
l855:	
	goto	l3332
	
l854:	
	
l3332:	
	movf	(_LED),w
	movwf	fsr0
	btfss	indf,3
	goto	u4791
	goto	u4790
u4791:
	goto	l3342
u4790:
	
l3334:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3336:	
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l3342
u4800:
	
l3338:	
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	
l3340:	
	movlw	1<<((51)&7)
	xorwf	((51)/8),f
	goto	l3342
	
l857:	
	goto	l3342
	
l856:	
	line	42
	
l3342:	
;Main.c: 42: if(Temp->Enable == 1) { Temp->Time++; if(Temp->Time == 5000) { Temp->Time=0; ADCON1=0x70; ADCON0=0x11; GO_nDONE=1; while(GO_nDONE); Temp->AD=ADRES; ; if(Temp->ERROR == 0) { if(Temp->AD <=107) { Temp->Count++; if(Temp->Count == 3) { Temp->Count=0; Tem
	movf	(_Temp),w
	movwf	fsr0
	btfss	indf,0
	goto	u4811
	goto	u4810
u4811:
	goto	l858
u4810:
	
l3344:	
	movf	(_Temp),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3346:	
	movf	(_Temp),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movlw	high(01388h)
	xorwf	1+(??_main+0)+0,w
	skipz
	goto	u4825
	movlw	low(01388h)
	xorwf	0+(??_main+0)+0,w
u4825:

	skipz
	goto	u4821
	goto	u4820
u4821:
	goto	l858
u4820:
	
l3348:	
	movf	(_Temp),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3350:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3352:	
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l3354:	
	bsf	(249/8),(249)&7
	goto	l860
	
l861:	
	
l860:	
	btfsc	(249/8),(249)&7
	goto	u4831
	goto	u4830
u4831:
	goto	l860
u4830:
	goto	l3356
	
l862:	
	
l3356:	
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	(_Temp),w
	movwf	fsr0
	btfsc	indf,1
	goto	u4841
	goto	u4840
u4841:
	goto	l3372
u4840:
	
l3358:	
	movf	(_Temp),w
	addlw	03h
	movwf	fsr0
	movlw	(06Ch)
	subwf	indf,w
	skipnc
	goto	u4851
	goto	u4850
u4851:
	goto	l3370
u4850:
	
l3360:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3362:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	03h
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l858
u4860:
	
l3364:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	movf	(_Temp),w
	movwf	fsr0
	bsf	indf,1
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,1
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,2
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,3
	movlw	(0AFh)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l3366:	
	bcf	(50/8),(50)&7
	goto	l866
	
l867:	
	bsf	(53/8),(53)&7
	
l866:	
	btfss	(53/8),(53)&7
	goto	u4871
	goto	u4870
u4871:
	goto	l867
u4870:
	goto	l869
	
l868:	
	goto	l869
	
l870:	
	bsf	(52/8),(52)&7
	
l869:	
	btfss	(52/8),(52)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l870
u4880:
	goto	l3368
	
l871:	
	
l3368:	
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,2
	goto	l858
	
l865:	
	goto	l858
	
l864:	
	
l3370:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	goto	l858
	
l872:	
	goto	l858
	
l863:	
	
l3372:	
	movf	(_Temp),w
	addlw	03h
	movwf	fsr0
	movlw	(07Dh)
	subwf	indf,w
	skipc
	goto	u4891
	goto	u4890
u4891:
	goto	l3382
u4890:
	
l3374:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3376:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	03h
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l858
u4900:
	
l3378:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	movf	(_Temp),w
	movwf	fsr0
	bcf	indf,1
	goto	l876
	
l877:	
	bsf	(52/8),(52)&7
	
l876:	
	btfss	(52/8),(52)&7
	goto	u4911
	goto	u4910
u4911:
	goto	l877
u4910:
	goto	l3380
	
l878:	
	
l3380:	
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,2
	goto	l858
	
l875:	
	goto	l858
	
l874:	
	
l3382:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	goto	l858
	
l879:	
	goto	l858
	
l873:	
	goto	l858
	
l859:	
	
l858:	
	line	43
;Main.c: 43: if(CDS->Enable==1) { CDS->Time++; if(CDS->Time == 100) { CDS->Time=0; CDS->GO_nDONE=1; ADCON1=0x70; ; ; ADCON0=0x31; ; GO_nDONE=1; while(GO_nDONE); CDS->SignalAD=ADRES; ; ; ADCON0=0x09; ; GO_nDONE=1; while(GO_nDONE); CDS->VRAD=ADRES; ; CDS->GO_nDONE=
	movf	(_CDS),w
	movwf	fsr0
	btfss	indf,0
	goto	u4921
	goto	u4920
u4921:
	goto	l880
u4920:
	
l3384:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3386:	
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	064h
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l880
u4930:
	
l3388:	
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	
l3390:	
	movf	(_CDS),w
	addlw	05h
	movwf	fsr0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	
l3392:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3394:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l3396:	
	bsf	(249/8),(249)&7
	goto	l882
	
l883:	
	
l882:	
	btfsc	(249/8),(249)&7
	goto	u4941
	goto	u4940
u4941:
	goto	l882
u4940:
	goto	l3398
	
l884:	
	
l3398:	
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3400:	
	movlw	(09h)
	movwf	(31)	;volatile
	
l3402:	
	bsf	(249/8),(249)&7
	goto	l885
	
l886:	
	
l885:	
	btfsc	(249/8),(249)&7
	goto	u4951
	goto	u4950
u4951:
	goto	l885
u4950:
	goto	l3404
	
l887:	
	
l3404:	
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
	clrf	indf
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,1
	movf	(_CDS),w
	movwf	fsr0
	btfss	indf,1
	goto	u4961
	goto	u4960
u4961:
	goto	l880
u4960:
	
l3406:	
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,1
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfsc	indf,0
	goto	u4971
	goto	u4970
u4971:
	goto	l3412
u4970:
	
l3408:	
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	addlw	low(-40)
	movwf	(??_main+0)+0
	movlw	high(-40)
	skipnc
	movlw	(high(-40)+1)&0ffh
	movwf	((??_main+0)+0)+1
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u4985
	movf	0+(??_main+0)+0,w
	subwf	indf,w
u4985:

	skipc
	goto	u4981
	goto	u4980
u4981:
	goto	l880
u4980:
	
l3410:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	goto	l880
	
l890:	
	goto	l880
	
l889:	
	
l3412:	
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	addlw	low(-120)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	high(-120)
	skipnc
	movlw	(high(-120)+1)&0ffh
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
	goto	u4995
	movf	indf,w
	subwf	0+(??_main+0)+0,w
u4995:

	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l880
u4990:
	
l3414:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,0
	goto	l880
	
l892:	
	goto	l880
	
l891:	
	goto	l880
	
l888:	
	goto	l880
	
l881:	
	
l880:	
	line	44
;Main.c: 44: if(PIR->Enable == 1) { PIR->Time++; if(PIR->Time == 100) { PIR->Time=0; PIR->GO_nDONE=1; ADCON1=0x70; ; ; ADCON0=0x05; ; GO_nDONE=1; while(GO_nDONE); PIR->VRAD=ADRES/51; ; ; ADCON0=0x0d; ; GO_nDONE=1; while(GO_nDONE); PIR->SignalAD=ADRES; ; PIR->GO_n
	movf	(_PIR),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u5001
	goto	u5000
u5001:
	goto	l3296
u5000:
	
l3416:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3418:	
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	064h
	skipz
	goto	u5011
	goto	u5010
u5011:
	goto	l3296
u5010:
	
l3420:	
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	movwf	fsr0
	bsf	indf,1
	
l3422:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3424:	
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l3426:	
	bsf	(249/8),(249)&7
	goto	l895
	
l896:	
	
l895:	
	btfsc	(249/8),(249)&7
	goto	u5021
	goto	u5020
u5021:
	goto	l895
u5020:
	goto	l3428
	
l897:	
	
l3428:	
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
	
l3430:	
	movlw	(0Dh)
	movwf	(31)	;volatile
	
l3432:	
	bsf	(249/8),(249)&7
	goto	l898
	
l899:	
	
l898:	
	btfsc	(249/8),(249)&7
	goto	u5031
	goto	u5030
u5031:
	goto	l898
u5030:
	goto	l3434
	
l900:	
	
l3434:	
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
	
l3436:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u5041
	goto	u5040
u5041:
	goto	l3440
u5040:
	
l3438:	
	movf	(_PIR),w
	addlw	025h
	movwf	fsr0
	movlw	low(0258h)
	movwf	indf
	incf	fsr0,f
	movlw	high(0258h)
	movwf	indf
	goto	l3456
	
l901:	
	
l3440:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	01h
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l3444
u5050:
	
l3442:	
	movf	(_PIR),w
	addlw	025h
	movwf	fsr0
	movlw	low(0BB8h)
	movwf	indf
	incf	fsr0,f
	movlw	high(0BB8h)
	movwf	indf
	goto	l3456
	
l903:	
	
l3444:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	02h
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l3448
u5060:
	
l3446:	
	movf	(_PIR),w
	addlw	025h
	movwf	fsr0
	movlw	low(01770h)
	movwf	indf
	incf	fsr0,f
	movlw	high(01770h)
	movwf	indf
	goto	l3456
	
l905:	
	
l3448:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	03h
	skipz
	goto	u5071
	goto	u5070
u5071:
	goto	l3452
u5070:
	
l3450:	
	movf	(_PIR),w
	addlw	025h
	movwf	fsr0
	movlw	low(02328h)
	movwf	indf
	incf	fsr0,f
	movlw	high(02328h)
	movwf	indf
	goto	l3456
	
l907:	
	
l3452:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movlw	(04h)
	subwf	indf,w
	skipc
	goto	u5081
	goto	u5080
u5081:
	goto	l3456
u5080:
	
l3454:	
	movf	(_PIR),w
	addlw	025h
	movwf	fsr0
	movlw	low(02EE0h)
	movwf	indf
	incf	fsr0,f
	movlw	high(02EE0h)
	movwf	indf
	goto	l3456
	
l909:	
	goto	l3456
	
l908:	
	goto	l3456
	
l906:	
	goto	l3456
	
l904:	
	goto	l3456
	
l902:	
	
l3456:	
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
	
l3458:	
	clrf	(main@i)
	
l3460:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u5091
	goto	u5090
u5091:
	goto	l3464
u5090:
	goto	l3470
	
l3462:	
	goto	l3470
	
l910:	
	
l3464:	
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
	
l3466:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3468:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u5101
	goto	u5100
u5101:
	goto	l3464
u5100:
	goto	l3470
	
l911:	
	
l3470:	
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
	
l3472:	
	movf	(_PIR),w
	addlw	012h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3474:	
	clrf	(main@i)
	
l3476:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u5111
	goto	u5110
u5111:
	goto	l3480
u5110:
	goto	l3486
	
l3478:	
	goto	l3486
	
l912:	
	
l3480:	
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
	
l3482:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3484:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u5121
	goto	u5120
u5121:
	goto	l3480
u5120:
	goto	l3486
	
l913:	
	
l3486:	
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
	
l3488:	
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3490:	
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movlw	(0Ah)
	subwf	indf,w
	skipnc
	goto	u5131
	goto	u5130
u5131:
	goto	l3494
u5130:
	
l3492:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l915
	
l914:	
	
l3494:	
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
	goto	u5141
	goto	u5140
u5141:
	goto	l3498
u5140:
	
l3496:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l915
	
l916:	
	
l3498:	
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	goto	l915
	
l917:	
	
l915:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfsc	indf,2
	goto	u5151
	goto	u5150
u5151:
	goto	l3508
u5150:
	
l3500:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfss	indf,0
	goto	u5161
	goto	u5160
u5161:
	goto	l924
u5160:
	
l3502:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfsc	indf,1
	goto	u5171
	goto	u5170
u5171:
	goto	l920
u5170:
	goto	l921
	
l3504:	
	goto	l921
	
l922:	
	bsf	(52/8),(52)&7
	
l921:	
	btfss	(52/8),(52)&7
	goto	u5181
	goto	u5180
u5181:
	goto	l922
u5180:
	goto	l920
	
l923:	
	
l920:	
	bcf	(53/8),(53)&7
	
l3506:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,2
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l924
	
l919:	
	goto	l924
	
l918:	
	
l3508:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfsc	indf,0
	goto	u5191
	goto	u5190
u5191:
	goto	l924
u5190:
	
l3510:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bcf	indf,2
	goto	l926
	
l927:	
	bsf	(53/8),(53)&7
	
l926:	
	btfss	(53/8),(53)&7
	goto	u5201
	goto	u5200
u5201:
	goto	l927
u5200:
	goto	l929
	
l928:	
	goto	l929
	
l930:	
	bsf	(52/8),(52)&7
	
l929:	
	btfss	(52/8),(52)&7
	goto	u5211
	goto	u5210
u5211:
	goto	l930
u5210:
	goto	l3512
	
l931:	
	
l3512:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfsc	indf,1
	goto	u5221
	goto	u5220
u5221:
	goto	l3516
u5220:
	
l3514:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u5231
	goto	u5230
u5231:
	goto	l924
u5230:
	goto	l3516
	
l934:	
	
l3516:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,1
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,0
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u5241
	goto	u5240
u5241:
	goto	l3520
u5240:
	
l3518:	
	movlw	(0AFh)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l924
	
l936:	
	
l3520:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfsc	indf,2
	goto	u5251
	goto	u5250
u5251:
	goto	l3524
u5250:
	
l3522:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,3
	movlw	(0AFh)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l924
	
l938:	
	
l3524:	
	movlw	(081h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l924
	
l939:	
	goto	l924
	
l937:	
	goto	l924
	
l935:	
	
l3526:	
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l924
	
l940:	
	goto	l924
	
l932:	
	goto	l924
	
l925:	
	
l924:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,1
	goto	u5261
	goto	u5260
u5261:
	goto	l3610
u5260:
	
l3528:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,0
	goto	u5271
	goto	u5270
u5271:
	goto	l3296
u5270:
	
l3530:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bcf	indf,0
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,2
	goto	u5281
	goto	u5280
u5281:
	goto	l3296
u5280:
	
l3532:	
	movf	(_Temp),w
	movwf	fsr0
	btfsc	indf,1
	goto	u5291
	goto	u5290
u5291:
	goto	l3296
u5290:
	
l3534:	
	movf	(_PIR),w
	addlw	028h
	movwf	fsr0
	movlw	(064h)
	subwf	indf,w
	skipnc
	goto	u5301
	goto	u5300
u5301:
	goto	l3538
u5300:
	
l3536:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	028h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l3566
	
l944:	
	
l3538:	
	movf	(_PIR),w
	addlw	028h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	movlw	(05Ah)
	subwf	indf,w
	skipc
	goto	u5311
	goto	u5310
u5311:
	goto	l3548
u5310:
	
l3540:	
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	indf,w
	xorlw	0Ah
	skipz
	goto	u5321
	goto	u5320
u5321:
	goto	l3544
u5320:
	
l3542:	
	movlw	(019h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3566
	
l947:	
	
l3544:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	indf,w
	xorlw	019h
	skipz
	goto	u5331
	goto	u5330
u5331:
	goto	l3566
u5330:
	
l3546:	
	movlw	(02Dh)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3566
	
l949:	
	goto	l3566
	
l948:	
	goto	l3566
	
l946:	
	
l3548:	
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3550:	
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	clrf	indf
	
l3552:	
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	movlw	(06h)
	subwf	indf,w
	skipnc
	goto	u5341
	goto	u5340
u5341:
	goto	l3556
u5340:
	
l3554:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l3566
	
l951:	
	
l3556:	
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movlw	(0Bh)
	subwf	indf,w
	skipnc
	goto	u5351
	goto	u5350
u5351:
	goto	l3566
u5350:
	
l3558:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u5361
	goto	u5360
u5361:
	goto	l3562
u5360:
	
l3560:	
	movlw	(019h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l955
	
l954:	
	
l3562:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	indf,w
	xorlw	019h
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l955
u5370:
	
l3564:	
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l955
	
l956:	
	
l955:	
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	clrf	indf
	goto	l3566
	
l953:	
	goto	l3566
	
l952:	
	goto	l3566
	
l950:	
	goto	l3566
	
l945:	
	
l3566:	
	movf	(_PIR),w
	addlw	02Bh
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
	goto	u5385
	movf	0+(??_main+2)+0,w
	subwf	indf,w
u5385:

	skipc
	goto	u5381
	goto	u5380
u5381:
	goto	l3592
u5380:
	
l3568:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u5395
	movf	indf,w
	subwf	0+(??_main+1)+0,w
u5395:

	skipc
	goto	u5391
	goto	u5390
u5391:
	goto	l3592
u5390:
	
l3570:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l958
	
l959:	
	bsf	(53/8),(53)&7
	
l958:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u5401
	goto	u5400
u5401:
	goto	l959
u5400:
	goto	l961
	
l960:	
	goto	l961
	
l962:	
	bsf	(52/8),(52)&7
	
l961:	
	btfss	(52/8),(52)&7
	goto	u5411
	goto	u5410
u5411:
	goto	l962
u5410:
	goto	l3572
	
l963:	
	
l3572:	
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3574:	
	movf	(_PIR),w
	addlw	025h
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
	movwf	(??_main+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+2)+0+1
	movf	1+(??_main+0)+0,w
	xorwf	1+(??_main+2)+0,w
	skipz
	goto	u5425
	movf	0+(??_main+0)+0,w
	xorwf	0+(??_main+2)+0,w
u5425:

	skipz
	goto	u5421
	goto	u5420
u5421:
	goto	l3296
u5420:
	
l3576:	
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,1
	goto	u5431
	goto	u5430
u5431:
	goto	l3580
u5430:
	
l3578:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u5441
	goto	u5440
u5441:
	goto	l3296
u5440:
	goto	l3580
	
l967:	
	
l3580:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,1
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,0
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u5451
	goto	u5450
u5451:
	goto	l3584
u5450:
	
l3582:	
	movlw	(0AFh)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3296
	
l969:	
	
l3584:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfsc	indf,2
	goto	u5461
	goto	u5460
u5461:
	goto	l3588
u5460:
	
l3586:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,3
	movlw	(0AFh)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3296
	
l971:	
	
l3588:	
	movlw	(081h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3296
	
l972:	
	goto	l3296
	
l970:	
	goto	l3296
	
l968:	
	
l3590:	
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3296
	
l973:	
	goto	l3296
	
l965:	
	goto	l3296
	
l964:	
	goto	l3296
	
l957:	
	
l3592:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ah
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
	
l3594:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movlw	02h
	xorwf	0+(??_main+0)+0,w
	iorwf	1+(??_main+0)+0,w
	skipz
	goto	u5471
	goto	u5470
u5471:
	goto	l975
u5470:
	
l3596:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,1
	goto	u5481
	goto	u5480
u5481:
	goto	l975
u5480:
	
l3598:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,1
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,0
	
l3600:	
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	goto	l3602
	
l979:	
	
l3602:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,2
	goto	l975
	
l977:	
	goto	l975
	
l976:	
	
l975:	
	movf	(_PIR),w
	addlw	02Bh
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
	goto	u5495
	movf	0+(??_main+2)+0,w
	subwf	indf,w
u5495:

	skipnc
	goto	u5491
	goto	u5490
u5491:
	goto	l3606
u5490:
	goto	l981
	
l3604:	
	goto	l981
	
l982:	
	bsf	(52/8),(52)&7
	
l981:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u5501
	goto	u5500
u5501:
	goto	l982
u5500:
	
l983:	
	bcf	(53/8),(53)&7
	goto	l3296
	
l980:	
	
l3606:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u5515
	movf	indf,w
	subwf	0+(??_main+1)+0,w
u5515:

	skipnc
	goto	u5511
	goto	u5510
u5511:
	goto	l3296
u5510:
	goto	l986
	
l3608:	
	goto	l986
	
l987:	
	bsf	(53/8),(53)&7
	
l986:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u5521
	goto	u5520
u5521:
	goto	l987
u5520:
	
l988:	
	bcf	(52/8),(52)&7
	goto	l3296
	
l985:	
	goto	l3296
	
l984:	
	goto	l3296
	
l974:	
	goto	l3296
	
l943:	
	goto	l3296
	
l942:	
	goto	l3296
	
l941:	
	
l3610:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3612:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+0)+0+1
	movlw	0FAh
	xorwf	0+(??_main+0)+0,w
	iorwf	1+(??_main+0)+0,w
	skipz
	goto	u5531
	goto	u5530
u5531:
	goto	l3296
u5530:
	
l3614:	
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
	goto	l991
	
l992:	
	bsf	(53/8),(53)&7
	
l991:	
	btfss	(53/8),(53)&7
	goto	u5541
	goto	u5540
u5541:
	goto	l992
u5540:
	goto	l3296
	
l993:	
	goto	l3296
	
l990:	
	goto	l3296
	
l989:	
	goto	l3296
	
l894:	
	goto	l3296
	
l893:	
	goto	l3296
	line	45
	
l846:	
	goto	l3296
	line	46
	
l994:	
	line	28
	goto	l3296
	
l995:	
	line	47
	
l996:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awdiv
psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:

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
psect	text165
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3204:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u4561
	goto	u4560
u4561:
	goto	l3208
u4560:
	line	11
	
l3206:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3208
	line	13
	
l1174:	
	line	14
	
l3208:	
	btfss	(___awdiv@dividend+1),7
	goto	u4571
	goto	u4570
u4571:
	goto	l3214
u4570:
	line	15
	
l3210:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3212:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3214
	line	17
	
l1175:	
	line	18
	
l3214:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3216:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u4581
	goto	u4580
u4581:
	goto	l3236
u4580:
	line	20
	
l3218:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3224
	
l1178:	
	line	22
	
l3220:	
	movlw	01h
	
u4595:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4595
	line	23
	
l3222:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3224
	line	24
	
l1177:	
	line	21
	
l3224:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4601
	goto	u4600
u4601:
	goto	l3220
u4600:
	goto	l3226
	
l1179:	
	goto	l3226
	line	25
	
l1180:	
	line	26
	
l3226:	
	movlw	01h
	
u4615:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4615
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4625
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4625:
	skipc
	goto	u4621
	goto	u4620
u4621:
	goto	l3232
u4620:
	line	28
	
l3228:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3230:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3232
	line	30
	
l1181:	
	line	31
	
l3232:	
	movlw	01h
	
u4635:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u4635
	line	32
	
l3234:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l3226
u4640:
	goto	l3236
	
l1182:	
	goto	l3236
	line	33
	
l1176:	
	line	34
	
l3236:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4650
	goto	l3240
u4650:
	line	35
	
l3238:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3240
	
l1183:	
	line	36
	
l3240:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1184
	
l3242:	
	line	37
	
l1184:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwdiv
psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:

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
psect	text166
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3178:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3180:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4491
	goto	u4490
u4491:
	goto	l3200
u4490:
	line	11
	
l3182:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3188
	
l1042:	
	line	13
	
l3184:	
	movlw	01h
	
u4505:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4505
	line	14
	
l3186:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3188
	line	15
	
l1041:	
	line	12
	
l3188:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l3184
u4510:
	goto	l3190
	
l1043:	
	goto	l3190
	line	16
	
l1044:	
	line	17
	
l3190:	
	movlw	01h
	
u4525:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4525
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4535
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4535:
	skipc
	goto	u4531
	goto	u4530
u4531:
	goto	l3196
u4530:
	line	19
	
l3192:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3194:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3196
	line	21
	
l1045:	
	line	22
	
l3196:	
	movlw	01h
	
u4545:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4545
	line	23
	
l3198:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l3190
u4550:
	goto	l3200
	
l1046:	
	goto	l3200
	line	24
	
l1040:	
	line	25
	
l3200:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1047
	
l3202:	
	line	26
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_ISR
psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:

;; *************** function _ISR *****************
;; Defined at:
;;		line 50 in file "D:\PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517)\Release\Main.c"
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
psect	text167
	file	"D:\PIR_Ceiling_Dimmer_NO_Triac_Bridge_(20140517)\Release\Main.c"
	line	50
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
psect	text167
	line	51
	
i1l2662:	
;Main.c: 51: _nop();
	nop
	line	53
;Main.c: 53: if(TMR1IE && TMR1IF) { TMR1H=((65536-550)/256); TMR1L=((65536-550)%256); TMR1IF=0; if(TMain->PowerON==1) { Dimmer->Count++; if(RA7==1) { if(Dimmer->Input==0) { Dimmer->Input=1; Dimmer->Count=0; if(Temp->ERROR == 0) Dimmer->GO=1; } } else { if(Dimmer-
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l2732
u323_20:
	
i1l2664:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l2732
u324_20:
	
i1l2666:	
	movlw	(0FDh)
	movwf	(15)	;volatile
	movlw	(0DAh)
	movwf	(14)	;volatile
	
i1l2668:	
	bcf	(96/8),(96)&7
	
i1l2670:	
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u325_21
	goto	u325_20
u325_21:
	goto	i1l2726
u325_20:
	
i1l2672:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	addwf	indf,f
	
i1l2674:	
	btfss	(47/8),(47)&7
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l2682
u326_20:
	
i1l2676:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfsc	indf,0
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l1004
u327_20:
	
i1l2678:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,0
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	clrf	indf
	movf	(_Temp),w
	movwf	fsr0
	btfsc	indf,1
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l1004
u328_20:
	
i1l2680:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,2
	goto	i1l1004
	
i1l1003:	
	goto	i1l1004
	
i1l1002:	
	goto	i1l1004
	
i1l1001:	
	
i1l2682:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfss	indf,0
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l1004
u329_20:
	
i1l2684:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bcf	indf,0
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	clrf	indf
	movf	(_Temp),w
	movwf	fsr0
	btfsc	indf,1
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l1004
u330_20:
	
i1l2686:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,2
	goto	i1l1004
	
i1l1006:	
	goto	i1l1004
	
i1l1005:	
	
i1l1004:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfss	indf,2
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l1007
u331_20:
	
i1l2688:	
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr
	movf	indf,w
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	movf	indf,w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+0)+0,w
	subwf	(??_ISR+1)+0,w
	skipc
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l2726
u332_20:
	
i1l2690:	
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	clrf	indf
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bcf	indf,2
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,2
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l2726
u333_20:
	
i1l2692:	
	bsf	(50/8),(50)&7
	goto	i1l2726
	
i1l1009:	
	goto	i1l2726
	
i1l1008:	
	goto	i1l2726
	
i1l1007:	
	btfss	(50/8),(50)&7
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l2726
u334_20:
	
i1l2694:	
	bcf	(50/8),(50)&7
	
i1l2696:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,0
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l2726
u335_20:
	
i1l2698:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	addwf	indf,f
	
i1l2700:	
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr
	movf	indf,w
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	xorwf	(??_ISR+0)+0,w
	skipz
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l2726
u336_20:
	
i1l2702:	
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,1
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l2712
u337_20:
	
i1l2704:	
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movlw	low(01h)
	subwf	indf,f
	
i1l2706:	
	movf	(_Dimmer),w
	addlw	0Eh
	movwf	fsr
	movf	indf,w
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	indf,w
	xorwf	(??_ISR+0)+0,w
	skipz
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l1015
u338_20:
	
i1l2708:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,0
	
i1l1015:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l2726
u339_20:
	
i1l2710:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,3
	goto	i1l2726
	
i1l1016:	
	goto	i1l2726
	
i1l1014:	
	
i1l2712:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	addwf	indf,f
	
i1l2714:	
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr
	movf	indf,w
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	indf,w
	xorwf	(??_ISR+0)+0,w
	skipz
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l2726
u340_20:
	
i1l2716:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,0
	goto	i1l2720
	
i1l2718:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,2
	goto	i1l2726
	
i1l1019:	
	
i1l2720:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,3
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l2724
u341_20:
	
i1l2722:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,3
	goto	i1l2726
	
i1l1022:	
	
i1l2724:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,2
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,3
	goto	i1l2726
	
i1l1023:	
	goto	i1l2726
	
i1l1021:	
	goto	i1l2726
	
i1l1020:	
	goto	i1l2726
	
i1l1018:	
	goto	i1l2726
	
i1l1017:	
	goto	i1l2726
	
i1l1013:	
	goto	i1l2726
	
i1l1012:	
	goto	i1l2726
	
i1l1011:	
	goto	i1l2726
	
i1l1010:	
	goto	i1l2726
	
i1l1000:	
	
i1l2726:	
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
i1l2728:	
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
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l2732
u342_20:
	
i1l2730:	
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
	goto	i1l2732
	
i1l1024:	
	goto	i1l2732
	
i1l999:	
	line	55
	
i1l2732:	
;Main.c: 55: _nop();
	nop
	line	56
	
i1l1025:	
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
psect	text168,local,class=CODE,delta=2
global __ptext168
__ptext168:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
