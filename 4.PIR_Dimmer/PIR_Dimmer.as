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
# 113 "E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
	psect config,class=CONFIG,delta=2 ;#
# 113 "E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF ;#
# 114 "E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
	psect config,class=CONFIG,delta=2 ;#
# 114 "E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
	dw 0xFFFF ;#
	FNCALL	_main,_MainT_Initial
	FNCALL	_main,_MainT
	FNCALL	_main,___awdiv
	FNCALL	_main,___lwdiv
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_CDS
	global	_Dimmer
	global	_LED
	global	_PIR
	global	_Temp
	global	_Timer1
	global	_VarDimmer
	global	_VarTMain
	global	_VarCDS
	global	_VarTemp
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
	file	"PIR_Dimmer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+032h)
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
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x6
	global	??_MainT
??_MainT:	; 0 bytes @ 0x6
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x6
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x6
	ds	2
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
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	6
	global	main@i
main@i:	; 1 bytes @ 0xE
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 97, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80     15      66
;; BANK1           80      0      47
;; BANK2           16      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; TMain	PTR struct TMain size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarTMain(BANK0[9]), 
;;
;; PIR	PTR struct PIR size(1) Largest target is 47
;;		 -> NULL(NULL[0]), VarPIR(BANK1[47]), 
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


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_MainT
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
;; (0) _main                                                 7     7      0     598
;;                                              8 BANK0      7     7      0
;;                      _MainT_Initial
;;                              _MainT
;;                            ___awdiv
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              6 COMMON     1     1      0
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              6 COMMON     1     1      0
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                2     2      0       0
;;                                              6 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              6 COMMON     1     1      0
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
;;COMMON               E      8       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0      79       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      F      42       5       82.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0      2F       7       58.8%
;;BITBANK2            10      0       0       8        0.0%
;;BANK2               10      0       0       9        0.0%
;;DATA                 0      0      7A      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 138 in file "E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   14[BANK0 ] unsigned char 
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
	file	"E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
	line	138
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	140
	
l2864:	
;PIR-Ceiling-PV02-3(20140517).c: 139: char i;
;PIR-Ceiling-PV02-3(20140517).c: 140: MainT_Initial();
	fcall	_MainT_Initial
	line	141
	
l2866:	
;PIR-Ceiling-PV02-3(20140517).c: 141: ; OSCCON=0x3c; ; ; TRISA=0b10101111;; TRISB=0b00000001;; TRISC=0b00000000;; ANSELA=0b00000111;; ANSELB=0b00000001;; PORTA=0b10101111;; PORTB=0b00000001;; PORTC=0b00000000; ; ; _nop(); ; ; Timer1=&VarTimer1; T1CON=(0x40 | 0x00 | 0x01); TMR1H=((65536-5
	movlw	(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(144)^080h	;volatile
	
l2868:	
	movlw	(0AFh)
	movwf	(133)^080h	;volatile
	
l2870:	
	movlw	(01h)
	movwf	(134)^080h	;volatile
	
l2872:	
	clrf	(135)^080h	;volatile
	
l2874:	
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(389)^0180h	;volatile
	
l2876:	
	movlw	(01h)
	movwf	(390)^0180h	;volatile
	
l2878:	
	movlw	(0AFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l2880:	
	movlw	(01h)
	movwf	(6)	;volatile
	
l2882:	
	clrf	(7)	;volatile
	
l2884:	
	nop
	
l2886:	
	movlw	(_VarTimer1)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Timer1)
	
l2888:	
	movlw	(041h)
	movwf	(16)	;volatile
	
l2890:	
	movlw	(0FDh)
	movwf	(15)	;volatile
	
l2892:	
	movlw	(0DAh)
	movwf	(14)	;volatile
	
l2894:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l2896:	
	bsf	(94/8),(94)&7
	
l2898:	
	bsf	(95/8),(95)&7
	
l2900:	
	nop
	
l2902:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l2904:	
	nop
	line	142
	
l2906:	
;PIR-Ceiling-PV02-3(20140517).c: 142: Dimmer=&VarDimmer; Dimmer->StartValue = ((int)(10*1.85)); Dimmer->StopValue = ((int)(95*1.85)); Dimmer->DimmingValue = Dimmer->StopValue; Dimmer->Enable=1;;
	movlw	(_VarDimmer)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Dimmer)
	
l2908:	
	movlw	(012h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Eh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2910:	
	movlw	(0AFh)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l2912:	
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
	
l2914:	
	movf	(_Dimmer),w
	movwf	fsr0
	bsf	indf,0
	line	143
	
l2916:	
;PIR-Ceiling-PV02-3(20140517).c: 143: LED=&VarLED; LED->Enable=1; while(RB5==0) RB5 = 1; while(RB4==0) RB4 = 1; while(RB3==0) RB3 = 1;
	movlw	(_VarLED)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_LED)
	
l2918:	
	movf	(_LED),w
	movwf	fsr0
	bsf	indf,0
	goto	l837
	
l838:	
	bsf	(53/8),(53)&7
	
l837:	
	btfss	(53/8),(53)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l838
u3630:
	goto	l840
	
l839:	
	goto	l840
	
l841:	
	bsf	(52/8),(52)&7
	
l840:	
	btfss	(52/8),(52)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l841
u3640:
	goto	l843
	
l842:	
	goto	l843
	
l844:	
	bsf	(51/8),(51)&7
	
l843:	
	btfss	(51/8),(51)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l844
u3650:
	goto	l2920
	
l845:	
	line	144
	
l2920:	
;PIR-Ceiling-PV02-3(20140517).c: 144: Temp=&VarTemp; Temp->Enable=1;
	movlw	(_VarTemp)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Temp)
	
l2922:	
	movf	(_Temp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	145
	
l2924:	
;PIR-Ceiling-PV02-3(20140517).c: 145: CDS = &VarCDS; CDS->Enable=1;
	movlw	(_VarCDS)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_CDS)
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,0
	line	146
	
l2926:	
;PIR-Ceiling-PV02-3(20140517).c: 146: PIR=&VarPIR; PIR->Enable=1; PIR->Switch=1; PIR->RangeValue=25; PIR->Trigger=2; PIR->CloseTimeValue=100; while(RB4==0) RB4 = 1; RB5 = 0;
	movlw	(_VarPIR)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_PIR)
	
