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
# 14 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	dw 0xFFFC & 0xFFE7 ;#
# 15 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 15 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	dw 0xFFFF & 0xFFFE ;#
	FNCALL	_main,_MainT_Initial
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_SegmentDisplay_Initial
	FNCALL	_main,_MainT
	FNCALL	_main,_I2C_Main
	FNCALL	_main,_UART_Main
	FNCALL	_main,_SegmentDisplay_Main
	FNCALL	_UART_Main,_UART_Receive
	FNCALL	_UART_Main,_setSegmentDisplayNumber
	FNCALL	_UART_Main,_UART_Transmit
	FNCALL	_UART_Transmit,_printf
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_setSegmentDisplayNumber,___awdiv
	FNCALL	_setSegmentDisplayNumber,___awmod
	FNCALL	_I2C_Main,_I2C_Master_Reception
	FNCALL	_I2C_Main,_I2C_Master_Transmission
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR1_Set
	FNCALL	_Mcu_Initialization,_I2C_Set
	FNCALL	_Mcu_Initialization,_UART_Set
	FNROOT	_main
	FNCALL	_ISR,_TMR1_ISR
	FNCALL	_ISR,_UART_ISR
	FNCALL	_UART_ISR,i1_setSegmentDisplayNumber
	FNCALL	i1_setSegmentDisplayNumber,i1___awdiv
	FNCALL	i1_setSegmentDisplayNumber,i1___awmod
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
	global	_VarSegment
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\0.myFile\myDevelopment-AH\Release\myDevelopment-A.h"
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\SegmentDisplay_A2.h"
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
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
	global    __stringtab
__stringtab:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_VarTMain
	global	_VarTimer1
	global	_VarI2C
	global	_VarUart
	global	_I2C
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_I2C:
       ds      1

	global	_Product
_Product:
       ds      1

	global	_Segment
_Segment:
       ds      1

	global	_TMain
_TMain:
       ds      1

	global	_Timer1
_Timer1:
       ds      1

	global	_UART
_UART:
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
	global	_RCIF
_RCIF	set	141
	global	_SSPIF
_SSPIF	set	139
	global	_TMR1IF
_TMR1IF	set	136
	global	_TXIF
_TXIF	set	140
	global	_OSCCON
_OSCCON	set	153
	global	_TRISA
_TRISA	set	140
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
	global	_RCIE
_RCIE	set	1165
	global	_SSPIE
_SSPIE	set	1163
	global	_TMR1IE
_TMR1IE	set	1160
	global	_TRISC6
_TRISC6	set	1142
	global	_TRISC7
_TRISC7	set	1143
	global	_TXIE
_TXIE	set	1164
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
	global	_RCREG
_RCREG	set	409
	global	_RCSTA
_RCSTA	set	413
	global	_SPBRG
_SPBRG	set	411
	global	_SPBRGH
_SPBRGH	set	412
	global	_TXREG
_TXREG	set	410
	global	_TXSTA
_TXSTA	set	414
	global	_BRG16
_BRG16	set	3323
	global	_RCIDL
_RCIDL	set	3326
	global	_RX9
_RX9	set	3310
	global	_TX9
_TX9	set	3318
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
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	0
psect	strings
	file	"myDevelopment-AC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_VarTMain:
       ds      15

_VarTimer1:
       ds      3

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\0.myFile\myDevelopment-AH\Release\myDevelopment-A.h"
	line	245
_VarProduct:
       ds      32

psect	dataBANK1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\SegmentDisplay_A2.h"
	line	69
_VarSegment:
       ds      26

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_VarI2C:
       ds      67

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_VarUart:
       ds      68

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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	012h
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
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	044h
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
	movlw 03Ah
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
	global	?_UART_Set
?_UART_Set:	; 0 bytes @ 0x0
	global	?_TMR1_ISR
?_TMR1_ISR:	; 0 bytes @ 0x0
	global	??_TMR1_ISR
??_TMR1_ISR:	; 0 bytes @ 0x0
	global	?_UART_ISR
?_UART_ISR:	; 0 bytes @ 0x0
	global	?_I2C_Master_Reception
?_I2C_Master_Reception:	; 0 bytes @ 0x0
	global	?_I2C_Master_Transmission
?_I2C_Master_Transmission:	; 0 bytes @ 0x0
	global	?_UART_Receive
?_UART_Receive:	; 0 bytes @ 0x0
	global	?_UART_Transmit
?_UART_Transmit:	; 0 bytes @ 0x0
	global	?_MainT_Initial
?_MainT_Initial:	; 0 bytes @ 0x0
	global	?_SegmentDisplay_Initial
?_SegmentDisplay_Initial:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_SegmentDisplay_Main
?_SegmentDisplay_Main:	; 0 bytes @ 0x0
	global	?_Mcu_Initialization
?_Mcu_Initialization:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_I2C_Main
?_I2C_Main:	; 0 bytes @ 0x0
	global	?_UART_Main
?_UART_Main:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?i1___awdiv
?i1___awdiv:	; 2 bytes @ 0x0
	global	?i1___awmod
?i1___awmod:	; 2 bytes @ 0x0
	global	i1___awdiv@divisor
i1___awdiv@divisor:	; 2 bytes @ 0x0
	global	i1___awmod@divisor
i1___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	i1___awdiv@dividend
i1___awdiv@dividend:	; 2 bytes @ 0x2
	global	i1___awmod@dividend
i1___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??i1___awdiv
??i1___awdiv:	; 0 bytes @ 0x4
	global	??i1___awmod
??i1___awmod:	; 0 bytes @ 0x4
	ds	1
	global	i1___awdiv@counter
i1___awdiv@counter:	; 1 bytes @ 0x5
	global	i1___awmod@counter
i1___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	i1___awdiv@sign
i1___awdiv@sign:	; 1 bytes @ 0x6
	global	i1___awmod@sign
i1___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	i1___awdiv@quotient
i1___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?i1_setSegmentDisplayNumber
?i1_setSegmentDisplayNumber:	; 0 bytes @ 0x9
	global	i1setSegmentDisplayNumber@number
i1setSegmentDisplayNumber@number:	; 2 bytes @ 0x9
	ds	2
	global	??i1_setSegmentDisplayNumber
??i1_setSegmentDisplayNumber:	; 0 bytes @ 0xB
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	i1setSegmentDisplayNumber@i
i1setSegmentDisplayNumber@i:	; 1 bytes @ 0x0
	ds	1
	global	??_UART_ISR
??_UART_ISR:	; 0 bytes @ 0x1
	ds	2
	global	??_ISR
??_ISR:	; 0 bytes @ 0x3
	ds	1
	global	??_IO_Set
??_IO_Set:	; 0 bytes @ 0x4
	global	??_TMR1_Set
??_TMR1_Set:	; 0 bytes @ 0x4
	global	??_I2C_Set
??_I2C_Set:	; 0 bytes @ 0x4
	global	??_UART_Set
??_UART_Set:	; 0 bytes @ 0x4
	global	??_I2C_Master_Reception
??_I2C_Master_Reception:	; 0 bytes @ 0x4
	global	??_I2C_Master_Transmission
??_I2C_Master_Transmission:	; 0 bytes @ 0x4
	global	??_UART_Receive
??_UART_Receive:	; 0 bytes @ 0x4
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x4
	global	??_SegmentDisplay_Initial
??_SegmentDisplay_Initial:	; 0 bytes @ 0x4
	global	??_MainT
??_MainT:	; 0 bytes @ 0x4
	global	??_SegmentDisplay_Main
??_SegmentDisplay_Main:	; 0 bytes @ 0x4
	global	??_putch
??_putch:	; 0 bytes @ 0x4
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x4
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x4
	global	?___awmod
?___awmod:	; 2 bytes @ 0x4
	global	putch@byte
putch@byte:	; 1 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x4
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x4
	ds	1
	global	??_Mcu_Initialization
??_Mcu_Initialization:	; 0 bytes @ 0x5
	global	I2C_Master_Transmission@i
I2C_Master_Transmission@i:	; 1 bytes @ 0x5
	ds	1
	global	I2C_Master_Reception@i
I2C_Master_Reception@i:	; 1 bytes @ 0x6
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x6
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x6
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x6
	ds	1
	global	??_I2C_Main
??_I2C_Main:	; 0 bytes @ 0x7
	global	UART_Receive@i
UART_Receive@i:	; 1 bytes @ 0x7
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x8
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x8
	global	??___awmod
??___awmod:	; 0 bytes @ 0x8
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x9
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x9
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x9
	ds	1
	global	I2C_Main@i
I2C_Main@i:	; 1 bytes @ 0xA
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xA
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xA
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xB
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xB
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xC
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xC
	ds	1
	global	?_setSegmentDisplayNumber
?_setSegmentDisplayNumber:	; 0 bytes @ 0xD
	global	setSegmentDisplayNumber@number
setSegmentDisplayNumber@number:	; 2 bytes @ 0xD
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xE
	ds	1
	global	??_setSegmentDisplayNumber
??_setSegmentDisplayNumber:	; 0 bytes @ 0xF
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x10
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x11
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x12
	global	setSegmentDisplayNumber@i
setSegmentDisplayNumber@i:	; 1 bytes @ 0x12
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x14
	ds	2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x16
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x17
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x18
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x19
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x1A
	ds	4
	global	printf@c
printf@c:	; 1 bytes @ 0x1E
	ds	1
	global	??_UART_Transmit
??_UART_Transmit:	; 0 bytes @ 0x1F
	ds	2
	global	UART_Transmit@i
UART_Transmit@i:	; 1 bytes @ 0x21
	ds	1
	global	??_UART_Main
??_UART_Main:	; 0 bytes @ 0x22
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x24
;;Data sizes: Strings 4, constant 10, data 58, bss 153, persistent 6 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     36      60
;; BANK1           80      0      58
;; BANK2           80      0      67
;; BANK3           80      0      68
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           16      0       0

;;
;; Pointer list with targets:

;; ?i1___awmod	int  size(1) Largest target is 0
;;
;; ?i1___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_1(CODE[4]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S6665$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; Segment	PTR struct Segment size(1) Largest target is 26
;;		 -> NULL(NULL[0]), VarSegment(BANK1[26]), 
;;
;; Product	PTR struct Product size(1) Largest target is 32
;;		 -> NULL(NULL[0]), VarProduct(BANK1[32]), 
;;
;; UART	PTR struct UART size(1) Largest target is 68
;;		 -> NULL(NULL[0]), VarUart(BANK3[68]), 
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
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _UART_ISR->i1_setSegmentDisplayNumber
;;   i1_setSegmentDisplayNumber->i1___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_UART_Main
;;   _UART_Main->_UART_Transmit
;;   _UART_Transmit->_printf
;;   _printf->___lwmod
;;   _setSegmentDisplayNumber->___awdiv
;;   _I2C_Main->_I2C_Master_Reception
;;   _Mcu_Initialization->_TMR1_Set
;;   _Mcu_Initialization->_I2C_Set
;;   _Mcu_Initialization->_UART_Set
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _ISR in BANK0
;;
;;   _ISR->_UART_ISR
;;   _UART_ISR->i1_setSegmentDisplayNumber
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
;; (0) _main                                                 0     0      0    2044
;;                      _MainT_Initial
;;                 _Mcu_Initialization
;;             _SegmentDisplay_Initial
;;                              _MainT
;;                           _I2C_Main
;;                          _UART_Main
;;                _SegmentDisplay_Main
;; ---------------------------------------------------------------------------------
;; (1) _UART_Main                                            2     2      0    1818
;;                                             34 BANK0      2     2      0
;;                       _UART_Receive
;;            _setSegmentDisplayNumber
;;                      _UART_Transmit
;; ---------------------------------------------------------------------------------
;; (2) _UART_Transmit                                        3     3      0     797
;;                                             31 BANK0      3     3      0
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (3) _printf                                              13    11      2     729
;;                                             18 BANK0     13    11      2
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _setSegmentDisplayNumber                              6     4      2     931
;;                                             13 BANK0      6     4      2
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Main                                             4     4      0     226
;;                                              7 BANK0      4     4      0
;;               _I2C_Master_Reception
;;            _I2C_Master_Transmission
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initialization                                   0     0      0       0
;;                             _IO_Set
;;                           _TMR1_Set
;;                            _I2C_Set
;;                           _UART_Set
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              4 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              4 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (4) ___lwmod                                              6     2      4     159
;;                                             12 BANK0      6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___lwdiv                                              8     4      4     162
;;                                              4 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _SegmentDisplay_Main                                  2     2      0       0
;;                                              4 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                1     1      0       0
;; ---------------------------------------------------------------------------------
;; (1) _SegmentDisplay_Initial                               1     1      0       0
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _putch                                                1     1      0      22
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _UART_Receive                                         4     4      0      90
;;                                              4 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Master_Transmission                              2     2      0      68
;;                                              4 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Master_Reception                                 3     3      0      68
;;                                              4 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _UART_Set                                             1     1      0       0
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Set                                              1     1      0       0
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _TMR1_Set                                             1     1      0       0
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _IO_Set                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  1     1      0    3051
;;                                              3 BANK0      1     1      0
;;                           _TMR1_ISR
;;                           _UART_ISR
;; ---------------------------------------------------------------------------------
;; (6) _UART_ISR                                             3     3      0    3051
;;                                              1 BANK0      2     2      0
;;          i1_setSegmentDisplayNumber
;; ---------------------------------------------------------------------------------
;; (7) i1_setSegmentDisplayNumber                            6     4      2    3051
;;                                              9 COMMON     5     3      2
;;                                              0 BANK0      1     1      0
;;                          i1___awdiv
;;                          i1___awmod
;; ---------------------------------------------------------------------------------
;; (8) i1___awmod                                            7     3      4     969
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (8) i1___awdiv                                            9     5      4     977
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (6) _TMR1_ISR                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 8
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initial
;;   _Mcu_Initialization
;;     _IO_Set
;;     _TMR1_Set
;;     _I2C_Set
;;     _UART_Set
;;   _SegmentDisplay_Initial
;;   _MainT
;;   _I2C_Main
;;     _I2C_Master_Reception
;;     _I2C_Master_Transmission
;;   _UART_Main
;;     _UART_Receive
;;     _setSegmentDisplayNumber
;;       ___awdiv
;;       ___awmod
;;     _UART_Transmit
;;       _printf
;;         _putch
;;         ___lwdiv
;;         ___lwmod
;;           ___lwdiv (ARG)
;;   _SegmentDisplay_Main
;;
;; _ISR (ROOT)
;;   _TMR1_ISR
;;   _UART_ISR
;;     i1_setSegmentDisplayNumber
;;       i1___awdiv
;;       i1___awmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             1F0      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      E       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       C       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0     10B       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50     24      3C       6       75.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BITBANK1            50      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BANK1               50      0      3A       8       72.5%
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
;;BANK3               50      0      44      12       85.0%
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
;;DATA                 0      0     117      19        0.0%
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
;;		line 7 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\myMain.c"
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_MainT_Initial
;;		_Mcu_Initialization
;;		_SegmentDisplay_Initial
;;		_MainT
;;		_I2C_Main
;;		_UART_Main
;;		_SegmentDisplay_Main
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [allreg]
	line	8
	
l8194:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l8196:	
;myMain.c: 9: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	10
	
l8198:	
;myMain.c: 10: SegmentDisplay_Initial();
	fcall	_SegmentDisplay_Initial
	line	12
	
l8200:	
;myMain.c: 11: ;;
;myMain.c: 12: _nop();
	nop
	goto	l8202
	line	13
;myMain.c: 13: while(1)
	
l2258:	
	line	17
	
l8202:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u5161
	goto	u5160
u5161:
	goto	l8202
u5160:
	line	19
	
l8204:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l8206:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l8208:	
;myMain.c: 21: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5171
	goto	u5170
u5171:
	goto	l8202
u5170:
	line	24
	
l8210:	
;myMain.c: 22: {
;myMain.c: 23: ;;
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	line	25
	
l8212:	
;myMain.c: 25: UART_Main();
	fcall	_UART_Main
	line	26
	
l8214:	
;myMain.c: 26: SegmentDisplay_Main();
	fcall	_SegmentDisplay_Main
	goto	l8202
	line	27
	
l2260:	
	goto	l8202
	line	28
	
l2259:	
	goto	l8202
	line	29
	
l2261:	
	line	13
	goto	l8202
	
l2262:	
	line	30
	
l2263:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_UART_Main
psect	text710,local,class=CODE,delta=2
global __ptext710
__ptext710:

;; *************** function _UART_Main *****************
;; Defined at:
;;		line 704 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_UART_Receive
;;		_setSegmentDisplayNumber
;;		_UART_Transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text710
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	704
	global	__size_of_UART_Main
	__size_of_UART_Main	equ	__end_of_UART_Main-_UART_Main
	
_UART_Main:	
	opt	stack 8
; Regs used in _UART_Main: [allreg]
	line	705
	
l8178:	
;MCU_B1.c: 705: if(UART->RxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u5141
	goto	u5140
u5141:
	goto	l8188
u5140:
	line	707
	
l8180:	
;MCU_B1.c: 706: {
;MCU_B1.c: 707: UART->RxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	708
	
l8182:	
;MCU_B1.c: 708: UART_Receive();
	fcall	_UART_Receive
	line	709
	
l8184:	
;MCU_B1.c: 709: RCIE=1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	710
	
l8186:	
;MCU_B1.c: 710: setSegmentDisplayNumber(UART->RxData[0]);
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	020h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_UART_Main+0)+0
	clrf	(??_UART_Main+0)+0+1
	movf	0+(??_UART_Main+0)+0,w
	movwf	(?_setSegmentDisplayNumber)
	movf	1+(??_UART_Main+0)+0,w
	movwf	(?_setSegmentDisplayNumber+1)
	fcall	_setSegmentDisplayNumber
	line	711
;MCU_B1.c: 711: }
	goto	l1201
	line	712
	
l1198:	
	line	714
	
l8188:	
;MCU_B1.c: 712: else
;MCU_B1.c: 713: {
;MCU_B1.c: 714: if(UART->TxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u5151
	goto	u5150
u5151:
	goto	l1201
u5150:
	line	716
	
l8190:	
;MCU_B1.c: 715: {
;MCU_B1.c: 716: UART->TxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	717
	
l8192:	
;MCU_B1.c: 717: UART_Transmit();
	fcall	_UART_Transmit
	goto	l1201
	line	718
	
l1200:	
	goto	l1201
	line	719
	
l1199:	
	line	720
	
l1201:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Main
	__end_of_UART_Main:
;; =============== function _UART_Main ends ============

	signat	_UART_Main,88
	global	_UART_Transmit
psect	text711,local,class=CODE,delta=2
global __ptext711
__ptext711:

;; *************** function _UART_Transmit *****************
;; Defined at:
;;		line 722 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_printf
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text711
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	722
	global	__size_of_UART_Transmit
	__size_of_UART_Transmit	equ	__end_of_UART_Transmit-_UART_Transmit
	
_UART_Transmit:	
	opt	stack 8
; Regs used in _UART_Transmit: [wreg-status,0+pclath+cstack]
	line	726
	
l8166:	
;MCU_B1.c: 723: char i;
;MCU_B1.c: 726: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(UART_Transmit@i)
	
l8168:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u5121
	goto	u5120
u5121:
	goto	l8172
u5120:
	goto	l1206
	
l8170:	
	goto	l1206
	line	727
	
l1204:	
	line	733
	
l8172:	
;MCU_B1.c: 727: {
;MCU_B1.c: 733: printf("%d,",i);
	movf	(UART_Transmit@i),w
	movwf	(??_UART_Transmit+0)+0
	clrf	(??_UART_Transmit+0)+0+1
	movf	0+(??_UART_Transmit+0)+0,w
	movwf	(?_printf)
	movf	1+(??_UART_Transmit+0)+0,w
	movwf	(?_printf+1)
	movlw	(STR_1|8000h)&0ffh
	fcall	_printf
	line	726
	
l8174:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_UART_Transmit+0)+0
	movf	(??_UART_Transmit+0)+0,w
	addwf	(UART_Transmit@i),f
	
l8176:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u5131
	goto	u5130
u5131:
	goto	l8172
u5130:
	goto	l1206
	
l1205:	
	line	739
	
l1206:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Transmit
	__end_of_UART_Transmit:
;; =============== function _UART_Transmit ends ============

	signat	_UART_Transmit,88
	global	_printf
psect	text712,local,class=CODE,delta=2
global __ptext712
__ptext712:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  f               1   24[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(4), 
;;  _val            4   26[BANK0 ] struct .
;;  c               1   30[BANK0 ] char 
;;  prec            1   25[BANK0 ] char 
;;  flag            1   23[BANK0 ] unsigned char 
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   18[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       9       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_UART_Transmit
;; This function uses a non-reentrant model
;;
psect	text712
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 8
; Regs used in _printf: [wreg-status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	movlb 0	; select bank0
	movwf	(printf@f)
	
l8118:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l8164
	
l5351:	
	line	542
	
l8120:	
	movf	(printf@c),w
	xorlw	025h&0ffh
	skipnz
	goto	u5041
	goto	u5040
u5041:
	goto	l5352
u5040:
	line	545
	
l8122:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l8164
	line	547
	
l5352:	
	line	552
	clrf	(printf@flag)
	line	638
	goto	l8126
	line	640
	
l5354:	
	line	641
	goto	l5369
	line	700
	
l5356:	
	goto	l8128
	line	701
	
l5357:	
	line	702
	goto	l8128
	line	805
	
l5359:	
	line	816
	goto	l8164
	line	825
	
l8124:	
	goto	l8128
	line	638
	
l5353:	
	
l8126:	
	movlw	01h
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte          218     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable           110     4 (fixed)
; spacedrange          217     6 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l5369
	xorlw	100^0	; case 100
	skipnz
	goto	l8128
	xorlw	105^100	; case 105
	skipnz
	goto	l8128
	goto	l8164
	opt asmopt_on

	line	825
	
l5358:	
	line	1254
	
l8128:	
	movf	(printf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(printf@_val)
	moviw	[1]fsr1
	movwf	(printf@_val+1)
	
l8130:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1256
	
l8132:	
	btfss	(printf@_val+1),7
	goto	u5051
	goto	u5050
u5051:
	goto	l8138
u5050:
	line	1257
	
l8134:	
	movlw	(03h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	iorwf	(printf@flag),f
	line	1258
	
l8136:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	l8138
	line	1259
	
l5360:	
	line	1300
	
l8138:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l8140:	
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l8144
u5060:
	goto	l8152
	
l8142:	
	goto	l8152
	line	1301
	
l5361:	
	
l8144:	
	movlw	low(_dpowers|8000h)
	movwf	fsr0l
	movlw	high(_dpowers|8000h)
	movwf	fsr0h
	movf	(printf@c),w
	addwf	wreg,w
	addwf	fsr0l,f
	skipnc
	incf	fsr0h,f
	moviw	[0]fsr0
	movwf	(??_printf+0)+0
	moviw	[1]fsr0
	movwf	(??_printf+0)+0+1
	movf	1+(??_printf+0)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u5075
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u5075:
	skipnc
	goto	u5071
	goto	u5070
u5071:
	goto	l8148
u5070:
	goto	l8152
	line	1302
	
l8146:	
	goto	l8152
	
l5363:	
	line	1300
	
l8148:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l8150:	
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l8144
u5080:
	goto	l8152
	
l5362:	
	line	1433
	
l8152:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u5091
	goto	u5090
u5091:
	goto	l8156
u5090:
	line	1434
	
l8154:	
	movlw	(02Dh)
	fcall	_putch
	goto	l8156
	
l5364:	
	line	1467
	
l8156:	
	movlb 0	; select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1469
	goto	l8162
	
l5366:	
	line	1484
	
l8158:	
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movlw	low(_dpowers|8000h)
	movwf	fsr0l
	movlw	high(_dpowers|8000h)
	movwf	fsr0h
	movf	(printf@prec),w
	addwf	wreg,w
	addwf	fsr0l,f
	skipnc
	incf	fsr0h,f
	moviw	[0]fsr0
	movwf	(?___lwdiv)
	moviw	[1]fsr0
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movlb 0	; select bank0
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movlb 0	; select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	line	1516
	
l8160:	
	movf	(printf@c),w
	fcall	_putch
	goto	l8162
	line	1517
	
l5365:	
	line	1469
	
l8162:	
	movlw	(-1)
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1&0ffh
	skipz
	goto	u5101
	goto	u5100
u5101:
	goto	l8158
u5100:
	goto	l8164
	
l5367:	
	goto	l8164
	line	1525
	
l5350:	
	line	540
	
l8164:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l8120
u5110:
	goto	l5369
	
l5368:	
	goto	l5369
	line	1527
	
l5355:	
	line	1533
;	Return value of _printf is never used
	
l5369:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_setSegmentDisplayNumber
psect	text713,local,class=CODE,delta=2
global __ptext713
__ptext713:

;; *************** function _setSegmentDisplayNumber *****************
;; Defined at:
;;		line 21 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;  number          2   13[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text713
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	21
	global	__size_of_setSegmentDisplayNumber
	__size_of_setSegmentDisplayNumber	equ	__end_of_setSegmentDisplayNumber-_setSegmentDisplayNumber
	
_setSegmentDisplayNumber:	
	opt	stack 9
; Regs used in _setSegmentDisplayNumber: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	23
	
l8066:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u4931
	goto	u4930
u4931:
	goto	l3305
u4930:
	line	25
	
l8068:	
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
	goto	u4941
	goto	u4940
u4941:
	goto	l8076
u4940:
	line	28
	
l8070:	
;SegmentDisplay_A2.c: 27: {
;SegmentDisplay_A2.c: 28: Segment->Num[0]=(number & 0x000f);
	movf	(setSegmentDisplayNumber@number),w
	andlw	0Fh
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	29
	
l8072:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	btemp+1
u4955:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	btemp+1,f
	goto	u4955
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
	
l8074:	
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
u4965:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	btemp+1,f
	goto	u4965
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
	goto	l8104
	line	33
	
l3292:	
	
l8076:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u4971
	goto	u4970
u4971:
	goto	l8104
u4970:
	line	35
	
l8078:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4985
	movlw	low(02710h)
	subwf	(setSegmentDisplayNumber@number),w
u4985:

	skipc
	goto	u4981
	goto	u4980
u4981:
	goto	l8092
u4980:
	line	37
	
l8080:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@i)
	
l8082:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l8086
u4990:
	goto	l8104
	
l8084:	
	goto	l8104
	line	38
	
l3296:	
	line	39
	
l8086:	
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
	
l8088:	
	movlw	(01h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(??_setSegmentDisplayNumber+0)+0,w
	addwf	(setSegmentDisplayNumber@i),f
	
l8090:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u5001
	goto	u5000
u5001:
	goto	l8086
u5000:
	goto	l8104
	
l3297:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	l8104
	line	42
	
l3295:	
	line	44
	
l8092:	
;SegmentDisplay_A2.c: 42: else
;SegmentDisplay_A2.c: 43: {
;SegmentDisplay_A2.c: 44: Segment->Num[3]=(number/1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
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
	movlb 0	; select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	45
	
l8094:	
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
	movlb 0	; select bank0
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	46
	
l8096:	
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
	movlb 0	; select bank0
	movf	(0+(?___awdiv)),w
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
	movlb 0	; select bank0
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	48
	
l8098:	
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
	movlb 0	; select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	49
	
l8100:	
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
	movlb 0	; select bank0
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	50
	
l8102:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	l8104
	line	51
	
l3298:	
	goto	l8104
	line	52
	
l3294:	
	goto	l8104
	line	53
	
l3293:	
	
l8104:	
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
	goto	u5011
	goto	u5010
u5011:
	goto	l8108
u5010:
	line	55
	
l8106:	
;SegmentDisplay_A2.c: 54: {
;SegmentDisplay_A2.c: 55: Segment->DisplayCount=3;
	movlw	(03h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	56
;SegmentDisplay_A2.c: 56: }
	goto	l3305
	line	57
	
l3299:	
	
l8108:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u5021
	goto	u5020
u5021:
	goto	l8112
u5020:
	line	59
	
l8110:	
;SegmentDisplay_A2.c: 58: {
;SegmentDisplay_A2.c: 59: Segment->DisplayCount=2;
	movlw	(02h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	60
;SegmentDisplay_A2.c: 60: }
	goto	l3305
	line	61
	
l3301:	
	
l8112:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u5031
	goto	u5030
u5031:
	goto	l8116
u5030:
	line	63
	
l8114:	
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
	goto	l3305
	line	65
	
l3303:	
	line	67
	
l8116:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l3305
	line	68
	
l3304:	
	goto	l3305
	
l3302:	
	goto	l3305
	
l3300:	
	goto	l3305
	line	69
	
l3291:	
	line	70
	
l3305:	
	return
	opt stack 0
GLOBAL	__end_of_setSegmentDisplayNumber
	__end_of_setSegmentDisplayNumber:
;; =============== function _setSegmentDisplayNumber ends ============

	signat	_setSegmentDisplayNumber,4216
	global	_I2C_Main
psect	text714,local,class=CODE,delta=2
global __ptext714
__ptext714:

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 442 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   10[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_Master_Reception
;;		_I2C_Master_Transmission
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text714
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	442
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
	opt	stack 10
; Regs used in _I2C_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	468
	
l8030:	
;MCU_B1.c: 443: char i;
;MCU_B1.c: 468: if(I2C->MasterRxGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u4861
	goto	u4860
u4861:
	goto	l1061
u4860:
	line	470
	
l8032:	
;MCU_B1.c: 469: {
;MCU_B1.c: 470: I2C->MasterRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	471
	
l8034:	
;MCU_B1.c: 471: I2C_Master_Reception();
	fcall	_I2C_Master_Reception
	line	472
	
l8036:	
;MCU_B1.c: 472: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	line	473
	
l8038:	
;MCU_B1.c: 473: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	475
	
l8040:	
;MCU_B1.c: 475: for(i=0;i<32;i++)
	clrf	(I2C_Main@i)
	
l8042:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u4871
	goto	u4870
u4871:
	goto	l8046
u4870:
	goto	l8052
	
l8044:	
	goto	l8052
	line	476
	
l1062:	
	line	477
	
l8046:	
;MCU_B1.c: 476: {
;MCU_B1.c: 477: UART->TxData[i]=I2C->BufferReader[i];
	movf	(I2C_Main@i),w
	addwf	(_I2C),w
	movwf	(??_I2C_Main+0)+0
	movf	0+(??_I2C_Main+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_I2C_Main+1)+0
	movf	(I2C_Main@i),w
	addwf	(_UART),w
	movwf	(??_I2C_Main+2)+0
	movf	0+(??_I2C_Main+2)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_Main+1)+0,w
	movwf	indf1
	line	475
	
l8048:	
	movlw	(01h)
	movwf	(??_I2C_Main+0)+0
	movf	(??_I2C_Main+0)+0,w
	addwf	(I2C_Main@i),f
	
l8050:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u4881
	goto	u4880
u4881:
	goto	l8046
u4880:
	goto	l8052
	
l1063:	
	line	479
	
l8052:	
;MCU_B1.c: 478: }
;MCU_B1.c: 479: UART->TxGO=1;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	481
;MCU_B1.c: 481: }
	goto	l1070
	line	482
	
l1061:	
	line	484
;MCU_B1.c: 482: else
;MCU_B1.c: 483: {
;MCU_B1.c: 484: if(RC0)
	btfss	(112/8),(112)&7
	goto	u4891
	goto	u4890
u4891:
	goto	l8058
u4890:
	line	486
	
l8054:	
;MCU_B1.c: 485: {
;MCU_B1.c: 486: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u4901
	goto	u4900
u4901:
	goto	l1070
u4900:
	line	488
	
l8056:	
;MCU_B1.c: 487: {
;MCU_B1.c: 488: I2C->SS=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	489
;MCU_B1.c: 489: I2C->MasterRxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l1070
	line	490
	
l1066:	
	line	491
;MCU_B1.c: 490: }
;MCU_B1.c: 491: }
	goto	l1070
	line	492
	
l1065:	
	line	494
	
l8058:	
;MCU_B1.c: 492: else
;MCU_B1.c: 493: {
;MCU_B1.c: 494: if(I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u4911
	goto	u4910
u4911:
	goto	l1068
u4910:
	line	496
	
l8060:	
;MCU_B1.c: 495: {
;MCU_B1.c: 496: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	497
	
l1068:	
	line	498
;MCU_B1.c: 497: }
;MCU_B1.c: 498: if(I2C->MasterTxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u4921
	goto	u4920
u4921:
	goto	l1070
u4920:
	line	500
	
l8062:	
;MCU_B1.c: 499: {
;MCU_B1.c: 500: I2C->MasterTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	501
	
l8064:	
;MCU_B1.c: 501: I2C_Master_Transmission();
	fcall	_I2C_Master_Transmission
	goto	l1070
	line	502
	
l1069:	
	goto	l1070
	line	503
	
l1067:	
	goto	l1070
	line	504
	
l1064:	
	line	507
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Main
	__end_of_I2C_Main:
;; =============== function _I2C_Main ends ============

	signat	_I2C_Main,88
	global	_Mcu_Initialization
psect	text715,local,class=CODE,delta=2
global __ptext715
__ptext715:

;; *************** function _Mcu_Initialization *****************
;; Defined at:
;;		line 25 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_IO_Set
;;		_TMR1_Set
;;		_I2C_Set
;;		_UART_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text715
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	25
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l8020:	
;MCU_B1.c: 27: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	29
	
l8022:	
;MCU_B1.c: 29: IO_Set();
	fcall	_IO_Set
	line	33
	
l8024:	
;MCU_B1.c: 31: ;;
;MCU_B1.c: 33: TMR1_Set();
	fcall	_TMR1_Set
	line	43
	
l8026:	
;MCU_B1.c: 35: ;;
;MCU_B1.c: 39: ;;
;MCU_B1.c: 41: ;;
;MCU_B1.c: 43: I2C_Set();
	fcall	_I2C_Set
	line	45
	
l8028:	
;MCU_B1.c: 45: UART_Set();
	fcall	_UART_Set
	line	48
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
;; =============== function _Mcu_Initialization ends ============

	signat	_Mcu_Initialization,88
	global	___awmod
psect	text716,local,class=CODE,delta=2
global __ptext716
__ptext716:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[BANK0 ] int 
;;  dividend        2    6[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   10[BANK0 ] unsigned char 
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text716
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 9
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l7860:	
	movlb 0	; select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u4471
	goto	u4470
u4471:
	goto	l7864
u4470:
	line	10
	
l7862:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l7864
	line	12
	
l5586:	
	line	13
	
l7864:	
	btfss	(___awmod@divisor+1),7
	goto	u4481
	goto	u4480
u4481:
	goto	l7868
u4480:
	line	14
	
l7866:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l7868
	
l5587:	
	line	15
	
l7868:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4491
	goto	u4490
u4491:
	goto	l7886
u4490:
	line	16
	
l7870:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l7876
	
l5590:	
	line	18
	
l7872:	
	movlw	01h
	
u4505:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u4505
	line	19
	
l7874:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l7876
	line	20
	
l5589:	
	line	17
	
l7876:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l7872
u4510:
	goto	l7878
	
l5591:	
	goto	l7878
	line	21
	
l5592:	
	line	22
	
l7878:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4525
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4525:
	skipc
	goto	u4521
	goto	u4520
u4521:
	goto	l7882
u4520:
	line	23
	
l7880:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l7882
	
l5593:	
	line	24
	
l7882:	
	movlw	01h
	
u4535:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u4535
	line	25
	
l7884:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l7878
u4540:
	goto	l7886
	
l5594:	
	goto	l7886
	line	26
	
l5588:	
	line	27
	
l7886:	
	movf	(___awmod@sign),w
	skipz
	goto	u4550
	goto	l7890
u4550:
	line	28
	
l7888:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l7890
	
l5595:	
	line	29
	
l7890:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l5596
	
l7892:	
	line	30
	
l5596:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text717,local,class=CODE,delta=2
global __ptext717
__ptext717:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[BANK0 ] int 
;;  dividend        2    6[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[BANK0 ] int 
;;  sign            1   10[BANK0 ] unsigned char 
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text717
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 9
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l7820:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u4371
	goto	u4370
u4371:
	goto	l7824
u4370:
	line	11
	
l7822:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l7824
	line	13
	
l5518:	
	line	14
	
l7824:	
	btfss	(___awdiv@dividend+1),7
	goto	u4381
	goto	u4380
u4381:
	goto	l7830
u4380:
	line	15
	
l7826:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l7828:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l7830
	line	17
	
l5519:	
	line	18
	
l7830:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l7832:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u4391
	goto	u4390
u4391:
	goto	l7852
u4390:
	line	20
	
l7834:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l7840
	
l5522:	
	line	22
	
l7836:	
	movlw	01h
	
u4405:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u4405
	line	23
	
l7838:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l7840
	line	24
	
l5521:	
	line	21
	
l7840:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l7836
u4410:
	goto	l7842
	
l5523:	
	goto	l7842
	line	25
	
l5524:	
	line	26
	
l7842:	
	movlw	01h
	
u4425:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u4425
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4435
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4435:
	skipc
	goto	u4431
	goto	u4430
u4431:
	goto	l7848
u4430:
	line	28
	
l7844:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	29
	
l7846:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l7848
	line	30
	
l5525:	
	line	31
	
l7848:	
	movlw	01h
	
u4445:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u4445
	line	32
	
l7850:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l7842
u4450:
	goto	l7852
	
l5526:	
	goto	l7852
	line	33
	
l5520:	
	line	34
	
l7852:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4460
	goto	l7856
u4460:
	line	35
	
l7854:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l7856
	
l5527:	
	line	36
	
l7856:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l5528
	
l7858:	
	line	37
	
l5528:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text718,local,class=CODE,delta=2
global __ptext718
__ptext718:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   12[BANK0 ] unsigned int 
;;  dividend        2   14[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text718
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 8
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l7798:	
	movlb 0	; select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u4311
	goto	u4310
u4311:
	goto	l7816
u4310:
	line	9
	
l7800:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l7806
	
l5396:	
	line	11
	
l7802:	
	movlw	01h
	
u4325:
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	decfsz	wreg,f
	goto	u4325
	line	12
	
l7804:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l7806
	line	13
	
l5395:	
	line	10
	
l7806:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l7802
u4330:
	goto	l7808
	
l5397:	
	goto	l7808
	line	14
	
l5398:	
	line	15
	
l7808:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4345
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4345:
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l7812
u4340:
	line	16
	
l7810:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	goto	l7812
	
l5399:	
	line	17
	
l7812:	
	movlw	01h
	
u4355:
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	decfsz	wreg,f
	goto	u4355
	line	18
	
l7814:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l7808
u4360:
	goto	l7816
	
l5400:	
	goto	l7816
	line	19
	
l5394:	
	line	20
	
l7816:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l5401
	
l7818:	
	line	21
	
l5401:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text719,local,class=CODE,delta=2
global __ptext719
__ptext719:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[BANK0 ] unsigned int 
;;  dividend        2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[BANK0 ] unsigned int 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text719
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 8
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l7772:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l7774:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4241
	goto	u4240
u4241:
	goto	l7794
u4240:
	line	11
	
l7776:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l7782
	
l5386:	
	line	13
	
l7778:	
	movlw	01h
	
u4255:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u4255
	line	14
	
l7780:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l7782
	line	15
	
l5385:	
	line	12
	
l7782:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l7778
u4260:
	goto	l7784
	
l5387:	
	goto	l7784
	line	16
	
l5388:	
	line	17
	
l7784:	
	movlw	01h
	
u4275:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u4275
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4285
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4285:
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l7790
u4280:
	line	19
	
l7786:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l7788:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l7790
	line	21
	
l5389:	
	line	22
	
l7790:	
	movlw	01h
	
u4295:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u4295
	line	23
	
l7792:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l7784
u4300:
	goto	l7794
	
l5390:	
	goto	l7794
	line	24
	
l5384:	
	line	25
	
l7794:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l5391
	
l7796:	
	line	26
	
l5391:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_SegmentDisplay_Main
psect	text720,local,class=CODE,delta=2
global __ptext720
__ptext720:

;; *************** function _SegmentDisplay_Main *****************
;; Defined at:
;;		line 73 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
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
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text720
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	73
	global	__size_of_SegmentDisplay_Main
	__size_of_SegmentDisplay_Main	equ	__end_of_SegmentDisplay_Main-_SegmentDisplay_Main
	
_SegmentDisplay_Main:	
	opt	stack 11
; Regs used in _SegmentDisplay_Main: [wreg-status,0]
	line	74
	
l7738:	
;SegmentDisplay_A2.c: 74: if(Segment->GO)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u4171
	goto	u4170
u4171:
	goto	l3319
u4170:
	line	76
	
l7740:	
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
	
l7742:	
;SegmentDisplay_A2.c: 77: if(Segment->Time == 5)
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l3319
u4180:
	line	79
	
l7744:	
;SegmentDisplay_A2.c: 78: {
;SegmentDisplay_A2.c: 79: Segment->Time=0;
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	80
	
l7746:	
;SegmentDisplay_A2.c: 80: PORTA&=0x0f;
	movlw	(0Fh)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(??_SegmentDisplay_Main+0)+0,w
	andwf	(12),f	;volatile
	line	81
	
l7748:	
;SegmentDisplay_A2.c: 81: if(Segment->ComCount == 0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l7752
u4190:
	line	83
	
l7750:	
;SegmentDisplay_A2.c: 82: {
;SegmentDisplay_A2.c: 83: RA4=1;
	bsf	(100/8),(100)&7
	line	84
;SegmentDisplay_A2.c: 84: }
	goto	l7764
	line	85
	
l3310:	
	
l7752:	
;SegmentDisplay_A2.c: 85: else if(Segment->ComCount == 1)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l7756
u4200:
	line	87
	
l7754:	
;SegmentDisplay_A2.c: 86: {
;SegmentDisplay_A2.c: 87: RA5=1;
	bsf	(101/8),(101)&7
	line	88
;SegmentDisplay_A2.c: 88: }
	goto	l7764
	line	89
	
l3312:	
	
l7756:	
;SegmentDisplay_A2.c: 89: else if(Segment->ComCount == 2)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l7760
u4210:
	line	91
	
l7758:	
;SegmentDisplay_A2.c: 90: {
;SegmentDisplay_A2.c: 91: RA6=1;
	bsf	(102/8),(102)&7
	line	92
;SegmentDisplay_A2.c: 92: }
	goto	l7764
	line	93
	
l3314:	
	
l7760:	
;SegmentDisplay_A2.c: 93: else if(Segment->ComCount == 3)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l7764
u4220:
	line	95
	
l7762:	
;SegmentDisplay_A2.c: 94: {
;SegmentDisplay_A2.c: 95: RA7=1;
	bsf	(103/8),(103)&7
	goto	l7764
	line	96
	
l3316:	
	goto	l7764
	line	97
	
l3315:	
	goto	l7764
	
l3313:	
	goto	l7764
	
l3311:	
	
l7764:	
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
	
l7766:	
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
	goto	u4231
	goto	u4230
u4231:
	goto	l7770
u4230:
	line	100
	
l7768:	
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
	goto	l3319
	line	102
	
l3317:	
	line	104
	
l7770:	
;SegmentDisplay_A2.c: 102: else
;SegmentDisplay_A2.c: 103: {
;SegmentDisplay_A2.c: 104: Segment->ComCount=0;
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l3319
	line	105
	
l3318:	
	goto	l3319
	line	106
	
l3309:	
	goto	l3319
	line	107
	
l3308:	
	line	108
	
l3319:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Main
	__end_of_SegmentDisplay_Main:
;; =============== function _SegmentDisplay_Main ends ============

	signat	_SegmentDisplay_Main,88
	global	_MainT
psect	text721,local,class=CODE,delta=2
global __ptext721
__ptext721:

;; *************** function _MainT *****************
;; Defined at:
;;		line 42 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\myMain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text721
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	42
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 11
; Regs used in _MainT: [wreg+fsr1l-status,0]
	line	45
	
l7714:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u4131
	goto	u4130
u4131:
	goto	l7722
u4130:
	line	47
	
l7716:	
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
	
l7718:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u4145
	moviw	[1]fsr1
	xorlw	high(05DCh)
u4145:
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l2275
u4140:
	line	50
	
l7720:	
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
	goto	l2275
	line	56
	
l2270:	
	line	57
;myMain.c: 56: }
;myMain.c: 57: }
	goto	l2275
	line	58
	
l2269:	
	line	60
	
l7722:	
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
	
l7724:	
;myMain.c: 61: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u4155
	moviw	[1]fsr1
	xorlw	high(03E8h)
u4155:
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l7732
u4150:
	line	63
	
l7726:	
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
	
l7728:	
;myMain.c: 64: RA2=~RA2;
	movlw	1<<((98)&7)
	xorwf	((98)/8),f
	goto	l7732
	line	78
	
l7730:	
	goto	l7732
	line	82
;myMain.c: 79: {
	
l2273:	
	goto	l7732
	line	105
	
l2272:	
	line	108
	
l7732:	
;myMain.c: 82: }
;myMain.c: 105: }
;myMain.c: 108: TMain->Count2++;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	109
	
l7734:	
;myMain.c: 109: if(TMain->Count2 == 2000)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u4165
	moviw	[1]fsr1
	xorlw	high(07D0h)
u4165:
	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l2275
u4160:
	line	111
	
l7736:	
;myMain.c: 110: {
;myMain.c: 111: TMain->Count2=0;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l2275
	line	124
	
l2274:	
	goto	l2275
	line	127
	
l2271:	
	line	128
	
l2275:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_SegmentDisplay_Initial
psect	text722,local,class=CODE,delta=2
global __ptext722
__ptext722:

;; *************** function _SegmentDisplay_Initial *****************
;; Defined at:
;;		line 9 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text722
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	9
	global	__size_of_SegmentDisplay_Initial
	__size_of_SegmentDisplay_Initial	equ	__end_of_SegmentDisplay_Initial-_SegmentDisplay_Initial
	
_SegmentDisplay_Initial:	
	opt	stack 11
; Regs used in _SegmentDisplay_Initial: [wregfsr1]
	line	10
	
l7708:	
;SegmentDisplay_A2.c: 10: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movlb 0	; select bank0
	movwf	(??_SegmentDisplay_Initial+0)+0
	movf	(??_SegmentDisplay_Initial+0)+0,w
	movwf	(_Segment)
	line	11
	
l7710:	
;SegmentDisplay_A2.c: 11: Segment->Enable=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	13
	
l7712:	
;SegmentDisplay_A2.c: 13: Segment->Dec=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	18
	
l3288:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Initial
	__end_of_SegmentDisplay_Initial:
;; =============== function _SegmentDisplay_Initial ends ============

	signat	_SegmentDisplay_Initial,88
	global	_MainT_Initial
psect	text723,local,class=CODE,delta=2
global __ptext723
__ptext723:

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 34 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\myMain.c"
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text723
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	34
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 11
; Regs used in _MainT_Initial: [wregfsr1]
	line	35
	
l7702:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_TMain)
	line	36
	
l7704:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l7706:	
;myMain.c: 37: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	38
	
l2266:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
;; =============== function _MainT_Initial ends ============

	signat	_MainT_Initial,88
	global	_putch
psect	text724,local,class=CODE,delta=2
global __ptext724
__ptext724:

;; *************** function _putch *****************
;; Defined at:
;;		line 780 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text724
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	780
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 8
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movlb 0	; select bank0
	movwf	(putch@byte)
	line	782
	
l7694:	
;MCU_B1.c: 782: while(!TXIF)
	goto	l1217
	
l1218:	
	line	783
;MCU_B1.c: 783: continue;
	
l1217:	
	line	782
	btfss	(140/8),(140)&7
	goto	u4121
	goto	u4120
u4121:
	goto	l1217
u4120:
	goto	l7696
	
l1219:	
	line	784
	
l7696:	
;MCU_B1.c: 784: TXREG = byte;
	movf	(putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	785
	
l1220:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_UART_Receive
psect	text725,local,class=CODE,delta=2
global __ptext725
__ptext725:

;; *************** function _UART_Receive *****************
;; Defined at:
;;		line 741 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    7[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text725
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	741
	global	__size_of_UART_Receive
	__size_of_UART_Receive	equ	__end_of_UART_Receive-_UART_Receive
	
_UART_Receive:	
	opt	stack 10
; Regs used in _UART_Receive: [wreg+fsr1l-status,0]
	line	743
	
l7676:	
;MCU_B1.c: 742: char i;
;MCU_B1.c: 743: RA1=~RA1;
	movlw	1<<((97)&7)
	movlb 0	; select bank0
	xorwf	((97)/8),f
	line	745
	
l7678:	
;MCU_B1.c: 745: TMain->Test=1;
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	line	747
	
l7680:	
;MCU_B1.c: 747: for(i=0;i<32;i++)
	clrf	(UART_Receive@i)
	
l7682:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u4101
	goto	u4100
u4101:
	goto	l7686
u4100:
	goto	l7692
	
l7684:	
	goto	l7692
	line	748
	
l1209:	
	line	749
	
l7686:	
;MCU_B1.c: 748: {
;MCU_B1.c: 749: I2C->BufferWriter[i]=UART->RxData[i];
	movf	(UART_Receive@i),w
	addlw	020h
	addwf	(_UART),w
	movwf	(??_UART_Receive+0)+0
	movf	0+(??_UART_Receive+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_UART_Receive+1)+0
	movf	(UART_Receive@i),w
	addlw	020h
	addwf	(_I2C),w
	movwf	(??_UART_Receive+2)+0
	movf	0+(??_UART_Receive+2)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_Receive+1)+0,w
	movwf	indf1
	line	747
	
l7688:	
	movlw	(01h)
	movwf	(??_UART_Receive+0)+0
	movf	(??_UART_Receive+0)+0,w
	addwf	(UART_Receive@i),f
	
l7690:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l7686
u4110:
	goto	l7692
	
l1210:	
	line	751
	
l7692:	
;MCU_B1.c: 750: }
;MCU_B1.c: 751: I2C->MasterTxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	765
	
l1211:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Receive
	__end_of_UART_Receive:
;; =============== function _UART_Receive ends ============

	signat	_UART_Receive,88
	global	_I2C_Master_Transmission
psect	text726,local,class=CODE,delta=2
global __ptext726
__ptext726:

;; *************** function _I2C_Master_Transmission *****************
;; Defined at:
;;		line 542 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Main
;; This function uses a non-reentrant model
;;
psect	text726
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	542
	global	__size_of_I2C_Master_Transmission
	__size_of_I2C_Master_Transmission	equ	__end_of_I2C_Master_Transmission-_I2C_Master_Transmission
	
_I2C_Master_Transmission:	
	opt	stack 10
; Regs used in _I2C_Master_Transmission: [wreg+fsr1l-status,0]
	line	544
	
l7626:	
;MCU_B1.c: 543: char i;
;MCU_B1.c: 544: while(SEN);
	goto	l1076
	
l1077:	
	
l1076:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l1076
u3900:
	
l1078:	
	line	545
;MCU_B1.c: 545: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7
	line	547
;MCU_B1.c: 547: while(SEN);
	goto	l1079
	
l1080:	
	
l1079:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l1079
u3910:
	goto	l7628
	
l1081:	
	line	550
	
l7628:	
;MCU_B1.c: 550: SSPBUF=0x10;
	movlw	(010h)
	movwf	(529)^0200h	;volatile
	line	551
;MCU_B1.c: 551: while(BF);
	goto	l1082
	
l1083:	
	
l1082:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l1082
u3920:
	goto	l1085
	
l1084:	
	line	554
;MCU_B1.c: 554: while(ACKSTAT);
	goto	l1085
	
l1086:	
	
l1085:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l1085
u3930:
	
l1087:	
	line	556
;MCU_B1.c: 556: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Master_Transmission@i)
	
l7630:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l1090
u3940:
	goto	l1099
	
l7632:	
	goto	l1099
	line	557
	
l1088:	
	line	558
;MCU_B1.c: 557: {
;MCU_B1.c: 558: while(SEN);
	goto	l1090
	
l1091:	
	
l1090:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l1090
u3950:
	goto	l7634
	
l1092:	
	line	559
	
l7634:	
;MCU_B1.c: 559: SSPBUF=I2C->BufferWriter[i];
	movlb 0	; select bank0
	movf	(I2C_Master_Transmission@i),w
	addlw	020h
	addwf	(_I2C),w
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	0+(??_I2C_Master_Transmission+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	560
;MCU_B1.c: 560: while(BF);
	goto	l1093
	
l1094:	
	
l1093:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l1093
u3960:
	goto	l1096
	
l1095:	
	line	563
;MCU_B1.c: 563: while(ACKSTAT);
	goto	l1096
	
l1097:	
	
l1096:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l1096
u3970:
	goto	l7636
	
l1098:	
	line	556
	
l7636:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	(??_I2C_Master_Transmission+0)+0,w
	addwf	(I2C_Master_Transmission@i),f
	
l7638:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l1090
u3980:
	goto	l1099
	
l1089:	
	line	566
;MCU_B1.c: 564: }
;MCU_B1.c: 566: while(SEN);
	goto	l1099
	
l1100:	
	
l1099:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l1099
u3990:
	goto	l1102
	
l1101:	
	line	567
;MCU_B1.c: 567: while(!PEN)
	goto	l1102
	
l1103:	
	line	568
;MCU_B1.c: 568: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7
	
l1102:	
	line	567
	btfss	(4274/8)^0200h,(4274)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l1103
u4000:
	goto	l1105
	
l1104:	
	line	569
;MCU_B1.c: 569: while(PEN);
	goto	l1105
	
l1106:	
	
l1105:	
	btfsc	(4274/8)^0200h,(4274)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l1105
u4010:
	goto	l1108
	
l1107:	
	line	572
	
l1108:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Transmission
	__end_of_I2C_Master_Transmission:
;; =============== function _I2C_Master_Transmission ends ============

	signat	_I2C_Master_Transmission,88
	global	_I2C_Master_Reception
psect	text727,local,class=CODE,delta=2
global __ptext727
__ptext727:

;; *************** function _I2C_Master_Reception *****************
;; Defined at:
;;		line 575 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Main
;; This function uses a non-reentrant model
;;
psect	text727
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	575
	global	__size_of_I2C_Master_Reception
	__size_of_I2C_Master_Reception	equ	__end_of_I2C_Master_Reception-_I2C_Master_Reception
	
_I2C_Master_Reception:	
	opt	stack 10
; Regs used in _I2C_Master_Reception: [wreg+fsr1l-status,0]
	line	577
	
l7612:	
;MCU_B1.c: 576: char i;
;MCU_B1.c: 577: while(SEN);
	goto	l1111
	
l1112:	
	
l1111:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l1111
u3700:
	
l1113:	
	line	578
;MCU_B1.c: 578: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7
	line	579
;MCU_B1.c: 579: while(SEN);
	goto	l1114
	
l1115:	
	
l1114:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l1114
u3710:
	goto	l7614
	
l1116:	
	line	582
	
l7614:	
;MCU_B1.c: 582: SSPBUF=0x11;
	movlw	(011h)
	movwf	(529)^0200h	;volatile
	line	585
;MCU_B1.c: 585: while(BF);
	goto	l1117
	
l1118:	
	
l1117:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l1117
u3720:
	goto	l1120
	
l1119:	
	line	586
;MCU_B1.c: 586: while(ACKSTAT);
	goto	l1120
	
l1121:	
	
l1120:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l1120
u3730:
	
l1122:	
	line	589
;MCU_B1.c: 589: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Master_Reception@i)
	
l7616:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l1125
u3740:
	goto	l1140
	
l7618:	
	goto	l1140
	line	590
	
l1123:	
	line	591
;MCU_B1.c: 590: {
;MCU_B1.c: 591: while(SEN);
	goto	l1125
	
l1126:	
	
l1125:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l1125
u3750:
	goto	l1128
	
l1127:	
	line	592
;MCU_B1.c: 592: while(RCEN);
	goto	l1128
	
l1129:	
	
l1128:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l1128
u3760:
	
l1130:	
	line	593
;MCU_B1.c: 593: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7
	line	594
;MCU_B1.c: 594: while(RCEN);
	goto	l1131
	
l1132:	
	
l1131:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l1131
u3770:
	goto	l7620
	
l1133:	
	line	595
	
l7620:	
;MCU_B1.c: 595: I2C->BufferReader[i]=SSPBUF;
	movf	(529)^0200h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(I2C_Master_Reception@i),w
	addwf	(_I2C),w
	movwf	(??_I2C_Master_Reception+1)+0
	movf	0+(??_I2C_Master_Reception+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_Master_Reception+0)+0,w
	movwf	indf1
	line	596
;MCU_B1.c: 596: while(!ACKEN)
	goto	l1134
	
l1135:	
	line	597
;MCU_B1.c: 597: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7
	
l1134:	
	line	596
	movlb 4	; select bank4
	btfss	(4276/8)^0200h,(4276)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l1135
u3780:
	goto	l1137
	
l1136:	
	line	598
;MCU_B1.c: 598: while(ACKEN);
	goto	l1137
	
l1138:	
	
l1137:	
	btfsc	(4276/8)^0200h,(4276)&7
	goto	u3791
	goto	u3790
u3791:
	goto	l1137
u3790:
	goto	l7622
	
l1139:	
	line	589
	
l7622:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(??_I2C_Master_Reception+0)+0,w
	addwf	(I2C_Master_Reception@i),f
	
l7624:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l1125
u3800:
	goto	l1140
	
l1124:	
	line	600
;MCU_B1.c: 599: }
;MCU_B1.c: 600: while(RCEN);
	goto	l1140
	
l1141:	
	
l1140:	
	movlb 4	; select bank4
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l1140
u3810:
	
l1142:	
	line	601
;MCU_B1.c: 601: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7
	line	602
;MCU_B1.c: 602: while(RCEN);
	goto	l1143
	
l1144:	
	
l1143:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3821
	goto	u3820
u3821:
	goto	l1143
u3820:
	goto	l1146
	
l1145:	
	line	603
;MCU_B1.c: 603: while(!ACKEN)
	goto	l1146
	
l1147:	
	line	604
;MCU_B1.c: 604: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7
	
l1146:	
	line	603
	btfss	(4276/8)^0200h,(4276)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l1147
u3830:
	goto	l1149
	
l1148:	
	line	605
;MCU_B1.c: 605: while(ACKEN);
	goto	l1149
	
l1150:	
	
l1149:	
	btfsc	(4276/8)^0200h,(4276)&7
	goto	u3841
	goto	u3840
u3841:
	goto	l1149
u3840:
	goto	l1152
	
l1151:	
	line	606
;MCU_B1.c: 606: while(RCEN);
	goto	l1152
	
l1153:	
	
l1152:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3851
	goto	u3850
u3851:
	goto	l1152
u3850:
	
l1154:	
	line	607
;MCU_B1.c: 607: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7
	line	608
;MCU_B1.c: 608: while(RCEN);
	goto	l1155
	
l1156:	
	
l1155:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l1155
u3860:
	goto	l1158
	
l1157:	
	line	610
;MCU_B1.c: 610: while(SEN);
	goto	l1158
	
l1159:	
	
l1158:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l1158
u3870:
	goto	l1161
	
l1160:	
	line	611
;MCU_B1.c: 611: while(!PEN)
	goto	l1161
	
l1162:	
	line	612
;MCU_B1.c: 612: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7
	
l1161:	
	line	611
	btfss	(4274/8)^0200h,(4274)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l1162
u3880:
	goto	l1164
	
l1163:	
	line	613
;MCU_B1.c: 613: while(PEN);
	goto	l1164
	
l1165:	
	
l1164:	
	btfsc	(4274/8)^0200h,(4274)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l1164
u3890:
	goto	l1167
	
l1166:	
	line	616
	
l1167:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Reception
	__end_of_I2C_Master_Reception:
;; =============== function _I2C_Master_Reception ends ============

	signat	_I2C_Master_Reception,88
	global	_UART_Set
psect	text728,local,class=CODE,delta=2
global __ptext728
__ptext728:

;; *************** function _UART_Set *****************
;; Defined at:
;;		line 666 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text728
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	666
	global	__size_of_UART_Set
	__size_of_UART_Set	equ	__end_of_UART_Set-_UART_Set
	
_UART_Set:	
	opt	stack 10
; Regs used in _UART_Set: [wreg+status,2]
	line	667
	
l7550:	
;MCU_B1.c: 667: UART=&VarUart;
	movlw	(_VarUart)&0ffh
	movlb 0	; select bank0
	movwf	(??_UART_Set+0)+0
	movf	(??_UART_Set+0)+0,w
	movwf	(_UART)
	line	668
	
l7552:	
;MCU_B1.c: 668: TRISC7 = 1;
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7
	line	669
	
l7554:	
;MCU_B1.c: 669: TRISC6 = 1;
	bsf	(1142/8)^080h,(1142)&7
	line	670
;MCU_B1.c: 670: SPBRG = ((int)(16000000L/(16UL * 19200) -1));
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	671
	
l7556:	
;MCU_B1.c: 671: SPBRGH = 0;
	clrf	(412)^0180h	;volatile
	line	672
	
l7558:	
;MCU_B1.c: 672: BRG16 = 0;
	bcf	(3323/8)^0180h,(3323)&7
	line	673
	
l7560:	
;MCU_B1.c: 673: RCSTA = (0|0x90);
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	674
	
l7562:	
;MCU_B1.c: 674: TXSTA = (0x4|0|0x20);
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	line	675
	
l7564:	
;MCU_B1.c: 675: TX9=0;
	bcf	(3318/8)^0180h,(3318)&7
	line	676
	
l7566:	
;MCU_B1.c: 676: RX9=0;
	bcf	(3310/8)^0180h,(3310)&7
	line	677
	
l7568:	
;MCU_B1.c: 677: TXIE=0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7
	line	678
	
l7570:	
;MCU_B1.c: 678: RCIE=1;
	bsf	(1165/8)^080h,(1165)&7
	line	679
	
l7572:	
;MCU_B1.c: 679: PEIE=1;
	bsf	(94/8),(94)&7
	line	680
	
l7574:	
;MCU_B1.c: 680: GIE=1;
	bsf	(95/8),(95)&7
	line	681
	
l1188:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Set
	__end_of_UART_Set:
;; =============== function _UART_Set ends ============

	signat	_UART_Set,88
	global	_I2C_Set
psect	text729,local,class=CODE,delta=2
global __ptext729
__ptext729:

;; *************** function _I2C_Set *****************
;; Defined at:
;;		line 400 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text729
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	400
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
	opt	stack 10
; Regs used in _I2C_Set: [wreg+status,2]
	line	401
	
l7544:	
;MCU_B1.c: 401: I2C=&VarI2C;
	movlw	(_VarI2C)&0ffh
	movlb 0	; select bank0
	movwf	(??_I2C_Set+0)+0
	movf	(??_I2C_Set+0)+0,w
	movwf	(_I2C)
	line	403
;MCU_B1.c: 403: SSPADD = 0x09;
	movlw	(09h)
	movlb 4	; select bank4
	movwf	(530)^0200h	;volatile
	line	404
;MCU_B1.c: 404: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(532)^0200h	;volatile
	line	405
	
l7546:	
;MCU_B1.c: 405: SSPCON2 = 0;
	clrf	(534)^0200h	;volatile
	line	407
	
l7548:	
;MCU_B1.c: 407: SSPCON1=0b101000;
	movlw	(028h)
	movwf	(533)^0200h	;volatile
	line	424
	
l1054:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Set
	__end_of_I2C_Set:
;; =============== function _I2C_Set ends ============

	signat	_I2C_Set,88
	global	_TMR1_Set
psect	text730,local,class=CODE,delta=2
global __ptext730
__ptext730:

;; *************** function _TMR1_Set *****************
;; Defined at:
;;		line 239 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text730
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	239
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
	opt	stack 10
; Regs used in _TMR1_Set: [wreg]
	line	240
	
l7536:	
;MCU_B1.c: 240: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
	movwf	(_Timer1)
	line	241
;MCU_B1.c: 241: T1CON=(0x40 | 0x00 | 0x01);
	movlw	(041h)
	movwf	(24)	;volatile
	line	242
;MCU_B1.c: 242: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	243
;MCU_B1.c: 243: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	244
	
l7538:	
;MCU_B1.c: 244: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	245
	
l7540:	
;MCU_B1.c: 245: PEIE=1;
	bsf	(94/8),(94)&7
	line	246
	
l7542:	
;MCU_B1.c: 246: GIE=1;
	bsf	(95/8),(95)&7
	line	247
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Set
	__end_of_TMR1_Set:
;; =============== function _TMR1_Set ends ============

	signat	_TMR1_Set,88
	global	_IO_Set
psect	text731,local,class=CODE,delta=2
global __ptext731
__ptext731:

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 51 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text731
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	51
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	64
	
l7520:	
;MCU_B1.c: 64: TRISA=0b00001001;;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	65
	
l7522:	
;MCU_B1.c: 65: TRISB=0b00000000;;
	clrf	(141)^080h	;volatile
	line	66
	
l7524:	
;MCU_B1.c: 66: TRISC=0b00011001;;
	movlw	(019h)
	movwf	(142)^080h	;volatile
	line	67
;MCU_B1.c: 67: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	68
;MCU_B1.c: 68: LATB=0b00000000;;
	clrf	(269)^0100h	;volatile
	line	69
;MCU_B1.c: 69: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	70
	
l7526:	
;MCU_B1.c: 70: ANSELA=0b00000001;;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	71
	
l7528:	
;MCU_B1.c: 71: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	72
	
l7530:	
;MCU_B1.c: 72: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	73
	
l7532:	
;MCU_B1.c: 73: PORTA=0b00001001;;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	74
;MCU_B1.c: 74: PORTB=0b00000000;;
	clrf	(13)	;volatile
	line	75
	
l7534:	
;MCU_B1.c: 75: PORTC=0b00011001;;
	movlw	(019h)
	movwf	(14)	;volatile
	line	92
	
l1040:	
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
;;		line 98 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TMR1_ISR
;;		_UART_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	98
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 8
; Regs used in _ISR: [wreg+fsr1l-status,0+pclath+cstack]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	103
	
i1l7576:	
;MCU_B1.c: 99: ;;
;MCU_B1.c: 101: ;;
;MCU_B1.c: 103: TMR1_ISR();
	fcall	_TMR1_ISR
	line	109
;MCU_B1.c: 107: ;;
;MCU_B1.c: 109: UART_ISR();
	fcall	_UART_ISR
	line	110
	
i1l1043:	
	movlb 0	; select bank0
	movf	(??_ISR+0),w
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_UART_ISR
psect	text733,local,class=CODE,delta=2
global __ptext733
__ptext733:

;; *************** function _UART_ISR *****************
;; Defined at:
;;		line 684 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_setSegmentDisplayNumber
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text733
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	684
	global	__size_of_UART_ISR
	__size_of_UART_ISR	equ	__end_of_UART_ISR-_UART_ISR
	
_UART_ISR:	
	opt	stack 8
; Regs used in _UART_ISR: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	686
	
i1l7592:	
;MCU_B1.c: 685: char i;
;MCU_B1.c: 686: if(RCIE && RCIF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l1195
u365_20:
	
i1l7594:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7
	goto	u366_21
	goto	u366_20
u366_21:
	goto	i1l1195
u366_20:
	goto	i1l1192
	line	688
	
i1l7596:	
;MCU_B1.c: 687: {
;MCU_B1.c: 688: while(!RCIDL);
	goto	i1l1192
	
i1l1193:	
	
i1l1192:	
	movlb 3	; select bank3
	btfss	(3326/8)^0180h,(3326)&7
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l1192
u367_20:
	goto	i1l7598
	
i1l1194:	
	line	690
	
i1l7598:	
;MCU_B1.c: 690: UART->RxData[0]=RCREG;
	movf	(409)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_UART_ISR+0)+0
	movf	(_UART),w
	addlw	020h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_ISR+0)+0,w
	movwf	indf1
	line	699
	
i1l7600:	
;MCU_B1.c: 699: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	700
	
i1l7602:	
;MCU_B1.c: 700: setSegmentDisplayNumber(UART->RxData[0]);
	movf	(_UART),w
	addlw	020h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_UART_ISR+0)+0
	clrf	(??_UART_ISR+0)+0+1
	movf	0+(??_UART_ISR+0)+0,w
	movwf	(?i1_setSegmentDisplayNumber)
	movf	1+(??_UART_ISR+0)+0,w
	movwf	(?i1_setSegmentDisplayNumber+1)
	fcall	i1_setSegmentDisplayNumber
	goto	i1l1195
	line	701
	
i1l1191:	
	line	702
	
i1l1195:	
	return
	opt stack 0
GLOBAL	__end_of_UART_ISR
	__end_of_UART_ISR:
;; =============== function _UART_ISR ends ============

	signat	_UART_ISR,88
	global	i1_setSegmentDisplayNumber
psect	text734,local,class=CODE,delta=2
global __ptext734
__ptext734:

;; *************** function i1_setSegmentDisplayNumber *****************
;; Defined at:
;;		line 21 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;  setSegmentDi    2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  setSegmentDi    1    0[BANK0 ] unsigned char 
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
;;      Temps:          3       0       0       0       0       0       0       0
;;      Totals:         5       1       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___awdiv
;;		i1___awmod
;; This function is called by:
;;		_UART_ISR
;; This function uses a non-reentrant model
;;
psect	text734
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	21
	global	__size_ofi1_setSegmentDisplayNumber
	__size_ofi1_setSegmentDisplayNumber	equ	__end_ofi1_setSegmentDisplayNumber-i1_setSegmentDisplayNumber
	
i1_setSegmentDisplayNumber:	
	opt	stack 8
; Regs used in i1_setSegmentDisplayNumber: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	23
	
i1l7894:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u456_21
	goto	u456_20
u456_21:
	goto	i1l3305
u456_20:
	line	25
	
i1l7896:	
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
	goto	u457_21
	goto	u457_20
u457_21:
	goto	i1l7904
u457_20:
	line	28
	
i1l7898:	
;SegmentDisplay_A2.c: 27: {
;SegmentDisplay_A2.c: 28: Segment->Num[0]=(number & 0x000f);
	movf	(i1setSegmentDisplayNumber@number),w
	andlw	0Fh
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	29
	
i1l7900:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(i1setSegmentDisplayNumber@number+1),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0+1
	movf	(i1setSegmentDisplayNumber@number),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	btemp+1
u458_25:
	rlf	(??i1_setSegmentDisplayNumber+0)+1,w
	rrf	(??i1_setSegmentDisplayNumber+0)+1,f
	rrf	(??i1_setSegmentDisplayNumber+0)+0,f
	decfsz	btemp+1,f
	goto	u458_25
	movf	0+(??i1_setSegmentDisplayNumber+0)+0,w
	andlw	0Fh
	movwf	(??i1_setSegmentDisplayNumber+2)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+2)+0,w
	movwf	indf1
	line	30
	
i1l7902:	
;SegmentDisplay_A2.c: 30: Segment->Num[2]=((number>>8)&0x000f);
	movf	(i1setSegmentDisplayNumber@number+1),w
	andlw	0Fh
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	31
;SegmentDisplay_A2.c: 31: Segment->Num[3]=((number>>12)&0x000f);
	movf	(i1setSegmentDisplayNumber@number+1),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0+1
	movf	(i1setSegmentDisplayNumber@number),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlw	0Ch
	movwf	btemp+1
u459_25:
	rlf	(??i1_setSegmentDisplayNumber+0)+1,w
	rrf	(??i1_setSegmentDisplayNumber+0)+1,f
	rrf	(??i1_setSegmentDisplayNumber+0)+0,f
	decfsz	btemp+1,f
	goto	u459_25
	movf	0+(??i1_setSegmentDisplayNumber+0)+0,w
	andlw	0Fh
	movwf	(??i1_setSegmentDisplayNumber+2)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+2)+0,w
	movwf	indf1
	line	32
;SegmentDisplay_A2.c: 32: }
	goto	i1l7932
	line	33
	
i1l3292:	
	
i1l7904:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u460_21
	goto	u460_20
u460_21:
	goto	i1l7932
u460_20:
	line	35
	
i1l7906:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(i1setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u461_25
	movlw	low(02710h)
	subwf	(i1setSegmentDisplayNumber@number),w
u461_25:

	skipc
	goto	u461_21
	goto	u461_20
u461_21:
	goto	i1l7920
u461_20:
	line	37
	
i1l7908:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	movlb 0	; select bank0
	clrf	(i1setSegmentDisplayNumber@i)
	
i1l7910:	
	movlw	(04h)
	subwf	(i1setSegmentDisplayNumber@i),w
	skipc
	goto	u462_21
	goto	u462_20
u462_21:
	goto	i1l7914
u462_20:
	goto	i1l7932
	
i1l7912:	
	goto	i1l7932
	line	38
	
i1l3296:	
	line	39
	
i1l7914:	
;SegmentDisplay_A2.c: 38: {
;SegmentDisplay_A2.c: 39: Segment->Num[i]=16;
	movlw	(010h)
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(i1setSegmentDisplayNumber@i),w
	addlw	011h
	addwf	(_Segment),w
	movwf	(??i1_setSegmentDisplayNumber+1)+0
	movf	0+(??i1_setSegmentDisplayNumber+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	37
	
i1l7916:	
	movlw	(01h)
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	addwf	(i1setSegmentDisplayNumber@i),f
	
i1l7918:	
	movlw	(04h)
	subwf	(i1setSegmentDisplayNumber@i),w
	skipc
	goto	u463_21
	goto	u463_20
u463_21:
	goto	i1l7914
u463_20:
	goto	i1l7932
	
i1l3297:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	i1l7932
	line	42
	
i1l3295:	
	line	44
	
i1l7920:	
;SegmentDisplay_A2.c: 42: else
;SegmentDisplay_A2.c: 43: {
;SegmentDisplay_A2.c: 44: Segment->Num[3]=(number/1000);
	movlw	low(03E8h)
	movwf	(?i1___awdiv)
	movlw	high(03E8h)
	movwf	((?i1___awdiv))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	1+(?i1___awdiv)+02h
	addwf	1+(?i1___awdiv)+02h
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	0+(?i1___awdiv)+02h
	addwf	0+(?i1___awdiv)+02h

	fcall	i1___awdiv
	movf	(0+(?i1___awdiv)),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	45
	
i1l7922:	
;SegmentDisplay_A2.c: 45: number%=1000;
	movlw	low(03E8h)
	movwf	(?i1___awmod)
	movlw	high(03E8h)
	movwf	((?i1___awmod))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	1+(?i1___awmod)+02h
	addwf	1+(?i1___awmod)+02h
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	0+(?i1___awmod)+02h
	addwf	0+(?i1___awmod)+02h

	fcall	i1___awmod
	movf	(1+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number+1)
	addwf	(i1setSegmentDisplayNumber@number+1)
	movf	(0+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number)
	addwf	(i1setSegmentDisplayNumber@number)

	line	46
	
i1l7924:	
;SegmentDisplay_A2.c: 46: Segment->Num[2]=(number/100);
	movlw	low(064h)
	movwf	(?i1___awdiv)
	movlw	high(064h)
	movwf	((?i1___awdiv))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	1+(?i1___awdiv)+02h
	addwf	1+(?i1___awdiv)+02h
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	0+(?i1___awdiv)+02h
	addwf	0+(?i1___awdiv)+02h

	fcall	i1___awdiv
	movf	(0+(?i1___awdiv)),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	47
;SegmentDisplay_A2.c: 47: number%=100;
	movlw	low(064h)
	movwf	(?i1___awmod)
	movlw	high(064h)
	movwf	((?i1___awmod))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	1+(?i1___awmod)+02h
	addwf	1+(?i1___awmod)+02h
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	0+(?i1___awmod)+02h
	addwf	0+(?i1___awmod)+02h

	fcall	i1___awmod
	movf	(1+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number+1)
	addwf	(i1setSegmentDisplayNumber@number+1)
	movf	(0+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number)
	addwf	(i1setSegmentDisplayNumber@number)

	line	48
	
i1l7926:	
;SegmentDisplay_A2.c: 48: Segment->Num[1]=(number/10);
	movlw	low(0Ah)
	movwf	(?i1___awdiv)
	movlw	high(0Ah)
	movwf	((?i1___awdiv))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	1+(?i1___awdiv)+02h
	addwf	1+(?i1___awdiv)+02h
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	0+(?i1___awdiv)+02h
	addwf	0+(?i1___awdiv)+02h

	fcall	i1___awdiv
	movf	(0+(?i1___awdiv)),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	49
	
i1l7928:	
;SegmentDisplay_A2.c: 49: number%=10;
	movlw	low(0Ah)
	movwf	(?i1___awmod)
	movlw	high(0Ah)
	movwf	((?i1___awmod))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	1+(?i1___awmod)+02h
	addwf	1+(?i1___awmod)+02h
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	0+(?i1___awmod)+02h
	addwf	0+(?i1___awmod)+02h

	fcall	i1___awmod
	movf	(1+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number+1)
	addwf	(i1setSegmentDisplayNumber@number+1)
	movf	(0+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number)
	addwf	(i1setSegmentDisplayNumber@number)

	line	50
	
i1l7930:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(i1setSegmentDisplayNumber@number),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	i1l7932
	line	51
	
i1l3298:	
	goto	i1l7932
	line	52
	
i1l3294:	
	goto	i1l7932
	line	53
	
i1l3293:	
	
i1l7932:	
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
	goto	u464_21
	goto	u464_20
u464_21:
	goto	i1l7936
u464_20:
	line	55
	
i1l7934:	
;SegmentDisplay_A2.c: 54: {
;SegmentDisplay_A2.c: 55: Segment->DisplayCount=3;
	movlw	(03h)
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	56
;SegmentDisplay_A2.c: 56: }
	goto	i1l3305
	line	57
	
i1l3299:	
	
i1l7936:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u465_21
	goto	u465_20
u465_21:
	goto	i1l7940
u465_20:
	line	59
	
i1l7938:	
;SegmentDisplay_A2.c: 58: {
;SegmentDisplay_A2.c: 59: Segment->DisplayCount=2;
	movlw	(02h)
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	60
;SegmentDisplay_A2.c: 60: }
	goto	i1l3305
	line	61
	
i1l3301:	
	
i1l7940:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u466_21
	goto	u466_20
u466_21:
	goto	i1l7944
u466_20:
	line	63
	
i1l7942:	
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
	goto	i1l3305
	line	65
	
i1l3303:	
	line	67
	
i1l7944:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	i1l3305
	line	68
	
i1l3304:	
	goto	i1l3305
	
i1l3302:	
	goto	i1l3305
	
i1l3300:	
	goto	i1l3305
	line	69
	
i1l3291:	
	line	70
	
i1l3305:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setSegmentDisplayNumber
	__end_ofi1_setSegmentDisplayNumber:
;; =============== function i1_setSegmentDisplayNumber ends ============

	signat	i1_setSegmentDisplayNumber,88
	global	i1___awmod
psect	text735,local,class=CODE,delta=2
global __ptext735
__ptext735:

;; *************** function i1___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  __awmod         2    0[COMMON] int 
;;  __awmod         2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  __awmod         1    6[COMMON] unsigned char 
;;  __awmod         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text735
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_ofi1___awmod
	__size_ofi1___awmod	equ	__end_ofi1___awmod-i1___awmod
	
i1___awmod:	
	opt	stack 8
; Regs used in i1___awmod: [wreg+status,2+status,0]
	line	8
	
i1l7986:	
	clrf	(i1___awmod@sign)
	line	9
	btfss	(i1___awmod@dividend+1),7
	goto	u477_21
	goto	u477_20
u477_21:
	goto	i1l7990
u477_20:
	line	10
	
i1l7988:	
	comf	(i1___awmod@dividend),f
	comf	(i1___awmod@dividend+1),f
	incf	(i1___awmod@dividend),f
	skipnz
	incf	(i1___awmod@dividend+1),f
	line	11
	clrf	(i1___awmod@sign)
	bsf	status,0
	rlf	(i1___awmod@sign),f
	goto	i1l7990
	line	12
	
i1l5586:	
	line	13
	
i1l7990:	
	btfss	(i1___awmod@divisor+1),7
	goto	u478_21
	goto	u478_20
u478_21:
	goto	i1l7994
u478_20:
	line	14
	
i1l7992:	
	comf	(i1___awmod@divisor),f
	comf	(i1___awmod@divisor+1),f
	incf	(i1___awmod@divisor),f
	skipnz
	incf	(i1___awmod@divisor+1),f
	goto	i1l7994
	
i1l5587:	
	line	15
	
i1l7994:	
	movf	(i1___awmod@divisor+1),w
	iorwf	(i1___awmod@divisor),w
	skipnz
	goto	u479_21
	goto	u479_20
u479_21:
	goto	i1l8012
u479_20:
	line	16
	
i1l7996:	
	clrf	(i1___awmod@counter)
	bsf	status,0
	rlf	(i1___awmod@counter),f
	line	17
	goto	i1l8002
	
i1l5590:	
	line	18
	
i1l7998:	
	movlw	01h
	
u480_25:
	lslf	(i1___awmod@divisor),f
	rlf	(i1___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u480_25
	line	19
	
i1l8000:	
	movlw	(01h)
	movwf	(??i1___awmod+0)+0
	movf	(??i1___awmod+0)+0,w
	addwf	(i1___awmod@counter),f
	goto	i1l8002
	line	20
	
i1l5589:	
	line	17
	
i1l8002:	
	btfss	(i1___awmod@divisor+1),(15)&7
	goto	u481_21
	goto	u481_20
u481_21:
	goto	i1l7998
u481_20:
	goto	i1l8004
	
i1l5591:	
	goto	i1l8004
	line	21
	
i1l5592:	
	line	22
	
i1l8004:	
	movf	(i1___awmod@divisor+1),w
	subwf	(i1___awmod@dividend+1),w
	skipz
	goto	u482_25
	movf	(i1___awmod@divisor),w
	subwf	(i1___awmod@dividend),w
u482_25:
	skipc
	goto	u482_21
	goto	u482_20
u482_21:
	goto	i1l8008
u482_20:
	line	23
	
i1l8006:	
	movf	(i1___awmod@divisor),w
	subwf	(i1___awmod@dividend),f
	movf	(i1___awmod@divisor+1),w
	subwfb	(i1___awmod@dividend+1),f
	goto	i1l8008
	
i1l5593:	
	line	24
	
i1l8008:	
	movlw	01h
	
u483_25:
	lsrf	(i1___awmod@divisor+1),f
	rrf	(i1___awmod@divisor),f
	decfsz	wreg,f
	goto	u483_25
	line	25
	
i1l8010:	
	movlw	low(01h)
	subwf	(i1___awmod@counter),f
	btfss	status,2
	goto	u484_21
	goto	u484_20
u484_21:
	goto	i1l8004
u484_20:
	goto	i1l8012
	
i1l5594:	
	goto	i1l8012
	line	26
	
i1l5588:	
	line	27
	
i1l8012:	
	movf	(i1___awmod@sign),w
	skipz
	goto	u485_20
	goto	i1l8016
u485_20:
	line	28
	
i1l8014:	
	comf	(i1___awmod@dividend),f
	comf	(i1___awmod@dividend+1),f
	incf	(i1___awmod@dividend),f
	skipnz
	incf	(i1___awmod@dividend+1),f
	goto	i1l8016
	
i1l5595:	
	line	29
	
i1l8016:	
	movf	(i1___awmod@dividend+1),w
	clrf	(?i1___awmod+1)
	addwf	(?i1___awmod+1)
	movf	(i1___awmod@dividend),w
	clrf	(?i1___awmod)
	addwf	(?i1___awmod)

	goto	i1l5596
	
i1l8018:	
	line	30
	
i1l5596:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awmod
	__end_ofi1___awmod:
;; =============== function i1___awmod ends ============

	signat	i1___awmod,90
	global	i1___awdiv
psect	text736,local,class=CODE,delta=2
global __ptext736
__ptext736:

;; *************** function i1___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  __awdiv         2    0[COMMON] int 
;;  __awdiv         2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  __awdiv         2    7[COMMON] int 
;;  __awdiv         1    6[COMMON] unsigned char 
;;  __awdiv         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text736
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_ofi1___awdiv
	__size_ofi1___awdiv	equ	__end_ofi1___awdiv-i1___awdiv
	
i1___awdiv:	
	opt	stack 8
; Regs used in i1___awdiv: [wreg+status,2+status,0]
	line	9
	
i1l7946:	
	clrf	(i1___awdiv@sign)
	line	10
	btfss	(i1___awdiv@divisor+1),7
	goto	u467_21
	goto	u467_20
u467_21:
	goto	i1l7950
u467_20:
	line	11
	
i1l7948:	
	comf	(i1___awdiv@divisor),f
	comf	(i1___awdiv@divisor+1),f
	incf	(i1___awdiv@divisor),f
	skipnz
	incf	(i1___awdiv@divisor+1),f
	line	12
	clrf	(i1___awdiv@sign)
	bsf	status,0
	rlf	(i1___awdiv@sign),f
	goto	i1l7950
	line	13
	
i1l5518:	
	line	14
	
i1l7950:	
	btfss	(i1___awdiv@dividend+1),7
	goto	u468_21
	goto	u468_20
u468_21:
	goto	i1l7956
u468_20:
	line	15
	
i1l7952:	
	comf	(i1___awdiv@dividend),f
	comf	(i1___awdiv@dividend+1),f
	incf	(i1___awdiv@dividend),f
	skipnz
	incf	(i1___awdiv@dividend+1),f
	line	16
	
i1l7954:	
	movlw	(01h)
	movwf	(??i1___awdiv+0)+0
	movf	(??i1___awdiv+0)+0,w
	xorwf	(i1___awdiv@sign),f
	goto	i1l7956
	line	17
	
i1l5519:	
	line	18
	
i1l7956:	
	clrf	(i1___awdiv@quotient)
	clrf	(i1___awdiv@quotient+1)
	line	19
	
i1l7958:	
	movf	(i1___awdiv@divisor+1),w
	iorwf	(i1___awdiv@divisor),w
	skipnz
	goto	u469_21
	goto	u469_20
u469_21:
	goto	i1l7978
u469_20:
	line	20
	
i1l7960:	
	clrf	(i1___awdiv@counter)
	bsf	status,0
	rlf	(i1___awdiv@counter),f
	line	21
	goto	i1l7966
	
i1l5522:	
	line	22
	
i1l7962:	
	movlw	01h
	
u470_25:
	lslf	(i1___awdiv@divisor),f
	rlf	(i1___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u470_25
	line	23
	
i1l7964:	
	movlw	(01h)
	movwf	(??i1___awdiv+0)+0
	movf	(??i1___awdiv+0)+0,w
	addwf	(i1___awdiv@counter),f
	goto	i1l7966
	line	24
	
i1l5521:	
	line	21
	
i1l7966:	
	btfss	(i1___awdiv@divisor+1),(15)&7
	goto	u471_21
	goto	u471_20
u471_21:
	goto	i1l7962
u471_20:
	goto	i1l7968
	
i1l5523:	
	goto	i1l7968
	line	25
	
i1l5524:	
	line	26
	
i1l7968:	
	movlw	01h
	
u472_25:
	lslf	(i1___awdiv@quotient),f
	rlf	(i1___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u472_25
	line	27
	movf	(i1___awdiv@divisor+1),w
	subwf	(i1___awdiv@dividend+1),w
	skipz
	goto	u473_25
	movf	(i1___awdiv@divisor),w
	subwf	(i1___awdiv@dividend),w
u473_25:
	skipc
	goto	u473_21
	goto	u473_20
u473_21:
	goto	i1l7974
u473_20:
	line	28
	
i1l7970:	
	movf	(i1___awdiv@divisor),w
	subwf	(i1___awdiv@dividend),f
	movf	(i1___awdiv@divisor+1),w
	subwfb	(i1___awdiv@dividend+1),f
	line	29
	
i1l7972:	
	bsf	(i1___awdiv@quotient)+(0/8),(0)&7
	goto	i1l7974
	line	30
	
i1l5525:	
	line	31
	
i1l7974:	
	movlw	01h
	
u474_25:
	lsrf	(i1___awdiv@divisor+1),f
	rrf	(i1___awdiv@divisor),f
	decfsz	wreg,f
	goto	u474_25
	line	32
	
i1l7976:	
	movlw	low(01h)
	subwf	(i1___awdiv@counter),f
	btfss	status,2
	goto	u475_21
	goto	u475_20
u475_21:
	goto	i1l7968
u475_20:
	goto	i1l7978
	
i1l5526:	
	goto	i1l7978
	line	33
	
i1l5520:	
	line	34
	
i1l7978:	
	movf	(i1___awdiv@sign),w
	skipz
	goto	u476_20
	goto	i1l7982
u476_20:
	line	35
	
i1l7980:	
	comf	(i1___awdiv@quotient),f
	comf	(i1___awdiv@quotient+1),f
	incf	(i1___awdiv@quotient),f
	skipnz
	incf	(i1___awdiv@quotient+1),f
	goto	i1l7982
	
i1l5527:	
	line	36
	
i1l7982:	
	movf	(i1___awdiv@quotient+1),w
	clrf	(?i1___awdiv+1)
	addwf	(?i1___awdiv+1)
	movf	(i1___awdiv@quotient),w
	clrf	(?i1___awdiv)
	addwf	(?i1___awdiv)

	goto	i1l5528
	
i1l7984:	
	line	37
	
i1l5528:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awdiv
	__end_ofi1___awdiv:
;; =============== function i1___awdiv ends ============

	signat	i1___awdiv,90
	global	_TMR1_ISR
psect	text737,local,class=CODE,delta=2
global __ptext737
__ptext737:

;; *************** function _TMR1_ISR *****************
;; Defined at:
;;		line 250 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text737
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	250
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
	opt	stack 10
; Regs used in _TMR1_ISR: [wreg+fsr1l-status,0]
	line	251
	
i1l7578:	
;MCU_B1.c: 251: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7
	goto	u362_21
	goto	u362_20
u362_21:
	goto	i1l1051
u362_20:
	
i1l7580:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l1051
u363_20:
	line	253
	
i1l7582:	
;MCU_B1.c: 252: {
;MCU_B1.c: 253: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	254
;MCU_B1.c: 254: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	255
	
i1l7584:	
;MCU_B1.c: 255: TMR1IF=0;
	bcf	(136/8),(136)&7
	line	256
	
i1l7586:	
;MCU_B1.c: 256: Timer1->Count++;
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	257
	
i1l7588:	
;MCU_B1.c: 257: if(Timer1->Count == 20)
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u364_25
	moviw	[1]fsr1
	xorlw	high(014h)
u364_25:
	skipz
	goto	u364_21
	goto	u364_20
u364_21:
	goto	i1l1051
u364_20:
	line	259
	
i1l7590:	
;MCU_B1.c: 258: {
;MCU_B1.c: 259: Timer1->Count=0;
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	260
;MCU_B1.c: 260: TMain->T1_Timerout=1;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	goto	i1l1051
	line	261
	
i1l1050:	
	goto	i1l1051
	line	262
	
i1l1049:	
	line	270
	
i1l1051:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
;; =============== function _TMR1_ISR ends ============

	signat	_TMR1_ISR,88
psect	text738,local,class=CODE,delta=2
global __ptext738
__ptext738:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
