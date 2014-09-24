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
# 7 "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	dw 0xFFFC & 0xFFF7 & 0xFCFF & 0xFFFF ;#
# 8 "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	dw 0xFFFF ;#
	FNCALL	_main,_MainT_Initialization
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_LED_Initialization
	FNCALL	_main,_SYSC_Initialization
	FNCALL	_main,_Lights_Initialization
	FNCALL	_main,_CDS_Initialization
	FNCALL	_main,_PIR_Initialization
	FNCALL	_main,_getCDS_AD
	FNCALL	_main,_getPIR_AD
	FNCALL	_main,_MainT
	FNCALL	_main,_LED_Main
	FNCALL	_main,_SYSC_Main
	FNCALL	_main,_Lights_Main
	FNCALL	_main,_CDS_Main
	FNCALL	_main,_PIR_Main
	FNCALL	_CDS_Main,_setCDS_Main
	FNCALL	_Lights_Main,_setLights_Main
	FNCALL	_Lights_Main,_Lights_Control
	FNCALL	_CDS_Initialization,_setCDS_Initialization
	FNCALL	_LED_Initialization,_setLED_Initialization
	FNCALL	_setCDS_Main,_setCDSPoint
	FNCALL	_setCDS_Main,_setLights_Trigger
	FNCALL	_setCDS_Main,_setLights_Switch
	FNCALL	_setCDS_Initialization,_setCDSPoint
	FNCALL	_setCDS_Initialization,_setLED
	FNCALL	_setLights_Main,_LightsPointSelect
	FNCALL	_setLights_Main,_setLights
	FNCALL	_Lights_Initialization,_setLights_Initialization
	FNCALL	_LED_Main,_setLED_Main
	FNCALL	_setLED_Initialization,_LedPointSelect
	FNCALL	_setLED_Initialization,_setLED
	FNCALL	_setLights_Switch,_LightsPointSelect
	FNCALL	_setLights_Trigger,_LightsPointSelect
	FNCALL	_setLights,_LightsPointSelect
	FNCALL	_Lights_Control,_LightsPointSelect
	FNCALL	_setLights_Initialization,_LightsPointSelect
	FNCALL	_getCDS_AD,_setCDSPoint
	FNCALL	_getCDS_AD,_getAD
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR0_Set
	FNCALL	_Mcu_Initialization,_ADC_Set
	FNCALL	_setLED,_LedPointSelect
	FNCALL	_setLED_Main,_LedPointSelect
	FNROOT	_main
	FNCALL	_ISR,_TMR0_ISR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_CDS
	global	_LED
	global	_Lights
	global	_SYSC
	global	_TMain
	global	_PIR
	global	_Timer0
	global	__PIR1
	global	_VarTMain
	global	_Lights1
	global	_VarTimer0
	global	__CDS1
	global	_VarErrLED
	global	_VarLED1
	global	_VarLED2
	global	_ADCON0
psect	text1085,local,class=CODE,delta=2
global __ptext1085
__ptext1085:
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
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
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
	file	"PIR_Ceiling_Embed_V1.1.1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_PIR:
       ds      1

_Timer0:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_CDS:
       ds      1

_LED:
       ds      1

_Lights:
       ds      1

_SYSC:
       ds      1

_TMain:
       ds      1

_VarTMain:
       ds      16

_Lights1:
       ds      9

_VarTimer0:
       ds      7

__CDS1:
       ds      5

_VarErrLED:
       ds      4

_VarLED1:
       ds      4

_VarLED2:
       ds      4

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
__PIR1:
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
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+036h)
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
	global	?_setLED_Initialization
?_setLED_Initialization:	; 0 bytes @ 0x0
	global	?_setLED_Main
?_setLED_Main:	; 0 bytes @ 0x0
	global	?_MainT_Initialization
?_MainT_Initialization:	; 0 bytes @ 0x0
	global	?_Mcu_Initialization
?_Mcu_Initialization:	; 0 bytes @ 0x0
	global	?_SYSC_Initialization
?_SYSC_Initialization:	; 0 bytes @ 0x0
	global	?_Lights_Initialization
?_Lights_Initialization:	; 0 bytes @ 0x0
	global	?_CDS_Initialization
?_CDS_Initialization:	; 0 bytes @ 0x0
	global	?_PIR_Initialization
?_PIR_Initialization:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_SYSC_Main
?_SYSC_Main:	; 0 bytes @ 0x0
	global	?_Lights_Main
?_Lights_Main:	; 0 bytes @ 0x0
	global	?_CDS_Main
?_CDS_Main:	; 0 bytes @ 0x0
	global	?_PIR_Main
?_PIR_Main:	; 0 bytes @ 0x0
	global	?_IO_Set
?_IO_Set:	; 0 bytes @ 0x0
	global	?_TMR0_Set
?_TMR0_Set:	; 0 bytes @ 0x0
	global	?_ADC_Set
?_ADC_Set:	; 0 bytes @ 0x0
	global	?_TMR0_ISR
?_TMR0_ISR:	; 0 bytes @ 0x0
	global	??_TMR0_ISR
??_TMR0_ISR:	; 0 bytes @ 0x0
	global	?_setLights_Initialization
?_setLights_Initialization:	; 0 bytes @ 0x0
	global	?_setLights_Main
?_setLights_Main:	; 0 bytes @ 0x0
	global	?_Lights_Control
?_Lights_Control:	; 0 bytes @ 0x0
	global	?_setCDS_Initialization
?_setCDS_Initialization:	; 0 bytes @ 0x0
	global	?_setCDS_Main
?_setCDS_Main:	; 0 bytes @ 0x0
	global	?_LedPointSelect
?_LedPointSelect:	; 0 bytes @ 0x0
	global	?_LED_Initialization
?_LED_Initialization:	; 0 bytes @ 0x0
	global	?_LED_Main
?_LED_Main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_LightsPointSelect
?_LightsPointSelect:	; 0 bytes @ 0x0
	global	?_setCDSPoint
?_setCDSPoint:	; 0 bytes @ 0x0
	ds	2
	global	??_ISR
??_ISR:	; 0 bytes @ 0x2
	ds	4
	global	??_setLED_Initialization
??_setLED_Initialization:	; 0 bytes @ 0x6
	global	??_setLED
??_setLED:	; 0 bytes @ 0x6
	global	??_Mcu_Initialization
??_Mcu_Initialization:	; 0 bytes @ 0x6
	global	??_SYSC_Initialization
??_SYSC_Initialization:	; 0 bytes @ 0x6
	global	??_Lights_Initialization
??_Lights_Initialization:	; 0 bytes @ 0x6
	global	??_CDS_Initialization
??_CDS_Initialization:	; 0 bytes @ 0x6
	global	??_PIR_Initialization
??_PIR_Initialization:	; 0 bytes @ 0x6
	global	??_getPIR_AD
??_getPIR_AD:	; 0 bytes @ 0x6
	global	??_SYSC_Main
??_SYSC_Main:	; 0 bytes @ 0x6
	global	??_Lights_Main
??_Lights_Main:	; 0 bytes @ 0x6
	global	??_CDS_Main
??_CDS_Main:	; 0 bytes @ 0x6
	global	??_PIR_Main
??_PIR_Main:	; 0 bytes @ 0x6
	global	??_IO_Set
??_IO_Set:	; 0 bytes @ 0x6
	global	??_ADC_Set
??_ADC_Set:	; 0 bytes @ 0x6
	global	??_setLights_Initialization
??_setLights_Initialization:	; 0 bytes @ 0x6
	global	??_setLights_Main
??_setLights_Main:	; 0 bytes @ 0x6
	global	??_setCDS_Initialization
??_setCDS_Initialization:	; 0 bytes @ 0x6
	global	??_LED_Initialization
??_LED_Initialization:	; 0 bytes @ 0x6
	global	??_LED_Main
??_LED_Main:	; 0 bytes @ 0x6
	global	??_getAD
??_getAD:	; 0 bytes @ 0x6
	global	??_setLights_Trigger
??_setLights_Trigger:	; 0 bytes @ 0x6
	global	??_setLights_Switch
??_setLights_Switch:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_MainT_Initialization
??_MainT_Initialization:	; 0 bytes @ 0x0
	global	?_getPIR_AD
?_getPIR_AD:	; 0 bytes @ 0x0
	global	??_MainT
??_MainT:	; 0 bytes @ 0x0
	global	??_TMR0_Set
??_TMR0_Set:	; 0 bytes @ 0x0
	global	??_LedPointSelect
??_LedPointSelect:	; 0 bytes @ 0x0
	global	??_LightsPointSelect
??_LightsPointSelect:	; 0 bytes @ 0x0
	global	??_setCDSPoint
??_setCDSPoint:	; 0 bytes @ 0x0
	global	?_getAD
?_getAD:	; 1 bytes @ 0x0
	global	getAD@adcon1
getAD@adcon1:	; 1 bytes @ 0x0
	global	getPIR_AD@channel1
getPIR_AD@channel1:	; 1 bytes @ 0x0
	ds	1
	global	LedPointSelect@led
LedPointSelect@led:	; 1 bytes @ 0x1
	global	getAD@adcon0
getAD@adcon0:	; 1 bytes @ 0x1
	global	LightsPointSelect@lights
LightsPointSelect@lights:	; 1 bytes @ 0x1
	global	setCDSPoint@cds
setCDSPoint@cds:	; 1 bytes @ 0x1
	global	getPIR_AD@charchannel2
getPIR_AD@charchannel2:	; 1 bytes @ 0x1
	ds	1
	global	??_setLED_Main
??_setLED_Main:	; 0 bytes @ 0x2
	global	?_setLED
?_setLED:	; 0 bytes @ 0x2
	global	?_getCDS_AD
?_getCDS_AD:	; 0 bytes @ 0x2
	global	??_Lights_Control
??_Lights_Control:	; 0 bytes @ 0x2
	global	?_setLights
?_setLights:	; 0 bytes @ 0x2
	global	?_setLights_Trigger
?_setLights_Trigger:	; 0 bytes @ 0x2
	global	?_setLights_Switch
?_setLights_Switch:	; 0 bytes @ 0x2
	global	setLED@command
setLED@command:	; 1 bytes @ 0x2
	global	setLights_Initialization@lights
setLights_Initialization@lights:	; 1 bytes @ 0x2
	global	setLights_Trigger@command
setLights_Trigger@command:	; 1 bytes @ 0x2
	global	setLights_Switch@command
setLights_Switch@command:	; 1 bytes @ 0x2
	global	setLights@command
setLights@command:	; 1 bytes @ 0x2
	global	getCDS_AD@channel1
getCDS_AD@channel1:	; 1 bytes @ 0x2
	ds	1
	global	??_setLights
??_setLights:	; 0 bytes @ 0x3
	global	setLED@led