l2928:	
	movf	(_PIR),w
	movwf	fsr0
	bsf	indf,0
	
l2930:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bsf	indf,2
	
l2932:	
	movlw	(019h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l2934:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l2936:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(064h)
	movwf	indf
	incf	fsr0,f
	movlw	high(064h)
	movwf	indf
	goto	l846
	
l847:	
	bsf	(52/8),(52)&7
	
l846:	
	btfss	(52/8),(52)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l847
u3660:
	
l848:	
	bcf	(53/8),(53)&7
	goto	l2938
	line	148
;PIR-Ceiling-PV02-3(20140517).c: 148: while(1)
	
l849:	
	line	156
	
l2938:	
;PIR-Ceiling-PV02-3(20140517).c: 149: {
;PIR-Ceiling-PV02-3(20140517).c: 156: if(TMain->T1_Timerout==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,2
	goto	u3671
	goto	u3670
u3671:
	goto	l2938
u3670:
	line	158
	
l2940:	
;PIR-Ceiling-PV02-3(20140517).c: 157: {
;PIR-Ceiling-PV02-3(20140517).c: 158: TMain->T1_Timerout=0;
	movf	(_TMain),w
	movwf	fsr0
	bcf	indf,2
	line	160
	
l2942:	
;PIR-Ceiling-PV02-3(20140517).c: 160: MainT();
	fcall	_MainT
	line	161
	
l2944:	
;PIR-Ceiling-PV02-3(20140517).c: 161: if(LED->GO1==1) { LED->Time1++; if(LED->Time1 == 150) { LED->Time1=0; RB5=~RB5; } } if(LED->GO2==1) { LED->Time2++; if(LED->Time2 == 150) { LED->Time2=0; RB4=~RB4; } } if(LED->GO3==1) { LED->Time3++; if(LED->Time3 == 150) { LED->Time3=0; RB3=~RB3; } 
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u3681
	goto	u3680
u3681:
	goto	l2954
u3680:
	
l2946:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l2948:	
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l2954
u3690:
	
l2950:	
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	
l2952:	
	movlw	1<<((53)&7)
	xorwf	((53)/8),f
	goto	l2954
	
l852:	
	goto	l2954
	
l851:	
	
l2954:	
	movf	(_LED),w
	movwf	fsr0
	btfss	indf,2
	goto	u3701
	goto	u3700
u3701:
	goto	l2964
u3700:
	
l2956:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l2958:	
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l2964
u3710:
	
l2960:	
	movf	(_LED),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	
l2962:	
	movlw	1<<((52)&7)
	xorwf	((52)/8),f
	goto	l2964
	
l854:	
	goto	l2964
	
l853:	
	
l2964:	
	movf	(_LED),w
	movwf	fsr0
	btfss	indf,3
	goto	u3721
	goto	u3720
u3721:
	goto	l2974
u3720:
	
l2966:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l2968:	
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	xorlw	096h
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l2974
u3730:
	
l2970:	
	movf	(_LED),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	
l2972:	
	movlw	1<<((51)&7)
	xorwf	((51)/8),f
	goto	l2974
	
l856:	
	goto	l2974
	
l855:	
	line	162
	
l2974:	
;PIR-Ceiling-PV02-3(20140517).c: 162: if(Temp->Enable == 1) { Temp->Time++; if(Temp->Time == 5000) { Temp->Time=0; ADCON1=0x70; ADCON0=0x11; GO_nDONE=1; while(GO_nDONE); Temp->AD=ADRES; ; if(Temp->ERROR == 0) { if(Temp->AD <= 102) { Temp->Count++; if(Temp->Count == 3) { Temp->Count=0; Te
	movf	(_Temp),w
	movwf	fsr0
	btfss	indf,0
	goto	u3741
	goto	u3740
u3741:
	goto	l857
u3740:
	
l2976:	
	movf	(_Temp),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l2978:	
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
	goto	u3755
	movlw	low(01388h)
	xorwf	0+(??_main+0)+0,w
u3755:

	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l857
u3750:
	
l2980:	
	movf	(_Temp),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l2982:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l2984:	
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l2986:	
	bsf	(249/8),(249)&7
	goto	l859
	
l860:	
	
l859:	
	btfsc	(249/8),(249)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l859
u3760:
	goto	l2988
	
l861:	
	
l2988:	
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
	goto	u3771
	goto	u3770
u3771:
	goto	l3004
u3770:
	
l2990:	
	movf	(_Temp),w
	addlw	03h
	movwf	fsr0
	movlw	(067h)
	subwf	indf,w
	skipnc
	goto	u3781
	goto	u3780
u3781:
	goto	l3002
u3780:
	
l2992:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l2994:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	03h
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l857
u3790:
	
l2996:	
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
	
l2998:	
	bcf	(50/8),(50)&7
	goto	l865
	
l866:	
	bsf	(53/8),(53)&7
	
l865:	
	btfss	(53/8),(53)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l866
u3800:
	goto	l868
	
l867:	
	goto	l868
	
l869:	
	bsf	(52/8),(52)&7
	
l868:	
	btfss	(52/8),(52)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l869
u3810:
	goto	l3000
	
l870:	
	
l3000:	
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,2
	goto	l857
	
l864:	
	goto	l857
	
l863:	
	
l3002:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	goto	l857
	
l871:	
	goto	l857
	
l862:	
	
l3004:	
	movf	(_Temp),w
	addlw	03h
	movwf	fsr0
	movlw	(075h)
	subwf	indf,w
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l3024
u3820:
	
l3006:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3008:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	03h
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l857
u3830:
	
l3010:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	movf	(_Temp),w
	movwf	fsr0
	bcf	indf,1
	goto	l875
	
l876:	
	bsf	(52/8),(52)&7
	
l875:	
	btfss	(52/8),(52)&7
	goto	u3841
	goto	u3840
u3841:
	goto	l876
u3840:
	goto	l3012
	
l877:	
	
l3012:	
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,2
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,1
	goto	u3851
	goto	u3850
u3851:
	goto	l857
u3850:
	
l3014:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,1
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,0
	
l3016:	
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	goto	l3018
	
l881:	
	
l3018:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,2
	goto	l3020
	
l879:	
	
l3020:	
	movf	(_PIR),w
	addlw	02Eh
	movwf	fsr0
	clrf	indf
	
l3022:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l857
	
l878:	
	goto	l857
	
l874:	
	goto	l857
	
l873:	
	
l3024:	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	goto	l857
	
l882:	
	goto	l857
	
l872:	
	goto	l857
	
l858:	
	
l857:	
	line	163
;PIR-Ceiling-PV02-3(20140517).c: 163: if(CDS->Enable==1) { CDS->Time++; if(CDS->Time == 100) { CDS->Time=0; CDS->ADCGO=1; ADCON1=0x70; ; ; ADCON0=0x31; ; GO_nDONE=1; while(GO_nDONE); CDS->SignalAD=ADRES; ; ; ADCON0=0x09; ; GO_nDONE=1; while(GO_nDONE); CDS->VRAD=ADRES; ; CDS->ADCGO=0; CDS
	movf	(_CDS),w
	movwf	fsr0
	btfss	indf,0
	goto	u3861
	goto	u3860
u3861:
	goto	l883
u3860:
	
l3026:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3028:	
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	064h
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l883
u3870:
	
l3030:	
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	movf	(_CDS),w
	addlw	05h
	movwf	fsr0
	bsf	indf,0
	
l3032:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3034:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l3036:	
	bsf	(249/8),(249)&7
	goto	l885
	
l886:	
	
l885:	
	btfsc	(249/8),(249)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l885
u3880:
	goto	l3038
	
l887:	
	
l3038:	
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3040:	
	movlw	(09h)
	movwf	(31)	;volatile
	
l3042:	
	bsf	(249/8),(249)&7
	goto	l888
	
l889:	
	
l888:	
	btfsc	(249/8),(249)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l888
u3890:
	goto	l3044
	
l890:	
	
l3044:	
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
	goto	u3901
	goto	u3900
u3901:
	goto	l883
u3900:
	
l3046:	
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,1
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfsc	indf,0
	goto	u3911
	goto	u3910
u3911:
	goto	l3052
u3910:
	
l3048:	
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
	goto	u3921
	goto	u3920
u3921:
	goto	l883
u3920:
	
l3050:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bsf	indf,0
	goto	l883
	
l893:	
	goto	l883
	
l892:	
	
l3052:	
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
	goto	u3935
	movf	indf,w
	subwf	0+(??_main+0)+0,w
u3935:

	skipc
	goto	u3931
	goto	u3930
u3931:
	goto	l883
u3930:
	
l3054:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,0
	goto	l883
	
l895:	
	goto	l883
	
l894:	
	goto	l883
	
l891:	
	goto	l883
	
l884:	
	
l883:	
	line	164
;PIR-Ceiling-PV02-3(20140517).c: 164: if(PIR->Enable == 1) { PIR->Time++; if(PIR->Time == 100) { PIR->Time=0; PIR->ADCGO=1; ADCON1=0x70; ; ; ADCON0=0x05; ; GO_nDONE=1; while(GO_nDONE); PIR->VRAD=ADRES/51; ; ; ADCON0=0x0d; ; GO_nDONE=1; while(GO_nDONE); PIR->SignalAD=ADRES; ; PIR->ADCGO=0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u3941
	goto	u3940
u3941:
	goto	l2938
u3940:
	
l3056:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	
l3058:	
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	064h
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l2938
u3950:
	
l3060:	
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	movf	(_PIR),w
	movwf	fsr0
	bsf	indf,1
	
l3062:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l3064:	
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l3066:	
	bsf	(249/8),(249)&7
	goto	l898
	
l899:	
	
l898:	
	btfsc	(249/8),(249)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l898
u3960:
	goto	l3068
	
l900:	
	
l3068:	
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
	
l3070:	
	movlw	(0Dh)
	movwf	(31)	;volatile
	
l3072:	
	bsf	(249/8),(249)&7
	goto	l901
	
l902:	
	
l901:	
	btfsc	(249/8),(249)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l901
u3970:
	goto	l3074
	
l903:	
	
l3074:	
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
	
l3076:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3981
	goto	u3980
u3981:
	goto	l3080
u3980:
	
l3078:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(064h)
	movwf	indf
	incf	fsr0,f
	movlw	high(064h)
	movwf	indf
	goto	l3096
	
l904:	
	
l3080:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	01h
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l3084
u3990:
	
l3082:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(0BB8h)
	movwf	indf
	incf	fsr0,f
	movlw	high(0BB8h)
	movwf	indf
	goto	l3096
	
l906:	
	
l3084:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	02h
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l3088
u4000:
	
l3086:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(01770h)
	movwf	indf
	incf	fsr0,f
	movlw	high(01770h)
	movwf	indf
	goto	l3096
	
l908:	
	
l3088:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	03h
	skipz
	goto	u4011
	goto	u4010
u4011:
	goto	l3092
u4010:
	
l3090:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(02328h)
	movwf	indf
	incf	fsr0,f
	movlw	high(02328h)
	movwf	indf
	goto	l3096
	
l910:	
	
l3092:	
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movlw	(04h)
	subwf	indf,w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l3096
u4020:
	
l3094:	
	movf	(_PIR),w
	addlw	026h
	movwf	fsr0
	movlw	low(02EE0h)
	movwf	indf
	incf	fsr0,f
	movlw	high(02EE0h)
	movwf	indf
	goto	l3096
	
l912:	
	goto	l3096
	
l911:	
	goto	l3096
	
l909:	
	goto	l3096
	
l907:	
	goto	l3096
	
l905:	
	
l3096:	
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
	
l3098:	
	clrf	(main@i)
	
l3100:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l3104
u4030:
	goto	l3110
	
l3102:	
	goto	l3110
	
l913:	
	
l3104:	
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
	
l3106:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3108:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l3104
u4040:
	goto	l3110
	
l914:	
	
l3110:	
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
	
l3112:	
	movf	(_PIR),w
	addlw	012h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3114:	
	clrf	(main@i)
	
l3116:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l3120
u4050:
	goto	l3126
	
l3118:	
	goto	l3126
	
l915:	
	
l3120:	
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
	
l3122:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3124:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u4061
	goto	u4060
u4061:
	goto	l3120
u4060:
	goto	l3126
	
l916:	
	
l3126:	
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
	
l3128:	
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l3130:	
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movlw	(0Ah)
	subwf	indf,w
	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l3134
u4070:
	
l3132:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l918
	
l917:	
	
l3134:	
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
	goto	u4081
	goto	u4080
u4081:
	goto	l3138
u4080:
	
l3136:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l918
	
l919:	
	
l3138:	
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	goto	l918
	
l920:	
	
l918:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfsc	indf,2
	goto	u4091
	goto	u4090
u4091:
	goto	l3146
u4090:
	
l3140:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfss	indf,0
	goto	u4101
	goto	u4100
u4101:
	goto	l923
u4100:
	
l3142:	
	movf	(_Temp),w
	movwf	fsr0
	btfsc	indf,1
	goto	u4111
	goto	u4110
u4111:
	goto	l923
u4110:
	
l3144:	
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
	goto	l923
	
l922:	
	goto	l923
	
l921:	
	
l3146:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfss	indf,0
	goto	u4121
	goto	u4120
u4121:
	goto	l3150
u4120:
	
l3148:	
	movf	(_Temp),w
	movwf	fsr0
	btfss	indf,1
	goto	u4131
	goto	u4130
u4131:
	goto	l923
u4130:
	goto	l3150
	
l926:	
	
l3150:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bcf	indf,2
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,1
	goto	u4141
	goto	u4140
u4141:
	goto	l923
u4140:
	goto	l928
	
l3152:	
	goto	l928
	
l929:	
	bsf	(53/8),(53)&7
	
l928:	
	btfss	(53/8),(53)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l929
u4150:
	goto	l931
	
l930:	
	goto	l931
	
l932:	
	bsf	(52/8),(52)&7
	
l931:	
	btfss	(52/8),(52)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l932
u4160:
	goto	l3154
	
l933:	
	
l3154:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfsc	indf,1
	goto	u4171
	goto	u4170
u4171:
	goto	l3158
u4170:
	
l3156:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u4181
	goto	u4180
u4181:
	goto	l923
u4180:
	goto	l3158
	
l936:	
	
l3158:	
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
	goto	u4191
	goto	u4190
u4191:
	goto	l3162
u4190:
	
l3160:	
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
	goto	l923
	
l938:	
	
l3162:	
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
	goto	u4201
	goto	u4200
u4201:
	goto	l3166
u4200:
	
l3164:	
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
	goto	l923
	
l940:	
	
l3166:	
	movlw	(065h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l923
	
l941:	
	goto	l923
	
l939:	
	goto	l923
	
l937:	
	
l3168:	
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l923
	
l942:	
	goto	l923
	
l934:	
	goto	l923
	
l927:	
	goto	l923
	
l924:	
	
l923:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,1
	goto	u4211
	goto	u4210
u4211:
	goto	l3254
u4210:
	
l3170:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,0
	goto	u4221
	goto	u4220
u4221:
	goto	l2938
u4220:
	
l3172:	
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	bcf	indf,0
	movf	(_PIR),w
	addlw	020h
	movwf	fsr0
	btfss	indf,2
	goto	u4231
	goto	u4230
u4231:
	goto	l2938
u4230:
	
l3174:	
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	movlw	(064h)
	subwf	indf,w
	skipnc
	goto	u4241
	goto	u4240
u4241:
	goto	l3178
u4240:
	
l3176:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	029h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l3206
	
l946:	
	
l3178:	
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
	goto	u4251
	goto	u4250
u4251:
	goto	l3188
u4250:
	
l3180:	
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
	goto	u4261
	goto	u4260
u4261:
	goto	l3184
u4260:
	
l3182:	
	movlw	(023h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3206
	
l949:	
	
l3184:	
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	xorlw	023h
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l3206
u4270:
	
l3186:	
	movlw	(02Dh)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l3206
	
l951:	
	goto	l3206
	
l950:	
	goto	l3206
	
l948:	
	
l3188:	
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
	
l3190:	
	movf	(_PIR),w
	addlw	02Bh
	movwf	fsr0
	clrf	indf
	
l3192:	
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	movlw	(06h)
	subwf	indf,w
	skipnc
	goto	u4281
	goto	u4280
u4281:
	goto	l3196
u4280:
	
l3194:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ah
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l3206
	
l953:	
	
l3196:	
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
	goto	u4291
	goto	u4290
u4291:
	goto	l3206
u4290:
	
l3198:	
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l3202
u4300:
	
l3200:	
	movlw	(023h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l957
	
l956:	
	
l3202:	
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	indf,w
	xorlw	023h
	skipz
	goto	u4311
	goto	u4310
u4311:
	goto	l957
u4310:
	
l3204:	
	movlw	(019h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	02Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l957
	
l958:	
	
l957:	
	movf	(_PIR),w
	addlw	02Dh
	movwf	fsr0
	clrf	indf
	goto	l3206
	
l955:	
	goto	l3206
	
l954:	
	goto	l3206
	
l952:	
	goto	l3206
	
l947:	
	
l3206:	
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
	goto	u4325
	movf	0+(??_main+3)+0,w
	subwf	indf,w
u4325:

	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l3232
u4320:
	
l3208:	
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
	goto	u4335
	movf	indf,w
	subwf	0+(??_main+3)+0,w
u4335:

	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l3232
u4330:
	
l3210:	
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
	goto	l960
	
l961:	
	bsf	(53/8),(53)&7
	
l960:	
	btfss	(53/8),(53)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l961
u4340:
	goto	l963
	
l962:	
	goto	l963
	
l964:	
	bsf	(52/8),(52)&7
	
l963:	
	btfss	(52/8),(52)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l964
u4350:
	goto	l3212
	
l965:	
	
l3212:	
	movf	(_PIR),w
	addlw	024h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3214:	
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
	goto	u4365
	movf	0+(??_main+0)+0,w
	xorwf	0+(??_main+2)+0,w
u4365:

	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l2938
u4360:
	
l3216:	
	movf	(_PIR),w
	addlw	024h
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
	goto	u4371
	goto	u4370
u4371:
	goto	l3220
u4370:
	
l3218:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u4381
	goto	u4380
u4381:
	goto	l2938
u4380:
	goto	l3220
	
l969:	
	
l3220:	
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
	goto	u4391
	goto	u4390
u4391:
	goto	l3224
u4390:
	
l3222:	
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
	goto	l2938
	
l971:	
	
l3224:	
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
	goto	u4401
	goto	u4400
u4401:
	goto	l3228
u4400:
	
l3226:	
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
	goto	l2938
	
l973:	
	
l3228:	
	movlw	(065h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Fh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l2938
	
l974:	
	goto	l2938
	
l972:	
	goto	l2938
	
l970:	
	
l3230:	
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l2938
	
l975:	
	goto	l2938
	
l967:	
	goto	l2938
	
l966:	
	goto	l2938
	
l959:	
	
l3232:	
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
	
l3234:	
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
	goto	u4415
	movf	0+(??_main+0)+0,w
	xorwf	0+(??_main+2)+0,w
u4415:

	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l977
u4410:
	
l3236:	
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
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,1
	goto	u4421
	goto	u4420
u4421:
	goto	l977
u4420:
	
l3238:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,1
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,0
	
l3240:	
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	goto	l3242
	
l981:	
	
l3242:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,2
	goto	l3244
	
l979:	
	
l3244:	
	movf	(_PIR),w
	addlw	02Eh
	movwf	fsr0
	clrf	indf
	
l3246:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l977
	
l978:	
	
l977:	
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
	goto	u4435
	movf	0+(??_main+2)+0,w
	subwf	indf,w
u4435:

	skipnc
	goto	u4431
	goto	u4430
u4431:
	goto	l3250
u4430:
	goto	l983
	
l3248:	
	goto	l983
	
l984:	
	bsf	(52/8),(52)&7
	
l983:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l984
u4440:
	
l985:	
	bcf	(53/8),(53)&7
	goto	l2938
	
l982:	
	
l3250:	
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
	goto	u4455
	movf	indf,w
	subwf	0+(??_main+1)+0,w
u4455:

	skipnc
	goto	u4451
	goto	u4450
u4451:
	goto	l2938
u4450:
	goto	l988
	
l3252:	
	goto	l988
	
l989:	
	bsf	(53/8),(53)&7
	
l988:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u4461
	goto	u4460
u4461:
	goto	l989
u4460:
	
l990:	
	bcf	(52/8),(52)&7
	goto	l2938
	
l987:	
	goto	l2938
	
l986:	
	goto	l2938
	
l976:	
	goto	l2938
	
l945:	
	goto	l2938
	
l944:	
	goto	l2938
	
l943:	
	
l3254:	
	movf	(_PIR),w
	addlw	021h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
l3256:	
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
	goto	u4475
	movlw	low(012Ch)
	xorwf	0+(??_main+0)+0,w
u4475:

	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l2938
u4470:
	
l3258:	
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
	goto	l993
	
l994:	
	bsf	(53/8),(53)&7
	
l993:	
	btfss	(53/8),(53)&7
	goto	u4481
	goto	u4480
u4481:
	goto	l994
u4480:
	goto	l2938
	
l995:	
	goto	l2938
	
l992:	
	goto	l2938
	
l991:	
	goto	l2938
	
l897:	
	goto	l2938
	
l896:	
	goto	l2938
	line	165
	
l850:	
	goto	l2938
	line	166
	
l996:	
	line	148
	goto	l2938
	
l997:	
	line	167
	
l998:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awdiv
psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0
;;      Totals:         1       8       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text155
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2824:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3531
	goto	u3530
u3531:
	goto	l2828
u3530:
	line	11
	
l2826:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2828
	line	13
	
l1186:	
	line	14
	
l2828:	
	btfss	(___awdiv@dividend+1),7
	goto	u3541
	goto	u3540
u3541:
	goto	l2834
u3540:
	line	15
	
l2830:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2832:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2834
	line	17
	
l1187:	
	line	18
	
l2834:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2836:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3551
	goto	u3550
u3551:
	goto	l2856
u3550:
	line	20
	
l2838:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2844
	
l1190:	
	line	22
	
l2840:	
	movlw	01h
	
u3565:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3565
	line	23
	
l2842:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2844
	line	24
	
l1189:	
	line	21
	
l2844:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l2840
u3570:
	goto	l2846
	
l1191:	
	goto	l2846
	line	25
	
l1192:	
	line	26
	
l2846:	
	movlw	01h
	
u3585:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3585
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3595
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3595:
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l2852
u3590:
	line	28
	
l2848:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2850:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2852
	line	30
	
l1193:	
	line	31
	
l2852:	
	movlw	01h
	
u3605:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3605
	line	32
	
l2854:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l2846
u3610:
	goto	l2856
	
l1194:	
	goto	l2856
	line	33
	
l1188:	
	line	34
	
l2856:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3620
	goto	l2860
u3620:
	line	35
	
l2858:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2860
	
l1195:	
	line	36
	
l2860:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1196
	
l2862:	
	line	37
	
l1196:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwdiv
psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[BANK0 ] unsigned int 
;;  counter         1    6[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0
;;      Totals:         1       7       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text156
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2798:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2800:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3461
	goto	u3460
u3461:
	goto	l2820
u3460:
	line	11
	
l2802:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2808
	
l1054:	
	line	13
	
l2804:	
	movlw	01h
	
u3475:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3475
	line	14
	
l2806:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2808
	line	15
	
l1053:	
	line	12
	
l2808:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l2804
u3480:
	goto	l2810
	
l1055:	
	goto	l2810
	line	16
	
l1056:	
	line	17
	
l2810:	
	movlw	01h
	
u3495:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3495
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3505
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3505:
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l2816
u3500:
	line	19
	
l2812:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2814:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2816
	line	21
	
l1057:	
	line	22
	
l2816:	
	movlw	01h
	
u3515:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3515
	line	23
	
l2818:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l2810
u3520:
	goto	l2820
	
l1058:	
	goto	l2820
	line	24
	
l1052:	
	line	25
	
l2820:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1059
	
l2822:	
	line	26
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_MainT
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:

;; *************** function _MainT *****************
;; Defined at:
;;		line 187 in file "E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
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
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text157
	file	"E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
	line	187
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 6
; Regs used in _MainT: [wreg-fsr0h+status,2+status,0]
	line	188
	
l2714:	
;PIR-Ceiling-PV02-3(20140517).c: 188: TMain->Count++;
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
	line	189
;PIR-Ceiling-PV02-3(20140517).c: 189: TMain->Count1++;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	190
	
l2716:	
;PIR-Ceiling-PV02-3(20140517).c: 190: if(TMain->PowerON==0)
	movf	(_TMain),w
	movwf	fsr0
	btfsc	indf,0
	goto	u3231
	goto	u3230
u3231:
	goto	l2722
u3230:
	line	192
	
l2718:	
;PIR-Ceiling-PV02-3(20140517).c: 191: {
;PIR-Ceiling-PV02-3(20140517).c: 192: if(TMain->Count == 1000)
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
	goto	u3245
	movlw	low(03E8h)
	xorwf	0+(??_MainT+0)+0,w
u3245:

	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l1034
u3240:
	line	194
	
l2720:	
;PIR-Ceiling-PV02-3(20140517).c: 193: {
;PIR-Ceiling-PV02-3(20140517).c: 194: TMain->Count=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	195
;PIR-Ceiling-PV02-3(20140517).c: 195: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,0
	goto	l1034
	line	196
	
l1033:	
	line	197
;PIR-Ceiling-PV02-3(20140517).c: 196: }
;PIR-Ceiling-PV02-3(20140517).c: 197: }
	goto	l1034
	line	198
	
l1032:	
	line	200
	
l2722:	
;PIR-Ceiling-PV02-3(20140517).c: 198: else
;PIR-Ceiling-PV02-3(20140517).c: 199: {
;PIR-Ceiling-PV02-3(20140517).c: 200: if(TMain->Count == 1000)
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
	goto	u3255
	movlw	low(03E8h)
	xorwf	0+(??_MainT+0)+0,w
u3255:

	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l1034
u3250:
	line	202
	
l2724:	
;PIR-Ceiling-PV02-3(20140517).c: 201: {
;PIR-Ceiling-PV02-3(20140517).c: 202: TMain->Count=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l1034
	line	203
	
l1035:	
	line	204
	
l1034:	
	line	205
;PIR-Ceiling-PV02-3(20140517).c: 203: }
;PIR-Ceiling-PV02-3(20140517).c: 204: }
;PIR-Ceiling-PV02-3(20140517).c: 205: if(TMain->Count1 == 1000)
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
	goto	u3265
	movlw	low(03E8h)
	xorwf	0+(??_MainT+0)+0,w
u3265:

	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l1037
u3260:
	line	207
	
l2726:	
;PIR-Ceiling-PV02-3(20140517).c: 206: {
;PIR-Ceiling-PV02-3(20140517).c: 207: TMain->Count1=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l1037
	line	208
	
l1036:	
	line	209
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_MainT_Initial
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 181 in file "E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
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
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text158
	file	"E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
	line	181
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 6
; Regs used in _MainT_Initial: [wreg]
	line	182
	
l2712:	
;PIR-Ceiling-PV02-3(20140517).c: 182: TMain = &VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_TMain)
	line	183
	
l1029:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
;; =============== function _MainT_Initial ends ============

	signat	_MainT_Initial,88
	global	_ISR
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

;; *************** function _ISR *****************
;; Defined at:
;;		line 171 in file "E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
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
psect	text159
	file	"E:\PIC\4.PIR_Dimmer\Release\PIR-Ceiling-PV02-3(20140517).c"
	line	171
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
psect	text159
	line	172
	
i1l2728:	
;PIR-Ceiling-PV02-3(20140517).c: 172: _nop();
	nop
	line	174
;PIR-Ceiling-PV02-3(20140517).c: 174: if(TMR1IE && TMR1IF) { TMR1H=((65536-550)/256); TMR1L=((65536-550)%256); TMR1IF=0; if(TMain->PowerON==1) { Dimmer->Count++; if(RA7==1) { if(Dimmer->Input==0) { Dimmer->Input=1; } } else { if(Dimmer->Input==1) { Dimmer->Input=0; Dimmer->Count=0; if(Te
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l2796
u327_20:
	
i1l2730:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l2796
u328_20:
	
i1l2732:	
	movlw	(0FDh)
	movwf	(15)	;volatile
	movlw	(0DAh)
	movwf	(14)	;volatile
	
i1l2734:	
	bcf	(96/8),(96)&7
	
i1l2736:	
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l2790
u329_20:
	
i1l2738:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	addwf	indf,f
	
i1l2740:	
	btfss	(47/8),(47)&7
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l2746
u330_20:
	
i1l2742:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfsc	indf,0
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l1005
u331_20:
	
i1l2744:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,0
	goto	i1l1005
	
i1l1004:	
	goto	i1l1005
	
i1l1003:	
	
i1l2746:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfss	indf,0
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l1005
u332_20:
	
i1l2748:	
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
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l1005
u333_20:
	
i1l2750:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,2
	goto	i1l1005
	
i1l1007:	
	goto	i1l1005
	
i1l1006:	
	
i1l1005:	
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfss	indf,2
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l1008
u334_20:
	
i1l2752:	
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
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l2790
u335_20:
	
i1l2754:	
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
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l2790
u336_20:
	
i1l2756:	
	bsf	(50/8),(50)&7
	goto	i1l2790
	
i1l1010:	
	goto	i1l2790
	
i1l1009:	
	goto	i1l2790
	
i1l1008:	
	btfss	(50/8),(50)&7
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l2790
u337_20:
	
i1l2758:	
	bcf	(50/8),(50)&7
	
i1l2760:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,0
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l2790
u338_20:
	
i1l2762:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	addwf	indf,f
	
i1l2764:	
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
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l2790
u339_20:
	
i1l2766:	
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,1
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l2776
u340_20:
	
i1l2768:	
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movlw	low(01h)
	subwf	indf,f
	
i1l2770:	
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
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l1016
u341_20:
	
i1l2772:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,0
	
i1l1016:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l2790
u342_20:
	
i1l2774:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,3
	goto	i1l2790
	
i1l1017:	
	goto	i1l2790
	
i1l1015:	
	
i1l2776:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	addwf	indf,f
	
i1l2778:	
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
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l2790
u343_20:
	
i1l2780:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,0
	goto	i1l2784
	
i1l2782:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,2
	goto	i1l2790
	
i1l1020:	
	
i1l2784:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,3
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l2788
u344_20:
	
i1l2786:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,3
	goto	i1l2790
	
i1l1023:	
	
i1l2788:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,2
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,3
	movf	(_PIR),w
	addlw	02Eh
	movwf	fsr0
	clrf	indf
	movlw	(02h)
	movwf	(??_ISR+0)+0
	movf	(_PIR),w
	addlw	023h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	movwf	indf
	goto	i1l2790
	
i1l1024:	
	goto	i1l2790
	
i1l1022:	
	goto	i1l2790
	
i1l1021:	
	goto	i1l2790
	
i1l1019:	
	goto	i1l2790
	
i1l1018:	
	goto	i1l2790
	
i1l1014:	
	goto	i1l2790
	
i1l1013:	
	goto	i1l2790
	
i1l1012:	
	goto	i1l2790
	
i1l1011:	
	goto	i1l2790
	
i1l1002:	
	
i1l2790:	
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	
i1l2792:	
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
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l2796
u345_20:
	
i1l2794:	
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
	goto	i1l2796
	
i1l1025:	
	goto	i1l2796
	
i1l1001:	
	line	176
	
i1l2796:	
;PIR-Ceiling-PV02-3(20140517).c: 176: _nop();
	nop
	line	177
	
i1l1026:	
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
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
