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
# 7 "G:\Program\PIC\Source_File\MCU_16F723A.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "G:\Program\PIC\Source_File\MCU_16F723A.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF ;#
	FNCALL	_main,_Mcu_Initial
	FNCALL	_main,_Dimmer_Initial
	FNCALL	_main,_Dimmer_Main
	FNCALL	_main,_Dimmer_ReadAD
	FNCALL	_Dimmer_ReadAD,___awdiv
	FNCALL	_Dimmer_ReadAD,___bmul
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarDimmer
	global	_VarISR
	global	_Dimmer
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_Dimmer:
       ds      1

	global	_MISR
_MISR:
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
	global	_TMR0
_TMR0	set	1
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
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_ADCON1
_ADCON1	set	159
	global	_FVRCON
_FVRCON	set	157
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_OSCCON
_OSCCON	set	144
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSELA
_ANSELA	set	389
	global	_ANSELB
_ANSELB	set	390
	file	"PIR_Dimmer_V01-1P_V1.0.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_VarDimmer:
       ds      6

_VarISR:
       ds      4

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Dimmer_Initial
?_Dimmer_Initial:	; 0 bytes @ 0x0
	global	?_Dimmer_Main
?_Dimmer_Main:	; 0 bytes @ 0x0
	global	?_Dimmer_ReadAD
?_Dimmer_ReadAD:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_Mcu_Initial
?_Mcu_Initial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
	global	??_Dimmer_Initial
??_Dimmer_Initial:	; 0 bytes @ 0x5
	global	??_Dimmer_Main
??_Dimmer_Main:	; 0 bytes @ 0x5
	global	??_Mcu_Initial
??_Mcu_Initial:	; 0 bytes @ 0x5
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x5
	global	?___bmul