setLED@led:	; 1 bytes @ 0x3
	global	setLights_Trigger@lights
setLights_Trigger@lights:	; 1 bytes @ 0x3
	global	setLights_Switch@lights
setLights_Switch@lights:	; 1 bytes @ 0x3
	global	getCDS_AD@channel2
getCDS_AD@channel2:	; 1 bytes @ 0x3
	ds	1
	global	??_getCDS_AD
??_getCDS_AD:	; 0 bytes @ 0x4
	global	??_setCDS_Main
??_setCDS_Main:	; 0 bytes @ 0x4
	global	setLED_Initialization@led
setLED_Initialization@led:	; 1 bytes @ 0x4
	global	setLED_Main@led
setLED_Main@led:	; 1 bytes @ 0x4
	global	setLights@lights
setLights@lights:	; 1 bytes @ 0x4
	global	Lights_Control@lights
Lights_Control@lights:	; 1 bytes @ 0x4
	global	setCDS_Initialization@cds
setCDS_Initialization@cds:	; 1 bytes @ 0x4
	ds	1
	global	setLights_Main@open
setLights_Main@open:	; 1 bytes @ 0x5
	ds	1
	global	setLights_Main@close
setLights_Main@close:	; 1 bytes @ 0x6
	global	getCDS_AD@i
getCDS_AD@i:	; 1 bytes @ 0x6
	ds	1
	global	setLights_Main@lights
setLights_Main@lights:	; 1 bytes @ 0x7
	global	setCDS_Main@cds
setCDS_Main@cds:	; 1 bytes @ 0x7
	global	getCDS_AD@j
getCDS_AD@j:	; 1 bytes @ 0x7
	ds	1
	global	getCDS_AD@cds
getCDS_AD@cds:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 103, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       8
;; BANK0           80     11      65
;; BANK1           80      0      47
;; BANK2           16      0       0

;;
;; Pointer list with targets:

;; PIR	PTR struct PIR size(1) Largest target is 0
;;		 -> NULL(NULL[0]), 
;;
;; SYSC	PTR struct SYSC size(1) Largest target is 0
;;		 -> NULL(NULL[0]), 
;;
;; CDS	PTR struct CDS size(1) Largest target is 5
;;		 -> NULL(NULL[0]), _CDS1(BANK0[5]), 
;;
;; Lights	PTR struct Lights size(1) Largest target is 9
;;		 -> NULL(NULL[0]), Lights1(BANK0[9]), 
;;
;; Timer0	PTR struct Timer0 size(1) Largest target is 7
;;		 -> NULL(NULL[0]), VarTimer0(BANK0[7]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 16
;;		 -> NULL(NULL[0]), VarTMain(BANK0[16]), 
;;
;; LED	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarErrLED(BANK0[4]), VarLED2(BANK0[4]), VarLED1(BANK0[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_TMR0_ISR
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_getCDS_AD
;;   _CDS_Main->_setCDS_Main
;;   _Lights_Main->_setLights_Main
;;   _CDS_Initialization->_setCDS_Initialization
;;   _LED_Initialization->_setLED_Initialization
;;   _setCDS_Main->_setLights_Trigger
;;   _setCDS_Main->_setLights_Switch
;;   _setCDS_Initialization->_setLED
;;   _setLights_Main->_setLights
;;   _Lights_Initialization->_setLights_Initialization
;;   _LED_Main->_setLED_Main
;;   _setLED_Initialization->_setLED
;;   _setLights_Switch->_LightsPointSelect
;;   _setLights_Trigger->_LightsPointSelect
;;   _setLights->_LightsPointSelect
;;   _Lights_Control->_LightsPointSelect
;;   _setLights_Initialization->_LightsPointSelect
;;   _getCDS_AD->_setCDSPoint
;;   _getCDS_AD->_getAD
;;   _Mcu_Initialization->_TMR0_Set
;;   _setLED->_LedPointSelect
;;   _setLED_Main->_LedPointSelect
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    2523
;;                                              9 BANK0      2     2      0
;;               _MainT_Initialization
;;                 _Mcu_Initialization
;;                 _LED_Initialization
;;                _SYSC_Initialization
;;              _Lights_Initialization
;;                 _CDS_Initialization
;;                 _PIR_Initialization
;;                          _getCDS_AD
;;                          _getPIR_AD
;;                              _MainT
;;                           _LED_Main
;;                          _SYSC_Main
;;                        _Lights_Main
;;                           _CDS_Main
;;                           _PIR_Main
;; ---------------------------------------------------------------------------------
;; (1) _CDS_Main                                             0     0      0     248
;;                        _setCDS_Main
;; ---------------------------------------------------------------------------------
;; (1) _Lights_Main                                          0     0      0     471
;;                     _setLights_Main
;;                     _Lights_Control
;; ---------------------------------------------------------------------------------
;; (1) _CDS_Initialization                                   0     0      0     651
;;              _setCDS_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _LED_Initialization                                   0     0      0     682
;;              _setLED_Initialization
;; ---------------------------------------------------------------------------------
;; (2) _setCDS_Main                                          4     4      0     248
;;                                              4 BANK0      4     4      0
;;                        _setCDSPoint
;;                  _setLights_Trigger
;;                   _setLights_Switch
;; ---------------------------------------------------------------------------------
;; (2) _setCDS_Initialization                                1     1      0     651
;;                                              4 BANK0      1     1      0
;;                        _setCDSPoint
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (2) _setLights_Main                                       3     3      0     347
;;                                              5 BANK0      3     3      0
;;                  _LightsPointSelect
;;                          _setLights
;; ---------------------------------------------------------------------------------
;; (1) _Lights_Initialization                                0     0      0      62
;;           _setLights_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _LED_Main                                             0     0      0     217
;;                        _setLED_Main
;; ---------------------------------------------------------------------------------
;; (2) _setLED_Initialization                                1     1      0     682
;;                                              4 BANK0      1     1      0
;;                     _LedPointSelect
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (3) _setLights_Switch                                     2     1      1      93
;;                                              2 BANK0      2     1      1
;;                  _LightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setLights_Trigger                                    2     1      1      93
;;                                              2 BANK0      2     1      1
;;                  _LightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setLights                                            3     2      1     155
;;                                              2 BANK0      3     2      1
;;                  _LightsPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _Lights_Control                                       3     3      0     124
;;                                              2 BANK0      3     3      0
;;                  _LightsPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setLights_Initialization                             1     1      0      62
;;                                              2 BANK0      1     1      0
;;                  _LightsPointSelect
;; ---------------------------------------------------------------------------------
;; (1) _getCDS_AD                                            7     5      2     192
;;                                              2 BANK0      7     5      2
;;                        _setCDSPoint
;;                              _getAD
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initialization                                   0     0      0       0
;;                             _IO_Set
;;                           _TMR0_Set
;;                            _ADC_Set
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initialization                                 1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _setLED                                               2     1      1     527
;;                                              2 BANK0      2     1      1
;;                     _LedPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setLED_Main                                          3     3      0     217
;;                                              2 BANK0      3     3      0
;;                     _LedPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setCDSPoint                                          2     2      0      31
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _LightsPointSelect                                    2     2      0      31
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _getAD                                                2     1      1      62
;;                                              0 BANK0      2     1      1
;; ---------------------------------------------------------------------------------
;; (2) _ADC_Set                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _TMR0_Set                                             1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _IO_Set                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _PIR_Main                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _SYSC_Main                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _getPIR_AD                                            2     0      2       0
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _PIR_Initialization                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _SYSC_Initialization                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _LedPointSelect                                       2     2      0      93
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  4     4      0       0
;;                                              2 COMMON     4     4      0
;;                           _TMR0_ISR
;; ---------------------------------------------------------------------------------
;; (6) _TMR0_ISR                                             2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initialization
;;   _Mcu_Initialization
;;     _IO_Set
;;     _TMR0_Set
;;     _ADC_Set
;;   _LED_Initialization
;;     _setLED_Initialization
;;       _LedPointSelect
;;       _setLED
;;         _LedPointSelect
;;   _SYSC_Initialization
;;   _Lights_Initialization
;;     _setLights_Initialization
;;       _LightsPointSelect
;;   _CDS_Initialization
;;     _setCDS_Initialization
;;       _setCDSPoint
;;       _setLED
;;         _LedPointSelect
;;   _PIR_Initialization
;;   _getCDS_AD
;;     _setCDSPoint
;;     _getAD
;;   _getPIR_AD
;;   _MainT
;;   _LED_Main
;;     _setLED_Main
;;       _LedPointSelect
;;   _SYSC_Main
;;   _Lights_Main
;;     _setLights_Main
;;       _LightsPointSelect
;;       _setLights
;;         _LightsPointSelect
;;     _Lights_Control
;;       _LightsPointSelect
;;   _CDS_Main
;;     _setCDS_Main
;;       _setCDSPoint
;;       _setLights_Trigger
;;         _LightsPointSelect
;;       _setLights_Switch
;;         _LightsPointSelect
;;   _PIR_Main
;;
;; _ISR (ROOT)
;;   _TMR0_ISR
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       8       2        0.0%
;;ABS                  0      0      78       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      B      41       5       81.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0      2F       7       58.8%
;;BITBANK2            10      0       0       8        0.0%
;;BANK2               10      0       0       9        0.0%
;;DATA                 0      0      80      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\main.c"
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
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_MainT_Initialization
;;		_Mcu_Initialization
;;		_LED_Initialization
;;		_SYSC_Initialization
;;		_Lights_Initialization
;;		_CDS_Initialization
;;		_PIR_Initialization
;;		_getCDS_AD
;;		_getPIR_AD
;;		_MainT
;;		_LED_Main
;;		_SYSC_Main
;;		_Lights_Main
;;		_CDS_Main
;;		_PIR_Main
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Program\PIC\Source_File\main.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l15905:	
;main.c: 8: MainT_Initialization();
	fcall	_MainT_Initialization
	line	9
;main.c: 9: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	11
;main.c: 10: ;;
;main.c: 11: LED_Initialization();
	fcall	_LED_Initialization
	line	14
	
l15907:	
;main.c: 12: ;;
;main.c: 14: SYSC_Initialization();
	fcall	_SYSC_Initialization
	line	22
	
l15909:	
;main.c: 15: ;;
;main.c: 16: ;;
;main.c: 17: ;;
;main.c: 18: ;;
;main.c: 21: ;;
;main.c: 22: Lights_Initialization();
	fcall	_Lights_Initialization
	line	23
	
l15911:	
;main.c: 23: CDS_Initialization();
	fcall	_CDS_Initialization
	line	24
	
l15913:	
;main.c: 24: PIR_Initialization();
	fcall	_PIR_Initialization
	line	28
	
l15915:	
;main.c: 26: ;;
;main.c: 27: ;;
;main.c: 28: _nop();
	nop
	goto	l15917
	line	30
;main.c: 30: while(1)
	
l5073:	
	line	32
	
l15917:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u3941
	goto	u3940
u3941:
	goto	l15923
u3940:
	line	51
	
l15919:	
;main.c: 33: {
;main.c: 51: getCDS_AD(1,0x09,0x31);
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_getCDS_AD)
	movlw	(031h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_getCDS_AD)+01h
	movlw	(01h)
	fcall	_getCDS_AD
	line	55
	
l15921:	
;main.c: 55: getPIR_AD(1,0x05,0x0d);
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_getPIR_AD)
	movlw	(0Dh)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_getPIR_AD)+01h
	movlw	(01h)
	fcall	_getPIR_AD
	goto	l15923
	line	57
	
l5074:	
	line	59
	
l15923:	
;main.c: 57: }
;main.c: 59: if(TMain->T0_Timerout)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u3951
	goto	u3950
