opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F1516
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
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 7 "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	dw 0xFFFC & 0xFFE7 ;#
# 8 "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	dw 0xFFFF & 0xFFFE ;#
	FNCALL	_main,_MainT_Initial
	FNCALL	_main,_Mcu_Initial
	FNCALL	_main,_SegmentDisplay_Initial
	FNCALL	_main,_MainT
	FNCALL	_main,_I2C_Main
	FNCALL	_main,_SegmentDisplay_Main
	FNCALL	_MainT,_setSegmentDisplayNumber
	FNCALL	_setSegmentDisplayNumber,___awdiv
	FNCALL	_setSegmentDisplayNumber,___awmod
	FNCALL	_I2C_Main,_I2C_Master_Reception
	FNCALL	_I2C_Main,_I2C_Master_Transmission
	FNCALL	_Mcu_Initial,_IO_Set
	FNCALL	_Mcu_Initial,_TMR1_Set
	FNCALL	_Mcu_Initial,_I2C_Set
	FNROOT	_main
	FNCALL	_ISR,_TMR1_ISR
	FNCALL	_ISR,_I2C_ISR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarSegment
	global	_VarProduct
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"G:\Program\PIC\Header_File\SegmentDisplay_A2.h"
	line	69

;initializer for _VarSegment
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0D8h
	retlw	080h
	retlw	090h
	retlw	088h
	retlw	083h
	retlw	0A7h
	retlw	0A1h
	retlw	086h
	retlw	08Eh
	retlw	0BFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"G:\Program\PIC\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
	line	245

;initializer for _VarProduct
	retlw	063h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_I2C
	global	_Timer1
	global	_Segment
	global	_VarTMain
	global	_VarTimer1
	global	_VarI2C
	global	_Product
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_Product:
       ds      1

	global	_TMain
_TMain:
       ds      1

	global	_PORTA
_PORTA	set	12
	global	_PORTB
_PORTB	set	13
	global	_PORTC
_PORTC	set	14
	global	_T1CON
_T1CON	set	24
	global	_TMR1H
_TMR1H	set	23
	global	_TMR1L
_TMR1L	set	22
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RA1
_RA1	set	97
	global	_RA2
_RA2	set	98
	global	_RA4
_RA4	set	100
	global	_RA5
_RA5	set	101
	global	_RA6
_RA6	set	102
	global	_RA7
_RA7	set	103
	global	_RC0
_RC0	set	112
	global	_SSPIF
_SSPIF	set	139
	global	_TMR1IF
_TMR1IF	set	136
	global	_OSCCON
_OSCCON	set	153
	global	_TRISA
_TRISA	set	140
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
	global	_SSPIE
_SSPIE	set	1163
	global	_TMR1IE
_TMR1IE	set	1160
	global	_LATA
_LATA	set	268
	global	_LATB
_LATB	set	269
	global	_LATC
_LATC	set	270
	global	_ANSELA
_ANSELA	set	396
	global	_ANSELB
_ANSELB	set	397
	global	_ANSELC
_ANSELC	set	398
	global	_SSPADD
_SSPADD	set	530
	global	_SSPBUF
_SSPBUF	set	529
	global	_SSPCON1
_SSPCON1	set	533
	global	_SSPCON2
_SSPCON2	set	534
	global	_SSPSTAT
_SSPSTAT	set	532
	global	_ACKEN
_ACKEN	set	4276
	global	_ACKSTAT
_ACKSTAT	set	4278
	global	_BF
_BF	set	4256
	global	_CKP
_CKP	set	4268
	global	_PEN
_PEN	set	4274
	global	_RCEN
_RCEN	set	4275
	global	_R_nW
_R_nW	set	4258
	global	_SEN
_SEN	set	4272
	global	_SSPOV
_SSPOV	set	4270
	file	"myDevelopment-AC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Segment:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_I2C:
       ds      1

_Timer1:
       ds      1

_VarTMain:
       ds      15

_VarTimer1:
       ds      3

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"G:\Program\PIC\Header_File\SegmentDisplay_A2.h"
	line	69
_VarSegment:
       ds      26

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"G:\Program\PIC\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
	line	245
_VarProduct:
       ds      32

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_VarI2C:
       ds      67

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	014h
	fcall	clear_ram
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	043h
	fcall	clear_ram
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 01Ah
	fcall init_ram
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2
	movlw low(__pidataBANK1)
	movwf fsr0l
	movlw high(__pidataBANK1)|80h
	movwf fsr0h
	movlw low(__pdataBANK1)
	movwf fsr1l
	movlw high(__pdataBANK1)
	movwf fsr1h
	movlw 020h
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_IO_Set
?_IO_Set:	; 0 bytes @ 0x0
	global	?_TMR1_Set
?_TMR1_Set:	; 0 bytes @ 0x0
	global	?_I2C_Set
?_I2C_Set:	; 0 bytes @ 0x0
	global	?_TMR1_ISR
?_TMR1_ISR:	; 0 bytes @ 0x0
	global	??_TMR1_ISR
??_TMR1_ISR:	; 0 bytes @ 0x0
	global	?_I2C_ISR
?_I2C_ISR:	; 0 bytes @ 0x0
	global	??_I2C_ISR
??_I2C_ISR:	; 0 bytes @ 0x0
	global	?_I2C_Master_Reception
?_I2C_Master_Reception:	; 0 bytes @ 0x0
	global	?_I2C_Master_Transmission
?_I2C_Master_Transmission:	; 0 bytes @ 0x0
	global	?_MainT_Initial
?_MainT_Initial:	; 0 bytes @ 0x0
	global	?_SegmentDisplay_Initial
?_SegmentDisplay_Initial:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_SegmentDisplay_Main
?_SegmentDisplay_Main:	; 0 bytes @ 0x0
	global	?_Mcu_Initial
?_Mcu_Initial:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_I2C_Main
?_I2C_Main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	1
	global	??_IO_Set
??_IO_Set:	; 0 bytes @ 0x1
	global	??_TMR1_Set
??_TMR1_Set:	; 0 bytes @ 0x1
	global	??_I2C_Set
??_I2C_Set:	; 0 bytes @ 0x1
	global	??_I2C_Master_Reception
??_I2C_Master_Reception:	; 0 bytes @ 0x1
	global	??_I2C_Master_Transmission
??_I2C_Master_Transmission:	; 0 bytes @ 0x1
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x1
	global	??_SegmentDisplay_Initial
??_SegmentDisplay_Initial:	; 0 bytes @ 0x1
	global	??_SegmentDisplay_Main
??_SegmentDisplay_Main:	; 0 bytes @ 0x1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x1
	global	?___awmod
?___awmod:	; 2 bytes @ 0x1
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x1
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x1
	ds	1
	global	??_Mcu_Initial
??_Mcu_Initial:	; 0 bytes @ 0x2
	global	I2C_Master_Transmission@i
I2C_Master_Transmission@i:	; 1 bytes @ 0x2
	ds	1
	global	I2C_Master_Reception@i
