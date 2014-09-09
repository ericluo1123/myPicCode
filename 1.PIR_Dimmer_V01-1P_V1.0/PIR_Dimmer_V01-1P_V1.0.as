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
# 9 "G:\Program\PIC\Source_File\MCU_16F723A.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "G:\Program\PIC\Source_File\MCU_16F723A.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF ;#
# 10 "G:\Program\PIC\Source_File\MCU_16F723A.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "G:\Program\PIC\Source_File\MCU_16F723A.c"
	dw 0xFFFF ;#
	FNCALL	_main,_Mcu_Initial
	FNCALL	_main,_LED_Setting
	FNCALL	_main,_TMR1_Main
	FNCALL	_main,_LED_Main
	FNCALL	_main,_Buzzer_Main
	FNCALL	_main,_CDS_Main
	FNCALL	_main,_PIR_Main
	FNCALL	_PIR_Main,___awdiv
	FNCALL	_PIR_Main,___wmul
	FNCALL	_PIR_Main,___lwdiv
	FNCALL	_PIR_Main,_PIR_Switch
	FNCALL	_PIR_Main,_LED_Setting
	FNCALL	_PIR_Main,_Dimmer_Control
	FNCALL	_PIR_Switch,_LED_Setting
	FNCALL	_PIR_Switch,_Dimmer_Control
	FNROOT	_main
	FNCALL	_ISR,_Dimmer_Main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_PIRSwitch
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"G:\Program\PIC\Source_File\../Header_File/PIR_Dimmer_V01-1P_V1.0.h"
	line	7

;initializer for _PIRSwitch
	retlw	01h
	global	_Buzzer
	global	_CDS
	global	_PIR
	global	_VarDimmer
	global	_VarTimer1
	global	_VarCDS
	global	_VarBuzzer
	global	_VarLED
	global	_VarPIR
	global	_Dimmer
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_Dimmer:
       ds      1

	global	_LED
_LED:
       ds      1

	global	_Timer1
_Timer1:
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
	global	_TMR0
_TMR0	set	1
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
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR1IF
_TMR1IF	set	96
	global	_ADCON1
_ADCON1	set	159
	global	_FVRCON
_FVRCON	set	157
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
	file	"PIR_Dimmer_V01-1P_V1.0.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"G:\Program\PIC\Source_File\../Header_File/PIR_Dimmer_V01-1P_V1.0.h"
_PIRSwitch:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Buzzer:
       ds      1

_CDS:
       ds      1

_PIR:
       ds      1

_VarDimmer:
       ds      14

_VarTimer1:
       ds      9

_VarCDS:
       ds      6

_VarBuzzer:
       ds      4

_VarLED:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_VarPIR:
       ds      32

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
	movlw	low((__pbssBANK0)+026h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+020h)
	fcall	clear_ram
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_TMR1_Main
?_TMR1_Main:	; 0 bytes @ 0x0
	global	?_CDS_Main
?_CDS_Main:	; 0 bytes @ 0x0
	global	?_PIR_Main
?_PIR_Main:	; 0 bytes @ 0x0
	global	?_PIR_Switch
?_PIR_Switch:	; 0 bytes @ 0x0
	global	?_Buzzer_Main
?_Buzzer_Main:	; 0 bytes @ 0x0
	global	?_Dimmer_Main
?_Dimmer_Main:	; 0 bytes @ 0x0
	global	??_Dimmer_Main
??_Dimmer_Main:	; 0 bytes @ 0x0
	global	?_Dimmer_Control
?_Dimmer_Control:	; 0 bytes @ 0x0
	global	?_LED_Setting
?_LED_Setting:	; 0 bytes @ 0x0
	global	?_LED_Main
?_LED_Main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_Mcu_Initial
?_Mcu_Initial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	??_ISR
??_ISR:	; 0 bytes @ 0x2
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_TMR1_Main
??_TMR1_Main:	; 0 bytes @ 0x0
	global	??_CDS_Main
??_CDS_Main:	; 0 bytes @ 0x0
	global	??_Buzzer_Main
??_Buzzer_Main:	; 0 bytes @ 0x0
	global	??_Dimmer_Control
??_Dimmer_Control:	; 0 bytes @ 0x0
	global	??_LED_Setting
??_LED_Setting:	; 0 bytes @ 0x0
	global	??_LED_Main
??_LED_Main:	; 0 bytes @ 0x0
	global	??_Mcu_Initial
??_Mcu_Initial:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	LED_Setting@number
LED_Setting@number:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	Dimmer_Control@number
Dimmer_Control@number:	; 1 bytes @ 0x1
	ds	1
	global	??_PIR_Switch
??_PIR_Switch:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_PIR_Main
??_PIR_Main:	; 0 bytes @ 0x9
	ds	4
	global	PIR_Main@i
PIR_Main@i:	; 1 bytes @ 0xD
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xE
	ds	1
;;Data sizes: Strings 0, constant 0, data 1, bss 70, persistent 3 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       9
;; BANK0           80     15      56
;; BANK1           80      0      32
;; BANK2           16      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; CDS	PTR struct CDS size(1) Largest target is 6
;;		 -> NULL(NULL[0]), VarCDS(BANK0[6]), 
;;
;; Timer1	PTR struct Timer1 size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarTimer1(BANK0[9]), 
;;
;; LED	PTR struct LED size(1) Largest target is 2
;;		 -> NULL(NULL[0]), VarLED(BANK0[2]), 
;;
;; PIR	PTR struct PIR size(1) Largest target is 32
;;		 -> NULL(NULL[0]), VarPIR(BANK1[32]), 
;;
;; Dimmer	PTR struct Dimmer size(1) Largest target is 14
;;		 -> NULL(NULL[0]), VarDimmer(BANK0[14]), 
;;
;; Buzzer	PTR struct Buzzer size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarBuzzer(BANK0[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_Dimmer_Main
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_PIR_Main
;;   _PIR_Main->___awdiv
;;   _PIR_Switch->_Dimmer_Control
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
;; (0) _main                                                 1     1      0     974
;;                                             14 BANK0      1     1      0
;;                        _Mcu_Initial
;;                        _LED_Setting
;;                          _TMR1_Main
;;                           _LED_Main
;;                        _Buzzer_Main
;;                           _CDS_Main
;;                           _PIR_Main
;; ---------------------------------------------------------------------------------
;; (1) _PIR_Main                                             5     5      0     886
;;                                              9 BANK0      5     5      0
;;                            ___awdiv
;;                             ___wmul
;;                            ___lwdiv
;;                         _PIR_Switch
;;                        _LED_Setting
;;                     _Dimmer_Control
;; ---------------------------------------------------------------------------------
;; (2) _PIR_Switch                                           1     1      0     132
;;                                              2 BANK0      1     1      0
;;                        _LED_Setting
;;                     _Dimmer_Control
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _CDS_Main                                             3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _TMR1_Main                                            2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initial                                          1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _LED_Main                                             1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _LED_Setting                                          1     1      0      88
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Dimmer_Control                                       2     2      0      44
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Buzzer_Main                                          1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ISR                                                  6     6      0       0
;;                                              2 COMMON     6     6      0
;;                        _Dimmer_Main
;; ---------------------------------------------------------------------------------
;; (5) _Dimmer_Main                                          2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Mcu_Initial
;;   _LED_Setting
;;   _TMR1_Main
;;   _LED_Main
;;   _Buzzer_Main
;;   _CDS_Main
;;   _PIR_Main
;;     ___awdiv
;;     ___wmul
;;     ___lwdiv
;;     _PIR_Switch
;;       _LED_Setting
;;       _Dimmer_Control
;;     _LED_Setting
;;     _Dimmer_Control
;;
;; _ISR (ROOT)
;;   _Dimmer_Main
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               10      0       0       9        0.0%
;;BITBANK2            10      0       0       8        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      20       7       40.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      68      10        0.0%
;;ABS                  0      0      61       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50      F      38       5       70.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       9       1       64.3%
;;BITCOMMON            E      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\PIR_Dimmer_V01-1P_V1.0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Mcu_Initial
;;		_LED_Setting
;;		_TMR1_Main
;;		_LED_Main
;;		_Buzzer_Main
;;		_CDS_Main
;;		_PIR_Main
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Program\PIC\Source_File\PIR_Dimmer_V01-1P_V1.0.c"
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	8
	
l8153:	
;PIR_Dimmer_V01-1P_V1.0.c: 8: Mcu_Initial();
	fcall	_Mcu_Initial
	line	9
	
l8155:	
;PIR_Dimmer_V01-1P_V1.0.c: 9: Dimmer=&VarDimmer; Dimmer->Enable=1; Dimmer->Maxmum=41; Dimmer->Minimum=132; Dimmer->DimmingValue=Dimmer->Minimum; Dimmer->GO_nDONE=0;
	movlw	(_VarDimmer)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Dimmer)
	
l8157:	
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	
l8159:	
	movlw	(029h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Bh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l8161:	
	movlw	(084h)
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	0Ch
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l8163:	
	movf	(_Dimmer),w
	addlw	0Ch
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l8165:	
	movf	(_Dimmer),w
	movwf	fsr0
	bcf	indf,1
	line	10
	
l8167:	
;PIR_Dimmer_V01-1P_V1.0.c: 10: LED=&VarLED; LED->Enable=1; if(RB5 == 0) RB5 = 1; if(RB4 == 0) RB4 = 1; if(RB3 == 0) RB3 = 1;
	movlw	(_VarLED)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_LED)
	
l8169:	
	movf	(_LED),w
	movwf	fsr0
	bsf	indf,0
	
l8171:	
	btfsc	(53/8),(53)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l4242
u4170:
	
l8173:	
	bsf	(53/8),(53)&7
	
l4242:	
	btfsc	(52/8),(52)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l4243
u4180:
	
l8175:	
	bsf	(52/8),(52)&7
	
l4243:	
	btfsc	(51/8),(51)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l8179
u4190:
	
l8177:	
	bsf	(51/8),(51)&7
	goto	l8179
	
l4244:	
	line	11
	
l8179:	
;PIR_Dimmer_V01-1P_V1.0.c: 11: Buzzer=&VarBuzzer; Buzzer->Enable=1;
	movlw	(_VarBuzzer)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Buzzer)
	
l8181:	
	movf	(_Buzzer),w
	movwf	fsr0
	bsf	indf,0
	line	12
	
l8183:	
;PIR_Dimmer_V01-1P_V1.0.c: 12: CDS=&VarCDS; CDS->Enable=1;
	movlw	(_VarCDS)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_CDS)
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,0
	line	13
	
l8185:	
;PIR_Dimmer_V01-1P_V1.0.c: 13: PIR=&VarPIR; PIR->Enable=1; PIR->RangeValue=8; PIR->CloseTimeValue=150; LED_Setting(1);
	movlw	(_VarPIR)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_PIR)
	