u3951:
	goto	l15917
u3950:
	line	61
	
l15925:	
;main.c: 60: {
;main.c: 61: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr0
	bcf	indf,1
	line	62
	
l15927:	
;main.c: 62: MainT();
	fcall	_MainT
	line	63
	
l15929:	
;main.c: 63: if(TMain->PowerON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u3961
	goto	u3960
u3961:
	goto	l15917
u3960:
	line	67
	
l15931:	
;main.c: 64: {
;main.c: 65: ;;
;main.c: 66: ;;
;main.c: 67: LED_Main();
	fcall	_LED_Main
	line	69
	
l15933:	
;main.c: 69: SYSC_Main();
	fcall	_SYSC_Main
	line	74
	
l15935:	
;main.c: 70: ;;
;main.c: 71: ;;
;main.c: 72: ;;
;main.c: 74: Lights_Main();
	fcall	_Lights_Main
	line	77
	
l15937:	
;main.c: 75: ;;
;main.c: 76: ;;
;main.c: 77: CDS_Main();
	fcall	_CDS_Main
	line	78
	
l15939:	
;main.c: 78: PIR_Main();
	fcall	_PIR_Main
	goto	l15917
	line	82
;main.c: 80: ;;
;main.c: 81: ;;
	
l5076:	
	goto	l15917
	line	83
	
l5075:	
	goto	l15917
	line	84
	
l5077:	
	line	30
	goto	l15917
	
l5078:	
	line	85
	
l5079:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_CDS_Main
psect	text1086,local,class=CODE,delta=2
global __ptext1086
__ptext1086:

;; *************** function _CDS_Main *****************
;; Defined at:
;;		line 31 in file "G:\Program\PIC\Source_File\CDS_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setCDS_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1086
	file	"G:\Program\PIC\Source_File\CDS_B1.c"
	line	31
	global	__size_of_CDS_Main
	__size_of_CDS_Main	equ	__end_of_CDS_Main-_CDS_Main
	
_CDS_Main:	
	opt	stack 2
; Regs used in _CDS_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	33
	
l15903:	
;CDS_B1.c: 33: setCDS_Main(1);
	movlw	(01h)
	fcall	_setCDS_Main
	line	35
	
l11868:	
	return
	opt stack 0
GLOBAL	__end_of_CDS_Main
	__end_of_CDS_Main:
;; =============== function _CDS_Main ends ============

	signat	_CDS_Main,88
	global	_Lights_Main
psect	text1087,local,class=CODE,delta=2
global __ptext1087
__ptext1087:

;; *************** function _Lights_Main *****************
;; Defined at:
;;		line 53 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setLights_Main
;;		_Lights_Control
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1087
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	53
	global	__size_of_Lights_Main
	__size_of_Lights_Main	equ	__end_of_Lights_Main-_Lights_Main
	
_Lights_Main:	
	opt	stack 2
; Regs used in _Lights_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	55
	
l15901:	
;TriacRelay_B1.c: 55: setLights_Main(1);
	movlw	(01h)
	fcall	_setLights_Main
	line	67
;TriacRelay_B1.c: 67: Lights_Control(1);
	movlw	(01h)
	fcall	_Lights_Control
	line	77
	
l10965:	
	return
	opt stack 0
GLOBAL	__end_of_Lights_Main
	__end_of_Lights_Main:
;; =============== function _Lights_Main ends ============

	signat	_Lights_Main,88
	global	_CDS_Initialization
psect	text1088,local,class=CODE,delta=2
global __ptext1088
__ptext1088:

;; *************** function _CDS_Initialization *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\Source_File\CDS_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setCDS_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1088
	file	"G:\Program\PIC\Source_File\CDS_B1.c"
	line	17
	global	__size_of_CDS_Initialization
	__size_of_CDS_Initialization	equ	__end_of_CDS_Initialization-_CDS_Initialization
	
_CDS_Initialization:	
	opt	stack 2
; Regs used in _CDS_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l15899:	
;CDS_B1.c: 19: setCDS_Initialization(1);
	movlw	(01h)
	fcall	_setCDS_Initialization
	line	22
	
l11862:	
	return
	opt stack 0
GLOBAL	__end_of_CDS_Initialization
	__end_of_CDS_Initialization:
;; =============== function _CDS_Initialization ends ============

	signat	_CDS_Initialization,88
	global	_LED_Initialization
psect	text1089,local,class=CODE,delta=2
global __ptext1089
__ptext1089:

;; *************** function _LED_Initialization *****************
;; Defined at:
;;		line 36 in file "G:\Program\PIC\Source_File\LED_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setLED_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1089
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	36
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
	opt	stack 2
; Regs used in _LED_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	38
	
l15897:	
;LED_B1.c: 38: setLED_Initialization(1);
	movlw	(01h)
	fcall	_setLED_Initialization
	line	41
;LED_B1.c: 41: setLED_Initialization(2);
	movlw	(02h)
	fcall	_setLED_Initialization
	line	47
;LED_B1.c: 47: setLED_Initialization(99);
	movlw	(063h)
	fcall	_setLED_Initialization
	line	49
	
l4167:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Initialization
	__end_of_LED_Initialization:
;; =============== function _LED_Initialization ends ============

	signat	_LED_Initialization,88
	global	_setCDS_Main
psect	text1090,local,class=CODE,delta=2
global __ptext1090
__ptext1090:

;; *************** function _setCDS_Main *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\Source_File\CDS_B1.c"
;; Parameters:    Size  Location     Type
;;  cds             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cds             1    7[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setCDSPoint
;;		_setLights_Trigger
;;		_setLights_Switch
;; This function is called by:
;;		_CDS_Main
;; This function uses a non-reentrant model
;;
psect	text1090
	file	"G:\Program\PIC\Source_File\CDS_B1.c"
	line	38
	global	__size_of_setCDS_Main
	__size_of_setCDS_Main	equ	__end_of_setCDS_Main-_setCDS_Main
	
_setCDS_Main:	
	opt	stack 2
; Regs used in _setCDS_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setCDS_Main@cds stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setCDS_Main@cds)
	line	39
	
l15861:	
;CDS_B1.c: 39: setCDSPoint(cds);
	movf	(setCDS_Main@cds),w
	fcall	_setCDSPoint
	line	40
	
l15863:	
;CDS_B1.c: 40: if(CDS->Enable)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u3871
	goto	u3870
u3871:
	goto	l11880
u3870:
	line	42
	
l15865:	
;CDS_B1.c: 41: {
;CDS_B1.c: 42: if(!CDS->GO)
	movf	(_CDS),w
	movwf	fsr0
	btfsc	indf,1
	goto	u3881
	goto	u3880
u3881:
	goto	l15875
u3880:
	line	44
	
l15867:	
;CDS_B1.c: 43: {
;CDS_B1.c: 44: if(!CDS->ADtoGO)
	movf	(_CDS),w
	movwf	fsr0
	btfsc	indf,3
	goto	u3891
	goto	u3890
u3891:
	goto	l11880
u3890:
	line	46
	
l15869:	
;CDS_B1.c: 45: {
;CDS_B1.c: 46: CDS->Time++;
	movlw	(01h)
	movwf	(??_setCDS_Main+0)+0
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movf	(??_setCDS_Main+0)+0,w
	addwf	indf,f
	line	47
	
l15871:	
;CDS_B1.c: 47: if(CDS->Time >= 100)
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	movlw	(064h)
	subwf	indf,w
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l11880
u3900:
	line	49
	
l15873:	
;CDS_B1.c: 48: {
;CDS_B1.c: 49: CDS->Time=0;
	movf	(_CDS),w
	addlw	01h
	movwf	fsr0
	clrf	indf
	line	50
;CDS_B1.c: 50: CDS->ADtoGO=1;
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,3
	goto	l11880
	line	51
	
l11874:	
	goto	l11880
	line	52
	
l11873:	
	line	53
;CDS_B1.c: 51: }
;CDS_B1.c: 52: }
;CDS_B1.c: 53: }
	goto	l11880
	line	54
	
l11872:	
	line	56
	
l15875:	
;CDS_B1.c: 54: else
;CDS_B1.c: 55: {
;CDS_B1.c: 56: CDS->GO=0;
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,1
	line	57
;CDS_B1.c: 57: if(CDS->High)
	movf	(_CDS),w
	movwf	fsr0
	btfss	indf,4
	goto	u3911
	goto	u3910
u3911:
	goto	l15887
u3910:
	line	59
	
l15877:	
;CDS_B1.c: 58: {
;CDS_B1.c: 59: if(CDS->SignalAD >= CDS->VRAD)
	movf	(_CDS),w
	addlw	02h
	movwf	fsr
	movf	indf,w
	movwf	(??_setCDS_Main+0)+0
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_setCDS_Main+1)+0
	movf	(??_setCDS_Main+0)+0,w
	subwf	(??_setCDS_Main+1)+0,w
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l11880
u3920:
	line	61
	
l15879:	
;CDS_B1.c: 60: {
;CDS_B1.c: 61: CDS->High=0;
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,4
	line	62
	
l15881:	
;CDS_B1.c: 62: RB3=0;
	bcf	(51/8),(51)&7
	line	63
	
l15883:	
;CDS_B1.c: 63: setLights_Trigger(1,1);
	clrf	(?_setLights_Trigger)
	bsf	status,0
	rlf	(?_setLights_Trigger),f
	movlw	(01h)
	fcall	_setLights_Trigger
	line	64
	
l15885:	
;CDS_B1.c: 64: setLights_Switch(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_setLights_Switch)
	bsf	status,0
	rlf	(?_setLights_Switch),f
	movlw	(01h)
	fcall	_setLights_Switch
	goto	l11880
	line	65
	
l11877:	
	line	66
;CDS_B1.c: 65: }
;CDS_B1.c: 66: }
	goto	l11880
	line	67
	
l11876:	
	line	69
	
l15887:	
;CDS_B1.c: 67: else
;CDS_B1.c: 68: {
;CDS_B1.c: 69: if(CDS->SignalAD <= (CDS->VRAD-100))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	low(-100)
	movwf	(??_setCDS_Main+0)+0
	movlw	high(-100)
	skipnc
	movlw	(high(-100)+1)&0ffh
	movwf	((??_setCDS_Main+0)+0)+1
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_setCDS_Main+0)+0,w
	xorlw	80h
	movwf	(??_setCDS_Main+2)+0
	movlw	80h
	subwf	(??_setCDS_Main+2)+0,w
	skipz
	goto	u3935
	movf	indf,w
	subwf	0+(??_setCDS_Main+0)+0,w
u3935:

	skipc
	goto	u3931
	goto	u3930
u3931:
	goto	l11880
u3930:
	line	71
	
l15889:	
;CDS_B1.c: 70: {
;CDS_B1.c: 71: CDS->High=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,4
	line	72
	
l15891:	
;CDS_B1.c: 72: RB3=1;
	bsf	(51/8),(51)&7
	line	73
	
l15893:	
;CDS_B1.c: 73: setLights_Trigger(1,1);
	clrf	(?_setLights_Trigger)
	bsf	status,0
	rlf	(?_setLights_Trigger),f
	movlw	(01h)
	fcall	_setLights_Trigger
	line	74
	
l15895:	
;CDS_B1.c: 74: setLights_Switch(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_setLights_Switch)
	movlw	(01h)
	fcall	_setLights_Switch
	goto	l11880
	line	75
	
l11879:	
	goto	l11880
	line	76
	
l11878:	
	goto	l11880
	line	77
	
l11875:	
	goto	l11880
	line	78
	
l11871:	
	line	79
	
l11880:	
	return
	opt stack 0
GLOBAL	__end_of_setCDS_Main
	__end_of_setCDS_Main:
;; =============== function _setCDS_Main ends ============

	signat	_setCDS_Main,4216
	global	_setCDS_Initialization
psect	text1091,local,class=CODE,delta=2
global __ptext1091
__ptext1091:

;; *************** function _setCDS_Initialization *****************
;; Defined at:
;;		line 24 in file "G:\Program\PIC\Source_File\CDS_B1.c"
;; Parameters:    Size  Location     Type
;;  cds             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cds             1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setCDSPoint
;;		_setLED
;; This function is called by:
;;		_CDS_Initialization
;; This function uses a non-reentrant model
;;
psect	text1091
	file	"G:\Program\PIC\Source_File\CDS_B1.c"
	line	24
	global	__size_of_setCDS_Initialization
	__size_of_setCDS_Initialization	equ	__end_of_setCDS_Initialization-_setCDS_Initialization
	
_setCDS_Initialization:	
	opt	stack 2
; Regs used in _setCDS_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setCDS_Initialization@cds stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setCDS_Initialization@cds)
	line	25
	
l15853:	
;CDS_B1.c: 25: setCDSPoint(cds);
	movf	(setCDS_Initialization@cds),w
	fcall	_setCDSPoint
	line	26
	
l15855:	
;CDS_B1.c: 26: CDS->Enable=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	27
	
l15857:	
;CDS_B1.c: 27: setLED(cds,1);
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movf	(setCDS_Initialization@cds),w
	fcall	_setLED
	line	28
	
l15859:	
;CDS_B1.c: 28: setLED(cds+1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_setLED)
	movf	(setCDS_Initialization@cds),w
	addlw	01h
	fcall	_setLED
	line	29
	
l11865:	
	return
	opt stack 0
GLOBAL	__end_of_setCDS_Initialization
	__end_of_setCDS_Initialization:
;; =============== function _setCDS_Initialization ends ============

	signat	_setCDS_Initialization,4216
	global	_setLights_Main
psect	text1092,local,class=CODE,delta=2
global __ptext1092
__ptext1092:

;; *************** function _setLights_Main *****************
;; Defined at:
;;		line 79 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    7[BANK0 ] unsigned char 
;;  close           1    6[BANK0 ] unsigned char 
;;  open            1    5[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LightsPointSelect
;;		_setLights
;; This function is called by:
;;		_Lights_Main
;; This function uses a non-reentrant model
;;
psect	text1092
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	79
	global	__size_of_setLights_Main
	__size_of_setLights_Main	equ	__end_of_setLights_Main-_setLights_Main
	
_setLights_Main:	
	opt	stack 2
; Regs used in _setLights_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights_Main@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights_Main@lights)
	line	80
	
l15833:	
;TriacRelay_B1.c: 80: char open=1,close=1;
	clrf	(setLights_Main@open)
	bsf	status,0
	rlf	(setLights_Main@open),f
	clrf	(setLights_Main@close)
	bsf	status,0
	rlf	(setLights_Main@close),f
	line	81
	
l15835:	
;TriacRelay_B1.c: 81: LightsPointSelect(lights);
	movf	(setLights_Main@lights),w
	fcall	_LightsPointSelect
	line	82
	
l15837:	
;TriacRelay_B1.c: 82: if(Lights->Trigger)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,5
	goto	u3831
	goto	u3830
u3831:
	goto	l10973
u3830:
	line	125
	
l15839:	
;TriacRelay_B1.c: 83: {
;TriacRelay_B1.c: 125: if(open)
	movf	(setLights_Main@open),w
	skipz
	goto	u3840
	goto	l10973
u3840:
	line	127
	
l15841:	
;TriacRelay_B1.c: 126: {
;TriacRelay_B1.c: 127: if(Lights->Switch)
	movf	(_Lights),w
	movwf	fsr0
	btfss	indf,6
	goto	u3851
	goto	u3850
u3851:
	goto	l15849
u3850:
	line	170
	
l15843:	
;TriacRelay_B1.c: 128: {
;TriacRelay_B1.c: 170: if(close)
	movf	(setLights_Main@close),w
	skipz
	goto	u3860
	goto	l10973
u3860:
	line	172
	
l15845:	
;TriacRelay_B1.c: 171: {
;TriacRelay_B1.c: 172: Lights->Trigger=0;
	movf	(_Lights),w
	movwf	fsr0
	bcf	indf,5
	line	173
;TriacRelay_B1.c: 173: Lights->Open=0;
	movf	(_Lights),w
	movwf	fsr0
	bcf	indf,3
	line	174
;TriacRelay_B1.c: 174: Lights->Close=1;
	movf	(_Lights),w
	movwf	fsr0
	bsf	indf,4
	line	175
	
l15847:	
;TriacRelay_B1.c: 175: setLights(lights,1);
	clrf	(?_setLights)
	bsf	status,0
	rlf	(?_setLights),f
	movf	(setLights_Main@lights),w
	fcall	_setLights
	goto	l10973
	line	176
	
l10971:	
	line	177
;TriacRelay_B1.c: 176: }
;TriacRelay_B1.c: 177: }
	goto	l10973
	line	178
	
l10970:	
	line	180
	
l15849:	
;TriacRelay_B1.c: 178: else
;TriacRelay_B1.c: 179: {
;TriacRelay_B1.c: 180: Lights->Trigger=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,5
	line	181
;TriacRelay_B1.c: 181: Lights->Open=1;
	movf	(_Lights),w
	movwf	fsr0
	bsf	indf,3
	line	182
;TriacRelay_B1.c: 182: Lights->Close=0;
	movf	(_Lights),w
	movwf	fsr0
	bcf	indf,4
	line	183
	
l15851:	
;TriacRelay_B1.c: 183: setLights(lights,0);
	clrf	(?_setLights)
	movf	(setLights_Main@lights),w
	fcall	_setLights
	goto	l10973
	line	184
	
l10972:	
	goto	l10973
	line	185
	
l10969:	
	goto	l10973
	line	186
	
l10968:	
	line	187
	
l10973:	
	return
	opt stack 0
GLOBAL	__end_of_setLights_Main
	__end_of_setLights_Main:
;; =============== function _setLights_Main ends ============

	signat	_setLights_Main,4216
	global	_Lights_Initialization
psect	text1093,local,class=CODE,delta=2
global __ptext1093
__ptext1093:

;; *************** function _Lights_Initialization *****************
;; Defined at:
;;		line 33 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setLights_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1093
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	33
	global	__size_of_Lights_Initialization
	__size_of_Lights_Initialization	equ	__end_of_Lights_Initialization-_Lights_Initialization
	
_Lights_Initialization:	
	opt	stack 3
; Regs used in _Lights_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	35
	
l15831:	
;TriacRelay_B1.c: 35: setLights_Initialization(1);
	movlw	(01h)
	fcall	_setLights_Initialization
	line	45
	
l10959:	
	return
	opt stack 0
GLOBAL	__end_of_Lights_Initialization
	__end_of_Lights_Initialization:
;; =============== function _Lights_Initialization ends ============

	signat	_Lights_Initialization,88
	global	_LED_Main
psect	text1094,local,class=CODE,delta=2
global __ptext1094
__ptext1094:

;; *************** function _LED_Main *****************
;; Defined at:
;;		line 52 in file "G:\Program\PIC\Source_File\LED_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setLED_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1094
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	52
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
	opt	stack 3
; Regs used in _LED_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	54
	
l15829:	
;LED_B1.c: 54: setLED_Main(1);
	movlw	(01h)
	fcall	_setLED_Main
	line	57
;LED_B1.c: 57: setLED_Main(2);
	movlw	(02h)
	fcall	_setLED_Main
	line	63
;LED_B1.c: 63: setLED_Main(99);
	movlw	(063h)
	fcall	_setLED_Main
	line	65
	
l4170:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
;; =============== function _LED_Main ends ============

	signat	_LED_Main,88
	global	_setLED_Initialization
psect	text1095,local,class=CODE,delta=2
global __ptext1095
__ptext1095:

;; *************** function _setLED_Initialization *****************
;; Defined at:
;;		line 68 in file "G:\Program\PIC\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LedPointSelect
;;		_setLED
;; This function is called by:
;;		_LED_Initialization
;; This function uses a non-reentrant model
;;
psect	text1095
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	68
	global	__size_of_setLED_Initialization
	__size_of_setLED_Initialization	equ	__end_of_setLED_Initialization-_setLED_Initialization
	
_setLED_Initialization:	
	opt	stack 2
; Regs used in _setLED_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLED_Initialization@led stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLED_Initialization@led)
	line	69
	
l15823:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l15825:	
;LED_B1.c: 70: LED->Enable=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	71
	
l15827:	
;LED_B1.c: 71: setLED(led,0);
	clrf	(?_setLED)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l4173:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
;; =============== function _setLED_Initialization ends ============

	signat	_setLED_Initialization,4216
	global	_setLights_Switch
psect	text1096,local,class=CODE,delta=2
global __ptext1096
__ptext1096:

;; *************** function _setLights_Switch *****************
;; Defined at:
;;		line 194 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_setCDS_Main
;; This function uses a non-reentrant model
;;
psect	text1096
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	194
	global	__size_of_setLights_Switch
	__size_of_setLights_Switch	equ	__end_of_setLights_Switch-_setLights_Switch
	
_setLights_Switch:	
	opt	stack 2
; Regs used in _setLights_Switch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights_Switch@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights_Switch@lights)
	line	195
	
l15819:	
;TriacRelay_B1.c: 195: LightsPointSelect(lights);
	movf	(setLights_Switch@lights),w
	fcall	_LightsPointSelect
	line	196
	
l15821:	
;TriacRelay_B1.c: 196: Lights->Switch=command;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	movf	(setLights_Switch@command),w
	bcf	status, 7	;select IRP bank0
	bcf	indf,6
	skipz
	bsf	indf,6
	line	197
	
l10979:	
	return
	opt stack 0
GLOBAL	__end_of_setLights_Switch
	__end_of_setLights_Switch:
;; =============== function _setLights_Switch ends ============

	signat	_setLights_Switch,8312
	global	_setLights_Trigger
psect	text1097,local,class=CODE,delta=2
global __ptext1097
__ptext1097:

;; *************** function _setLights_Trigger *****************
;; Defined at:
;;		line 189 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_setCDS_Main
;; This function uses a non-reentrant model
;;
psect	text1097
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	189
	global	__size_of_setLights_Trigger
	__size_of_setLights_Trigger	equ	__end_of_setLights_Trigger-_setLights_Trigger
	
_setLights_Trigger:	
	opt	stack 2
; Regs used in _setLights_Trigger: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights_Trigger@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights_Trigger@lights)
	line	190
	
l15815:	
;TriacRelay_B1.c: 190: LightsPointSelect(lights);
	movf	(setLights_Trigger@lights),w
	fcall	_LightsPointSelect
	line	191
	
l15817:	
;TriacRelay_B1.c: 191: Lights->Trigger=command;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	movf	(setLights_Trigger@command),w
	bcf	status, 7	;select IRP bank0
	bcf	indf,5
	skipz
	bsf	indf,5
	line	192
	
l10976:	
	return
	opt stack 0
GLOBAL	__end_of_setLights_Trigger
	__end_of_setLights_Trigger:
;; =============== function _setLights_Trigger ends ============

	signat	_setLights_Trigger,8312
	global	_setLights
psect	text1098,local,class=CODE,delta=2
global __ptext1098
__ptext1098:

;; *************** function _setLights *****************
;; Defined at:
;;		line 220 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_setLights_Main
;; This function uses a non-reentrant model
;;
psect	text1098
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	220
	global	__size_of_setLights
	__size_of_setLights	equ	__end_of_setLights-_setLights
	
_setLights:	
	opt	stack 2
; Regs used in _setLights: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights@lights)
	line	221
	
l15795:	
;TriacRelay_B1.c: 221: LightsPointSelect(lights);
	movf	(setLights@lights),w
	fcall	_LightsPointSelect
	line	223
	
l15797:	
;TriacRelay_B1.c: 223: Lights->GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,1
	line	224
	
l15799:	
;TriacRelay_B1.c: 224: Lights->RelaySet=0;
	movf	(_Lights),w
	addlw	07h
	movwf	fsr0
	bcf	indf,0
	line	225
	
l15801:	
;TriacRelay_B1.c: 225: if(command)
	movf	(setLights@command),w
	skipz
	goto	u3800
	goto	l15809
u3800:
	line	227
	
l15803:	
;TriacRelay_B1.c: 226: {
;TriacRelay_B1.c: 227: Lights->Status=1;
	movf	(_Lights),w
	movwf	fsr0
	bsf	indf,2
	line	228
;TriacRelay_B1.c: 228: Lights->TriacValue=13;
	movlw	(0Dh)
	movwf	(??_setLights+0)+0
	movf	(_Lights),w
	addlw	04h
	movwf	fsr0
	movf	(??_setLights+0)+0,w
	movwf	indf
	line	229
;TriacRelay_B1.c: 229: Lights->RelayValue=10;
	movlw	(0Ah)
	movwf	(??_setLights+0)+0
	movf	(_Lights),w
	addlw	06h
	movwf	fsr0
	movf	(??_setLights+0)+0,w
	movwf	indf
	line	232
	
l15805:	
;TriacRelay_B1.c: 232: if(lights == 1)
	movf	(setLights@lights),w
	xorlw	01h
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l10998
u3810:
	line	234
	
l15807:	
;TriacRelay_B1.c: 233: {
;TriacRelay_B1.c: 234: RB2=1;
	bsf	(50/8),(50)&7
	goto	l10998
	line	235
	
l10995:	
	line	251
;TriacRelay_B1.c: 235: }
;TriacRelay_B1.c: 251: }
	goto	l10998
	line	252
	
l10994:	
	line	254
	
l15809:	
;TriacRelay_B1.c: 252: else
;TriacRelay_B1.c: 253: {
;TriacRelay_B1.c: 254: Lights->Status=0;
	movf	(_Lights),w
	movwf	fsr0
	bcf	indf,2
	line	255
;TriacRelay_B1.c: 255: Lights->TriacValue=5;
	movlw	(05h)
	movwf	(??_setLights+0)+0
	movf	(_Lights),w
	addlw	04h
	movwf	fsr0
	movf	(??_setLights+0)+0,w
	movwf	indf
	line	256
;TriacRelay_B1.c: 256: Lights->RelayValue=2;
	movlw	(02h)
	movwf	(??_setLights+0)+0
	movf	(_Lights),w
	addlw	06h
	movwf	fsr0
	movf	(??_setLights+0)+0,w
	movwf	indf
	line	258
	
l15811:	
;TriacRelay_B1.c: 258: if(lights == 1)
	movf	(setLights@lights),w
	xorlw	01h
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l10998
u3820:
	line	260
	
l15813:	
;TriacRelay_B1.c: 259: {
;TriacRelay_B1.c: 260: RB2=1;
	bsf	(50/8),(50)&7
	goto	l10998
	line	261
	
l10997:	
	goto	l10998
	line	277
	
l10996:	
	line	287
	
l10998:	
	return
	opt stack 0
GLOBAL	__end_of_setLights
	__end_of_setLights:
;; =============== function _setLights ends ============

	signat	_setLights,8312
	global	_Lights_Control
psect	text1099,local,class=CODE,delta=2
global __ptext1099
__ptext1099:

;; *************** function _Lights_Control *****************
;; Defined at:
;;		line 289 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_Lights_Main
;; This function uses a non-reentrant model
;;
psect	text1099
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	289
	global	__size_of_Lights_Control
	__size_of_Lights_Control	equ	__end_of_Lights_Control-_Lights_Control
	
_Lights_Control:	
	opt	stack 3
; Regs used in _Lights_Control: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lights_Control@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lights_Control@lights)
	line	290
	
l15771:	
;TriacRelay_B1.c: 290: LightsPointSelect(lights);
	movf	(Lights_Control@lights),w
	fcall	_LightsPointSelect
	line	291
	
l15773:	
;TriacRelay_B1.c: 291: if(Lights->GO)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u3721
	goto	u3720
u3721:
	goto	l11007
u3720:
	line	293
	
l15775:	
;TriacRelay_B1.c: 292: {
;TriacRelay_B1.c: 293: Lights->Time++;
	movlw	(01h)
	movwf	(??_Lights_Control+0)+0
	movf	(_Lights),w
	addlw	02h
	movwf	fsr0
	movf	(??_Lights_Control+0)+0,w
	addwf	indf,f
	line	294
	
l15777:	
;TriacRelay_B1.c: 294: if(Lights->Time >= Lights->RelayValue && !Lights->RelaySet)
	movf	(_Lights),w
	addlw	06h
	movwf	fsr
	movf	indf,w
	movwf	(??_Lights_Control+0)+0
	movf	(_Lights),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Lights_Control+1)+0
	movf	(??_Lights_Control+0)+0,w
	subwf	(??_Lights_Control+1)+0,w
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l15787
u3730:
	
l15779:	
	movf	(_Lights),w
	addlw	07h
	movwf	fsr0
	btfsc	indf,0
	goto	u3741
	goto	u3740
u3741:
	goto	l15787
u3740:
	line	296
	
l15781:	
;TriacRelay_B1.c: 295: {
;TriacRelay_B1.c: 296: Lights->RelaySet=1;
	movf	(_Lights),w
	addlw	07h
	movwf	fsr0
	bsf	indf,0
	line	298
	
l15783:	
;TriacRelay_B1.c: 298: if(lights == 1)
	movf	(Lights_Control@lights),w
	xorlw	01h
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l11007
u3750:
	line	300
	
l15785:	
;TriacRelay_B1.c: 299: {
;TriacRelay_B1.c: 300: RA4=Lights->Status?1:0;
	movf	(_Lights),w
	movwf	fsr0
	btfsc	indf,2
	goto	u3761
	goto	u3760
	
u3761:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	goto	u3774
u3760:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
u3774:
	goto	l11007
	line	301
	
l11003:	
	line	317
;TriacRelay_B1.c: 301: }
;TriacRelay_B1.c: 317: }
	goto	l11007
	line	318
	
l11002:	
	
l15787:	
;TriacRelay_B1.c: 318: else if(Lights->Time >= Lights->TriacValue)
	movf	(_Lights),w
	addlw	04h
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Lights_Control+0)+0
	movf	(_Lights),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Lights_Control+1)+0
	movf	(??_Lights_Control+0)+0,w
	subwf	(??_Lights_Control+1)+0,w
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l11007
u3780:
	line	320
	
l15789:	
;TriacRelay_B1.c: 319: {
;TriacRelay_B1.c: 320: Lights->Time=0;
	movf	(_Lights),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	line	321
;TriacRelay_B1.c: 321: Lights->GO=0;
	movf	(_Lights),w
	movwf	fsr0
	bcf	indf,1
	line	324
	
l15791:	
;TriacRelay_B1.c: 324: if(lights == 1)
	movf	(Lights_Control@lights),w
	xorlw	01h
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l11007
u3790:
	line	326
	
l15793:	
;TriacRelay_B1.c: 325: {
;TriacRelay_B1.c: 326: RB2=0;
	bcf	(50/8),(50)&7
	goto	l11007
	line	327
	
l11006:	
	goto	l11007
	line	343
	
l11005:	
	goto	l11007
	line	344
	
l11004:	
	goto	l11007
	
l11001:	
	line	345
	
l11007:	
	return
	opt stack 0
GLOBAL	__end_of_Lights_Control
	__end_of_Lights_Control:
;; =============== function _Lights_Control ends ============

	signat	_Lights_Control,4216
	global	_setLights_Initialization
psect	text1100,local,class=CODE,delta=2
global __ptext1100
__ptext1100:

;; *************** function _setLights_Initialization *****************
;; Defined at:
;;		line 47 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_Lights_Initialization
;; This function uses a non-reentrant model
;;
psect	text1100
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	47
	global	__size_of_setLights_Initialization
	__size_of_setLights_Initialization	equ	__end_of_setLights_Initialization-_setLights_Initialization
	
_setLights_Initialization:	
	opt	stack 3
; Regs used in _setLights_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights_Initialization@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights_Initialization@lights)
	line	48
	
l15765:	
;TriacRelay_B1.c: 48: LightsPointSelect(lights);
	movf	(setLights_Initialization@lights),w
	fcall	_LightsPointSelect
	line	49
	
l15767:	
;TriacRelay_B1.c: 49: Lights->Open=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,3
	line	50
	
l15769:	
;TriacRelay_B1.c: 50: Lights->Close=1;
	movf	(_Lights),w
	movwf	fsr0
	bsf	indf,4
	line	51
	
l10962:	
	return
	opt stack 0
GLOBAL	__end_of_setLights_Initialization
	__end_of_setLights_Initialization:
;; =============== function _setLights_Initialization ends ============

	signat	_setLights_Initialization,4216
	global	_getCDS_AD
psect	text1101,local,class=CODE,delta=2
global __ptext1101
__ptext1101:

;; *************** function _getCDS_AD *****************
;; Defined at:
;;		line 81 in file "G:\Program\PIC\Source_File\CDS_B1.c"
;; Parameters:    Size  Location     Type
;;  cds             1    wreg     unsigned char 
;;  channel1        1    2[BANK0 ] unsigned char 
;;  channel2        1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cds             1    8[BANK0 ] unsigned char 
;;  j               1    7[BANK0 ] unsigned char 
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setCDSPoint
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1101
	file	"G:\Program\PIC\Source_File\CDS_B1.c"
	line	81
	global	__size_of_getCDS_AD
	__size_of_getCDS_AD	equ	__end_of_getCDS_AD-_getCDS_AD
	
_getCDS_AD:	
	opt	stack 4
; Regs used in _getCDS_AD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;getCDS_AD@cds stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getCDS_AD@cds)
	line	82
	
l15751:	
;CDS_B1.c: 82: char i=0,j=0;
	clrf	(getCDS_AD@i)
	clrf	(getCDS_AD@j)
	line	83
	
l15753:	
;CDS_B1.c: 83: setCDSPoint(cds);
	movf	(getCDS_AD@cds),w
	fcall	_setCDSPoint
	line	84
	
l15755:	
;CDS_B1.c: 84: if(CDS->ADtoGO)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,3
	goto	u3711
	goto	u3710
u3711:
	goto	l11884
u3710:
	line	86
	
l15757:	
;CDS_B1.c: 85: {
;CDS_B1.c: 86: CDS->ADtoGO=0;
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,3
	line	87
;CDS_B1.c: 87: CDS->GO=1;
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,1
	line	88
	
l15759:	
;CDS_B1.c: 88: CDS->ADRES=getAD(channel1,0x70);
	movlw	(070h)
	movwf	(??_getCDS_AD+0)+0
	movf	(??_getCDS_AD+0)+0,w
	movwf	(?_getAD)
	movf	(getCDS_AD@channel1),w
	fcall	_getAD
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getCDS_AD+1)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	(??_getCDS_AD+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	89
	
l15761:	
;CDS_B1.c: 89: CDS->VRAD=CDS->ADRES;
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_getCDS_AD+0)+0
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	movf	(??_getCDS_AD+0)+0,w
	movwf	indf
	line	90
;CDS_B1.c: 90: CDS->ADRES=getAD(channel2,0x70);
	movlw	(070h)
	movwf	(??_getCDS_AD+0)+0
	movf	(??_getCDS_AD+0)+0,w
	movwf	(?_getAD)
	movf	(getCDS_AD@channel2),w
	fcall	_getAD
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getCDS_AD+1)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	(??_getCDS_AD+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	91
	
l15763:	
;CDS_B1.c: 91: CDS->SignalAD=CDS->ADRES;
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_getCDS_AD+0)+0
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	(??_getCDS_AD+0)+0,w
	movwf	indf
	goto	l11884
	line	92
	
l11883:	
	line	93
	
l11884:	
	return
	opt stack 0
GLOBAL	__end_of_getCDS_AD
	__end_of_getCDS_AD:
;; =============== function _getCDS_AD ends ============

	signat	_getCDS_AD,12408
	global	_Mcu_Initialization
psect	text1102,local,class=CODE,delta=2
global __ptext1102
__ptext1102:

;; *************** function _Mcu_Initialization *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_IO_Set
;;		_TMR0_Set
;;		_ADC_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1102
	file	"G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	line	12
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
	opt	stack 4
; Regs used in _Mcu_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	14
	
l15743:	
;MCU_16f723a_B1.c: 14: OSCCON=0x3c; ;;
	movlw	(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(144)^080h	;volatile
	line	16
	
l15745:	
;MCU_16f723a_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l15747:	
;MCU_16f723a_B1.c: 18: TMR0_Set();
	fcall	_TMR0_Set
	line	22
	
l15749:	
;MCU_16f723a_B1.c: 20: ;;
;MCU_16f723a_B1.c: 22: ADC_Set();
	fcall	_ADC_Set
	line	35
	
l10082:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
;; =============== function _Mcu_Initialization ends ============

	signat	_Mcu_Initialization,88
	global	_MainT_Initialization
psect	text1103,local,class=CODE,delta=2
global __ptext1103
__ptext1103:

;; *************** function _MainT_Initialization *****************
;; Defined at:
;;		line 89 in file "G:\Program\PIC\Source_File\main.c"
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
psect	text1103
	file	"G:\Program\PIC\Source_File\main.c"
	line	89
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
	opt	stack 5
; Regs used in _MainT_Initialization: [wregfsr0]
	line	91
	
l15735:	
;main.c: 91: _nop();
	nop
	line	96
	
l15737:	
;main.c: 96: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_TMain)
	line	97
	
l15739:	
;main.c: 97: TMain->FirstOpen=1;
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,5
	line	98
	
l15741:	
;main.c: 98: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	bsf	indf,1
	line	99
	
l5082:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initialization
	__end_of_MainT_Initialization:
;; =============== function _MainT_Initialization ends ============

	signat	_MainT_Initialization,88
	global	_setLED
psect	text1104,local,class=CODE,delta=2
global __ptext1104
__ptext1104:

;; *************** function _setLED *****************
;; Defined at:
;;		line 75 in file "G:\Program\PIC\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LedPointSelect
;; This function is called by:
;;		_setLED_Initialization
;;		_setCDS_Initialization
;;		_setSYSC_Main
;; This function uses a non-reentrant model
;;
psect	text1104
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	75
	global	__size_of_setLED
	__size_of_setLED	equ	__end_of_setLED-_setLED
	
_setLED:	
	opt	stack 2
; Regs used in _setLED: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLED@led stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLED@led)
	line	76
	