I2C_Master_Reception@i:	; 1 bytes @ 0x3
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x3
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x3
	ds	1
	global	??_I2C_Main
??_I2C_Main:	; 0 bytes @ 0x4
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x5
	global	??___awmod
??___awmod:	; 0 bytes @ 0x5
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x6
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x7
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x7
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x8
	ds	2
	global	?_setSegmentDisplayNumber
?_setSegmentDisplayNumber:	; 0 bytes @ 0xA
	global	setSegmentDisplayNumber@number
setSegmentDisplayNumber@number:	; 2 bytes @ 0xA
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_setSegmentDisplayNumber
??_setSegmentDisplayNumber:	; 0 bytes @ 0x0
	ds	3
	global	setSegmentDisplayNumber@i
setSegmentDisplayNumber@i:	; 1 bytes @ 0x3
	ds	1
	global	??_MainT
??_MainT:	; 0 bytes @ 0x4
	ds	3
;;Data sizes: Strings 0, constant 0, data 58, bss 88, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      13
;; BANK0           80      7      55
;; BANK1           80      0      32
;; BANK2           80      0      67
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           16      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; Segment	PTR struct Segment size(1) Largest target is 26
;;		 -> NULL(NULL[0]), VarSegment(BANK0[26]), 
;;
;; Product	PTR struct Product size(1) Largest target is 32
;;		 -> NULL(NULL[0]), VarProduct(BANK1[32]), 
;;
;; I2C	PTR struct I2C size(1) Largest target is 67
;;		 -> NULL(NULL[0]), VarI2C(BANK2[67]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 15
;;		 -> NULL(NULL[0]), VarTMain(BANK0[15]), 
;;
;; Timer1	PTR struct Timer1 size(1) Largest target is 3
;;		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _MainT->_setSegmentDisplayNumber
;;   _setSegmentDisplayNumber->___awdiv
;;   _I2C_Main->_I2C_Master_Reception
;;   _Mcu_Initial->_TMR1_Set
;;   _Mcu_Initial->_I2C_Set
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_MainT
;;   _MainT->_setSegmentDisplayNumber
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
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK4
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK4
;;
;;   None.
;;
;; Critical Paths under _main in BANK5
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK5
;;
;;   None.
;;
;; Critical Paths under _main in BANK6
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK6
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    1494
;;                      _MainT_Initial
;;                        _Mcu_Initial
;;             _SegmentDisplay_Initial
;;                              _MainT
;;                           _I2C_Main
;;                _SegmentDisplay_Main
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                4     4      0    1358
;;                                              4 BANK0      3     3      0
;;            _setSegmentDisplayNumber
;; ---------------------------------------------------------------------------------
;; (2) _setSegmentDisplayNumber                              6     4      2    1358
;;                                             10 COMMON     2     0      2
;;                                              0 BANK0      4     4      0
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Main                                             1     1      0     136
;;               _I2C_Master_Reception
;;            _I2C_Master_Transmission
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initial                                          0     0      0       0
;;                             _IO_Set
;;                           _TMR1_Set
;;                            _I2C_Set
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     433
;;                                              1 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     445
;;                                              1 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) _SegmentDisplay_Main                                  2     2      0       0
;;                                              1 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _SegmentDisplay_Initial                               1     1      0       0
;;                                              1 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              1 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Master_Transmission                              2     2      0      68
;;                                              1 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Master_Reception                                 3     3      0      68
;;                                              1 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Set                                              1     1      0       0
;;                                              1 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _TMR1_Set                                             1     1      0       0
;;                                              1 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _IO_Set                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ISR                                                  1     1      0       0
;;                                              0 COMMON     1     1      0
;;                           _TMR1_ISR
;;                            _I2C_ISR
;; ---------------------------------------------------------------------------------
;; (5) _I2C_ISR                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _TMR1_ISR                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initial
;;   _Mcu_Initial
;;     _IO_Set
;;     _TMR1_Set
;;     _I2C_Set
;;   _SegmentDisplay_Initial
;;   _MainT
;;     _setSegmentDisplayNumber
;;       ___awdiv
;;       ___awmod
;;   _I2C_Main
;;     _I2C_Master_Reception
;;     _I2C_Master_Transmission
;;   _SegmentDisplay_Main
;;
;; _ISR (ROOT)
;;   _TMR1_ISR
;;   _I2C_ISR
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             1F0      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      C       D       2       92.9%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       7       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0      A7       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50      7      37       6       68.8%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BITBANK1            50      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BANK1               50      0      20       8       40.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BITBANK2            50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BANK2               50      0      43      10       83.8%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BITBANK3            50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BANK3               50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BITBANK4            50      0       0      13        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BANK4               50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BITBANK5            50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BANK5               50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BITBANK6            10      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BANK6               10      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;DATA                 0      0      AE      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\myMain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_MainT_Initial
;;		_Mcu_Initial
;;		_SegmentDisplay_Initial
;;		_MainT
;;		_I2C_Main
;;		_SegmentDisplay_Main
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Program\PIC\Source_File\myMain.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 11
; Regs used in _main: [allreg]
	line	8
	
l5370:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l5372:	
;myMain.c: 9: Mcu_Initial();
	fcall	_Mcu_Initial
	line	10
	
l5374:	
;myMain.c: 10: SegmentDisplay_Initial();
	fcall	_SegmentDisplay_Initial
	line	12
	
l5376:	
;myMain.c: 11: ;;
;myMain.c: 12: _nop();
	nop
	goto	l5378
	line	13
;myMain.c: 13: while(1)
	
l2184:	
	line	17
	
l5378:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u4061
	goto	u4060
u4061:
	goto	l5378
u4060:
	line	19
	
l5380:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l5382:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l5384:	
;myMain.c: 21: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u4071
	goto	u4070
u4071:
	goto	l5378
u4070:
	line	24
	