?___bmul:	; 1 bytes @ 0x5
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x5
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x6
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	??_Dimmer_ReadAD
??_Dimmer_ReadAD:	; 0 bytes @ 0x8
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 10, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       9
;; BANK0           80     12      22
;; BANK1           80      0       0
;; BANK2           16      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; MISR	PTR struct ISR size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarISR(BANK0[4]), 
;;
;; Dimmer	PTR struct Dimmer size(1) Largest target is 6
;;		 -> NULL(NULL[0]), VarDimmer(BANK0[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Dimmer_Main
;;   _Dimmer_ReadAD->___bmul
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Dimmer_ReadAD
;;   _Dimmer_ReadAD->___awdiv
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     581
;;                                             11 BANK0      1     1      0
;;                        _Mcu_Initial
;;                     _Dimmer_Initial
;;                        _Dimmer_Main
;;                      _Dimmer_ReadAD
;; ---------------------------------------------------------------------------------
;; (1) _Dimmer_ReadAD                                        3     3      0     581
;;                                              8 BANK0      3     3      0
;;                            ___awdiv
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     445
;;                                              5 COMMON     1     1      0
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               4     3      1     136
;;                                              5 COMMON     2     1      1
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initial                                          1     1      0       0
;;                                              5 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Dimmer_Main                                          2     2      0       0
;;                                              5 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Dimmer_Initial                                       1     1      0       0
;;                                              5 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Mcu_Initial
;;   _Dimmer_Initial
;;   _Dimmer_Main
;;   _Dimmer_ReadAD
;;     ___awdiv
;;     ___bmul
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      1F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      C      16       5       27.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK2            10      0       0       8        0.0%
;;BANK2               10      0       0       9        0.0%
;;DATA                 0      0      21      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "G:\Program\PIC\Source_File\1.PIR_Dimmer_V01-1P_V1.0\PIR_Dimmer_V01-1P_V1.0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Mcu_Initial
;;		_Dimmer_Initial
;;		_Dimmer_Main
;;		_Dimmer_ReadAD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Program\PIC\Source_File\1.PIR_Dimmer_V01-1P_V1.0\PIR_Dimmer_V01-1P_V1.0.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	7
	
l4098:	
;PIR_Dimmer_V01-1P_V1.0.c: 7: Mcu_Initial();
	fcall	_Mcu_Initial
	line	8
	
l4100:	
;PIR_Dimmer_V01-1P_V1.0.c: 8: Dimmer_Initial();
	fcall	_Dimmer_Initial
	line	9
	
l4102:	
;PIR_Dimmer_V01-1P_V1.0.c: 9: RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	line	10
	
l4104:	
;PIR_Dimmer_V01-1P_V1.0.c: 10: RB4=1;
	bsf	(52/8),(52)&7
	line	11
	
l4106:	
;PIR_Dimmer_V01-1P_V1.0.c: 11: RB3=1;
	bsf	(51/8),(51)&7
	goto	l4108
	line	13
;PIR_Dimmer_V01-1P_V1.0.c: 13: while(1)
	
l2479:	
	line	16
	
l4108:	
;PIR_Dimmer_V01-1P_V1.0.c: 14: {
;PIR_Dimmer_V01-1P_V1.0.c: 16: Dimmer_Main();
	fcall	_Dimmer_Main
	line	19
	
l4110:	
;PIR_Dimmer_V01-1P_V1.0.c: 19: if(MISR->Timeout==1)
	movf	(_MISR),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u2981
	goto	u2980
u2981:
	goto	l4108
u2980:
	line	21
	
l4112:	
;PIR_Dimmer_V01-1P_V1.0.c: 20: {
;PIR_Dimmer_V01-1P_V1.0.c: 21: if(MISR->Count1<20)
	movf	(_MISR),w
	addlw	02h
	movwf	fsr0
	movlw	(014h)
	subwf	indf,w
	skipnc
	goto	u2991
	goto	u2990
u2991:
	goto	l4116
u2990:
	line	22
	
l4114:	
;PIR_Dimmer_V01-1P_V1.0.c: 22: MISR->Count1++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_MISR),w
	addlw	02h
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l4122
	line	23
	
l2481:	
	line	25
	
l4116:	
;PIR_Dimmer_V01-1P_V1.0.c: 23: else
;PIR_Dimmer_V01-1P_V1.0.c: 24: {
;PIR_Dimmer_V01-1P_V1.0.c: 25: MISR->Count1=0;
	movf	(_MISR),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	line	26
	
l4118:	
;PIR_Dimmer_V01-1P_V1.0.c: 26: RB5=~RB5;
	movlw	1<<((53)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((53)/8),f
	line	28
	
l4120:	
;PIR_Dimmer_V01-1P_V1.0.c: 28: Dimmer_ReadAD();
	fcall	_Dimmer_ReadAD
	goto	l4122
	line	30
	
l2482:	
	line	31
	
l4122:	
;PIR_Dimmer_V01-1P_V1.0.c: 30: }
;PIR_Dimmer_V01-1P_V1.0.c: 31: MISR->Timeout=0;
	movf	(_MISR),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,0
	goto	l4108
	line	32
	
l2480:	
	goto	l4108
	line	33
	
l2483:	
	line	13
	goto	l4108
	
l2484:	
	line	34
	
l2485:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Dimmer_ReadAD
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function _Dimmer_ReadAD *****************
;; Defined at:
;;		line 52 in file "G:\Program\PIC\Source_File\Dimmer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text285
	file	"G:\Program\PIC\Source_File\Dimmer.c"
	line	52
	global	__size_of_Dimmer_ReadAD
	__size_of_Dimmer_ReadAD	equ	__end_of_Dimmer_ReadAD-_Dimmer_ReadAD
	
_Dimmer_ReadAD:	
	opt	stack 5
; Regs used in _Dimmer_ReadAD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	53
	
l4054:	
;Dimmer.c: 53: if(Dimmer->Enable==1)
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u2881
	goto	u2880
u2881:
	goto	l840
u2880:
	line	55
	
l4056:	
;Dimmer.c: 54: {
;Dimmer.c: 55: if(Dimmer->GO_nDONE==1)
	movf	(_Dimmer),w
	movwf	fsr0
	btfss	indf,3
	goto	u2891
	goto	u2890
u2891:
	goto	l840
u2890:
	line	57
	
l4058:	
;Dimmer.c: 56: {
;Dimmer.c: 57: ADCON1=0x70;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	58
	
l4060:	
;Dimmer.c: 58: GIE=0;
	bcf	(95/8),(95)&7
	line	60
;Dimmer.c: 60: ADCON0=0x09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	62
	
l4062:	
;Dimmer.c: 62: GO_nDONE=1;
	bsf	(249/8),(249)&7
	line	63
;Dimmer.c: 63: while(GO_nDONE);
	goto	l826
	
l827:	
	
l826:	
	btfsc	(249/8),(249)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l826
u2900:
	goto	l4064
	
l828:	
	line	64
	
l4064:	
;Dimmer.c: 64: Dimmer->VRAD_Vref=ADRES;
	movf	(30),w	;volatile
	movwf	(??_Dimmer_ReadAD+0)+0
	movf	(_Dimmer),w
	addlw	03h
	movwf	fsr0
	movf	(??_Dimmer_ReadAD+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	65
	
l4066:	
;Dimmer.c: 65: GIE=1;
	bsf	(95/8),(95)&7
	line	66
	
l4068:	
;Dimmer.c: 66: ADCON1=0x73;
	movlw	(073h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	68
	
l4070:	
;Dimmer.c: 68: if(Dimmer->ADOK==0)
	movf	(_Dimmer),w
	movwf	fsr0
	btfsc	indf,4
	goto	u2911
	goto	u2910
u2911:
	goto	l4074
u2910:
	line	70
	
l4072:	
;Dimmer.c: 69: {
;Dimmer.c: 70: Dimmer->VROK=1;
	movf	(_Dimmer),w
	movwf	fsr0
	bsf	indf,5
	line	71
;Dimmer.c: 71: Dimmer->VRAD_Compare=Dimmer->VRAD_Vref;
	movf	(_Dimmer),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Dimmer_ReadAD+0)+0
	movf	(_Dimmer),w
	addlw	04h
	movwf	fsr0
	movf	(??_Dimmer_ReadAD+0)+0,w
	movwf	indf
	line	72
;Dimmer.c: 72: }
	goto	l830
	line	73
	
l829:	
	line	75
	
l4074:	
;Dimmer.c: 73: else
;Dimmer.c: 74: {
;Dimmer.c: 75: if((Dimmer->VRAD_Vref>(Dimmer->VRAD_Compare+5)) || (Dimmer->VRAD_Vref<(Dimmer->VRAD_Compare-5)))
	movf	(_Dimmer),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	addlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Dimmer_ReadAD+0)+0
	movlw	high(05h)
	skipnc
	movlw	(high(05h)+1)&0ffh
	movwf	((??_Dimmer_ReadAD+0)+0)+1
	movf	(_Dimmer),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_Dimmer_ReadAD+0)+0,w
	xorlw	80h
	movwf	(??_Dimmer_ReadAD+2)+0
	movlw	80h
	subwf	(??_Dimmer_ReadAD+2)+0,w
	skipz
	goto	u2925
	movf	indf,w
	subwf	0+(??_Dimmer_ReadAD+0)+0,w
u2925:

	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l4078
u2920:
	
l4076:	
	movf	(_Dimmer),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	low(-5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Dimmer_ReadAD+0)+0
	movlw	high(-5)
	skipnc
	movlw	(high(-5)+1)&0ffh
	movwf	((??_Dimmer_ReadAD+0)+0)+1
	movf	(_Dimmer),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_Dimmer_ReadAD+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u2935
	movf	0+(??_Dimmer_ReadAD+0)+0,w
	subwf	indf,w
u2935:

	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l830
u2930:
	goto	l4078
	
l833:	
	line	77
	
l4078:	
;Dimmer.c: 76: {
;Dimmer.c: 77: Dimmer->VRAD_Compare=Dimmer->VRAD_Vref;
	movf	(_Dimmer),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Dimmer_ReadAD+0)+0
	movf	(_Dimmer),w
	addlw	04h
	movwf	fsr0
	movf	(??_Dimmer_ReadAD+0)+0,w
	movwf	indf
	line	78
;Dimmer.c: 78: Dimmer->VROK=1;
	movf	(_Dimmer),w
	movwf	fsr0
	bsf	indf,5
	goto	l830
	line	79
	
l831:	
	line	80
	
l830:	
	line	82
;Dimmer.c: 79: }
;Dimmer.c: 80: }
;Dimmer.c: 82: if(Dimmer->VROK==1)
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,5
	goto	u2941
	goto	u2940
u2941:
	goto	l840
u2940:
	line	84
	
l4080:	
;Dimmer.c: 83: {
;Dimmer.c: 84: Dimmer->VROK=0;
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	indf,5
	line	85
	
l4082:	
;Dimmer.c: 85: Dimmer->VRAD=Dimmer->VRAD_Compare/35;
	movlw	low(023h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(023h)
	movwf	((?___awdiv))+1
	movf	(_Dimmer),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Dimmer_ReadAD+0)+0
	clrf	(??_Dimmer_ReadAD+0)+0+1
	movf	0+(??_Dimmer_ReadAD+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Dimmer_ReadAD+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_Dimmer_ReadAD+2)+0
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	movf	(??_Dimmer_ReadAD+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	86
	
l4084:	
;Dimmer.c: 86: if(Dimmer->VRAD==0)
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l4088
u2950:
	line	87
	
l4086:	
;Dimmer.c: 87: Dimmer->StartValue=1;
	movf	(_Dimmer),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	goto	l4094
	line	88
	
l835:	
	
l4088:	
;Dimmer.c: 88: else if(Dimmer->VRAD==7)
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	xorlw	07h
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l4092
u2960:
	line	89
	
l4090:	
;Dimmer.c: 89: Dimmer->StartValue=65;
	movlw	(041h)
	movwf	(??_Dimmer_ReadAD+0)+0
	movf	(_Dimmer),w
	addlw	02h
	movwf	fsr0
	movf	(??_Dimmer_ReadAD+0)+0,w
	movwf	indf
	goto	l4094
	line	90
	
l837:	
	line	91
	
l4092:	
;Dimmer.c: 90: else
;Dimmer.c: 91: Dimmer->StartValue=Dimmer->VRAD*10;
	movlw	(0Ah)
	movwf	(??_Dimmer_ReadAD+0)+0
	movf	(??_Dimmer_ReadAD+0)+0,w
	movwf	(?___bmul)
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Dimmer_ReadAD+1)+0
	movf	(_Dimmer),w
	addlw	02h
	movwf	fsr0
	movf	(??_Dimmer_ReadAD+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l4094
	
l838:	
	goto	l4094
	
l836:	
	line	92
	
l4094:	
;Dimmer.c: 92: if(Dimmer->ADOK==0)
	movf	(_Dimmer),w
	movwf	fsr0
	btfsc	indf,4
	goto	u2971
	goto	u2970
u2971:
	goto	l840
u2970:
	line	93
	
l4096:	
;Dimmer.c: 93: Dimmer->ADOK=1;
	movf	(_Dimmer),w
	movwf	fsr0
	bsf	indf,4
	goto	l840
	
l839:	
	goto	l840
	line	94
	
l834:	
	goto	l840
	line	95
	
l825:	
	goto	l840
	line	96
	
l824:	
	line	97
	
l840:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_ReadAD
	__end_of_Dimmer_ReadAD:
;; =============== function _Dimmer_ReadAD ends ============

	signat	_Dimmer_ReadAD,88
	global	___awdiv
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:

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
;;		_Dimmer_ReadAD
;; This function uses a non-reentrant model
;;
psect	text286
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l4014:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2781
	goto	u2780
u2781:
	goto	l4018
u2780:
	line	11
	
l4016:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l4018
	line	13
	
l2634:	
	line	14
	
l4018:	
	btfss	(___awdiv@dividend+1),7
	goto	u2791
	goto	u2790
u2791:
	goto	l4024
u2790:
	line	15
	
l4020:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l4022:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l4024
	line	17
	
l2635:	
	line	18
	
l4024:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l4026:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2801
	goto	u2800
u2801:
	goto	l4046
u2800:
	line	20
	
l4028:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l4034
	
l2638:	
	line	22
	
l4030:	
	movlw	01h
	
u2815:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2815
	line	23
	
l4032:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l4034
	line	24
	
l2637:	
	line	21
	
l4034:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l4030
u2820:
	goto	l4036
	
l2639:	
	goto	l4036
	line	25
	
l2640:	
	line	26
	
l4036:	
	movlw	01h
	
u2835:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2835
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2845
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2845:
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l4042
u2840:
	line	28
	
l4038:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l4040:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l4042
	line	30
	
l2641:	
	line	31
	
l4042:	
	movlw	01h
	
u2855:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2855
	line	32
	
l4044:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l4036
u2860:
	goto	l4046
	
l2642:	
	goto	l4046
	line	33
	
l2636:	
	line	34
	
l4046:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2870
	goto	l4050
u2870:
	line	35
	
l4048:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l4050
	
l2643:	
	line	36
	
l4050:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2644
	
l4052:	
	line	37
	
l2644:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___bmul
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    1[BANK0 ] unsigned char 
;;  product         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       2       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Dimmer_ReadAD
;; This function uses a non-reentrant model
;;
psect	text287
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l4000:	
	clrf	(___bmul@product)
	line	6
	
l2488:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l4004
u2760:
	line	8
	
l4002:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l4004
	
l2489:	
	line	9
	
l4004:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l4006:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l4008:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l2488
u2770:
	goto	l4010
	
l2490:	
	line	12
	
l4010:	
	movf	(___bmul@product),w
	goto	l2491
	
l4012:	
	line	13
	
l2491:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_Mcu_Initial
psect	text288,local,class=CODE,delta=2
global __ptext288
__ptext288:

;; *************** function _Mcu_Initial *****************
;; Defined at:
;;		line 78 in file "G:\Program\PIC\Source_File\MCU_16F723A.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
psect	text288
	file	"G:\Program\PIC\Source_File\MCU_16F723A.c"
	line	78
	global	__size_of_Mcu_Initial
	__size_of_Mcu_Initial	equ	__end_of_Mcu_Initial-_Mcu_Initial
	
_Mcu_Initial:	
	opt	stack 6
; Regs used in _Mcu_Initial: [wreg+status,2]
	line	80
	
l3852:	
;MCU_16F723A.c: 80: MISR=&VarISR;
	movlw	(_VarISR)&0ffh
	movwf	(??_Mcu_Initial+0)+0
	movf	(??_Mcu_Initial+0)+0,w
	movwf	(_MISR)
	line	83
;MCU_16F723A.c: 83: TRISA=0xaf;
	movlw	(0AFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	84
;MCU_16F723A.c: 84: TRISB=0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	85
	
l3854:	
;MCU_16F723A.c: 85: TRISC=0x00;
	clrf	(135)^080h	;volatile
	line	87
	
l3856:	
;MCU_16F723A.c: 87: ANSELA=0x07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(389)^0180h	;volatile
	line	88
	
l3858:	
;MCU_16F723A.c: 88: ANSELB=0x01;
	movlw	(01h)
	movwf	(390)^0180h	;volatile
	line	90
	
l3860:	
;MCU_16F723A.c: 90: PORTA=0xaf;
	movlw	(0AFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	91
	
l3862:	
;MCU_16F723A.c: 91: PORTB=0x01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	92
	
l3864:	
;MCU_16F723A.c: 92: PORTC=0x00;
	clrf	(7)	;volatile
	line	95
;MCU_16F723A.c: 95: OSCCON=0x30;
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(144)^080h	;volatile
	line	97
;MCU_16F723A.c: 97: OPTION_REG=1;
	movlw	(01h)
	movwf	(129)^080h	;volatile
	line	101
;MCU_16F723A.c: 101: ADCON1=0x73;
	movlw	(073h)
	movwf	(159)^080h	;volatile
	line	102
;MCU_16F723A.c: 102: FVRCON=0xc1;
	movlw	(0C1h)
	movwf	(157)^080h	;volatile
	line	105
	
l3866:	
;MCU_16F723A.c: 105: GIE=1;
	bsf	(95/8),(95)&7
	line	106
	
l3868:	
;MCU_16F723A.c: 106: PEIE=0;
	bcf	(94/8),(94)&7
	line	107
	
l3870:	
;MCU_16F723A.c: 107: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	108
;MCU_16F723A.c: 108: TMR0=256-100;
	movlw	(09Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	128
	
l1660:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initial
	__end_of_Mcu_Initial:
;; =============== function _Mcu_Initial ends ============

	signat	_Mcu_Initial,88
	global	_Dimmer_Main
psect	text289,local,class=CODE,delta=2
global __ptext289
__ptext289:

;; *************** function _Dimmer_Main *****************
;; Defined at:
;;		line 16 in file "G:\Program\PIC\Source_File\Dimmer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h
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
psect	text289
	file	"G:\Program\PIC\Source_File\Dimmer.c"
	line	16
	global	__size_of_Dimmer_Main
	__size_of_Dimmer_Main	equ	__end_of_Dimmer_Main-_Dimmer_Main
	
_Dimmer_Main:	
	opt	stack 6
; Regs used in _Dimmer_Main: [wregfsr0]
	line	17
	
l3808:	
;Dimmer.c: 17: if(Dimmer->Enable==1)
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u2391
	goto	u2390
u2391:
	goto	l821
u2390:
	line	19
	
l3810:	
;Dimmer.c: 18: {
;Dimmer.c: 19: if(Dimmer->ADOK==1)
	movf	(_Dimmer),w
	movwf	fsr0
	btfss	indf,4
	goto	u2401
	goto	u2400
u2401:
	goto	l821
u2400:
	line	21
	
l3812:	
;Dimmer.c: 20: {
;Dimmer.c: 21: if(RA7==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(47/8),(47)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l3818
u2410:
	line	23
	
l3814:	
;Dimmer.c: 22: {
;Dimmer.c: 23: if(Dimmer->Status==0)
	movf	(_Dimmer),w
	movwf	fsr0
	btfsc	indf,2
	goto	u2421
	goto	u2420
u2421:
	goto	l818
u2420:
	line	25
	
l3816:	
;Dimmer.c: 24: {
;Dimmer.c: 25: Dimmer->Status=1;
	movf	(_Dimmer),w
	movwf	fsr0
	bsf	indf,2
	line	26
;Dimmer.c: 26: Dimmer->GO=1;
	movf	(_Dimmer),w
	movwf	fsr0
	bsf	indf,1
	goto	l818
	line	27
	
l817:	
	line	28
;Dimmer.c: 27: }
;Dimmer.c: 28: }
	goto	l818
	line	29
	
l816:	
	line	31
	
l3818:	
;Dimmer.c: 29: else
;Dimmer.c: 30: {
;Dimmer.c: 31: if(Dimmer->Status==1)
	movf	(_Dimmer),w
	movwf	fsr0
	btfss	indf,2
	goto	u2431
	goto	u2430
u2431:
	goto	l818
u2430:
	line	33
	
l3820:	
;Dimmer.c: 32: {
;Dimmer.c: 33: Dimmer->Status=0;
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	indf,2
	line	34
;Dimmer.c: 34: Dimmer->GO=1;
	movf	(_Dimmer),w
	movwf	fsr0
	bsf	indf,1
	goto	l818
	line	35
	
l819:	
	line	36
	
l818:	
	line	39
;Dimmer.c: 35: }
;Dimmer.c: 36: }
;Dimmer.c: 39: if(Dimmer->Count>=Dimmer->StartValue)
	movf	(_Dimmer),w
	addlw	02h
	movwf	fsr
	movf	indf,w
	movwf	(??_Dimmer_Main+0)+0
	movf	(_Dimmer),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Dimmer_Main+1)+0
	movf	(??_Dimmer_Main+0)+0,w
	subwf	(??_Dimmer_Main+1)+0,w
	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l821
u2440:
	line	41
	
l3822:	
;Dimmer.c: 40: {
;Dimmer.c: 41: Dimmer->Count=0;
	movf	(_Dimmer),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	line	42
;Dimmer.c: 42: Dimmer->GO=0;
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	indf,1
	line	43
	
l3824:	
;Dimmer.c: 43: RB3=1;
	bsf	(51/8),(51)&7
	line	44
	
l3826:	
;Dimmer.c: 44: RB2=1;
	bsf	(50/8),(50)&7
	goto	l821
	line	45
	
l820:	
	goto	l821
	line	46
	
l815:	
	goto	l821
	line	47
	
l814:	
	line	48
	
l821:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_Main
	__end_of_Dimmer_Main:
;; =============== function _Dimmer_Main ends ============

	signat	_Dimmer_Main,88
	global	_Dimmer_Initial
psect	text290,local,class=CODE,delta=2
global __ptext290
__ptext290:

;; *************** function _Dimmer_Initial *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\Dimmer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h
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
psect	text290
	file	"G:\Program\PIC\Source_File\Dimmer.c"
	line	8
	global	__size_of_Dimmer_Initial
	__size_of_Dimmer_Initial	equ	__end_of_Dimmer_Initial-_Dimmer_Initial
	
_Dimmer_Initial:	
	opt	stack 6
; Regs used in _Dimmer_Initial: [wregfsr0]
	line	9
	
l3802:	
;Dimmer.c: 9: Dimmer=&VarDimmer;
	movlw	(_VarDimmer)&0ffh
	movwf	(??_Dimmer_Initial+0)+0
	movf	(??_Dimmer_Initial+0)+0,w
	movwf	(_Dimmer)
	line	10
	
l3804:	
;Dimmer.c: 10: Dimmer->Enable=1;
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	11
	
l3806:	
;Dimmer.c: 11: Dimmer->GO_nDONE=1;
	movf	(_Dimmer),w
	movwf	fsr0
	bsf	indf,3
	line	12
	
l811:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_Initial
	__end_of_Dimmer_Initial:
;; =============== function _Dimmer_Initial ends ============

	signat	_Dimmer_Initial,88
	global	_ISR
psect	text291,local,class=CODE,delta=2
global __ptext291
__ptext291:

;; *************** function _ISR *****************
;; Defined at:
;;		line 13 in file "G:\Program\PIC\Source_File\MCU_16F723A.c"
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
;;      Temps:          5       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text291
	file	"G:\Program\PIC\Source_File\MCU_16F723A.c"
	line	13
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 5
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
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text291
	line	14
	
i1l3828:	
;MCU_16F723A.c: 14: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l1657
u245_20:
	
i1l3830:	
	btfss	(90/8),(90)&7
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l1657
u246_20:
	line	16
	
i1l3832:	
;MCU_16F723A.c: 15: {
;MCU_16F723A.c: 16: if(MISR->Count<100 && MISR->Timeout==0)
	movf	(_MISR),w
	addlw	01h
	movwf	fsr0
	movlw	(064h)
	bcf	status, 7	;select IRP bank0
	subwf	indf,w
	skipnc
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l3838
u247_20:
	
i1l3834:	
	movf	(_MISR),w
	movwf	fsr0
	btfsc	indf,0
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l3838
u248_20:
	line	17
	
i1l3836:	
;MCU_16F723A.c: 17: MISR->Count++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_MISR),w
	addlw	01h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	addwf	indf,f
	goto	i1l1653
	line	18
	
i1l1652:	
	line	20
	
i1l3838:	
;MCU_16F723A.c: 18: else
;MCU_16F723A.c: 19: {
;MCU_16F723A.c: 20: MISR->Count=0;
	movf	(_MISR),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	line	21
;MCU_16F723A.c: 21: MISR->Timeout=1;
	movf	(_MISR),w
	movwf	fsr0
	bsf	indf,0
	line	22
	
i1l1653:	
	line	24
;MCU_16F723A.c: 22: }
;MCU_16F723A.c: 24: if(Dimmer->GO==1)
	movf	(_Dimmer),w
	movwf	fsr0
	btfss	indf,1
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l3842
u249_20:
	line	25
	
i1l3840:	
;MCU_16F723A.c: 25: Dimmer->Count++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Dimmer),w
	addlw	01h
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	addwf	indf,f
	goto	i1l3842
	
i1l1654:	
	line	26
	
i1l3842:	
;MCU_16F723A.c: 26: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l1655
u250_20:
	line	27
	
i1l3844:	
;MCU_16F723A.c: 27: RB3=0;
	bcf	(51/8),(51)&7
	
i1l1655:	
	line	28
;MCU_16F723A.c: 28: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l3848
u251_20:
	line	37
	
i1l3846:	
;MCU_16F723A.c: 29: {
;MCU_16F723A.c: 37: RB2=0;
	bcf	(50/8),(50)&7
	goto	i1l3848
	line	38
	
i1l1656:	
	line	57
	
i1l3848:	
;MCU_16F723A.c: 38: }
;MCU_16F723A.c: 57: TMR0=256-100;
	movlw	(09Ch)
	movwf	(1)	;volatile
	line	58
	
i1l3850:	
;MCU_16F723A.c: 58: TMR0IF=0;
	bcf	(90/8),(90)&7
	goto	i1l1657
	line	59
	
i1l1651:	
	line	74
	
i1l1657:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text292,local,class=CODE,delta=2
global __ptext292
__ptext292:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