l15685:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l15687:	
;LED_B1.c: 77: if(command == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setLED@command),f
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l15701
u3580:
	line	80
	
l15689:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l15693
u3590:
	line	85
	
l15691:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RB4=1;
	bsf	(52/8),(52)&7
	line	87
;LED_B1.c: 87: }
	goto	l4198
	line	90
	
l4177:	
	
l15693:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l15697
u3600:
	line	95
	
l15695:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RB5=1;
	bsf	(53/8),(53)&7
	line	97
;LED_B1.c: 97: }
	goto	l4198
	line	110
	
l4179:	
	
l15697:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l4198
u3610:
	line	115
	
l15699:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB3=1;
	bsf	(51/8),(51)&7
	goto	l4198
	line	117
	
l4181:	
	goto	l4198
	line	119
	
l4180:	
	goto	l4198
	
l4178:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l4198
	line	120
	
l4176:	
	
l15701:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l15715
u3620:
	line	123
	
l15703:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l15707
u3630:
	line	128
	
l15705:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RB4=0;
	bcf	(52/8),(52)&7
	line	130
;LED_B1.c: 130: }
	goto	l4198
	line	133
	
l4184:	
	
l15707:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l15711
u3640:
	line	138
	
l15709:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RB5=0;
	bcf	(53/8),(53)&7
	line	140