l5386:	
;myMain.c: 22: {
;myMain.c: 23: ;;
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	line	26
	
l5388:	
;myMain.c: 25: ;;
;myMain.c: 26: SegmentDisplay_Main();
	fcall	_SegmentDisplay_Main
	goto	l5378
	line	27
	
l2186:	
	goto	l5378
	line	28
	
l2185:	
	goto	l5378
	line	29
	
l2187:	
	line	13
	goto	l5378
	
l2188:	
	line	30
	
l2189:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_MainT
psect	text591,local,class=CODE,delta=2
global __ptext591
__ptext591:

;; *************** function _MainT *****************
;; Defined at:
;;		line 42 in file "G:\Program\PIC\Source_File\myMain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setSegmentDisplayNumber
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text591
	file	"G:\Program\PIC\Source_File\myMain.c"
	line	42
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 11
; Regs used in _MainT: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	45
	
l5336:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u4001
	goto	u4000
u4001:
	goto	l5344
u4000:
	line	47
	
l5338:	
;myMain.c: 46: {
;myMain.c: 47: TMain->PowerCount++;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	48
	
l5340:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u4015
	moviw	[1]fsr1
	xorlw	high(05DCh)
u4015:
	skipz
	goto	u4011
	goto	u4010
u4011:
	goto	l2203
u4010:
	line	50
	
l5342:	
;myMain.c: 49: {
;myMain.c: 50: TMain->PowerCount=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	51
;myMain.c: 51: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	goto	l2203
	line	56
	
l2196:	
	line	57
;myMain.c: 56: }
;myMain.c: 57: }
	goto	l2203
	line	58
	
l2195:	
	line	60
	
l5344:	
;myMain.c: 58: else
;myMain.c: 59: {
;myMain.c: 60: TMain->Count1++;
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	61
	
l5346:	
;myMain.c: 61: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u4025
	moviw	[1]fsr1
	xorlw	high(03E8h)
u4025:
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l5364
u4020:
	line	63
	
l5348:	
;myMain.c: 62: {
;myMain.c: 63: TMain->Count1=0;
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	64
	
l5350:	
;myMain.c: 64: RA2=~RA2;
	movlw	1<<((98)&7)
	xorwf	((98)/8),f
	goto	l5354
	line	73
	
l5352:	
	goto	l5354
	line	77
;myMain.c: 74: {
	
l2199:	
	line	79
	
l5354:	
;myMain.c: 77: }
;myMain.c: 79: if(TMain->Test)
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u4031
	goto	u4030
u4031:
	goto	l5364
u4030:
	line	81
	
l5356:	
;myMain.c: 80: {
;myMain.c: 81: setSegmentDisplayNumber(I2C->BufferReader[I2C->Count]);
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	addwf	(_I2C),w
	movwf	(??_MainT+0)+0
	movf	0+(??_MainT+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_MainT+1)+0
	clrf	(??_MainT+1)+0+1
	movf	0+(??_MainT+1)+0,w
	movwf	(?_setSegmentDisplayNumber)
	movf	1+(??_MainT+1)+0,w
	movwf	(?_setSegmentDisplayNumber+1)
	fcall	_setSegmentDisplayNumber
	line	82
	
l5358:	
;myMain.c: 82: I2C->Count++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_MainT+0)+0
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT+0)+0,w
	addwf	indf1,f
	line	83
	
l5360:	
;myMain.c: 83: if(I2C->Count==32)
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	020h&0ffh
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l5364
u4040:
	line	85
	
l5362:	
;myMain.c: 84: {
;myMain.c: 85: I2C->Count=0;
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l5364
	line	86
	
l2201:	
	goto	l5364
	line	87
	
l2200:	
	goto	l5364
	line	100
	
l2198:	
	line	103
	
l5364:	
;myMain.c: 86: }
;myMain.c: 87: }
;myMain.c: 100: }
;myMain.c: 103: TMain->Count2++;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	104
	
l5366:	
;myMain.c: 104: if(TMain->Count2 == 2000)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u4055
	moviw	[1]fsr1
	xorlw	high(07D0h)
u4055:
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l2203
u4050:
	line	106
	
