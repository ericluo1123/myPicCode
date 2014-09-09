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
# 7 "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	dw 0xFFFC & 0xFFE7 ;#
# 8 "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	dw 0xFFFF & 0xFFFE ;#
	FNCALL	_main,_MainT_Initial
	FNCALL	_main,_Mcu_Initial
	FNCALL	_main,_SegmentDisplay_Initial
	FNCALL	_main,_MainT
	FNCALL	_main,_I2C_Main
	FNCALL	_main,_UART_Main
	FNCALL	_main,_SegmentDisplay_Main
	FNCALL	_UART_Main,_UART_Receive
	FNCALL	_UART_Main,_UART_Transmit
	FNCALL	_UART_Transmit,_printf
	FNCALL	_MainT,_setSegmentDisplayNumber
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_setSegmentDisplayNumber,___awdiv
	FNCALL	_setSegmentDisplayNumber,___awmod
	FNCALL	_I2C_Main,_I2C_Master_Reception
	FNCALL	_I2C_Main,_I2C_Master_Transmission
	FNCALL	_Mcu_Initial,_IO_Set
	FNCALL	_Mcu_Initial,_TMR1_Set
	FNCALL	_Mcu_Initial,_I2C_Set
	FNCALL	_Mcu_Initial,_UART_Set
	FNROOT	_main
	FNCALL	_ISR,_TMR1_ISR
	FNCALL	_ISR,_UART_ISR
	FNCALL	_ISR,_I2C_ISR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarSegment
	global	_VarProduct
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"I:\Program\PIC\Header_File\SegmentDisplay_A2.h"
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
	file	"I:\Program\PIC\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
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
	global	_hexpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
	global    __stringtab
__stringtab:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	358
_hexpowers:
	retlw	01h
	retlw	0

	retlw	010h
	retlw	0

	retlw	0
	retlw	01h

	retlw	0
	retlw	010h

	global	_hexpowers
	global	_I2C
	global	_Segment
	global	_Timer1
	global	_UART
	global	_VarTMain
	global	_VarTimer1
	global	_VarUart
	global	_VarI2C
	global	_TMain
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_TMain:
       ds      1

	global	_Product
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_Product:
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
	global	_TRMT
_TRMT	set	3313
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
	
STR_5:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	99	;'c'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_1:	
	retlw	13
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	10
	retlw	0
psect	strings
	
STR_3:	
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	9
	retlw	0
psect	strings
	
STR_4:	
	retlw	10
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	13
	retlw	0
psect	strings
	file	"myDevelopment-AH.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Timer1:
       ds      1

_UART:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_I2C:
       ds      1

_Segment:
       ds      1

_VarTMain:
       ds      15

_VarTimer1:
       ds      3

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"I:\Program\PIC\Header_File\SegmentDisplay_A2.h"
	line	69
_VarSegment:
       ds      26

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"I:\Program\PIC\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
	line	245
_VarProduct:
       ds      32

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_VarUart:
       ds      68

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
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
	clrf	((__pbssCOMMON)+1)&07Fh
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
	movlw	044h
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
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
	global	?_MainT_Initial
?_MainT_Initial:	; 0 bytes @ 0x0
	global	?_Mcu_Initial
?_Mcu_Initial:	; 0 bytes @ 0x0
	global	?_SegmentDisplay_Initial
?_SegmentDisplay_Initial:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_I2C_Main
?_I2C_Main:	; 0 bytes @ 0x0
	global	?_UART_Main
?_UART_Main:	; 0 bytes @ 0x0
	global	?_SegmentDisplay_Main
?_SegmentDisplay_Main:	; 0 bytes @ 0x0
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
	global	??_UART_ISR
??_UART_ISR:	; 0 bytes @ 0x0
	global	?_I2C_ISR
?_I2C_ISR:	; 0 bytes @ 0x0
	global	??_I2C_ISR
??_I2C_ISR:	; 0 bytes @ 0x0
	global	?_I2C_Master_Reception
?_I2C_Master_Reception:	; 0 bytes @ 0x0
	global	?_I2C_Master_Transmission
?_I2C_Master_Transmission:	; 0 bytes @ 0x0
	global	?_UART_Receive
?_UART_Receive:	; 0 bytes @ 0x0
	global	?_UART_Transmit
?_UART_Transmit:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	ds	2
	global	??_ISR
??_ISR:	; 0 bytes @ 0x2
	ds	1
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x3
	global	??_SegmentDisplay_Initial
??_SegmentDisplay_Initial:	; 0 bytes @ 0x3
	global	??_SegmentDisplay_Main
??_SegmentDisplay_Main:	; 0 bytes @ 0x3
	global	??_IO_Set
??_IO_Set:	; 0 bytes @ 0x3
	global	??_TMR1_Set
??_TMR1_Set:	; 0 bytes @ 0x3
	global	??_I2C_Set
??_I2C_Set:	; 0 bytes @ 0x3
	global	??_UART_Set
??_UART_Set:	; 0 bytes @ 0x3
	global	??_I2C_Master_Reception
??_I2C_Master_Reception:	; 0 bytes @ 0x3
	global	??_I2C_Master_Transmission
??_I2C_Master_Transmission:	; 0 bytes @ 0x3
	global	??_UART_Receive
??_UART_Receive:	; 0 bytes @ 0x3
	global	??_putch
??_putch:	; 0 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x3
	global	?___awmod
?___awmod:	; 2 bytes @ 0x3
	global	putch@byte
putch@byte:	; 1 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x3
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x3
	ds	1
	global	??_Mcu_Initial
??_Mcu_Initial:	; 0 bytes @ 0x4
	global	I2C_Master_Transmission@i
I2C_Master_Transmission@i:	; 1 bytes @ 0x4
	ds	1
	global	I2C_Master_Reception@i
I2C_Master_Reception@i:	; 1 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x5
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	I2C_Main@i
I2C_Main@i:	; 1 bytes @ 0x6
	global	UART_Receive@i
UART_Receive@i:	; 1 bytes @ 0x6
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x7
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x7
	global	??___awmod
??___awmod:	; 0 bytes @ 0x7
	ds	1
	global	??_UART_Main
??_UART_Main:	; 0 bytes @ 0x8
	global	??_main
??_main:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_I2C_Main
??_I2C_Main:	; 0 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x3
	ds	1
	global	?_setSegmentDisplayNumber
?_setSegmentDisplayNumber:	; 0 bytes @ 0x4
	global	setSegmentDisplayNumber@number
setSegmentDisplayNumber@number:	; 2 bytes @ 0x4
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0x5
	ds	1
	global	??_setSegmentDisplayNumber
??_setSegmentDisplayNumber:	; 0 bytes @ 0x6
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x7
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x8
	ds	1
	global	setSegmentDisplayNumber@i
setSegmentDisplayNumber@i:	; 1 bytes @ 0x9
	global	printf@_val
printf@_val:	; 4 bytes @ 0x9
	ds	1
	global	??_MainT
??_MainT:	; 0 bytes @ 0xA
	ds	3
	global	printf@f
printf@f:	; 1 bytes @ 0xD
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0xE
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0xF
	ds	1
	global	??_UART_Transmit
??_UART_Transmit:	; 0 bytes @ 0x10
	ds	3
	global	UART_Transmit@i
UART_Transmit@i:	; 1 bytes @ 0x13
	ds	1