l8187:	
	movf	(_PIR),w
	movwf	fsr0
	bsf	indf,0
	
l8189:	
	movlw	(08h)
	movwf	(??_main+0)+0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	
l8191:	
	movf	(_PIR),w
	addlw	018h
	movwf	fsr0
	movlw	low(096h)
	movwf	indf
	incf	fsr0,f
	movlw	high(096h)
	movwf	indf
	
l8193:	
	movlw	(01h)
	fcall	_LED_Setting
	goto	l8195
	line	14
;PIR_Dimmer_V01-1P_V1.0.c: 14: while(1)
	
l4245:	
	line	16
	
l8195:	
;PIR_Dimmer_V01-1P_V1.0.c: 15: {
;PIR_Dimmer_V01-1P_V1.0.c: 16: if(Timer1->Timeout==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Timer1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,2
	goto	u4201
	goto	u4200
u4201:
	goto	l8195
u4200:
	line	18
	
l8197:	
;PIR_Dimmer_V01-1P_V1.0.c: 17: {
;PIR_Dimmer_V01-1P_V1.0.c: 18: Timer1->Timeout=0;
	movf	(_Timer1),w
	movwf	fsr0
	bcf	indf,2
	line	19
	
l8199:	
;PIR_Dimmer_V01-1P_V1.0.c: 19: TMR1_Main();
	fcall	_TMR1_Main
	line	20
	
l8201:	
;PIR_Dimmer_V01-1P_V1.0.c: 20: LED_Main();
	fcall	_LED_Main
	line	21
	
l8203:	
;PIR_Dimmer_V01-1P_V1.0.c: 21: Buzzer_Main();
	fcall	_Buzzer_Main
	line	22
	
l8205:	
;PIR_Dimmer_V01-1P_V1.0.c: 22: CDS_Main();
	fcall	_CDS_Main
	line	23
	
l8207:	
;PIR_Dimmer_V01-1P_V1.0.c: 23: PIR_Main();
	fcall	_PIR_Main
	goto	l8195
	line	24
	
l4246:	
	goto	l8195
	line	25
	
l4247:	
	line	14
	goto	l8195
	
l4248:	
	line	26
	
l4249:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_PIR_Main
psect	text381,local,class=CODE,delta=2
global __ptext381
__ptext381:

;; *************** function _PIR_Main *****************
;; Defined at:
;;		line 62 in file "G:\Program\PIC\Source_File\Sensor_PIR+CDS.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		___wmul
;;		___lwdiv
;;		_PIR_Switch
;;		_LED_Setting
;;		_Dimmer_Control
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text381
	file	"G:\Program\PIC\Source_File\Sensor_PIR+CDS.c"
	line	62
	global	__size_of_PIR_Main
	__size_of_PIR_Main	equ	__end_of_PIR_Main-_PIR_Main
	
_PIR_Main:	
	opt	stack 3
; Regs used in _PIR_Main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
l8017:	
;Sensor_PIR+CDS.c: 63: char i;
;Sensor_PIR+CDS.c: 64: if(PIR->Enable == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u3881
	goto	u3880
u3881:
	goto	l5145
u3880:
	line	66
	
l8019:	
;Sensor_PIR+CDS.c: 65: {
;Sensor_PIR+CDS.c: 66: PIR->Time++;
	movlw	(01h)
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	addwf	indf,f
	line	67
	
l8021:	
;Sensor_PIR+CDS.c: 67: if(PIR->Time == 10)
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorlw	0Ah
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l5145
u3890:
	line	69
	
l8023:	
;Sensor_PIR+CDS.c: 68: {
;Sensor_PIR+CDS.c: 69: PIR->Time=0;
	movf	(_PIR),w
	addlw	04h
	movwf	fsr0
	clrf	indf
	line	70
;Sensor_PIR+CDS.c: 70: PIR->GO_nDONE=1;
	movf	(_PIR),w
	movwf	fsr0
	bsf	indf,1
	line	71
	
l8025:	
;Sensor_PIR+CDS.c: 71: ADCON1=0x70;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	74
	
l8027:	
;Sensor_PIR+CDS.c: 74: ADCON0=0x05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	76
	
l8029:	
;Sensor_PIR+CDS.c: 76: GO_nDONE=1;
	bsf	(249/8),(249)&7
	line	77
;Sensor_PIR+CDS.c: 77: while(GO_nDONE);
	goto	l5102
	
l5103:	
	
l5102:	
	btfsc	(249/8),(249)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l5102
u3900:
	goto	l8031
	
l5104:	
	line	78
	
l8031:	
;Sensor_PIR+CDS.c: 78: PIR->VRAD=ADRES/13;
	movlw	low(0Dh)
	movwf	(?___awdiv)
	movlw	high(0Dh)
	movwf	((?___awdiv))+1
	movf	(30),w	;volatile
	movwf	(??_PIR_Main+0)+0
	clrf	(??_PIR_Main+0)+0+1
	movf	0+(??_PIR_Main+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_PIR_Main+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_PIR_Main+2)+0
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	(??_PIR_Main+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	81
	
l8033:	
;Sensor_PIR+CDS.c: 81: ADCON0=0x0d;
	movlw	(0Dh)
	movwf	(31)	;volatile
	line	83
	
l8035:	
;Sensor_PIR+CDS.c: 83: GO_nDONE=1;
	bsf	(249/8),(249)&7
	line	84
;Sensor_PIR+CDS.c: 84: while(GO_nDONE);
	goto	l5105
	
l5106:	
	
l5105:	
	btfsc	(249/8),(249)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l5105
u3910:
	goto	l8037
	
l5107:	
	line	85
	
l8037:	
;Sensor_PIR+CDS.c: 85: PIR->SignalAD=ADRES;
	movf	(30),w	;volatile
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	87
;Sensor_PIR+CDS.c: 87: PIR->GO_nDONE=0;
	movf	(_PIR),w
	movwf	fsr0
	bcf	indf,1
	line	88
;Sensor_PIR+CDS.c: 88: PIR->GO=1;
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	bsf	indf,0
	line	91
	
l8039:	
;Sensor_PIR+CDS.c: 91: if(PIR->VRAD==0)
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l8043
u3920:
	line	92
	
l8041:	
;Sensor_PIR+CDS.c: 92: PIR->CloseTimeValue=150;
	movf	(_PIR),w
	addlw	018h
	movwf	fsr0
	movlw	low(096h)
	movwf	indf
	incf	fsr0,f
	movlw	high(096h)
	movwf	indf
	goto	l8045
	line	93
	
l5108:	
	line	94
	
l8043:	
;Sensor_PIR+CDS.c: 93: else
;Sensor_PIR+CDS.c: 94: PIR->CloseTimeValue=350*PIR->VRAD;
	movf	(_PIR),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0
	clrf	(??_PIR_Main+0)+0+1
	movf	0+(??_PIR_Main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_PIR_Main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(015Eh)
	movwf	0+(?___wmul)+02h
	movlw	high(015Eh)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	018h
	movwf	fsr0
	movf	(0+(?___wmul)),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(1+(?___wmul)),w
	movwf	indf
	goto	l8045
	
l5109:	
	line	97
	
l8045:	
;Sensor_PIR+CDS.c: 97: PIR->TenAverage[PIR->ADCount]=PIR->SignalAD;
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	addlw	07h
	addwf	(_PIR),w
	movwf	(??_PIR_Main+1)+0
	movf	0+(??_PIR_Main+1)+0,w
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	movwf	indf
	line	98
	
l8047:	
;Sensor_PIR+CDS.c: 98: for(i=0;i<=9;i++)
	clrf	(PIR_Main@i)
	
l8049:	
	movlw	(0Ah)
	subwf	(PIR_Main@i),w
	skipc
	goto	u3931
	goto	u3930
u3931:
	goto	l8053
u3930:
	goto	l8059
	
l8051:	
	goto	l8059
	line	99
	
l5110:	
	
l8053:	
;Sensor_PIR+CDS.c: 99: PIR->TenAverageValue+=PIR->TenAverage[i];
	movf	(PIR_Main@i),w
	addlw	07h
	addwf	(_PIR),w
	movwf	(??_PIR_Main+0)+0
	movf	0+(??_PIR_Main+0)+0,w
	movwf	fsr0
	movf	indf,w
	movwf	(??_PIR_Main+1)+0
	clrf	(??_PIR_Main+1)+0+1
	movf	(_PIR),w
	addlw	011h
	movwf	fsr0
	movf	0+(??_PIR_Main+1)+0,w
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	1+(??_PIR_Main+1)+0,w
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	98
	
l8055:	
	movlw	(01h)
	movwf	(??_PIR_Main+0)+0
	movf	(??_PIR_Main+0)+0,w
	addwf	(PIR_Main@i),f
	
l8057:	
	movlw	(0Ah)
	subwf	(PIR_Main@i),w
	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l8053
u3940:
	goto	l8059
	
l5111:	
	line	100
	
l8059:	
;Sensor_PIR+CDS.c: 100: PIR->CenterVoltage=PIR->TenAverageValue/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_PIR),w
	addlw	011h
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
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	101
	
l8061:	
;Sensor_PIR+CDS.c: 101: PIR->TenAverageValue=0;
	movf	(_PIR),w
	addlw	011h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	103
	
l8063:	
;Sensor_PIR+CDS.c: 103: if(PIR->ADCount<10)
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movlw	(0Ah)
	subwf	indf,w
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l8067
u3950:
	line	104
	
l8065:	
;Sensor_PIR+CDS.c: 104: PIR->ADCount++;
	movlw	(01h)
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	addwf	indf,f
	goto	l8069
	line	105
	
l5112:	
	line	106
	
l8067:	
;Sensor_PIR+CDS.c: 105: else
;Sensor_PIR+CDS.c: 106: PIR->ADCount=0;
	movf	(_PIR),w
	addlw	05h
	movwf	fsr0
	clrf	indf
	goto	l8069
	
l5113:	
	line	108
	
l8069:	
;Sensor_PIR+CDS.c: 108: PIR_Switch();
	fcall	_PIR_Switch
	line	110
	
l8071:	
;Sensor_PIR+CDS.c: 110: if(PIR->OK==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u3961
	goto	u3960
u3961:
	goto	l8145
u3960:
	line	112
	
l8073:	
;Sensor_PIR+CDS.c: 111: {
;Sensor_PIR+CDS.c: 112: if(PIR->GO==1)
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	btfss	indf,0
	goto	u3971
	goto	u3970
u3971:
	goto	l5145
u3970:
	line	114
	
l8075:	
;Sensor_PIR+CDS.c: 113: {
;Sensor_PIR+CDS.c: 114: PIR->GO=0;
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	bcf	indf,0
	line	116
;Sensor_PIR+CDS.c: 116: if(PIR->Switch==1)
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	btfss	indf,2
	goto	u3981
	goto	u3980
u3981:
	goto	l5145
u3980:
	line	119
	
l8077:	
;Sensor_PIR+CDS.c: 117: {
;Sensor_PIR+CDS.c: 119: if(PIR->RangeTime<100)
	movf	(_PIR),w
	addlw	01Bh
	movwf	fsr0
	movlw	(064h)
	subwf	indf,w
	skipnc
	goto	u3991
	goto	u3990
u3991:
	goto	l8081
u3990:
	line	120
	
l8079:	
;Sensor_PIR+CDS.c: 120: PIR->RangeTime++;
	movlw	(01h)
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	01Bh
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	addwf	indf,f
	goto	l8109
	line	121
	
l5117:	
	line	123
	
l8081:	
;Sensor_PIR+CDS.c: 121: else
;Sensor_PIR+CDS.c: 122: {
;Sensor_PIR+CDS.c: 123: PIR->RangeTime=0;
	movf	(_PIR),w
	addlw	01Bh
	movwf	fsr0
	clrf	indf
	line	124
;Sensor_PIR+CDS.c: 124: if(PIR->RangeCount>=90)
	movf	(_PIR),w
	addlw	01Dh
	movwf	fsr0
	movlw	(05Ah)
	subwf	indf,w
	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l8091
u4000:
	line	126
	
l8083:	
;Sensor_PIR+CDS.c: 125: {
;Sensor_PIR+CDS.c: 126: PIR->RangeCount=0;
	movf	(_PIR),w
	addlw	01Dh
	movwf	fsr0
	clrf	indf
	line	127
;Sensor_PIR+CDS.c: 127: PIR->RangeTime1=0;
	movf	(_PIR),w
	addlw	01Ch
	movwf	fsr0
	clrf	indf
	line	128
;Sensor_PIR+CDS.c: 128: PIR->RangeCount1=0;
	movf	(_PIR),w
	addlw	01Fh
	movwf	fsr0
	clrf	indf
	line	130
;Sensor_PIR+CDS.c: 130: if(PIR->RangeValue==8)
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	indf,w
	xorlw	08h
	skipz
	goto	u4011
	goto	u4010
u4011:
	goto	l8087
u4010:
	line	131
	
l8085:	
;Sensor_PIR+CDS.c: 131: PIR->RangeValue=25;
	movlw	(019h)
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	movwf	indf
	goto	l8109
	line	132
	
l5120:	
	
l8087:	
;Sensor_PIR+CDS.c: 132: else if(PIR->RangeValue==25)
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	indf,w
	xorlw	019h
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l8109
u4020:
	line	133
	
l8089:	
;Sensor_PIR+CDS.c: 133: PIR->RangeValue=45;
	movlw	(02Dh)
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	movwf	indf
	goto	l8109
	
l5122:	
	goto	l8109
	line	134
	
l5121:	
;Sensor_PIR+CDS.c: 134: }
	goto	l8109
	line	135
	
l5119:	
	line	137
	
l8091:	
;Sensor_PIR+CDS.c: 135: else
;Sensor_PIR+CDS.c: 136: {
;Sensor_PIR+CDS.c: 137: PIR->RangeCount1+=PIR->RangeCount;
	movf	(_PIR),w
	addlw	01Dh
	movwf	fsr0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	01Fh
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	addwf	indf,f
	line	138
	
l8093:	
;Sensor_PIR+CDS.c: 138: PIR->RangeCount=0;
	movf	(_PIR),w
	addlw	01Dh
	movwf	fsr0
	clrf	indf
	line	140
	
l8095:	
;Sensor_PIR+CDS.c: 140: if(PIR->RangeTime1<6)
	movf	(_PIR),w
	addlw	01Ch
	movwf	fsr0
	movlw	(06h)
	subwf	indf,w
	skipnc
	goto	u4031
	goto	u4030
u4031:
	goto	l8099
u4030:
	line	141
	
l8097:	
;Sensor_PIR+CDS.c: 141: PIR->RangeTime1++;
	movlw	(01h)
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	01Ch
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	addwf	indf,f
	goto	l8109
	line	142
	
l5124:	
	line	144
	
l8099:	
;Sensor_PIR+CDS.c: 142: else
;Sensor_PIR+CDS.c: 143: {
;Sensor_PIR+CDS.c: 144: PIR->RangeTime1=0;
	movf	(_PIR),w
	addlw	01Ch
	movwf	fsr0
	clrf	indf
	line	145
;Sensor_PIR+CDS.c: 145: if(PIR->RangeCount1<=10)
	movf	(_PIR),w
	addlw	01Fh
	movwf	fsr0
	movlw	(0Bh)
	subwf	indf,w
	skipnc
	goto	u4041
	goto	u4040
u4041:
	goto	l5126
u4040:
	line	147
	
l8101:	
;Sensor_PIR+CDS.c: 146: {
;Sensor_PIR+CDS.c: 147: if(PIR->RangeValue==45)
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l8105
u4050:
	line	148
	
l8103:	
;Sensor_PIR+CDS.c: 148: PIR->RangeValue=25;
	movlw	(019h)
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	movwf	indf
	goto	l5126
	line	149
	
l5127:	
	
l8105:	
;Sensor_PIR+CDS.c: 149: else if(PIR->RangeValue==25)
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	indf,w
	xorlw	019h
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l5126
u4060:
	line	150
	
l8107:	
;Sensor_PIR+CDS.c: 150: PIR->RangeValue=8;
	movlw	(08h)
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	movwf	indf
	goto	l5126
	
l5129:	
	goto	l5126
	line	151
	
l5128:	
	
l5126:	
	line	152
;Sensor_PIR+CDS.c: 151: }
;Sensor_PIR+CDS.c: 152: PIR->RangeCount1=0;
	movf	(_PIR),w
	addlw	01Fh
	movwf	fsr0
	clrf	indf
	goto	l8109
	line	153
	
l5125:	
	goto	l8109
	line	154
	
l5123:	
	goto	l8109
	line	155
	
l5118:	
	line	159
	
l8109:	
;Sensor_PIR+CDS.c: 153: }
;Sensor_PIR+CDS.c: 154: }
;Sensor_PIR+CDS.c: 155: }
;Sensor_PIR+CDS.c: 159: if((PIR->SignalAD>=(PIR->CenterVoltage-PIR->RangeValue)) && (PIR->SignalAD<=(PIR->CenterVoltage+PIR->RangeValue)))
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0
	clrf	(??_PIR_Main+0)+0+1
	comf	(??_PIR_Main+0)+0,f
	comf	(??_PIR_Main+0)+1,f
	incf	(??_PIR_Main+0)+0,f
	skipnz
	incf	(??_PIR_Main+0)+1,f
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	addwf	0+(??_PIR_Main+0)+0,w
	movwf	(??_PIR_Main+2)+0
	movf	1+(??_PIR_Main+0)+0,w
	skipnc
	incf	1+(??_PIR_Main+0)+0,w
	movwf	((??_PIR_Main+2)+0)+1
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_PIR_Main+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u4075
	movf	0+(??_PIR_Main+2)+0,w
	subwf	indf,w
u4075:

	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l8127
u4070:
	
l8111:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	addwf	(??_PIR_Main+0)+0,w
	movwf	(??_PIR_Main+1)+0
	clrf	(??_PIR_Main+1)+0+1
	rlf	1+(??_PIR_Main+1)+0,f
	
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_PIR_Main+1)+0,w
	xorlw	80h
	movwf	(??_PIR_Main+3)+0
	movlw	80h
	subwf	(??_PIR_Main+3)+0,w
	skipz
	goto	u4085
	movf	indf,w
	subwf	0+(??_PIR_Main+1)+0,w
u4085:

	skipc
	goto	u4081
	goto	u4080
u4081:
	goto	l8127
u4080:
	line	161
	
l8113:	
;Sensor_PIR+CDS.c: 160: {
;Sensor_PIR+CDS.c: 161: PIR->Count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	014h
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	162
	
l8115:	
;Sensor_PIR+CDS.c: 162: LED_Setting(0);
	movlw	(0)
	fcall	_LED_Setting
	line	164
	
l8117:	
;Sensor_PIR+CDS.c: 164: PIR->CloseTime++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	016h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	165
	
l8119:	
;Sensor_PIR+CDS.c: 165: if(PIR->CloseTime == PIR->CloseTimeValue)
	movf	(_PIR),w
	addlw	018h
	movwf	fsr0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_PIR_Main+0)+0+1
	movf	(_PIR),w
	addlw	016h
	movwf	fsr0
	movf	indf,w
	movwf	(??_PIR_Main+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_PIR_Main+2)+0+1
	movf	1+(??_PIR_Main+0)+0,w
	xorwf	1+(??_PIR_Main+2)+0,w
	skipz
	goto	u4095
	movf	0+(??_PIR_Main+0)+0,w
	xorwf	0+(??_PIR_Main+2)+0,w
u4095:

	skipz
	goto	u4091
	goto	u4090
u4091:
	goto	l5145
u4090:
	line	167
	
l8121:	
;Sensor_PIR+CDS.c: 166: {
;Sensor_PIR+CDS.c: 167: PIR->CloseTime=0;
	movf	(_PIR),w
	addlw	016h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	168
;Sensor_PIR+CDS.c: 168: if(Dimmer->Lights==1 || Dimmer->Phase2 == 1) Dimmer_Control(0);
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,1
	goto	u4101
	goto	u4100
u4101:
	goto	l8125
u4100:
	
l8123:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u4111
	goto	u4110
u4111:
	goto	l5145
u4110:
	goto	l8125
	
l5134:	
	
l8125:	
	movlw	(0)
	fcall	_Dimmer_Control
	goto	l5145
	
l5132:	
	goto	l5145
	line	169
	
l5131:	
	line	171
;Sensor_PIR+CDS.c: 169: }
;Sensor_PIR+CDS.c: 171: }
	goto	l5145
	line	172
	
l5130:	
	line	174
	
l8127:	
;Sensor_PIR+CDS.c: 172: else
;Sensor_PIR+CDS.c: 173: {
;Sensor_PIR+CDS.c: 174: PIR->RangeCount++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	01Dh
	movwf	fsr0
	movf	(??_PIR_Main+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	line	175
	
l8129:	
;Sensor_PIR+CDS.c: 175: if(PIR->Count<1)
	movf	(_PIR),w
	addlw	014h
	movwf	fsr0
	movf	indf,w
	incf	fsr0,f
	iorwf	indf,w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l8133
u4120:
	line	176
	
l8131:	
;Sensor_PIR+CDS.c: 176: PIR->Count++;
	movf	(_PIR),w
	addlw	014h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	goto	l8137
	line	177
	
l5136:	
	line	179
	
l8133:	
;Sensor_PIR+CDS.c: 177: else
;Sensor_PIR+CDS.c: 178: {
;Sensor_PIR+CDS.c: 179: PIR->Count=0;
	movf	(_PIR),w
	addlw	014h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	180
;Sensor_PIR+CDS.c: 180: PIR->CloseTime=0;
	movf	(_PIR),w
	addlw	016h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	182
;Sensor_PIR+CDS.c: 182: if(Dimmer->Lights==0) Dimmer_Control(1);
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,1
	goto	u4131
	goto	u4130
u4131:
	goto	l8137
u4130:
	
l8135:	
	movlw	(01h)
	fcall	_Dimmer_Control
	goto	l8137
	
l5138:	
	goto	l8137
	line	184
	
l5137:	
	line	186
	
l8137:	
;Sensor_PIR+CDS.c: 184: }
;Sensor_PIR+CDS.c: 186: if(PIR->SignalAD<(PIR->CenterVoltage-PIR->RangeValue)) LED_Setting(1); else if(PIR->SignalAD>(PIR->CenterVoltage+PIR->RangeValue)) LED_Setting(2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0
	clrf	(??_PIR_Main+0)+0+1
	comf	(??_PIR_Main+0)+0,f
	comf	(??_PIR_Main+0)+1,f
	incf	(??_PIR_Main+0)+0,f
	skipnz
	incf	(??_PIR_Main+0)+1,f
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	addwf	0+(??_PIR_Main+0)+0,w
	movwf	(??_PIR_Main+2)+0
	movf	1+(??_PIR_Main+0)+0,w
	skipnc
	incf	1+(??_PIR_Main+0)+0,w
	movwf	((??_PIR_Main+2)+0)+1
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_PIR_Main+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u4145
	movf	0+(??_PIR_Main+2)+0,w
	subwf	indf,w
u4145:

	skipnc
	goto	u4141
	goto	u4140
u4141:
	goto	l8141
u4140:
	
l8139:	
	movlw	(01h)
	fcall	_LED_Setting
	goto	l5145
	
l5139:	
	
l8141:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0
	movf	(_PIR),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	addwf	(??_PIR_Main+0)+0,w
	movwf	(??_PIR_Main+1)+0
	clrf	(??_PIR_Main+1)+0+1
	rlf	1+(??_PIR_Main+1)+0,f
	
	movf	(_PIR),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_PIR_Main+1)+0,w
	xorlw	80h
	movwf	(??_PIR_Main+3)+0
	movlw	80h
	subwf	(??_PIR_Main+3)+0,w
	skipz
	goto	u4155
	movf	indf,w
	subwf	0+(??_PIR_Main+1)+0,w
u4155:

	skipnc
	goto	u4151
	goto	u4150
u4151:
	goto	l5145
u4150:
	
l8143:	
	movlw	(02h)
	fcall	_LED_Setting
	goto	l5145
	
l5141:	
	goto	l5145
	line	187
	
l5140:	
	goto	l5145
	
l5135:	
	goto	l5145
	line	188
	
l5116:	
	goto	l5145
	line	189
	
l5115:	
	line	190
;Sensor_PIR+CDS.c: 187: }
;Sensor_PIR+CDS.c: 188: }
;Sensor_PIR+CDS.c: 189: }
;Sensor_PIR+CDS.c: 190: }
	goto	l5145
	line	191
	
l5114:	
	line	194
	
l8145:	
;Sensor_PIR+CDS.c: 191: else
;Sensor_PIR+CDS.c: 192: {
;Sensor_PIR+CDS.c: 194: if(PIR->Count<250)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	014h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_PIR_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_PIR_Main+0)+0+1
	movlw	high(0FAh)
	subwf	1+(??_PIR_Main+0)+0,w
	movlw	low(0FAh)
	skipnz
	subwf	0+(??_PIR_Main+0)+0,w
	skipnc
	goto	u4161
	goto	u4160
u4161:
	goto	l8149
u4160:
	line	195
	
l8147:	
;Sensor_PIR+CDS.c: 195: PIR->Count++;
	movf	(_PIR),w
	addlw	014h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	goto	l5145
	line	196
	
l5143:	
	line	198
	
l8149:	
;Sensor_PIR+CDS.c: 196: else
;Sensor_PIR+CDS.c: 197: {
;Sensor_PIR+CDS.c: 198: PIR->Count=0;
	movf	(_PIR),w
	addlw	014h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	199
;Sensor_PIR+CDS.c: 199: PIR->OK=1;
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	bsf	indf,1
	line	200
	
l8151:	
;Sensor_PIR+CDS.c: 200: LED_Setting(0);
	movlw	(0)
	fcall	_LED_Setting
	goto	l5145
	line	202
;Sensor_PIR+CDS.c: 201: ;
	
l5144:	
	goto	l5145
	line	203
	
l5142:	
	goto	l5145
	line	205
	
l5101:	
	goto	l5145
	line	206
	
l5100:	
	line	207
	
l5145:	
	return
	opt stack 0
GLOBAL	__end_of_PIR_Main
	__end_of_PIR_Main:
;; =============== function _PIR_Main ends ============

	signat	_PIR_Main,88
	global	_PIR_Switch
psect	text382,local,class=CODE,delta=2
global __ptext382
__ptext382:

;; *************** function _PIR_Switch *****************
;; Defined at:
;;		line 211 in file "G:\Program\PIC\Source_File\Sensor_PIR+CDS.c"
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
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LED_Setting
;;		_Dimmer_Control
;; This function is called by:
;;		_PIR_Main
;; This function uses a non-reentrant model
;;
psect	text382
	file	"G:\Program\PIC\Source_File\Sensor_PIR+CDS.c"
	line	211
	global	__size_of_PIR_Switch
	__size_of_PIR_Switch	equ	__end_of_PIR_Switch-_PIR_Switch
	
_PIR_Switch:	
	opt	stack 3
; Regs used in _PIR_Switch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	212
	
l7995:	
;Sensor_PIR+CDS.c: 212: if(PIR->Switch==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfsc	indf,2
	goto	u3811
	goto	u3810
u3811:
	goto	l8003
u3810:
	line	214
	
l7997:	
;Sensor_PIR+CDS.c: 213: {
;Sensor_PIR+CDS.c: 214: if(PIRSwitch==1 && CDS->OK==1)
	movf	(_PIRSwitch),w
	xorlw	01h
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l5157
u3820:
	
l7999:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfss	indf,0
	goto	u3831
	goto	u3830
u3831:
	goto	l5157
u3830:
	line	216
	
l8001:	
;Sensor_PIR+CDS.c: 215: {
;Sensor_PIR+CDS.c: 216: PIR->Switch=1;
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	bsf	indf,2
	line	217
;Sensor_PIR+CDS.c: 217: PIR->RangeValue=8;
	movlw	(08h)
	movwf	(??_PIR_Switch+0)+0
	movf	(_PIR),w
	addlw	01Eh
	movwf	fsr0
	movf	(??_PIR_Switch+0)+0,w
	movwf	indf
	goto	l5157
	line	218
	
l5149:	
	line	219
;Sensor_PIR+CDS.c: 218: }
;Sensor_PIR+CDS.c: 219: }
	goto	l5157
	line	220
	
l5148:	
	line	222
	
l8003:	
;Sensor_PIR+CDS.c: 220: else
;Sensor_PIR+CDS.c: 221: {
;Sensor_PIR+CDS.c: 222: if(PIRSwitch==0 || CDS->OK==0)
	movf	(_PIRSwitch),w
	skipz
	goto	u3840
	goto	l8007
u3840:
	
l8005:	
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfsc	indf,0
	goto	u3851
	goto	u3850
u3851:
	goto	l5157
u3850:
	goto	l8007
	
l5153:	
	line	224
	
l8007:	
;Sensor_PIR+CDS.c: 223: {
;Sensor_PIR+CDS.c: 224: PIR->Switch=0;
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	bcf	indf,2
	line	225
	
l8009:	
;Sensor_PIR+CDS.c: 225: LED_Setting(0);
	movlw	(0)
	fcall	_LED_Setting
	line	226
	
l8011:	
;Sensor_PIR+CDS.c: 226: if(Dimmer->Lights==1 || Dimmer->Phase2 == 1) Dimmer_Control(0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfsc	indf,1
	goto	u3861
	goto	u3860
u3861:
	goto	l8015
u3860:
	
l8013:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u3871
	goto	u3870
u3871:
	goto	l5157
u3870:
	goto	l8015
	
l5156:	
	
l8015:	
	movlw	(0)
	fcall	_Dimmer_Control
	goto	l5157
	
l5154:	
	goto	l5157
	line	227
	
l5151:	
	goto	l5157
	line	228
	
l5150:	
	line	229
	
l5157:	
	return
	opt stack 0
GLOBAL	__end_of_PIR_Switch
	__end_of_PIR_Switch:
;; =============== function _PIR_Switch ends ============

	signat	_PIR_Switch,88
	global	___awdiv
psect	text383,local,class=CODE,delta=2
global __ptext383
__ptext383:

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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PIR_Main
;; This function uses a non-reentrant model
;;
psect	text383
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l7955:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3711
	goto	u3710
u3711:
	goto	l7959
u3710:
	line	11
	
l7957:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l7959
	line	13
	
l6145:	
	line	14
	
l7959:	
	btfss	(___awdiv@dividend+1),7
	goto	u3721
	goto	u3720
u3721:
	goto	l7965
u3720:
	line	15
	
l7961:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l7963:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l7965
	line	17
	
l6146:	
	line	18
	
l7965:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l7967:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3731
	goto	u3730
u3731:
	goto	l7987
u3730:
	line	20
	
l7969:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l7975
	
l6149:	
	line	22
	
l7971:	
	movlw	01h
	
u3745:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3745
	line	23
	
l7973:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l7975
	line	24
	
l6148:	
	line	21
	
l7975:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l7971
u3750:
	goto	l7977
	
l6150:	
	goto	l7977
	line	25
	
l6151:	
	line	26
	
l7977:	
	movlw	01h
	
u3765:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3765
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3775
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3775:
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l7983
u3770:
	line	28
	
l7979:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l7981:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l7983
	line	30
	
l6152:	
	line	31
	
l7983:	
	movlw	01h
	
u3785:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3785
	line	32
	
l7985:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l7977
u3790:
	goto	l7987
	
l6153:	
	goto	l7987
	line	33
	
l6147:	
	line	34
	
l7987:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3800
	goto	l7991
u3800:
	line	35
	
l7989:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l7991
	
l6154:	
	line	36
	
l7991:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l6155
	
l7993:	
	line	37
	
l6155:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwdiv
psect	text384,local,class=CODE,delta=2
global __ptext384
__ptext384:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    7[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PIR_Main
;; This function uses a non-reentrant model
;;
psect	text384
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l7929:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l7931:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3641
	goto	u3640
u3641:
	goto	l7951
u3640:
	line	11
	
l7933:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l7939
	
l6013:	
	line	13
	
l7935:	
	movlw	01h
	
u3655:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3655
	line	14
	
l7937:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l7939
	line	15
	
l6012:	
	line	12
	
l7939:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l7935
u3660:
	goto	l7941
	
l6014:	
	goto	l7941
	line	16
	
l6015:	
	line	17
	
l7941:	
	movlw	01h
	
u3675:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3675
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3685
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3685:
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l7947
u3680:
	line	19
	
l7943:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l7945:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l7947
	line	21
	
l6016:	
	line	22
	
l7947:	
	movlw	01h
	
u3695:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3695
	line	23
	
l7949:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l7941
u3700:
	goto	l7951
	
l6017:	
	goto	l7951
	line	24
	
l6011:	
	line	25
	
l7951:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l6018
	
l7953:	
	line	26
	
l6018:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text385,local,class=CODE,delta=2
global __ptext385
__ptext385:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PIR_Main
;; This function uses a non-reentrant model
;;
psect	text385
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l7917:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l7919
	line	6
	
l6005:	
	line	7
	
l7919:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l6006
u3600:
	line	8
	
l7921:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l6006:	
	line	9
	movlw	01h
	
u3615:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3615
	line	10
	
l7923:	
	movlw	01h
	
u3625:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3625
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l7919
u3630:
	goto	l7925
	
l6007:	
	line	12
	
l7925:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l6008
	
l7927:	
	line	13
	
l6008:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_CDS_Main
psect	text386,local,class=CODE,delta=2
global __ptext386
__ptext386:

;; *************** function _CDS_Main *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\Sensor_PIR+CDS.c"
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
;;      Temps:          0       3       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text386
	file	"G:\Program\PIC\Source_File\Sensor_PIR+CDS.c"
	line	9
	global	__size_of_CDS_Main
	__size_of_CDS_Main	equ	__end_of_CDS_Main-_CDS_Main
	
_CDS_Main:	
	opt	stack 5
; Regs used in _CDS_Main: [wreg-fsr0h+status,2+status,0]
	line	10
	
l7883:	
;Sensor_PIR+CDS.c: 10: if(CDS->Enable==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u3521
	goto	u3520
u3521:
	goto	l5097
u3520:
	line	12
	
l7885:	
;Sensor_PIR+CDS.c: 11: {
;Sensor_PIR+CDS.c: 12: CDS->Time++;
	movlw	(01h)
	movwf	(??_CDS_Main+0)+0
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	(??_CDS_Main+0)+0,w
	addwf	indf,f
	line	13
	
l7887:	
;Sensor_PIR+CDS.c: 13: if(CDS->Time == 10)
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	0Ah
	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l5097
u3530:
	line	15
	
l7889:	
;Sensor_PIR+CDS.c: 14: {
;Sensor_PIR+CDS.c: 15: CDS->Time=0;
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	line	16
	
l7891:	
;Sensor_PIR+CDS.c: 16: CDS->GO_nDONE=1;
	movf	(_CDS),w
	addlw	05h
	movwf	fsr0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	17
	
l7893:	
;Sensor_PIR+CDS.c: 17: ADCON1=0x70;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	21
	
l7895:	
;Sensor_PIR+CDS.c: 21: ADCON0=0x31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	23
	
l7897:	
;Sensor_PIR+CDS.c: 23: GO_nDONE=1;
	bsf	(249/8),(249)&7
	line	24
;Sensor_PIR+CDS.c: 24: while(GO_nDONE);
	goto	l5086
	
l5087:	
	
l5086:	
	btfsc	(249/8),(249)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l5086
u3540:
	goto	l7899
	
l5088:	
	line	25
	
l7899:	
;Sensor_PIR+CDS.c: 25: CDS->SignalAD=ADRES;
	movf	(30),w	;volatile
	movwf	(??_CDS_Main+0)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	(??_CDS_Main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	28
	
l7901:	
;Sensor_PIR+CDS.c: 28: ADCON0=0x09;
	movlw	(09h)
	movwf	(31)	;volatile
	line	30
	
l7903:	
;Sensor_PIR+CDS.c: 30: GO_nDONE=1;
	bsf	(249/8),(249)&7
	line	31
;Sensor_PIR+CDS.c: 31: while(GO_nDONE);
	goto	l5089
	
l5090:	
	
l5089:	
	btfsc	(249/8),(249)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l5089
u3550:
	goto	l7905
	
l5091:	
	line	32
	
l7905:	
;Sensor_PIR+CDS.c: 32: CDS->VRAD=ADRES;
	movf	(30),w	;volatile
	movwf	(??_CDS_Main+0)+0
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	(??_CDS_Main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	34
;Sensor_PIR+CDS.c: 34: CDS->GO_nDONE=0;
	movf	(_CDS),w
	addlw	05h
	movwf	fsr0
	clrf	indf
	line	35
;Sensor_PIR+CDS.c: 35: CDS->GO=1;
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,1
	line	38
;Sensor_PIR+CDS.c: 38: if(CDS->GO==1)
	movf	(_CDS),w
	movwf	fsr0
	btfss	indf,1
	goto	u3561
	goto	u3560
u3561:
	goto	l5097
u3560:
	line	40
	
l7907:	
;Sensor_PIR+CDS.c: 39: {
;Sensor_PIR+CDS.c: 40: CDS->GO=0;
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,1
	line	41
;Sensor_PIR+CDS.c: 41: if(CDS->OK==0)
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	btfsc	indf,0
	goto	u3571
	goto	u3570
u3571:
	goto	l7913
u3570:
	line	43
	
l7909:	
;Sensor_PIR+CDS.c: 42: {
;Sensor_PIR+CDS.c: 43: if(CDS->SignalAD >= (CDS->VRAD-40))
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	addlw	low(-40)
	movwf	(??_CDS_Main+0)+0
	movlw	high(-40)
	skipnc
	movlw	(high(-40)+1)&0ffh
	movwf	((??_CDS_Main+0)+0)+1
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	1+(??_CDS_Main+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u3585
	movf	0+(??_CDS_Main+0)+0,w
	subwf	indf,w
u3585:

	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l5097
u3580:
	line	45
	
l7911:	
;Sensor_PIR+CDS.c: 44: {
;Sensor_PIR+CDS.c: 45: CDS->OK=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	goto	l5097
	line	46
	
l5094:	
	line	47
;Sensor_PIR+CDS.c: 46: }
;Sensor_PIR+CDS.c: 47: }
	goto	l5097
	line	48
	
l5093:	
	line	50
	
l7913:	
;Sensor_PIR+CDS.c: 48: else
;Sensor_PIR+CDS.c: 49: {
;Sensor_PIR+CDS.c: 50: if(CDS->SignalAD <= (CDS->VRAD-120))
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	addlw	low(-120)
	movwf	(??_CDS_Main+0)+0
	movlw	high(-120)
	skipnc
	movlw	(high(-120)+1)&0ffh
	movwf	((??_CDS_Main+0)+0)+1
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	1+(??_CDS_Main+0)+0,w
	xorlw	80h
	movwf	(??_CDS_Main+2)+0
	movlw	80h
	subwf	(??_CDS_Main+2)+0,w
	skipz
	goto	u3595
	movf	indf,w
	subwf	0+(??_CDS_Main+0)+0,w
u3595:

	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l5097
u3590:
	line	52
	
l7915:	
;Sensor_PIR+CDS.c: 51: {
;Sensor_PIR+CDS.c: 52: CDS->OK=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,0
	goto	l5097
	line	53
	
l5096:	
	goto	l5097
	line	54
	
l5095:	
	goto	l5097
	line	55
	
l5092:	
	goto	l5097
	line	56
	
l5085:	
	goto	l5097
	line	57
	
l5084:	
	line	58
	
l5097:	
	return
	opt stack 0
GLOBAL	__end_of_CDS_Main
	__end_of_CDS_Main:
;; =============== function _CDS_Main ends ============

	signat	_CDS_Main,88
	global	_TMR1_Main
psect	text387,local,class=CODE,delta=2
global __ptext387
__ptext387:

;; *************** function _TMR1_Main *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\Timer1.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text387
	file	"G:\Program\PIC\Source_File\Timer1.c"
	line	8
	global	__size_of_TMR1_Main
	__size_of_TMR1_Main	equ	__end_of_TMR1_Main-_TMR1_Main
	
_TMR1_Main:	
	opt	stack 5
; Regs used in _TMR1_Main: [wreg-fsr0h+status,2+status,0]
	line	10
	
l7857:	
;Timer1.c: 10: if(Timer1->Count1<200)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Timer1),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_TMR1_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_TMR1_Main+0)+0+1
	movlw	high(0C8h)
	subwf	1+(??_TMR1_Main+0)+0,w
	movlw	low(0C8h)
	skipnz
	subwf	0+(??_TMR1_Main+0)+0,w
	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l7861
u3470:
	line	11
	
l7859:	
;Timer1.c: 11: Timer1->Count1++;
	movf	(_Timer1),w
	addlw	03h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	goto	l5987
	line	12
	
l5986:	
	line	14
	
l7861:	
;Timer1.c: 12: else
;Timer1.c: 13: {
;Timer1.c: 14: Timer1->Count1=0;
	movf	(_Timer1),w
	addlw	03h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	16
	
l5987:	
	line	18
;Timer1.c: 16: }
;Timer1.c: 18: if(Timer1->PowerON==0)
	movf	(_Timer1),w
	movwf	fsr0
	btfsc	indf,0
	goto	u3481
	goto	u3480
u3481:
	goto	l7869
u3480:
	line	20
	
l7863:	
;Timer1.c: 19: {
;Timer1.c: 20: if(Timer1->Count2<200)
	movf	(_Timer1),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	movwf	(??_TMR1_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_TMR1_Main+0)+0+1
	movlw	high(0C8h)
	subwf	1+(??_TMR1_Main+0)+0,w
	movlw	low(0C8h)
	skipnz
	subwf	0+(??_TMR1_Main+0)+0,w
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l7867
u3490:
	line	21
	
l7865:	
;Timer1.c: 21: Timer1->Count2++;
	movf	(_Timer1),w
	addlw	05h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	goto	l5996
	line	22
	
l5989:	
	line	24
	
l7867:	
;Timer1.c: 22: else
;Timer1.c: 23: {
;Timer1.c: 24: Timer1->Count2=0;
	movf	(_Timer1),w
	addlw	05h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	25
;Timer1.c: 25: Timer1->PowerON=1;
	movf	(_Timer1),w
	movwf	fsr0
	bsf	indf,0
	goto	l5996
	line	26
	
l5990:	
	line	27
;Timer1.c: 26: }
;Timer1.c: 27: }
	goto	l5996
	line	28
	
l5988:	
	line	30
	
l7869:	
;Timer1.c: 28: else
;Timer1.c: 29: {
;Timer1.c: 30: if(Timer1->Count2<100)
	movf	(_Timer1),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	movwf	(??_TMR1_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_TMR1_Main+0)+0+1
	movlw	high(064h)
	subwf	1+(??_TMR1_Main+0)+0,w
	movlw	low(064h)
	skipnz
	subwf	0+(??_TMR1_Main+0)+0,w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l7873
u3500:
	line	31
	
l7871:	
;Timer1.c: 31: Timer1->Count2++;
	movf	(_Timer1),w
	addlw	05h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	goto	l7877
	line	32
	
l5992:	
	line	34
	
l7873:	
;Timer1.c: 32: else
;Timer1.c: 33: {
;Timer1.c: 34: Timer1->Count2=0;
	movf	(_Timer1),w
	addlw	05h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	35
	
l7875:	
;Timer1.c: 35: RB5=~RB5;
	movlw	1<<((53)&7)
	xorwf	((53)/8),f
	goto	l7877
	line	48
	
l5993:	
	line	50
	
l7877:	
;Timer1.c: 48: }
;Timer1.c: 50: if(Timer1->Count3<500)
	movf	(_Timer1),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(??_TMR1_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_TMR1_Main+0)+0+1
	movlw	high(01F4h)
	subwf	1+(??_TMR1_Main+0)+0,w
	movlw	low(01F4h)
	skipnz
	subwf	0+(??_TMR1_Main+0)+0,w
	skipnc
	goto	u3511
	goto	u3510
u3511:
	goto	l7881
u3510:
	line	51
	
l7879:	
;Timer1.c: 51: Timer1->Count3++;
	movf	(_Timer1),w
	addlw	07h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	goto	l5996
	line	52
	
l5994:	
	line	54
	
l7881:	
;Timer1.c: 52: else
;Timer1.c: 53: {
;Timer1.c: 54: Timer1->Count3=0;
	movf	(_Timer1),w
	addlw	07h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l5996
	line	61
	
l5995:	
	goto	l5996
	line	62
	
l5991:	
	line	63
	
l5996:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Main
	__end_of_TMR1_Main:
;; =============== function _TMR1_Main ends ============

	signat	_TMR1_Main,88
	global	_Mcu_Initial
psect	text388,local,class=CODE,delta=2
global __ptext388
__ptext388:

;; *************** function _Mcu_Initial *****************
;; Defined at:
;;		line 73 in file "G:\Program\PIC\Source_File\MCU_16F723A.c"
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
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text388
	file	"G:\Program\PIC\Source_File\MCU_16F723A.c"
	line	73
	global	__size_of_Mcu_Initial
	__size_of_Mcu_Initial	equ	__end_of_Mcu_Initial-_Mcu_Initial
	
_Mcu_Initial:	
	opt	stack 5
; Regs used in _Mcu_Initial: [wreg+status,2]
	line	75
	
l7833:	
;MCU_16F723A.c: 75: TRISA=0xaf; TRISB=0x01; TRISC=0x00; ANSELA=0x07; ANSELB=0x01; PORTA=0xaf; PORTB=0x01; PORTC=0x00;
	movlw	(0AFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	movlw	(01h)
	movwf	(134)^080h	;volatile
	
l7835:	
	clrf	(135)^080h	;volatile
	
l7837:	
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(389)^0180h	;volatile
	
l7839:	
	movlw	(01h)
	movwf	(390)^0180h	;volatile
	
l7841:	
	movlw	(0AFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l7843:	
	movlw	(01h)
	movwf	(6)	;volatile
	
l7845:	
	clrf	(7)	;volatile
	line	79
;MCU_16F723A.c: 79: OSCCON=0x3c;
	movlw	(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(144)^080h	;volatile
	line	83
;MCU_16F723A.c: 83: ADCON1=0x73;
	movlw	(073h)
	movwf	(159)^080h	;volatile
	line	84
;MCU_16F723A.c: 84: FVRCON=0xc1;
	movlw	(0C1h)
	movwf	(157)^080h	;volatile
	line	88
;MCU_16F723A.c: 88: Timer1=&VarTimer1; GIE=1; PEIE=1; T1CON=(0x00 | 0x41); TMR1IE=1; TMR1H=((65536-(1*200))/256); TMR1L=((65536-(1*200))%256); TMR1IF=0;;
	movlw	(_VarTimer1)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mcu_Initial+0)+0
	movf	(??_Mcu_Initial+0)+0,w
	movwf	(_Timer1)
	
l7847:	
	bsf	(95/8),(95)&7
	
l7849:	
	bsf	(94/8),(94)&7
	movlw	(041h)
	movwf	(16)	;volatile
	
l7851:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	movlw	(038h)
	movwf	(14)	;volatile
	
l7853:	
	bcf	(96/8),(96)&7
	line	90
	
l7855:	
;MCU_16F723A.c: 90: TMR0IE=0;
	bcf	(93/8),(93)&7
	line	91
;MCU_16F723A.c: 91: TMR0=256-10;
	movlw	(0F6h)
	movwf	(1)	;volatile
	line	105
	
l3399:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initial
	__end_of_Mcu_Initial:
;; =============== function _Mcu_Initial ends ============

	signat	_Mcu_Initial,88
	global	_LED_Main
psect	text389,local,class=CODE,delta=2
global __ptext389
__ptext389:

;; *************** function _LED_Main *****************
;; Defined at:
;;		line 35 in file "G:\Program\PIC\Source_File\LED.c"
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
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text389
	file	"G:\Program\PIC\Source_File\LED.c"
	line	35
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
	opt	stack 5
; Regs used in _LED_Main: [wreg-fsr0h+status,2+status,0]
	line	36
	
l7803:	
;LED.c: 36: if(LED->GO==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u3411
	goto	u3410
u3411:
	goto	l2562
u3410:
	line	38
	
l7805:	
;LED.c: 37: {
;LED.c: 38: LED->Time++;
	movlw	(01h)
	movwf	(??_LED_Main+0)+0
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	(??_LED_Main+0)+0,w
	addwf	indf,f
	line	39
	
l7807:	
;LED.c: 39: if(LED->Time == 10)
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	0Ah
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l2562
u3420:
	line	41
	
l7809:	
;LED.c: 40: {
;LED.c: 41: LED->Time=0;
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	line	42
	
l7811:	
;LED.c: 42: RB3=~RB3;
	movlw	1<<((51)&7)
	xorwf	((51)/8),f
	goto	l2562
	line	43
	
l2561:	
	goto	l2562
	line	44
	
l2560:	
	line	45
	
l2562:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
;; =============== function _LED_Main ends ============

	signat	_LED_Main,88
	global	_LED_Setting
psect	text390,local,class=CODE,delta=2
global __ptext390
__ptext390:

;; *************** function _LED_Setting *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\LED.c"
;; Parameters:    Size  Location     Type
;;  number          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  number          1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_PIR_Main
;;		_PIR_Switch
;; This function uses a non-reentrant model
;;
psect	text390
	file	"G:\Program\PIC\Source_File\LED.c"
	line	9
	global	__size_of_LED_Setting
	__size_of_LED_Setting	equ	__end_of_LED_Setting-_LED_Setting
	
_LED_Setting:	
	opt	stack 4
; Regs used in _LED_Setting: [wregfsr0]
;LED_Setting@number stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LED_Setting@number)
	line	10
	
l7775:	
;LED.c: 10: if(LED->Enable == 1)
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u3341
	goto	u3340
u3341:
	goto	l2557
u3340:
	line	12
	
l7777:	
;LED.c: 11: {
;LED.c: 12: if(RB5 == 0)
	btfsc	(53/8),(53)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l2547
u3350:
	line	13
	
l7779:	
;LED.c: 13: RB5 = 1;
	bsf	(53/8),(53)&7
	goto	l7783
	line	14
	
l2547:	
;LED.c: 14: else if(RB4 == 0)
	btfsc	(52/8),(52)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l7783
u3360:
	line	15
	
l7781:	
;LED.c: 15: RB4 = 1;
	bsf	(52/8),(52)&7
	goto	l7783
	
l2549:	
	goto	l7783
	line	17
	
l2548:	
	
l7783:	
;LED.c: 17: if(number == 1)
	movf	(LED_Setting@number),w
	xorlw	01h
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l7787
u3370:
	line	18
	
l7785:	
;LED.c: 18: RB5 = 0;
	bcf	(53/8),(53)&7
	goto	l2557
	line	19
	
l2550:	
	
l7787:	
;LED.c: 19: else if(number == 2)
	movf	(LED_Setting@number),w
	xorlw	02h
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l7791
u3380:
	line	20
	
l7789:	
;LED.c: 20: RB4 = 0;
	bcf	(52/8),(52)&7
	goto	l2557
	line	21
	
l2552:	
	
l7791:	
;LED.c: 21: else if(number == 31)
	movf	(LED_Setting@number),w
	xorlw	01Fh
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l7797
u3390:
	line	23
	
l7793:	
;LED.c: 22: {
;LED.c: 23: RB3 = 0;
	bcf	(51/8),(51)&7
	line	24
	
l7795:	
;LED.c: 24: LED->GO=1;
	movf	(_LED),w
	movwf	fsr0
	bsf	indf,1
	line	25
;LED.c: 25: }
	goto	l2557
	line	26
	
l2554:	
	
l7797:	
;LED.c: 26: else if(number == 30)
	movf	(LED_Setting@number),w
	xorlw	01Eh
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l2557
u3400:
	line	28
	
l7799:	
;LED.c: 27: {
;LED.c: 28: RB3 = 1;
	bsf	(51/8),(51)&7
	line	29
	
l7801:	
;LED.c: 29: LED->GO=0;
	movf	(_LED),w
	movwf	fsr0
	bcf	indf,1
	goto	l2557
	line	30
	
l2556:	
	goto	l2557
	line	31
	
l2555:	
	goto	l2557
	
l2553:	
	goto	l2557
	
l2551:	
	goto	l2557
	
l2546:	
	line	32
	
l2557:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Setting
	__end_of_LED_Setting:
;; =============== function _LED_Setting ends ============

	signat	_LED_Setting,4216
	global	_Dimmer_Control
psect	text391,local,class=CODE,delta=2
global __ptext391
__ptext391:

;; *************** function _Dimmer_Control *****************
;; Defined at:
;;		line 107 in file "G:\Program\PIC\Source_File\Dimmer.c"
;; Parameters:    Size  Location     Type
;;  number          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  number          1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PIR_Main
;;		_PIR_Switch
;; This function uses a non-reentrant model
;;
psect	text391
	file	"G:\Program\PIC\Source_File\Dimmer.c"
	line	107
	global	__size_of_Dimmer_Control
	__size_of_Dimmer_Control	equ	__end_of_Dimmer_Control-_Dimmer_Control
	
_Dimmer_Control:	
	opt	stack 4
; Regs used in _Dimmer_Control: [wreg-fsr0h+status,2+status,0]
;Dimmer_Control@number stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Dimmer_Control@number)
	line	108
	
l7757:	
;Dimmer.c: 108: if(number==0)
	movf	(Dimmer_Control@number),f
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l7771
u3300:
	line	110
	
l7759:	
;Dimmer.c: 109: {
;Dimmer.c: 110: Dimmer->Lights=0;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,1
	line	111
;Dimmer.c: 112: if(2 == 2)
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,0
	line	114
;Dimmer.c: 113: {
;Dimmer.c: 114: if(Dimmer->Phase2 == 1) { Dimmer->Minimum=157; Dimmer->DimmingTimeValue=4; } else { Dimmer->DimmingTimeValue=2; if(PIR->Switch == 0) { Dimmer->Phase2 = 1; Dimmer->Minimum=157; } else { Dimmer->Minimum=132; } };
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u3311
	goto	u3310
u3311:
	goto	l7763
u3310:
	
l7761:	
	movlw	(09Dh)
	movwf	(??_Dimmer_Control+0)+0
	movf	(_Dimmer),w
	addlw	0Ch
	movwf	fsr0
	movf	(??_Dimmer_Control+0)+0,w
	movwf	indf
	movlw	(04h)
	movwf	(??_Dimmer_Control+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	(??_Dimmer_Control+0)+0,w
	movwf	indf
	goto	l1714
	
l1704:	
	
l7763:	
	movlw	(02h)
	movwf	(??_Dimmer_Control+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	(??_Dimmer_Control+0)+0,w
	movwf	indf
	movf	(_PIR),w
	addlw	013h
	movwf	fsr0
	btfsc	indf,2
	goto	u3321
	goto	u3320
u3321:
	goto	l7767
u3320:
	
l7765:	
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,3
	movlw	(09Dh)
	movwf	(??_Dimmer_Control+0)+0
	movf	(_Dimmer),w
	addlw	0Ch
	movwf	fsr0
	movf	(??_Dimmer_Control+0)+0,w
	movwf	indf
	goto	l1714
	
l1706:	
	
l7767:	
	movlw	(084h)
	movwf	(??_Dimmer_Control+0)+0
	movf	(_Dimmer),w
	addlw	0Ch
	movwf	fsr0
	movf	(??_Dimmer_Control+0)+0,w
	movwf	indf
	goto	l1714
	
l1707:	
	goto	l1714
	
l1705:	
	line	115
;Dimmer.c: 115: }
	goto	l1714
	line	116
	
l1703:	
	line	117
	
l7769:	
;Dimmer.c: 116: else
;Dimmer.c: 117: Dimmer->DimmingTimeValue=2;
	movlw	(02h)
	movwf	(??_Dimmer_Control+0)+0
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	movf	(??_Dimmer_Control+0)+0,w
	movwf	indf
	goto	l1714
	
l1708:	
	line	118
;Dimmer.c: 118: }
	goto	l1714
	line	119
	
l1702:	
	
l7771:	
;Dimmer.c: 119: else if(number==1)
	movf	(Dimmer_Control@number),w
	xorlw	01h
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l1714
u3330:
	line	121
	
l7773:	
;Dimmer.c: 120: {
;Dimmer.c: 121: Dimmer->Lights=1;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,1
	line	122
;Dimmer.c: 122: Dimmer->Signal=1;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,0
	line	123
;Dimmer.c: 124: if(2 == 0 || 2 == 2)
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr0
	clrf	indf
	line	124
	
l1713:	
	line	125
;Dimmer.c: 125: Dimmer->Triac=1;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,2
	goto	l1714
	
l1711:	
	goto	l1714
	line	126
	
l1710:	
	goto	l1714
	line	127
	
l1709:	
	
l1714:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_Control
	__end_of_Dimmer_Control:
;; =============== function _Dimmer_Control ends ============

	signat	_Dimmer_Control,4216
	global	_Buzzer_Main
psect	text392,local,class=CODE,delta=2
global __ptext392
__ptext392:

;; *************** function _Buzzer_Main *****************
;; Defined at:
;;		line 25 in file "G:\Program\PIC\Source_File\Buzzer.c"
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
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text392
	file	"G:\Program\PIC\Source_File\Buzzer.c"
	line	25
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
	opt	stack 5
; Regs used in _Buzzer_Main: [wreg-fsr0h+status,2+status,0]
	line	26
	
l7677:	
;Buzzer.c: 26: if(Buzzer->GO==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Buzzer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u3091
	goto	u3090
u3091:
	goto	l843
u3090:
	line	28
	
l7679:	
;Buzzer.c: 27: {
;Buzzer.c: 28: Buzzer->Time++;
	movlw	(01h)
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr0
	movf	(??_Buzzer_Main+0)+0,w
	addwf	indf,f
	line	30
	
l7681:	
;Buzzer.c: 30: if(Buzzer->Time==8)
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	xorlw	08h
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l843
u3100:
	line	32
	
l7683:	
;Buzzer.c: 31: {
;Buzzer.c: 32: Buzzer->Time=0;
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	line	33
	
l7685:	
;Buzzer.c: 33: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l837
u3110:
	line	34
	
l7687:	
;Buzzer.c: 34: RB1=1;
	bsf	(49/8),(49)&7
	goto	l843
	line	35
	
l837:	
	line	37
;Buzzer.c: 35: else
;Buzzer.c: 36: {
;Buzzer.c: 37: RB1=0;
	bcf	(49/8),(49)&7
	line	39
	
l7689:	
;Buzzer.c: 39: if(Buzzer->Count>1)
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr0
	movlw	(02h)
	subwf	indf,w
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l7693
u3120:
	line	40
	
l7691:	
;Buzzer.c: 40: Buzzer->Count--;
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr0
	movlw	low(01h)
	subwf	indf,f
	goto	l843
	line	41
	
l839:	
	line	43
	
l7693:	
;Buzzer.c: 41: else
;Buzzer.c: 42: {
;Buzzer.c: 43: if(Buzzer->Register==0)
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l7697
u3130:
	line	44
	
l7695:	
;Buzzer.c: 44: Buzzer->GO=0;
	movf	(_Buzzer),w
	movwf	fsr0
	bcf	indf,1
	goto	l843
	line	45
	
l841:	
	line	47
	
l7697:	
;Buzzer.c: 45: else
;Buzzer.c: 46: {
;Buzzer.c: 47: Buzzer->Count += Buzzer->Register;
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr0
	movf	(??_Buzzer_Main+0)+0,w
	addwf	indf,f
	line	48
	
l7699:	
;Buzzer.c: 48: Buzzer->Register=0;
	movf	(_Buzzer),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	goto	l843
	line	49
	
l842:	
	goto	l843
	line	50
	
l840:	
	goto	l843
	line	51
	
l838:	
	goto	l843
	line	52
	
l836:	
	goto	l843
	line	53
	
l835:	
	line	54
	
l843:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Main
	__end_of_Buzzer_Main:
;; =============== function _Buzzer_Main ends ============

	signat	_Buzzer_Main,88
	global	_ISR
psect	text393,local,class=CODE,delta=2
global __ptext393
__ptext393:

;; *************** function _ISR *****************
;; Defined at:
;;		line 16 in file "G:\Program\PIC\Source_File\MCU_16F723A.c"
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
;;      Temps:          6       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Dimmer_Main
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text393
	file	"G:\Program\PIC\Source_File\MCU_16F723A.c"
	line	16
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 3
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
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
psect	text393
	line	42
	
i1l7813:	
;MCU_16F723A.c: 42: if(TMR1IE && TMR1IF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l3396
u343_20:
	
i1l7815:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l3396
u344_20:
	line	44
	
i1l7817:	
;MCU_16F723A.c: 43: {
;MCU_16F723A.c: 44: if(Timer1->PowerON==1)
	movf	(_Timer1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l7821
u345_20:
	line	46
	
i1l7819:	
;MCU_16F723A.c: 45: {
;MCU_16F723A.c: 46: Dimmer_Main();
	fcall	_Dimmer_Main
	goto	i1l7821
	line	47
	
i1l3394:	
	line	49
	
i1l7821:	
;MCU_16F723A.c: 47: }
;MCU_16F723A.c: 49: Timer1->Count++;
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
	line	50
	
i1l7823:	
;MCU_16F723A.c: 50: if(Timer1->Count == 200)
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_ISR+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_ISR+0)+0+1
	movlw	0C8h
	xorwf	0+(??_ISR+0)+0,w
	iorwf	1+(??_ISR+0)+0,w
	skipz
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l7827
u346_20:
	line	52
	
i1l7825:	
;MCU_16F723A.c: 51: {
;MCU_16F723A.c: 52: Timer1->Count=0;
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	53
;MCU_16F723A.c: 53: Timer1->Timeout=1;
	movf	(_Timer1),w
	movwf	fsr0
	bsf	indf,2
	goto	i1l7827
	line	54
	
i1l3395:	
	line	56
	
i1l7827:	
;MCU_16F723A.c: 54: }
;MCU_16F723A.c: 56: TMR1H=((65536-(1*200))/256);
	movlw	(0FFh)
	movwf	(15)	;volatile
	line	57
	
i1l7829:	
;MCU_16F723A.c: 57: TMR1L=((65536-(1*200))%256);
	movlw	(038h)
	movwf	(14)	;volatile
	line	58
	
i1l7831:	
;MCU_16F723A.c: 58: TMR1IF=0;
	bcf	(96/8),(96)&7
	goto	i1l3396
	line	59
	
i1l3393:	
	line	68
	
i1l3396:	
	movf	(??_ISR+5),w
	bcf	status, 5	;RP0=0, select bank0
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
	global	_Dimmer_Main
psect	text394,local,class=CODE,delta=2
global __ptext394
__ptext394:

;; *************** function _Dimmer_Main *****************
;; Defined at:
;;		line 11 in file "G:\Program\PIC\Source_File\Dimmer.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text394
	file	"G:\Program\PIC\Source_File\Dimmer.c"
	line	11
	global	__size_of_Dimmer_Main
	__size_of_Dimmer_Main	equ	__end_of_Dimmer_Main-_Dimmer_Main
	
_Dimmer_Main:	
	opt	stack 3
; Regs used in _Dimmer_Main: [wreg-fsr0h+status,2+status,0]
	line	12
	
i1l7701:	
;Dimmer.c: 12: Dimmer->Count++;
	movlw	(01h)
	movwf	(??_Dimmer_Main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	movf	(??_Dimmer_Main+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	line	13
	
i1l7703:	
;Dimmer.c: 13: if(RA7==1)
	btfss	(47/8),(47)&7
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l7711
u314_20:
	line	15
	
i1l7705:	
;Dimmer.c: 14: {
;Dimmer.c: 15: if(Dimmer->Input==0)
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfsc	indf,0
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l1675
u315_20:
	line	17
	
i1l7707:	
;Dimmer.c: 16: {
;Dimmer.c: 17: Dimmer->Input=1;
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,0
	line	18
;Dimmer.c: 18: Dimmer->Offset = 0;
	movf	(_Dimmer),w
	addlw	0Dh
	movwf	fsr0
	clrf	indf
	line	19
;Dimmer.c: 19: if(Dimmer->Ready==1)
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfss	indf,1
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l1675
u316_20:
	line	21
	
i1l7709:	
;Dimmer.c: 20: {
;Dimmer.c: 21: Dimmer->GO=1;
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,2
	line	22
;Dimmer.c: 22: Dimmer->Count=0;
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	goto	i1l1675
	line	23
	
i1l1674:	
	goto	i1l1675
	line	24
	
i1l1673:	
	line	25
;Dimmer.c: 23: }
;Dimmer.c: 24: }
;Dimmer.c: 25: }
	goto	i1l1675
	line	26
	
i1l1672:	
	line	28
	
i1l7711:	
;Dimmer.c: 26: else
;Dimmer.c: 27: {
;Dimmer.c: 28: if(Dimmer->Input==1)
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfss	indf,0
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l1675
u317_20:
	line	30
	
i1l7713:	
;Dimmer.c: 29: {
;Dimmer.c: 30: Dimmer->Input=0;
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bcf	indf,0
	line	31
;Dimmer.c: 31: Dimmer->Offset = 0;
	movf	(_Dimmer),w
	addlw	0Dh
	movwf	fsr0
	clrf	indf
	line	32
;Dimmer.c: 32: if(Dimmer->Ready==0)
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfsc	indf,1
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l7717
u318_20:
	line	33
	
i1l7715:	
;Dimmer.c: 33: Dimmer->Ready=1;
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,1
	goto	i1l1675
	line	34
	
i1l1677:	
	line	36
	
i1l7717:	
;Dimmer.c: 34: else
;Dimmer.c: 35: {
;Dimmer.c: 36: Dimmer->GO=1;
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bsf	indf,2
	line	37
;Dimmer.c: 37: Dimmer->Count=0;
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	goto	i1l1675
	line	38
	
i1l1678:	
	goto	i1l1675
	line	39
	
i1l1676:	
	line	40
	
i1l1675:	
	line	43
;Dimmer.c: 38: }
;Dimmer.c: 39: }
;Dimmer.c: 40: }
;Dimmer.c: 43: if(Dimmer->GO==1)
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	btfss	indf,2
	goto	u319_21
	goto	u319_20
u319_21:
	goto	i1l1679
u319_20:
	line	45
	
i1l7719:	
;Dimmer.c: 44: {
;Dimmer.c: 45: if(Dimmer->Count == Dimmer->DimmingValue)
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr
	movf	indf,w
	movwf	(??_Dimmer_Main+0)+0
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	xorwf	(??_Dimmer_Main+0)+0,w
	skipz
	goto	u320_21
	goto	u320_20
u320_21:
	goto	i1l1699
u320_20:
	line	47
	
i1l7721:	
;Dimmer.c: 46: {
;Dimmer.c: 47: Dimmer->Count=0;
	movf	(_Dimmer),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	line	48
;Dimmer.c: 48: Dimmer->GO=0;
	movf	(_Dimmer),w
	addlw	05h
	movwf	fsr0
	bcf	indf,2
	line	49
;Dimmer.c: 49: if(Dimmer->Triac==1)
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,2
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l1699
u321_20:
	line	50
	
i1l7723:	
;Dimmer.c: 50: RB2=1;
	bsf	(50/8),(50)&7
	goto	i1l1699
	
i1l1681:	
	goto	i1l1699
	line	51
	
i1l1680:	
	line	52
;Dimmer.c: 51: }
;Dimmer.c: 52: }
	goto	i1l1699
	line	53
	
i1l1679:	
	line	55
;Dimmer.c: 53: else
;Dimmer.c: 54: {
;Dimmer.c: 55: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u322_21
	goto	u322_20
u322_21:
	goto	i1l1699
u322_20:
	line	57
	
i1l7725:	
;Dimmer.c: 56: {
;Dimmer.c: 57: RB2=0;
	bcf	(50/8),(50)&7
	line	59
	
i1l7727:	
;Dimmer.c: 59: if(Dimmer->Signal==1)
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,0
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l1699
u323_20:
	line	62
	
i1l7729:	
;Dimmer.c: 60: {
;Dimmer.c: 62: if(Dimmer->DimmingTime < Dimmer->DimmingTimeValue)
	movf	(_Dimmer),w
	addlw	08h
	movwf	fsr
	movf	indf,w
	movwf	(??_Dimmer_Main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Dimmer_Main+1)+0
	movf	(??_Dimmer_Main+0)+0,w
	subwf	(??_Dimmer_Main+1)+0,w
	skipnc
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l7733
u324_20:
	line	63
	
i1l7731:	
;Dimmer.c: 63: Dimmer->DimmingTime++;
	movlw	(01h)
	movwf	(??_Dimmer_Main+0)+0
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	movf	(??_Dimmer_Main+0)+0,w
	addwf	indf,f
	goto	i1l1699
	line	64
	
i1l1685:	
	line	66
	
i1l7733:	
;Dimmer.c: 64: else
;Dimmer.c: 65: {
;Dimmer.c: 66: Dimmer->DimmingTime=0;
	movf	(_Dimmer),w
	addlw	07h
	movwf	fsr0
	clrf	indf
	line	67
;Dimmer.c: 67: if(Dimmer->Lights==1)
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,1
	goto	u325_21
	goto	u325_20
u325_21:
	goto	i1l7743
u325_20:
	line	69
	
i1l7735:	
;Dimmer.c: 68: {
;Dimmer.c: 69: if(Dimmer->DimmingValue >= Dimmer->Maxmum)
	movf	(_Dimmer),w
	addlw	0Bh
	movwf	fsr
	movf	indf,w
	movwf	(??_Dimmer_Main+0)+0
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Dimmer_Main+1)+0
	movf	(??_Dimmer_Main+0)+0,w
	subwf	(??_Dimmer_Main+1)+0,w
	skipc
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l7739
u326_20:
	line	70
	
i1l7737:	
;Dimmer.c: 70: Dimmer->DimmingValue--;
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	movlw	low(01h)
	subwf	indf,f
	goto	i1l1689
	line	71
	
i1l1688:	
	line	72
	
i1l7739:	
;Dimmer.c: 71: else
;Dimmer.c: 72: Dimmer->Signal=0;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,0
	
i1l1689:	
	line	74
;Dimmer.c: 74: if(Dimmer->Phase2 == 1)
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfss	indf,3
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l1699
u327_20:
	line	75
	
i1l7741:	
;Dimmer.c: 75: Dimmer->Phase2 = 0;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,3
	goto	i1l1699
	
i1l1690:	
	line	76
;Dimmer.c: 76: }
	goto	i1l1699
	line	77
	
i1l1687:	
	line	79
	
i1l7743:	
;Dimmer.c: 77: else
;Dimmer.c: 78: {
;Dimmer.c: 79: if(Dimmer->DimmingValue <= Dimmer->Minimum)
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr
	movf	indf,w
	movwf	(??_Dimmer_Main+0)+0
	movf	(_Dimmer),w
	addlw	0Ch
	movwf	fsr0
	movf	indf,w
	movwf	(??_Dimmer_Main+1)+0
	movf	(??_Dimmer_Main+0)+0,w
	subwf	(??_Dimmer_Main+1)+0,w
	skipc
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l7747
u328_20:
	line	80
	
i1l7745:	
;Dimmer.c: 80: Dimmer->DimmingValue++;
	movlw	(01h)
	movwf	(??_Dimmer_Main+0)+0
	movf	(_Dimmer),w
	addlw	09h
	movwf	fsr0
	movf	(??_Dimmer_Main+0)+0,w
	addwf	indf,f
	goto	i1l1699
	line	81
	
i1l1692:	
	line	83
	
i1l7747:	
;Dimmer.c: 81: else
;Dimmer.c: 82: {
;Dimmer.c: 83: Dimmer->Signal=0;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,0
	line	85
;Dimmer.c: 85: if(2 == 0)
	goto	i1l7751
	line	86
	
i1l7749:	
;Dimmer.c: 86: Dimmer->Triac=0;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,2
	goto	i1l1699
	line	87
;Dimmer.c: 87: else if(2 == 2)
	
i1l1694:	
	line	89
	
i1l7751:	
;Dimmer.c: 88: {
;Dimmer.c: 89: if(Dimmer->Phase2 == 0)
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	btfsc	indf,3
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l7755
u329_20:
	line	90
	
i1l7753:	
;Dimmer.c: 90: Dimmer->Phase2 = 1;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bsf	indf,3
	goto	i1l1699
	line	91
	
i1l1697:	
	line	93
	
i1l7755:	
;Dimmer.c: 91: else
;Dimmer.c: 92: {
;Dimmer.c: 93: Dimmer->Triac=0;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,2
	line	94
;Dimmer.c: 94: Dimmer->Phase2 = 0;
	movf	(_Dimmer),w
	addlw	0Ah
	movwf	fsr0
	bcf	indf,3
	goto	i1l1699
	line	95
	
i1l1698:	
	goto	i1l1699
	line	96
	
i1l1696:	
	goto	i1l1699
	line	97
	
i1l1695:	
	goto	i1l1699
	
i1l1693:	
	goto	i1l1699
	line	98
	
i1l1691:	
	goto	i1l1699
	line	99
	
i1l1686:	
	goto	i1l1699
	line	100
	
i1l1684:	
	goto	i1l1699
	line	101
	
i1l1683:	
	goto	i1l1699
	line	102
	
i1l1682:	
	line	103
	
i1l1699:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_Main
	__end_of_Dimmer_Main:
;; =============== function _Dimmer_Main ends ============

	signat	_Dimmer_Main,88
psect	text395,local,class=CODE,delta=2
global __ptext395
__ptext395:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