l5368:	
;myMain.c: 105: {
;myMain.c: 106: TMain->Count2=0;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l2203
	line	119
	
l2202:	
	goto	l2203
	line	122
	
l2197:	
	line	123
	
l2203:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_setSegmentDisplayNumber
psect	text592,local,class=CODE,delta=2
global __ptext592
__ptext592:

;; *************** function _setSegmentDisplayNumber *****************
;; Defined at:
;;		line 21 in file "G:\Program\PIC\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;  number          2   10[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         2       4       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text592
	file	"G:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	21
	global	__size_of_setSegmentDisplayNumber
	__size_of_setSegmentDisplayNumber	equ	__end_of_setSegmentDisplayNumber-_setSegmentDisplayNumber
	
_setSegmentDisplayNumber:	
	opt	stack 11
; Regs used in _setSegmentDisplayNumber: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	23
	
l5284:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3891
	goto	u3890
u3891:
	goto	l3229
u3890:
	line	25
	
l5286:	
;SegmentDisplay_A2.c: 24: {
;SegmentDisplay_A2.c: 25: Segment->GO=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	line	26
;SegmentDisplay_A2.c: 26: if(Segment->Hex)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u3901
	goto	u3900
u3901:
	goto	l5294
u3900:
	line	28
	
l5288:	
;SegmentDisplay_A2.c: 27: {
;SegmentDisplay_A2.c: 28: Segment->Num[0]=(number & 0x000f);
	movf	(setSegmentDisplayNumber@number),w
	andlw	0Fh
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	29
	
l5290:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	btemp+1
u3915:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	btemp+1,f
	goto	u3915
	movf	0+(??_setSegmentDisplayNumber+0)+0,w
	andlw	0Fh
	movwf	(??_setSegmentDisplayNumber+2)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+2)+0,w
	movwf	indf1
	line	30
	
l5292:	
;SegmentDisplay_A2.c: 30: Segment->Num[2]=((number>>8)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	andlw	0Fh
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	31
;SegmentDisplay_A2.c: 31: Segment->Num[3]=((number>>12)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	0Ch
	movwf	btemp+1
u3925:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	btemp+1,f
	goto	u3925
	movf	0+(??_setSegmentDisplayNumber+0)+0,w
	andlw	0Fh
	movwf	(??_setSegmentDisplayNumber+2)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+2)+0,w
	movwf	indf1
	line	32
;SegmentDisplay_A2.c: 32: }
	goto	l5322
	line	33
	
l3216:	
	
l5294:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u3931
	goto	u3930
u3931:
	goto	l5322
u3930:
	line	35
	
l5296:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3945
	movlw	low(02710h)
	subwf	(setSegmentDisplayNumber@number),w
u3945:

	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l5310
u3940:
	line	37
	
l5298:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@i)
	
l5300:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l5304
u3950:
	goto	l5322
	
l5302:	
	goto	l5322
	line	38
	
l3220:	
	line	39
	
l5304:	
;SegmentDisplay_A2.c: 38: {
;SegmentDisplay_A2.c: 39: Segment->Num[i]=16;
	movlw	(010h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(setSegmentDisplayNumber@i),w
	addlw	011h
	addwf	(_Segment),w
	movwf	(??_setSegmentDisplayNumber+1)+0
	movf	0+(??_setSegmentDisplayNumber+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	37
	
l5306:	
	movlw	(01h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(??_setSegmentDisplayNumber+0)+0,w
	addwf	(setSegmentDisplayNumber@i),f
	
l5308:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l5304
u3960:
	goto	l5322
	
l3221:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	l5322
	line	42
	
l3219:	
	line	44
	
l5310:	
;SegmentDisplay_A2.c: 42: else
;SegmentDisplay_A2.c: 43: {
;SegmentDisplay_A2.c: 44: Segment->Num[3]=(number/1000);
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(setSegmentDisplayNumber@number),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	45
	
l5312:	
;SegmentDisplay_A2.c: 45: number%=1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(setSegmentDisplayNumber@number),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	46
	
l5314:	
;SegmentDisplay_A2.c: 46: Segment->Num[2]=(number/100);
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(setSegmentDisplayNumber@number),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	47
;SegmentDisplay_A2.c: 47: number%=100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(setSegmentDisplayNumber@number),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	48
	
l5316:	
;SegmentDisplay_A2.c: 48: Segment->Num[1]=(number/10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(setSegmentDisplayNumber@number),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	49
	
l5318:	
;SegmentDisplay_A2.c: 49: number%=10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(setSegmentDisplayNumber@number),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	50
	
l5320:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(setSegmentDisplayNumber@number),w
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	l5322
	line	51
	
l3222:	
	goto	l5322
	line	52
	
l3218:	
	goto	l5322
	line	53
	
l3217:	
	
l5322:	
;SegmentDisplay_A2.c: 51: }
;SegmentDisplay_A2.c: 52: }
;SegmentDisplay_A2.c: 53: if(Segment->Num[3] > 0)
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3971
	goto	u3970
u3971:
	goto	l5326
u3970:
	line	55
	
l5324:	
;SegmentDisplay_A2.c: 54: {
;SegmentDisplay_A2.c: 55: Segment->DisplayCount=3;
	movlw	(03h)
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	56
;SegmentDisplay_A2.c: 56: }
	goto	l3229
	line	57
	
l3223:	
	
l5326:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3981
	goto	u3980
u3981:
	goto	l5330
u3980:
	line	59
	
l5328:	
;SegmentDisplay_A2.c: 58: {
;SegmentDisplay_A2.c: 59: Segment->DisplayCount=2;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	60
;SegmentDisplay_A2.c: 60: }
	goto	l3229
	line	61
	
l3225:	
	
l5330:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3991
	goto	u3990
u3991:
	goto	l5334
u3990:
	line	63
	
l5332:	
;SegmentDisplay_A2.c: 62: {
;SegmentDisplay_A2.c: 63: Segment->DisplayCount=1;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	line	64
;SegmentDisplay_A2.c: 64: }
	goto	l3229
	line	65
	
l3227:	
	line	67
	
l5334:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l3229
	line	68
	
l3228:	
	goto	l3229
	
l3226:	
	goto	l3229
	
l3224:	
	goto	l3229
	line	69
	
l3215:	
	line	70
	
l3229:	
	return
	opt stack 0
GLOBAL	__end_of_setSegmentDisplayNumber
	__end_of_setSegmentDisplayNumber:
;; =============== function _setSegmentDisplayNumber ends ============

	signat	_setSegmentDisplayNumber,4216
	global	_I2C_Main
psect	text593,local,class=CODE,delta=2
global __ptext593
__ptext593:

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 276 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_Master_Reception
;;		_I2C_Master_Transmission
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text593
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	276
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
	opt	stack 12
; Regs used in _I2C_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	304
	
l5068:	
;MCU_16f1516_B1.c: 277: char i;
;MCU_16f1516_B1.c: 304: if(I2C->MasterRxGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u3461
	goto	u3460
u3461:
	goto	l1049
u3460:
	line	306
	
l5070:	
;MCU_16f1516_B1.c: 305: {
;MCU_16f1516_B1.c: 306: RA1=1;
	bsf	(97/8),(97)&7
	line	307
	
l5072:	
;MCU_16f1516_B1.c: 307: I2C->MasterRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	308
	
l5074:	
;MCU_16f1516_B1.c: 308: I2C_Master_Reception();
	fcall	_I2C_Master_Reception
	line	309
	
l5076:	
;MCU_16f1516_B1.c: 309: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	line	310
	
l5078:	
;MCU_16f1516_B1.c: 310: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	318
;MCU_16f1516_B1.c: 318: }
	goto	l1056
	line	319
	
l1049:	
	line	321
;MCU_16f1516_B1.c: 319: else
;MCU_16f1516_B1.c: 320: {
;MCU_16f1516_B1.c: 321: if(RC0)
	btfss	(112/8),(112)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l5084
u3470:
	line	323
	
l5080:	
;MCU_16f1516_B1.c: 322: {
;MCU_16f1516_B1.c: 323: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u3481
	goto	u3480
u3481:
	goto	l1056
u3480:
	line	325
	
l5082:	
;MCU_16f1516_B1.c: 324: {
;MCU_16f1516_B1.c: 325: I2C->SS=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	326
;MCU_16f1516_B1.c: 326: I2C->MasterRxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l1056
	line	327
	
l1052:	
	line	328
;MCU_16f1516_B1.c: 327: }
;MCU_16f1516_B1.c: 328: }
	goto	l1056
	line	329
	
l1051:	
	line	331
	
l5084:	
;MCU_16f1516_B1.c: 329: else
;MCU_16f1516_B1.c: 330: {
;MCU_16f1516_B1.c: 331: if(I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u3491
	goto	u3490
u3491:
	goto	l1054
u3490:
	line	333
	
l5086:	
;MCU_16f1516_B1.c: 332: {
;MCU_16f1516_B1.c: 333: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	334
	
l1054:	
	line	335
;MCU_16f1516_B1.c: 334: }
;MCU_16f1516_B1.c: 335: if(I2C->MasterTxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u3501
	goto	u3500
u3501:
	goto	l1056
u3500:
	line	337
	
l5088:	
;MCU_16f1516_B1.c: 336: {
;MCU_16f1516_B1.c: 337: I2C->MasterTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	338
	
l5090:	
;MCU_16f1516_B1.c: 338: I2C_Master_Transmission();
	fcall	_I2C_Master_Transmission
	goto	l1056
	line	339
	
l1055:	
	goto	l1056
	line	340
	
l1053:	
	goto	l1056
	line	341
	
l1050:	
	line	344
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Main
	__end_of_I2C_Main:
;; =============== function _I2C_Main ends ============

	signat	_I2C_Main,88
	global	_Mcu_Initial
psect	text594,local,class=CODE,delta=2
global __ptext594
__ptext594:

;; *************** function _Mcu_Initial *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_IO_Set
;;		_TMR1_Set
;;		_I2C_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text594
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	12
	global	__size_of_Mcu_Initial
	__size_of_Mcu_Initial	equ	__end_of_Mcu_Initial-_Mcu_Initial
	
_Mcu_Initial:	
	opt	stack 12
; Regs used in _Mcu_Initial: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l5052:	
;MCU_16f1516_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l5054:	
;MCU_16f1516_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l5056:	
;MCU_16f1516_B1.c: 18: _nop();
	nop
	line	20
	
l5058:	
;MCU_16f1516_B1.c: 20: TMR1_Set();
	fcall	_TMR1_Set
	line	22
	
l5060:	
;MCU_16f1516_B1.c: 22: _nop();
	nop
	line	26
	
l5062:	
;MCU_16f1516_B1.c: 26: _nop();
	nop
	line	28
	
l5064:	
;MCU_16f1516_B1.c: 28: _nop();
	nop
	line	30
	
l5066:	
;MCU_16f1516_B1.c: 30: I2C_Set();
	fcall	_I2C_Set
	line	35
	
l1025:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initial
	__end_of_Mcu_Initial:
;; =============== function _Mcu_Initial ends ============

	signat	_Mcu_Initial,88
	global	___awmod
psect	text595,local,class=CODE,delta=2
global __ptext595
__ptext595:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    1[COMMON] int 
;;  dividend        2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text595
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 11
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5250:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3801
	goto	u3800
u3801:
	goto	l5254
u3800:
	line	10
	
l5252:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l5254
	line	12
	
l3460:	
	line	13
	
l5254:	
	btfss	(___awmod@divisor+1),7
	goto	u3811
	goto	u3810
u3811:
	goto	l5258
u3810:
	line	14
	
l5256:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l5258
	
l3461:	
	line	15
	
l5258:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3821
	goto	u3820
u3821:
	goto	l5276
u3820:
	line	16
	
l5260:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l5266
	
l3464:	
	line	18
	
l5262:	
	movlw	01h
	
u3835:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u3835
	line	19
	
l5264:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l5266
	line	20
	
l3463:	
	line	17
	
l5266:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3841
	goto	u3840
u3841:
	goto	l5262
u3840:
	goto	l5268
	
l3465:	
	goto	l5268
	line	21
	
l3466:	
	line	22
	
l5268:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3855
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3855:
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l5272
u3850:
	line	23
	
l5270:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l5272
	
l3467:	
	line	24
	
l5272:	
	movlw	01h
	
u3865:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u3865
	line	25
	
l5274:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l5268
u3870:
	goto	l5276
	
l3468:	
	goto	l5276
	line	26
	
l3462:	
	line	27
	
l5276:	
	movf	(___awmod@sign),w
	skipz
	goto	u3880
	goto	l5280
u3880:
	line	28
	
l5278:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l5280
	
l3469:	
	line	29
	
l5280:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l3470
	
l5282:	
	line	30
	
l3470:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text596,local,class=CODE,delta=2
global __ptext596
__ptext596:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    1[COMMON] int 
;;  dividend        2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    8[COMMON] int 
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text596
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 11
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5210:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3701
	goto	u3700
u3701:
	goto	l5214
u3700:
	line	11
	
l5212:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l5214
	line	13
	
l3392:	
	line	14
	
l5214:	
	btfss	(___awdiv@dividend+1),7
	goto	u3711
	goto	u3710
u3711:
	goto	l5220
u3710:
	line	15
	
l5216:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5218:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l5220
	line	17
	
l3393:	
	line	18
	
l5220:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5222:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3721
	goto	u3720
u3721:
	goto	l5242
u3720:
	line	20
	
l5224:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l5230
	
l3396:	
	line	22
	
l5226:	
	movlw	01h
	
u3735:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u3735
	line	23
	
l5228:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l5230
	line	24
	
l3395:	
	line	21
	
l5230:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3741
	goto	u3740
u3741:
	goto	l5226
u3740:
	goto	l5232
	
l3397:	
	goto	l5232
	line	25
	
l3398:	
	line	26
	
l5232:	
	movlw	01h
	
u3755:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u3755
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3765
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3765:
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l5238
u3760:
	line	28
	
l5234:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	29
	
l5236:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l5238
	line	30
	
l3399:	
	line	31
	
l5238:	
	movlw	01h
	
u3775:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u3775
	line	32
	
l5240:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l5232
u3780:
	goto	l5242
	
l3400:	
	goto	l5242
	line	33
	
l3394:	
	line	34
	
l5242:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3790
	goto	l5246
u3790:
	line	35
	
l5244:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l5246
	
l3401:	
	line	36
	
l5246:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l3402
	
l5248:	
	line	37
	
l3402:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_SegmentDisplay_Main
psect	text597,local,class=CODE,delta=2
global __ptext597
__ptext597:

;; *************** function _SegmentDisplay_Main *****************
;; Defined at:
;;		line 73 in file "G:\Program\PIC\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text597
	file	"G:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	73
	global	__size_of_SegmentDisplay_Main
	__size_of_SegmentDisplay_Main	equ	__end_of_SegmentDisplay_Main-_SegmentDisplay_Main
	
_SegmentDisplay_Main:	
	opt	stack 13
; Regs used in _SegmentDisplay_Main: [wreg-status,0]
	line	74
	
l4944:	
;SegmentDisplay_A2.c: 74: if(Segment->GO)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u3201
	goto	u3200
u3201:
	goto	l3243
u3200:
	line	76
	
l4946:	
;SegmentDisplay_A2.c: 75: {
;SegmentDisplay_A2.c: 76: Segment->Time++;
	movlw	(01h)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_SegmentDisplay_Main+0)+0,w
	addwf	indf1,f
	line	77
	
l4948:	
;SegmentDisplay_A2.c: 77: if(Segment->Time == 5)
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l3243
u3210:
	line	79
	
l4950:	
;SegmentDisplay_A2.c: 78: {
;SegmentDisplay_A2.c: 79: Segment->Time=0;
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	80
	
l4952:	
;SegmentDisplay_A2.c: 80: PORTA&=0x0f;
	movlw	(0Fh)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(??_SegmentDisplay_Main+0)+0,w
	movlb 0	; select bank0
	andwf	(12),f	;volatile
	line	81
	
l4954:	
;SegmentDisplay_A2.c: 81: if(Segment->ComCount == 0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l4958
u3220:
	line	83
	
l4956:	
;SegmentDisplay_A2.c: 82: {
;SegmentDisplay_A2.c: 83: RA4=1;
	bsf	(100/8),(100)&7
	line	84
;SegmentDisplay_A2.c: 84: }
	goto	l4970
	line	85
	
l3234:	
	
l4958:	
;SegmentDisplay_A2.c: 85: else if(Segment->ComCount == 1)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l4962
u3230:
	line	87
	
l4960:	
;SegmentDisplay_A2.c: 86: {
;SegmentDisplay_A2.c: 87: RA5=1;
	bsf	(101/8),(101)&7
	line	88
;SegmentDisplay_A2.c: 88: }
	goto	l4970
	line	89
	
l3236:	
	
l4962:	
;SegmentDisplay_A2.c: 89: else if(Segment->ComCount == 2)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l4966
u3240:
	line	91
	
l4964:	
;SegmentDisplay_A2.c: 90: {
;SegmentDisplay_A2.c: 91: RA6=1;
	bsf	(102/8),(102)&7
	line	92
;SegmentDisplay_A2.c: 92: }
	goto	l4970
	line	93
	
l3238:	
	
l4966:	
;SegmentDisplay_A2.c: 93: else if(Segment->ComCount == 3)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l4970
u3250:
	line	95
	
l4968:	
;SegmentDisplay_A2.c: 94: {
;SegmentDisplay_A2.c: 95: RA7=1;
	bsf	(103/8),(103)&7
	goto	l4970
	line	96
	
l3240:	
	goto	l4970
	line	97
	
l3239:	
	goto	l4970
	
l3237:	
	goto	l4970
	
l3235:	
	
l4970:	
;SegmentDisplay_A2.c: 96: }
;SegmentDisplay_A2.c: 97: PORTB=Segment->Display[Segment->Num[Segment->ComCount]];
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addlw	011h
	addwf	(_Segment),w
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	0+(??_SegmentDisplay_Main+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addwf	(_Segment),w
	movwf	(??_SegmentDisplay_Main+1)+0
	movf	0+(??_SegmentDisplay_Main+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	98
	
l4972:	
;SegmentDisplay_A2.c: 98: if(Segment->ComCount < Segment->DisplayCount)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_Segment),w
	addlw	017h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l4976
u3260:
	line	100
	
l4974:	
;SegmentDisplay_A2.c: 99: {
;SegmentDisplay_A2.c: 100: Segment->ComCount++;
	movlw	(01h)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_SegmentDisplay_Main+0)+0,w
	addwf	indf1,f
	line	101
;SegmentDisplay_A2.c: 101: }
	goto	l3243
	line	102
	
l3241:	
	line	104
	
l4976:	
;SegmentDisplay_A2.c: 102: else
;SegmentDisplay_A2.c: 103: {
;SegmentDisplay_A2.c: 104: Segment->ComCount=0;
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l3243
	line	105
	
l3242:	
	goto	l3243
	line	106
	
l3233:	
	goto	l3243
	line	107
	
l3232:	
	line	108
	
l3243:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Main
	__end_of_SegmentDisplay_Main:
;; =============== function _SegmentDisplay_Main ends ============

	signat	_SegmentDisplay_Main,88
	global	_SegmentDisplay_Initial
psect	text598,local,class=CODE,delta=2
global __ptext598
__ptext598:

;; *************** function _SegmentDisplay_Initial *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text598
	file	"G:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	9
	global	__size_of_SegmentDisplay_Initial
	__size_of_SegmentDisplay_Initial	equ	__end_of_SegmentDisplay_Initial-_SegmentDisplay_Initial
	
_SegmentDisplay_Initial:	
	opt	stack 13
; Regs used in _SegmentDisplay_Initial: [wregfsr1]
	line	10
	
l4938:	
;SegmentDisplay_A2.c: 10: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movwf	(??_SegmentDisplay_Initial+0)+0
	movf	(??_SegmentDisplay_Initial+0)+0,w
	movwf	(_Segment)
	line	11
	
l4940:	
;SegmentDisplay_A2.c: 11: Segment->Enable=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	13
	
l4942:	
;SegmentDisplay_A2.c: 13: Segment->Dec=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	18
	
l3212:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Initial
	__end_of_SegmentDisplay_Initial:
;; =============== function _SegmentDisplay_Initial ends ============

	signat	_SegmentDisplay_Initial,88
	global	_MainT_Initial
psect	text599,local,class=CODE,delta=2
global __ptext599
__ptext599:

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 34 in file "G:\Program\PIC\Source_File\myMain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text599
	file	"G:\Program\PIC\Source_File\myMain.c"
	line	34
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 13
; Regs used in _MainT_Initial: [wregfsr1]
	line	35
	
l4932:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_TMain)
	line	36
	
l4934:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l4936:	
;myMain.c: 37: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	38
	
l2192:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
;; =============== function _MainT_Initial ends ============

	signat	_MainT_Initial,88
	global	_I2C_Master_Transmission
psect	text600,local,class=CODE,delta=2
global __ptext600
__ptext600:

;; *************** function _I2C_Master_Transmission *****************
;; Defined at:
;;		line 379 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Main
;; This function uses a non-reentrant model
;;
psect	text600
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	379
	global	__size_of_I2C_Master_Transmission
	__size_of_I2C_Master_Transmission	equ	__end_of_I2C_Master_Transmission-_I2C_Master_Transmission
	
_I2C_Master_Transmission:	
	opt	stack 12
; Regs used in _I2C_Master_Transmission: [wreg+fsr1l-status,0]
	line	381
	
l4882:	
;MCU_16f1516_B1.c: 380: char i;
;MCU_16f1516_B1.c: 381: while(SEN);
	goto	l1062
	
l1063:	
	
l1062:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l1062
u3000:
	
l1064:	
	line	382
;MCU_16f1516_B1.c: 382: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7
	line	384
;MCU_16f1516_B1.c: 384: while(SEN);
	goto	l1065
	
l1066:	
	
l1065:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l1065
u3010:
	goto	l4884
	
l1067:	
	line	387
	
l4884:	
;MCU_16f1516_B1.c: 387: SSPBUF=0x10;
	movlw	(010h)
	movwf	(529)^0200h	;volatile
	line	388
;MCU_16f1516_B1.c: 388: while(BF);
	goto	l1068
	
l1069:	
	
l1068:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l1068
u3020:
	goto	l1071
	
l1070:	
	line	391
;MCU_16f1516_B1.c: 391: while(ACKSTAT);
	goto	l1071
	
l1072:	
	
l1071:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l1071
u3030:
	
l1073:	
	line	393
;MCU_16f1516_B1.c: 393: for(i=0;i<32;i++)
	clrf	(I2C_Master_Transmission@i)
	
l4886:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l1076
u3040:
	goto	l1085
	
l4888:	
	goto	l1085
	line	394
	
l1074:	
	line	395
;MCU_16f1516_B1.c: 394: {
;MCU_16f1516_B1.c: 395: while(SEN);
	goto	l1076
	
l1077:	
	
l1076:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l1076
u3050:
	goto	l4890
	
l1078:	
	line	396
	
l4890:	
;MCU_16f1516_B1.c: 396: SSPBUF=I2C->BufferWriter[i];
	movf	(I2C_Master_Transmission@i),w
	addlw	020h
	movlb 0	; select bank0
	addwf	(_I2C),w
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	0+(??_I2C_Master_Transmission+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	397
;MCU_16f1516_B1.c: 397: while(BF);
	goto	l1079
	
l1080:	
	
l1079:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l1079
u3060:
	goto	l1082
	
l1081:	
	line	400
;MCU_16f1516_B1.c: 400: while(ACKSTAT);
	goto	l1082
	
l1083:	
	
l1082:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l1082
u3070:
	goto	l4892
	
l1084:	
	line	393
	
l4892:	
	movlw	(01h)
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	(??_I2C_Master_Transmission+0)+0,w
	addwf	(I2C_Master_Transmission@i),f
	
l4894:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l1076
u3080:
	goto	l1085
	
l1075:	
	line	403
;MCU_16f1516_B1.c: 401: }
;MCU_16f1516_B1.c: 403: while(SEN);
	goto	l1085
	
l1086:	
	
l1085:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l1085
u3090:
	goto	l1088
	
l1087:	
	line	404
;MCU_16f1516_B1.c: 404: while(!PEN)
	goto	l1088
	
l1089:	
	line	405
;MCU_16f1516_B1.c: 405: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7
	
l1088:	
	line	404
	btfss	(4274/8)^0200h,(4274)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l1089
u3100:
	goto	l1091
	
l1090:	
	line	406
;MCU_16f1516_B1.c: 406: while(PEN);
	goto	l1091
	
l1092:	
	
l1091:	
	btfsc	(4274/8)^0200h,(4274)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l1091
u3110:
	goto	l1094
	
l1093:	
	line	409
	
l1094:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Transmission
	__end_of_I2C_Master_Transmission:
;; =============== function _I2C_Master_Transmission ends ============

	signat	_I2C_Master_Transmission,88
	global	_I2C_Master_Reception
psect	text601,local,class=CODE,delta=2
global __ptext601
__ptext601:

;; *************** function _I2C_Master_Reception *****************
;; Defined at:
;;		line 412 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Main
;; This function uses a non-reentrant model
;;
psect	text601
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	412
	global	__size_of_I2C_Master_Reception
	__size_of_I2C_Master_Reception	equ	__end_of_I2C_Master_Reception-_I2C_Master_Reception
	
_I2C_Master_Reception:	
	opt	stack 12
; Regs used in _I2C_Master_Reception: [wreg+fsr1l-status,0]
	line	414
	
l4866:	
;MCU_16f1516_B1.c: 413: char i;
;MCU_16f1516_B1.c: 414: while(SEN);
	goto	l1097
	
l1098:	
	
l1097:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l1097
u2840:
	
l1099:	
	line	415
;MCU_16f1516_B1.c: 415: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7
	line	416
;MCU_16f1516_B1.c: 416: while(SEN);
	goto	l1100
	
l1101:	
	
l1100:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l1100
u2850:
	goto	l4868
	
l1102:	
	line	419
	
l4868:	
;MCU_16f1516_B1.c: 419: SSPBUF=0x11;
	movlw	(011h)
	movwf	(529)^0200h	;volatile
	line	422
;MCU_16f1516_B1.c: 422: while(BF);
	goto	l1103
	
l1104:	
	
l1103:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l1103
u2860:
	goto	l1106
	
l1105:	
	line	423
;MCU_16f1516_B1.c: 423: while(ACKSTAT);
	goto	l1106
	
l1107:	
	
l1106:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l1106
u2870:
	
l1108:	
	line	426
;MCU_16f1516_B1.c: 426: for(i=0;i<32;i++)
	clrf	(I2C_Master_Reception@i)
	
l4870:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l1111
u2880:
	goto	l1123
	
l4872:	
	goto	l1123
	line	427
	
l1109:	
	line	428
;MCU_16f1516_B1.c: 427: {
;MCU_16f1516_B1.c: 428: while(SEN);
	goto	l1111
	
l1112:	
	
l1111:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l1111
u2890:
	goto	l1114
	
l1113:	
	line	429
;MCU_16f1516_B1.c: 429: while(RCEN);
	goto	l1114
	
l1115:	
	
l1114:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l1114
u2900:
	
l1116:	
	line	430
;MCU_16f1516_B1.c: 430: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7
	line	431
;MCU_16f1516_B1.c: 431: while(RCEN);
	goto	l1117
	
l1118:	
	
l1117:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l1117
u2910:
	goto	l4874
	
l1119:	
	line	432
	
l4874:	
;MCU_16f1516_B1.c: 432: I2C->BufferReader[i]=SSPBUF;
	movf	(529)^0200h,w	;volatile
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(I2C_Master_Reception@i),w
	movlb 0	; select bank0
	addwf	(_I2C),w
	movwf	(??_I2C_Master_Reception+1)+0
	movf	0+(??_I2C_Master_Reception+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_Master_Reception+0)+0,w
	movwf	indf1
	line	435
	
l4876:	
;MCU_16f1516_B1.c: 435: ACKEN=1;
	movlb 4	; select bank4
	bsf	(4276/8)^0200h,(4276)&7
	line	436
;MCU_16f1516_B1.c: 436: while(ACKEN);
	goto	l1120
	
l1121:	
	
l1120:	
	btfsc	(4276/8)^0200h,(4276)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l1120
u2920:
	goto	l4878
	
l1122:	
	line	426
	
l4878:	
	movlw	(01h)
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(??_I2C_Master_Reception+0)+0,w
	addwf	(I2C_Master_Reception@i),f
	
l4880:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l1111
u2930:
	goto	l1123
	
l1110:	
	line	438
;MCU_16f1516_B1.c: 437: }
;MCU_16f1516_B1.c: 438: while(RCEN);
	goto	l1123
	
l1124:	
	
l1123:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l1123
u2940:
	
l1125:	
	line	439
;MCU_16f1516_B1.c: 439: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7
	line	440
;MCU_16f1516_B1.c: 440: while(RCEN);
	goto	l1126
	
l1127:	
	
l1126:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l1126
u2950:
	
l1128:	
	line	441
;MCU_16f1516_B1.c: 441: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7
	line	442
;MCU_16f1516_B1.c: 442: while(ACKEN);
	goto	l1129
	
l1130:	
	
l1129:	
	btfsc	(4276/8)^0200h,(4276)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l1129
u2960:
	goto	l1132
	
l1131:	
	line	445
;MCU_16f1516_B1.c: 445: while(SEN);
	goto	l1132
	
l1133:	
	
l1132:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l1132
u2970:
	goto	l1135
	
l1134:	
	line	446
;MCU_16f1516_B1.c: 446: while(!PEN)
	goto	l1135
	
l1136:	
	line	447
;MCU_16f1516_B1.c: 447: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7
	
l1135:	
	line	446
	btfss	(4274/8)^0200h,(4274)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l1136
u2980:
	goto	l1138
	
l1137:	
	line	448
;MCU_16f1516_B1.c: 448: while(PEN);
	goto	l1138
	
l1139:	
	
l1138:	
	btfsc	(4274/8)^0200h,(4274)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l1138
u2990:
	goto	l1141
	
l1140:	
	line	451
	
l1141:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Reception
	__end_of_I2C_Master_Reception:
;; =============== function _I2C_Master_Reception ends ============

	signat	_I2C_Master_Reception,88
	global	_I2C_Set
psect	text602,local,class=CODE,delta=2
global __ptext602
__ptext602:

;; *************** function _I2C_Set *****************
;; Defined at:
;;		line 234 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text602
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	234
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
	opt	stack 12
; Regs used in _I2C_Set: [wreg+status,2]
	line	235
	
l4832:	
;MCU_16f1516_B1.c: 235: I2C=&VarI2C;
	movlw	(_VarI2C)&0ffh
	movwf	(??_I2C_Set+0)+0
	movf	(??_I2C_Set+0)+0,w
	movlb 0	; select bank0
	movwf	(_I2C)
	line	237
;MCU_16f1516_B1.c: 237: SSPADD = 0x09;
	movlw	(09h)
	movlb 4	; select bank4
	movwf	(530)^0200h	;volatile
	line	238
;MCU_16f1516_B1.c: 238: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(532)^0200h	;volatile
	line	239
	
l4834:	
;MCU_16f1516_B1.c: 239: SSPCON2 = 0;
	clrf	(534)^0200h	;volatile
	line	241
	
l4836:	
;MCU_16f1516_B1.c: 241: SSPCON1=0b101000;
	movlw	(028h)
	movwf	(533)^0200h	;volatile
	line	258
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Set
	__end_of_I2C_Set:
;; =============== function _I2C_Set ends ============

	signat	_I2C_Set,88
	global	_TMR1_Set
psect	text603,local,class=CODE,delta=2
global __ptext603
__ptext603:

;; *************** function _TMR1_Set *****************
;; Defined at:
;;		line 115 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text603
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	115
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
	opt	stack 12
; Regs used in _TMR1_Set: [wreg]
	line	116
	
l4824:	
;MCU_16f1516_B1.c: 116: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
	movlb 0	; select bank0
	movwf	(_Timer1)
	line	117
;MCU_16f1516_B1.c: 117: T1CON=(0x40 | 0x00 | 0x01);
	movlw	(041h)
	movwf	(24)	;volatile
	line	118
;MCU_16f1516_B1.c: 118: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	119
;MCU_16f1516_B1.c: 119: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	120
	
l4826:	
;MCU_16f1516_B1.c: 120: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	121
	
l4828:	
;MCU_16f1516_B1.c: 121: PEIE=1;
	bsf	(94/8),(94)&7
	line	122
	
l4830:	
;MCU_16f1516_B1.c: 122: GIE=1;
	bsf	(95/8),(95)&7
	line	123
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Set
	__end_of_TMR1_Set:
;; =============== function _TMR1_Set ends ============

	signat	_TMR1_Set,88
	global	_IO_Set
psect	text604,local,class=CODE,delta=2
global __ptext604
__ptext604:

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text604
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	38
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
	opt	stack 12
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l4808:	
;MCU_16f1516_B1.c: 39: TRISA=0b00001001;;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	40
	
l4810:	
;MCU_16f1516_B1.c: 40: TRISB=0b00000000;;
	clrf	(141)^080h	;volatile
	line	41
	
l4812:	
;MCU_16f1516_B1.c: 41: TRISC=0b00011001;;
	movlw	(019h)
	movwf	(142)^080h	;volatile
	line	42
;MCU_16f1516_B1.c: 42: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	43
;MCU_16f1516_B1.c: 43: LATB=0b00000000;;
	clrf	(269)^0100h	;volatile
	line	44
;MCU_16f1516_B1.c: 44: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	45
	
l4814:	
;MCU_16f1516_B1.c: 45: ANSELA=0b00000001;;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l4816:	
;MCU_16f1516_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l4818:	
;MCU_16f1516_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l4820:	
;MCU_16f1516_B1.c: 48: PORTA=0b00001001;;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
;MCU_16f1516_B1.c: 49: PORTB=0b00000000;;
	clrf	(13)	;volatile
	line	50
	
l4822:	
;MCU_16f1516_B1.c: 50: PORTC=0b00011001;;
	movlw	(019h)
	movwf	(14)	;volatile
	line	51
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
;; =============== function _IO_Set ends ============

	signat	_IO_Set,88
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 57 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_TMR1_ISR
;;		_I2C_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	57
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 11
; Regs used in _ISR: [wreg+fsr1l-status,0+pclath+cstack]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	58
	
i1l4838:	
;MCU_16f1516_B1.c: 58: _nop();
	nop
	line	60
;MCU_16f1516_B1.c: 60: _nop();
	nop
	line	62
	
i1l4840:	
;MCU_16f1516_B1.c: 62: TMR1_ISR();
	fcall	_TMR1_ISR
	line	66
	
i1l4842:	
;MCU_16f1516_B1.c: 66: _nop();
	nop
	line	70
;MCU_16f1516_B1.c: 68: ;;
;MCU_16f1516_B1.c: 70: I2C_ISR();
	fcall	_I2C_ISR
	line	71
	
i1l1031:	
	movf	(??_ISR+0),w
	movlb 0	; select bank0
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_I2C_ISR
psect	text606,local,class=CODE,delta=2
global __ptext606
__ptext606:

;; *************** function _I2C_ISR *****************
;; Defined at:
;;		line 261 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text606
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	261
	global	__size_of_I2C_ISR
	__size_of_I2C_ISR	equ	__end_of_I2C_ISR-_I2C_ISR
	
_I2C_ISR:	
	opt	stack 11
; Regs used in _I2C_ISR: [wregfsr1]
	line	262
	
i1l4858:	
;MCU_16f1516_B1.c: 262: if(SSPIE && SSPIF)
	movlb 1	; select bank1
	btfss	(1163/8)^080h,(1163)&7
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l1046
u282_20:
	
i1l4860:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l1046
u283_20:
	line	264
	
i1l4862:	
;MCU_16f1516_B1.c: 263: {
;MCU_16f1516_B1.c: 264: SSPIE=0;
	movlb 1	; select bank1
	bcf	(1163/8)^080h,(1163)&7
	line	265
	
i1l4864:	
;MCU_16f1516_B1.c: 265: I2C->SlaveGO=1;
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l1046
	line	272
	
i1l1045:	
	line	273
	
i1l1046:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_ISR
	__end_of_I2C_ISR:
;; =============== function _I2C_ISR ends ============

	signat	_I2C_ISR,88
	global	_TMR1_ISR
psect	text607,local,class=CODE,delta=2
global __ptext607
__ptext607:

;; *************** function _TMR1_ISR *****************
;; Defined at:
;;		line 126 in file "G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text607
	file	"G:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	126
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
	opt	stack 11
; Regs used in _TMR1_ISR: [wreg+fsr1l-status,0]
	line	127
	
i1l4844:	
;MCU_16f1516_B1.c: 127: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l1039
u279_20:
	
i1l4846:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l1039
u280_20:
	line	129
	
i1l4848:	
;MCU_16f1516_B1.c: 128: {
;MCU_16f1516_B1.c: 129: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	130
;MCU_16f1516_B1.c: 130: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	131
	
i1l4850:	
;MCU_16f1516_B1.c: 131: TMR1IF=0;
	bcf	(136/8),(136)&7
	line	132
	
i1l4852:	
;MCU_16f1516_B1.c: 132: Timer1->Count++;
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	133
	
i1l4854:	
;MCU_16f1516_B1.c: 133: if(Timer1->Count == 20)
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u281_25
	moviw	[1]fsr1
	xorlw	high(014h)
u281_25:
	skipz
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l1039
u281_20:
	line	135
	
i1l4856:	
;MCU_16f1516_B1.c: 134: {
;MCU_16f1516_B1.c: 135: Timer1->Count=0;
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	136
;MCU_16f1516_B1.c: 136: TMain->T1_Timerout=1;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	goto	i1l1039
	line	137
	
i1l1038:	
	goto	i1l1039
	line	138
	
i1l1037:	
	line	139
	
i1l1039:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
;; =============== function _TMR1_ISR ends ============

	signat	_TMR1_ISR,88
psect	text608,local,class=CODE,delta=2
global __ptext608
__ptext608:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