;;Data sizes: Strings 42, constant 8, data 58, bss 157, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      11
;; BANK0           80     20      67
;; BANK1           80      0      32
;; BANK2           80      0      68
;; BANK3           80      0      67
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           16      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 14
;;		 -> STR_4(CODE[3]), STR_3(CODE[6]), STR_2(CODE[2]), STR_1(CODE[14]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S4314$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; UART	PTR struct UART size(1) Largest target is 68
;;		 -> NULL(NULL[0]), VarUart(BANK2[68]), 
;;
;; Timer1	PTR struct Timer1 size(1) Largest target is 3
;;		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
;;
;; Segment	PTR struct Segment size(1) Largest target is 26
;;		 -> NULL(NULL[0]), VarSegment(BANK0[26]), 
;;
;; I2C	PTR struct I2C size(1) Largest target is 67
;;		 -> NULL(NULL[0]), VarI2C(BANK3[67]), 
;;
;; Product	PTR struct Product size(1) Largest target is 32
;;		 -> NULL(NULL[0]), VarProduct(BANK1[32]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 15
;;		 -> NULL(NULL[0]), VarTMain(BANK0[15]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _printf->___lwdiv
;;   _setSegmentDisplayNumber->___awdiv
;;   _setSegmentDisplayNumber->___awmod
;;   _I2C_Main->_I2C_Master_Reception
;;   _Mcu_Initial->_TMR1_Set
;;   _Mcu_Initial->_I2C_Set
;;   _Mcu_Initial->_UART_Set
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_UART_ISR
;;
;; Critical Paths under _main in BANK0
;;
;;   _UART_Main->_UART_Transmit
;;   _UART_Transmit->_printf
;;   _MainT->_setSegmentDisplayNumber
;;   _printf->___lwdiv
;;   _setSegmentDisplayNumber->___awdiv
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
;; (0) _main                                                 0     0      0    2540
;;                      _MainT_Initial
;;                        _Mcu_Initial
;;             _SegmentDisplay_Initial
;;                              _MainT
;;                           _I2C_Main
;;                          _UART_Main
;;                _SegmentDisplay_Main
;; ---------------------------------------------------------------------------------
;; (1) _UART_Main                                            0     0      0     916
;;                       _UART_Receive
;;                      _UART_Transmit
;; ---------------------------------------------------------------------------------
;; (2) _UART_Transmit                                        4     4      0     826
;;                                             16 BANK0      4     4      0
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                4     4      0    1358
;;                                             10 BANK0      3     3      0
;;            _setSegmentDisplayNumber
;; ---------------------------------------------------------------------------------
;; (3) _printf                                              13    11      2     727
;;                                              3 BANK0     13    11      2
;;                              _putch
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (2) _setSegmentDisplayNumber                              6     4      2    1358
;;                                              4 BANK0      6     4      2
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Main                                             4     4      0     266
;;                                              6 COMMON     1     1      0
;;                                              0 BANK0      3     3      0
;;               _I2C_Master_Reception
;;            _I2C_Master_Transmission
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initial                                          0     0      0       0
;;                             _IO_Set
;;                           _TMR1_Set
;;                            _I2C_Set
;;                           _UART_Set
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     433
;;                                              3 COMMON     5     1      4
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     445
;;                                              3 COMMON     5     1      4
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (4) ___lwdiv                                              8     4      4     241
;;                                              3 COMMON     5     1      4
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (4) _putch                                                1     1      0      22
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _UART_Receive                                         4     4      0      90
;;                                              3 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Master_Transmission                              2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Master_Reception                                 3     3      0      68
;;                                              3 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _UART_Set                                             1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Set                                              1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _TMR1_Set                                             1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _IO_Set                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _SegmentDisplay_Main                                  2     2      0       0
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _SegmentDisplay_Initial                               1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  1     1      0       0
;;                                              2 COMMON     1     1      0
;;                           _TMR1_ISR
;;                           _UART_ISR
;;                            _I2C_ISR
;; ---------------------------------------------------------------------------------
;; (6) _I2C_ISR                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (6) _UART_ISR                                             3     3      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (6) _TMR1_ISR                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initial
;;   _Mcu_Initial
;;     _IO_Set
;;     _TMR1_Set
;;     _I2C_Set
;;     _UART_Set
;;   _SegmentDisplay_Initial
;;   _MainT
;;     _setSegmentDisplayNumber
;;       ___awdiv
;;       ___awmod
;;   _I2C_Main
;;     _I2C_Master_Reception
;;     _I2C_Master_Transmission
;;   _UART_Main
;;     _UART_Receive
;;     _UART_Transmit
;;       _printf
;;         _putch
;;         ___lwdiv
;;   _SegmentDisplay_Main
;;
;; _ISR (ROOT)
;;   _TMR1_ISR
;;   _UART_ISR
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
;;COMMON               E      8       B       2       78.6%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       8       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0      F5       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50     14      43       6       83.8%
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
;;BANK2               50      0      44      10       85.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BITBANK3            50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BANK3               50      0      43      12       83.8%
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
;;DATA                 0      0      FD      19        0.0%
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
;;		line 7 in file "I:\Program\PIC\Source_File\myMain.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_MainT_Initial
;;		_Mcu_Initial
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
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 10
; Regs used in _main: [allreg]
	line	8
	
l5947:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l5949:	
;myMain.c: 9: Mcu_Initial();
	fcall	_Mcu_Initial
	line	10
	
l5951:	
;myMain.c: 10: SegmentDisplay_Initial();
	fcall	_SegmentDisplay_Initial
	line	12
	
l5953:	
;myMain.c: 11: ;;
;myMain.c: 12: _nop();
	nop
	goto	l5955
	line	13
;myMain.c: 13: while(1)
	
l1031:	
	line	17
	
l5955:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u4791
	goto	u4790
u4791:
	goto	l5955
u4790:
	line	19
	
l5957:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l5959:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l5961:	
;myMain.c: 21: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u4801
	goto	u4800
u4801:
	goto	l5955
u4800:
	line	24
	
l5963:	
;myMain.c: 22: {
;myMain.c: 23: ;;
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	line	25
	
l5965:	
;myMain.c: 25: UART_Main();
	fcall	_UART_Main
	line	26
	
l5967:	
;myMain.c: 26: SegmentDisplay_Main();
	fcall	_SegmentDisplay_Main
	goto	l5955
	line	27
	
l1033:	
	goto	l5955
	line	28
	
l1032:	
	goto	l5955
	line	29
	
l1034:	
	line	13
	goto	l5955
	
l1035:	
	line	30
	
l1036:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_UART_Main
psect	text912,local,class=CODE,delta=2
global __ptext912
__ptext912:

;; *************** function _UART_Main *****************
;; Defined at:
;;		line 525 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_UART_Receive
;;		_UART_Transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text912
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	525
	global	__size_of_UART_Main
	__size_of_UART_Main	equ	__end_of_UART_Main-_UART_Main
	
_UART_Main:	
	opt	stack 10
; Regs used in _UART_Main: [wreg-status,0+pclath+cstack]
	line	526
	
l5933:	
;MCU_16f1516_B1.c: 526: if(UART->RxGO)
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u4771
	goto	u4770
u4771:
	goto	l5941
u4770:
	line	528
	
l5935:	
;MCU_16f1516_B1.c: 527: {
;MCU_16f1516_B1.c: 528: UART->RxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	529
	
l5937:	
;MCU_16f1516_B1.c: 529: UART_Receive();
	fcall	_UART_Receive
	line	530
	
l5939:	
;MCU_16f1516_B1.c: 530: RCIE=1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	531
;MCU_16f1516_B1.c: 531: }
	goto	l3286
	line	532
	
l3283:	
	line	534
	
l5941:	
;MCU_16f1516_B1.c: 532: else
;MCU_16f1516_B1.c: 533: {
;MCU_16f1516_B1.c: 534: if(UART->TxGO)
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u4781
	goto	u4780
u4781:
	goto	l3286
u4780:
	line	536
	
l5943:	
;MCU_16f1516_B1.c: 535: {
;MCU_16f1516_B1.c: 536: UART->TxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	537
	
l5945:	
;MCU_16f1516_B1.c: 537: UART_Transmit();
	fcall	_UART_Transmit
	goto	l3286
	line	538
	
l3285:	
	goto	l3286
	line	539
	
l3284:	
	line	540
	
l3286:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Main
	__end_of_UART_Main:
;; =============== function _UART_Main ends ============

	signat	_UART_Main,88
	global	_UART_Transmit
psect	text913,local,class=CODE,delta=2
global __ptext913
__ptext913:

;; *************** function _UART_Transmit *****************
;; Defined at:
;;		line 542 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   19[BANK0 ] unsigned char 
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
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_printf
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text913
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	542
	global	__size_of_UART_Transmit
	__size_of_UART_Transmit	equ	__end_of_UART_Transmit-_UART_Transmit
	
_UART_Transmit:	
	opt	stack 10
; Regs used in _UART_Transmit: [wreg-status,0+pclath+cstack]
	line	544
	
l5917:	
;MCU_16f1516_B1.c: 543: char i;
;MCU_16f1516_B1.c: 544: printf("\rthis number\n");
	movlw	(STR_1|8000h)&0ffh
	fcall	_printf
	line	545
;MCU_16f1516_B1.c: 545: printf("\r");
	movlw	(STR_2|8000h)&0ffh
	fcall	_printf
	line	546
	
l5919:	
;MCU_16f1516_B1.c: 546: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(UART_Transmit@i)
	
l5921:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l3291
u4740:
	goto	l5931
	
l5923:	
	goto	l5931
	line	547
	
l3289:	
	line	548
;MCU_16f1516_B1.c: 547: {
;MCU_16f1516_B1.c: 548: while(!TRMT);
	goto	l3291
	
l3292:	
	
l3291:	
	movlb 3	; select bank3
	btfss	(3313/8)^0180h,(3313)&7
	goto	u4751
	goto	u4750
u4751:
	goto	l3291
u4750:
	goto	l5925
	
l3293:	
	line	549
	
l5925:	
;MCU_16f1516_B1.c: 549: printf("0x%x\t",UART->TxData[i]);
	movlb 0	; select bank0
	movf	(UART_Transmit@i),w
	addwf	(_UART),w
	movwf	(??_UART_Transmit+0)+0
	movf	0+(??_UART_Transmit+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_UART_Transmit+1)+0
	clrf	(??_UART_Transmit+1)+0+1
	movf	0+(??_UART_Transmit+1)+0,w
	movwf	(?_printf)
	movf	1+(??_UART_Transmit+1)+0,w
	movwf	(?_printf+1)
	movlw	(STR_3|8000h)&0ffh
	fcall	_printf
	line	546
	
l5927:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_UART_Transmit+0)+0
	movf	(??_UART_Transmit+0)+0,w
	addwf	(UART_Transmit@i),f
	
l5929:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u4761
	goto	u4760
u4761:
	goto	l3291
u4760:
	goto	l5931
	
l3290:	
	line	553
	
l5931:	
;MCU_16f1516_B1.c: 552: }
;MCU_16f1516_B1.c: 553: printf("\n\n");
	movlw	(STR_4|8000h)&0ffh
	fcall	_printf
	line	554
	
l3294:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Transmit
	__end_of_UART_Transmit:
;; =============== function _UART_Transmit ends ============

	signat	_UART_Transmit,88
	global	_MainT
psect	text914,local,class=CODE,delta=2
global __ptext914
__ptext914:

;; *************** function _MainT *****************
;; Defined at:
;;		line 42 in file "I:\Program\PIC\Source_File\myMain.c"
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
psect	text914
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	42
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 11
; Regs used in _MainT: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	45
	
l5883:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u4681
	goto	u4680
u4681:
	goto	l5891
u4680:
	line	47
	
l5885:	
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
	
l5887:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u4695
	moviw	[1]fsr1
	xorlw	high(05DCh)
u4695:
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l1050
u4690:
	line	50
	
l5889:	
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
	goto	l1050
	line	56
	
l1043:	
	line	57
;myMain.c: 56: }
;myMain.c: 57: }
	goto	l1050
	line	58
	
l1042:	
	line	60
	
l5891:	
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
	
l5893:	
;myMain.c: 61: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u4705
	moviw	[1]fsr1
	xorlw	high(03E8h)
u4705:
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l5911
u4700:
	line	63
	
l5895:	
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
	
l5897:	
;myMain.c: 64: RA2=~RA2;
	movlw	1<<((98)&7)
	xorwf	((98)/8),f
	goto	l5901
	line	78
	
l5899:	
	goto	l5901
	line	82
;myMain.c: 79: {
	
l1046:	
	line	84
	
l5901:	
;myMain.c: 82: }
;myMain.c: 84: if(TMain->Test)
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u4711
	goto	u4710
u4711:
	goto	l5911
u4710:
	line	86
	
l5903:	
;myMain.c: 85: {
;myMain.c: 86: setSegmentDisplayNumber(I2C->BufferReader[I2C->Count]);
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
	line	87
	
l5905:	
;myMain.c: 87: I2C->Count++;
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
	line	88
	
l5907:	
;myMain.c: 88: if(I2C->Count==32)
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	020h&0ffh
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l5911
u4720:
	line	90
	
l5909:	
;myMain.c: 89: {
;myMain.c: 90: I2C->Count=0;
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l5911
	line	91
	
l1048:	
	goto	l5911
	line	92
	
l1047:	
	goto	l5911
	line	105
	
l1045:	
	line	108
	
l5911:	
;myMain.c: 91: }
;myMain.c: 92: }
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
	
l5913:	
;myMain.c: 109: if(TMain->Count2 == 2000)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u4735
	moviw	[1]fsr1
	xorlw	high(07D0h)
u4735:
	skipz
	goto	u4731
	goto	u4730
u4731:
	goto	l1050
u4730:
	line	111
	
l5915:	
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
	goto	l1050
	line	124
	
l1049:	
	goto	l1050
	line	127
	
l1044:	
	line	128
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_printf
psect	text915,local,class=CODE,delta=2
global __ptext915
__ptext915:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_4(3), STR_3(6), STR_2(2), STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  f               1   13[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(3), STR_3(6), STR_2(2), STR_1(14), 
;;  _val            4    9[BANK0 ] struct .
;;  c               1   15[BANK0 ] char 
;;  prec            1   14[BANK0 ] char 
;;  ap              1    8[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_putch
;;		___lwdiv
;; This function is called by:
;;		_UART_Transmit
;; This function uses a non-reentrant model
;;
psect	text915
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 10
; Regs used in _printf: [wreg-status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	movlb 0	; select bank0
	movwf	(printf@f)
	
l5845:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l5881
	
l3329:	
	line	542
	
l5847:	
	movf	(printf@c),w
	xorlw	025h&0ffh
	skipnz
	goto	u4621
	goto	u4620
u4621:
	goto	l3330
u4620:
	line	545
	
l5849:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l5881
	line	547
	
l3330:	
	line	552
	clrf	(printf@flag)
	line	638
	goto	l5853
	line	640
	
l3332:	
	line	641
	goto	l3344
	line	721
	
l3334:	
	line	726
	goto	l5855
	line	805
	
l3336:	
	line	816
	goto	l5881
	line	825
	
l5851:	
	goto	l5855
	line	638
	
l3331:	
	
l5853:	
	movlw	01h
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          248     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable           125     4 (fixed)
; spacedrange          247     6 (fixed)
; locatedrange         121     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3344
	xorlw	120^0	; case 120
	skipnz
	goto	l5855
	goto	l5881
	opt asmopt_on

	line	825
	
l3335:	
	line	1281
	
l5855:	
	movf	(printf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(printf@_val)
	moviw	[1]fsr1
	movwf	(printf@_val+1)
	
l5857:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1311
	
l5859:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l5861:	
	movf	(printf@c),w
	xorlw	04h&0ffh
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l5865
u4630:
	goto	l5873
	
l5863:	
	goto	l5873
	line	1312
	
l3337:	
	
l5865:	
	movlw	low(_hexpowers|8000h)
	movwf	fsr0l
	movlw	high(_hexpowers|8000h)
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
	goto	u4645
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u4645:
	skipnc
	goto	u4641
	goto	u4640
u4641:
	goto	l5869
u4640:
	goto	l5873
	line	1313
	
l5867:	
	goto	l5873
	
l3339:	
	line	1311
	
l5869:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l5871:	
	movf	(printf@c),w
	xorlw	04h&0ffh
	skipz
	goto	u4651
	goto	u4650
u4651:
	goto	l5865
u4650:
	goto	l5873
	
l3338:	
	line	1467
	
l5873:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1469
	goto	l5879
	
l3341:	
	line	1499
	
l5875:	
	movlw	low(_hexpowers|8000h)
	movwf	fsr0l
	movlw	high(_hexpowers|8000h)
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
	movf	(0+(?___lwdiv)),w
	andlw	0Fh
	addlw	low(STR_5|8000h)
	movlp	high __stringtab
	callw
	pagesel	$
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	line	1516
	
l5877:	
	movf	(printf@c),w
	fcall	_putch
	goto	l5879
	line	1517
	
l3340:	
	line	1469
	
l5879:	
	movlw	(-1)
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1&0ffh
	skipz
	goto	u4661
	goto	u4660
u4661:
	goto	l5875
u4660:
	goto	l5881
	
l3342:	
	goto	l5881
	line	1525
	
l3328:	
	line	540
	
l5881:	
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
	goto	u4671
	goto	u4670
u4671:
	goto	l5847
u4670:
	goto	l3344
	
l3343:	
	goto	l3344
	line	1527
	
l3333:	
	line	1533
;	Return value of _printf is never used
	
l3344:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_setSegmentDisplayNumber
psect	text916,local,class=CODE,delta=2
global __ptext916
__ptext916:

;; *************** function _setSegmentDisplayNumber *****************
;; Defined at:
;;		line 21 in file "I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;  number          2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               1    9[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text916
	file	"I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	21
	global	__size_of_setSegmentDisplayNumber
	__size_of_setSegmentDisplayNumber	equ	__end_of_setSegmentDisplayNumber-_setSegmentDisplayNumber
	
_setSegmentDisplayNumber:	
	opt	stack 11
; Regs used in _setSegmentDisplayNumber: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	23
	
l5793:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u4511
	goto	u4510
u4511:
	goto	l2080
u4510:
	line	25
	
l5795:	
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
	goto	u4521
	goto	u4520
u4521:
	goto	l5803
u4520:
	line	28
	
l5797:	
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
	
l5799:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	btemp+1
u4535:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	btemp+1,f
	goto	u4535
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
	
l5801:	
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
u4545:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	btemp+1,f
	goto	u4545
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
	goto	l5831
	line	33
	
l2067:	
	
l5803:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u4551
	goto	u4550
u4551:
	goto	l5831
u4550:
	line	35
	
l5805:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4565
	movlw	low(02710h)
	subwf	(setSegmentDisplayNumber@number),w
u4565:

	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l5819
u4560:
	line	37
	
l5807:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@i)
	
l5809:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l5813
u4570:
	goto	l5831
	
l5811:	
	goto	l5831
	line	38
	
l2071:	
	line	39
	
l5813:	
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
	
l5815:	
	movlw	(01h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(??_setSegmentDisplayNumber+0)+0,w
	addwf	(setSegmentDisplayNumber@i),f
	
l5817:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l5813
u4580:
	goto	l5831
	
l2072:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	l5831
	line	42
	
l2070:	
	line	44
	
l5819:	
;SegmentDisplay_A2.c: 42: else
;SegmentDisplay_A2.c: 43: {
;SegmentDisplay_A2.c: 44: Segment->Num[3]=(number/1000);
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movlb 0	; select bank0
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
	
l5821:	
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
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	46
	
l5823:	
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
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	48
	
l5825:	
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
	
l5827:	
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
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	50
	
l5829:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	l5831
	line	51
	
l2073:	
	goto	l5831
	line	52
	
l2069:	
	goto	l5831
	line	53
	
l2068:	
	
l5831:	
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
	goto	u4591
	goto	u4590
u4591:
	goto	l5835
u4590:
	line	55
	
l5833:	
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
	goto	l2080
	line	57
	
l2074:	
	
l5835:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u4601
	goto	u4600
u4601:
	goto	l5839
u4600:
	line	59
	
l5837:	
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
	goto	l2080
	line	61
	
l2076:	
	
l5839:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u4611
	goto	u4610
u4611:
	goto	l5843
u4610:
	line	63
	
l5841:	
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
	goto	l2080
	line	65
	
l2078:	
	line	67
	
l5843:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l2080
	line	68
	
l2079:	
	goto	l2080
	
l2077:	
	goto	l2080
	
l2075:	
	goto	l2080
	line	69
	
l2066:	
	line	70
	
l2080:	
	return
	opt stack 0
GLOBAL	__end_of_setSegmentDisplayNumber
	__end_of_setSegmentDisplayNumber:
;; =============== function _setSegmentDisplayNumber ends ============

	signat	_setSegmentDisplayNumber,4216
	global	_I2C_Main
psect	text917,local,class=CODE,delta=2
global __ptext917
__ptext917:

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 276 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         1       3       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_Master_Reception
;;		_I2C_Master_Transmission
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text917
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	276
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
	opt	stack 12
; Regs used in _I2C_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	302
	
l5757:	
;MCU_16f1516_B1.c: 277: char i;
;MCU_16f1516_B1.c: 302: if(I2C->MasterRxGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u4441
	goto	u4440
u4441:
	goto	l3157
u4440:
	line	304
	
l5759:	
;MCU_16f1516_B1.c: 303: {
;MCU_16f1516_B1.c: 304: I2C->MasterRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	305
	
l5761:	
;MCU_16f1516_B1.c: 305: I2C_Master_Reception();
	fcall	_I2C_Master_Reception
	line	306
	
l5763:	
;MCU_16f1516_B1.c: 306: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	line	307
	
l5765:	
;MCU_16f1516_B1.c: 307: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	309
	
l5767:	
;MCU_16f1516_B1.c: 309: for(i=0;i<32;i++)
	clrf	(I2C_Main@i)
	
l5769:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l5773
u4450:
	goto	l5779
	
l5771:	
	goto	l5779
	line	310
	
l3158:	
	line	311
	
l5773:	
;MCU_16f1516_B1.c: 310: {
;MCU_16f1516_B1.c: 311: UART->TxData[i]=I2C->BufferReader[i];
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
	line	309
	
l5775:	
	movlw	(01h)
	movwf	(??_I2C_Main+0)+0
	movf	(??_I2C_Main+0)+0,w
	addwf	(I2C_Main@i),f
	
l5777:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l5773
u4460:
	goto	l5779
	
l3159:	
	line	313
	
l5779:	
;MCU_16f1516_B1.c: 312: }
;MCU_16f1516_B1.c: 313: UART->TxGO=1;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	315
;MCU_16f1516_B1.c: 315: }
	goto	l3166
	line	316
	
l3157:	
	line	318
;MCU_16f1516_B1.c: 316: else
;MCU_16f1516_B1.c: 317: {
;MCU_16f1516_B1.c: 318: if(RC0)
	btfss	(112/8),(112)&7
	goto	u4471
	goto	u4470
u4471:
	goto	l5785
u4470:
	line	320
	
l5781:	
;MCU_16f1516_B1.c: 319: {
;MCU_16f1516_B1.c: 320: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u4481
	goto	u4480
u4481:
	goto	l3166
u4480:
	line	322
	
l5783:	
;MCU_16f1516_B1.c: 321: {
;MCU_16f1516_B1.c: 322: I2C->SS=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	323
;MCU_16f1516_B1.c: 323: I2C->MasterRxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l3166
	line	324
	
l3162:	
	line	325
;MCU_16f1516_B1.c: 324: }
;MCU_16f1516_B1.c: 325: }
	goto	l3166
	line	326
	
l3161:	
	line	328
	
l5785:	
;MCU_16f1516_B1.c: 326: else
;MCU_16f1516_B1.c: 327: {
;MCU_16f1516_B1.c: 328: if(I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u4491
	goto	u4490
u4491:
	goto	l3164
u4490:
	line	330
	
l5787:	
;MCU_16f1516_B1.c: 329: {
;MCU_16f1516_B1.c: 330: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	331
	
l3164:	
	line	332
;MCU_16f1516_B1.c: 331: }
;MCU_16f1516_B1.c: 332: if(I2C->MasterTxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u4501
	goto	u4500
u4501:
	goto	l3166
u4500:
	line	334
	
l5789:	
;MCU_16f1516_B1.c: 333: {
;MCU_16f1516_B1.c: 334: I2C->MasterTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	335
	
l5791:	
;MCU_16f1516_B1.c: 335: I2C_Master_Transmission();
	fcall	_I2C_Master_Transmission
	goto	l3166
	line	336
	
l3165:	
	goto	l3166
	line	337
	
l3163:	
	goto	l3166
	line	338
	
l3160:	
	line	341
	
l3166:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Main
	__end_of_I2C_Main:
;; =============== function _I2C_Main ends ============

	signat	_I2C_Main,88
	global	_Mcu_Initial
psect	text918,local,class=CODE,delta=2
global __ptext918
__ptext918:

;; *************** function _Mcu_Initial *****************
;; Defined at:
;;		line 12 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;		_UART_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text918
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	12
	global	__size_of_Mcu_Initial
	__size_of_Mcu_Initial	equ	__end_of_Mcu_Initial-_Mcu_Initial
	
_Mcu_Initial:	
	opt	stack 12
; Regs used in _Mcu_Initial: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l5413:	
;MCU_16f1516_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l5415:	
;MCU_16f1516_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l5417:	
;MCU_16f1516_B1.c: 18: _nop();
	nop
	line	20
	
l5419:	
;MCU_16f1516_B1.c: 20: TMR1_Set();
	fcall	_TMR1_Set
	line	22
	
l5421:	
;MCU_16f1516_B1.c: 22: _nop();
	nop
	line	26
	
l5423:	
;MCU_16f1516_B1.c: 26: _nop();
	nop
	line	28
	
l5425:	
;MCU_16f1516_B1.c: 28: _nop();
	nop
	line	30
	
l5427:	
;MCU_16f1516_B1.c: 30: I2C_Set();
	fcall	_I2C_Set
	line	32
	
l5429:	
;MCU_16f1516_B1.c: 32: UART_Set();
	fcall	_UART_Set
	line	35
	
l3133:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initial
	__end_of_Mcu_Initial:
;; =============== function _Mcu_Initial ends ============

	signat	_Mcu_Initial,88
	global	___awmod
psect	text919,local,class=CODE,delta=2
global __ptext919
__ptext919:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] int 
;;  dividend        2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         5       2       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text919
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 11
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5723:	
	movlb 0	; select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u4351
	goto	u4350
u4351:
	goto	l5727
u4350:
	line	10
	
l5725:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l5727
	line	12
	
l3561:	
	line	13
	
l5727:	
	btfss	(___awmod@divisor+1),7
	goto	u4361
	goto	u4360
u4361:
	goto	l5731
u4360:
	line	14
	
l5729:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l5731
	
l3562:	
	line	15
	
l5731:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4371
	goto	u4370
u4371:
	goto	l5749
u4370:
	line	16
	
l5733:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l5739
	
l3565:	
	line	18
	
l5735:	
	movlw	01h
	
u4385:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u4385
	line	19
	
l5737:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l5739
	line	20
	
l3564:	
	line	17
	
l5739:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l5735
u4390:
	goto	l5741
	
l3566:	
	goto	l5741
	line	21
	
l3567:	
	line	22
	
l5741:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4405
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4405:
	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l5745
u4400:
	line	23
	
l5743:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l5745
	
l3568:	
	line	24
	
l5745:	
	movlw	01h
	
u4415:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u4415
	line	25
	
l5747:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4421
	goto	u4420
u4421:
	goto	l5741
u4420:
	goto	l5749
	
l3569:	
	goto	l5749
	line	26
	
l3563:	
	line	27
	
l5749:	
	movf	(___awmod@sign),w
	skipz
	goto	u4430
	goto	l5753
u4430:
	line	28
	
l5751:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l5753
	
l3570:	
	line	29
	
l5753:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l3571
	
l5755:	
	line	30
	
l3571:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text920,local,class=CODE,delta=2
global __ptext920
__ptext920:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] int 
;;  dividend        2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         5       4       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text920
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 11
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5683:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u4251
	goto	u4250
u4251:
	goto	l5687
u4250:
	line	11
	
l5685:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l5687
	line	13
	
l3493:	
	line	14
	
l5687:	
	btfss	(___awdiv@dividend+1),7
	goto	u4261
	goto	u4260
u4261:
	goto	l5693
u4260:
	line	15
	
l5689:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5691:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l5693
	line	17
	
l3494:	
	line	18
	
l5693:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5695:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u4271
	goto	u4270
u4271:
	goto	l5715
u4270:
	line	20
	
l5697:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l5703
	
l3497:	
	line	22
	
l5699:	
	movlw	01h
	
u4285:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u4285
	line	23
	
l5701:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l5703
	line	24
	
l3496:	
	line	21
	
l5703:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l5699
u4290:
	goto	l5705
	
l3498:	
	goto	l5705
	line	25
	
l3499:	
	line	26
	
l5705:	
	movlw	01h
	
u4305:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u4305
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4315
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4315:
	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l5711
u4310:
	line	28
	
l5707:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	29
	
l5709:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l5711
	line	30
	
l3500:	
	line	31
	
l5711:	
	movlw	01h
	
u4325:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u4325
	line	32
	
l5713:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4331
	goto	u4330
u4331:
	goto	l5705
u4330:
	goto	l5715
	
l3501:	
	goto	l5715
	line	33
	
l3495:	
	line	34
	
l5715:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4340
	goto	l5719
u4340:
	line	35
	
l5717:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l5719
	
l3502:	
	line	36
	
l5719:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l3503
	
l5721:	
	line	37
	
l3503:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwdiv
psect	text921,local,class=CODE,delta=2
global __ptext921
__ptext921:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         5       3       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text921
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 10
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5657:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5659:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4181
	goto	u4180
u4181:
	goto	l5679
u4180:
	line	11
	
l5661:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l5667
	
l3361:	
	line	13
	
l5663:	
	movlw	01h
	
u4195:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u4195
	line	14
	
l5665:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l5667
	line	15
	
l3360:	
	line	12
	
l5667:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l5663
u4200:
	goto	l5669
	
l3362:	
	goto	l5669
	line	16
	
l3363:	
	line	17
	
l5669:	
	movlw	01h
	
u4215:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u4215
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4225
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4225:
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l5675
u4220:
	line	19
	
l5671:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l5673:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l5675
	line	21
	
l3364:	
	line	22
	
l5675:	
	movlw	01h
	
u4235:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u4235
	line	23
	
l5677:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l5669
u4240:
	goto	l5679
	
l3365:	
	goto	l5679
	line	24
	
l3359:	
	line	25
	
l5679:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3366
	
l5681:	
	line	26
	
l3366:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_putch
psect	text922,local,class=CODE,delta=2
global __ptext922
__ptext922:

;; *************** function _putch *****************
;; Defined at:
;;		line 594 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    3[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text922
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	594
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 10
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	596
	
l5305:	
;MCU_16f1516_B1.c: 596: while(!TXIF)
	goto	l3305
	
l3306:	
	line	597
;MCU_16f1516_B1.c: 597: continue;
	
l3305:	
	line	596
	movlb 0	; select bank0
	btfss	(140/8),(140)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l3305
u3540:
	goto	l5307
	
l3307:	
	line	598
	
l5307:	
;MCU_16f1516_B1.c: 598: TXREG = byte;
	movf	(putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	599
	
l3308:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_UART_Receive
psect	text923,local,class=CODE,delta=2
global __ptext923
__ptext923:

;; *************** function _UART_Receive *****************
;; Defined at:
;;		line 556 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[COMMON] unsigned char 
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
;;      Temps:          3       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text923
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	556
	global	__size_of_UART_Receive
	__size_of_UART_Receive	equ	__end_of_UART_Receive-_UART_Receive
	
_UART_Receive:	
	opt	stack 12
; Regs used in _UART_Receive: [wreg+fsr1l-status,0]
	line	559
	
l5289:	
;MCU_16f1516_B1.c: 557: char i;
;MCU_16f1516_B1.c: 559: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	line	561
	
l5291:	
;MCU_16f1516_B1.c: 561: for(i=0;i<32;i++)
	clrf	(UART_Receive@i)
	
l5293:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l5297
u3520:
	goto	l5303
	
l5295:	
	goto	l5303
	line	562
	
l3297:	
	line	563
	
l5297:	
;MCU_16f1516_B1.c: 562: {
;MCU_16f1516_B1.c: 563: I2C->BufferWriter[i]=UART->RxData[i];
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
	line	561
	
l5299:	
	movlw	(01h)
	movwf	(??_UART_Receive+0)+0
	movf	(??_UART_Receive+0)+0,w
	addwf	(UART_Receive@i),f
	
l5301:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l5297
u3530:
	goto	l5303
	
l3298:	
	line	565
	
l5303:	
;MCU_16f1516_B1.c: 564: }
;MCU_16f1516_B1.c: 565: I2C->MasterTxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	579
	
l3299:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Receive
	__end_of_UART_Receive:
;; =============== function _UART_Receive ends ============

	signat	_UART_Receive,88
	global	_I2C_Master_Transmission
psect	text924,local,class=CODE,delta=2
global __ptext924
__ptext924:

;; *************** function _I2C_Master_Transmission *****************
;; Defined at:
;;		line 376 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    4[COMMON] unsigned char 
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
psect	text924
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	376
	global	__size_of_I2C_Master_Transmission
	__size_of_I2C_Master_Transmission	equ	__end_of_I2C_Master_Transmission-_I2C_Master_Transmission
	
_I2C_Master_Transmission:	
	opt	stack 12
; Regs used in _I2C_Master_Transmission: [wreg+fsr1l-status,0]
	line	378
	
l5239:	
;MCU_16f1516_B1.c: 377: char i;
;MCU_16f1516_B1.c: 378: while(SEN);
	goto	l3172
	
l3173:	
	
l3172:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l3172
u3320:
	
l3174:	
	line	379
;MCU_16f1516_B1.c: 379: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7
	line	381
;MCU_16f1516_B1.c: 381: while(SEN);
	goto	l3175
	
l3176:	
	
l3175:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l3175
u3330:
	goto	l5241
	
l3177:	
	line	384
	
l5241:	
;MCU_16f1516_B1.c: 384: SSPBUF=0x10;
	movlw	(010h)
	movwf	(529)^0200h	;volatile
	line	385
;MCU_16f1516_B1.c: 385: while(BF);
	goto	l3178
	
l3179:	
	
l3178:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l3178
u3340:
	goto	l3181
	
l3180:	
	line	388
;MCU_16f1516_B1.c: 388: while(ACKSTAT);
	goto	l3181
	
l3182:	
	
l3181:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l3181
u3350:
	
l3183:	
	line	390
;MCU_16f1516_B1.c: 390: for(i=0;i<32;i++)
	clrf	(I2C_Master_Transmission@i)
	
l5243:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l3186
u3360:
	goto	l3195
	
l5245:	
	goto	l3195
	line	391
	
l3184:	
	line	392
;MCU_16f1516_B1.c: 391: {
;MCU_16f1516_B1.c: 392: while(SEN);
	goto	l3186
	
l3187:	
	
l3186:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l3186
u3370:
	goto	l5247
	
l3188:	
	line	393
	
l5247:	
;MCU_16f1516_B1.c: 393: SSPBUF=I2C->BufferWriter[i];
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
	line	394
;MCU_16f1516_B1.c: 394: while(BF);
	goto	l3189
	
l3190:	
	
l3189:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l3189
u3380:
	goto	l3192
	
l3191:	
	line	397
;MCU_16f1516_B1.c: 397: while(ACKSTAT);
	goto	l3192
	
l3193:	
	
l3192:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l3192
u3390:
	goto	l5249
	
l3194:	
	line	390
	
l5249:	
	movlw	(01h)
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	(??_I2C_Master_Transmission+0)+0,w
	addwf	(I2C_Master_Transmission@i),f
	
l5251:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l3186
u3400:
	goto	l3195
	
l3185:	
	line	400
;MCU_16f1516_B1.c: 398: }
;MCU_16f1516_B1.c: 400: while(SEN);
	goto	l3195
	
l3196:	
	
l3195:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l3195
u3410:
	goto	l3198
	
l3197:	
	line	401
;MCU_16f1516_B1.c: 401: while(!PEN)
	goto	l3198
	
l3199:	
	line	402
;MCU_16f1516_B1.c: 402: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7
	
l3198:	
	line	401
	btfss	(4274/8)^0200h,(4274)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l3199
u3420:
	goto	l3201
	
l3200:	
	line	403
;MCU_16f1516_B1.c: 403: while(PEN);
	goto	l3201
	
l3202:	
	
l3201:	
	btfsc	(4274/8)^0200h,(4274)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l3201
u3430:
	goto	l3204
	
l3203:	
	line	406
	
l3204:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Transmission
	__end_of_I2C_Master_Transmission:
;; =============== function _I2C_Master_Transmission ends ============

	signat	_I2C_Master_Transmission,88
	global	_I2C_Master_Reception
psect	text925,local,class=CODE,delta=2
global __ptext925
__ptext925:

;; *************** function _I2C_Master_Reception *****************
;; Defined at:
;;		line 409 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
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
psect	text925
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	409
	global	__size_of_I2C_Master_Reception
	__size_of_I2C_Master_Reception	equ	__end_of_I2C_Master_Reception-_I2C_Master_Reception
	
_I2C_Master_Reception:	
	opt	stack 12
; Regs used in _I2C_Master_Reception: [wreg+fsr1l-status,0]
	line	411
	
l5225:	
;MCU_16f1516_B1.c: 410: char i;
;MCU_16f1516_B1.c: 411: while(SEN);
	goto	l3207
	
l3208:	
	
l3207:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l3207
u3160:
	
l3209:	
	line	412
;MCU_16f1516_B1.c: 412: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7
	line	413
;MCU_16f1516_B1.c: 413: while(SEN);
	goto	l3210
	
l3211:	
	
l3210:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l3210
u3170:
	goto	l5227
	
l3212:	
	line	416
	
l5227:	
;MCU_16f1516_B1.c: 416: SSPBUF=0x11;
	movlw	(011h)
	movwf	(529)^0200h	;volatile
	line	419
;MCU_16f1516_B1.c: 419: while(BF);
	goto	l3213
	
l3214:	
	
l3213:	
	btfsc	(4256/8)^0200h,(4256)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l3213
u3180:
	goto	l3216
	
l3215:	
	line	420
;MCU_16f1516_B1.c: 420: while(ACKSTAT);
	goto	l3216
	
l3217:	
	
l3216:	
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l3216
u3190:
	
l3218:	
	line	423
;MCU_16f1516_B1.c: 423: for(i=0;i<32;i++)
	clrf	(I2C_Master_Reception@i)
	
l5229:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l3221
u3200:
	goto	l3236
	
l5231:	
	goto	l3236
	line	424
	
l3219:	
	line	425
;MCU_16f1516_B1.c: 424: {
;MCU_16f1516_B1.c: 425: while(SEN);
	goto	l3221
	
l3222:	
	
l3221:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l3221
u3210:
	goto	l3224
	
l3223:	
	line	426
;MCU_16f1516_B1.c: 426: while(RCEN);
	goto	l3224
	
l3225:	
	
l3224:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l3224
u3220:
	
l3226:	
	line	427
;MCU_16f1516_B1.c: 427: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7
	line	428
;MCU_16f1516_B1.c: 428: while(RCEN);
	goto	l3227
	
l3228:	
	
l3227:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l3227
u3230:
	goto	l5233
	
l3229:	
	line	429
	
l5233:	
;MCU_16f1516_B1.c: 429: I2C->BufferReader[i]=SSPBUF;
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
	line	430
;MCU_16f1516_B1.c: 430: while(!ACKEN)
	goto	l3230
	
l3231:	
	line	431
;MCU_16f1516_B1.c: 431: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7
	
l3230:	
	line	430
	movlb 4	; select bank4
	btfss	(4276/8)^0200h,(4276)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l3231
u3240:
	goto	l3233
	
l3232:	
	line	432
;MCU_16f1516_B1.c: 432: while(ACKEN);
	goto	l3233
	
l3234:	
	
l3233:	
	btfsc	(4276/8)^0200h,(4276)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l3233
u3250:
	goto	l5235
	
l3235:	
	line	423
	
l5235:	
	movlw	(01h)
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(??_I2C_Master_Reception+0)+0,w
	addwf	(I2C_Master_Reception@i),f
	
l5237:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l3221
u3260:
	goto	l3236
	
l3220:	
	line	434
;MCU_16f1516_B1.c: 433: }
;MCU_16f1516_B1.c: 434: while(RCEN);
	goto	l3236
	
l3237:	
	
l3236:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l3236
u3270:
	
l3238:	
	line	435
;MCU_16f1516_B1.c: 435: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7
	line	436
;MCU_16f1516_B1.c: 436: while(RCEN);
	goto	l3239
	
l3240:	
	
l3239:	
	btfsc	(4275/8)^0200h,(4275)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l3239
u3280:
	goto	l3242
	
l3241:	
	line	438
;MCU_16f1516_B1.c: 438: while(SEN);
	goto	l3242
	
l3243:	
	
l3242:	
	btfsc	(4272/8)^0200h,(4272)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l3242
u3290:
	goto	l3245
	
l3244:	
	line	439
;MCU_16f1516_B1.c: 439: while(!PEN)
	goto	l3245
	
l3246:	
	line	440
;MCU_16f1516_B1.c: 440: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7
	
l3245:	
	line	439
	btfss	(4274/8)^0200h,(4274)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3246
u3300:
	goto	l3248
	
l3247:	
	line	441
;MCU_16f1516_B1.c: 441: while(PEN);
	goto	l3248
	
l3249:	
	
l3248:	
	btfsc	(4274/8)^0200h,(4274)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l3248
u3310:
	goto	l3251
	
l3250:	
	line	444
	
l3251:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Reception
	__end_of_I2C_Master_Reception:
;; =============== function _I2C_Master_Reception ends ============

	signat	_I2C_Master_Reception,88
	global	_UART_Set
psect	text926,local,class=CODE,delta=2
global __ptext926
__ptext926:

;; *************** function _UART_Set *****************
;; Defined at:
;;		line 490 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
psect	text926
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	490
	global	__size_of_UART_Set
	__size_of_UART_Set	equ	__end_of_UART_Set-_UART_Set
	
_UART_Set:	
	opt	stack 12
; Regs used in _UART_Set: [wreg+status,2]
	line	491
	
l5157:	
;MCU_16f1516_B1.c: 491: UART=&VarUart;
	movlw	(_VarUart)&0ffh
	movwf	(??_UART_Set+0)+0
	movf	(??_UART_Set+0)+0,w
	movwf	(_UART)
	line	492
	
l5159:	
;MCU_16f1516_B1.c: 492: TRISC7 = 1;
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7
	line	493
	
l5161:	
;MCU_16f1516_B1.c: 493: TRISC6 = 1;
	bsf	(1142/8)^080h,(1142)&7
	line	494
;MCU_16f1516_B1.c: 494: SPBRG = ((int)(16000000L/(16UL * 19200) -1));
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	495
	
l5163:	
;MCU_16f1516_B1.c: 495: SPBRGH = 0;
	clrf	(412)^0180h	;volatile
	line	496
	
l5165:	
;MCU_16f1516_B1.c: 496: BRG16 = 0;
	bcf	(3323/8)^0180h,(3323)&7
	line	497
	
l5167:	
;MCU_16f1516_B1.c: 497: RCSTA = (0|0x90);
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	498
	
l5169:	
;MCU_16f1516_B1.c: 498: TXSTA = (0x4|0|0x20);
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	line	499
	
l5171:	
;MCU_16f1516_B1.c: 499: TX9=0;
	bcf	(3318/8)^0180h,(3318)&7
	line	500
	
l5173:	
;MCU_16f1516_B1.c: 500: RX9=0;
	bcf	(3310/8)^0180h,(3310)&7
	line	501
	
l5175:	
;MCU_16f1516_B1.c: 501: TXIE=0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7
	line	502
	
l5177:	
;MCU_16f1516_B1.c: 502: RCIE=1;
	bsf	(1165/8)^080h,(1165)&7
	line	503
	
l5179:	
;MCU_16f1516_B1.c: 503: PEIE=1;
	bsf	(94/8),(94)&7
	line	504
	
l5181:	
;MCU_16f1516_B1.c: 504: GIE=1;
	bsf	(95/8),(95)&7
	line	505
	
l3272:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Set
	__end_of_UART_Set:
;; =============== function _UART_Set ends ============

	signat	_UART_Set,88
	global	_I2C_Set
psect	text927,local,class=CODE,delta=2
global __ptext927
__ptext927:

;; *************** function _I2C_Set *****************
;; Defined at:
;;		line 234 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
psect	text927
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	234
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
	opt	stack 12
; Regs used in _I2C_Set: [wreg+status,2]
	line	235
	
l5151:	
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
	
l5153:	
;MCU_16f1516_B1.c: 239: SSPCON2 = 0;
	clrf	(534)^0200h	;volatile
	line	241
	
l5155:	
;MCU_16f1516_B1.c: 241: SSPCON1=0b101000;
	movlw	(028h)
	movwf	(533)^0200h	;volatile
	line	258
	
l3150:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Set
	__end_of_I2C_Set:
;; =============== function _I2C_Set ends ============

	signat	_I2C_Set,88
	global	_TMR1_Set
psect	text928,local,class=CODE,delta=2
global __ptext928
__ptext928:

;; *************** function _TMR1_Set *****************
;; Defined at:
;;		line 115 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
psect	text928
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	115
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
	opt	stack 12
; Regs used in _TMR1_Set: [wreg]
	line	116
	
l5143:	
;MCU_16f1516_B1.c: 116: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
	movwf	(_Timer1)
	line	117
;MCU_16f1516_B1.c: 117: T1CON=(0x40 | 0x00 | 0x01);
	movlw	(041h)
	movlb 0	; select bank0
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
	
l5145:	
;MCU_16f1516_B1.c: 120: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	121
	
l5147:	
;MCU_16f1516_B1.c: 121: PEIE=1;
	bsf	(94/8),(94)&7
	line	122
	
l5149:	
;MCU_16f1516_B1.c: 122: GIE=1;
	bsf	(95/8),(95)&7
	line	123
	
l3142:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Set
	__end_of_TMR1_Set:
;; =============== function _TMR1_Set ends ============

	signat	_TMR1_Set,88
	global	_IO_Set
psect	text929,local,class=CODE,delta=2
global __ptext929
__ptext929:

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 38 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
psect	text929
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	38
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
	opt	stack 12
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l5127:	
;MCU_16f1516_B1.c: 39: TRISA=0b00001001;;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	40
	
l5129:	
;MCU_16f1516_B1.c: 40: TRISB=0b00000000;;
	clrf	(141)^080h	;volatile
	line	41
	
l5131:	
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
	
l5133:	
;MCU_16f1516_B1.c: 45: ANSELA=0b00000001;;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l5135:	
;MCU_16f1516_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l5137:	
;MCU_16f1516_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l5139:	
;MCU_16f1516_B1.c: 48: PORTA=0b00001001;;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
;MCU_16f1516_B1.c: 49: PORTB=0b00000000;;
	clrf	(13)	;volatile
	line	50
	
l5141:	
;MCU_16f1516_B1.c: 50: PORTC=0b00011001;;
	movlw	(019h)
	movwf	(14)	;volatile
	line	51
	
l3136:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
;; =============== function _IO_Set ends ============

	signat	_IO_Set,88
	global	_SegmentDisplay_Main
psect	text930,local,class=CODE,delta=2
global __ptext930
__ptext930:

;; *************** function _SegmentDisplay_Main *****************
;; Defined at:
;;		line 73 in file "I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
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
psect	text930
	file	"I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	73
	global	__size_of_SegmentDisplay_Main
	__size_of_SegmentDisplay_Main	equ	__end_of_SegmentDisplay_Main-_SegmentDisplay_Main
	
_SegmentDisplay_Main:	
	opt	stack 13
; Regs used in _SegmentDisplay_Main: [wreg-status,0]
	line	74
	
l5093:	
;SegmentDisplay_A2.c: 74: if(Segment->GO)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u3001
	goto	u3000
u3001:
	goto	l2094
u3000:
	line	76
	
l5095:	
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
	
l5097:	
;SegmentDisplay_A2.c: 77: if(Segment->Time == 5)
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l2094
u3010:
	line	79
	
l5099:	
;SegmentDisplay_A2.c: 78: {
;SegmentDisplay_A2.c: 79: Segment->Time=0;
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	80
	
l5101:	
;SegmentDisplay_A2.c: 80: PORTA&=0x0f;
	movlw	(0Fh)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(??_SegmentDisplay_Main+0)+0,w
	andwf	(12),f	;volatile
	line	81
	
l5103:	
;SegmentDisplay_A2.c: 81: if(Segment->ComCount == 0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l5107
u3020:
	line	83
	
l5105:	
;SegmentDisplay_A2.c: 82: {
;SegmentDisplay_A2.c: 83: RA4=1;
	bsf	(100/8),(100)&7
	line	84
;SegmentDisplay_A2.c: 84: }
	goto	l5119
	line	85
	
l2085:	
	
l5107:	
;SegmentDisplay_A2.c: 85: else if(Segment->ComCount == 1)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l5111
u3030:
	line	87
	
l5109:	
;SegmentDisplay_A2.c: 86: {
;SegmentDisplay_A2.c: 87: RA5=1;
	bsf	(101/8),(101)&7
	line	88
;SegmentDisplay_A2.c: 88: }
	goto	l5119
	line	89
	
l2087:	
	
l5111:	
;SegmentDisplay_A2.c: 89: else if(Segment->ComCount == 2)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l5115
u3040:
	line	91
	
l5113:	
;SegmentDisplay_A2.c: 90: {
;SegmentDisplay_A2.c: 91: RA6=1;
	bsf	(102/8),(102)&7
	line	92
;SegmentDisplay_A2.c: 92: }
	goto	l5119
	line	93
	
l2089:	
	
l5115:	
;SegmentDisplay_A2.c: 93: else if(Segment->ComCount == 3)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l5119
u3050:
	line	95
	
l5117:	
;SegmentDisplay_A2.c: 94: {
;SegmentDisplay_A2.c: 95: RA7=1;
	bsf	(103/8),(103)&7
	goto	l5119
	line	96
	
l2091:	
	goto	l5119
	line	97
	
l2090:	
	goto	l5119
	
l2088:	
	goto	l5119
	
l2086:	
	
l5119:	
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
	
l5121:	
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
	goto	u3061
	goto	u3060
u3061:
	goto	l5125
u3060:
	line	100
	
l5123:	
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
	goto	l2094
	line	102
	
l2092:	
	line	104
	
l5125:	
;SegmentDisplay_A2.c: 102: else
;SegmentDisplay_A2.c: 103: {
;SegmentDisplay_A2.c: 104: Segment->ComCount=0;
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l2094
	line	105
	
l2093:	
	goto	l2094
	line	106
	
l2084:	
	goto	l2094
	line	107
	
l2083:	
	line	108
	
l2094:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Main
	__end_of_SegmentDisplay_Main:
;; =============== function _SegmentDisplay_Main ends ============

	signat	_SegmentDisplay_Main,88
	global	_SegmentDisplay_Initial
psect	text931,local,class=CODE,delta=2
global __ptext931
__ptext931:

;; *************** function _SegmentDisplay_Initial *****************
;; Defined at:
;;		line 9 in file "I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
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
psect	text931
	file	"I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	9
	global	__size_of_SegmentDisplay_Initial
	__size_of_SegmentDisplay_Initial	equ	__end_of_SegmentDisplay_Initial-_SegmentDisplay_Initial
	
_SegmentDisplay_Initial:	
	opt	stack 13
; Regs used in _SegmentDisplay_Initial: [wregfsr1]
	line	10
	
l5087:	
;SegmentDisplay_A2.c: 10: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movwf	(??_SegmentDisplay_Initial+0)+0
	movf	(??_SegmentDisplay_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_Segment)
	line	11
	
l5089:	
;SegmentDisplay_A2.c: 11: Segment->Enable=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	13
	
l5091:	
;SegmentDisplay_A2.c: 13: Segment->Dec=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	18
	
l2063:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Initial
	__end_of_SegmentDisplay_Initial:
;; =============== function _SegmentDisplay_Initial ends ============

	signat	_SegmentDisplay_Initial,88
	global	_MainT_Initial
psect	text932,local,class=CODE,delta=2
global __ptext932
__ptext932:

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 34 in file "I:\Program\PIC\Source_File\myMain.c"
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
psect	text932
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	34
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 13
; Regs used in _MainT_Initial: [wregfsr1]
	line	35
	
l5081:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_TMain)
	line	36
	
l5083:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l5085:	
;myMain.c: 37: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	38
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
;; =============== function _MainT_Initial ends ============

	signat	_MainT_Initial,88
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 57 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;		_UART_ISR
;;		_I2C_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	57
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 10
; Regs used in _ISR: [wreg+fsr1l-status,0+pclath+cstack]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	58
	
i1l5183:	
;MCU_16f1516_B1.c: 58: _nop();
	nop
	line	60
;MCU_16f1516_B1.c: 60: _nop();
	nop
	line	62
	
i1l5185:	
;MCU_16f1516_B1.c: 62: TMR1_ISR();
	fcall	_TMR1_ISR
	line	66
	
i1l5187:	
;MCU_16f1516_B1.c: 66: _nop();
	nop
	line	68
;MCU_16f1516_B1.c: 68: UART_ISR();
	fcall	_UART_ISR
	line	70
;MCU_16f1516_B1.c: 70: I2C_ISR();
	fcall	_I2C_ISR
	line	71
	
i1l3139:	
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
psect	text934,local,class=CODE,delta=2
global __ptext934
__ptext934:

;; *************** function _I2C_ISR *****************
;; Defined at:
;;		line 261 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
psect	text934
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	261
	global	__size_of_I2C_ISR
	__size_of_I2C_ISR	equ	__end_of_I2C_ISR-_I2C_ISR
	
_I2C_ISR:	
	opt	stack 10
; Regs used in _I2C_ISR: [wregfsr1]
	line	262
	
i1l5217:	
;MCU_16f1516_B1.c: 262: if(SSPIE && SSPIF)
	movlb 1	; select bank1
	btfss	(1163/8)^080h,(1163)&7
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l3154
u314_20:
	
i1l5219:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l3154
u315_20:
	line	264
	
i1l5221:	
;MCU_16f1516_B1.c: 263: {
;MCU_16f1516_B1.c: 264: SSPIE=0;
	movlb 1	; select bank1
	bcf	(1163/8)^080h,(1163)&7
	line	265
	
i1l5223:	
;MCU_16f1516_B1.c: 265: I2C->SlaveGO=1;
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l3154
	line	272
	
i1l3153:	
	line	273
	
i1l3154:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_ISR
	__end_of_I2C_ISR:
;; =============== function _I2C_ISR ends ============

	signat	_I2C_ISR,88
	global	_UART_ISR
psect	text935,local,class=CODE,delta=2
global __ptext935
__ptext935:

;; *************** function _UART_ISR *****************
;; Defined at:
;;		line 508 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text935
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	508
	global	__size_of_UART_ISR
	__size_of_UART_ISR	equ	__end_of_UART_ISR-_UART_ISR
	
_UART_ISR:	
	opt	stack 10
; Regs used in _UART_ISR: [wreg+fsr1l-status,0]
	line	510
	
i1l5203:	
;MCU_16f1516_B1.c: 509: char i;
;MCU_16f1516_B1.c: 510: if(RCIE && RCIF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l3280
u310_20:
	
i1l5205:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l3280
u311_20:
	goto	i1l3276
	line	512
	
i1l5207:	
;MCU_16f1516_B1.c: 511: {
;MCU_16f1516_B1.c: 512: while(!RCIDL);
	goto	i1l3276
	
i1l3277:	
	
i1l3276:	
	movlb 3	; select bank3
	btfss	(3326/8)^0180h,(3326)&7
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l3276
u312_20:
	goto	i1l5209
	
i1l3278:	
	line	513
	
i1l5209:	
;MCU_16f1516_B1.c: 513: UART->RxData[UART->RxLength]=RCREG;
	movf	(409)^0180h,w	;volatile
	movwf	(??_UART_ISR+0)+0
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	addlw	020h
	addwf	(_UART),w
	movwf	(??_UART_ISR+1)+0
	movf	0+(??_UART_ISR+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_ISR+0)+0,w
	movwf	indf1
	line	515
;MCU_16f1516_B1.c: 515: UART->RxLength++;
	movlw	(01h)
	movwf	(??_UART_ISR+0)+0
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_ISR+0)+0,w
	addwf	indf1,f
	line	516
	
i1l5211:	
;MCU_16f1516_B1.c: 516: if(UART->RxLength == 32)
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	020h&0ffh
	skipz
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l3280
u313_20:
	line	518
	
i1l5213:	
;MCU_16f1516_B1.c: 517: {
;MCU_16f1516_B1.c: 518: UART->RxLength=0;
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	519
;MCU_16f1516_B1.c: 519: UART->RxGO=1;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	520
	
i1l5215:	
;MCU_16f1516_B1.c: 520: RCIE=0;
	movlb 1	; select bank1
	bcf	(1165/8)^080h,(1165)&7
	goto	i1l3280
	line	521
	
i1l3279:	
	goto	i1l3280
	line	522
	
i1l3275:	
	line	523
	
i1l3280:	
	return
	opt stack 0
GLOBAL	__end_of_UART_ISR
	__end_of_UART_ISR:
;; =============== function _UART_ISR ends ============

	signat	_UART_ISR,88
	global	_TMR1_ISR
psect	text936,local,class=CODE,delta=2
global __ptext936
__ptext936:

;; *************** function _TMR1_ISR *****************
;; Defined at:
;;		line 126 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
psect	text936
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	126
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
	opt	stack 10
; Regs used in _TMR1_ISR: [wreg+fsr1l-status,0]
	line	127
	
i1l5189:	
;MCU_16f1516_B1.c: 127: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l3147
u307_20:
	
i1l5191:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l3147
u308_20:
	line	129
	
i1l5193:	
;MCU_16f1516_B1.c: 128: {
;MCU_16f1516_B1.c: 129: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	130
;MCU_16f1516_B1.c: 130: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	131
	
i1l5195:	
;MCU_16f1516_B1.c: 131: TMR1IF=0;
	bcf	(136/8),(136)&7
	line	132
	
i1l5197:	
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
	
i1l5199:	
;MCU_16f1516_B1.c: 133: if(Timer1->Count == 20)
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u309_25
	moviw	[1]fsr1
	xorlw	high(014h)
u309_25:
	skipz
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l3147
u309_20:
	line	135
	
i1l5201:	
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
	goto	i1l3147
	line	137
	
i1l3146:	
	goto	i1l3147
	line	138
	
i1l3145:	
	line	139
	
i1l3147:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
;; =============== function _TMR1_ISR ends ============

	signat	_TMR1_ISR,88
psect	text937,local,class=CODE,delta=2
global __ptext937
__ptext937:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