;LED_B1.c: 140: }
	goto	l4198
	line	153
	
l4186:	
	
l15711:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h
	skipz
	goto	u3651
	goto	u3650
u3651:
	goto	l4198
u3650:
	line	158
	
l15713:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB3=0;
	bcf	(51/8),(51)&7
	goto	l4198
	line	160
	
l4188:	
	goto	l4198
	line	162
	
l4187:	
	goto	l4198
	
l4185:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l4198
	line	163
	
l4183:	
	
l15715:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l15731
u3660:
	line	165
	
l15717:	
;LED_B1.c: 164: {
;LED_B1.c: 165: LED->GO=0;
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,1
	line	166
;LED_B1.c: 166: LED->Time=0;
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	168
	
l15719:	
;LED_B1.c: 168: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l15723
u3670:
	line	173
	
l15721:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RB4=1;
	bsf	(52/8),(52)&7
	line	175
;LED_B1.c: 175: }
	goto	l4198
	line	178
	
l4191:	
	
l15723:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l15727
u3680:
	line	183
	
l15725:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RB5=1;
	bsf	(53/8),(53)&7
	line	185
;LED_B1.c: 185: }
	goto	l4198
	line	198
	
l4193:	
	
l15727:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l4198
u3690:
	line	203
	
l15729:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB3=1;
	bsf	(51/8),(51)&7
	goto	l4198
	line	205
	
l4195:	
	goto	l4198
	line	207
	
l4194:	
	goto	l4198
	
l4192:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l4198
	line	208
	
l4190:	
	
l15731:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l4198
u3700:
	line	210
	
l15733:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,1
	goto	l4198
	line	211
	
l4197:	
	goto	l4198
	line	212
	
l4196:	
	goto	l4198
	
l4189:	
	goto	l4198
	
l4182:	
	
l4198:	
	return
	opt stack 0
GLOBAL	__end_of_setLED
	__end_of_setLED:
;; =============== function _setLED ends ============

	signat	_setLED,8312
	global	_setLED_Main
psect	text1105,local,class=CODE,delta=2
global __ptext1105
__ptext1105:

;; *************** function _setLED_Main *****************
;; Defined at:
;;		line 215 in file "G:\Program\PIC\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LedPointSelect
;; This function is called by:
;;		_LED_Main
;; This function uses a non-reentrant model
;;
psect	text1105
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	215
	global	__size_of_setLED_Main
	__size_of_setLED_Main	equ	__end_of_setLED_Main-_setLED_Main
	
_setLED_Main:	
	opt	stack 3
; Regs used in _setLED_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLED_Main@led stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLED_Main@led)
	line	216
	
l15663:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l15665:	
;LED_B1.c: 217: if(LED->GO)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u3531
	goto	u3530
u3531:
	goto	l4208
u3530:
	line	219
	
l15667:	
;LED_B1.c: 218: {
;LED_B1.c: 219: LED->Time++;
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	220
	
l15669:	
;LED_B1.c: 220: if(LED->Time >= 500)
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_setLED_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLED_Main+0)+0+1
	movlw	high(01F4h)
	subwf	1+(??_setLED_Main+0)+0,w
	movlw	low(01F4h)
	skipnz
	subwf	0+(??_setLED_Main+0)+0,w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l4208
u3540:
	line	222
	
l15671:	
;LED_B1.c: 221: {
;LED_B1.c: 222: LED->Time=0;
	movf	(_LED),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	224
	
l15673:	
;LED_B1.c: 224: if(led == 1)
	movf	(setLED_Main@led),w
	xorlw	01h
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l15677
u3550:
	line	226
	
l15675:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RB4=~RB4;
	movlw	1<<((52)&7)
	xorwf	((52)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l4208
	line	230
	
l4203:	
	
l15677:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l15681
u3560:
	line	232
	
l15679:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RB5=~RB5;
	movlw	1<<((53)&7)
	xorwf	((53)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l4208
	line	242
	
l4205:	
	
l15681:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l4208
u3570:
	line	244
	
l15683:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB3=~RB3;
	movlw	1<<((51)&7)
	xorwf	((51)/8),f
	goto	l4208
	line	245
	
l4207:	
	goto	l4208
	line	247
	
l4206:	
	goto	l4208
	
l4204:	
	goto	l4208
	
l4202:	
	goto	l4208
	line	248
	
l4201:	
	line	249
	
l4208:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Main
	__end_of_setLED_Main:
;; =============== function _setLED_Main ends ============

	signat	_setLED_Main,4216
	global	_setCDSPoint
psect	text1106,local,class=CODE,delta=2
global __ptext1106
__ptext1106:

;; *************** function _setCDSPoint *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\CDS_B1.c"
;; Parameters:    Size  Location     Type
;;  cds             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cds             1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setCDS_Initialization
;;		_setCDS_Main
;;		_getCDS_AD
;; This function uses a non-reentrant model
;;
psect	text1106
	file	"G:\Program\PIC\Source_File\CDS_B1.c"
	line	8
	global	__size_of_setCDSPoint
	__size_of_setCDSPoint	equ	__end_of_setCDSPoint-_setCDSPoint
	
_setCDSPoint:	
	opt	stack 3
; Regs used in _setCDSPoint: [wreg]
;setCDSPoint@cds stored from wreg
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setCDSPoint@cds)
	
l15639:	
;CDS_B1.c: 10: if(cds == 1)
	movf	(setCDSPoint@cds),w
	xorlw	01h
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l11859
u3480:
	line	12
	
l15641:	
;CDS_B1.c: 11: {
;CDS_B1.c: 12: CDS=&_CDS1;
	movlw	(__CDS1)&0ffh
	movwf	(??_setCDSPoint+0)+0
	movf	(??_setCDSPoint+0)+0,w
	movwf	(_CDS)
	goto	l11859
	line	13
	
l11858:	
	line	15
	
l11859:	
	return
	opt stack 0
GLOBAL	__end_of_setCDSPoint
	__end_of_setCDSPoint:
;; =============== function _setCDSPoint ends ============

	signat	_setCDSPoint,4216
	global	_LightsPointSelect
psect	text1107,local,class=CODE,delta=2
global __ptext1107
__ptext1107:

;; *************** function _LightsPointSelect *****************
;; Defined at:
;;		line 10 in file "G:\Program\PIC\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setLights_Initialization
;;		_setLights_Main
;;		_setLights_Trigger
;;		_setLights_Switch
;;		_setLights
;;		_Lights_Control
;;		_setLights_Open
;;		_getLights_Open
;;		_setLights_Close
;;		_getLights_Close
;; This function uses a non-reentrant model
;;
psect	text1107
	file	"G:\Program\PIC\Source_File\TriacRelay_B1.c"
	line	10
	global	__size_of_LightsPointSelect
	__size_of_LightsPointSelect	equ	__end_of_LightsPointSelect-_LightsPointSelect
	
_LightsPointSelect:	
	opt	stack 2
; Regs used in _LightsPointSelect: [wreg]
;LightsPointSelect@lights stored from wreg
	line	12
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LightsPointSelect@lights)
	
l15619:	
;TriacRelay_B1.c: 12: if(lights == 1)
	movf	(LightsPointSelect@lights),w
	xorlw	01h
	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l10956
u3470:
	line	14
	
l15621:	
;TriacRelay_B1.c: 13: {
;TriacRelay_B1.c: 14: Lights=&Lights1;
	movlw	(_Lights1)&0ffh
	movwf	(??_LightsPointSelect+0)+0
	movf	(??_LightsPointSelect+0)+0,w
	movwf	(_Lights)
	goto	l10956
	line	15
	
l10955:	
	line	31
	
l10956:	
	return
	opt stack 0
GLOBAL	__end_of_LightsPointSelect
	__end_of_LightsPointSelect:
;; =============== function _LightsPointSelect ends ============

	signat	_LightsPointSelect,4216
	global	_getAD
psect	text1108,local,class=CODE,delta=2
global __ptext1108
__ptext1108:

;; *************** function _getAD *****************
;; Defined at:
;;		line 235 in file "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
;; Parameters:    Size  Location     Type
;;  adcon0          1    wreg     unsigned char 
;;  adcon1          1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adcon0          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getCDS_AD
;; This function uses a non-reentrant model
;;
psect	text1108
	file	"G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	line	235
	global	__size_of_getAD
	__size_of_getAD	equ	__end_of_getAD-_getAD
	
_getAD:	
	opt	stack 4
; Regs used in _getAD: [wreg]
;getAD@adcon0 stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getAD@adcon0)
	line	236
	
l15611:	
;MCU_16f723a_B1.c: 236: ADCON0=adcon0;
	movf	(getAD@adcon0),w
	movwf	(31)	;volatile
	line	237
;MCU_16f723a_B1.c: 237: ADCON1=adcon1;
	movf	(getAD@adcon1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	238
	
l15613:	
;MCU_16f723a_B1.c: 238: GO_nDONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	239
;MCU_16f723a_B1.c: 239: while(GO_nDONE);
	goto	l10105
	
l10106:	
	
l10105:	
	btfsc	(249/8),(249)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l10105
u3460:
	goto	l15615
	
l10107:	
	line	240
	
l15615:	
;MCU_16f723a_B1.c: 240: return ADRES;
	movf	(30),w	;volatile
	goto	l10108
	
l15617:	
	line	241
	
l10108:	
	return
	opt stack 0
GLOBAL	__end_of_getAD
	__end_of_getAD:
;; =============== function _getAD ends ============

	signat	_getAD,8313
	global	_ADC_Set
psect	text1109,local,class=CODE,delta=2
global __ptext1109
__ptext1109:

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 229 in file "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text1109
	file	"G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	line	229
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
	opt	stack 4
; Regs used in _ADC_Set: [wreg]
	line	230
	
l15207:	
;MCU_16f723a_B1.c: 230: ADCON1=0x72;
	movlw	(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	231
;MCU_16f723a_B1.c: 231: FVRCON=0xc1;
	movlw	(0C1h)
	movwf	(157)^080h	;volatile
	line	232
	
l10102:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Set
	__end_of_ADC_Set:
;; =============== function _ADC_Set ends ============

	signat	_ADC_Set,88
	global	_TMR0_Set
psect	text1110,local,class=CODE,delta=2
global __ptext1110
__ptext1110:

;; *************** function _TMR0_Set *****************
;; Defined at:
;;		line 70 in file "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2
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
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text1110
	file	"G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	line	70
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
	opt	stack 4
; Regs used in _TMR0_Set: [wreg-fsr0h+status,2]
	line	71
	
l15599:	
;MCU_16f723a_B1.c: 71: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movwf	(_Timer0)
	line	72
	
l15601:	
;MCU_16f723a_B1.c: 72: Timer0->DimmerCountValue=158;
	movf	(_Timer0),w
	addlw	05h
	movwf	fsr0
	movlw	low(09Eh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(09Eh)
	movwf	indf
	line	73
	
l15603:	
;MCU_16f723a_B1.c: 73: OPTION_REG=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	74
	
l15605:	
;MCU_16f723a_B1.c: 74: TMR0=(256-90);
	movlw	(0A6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	75
	
l15607:	
;MCU_16f723a_B1.c: 75: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	76
	
l15609:	
;MCU_16f723a_B1.c: 76: GIE=1;
	bsf	(95/8),(95)&7
	line	77
	
l10091:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_Set
	__end_of_TMR0_Set:
;; =============== function _TMR0_Set ends ============

	signat	_TMR0_Set,88
	global	_IO_Set
psect	text1111,local,class=CODE,delta=2
global __ptext1111
__ptext1111:

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text1111
	file	"G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	line	38
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
	opt	stack 4
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l15181:	
;MCU_16f723a_B1.c: 39: TRISA=0b00101111;;
	movlw	(02Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	40
;MCU_16f723a_B1.c: 40: TRISB=0b00000001;;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	41
	
l15183:	
;MCU_16f723a_B1.c: 41: TRISC=0b00000000;;
	clrf	(135)^080h	;volatile
	line	42
	
l15185:	
;MCU_16f723a_B1.c: 42: ANSELA=0b00000111;;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(389)^0180h	;volatile
	line	43
	
l15187:	
;MCU_16f723a_B1.c: 43: ANSELB=0b00000001;;
	movlw	(01h)
	movwf	(390)^0180h	;volatile
	line	44
	
l15189:	
;MCU_16f723a_B1.c: 44: PORTA=0b10101111;;
	movlw	(0AFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	45
	
l15191:	
;MCU_16f723a_B1.c: 45: PORTB=0b00000001;;
	movlw	(01h)
	movwf	(6)	;volatile
	line	46
	
l15193:	
;MCU_16f723a_B1.c: 46: PORTC=0b00000000;;
	clrf	(7)	;volatile
	line	47
	
l10085:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
;; =============== function _IO_Set ends ============

	signat	_IO_Set,88
	global	_PIR_Main
psect	text1112,local,class=CODE,delta=2
global __ptext1112
__ptext1112:

;; *************** function _PIR_Main *****************
;; Defined at:
;;		line 14 in file "G:\Program\PIC\Source_File\PIR_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1112
	file	"G:\Program\PIC\Source_File\PIR_B1.c"
	line	14
	global	__size_of_PIR_Main
	__size_of_PIR_Main	equ	__end_of_PIR_Main-_PIR_Main
	
_PIR_Main:	
	opt	stack 5
; Regs used in _PIR_Main: []
	line	15
	
l13581:	
	return
	opt stack 0
GLOBAL	__end_of_PIR_Main
	__end_of_PIR_Main:
;; =============== function _PIR_Main ends ============

	signat	_PIR_Main,88
	global	_SYSC_Main
psect	text1113,local,class=CODE,delta=2
global __ptext1113
__ptext1113:

;; *************** function _SYSC_Main *****************
;; Defined at:
;;		line 31 in file "G:\Program\PIC\Source_File\SYSC_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1113
	file	"G:\Program\PIC\Source_File\SYSC_B1.c"
	line	31
	global	__size_of_SYSC_Main
	__size_of_SYSC_Main	equ	__end_of_SYSC_Main-_SYSC_Main
	
_SYSC_Main:	
	opt	stack 5
; Regs used in _SYSC_Main: []
	line	35
	
l12728:	
	return
	opt stack 0
GLOBAL	__end_of_SYSC_Main
	__end_of_SYSC_Main:
;; =============== function _SYSC_Main ends ============

	signat	_SYSC_Main,88
	global	_MainT
psect	text1114,local,class=CODE,delta=2
global __ptext1114
__ptext1114:

;; *************** function _MainT *****************
;; Defined at:
;;		line 102 in file "G:\Program\PIC\Source_File\main.c"
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
psect	text1114
	file	"G:\Program\PIC\Source_File\main.c"
	line	102
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 5
; Regs used in _MainT: [wreg-fsr0h+status,2+status,0]
	line	104
	
l15581:	
;main.c: 104: if(!TMain->PowerON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfsc	indf,0
	goto	u3421
	goto	u3420
u3421:
	goto	l15589
u3420:
	line	106
	
l15583:	
;main.c: 105: {
;main.c: 106: TMain->PowerCount++;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	107
	
l15585:	
;main.c: 107: if(TMain->PowerCount == 150)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_MainT+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_MainT+0)+0+1
	movlw	096h
	xorwf	0+(??_MainT+0)+0,w
	iorwf	1+(??_MainT+0)+0,w
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l5091
u3430:
	line	109
	
l15587:	
;main.c: 108: {
;main.c: 109: TMain->PowerCount=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	110
;main.c: 110: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,0
	line	124
;main.c: 123: ;;
;main.c: 124: TMain->SelfTest=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	bsf	indf,0
	goto	l5091
	line	143
;main.c: 127: ;;
;main.c: 139: ;;
	
l5086:	
	line	144
;main.c: 143: }
;main.c: 144: }
	goto	l5091
	line	145
	
l5085:	
	line	154
	
l15589:	
;main.c: 145: else
;main.c: 146: {
;main.c: 154: TMain->Count1++;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	155
	
l15591:	
;main.c: 155: if(TMain->Count1 == 100)
	movf	(_TMain),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	movwf	(??_MainT+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_MainT+0)+0+1
	movlw	064h
	xorwf	0+(??_MainT+0)+0,w
	iorwf	1+(??_MainT+0)+0,w
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l5091
u3440:
	line	157
	
l15593:	
;main.c: 156: {
;main.c: 157: TMain->Count1=0;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	168
;main.c: 168: if(TMain->Flag == 1)
	movf	(_TMain),w
	movwf	fsr0
	btfss	indf,3
	goto	u3451
	goto	u3450
u3451:
	goto	l15597
u3450:
	line	170
	
l15595:	
;main.c: 169: {
;main.c: 170: TMain->Flag=0;
	movf	(_TMain),w
	movwf	fsr0
	bcf	indf,3
	line	177
;main.c: 177: }
	goto	l5091
	line	178
	
l5089:	
	line	180
	
l15597:	
;main.c: 178: else
;main.c: 179: {
;main.c: 180: TMain->Flag=1;
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,3
	goto	l5091
	line	187
	
l5090:	
	goto	l5091
	line	188
	
l5088:	
	goto	l5091
	line	190
	
l5087:	
	line	191
	
l5091:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_getPIR_AD
psect	text1115,local,class=CODE,delta=2
global __ptext1115
__ptext1115:

;; *************** function _getPIR_AD *****************
;; Defined at:
;;		line 23 in file "G:\Program\PIC\Source_File\PIR_B1.c"
;; Parameters:    Size  Location     Type
;;  pir             1    wreg     unsigned char 
;;  channel1        1    0[BANK0 ] unsigned char 
;;  charchannel2    1    1[BANK0 ] unsigned char 
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
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
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
psect	text1115
	file	"G:\Program\PIC\Source_File\PIR_B1.c"
	line	23
	global	__size_of_getPIR_AD
	__size_of_getPIR_AD	equ	__end_of_getPIR_AD-_getPIR_AD
	
_getPIR_AD:	
	opt	stack 5
; Regs used in _getPIR_AD: [wreg]
	line	24
	
l13590:	
	return
	opt stack 0
GLOBAL	__end_of_getPIR_AD
	__end_of_getPIR_AD:
;; =============== function _getPIR_AD ends ============

	signat	_getPIR_AD,12408
	global	_PIR_Initialization
psect	text1116,local,class=CODE,delta=2
global __ptext1116
__ptext1116:

;; *************** function _PIR_Initialization *****************
;; Defined at:
;;		line 11 in file "G:\Program\PIC\Source_File\PIR_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1116
	file	"G:\Program\PIC\Source_File\PIR_B1.c"
	line	11
	global	__size_of_PIR_Initialization
	__size_of_PIR_Initialization	equ	__end_of_PIR_Initialization-_PIR_Initialization
	
_PIR_Initialization:	
	opt	stack 5
; Regs used in _PIR_Initialization: []
	line	12
	
l13578:	
	return
	opt stack 0
GLOBAL	__end_of_PIR_Initialization
	__end_of_PIR_Initialization:
;; =============== function _PIR_Initialization ends ============

	signat	_PIR_Initialization,88
	global	_SYSC_Initialization
psect	text1117,local,class=CODE,delta=2
global __ptext1117
__ptext1117:

;; *************** function _SYSC_Initialization *****************
;; Defined at:
;;		line 18 in file "G:\Program\PIC\Source_File\SYSC_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1117
	file	"G:\Program\PIC\Source_File\SYSC_B1.c"
	line	18
	global	__size_of_SYSC_Initialization
	__size_of_SYSC_Initialization	equ	__end_of_SYSC_Initialization-_SYSC_Initialization
	
_SYSC_Initialization:	
	opt	stack 5
; Regs used in _SYSC_Initialization: []
	line	22
	
l12722:	
	return
	opt stack 0
GLOBAL	__end_of_SYSC_Initialization
	__end_of_SYSC_Initialization:
;; =============== function _SYSC_Initialization ends ============

	signat	_SYSC_Initialization,88
	global	_LedPointSelect
psect	text1118,local,class=CODE,delta=2
global __ptext1118
__ptext1118:

;; *************** function _LedPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setLED_Initialization
;;		_setLED
;;		_setLED_Main
;; This function uses a non-reentrant model
;;
psect	text1118
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	8
	global	__size_of_LedPointSelect
	__size_of_LedPointSelect	equ	__end_of_LedPointSelect-_LedPointSelect
	
_LedPointSelect:	
	opt	stack 3
; Regs used in _LedPointSelect: [wreg]
;LedPointSelect@led stored from wreg
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LedPointSelect@led)
	
l15569:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l15573
u3390:
	line	12
	
l15571:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	line	13
;LED_B1.c: 13: }
	goto	l4164
	line	16
	
l4159:	
	
l15573:	
;LED_B1.c: 16: else if(led == 2)
	movf	(LedPointSelect@led),w
	xorlw	02h
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l15577
u3400:
	line	18
	
l15575:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	line	19
;LED_B1.c: 19: }
	goto	l4164
	line	28
	
l4161:	
	
l15577:	
;LED_B1.c: 28: else if(led == 99)
	movf	(LedPointSelect@led),w
	xorlw	063h
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l4164
u3410:
	line	30
	
l15579:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	goto	l4164
	line	31
	
l4163:	
	goto	l4164
	line	33
	
l4162:	
	goto	l4164
	
l4160:	
	
l4164:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
;; =============== function _LedPointSelect ends ============

	signat	_LedPointSelect,4216
	global	_ISR
psect	text1119,local,class=CODE,delta=2
global __ptext1119
__ptext1119:

;; *************** function _ISR *****************
;; Defined at:
;;		line 53 in file "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
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
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_TMR0_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1119
	file	"G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	line	53
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 2
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
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text1119
	line	56
	
i1l15209:	
;MCU_16f723a_B1.c: 54: ;;
;MCU_16f723a_B1.c: 56: TMR0_ISR();
	fcall	_TMR0_ISR
	line	65
	
i1l10088:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_TMR0_ISR
psect	text1120,local,class=CODE,delta=2
global __ptext1120
__ptext1120:

;; *************** function _TMR0_ISR *****************
;; Defined at:
;;		line 80 in file "G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
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
psect	text1120
	file	"G:\Program\PIC\Source_File\MCU_16f723a_B1.c"
	line	80
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
	opt	stack 2
; Regs used in _TMR0_ISR: [wreg-fsr0h+status,2+status,0]
	line	81
	
i1l15211:	
;MCU_16f723a_B1.c: 81: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l10096
u284_20:
	
i1l15213:	
	btfss	(90/8),(90)&7
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l10096
u285_20:
	line	83
	
i1l15215:	
;MCU_16f723a_B1.c: 82: {
;MCU_16f723a_B1.c: 83: TMR0=(256-90);
	movlw	(0A6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	84
	
i1l15217:	
;MCU_16f723a_B1.c: 84: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	102
	
i1l15219:	
;MCU_16f723a_B1.c: 102: Timer0->Count++;
	movf	(_Timer0),w
	addlw	01h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	103
	
i1l15221:	
;MCU_16f723a_B1.c: 103: if(Timer0->Count == 200)
	movf	(_Timer0),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_TMR0_ISR+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_TMR0_ISR+0)+0+1
	movlw	0C8h
	xorwf	0+(??_TMR0_ISR+0)+0,w
	iorwf	1+(??_TMR0_ISR+0)+0,w
	skipz
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l10096
u286_20:
	line	105
	
i1l15223:	
;MCU_16f723a_B1.c: 104: {
;MCU_16f723a_B1.c: 105: Timer0->Count=0;
	movf	(_Timer0),w
	addlw	01h
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	106
;MCU_16f723a_B1.c: 106: TMain->T0_Timerout=1;
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,1
	goto	i1l10096
	line	107
	
i1l10095:	
	goto	i1l10096
	line	108
	
i1l10094:	
	line	109
	
i1l10096:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
;; =============== function _TMR0_ISR ends ============

	signat	_TMR0_ISR,88
psect	text1121,local,class=CODE,delta=2
global __ptext1121
__ptext1121:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
