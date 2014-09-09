opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

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
# 6 "G:\Program\PIC\7.Development\Release\Development.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "G:\Program\PIC\7.Development\Release\Development.c"
	dw 0xFFFC & 0xFFE7 ;#
# 7 "G:\Program\PIC\7.Development\Release\Development.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "G:\Program\PIC\7.Development\Release\Development.c"
	dw 0xFFFF ;#
	FNCALL	_main,_MainT_Initial
	FNCALL	_main,_MainT
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_MainT,_setOverLoadtoEnable
	FNCALL	_MainT,_printf
	FNCALL	_MainT,_CDS_Get
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
	global	_VarUart
	global	_VarSegment
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"G:\Program\PIC\7.Development\Release\Development.c"
	line	16

;initializer for _VarProduct
	retlw	0AAh
	retlw	0Bh
	retlw	0Ch
	retlw	0Dh
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"G:\Program\PIC\Header_File\../Header_File/MCU_16F1516_A.h"
	line	499

;initializer for _VarUart
	retlw	0AAh
	retlw	0AAh
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
	file	"G:\Program\PIC\Header_File\../Header_File/SegmentDisplay_A.h"
	line	78

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
	retlw	0
	retlw	0
	retlw	0
	global	_CC2500_registers_address
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
	global    __stringtab
__stringtab:
	retlw	0
psect	strings
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500.h"
	line	221
_CC2500_registers_address:
	retlw	03h
	retlw	016h
	retlw	017h
	retlw	01Eh
	retlw	01Fh
	retlw	020h
	retlw	02Ah
	retlw	02Bh
	retlw	0Bh
	retlw	0Ch
	retlw	0Dh
	retlw	0Eh
	retlw	0Fh
	retlw	010h
	retlw	011h
	retlw	012h
	retlw	013h
	retlw	014h
	retlw	0Ah
	retlw	015h
	retlw	021h
	retlw	022h
	retlw	018h
	retlw	019h
	retlw	01Ah
	retlw	01Bh
	retlw	01Ch
	retlw	01Dh
	retlw	023h
	retlw	024h
	retlw	025h
	retlw	026h
	retlw	029h
	retlw	02Ch
	retlw	02Dh
	retlw	02Eh
	retlw	0
	retlw	01h
	retlw	02h
	retlw	07h
	retlw	08h
	retlw	09h
	retlw	06h
	retlw	04h
	retlw	05h
	retlw	027h
	retlw	028h
	global	_CC2500_rfSettings
psect	strings
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500.h"
	line	164
_CC2500_rfSettings:
	retlw	07h
	retlw	07h
	retlw	030h
	retlw	087h
	retlw	06Bh
	retlw	0F8h
	retlw	07Fh
	retlw	03Fh
	retlw	09h
	retlw	0
	retlw	05Ch
	retlw	0A7h
	retlw	062h
	retlw	086h
	retlw	083h
	retlw	03h
	retlw	022h
	retlw	0F8h
	retlw	0
	retlw	044h
	retlw	0B6h
	retlw	010h
	retlw	018h
	retlw	01Dh
	retlw	01Ch
	retlw	0C7h
	retlw	0
	retlw	0B2h
	retlw	0EAh
	retlw	0Ah
	retlw	0
	retlw	011h
	retlw	059h
	retlw	088h
	retlw	031h
	retlw	0Bh
	retlw	02Fh
	retlw	02Eh
	retlw	06h
	retlw	04h
	retlw	05h
	retlw	0
	retlw	030h
	retlw	0D3h
	retlw	091h
	retlw	041h
	retlw	0
	global	_dpowers
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
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

	global	_CC2500_patable_vaule
psect	strings
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500.h"
	line	316
_CC2500_patable_vaule:
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	global	_CC2500_registers_address
	global	_CC2500_rfSettings
	global	_dpowers
	global	_CC2500_patable_vaule
	global	_RF_Data
	global	_RF_Count
	global	_CRC
	global	_RSSI
	global	_Rx_Length
	global	_SPI0Buffer
	global	_Segment
	global	_Timer1
	global	_Tx_Length
	global	_Uart
	global	_r_address
	global	_r_data
	global	_s_data
	global	_CC2500_Enable
	global	_CC2500_OK
	global	_Receive_GO
	global	_Receive_OK
	global	_RxStatus
	global	_Transceive_GO
	global	_Transceive_OK
	global	_TxStatus
	global	_VarTMain
	global	_VarTimer1
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
	global	_RA4
_RA4	set	100
	global	_RA5
_RA5	set	101
	global	_RA6
_RA6	set	102
	global	_RA7
_RA7	set	103
	global	_RCIF
_RCIF	set	141
	global	_TMR1IF
_TMR1IF	set	136
	global	_TXIF
_TXIF	set	140
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	158
	global	_ADRESH
_ADRESH	set	156
	global	_ADRESL
_ADRESL	set	155
	global	_OSCCON
_OSCCON	set	153
	global	_TRISA
_TRISA	set	140
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
	global	_GO_nDONE
_GO_nDONE	set	1257
	global	_RCIE
_RCIE	set	1165
	global	_TMR1IE
_TMR1IE	set	1160
	global	_TRISC6
_TRISC6	set	1142
	global	_TRISC7
_TRISC7	set	1143
	global	_TXIE
_TXIE	set	1164
	global	_FVRCON
_FVRCON	set	279
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
	global	_RX9
_RX9	set	3310
	global	_TX9
_TX9	set	3318
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"Development.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_CC2500_Enable:
       ds      1

_CC2500_OK:
       ds      1

_Receive_GO:
       ds      1

_Receive_OK:
       ds      1

_RxStatus:
       ds      1

_Transceive_GO:
       ds      1

_Transceive_OK:
       ds      1

_TxStatus:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_RF_Data:
       ds      21

_RF_Count:
       ds      2

_CRC:
       ds      1

_RSSI:
       ds      1

_Rx_Length:
       ds      1

_SPI0Buffer:
       ds      1

_Segment:
       ds      1

_Timer1:
       ds      1

_Tx_Length:
       ds      1

_Uart:
       ds      1

_r_address:
       ds      1

_r_data:
       ds      1

_s_data:
       ds      1

_VarTMain:
       ds      12

_VarTimer1:
       ds      3

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"G:\Program\PIC\7.Development\Release\Development.c"
	line	16
_VarProduct:
       ds      4

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"G:\Program\PIC\Header_File\../Header_File/MCU_16F1516_A.h"
	line	499
_VarUart:
       ds      50

psect	dataBANK1
	file	"G:\Program\PIC\Header_File\../Header_File/SegmentDisplay_A.h"
	line	78
_VarSegment:
       ds      29

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
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	031h
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
	movlw 04h
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
	movlw 04Fh
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
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_setOverLoadtoEnable
?_setOverLoadtoEnable:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	ds	1
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x1
	global	??_setOverLoadtoEnable
??_setOverLoadtoEnable:	; 0 bytes @ 0x1
	global	??_putch
??_putch:	; 0 bytes @ 0x1
	global	?_CDS_Get
?_CDS_Get:	; 2 bytes @ 0x1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x1
	global	putch@byte
putch@byte:	; 1 bytes @ 0x1
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x1
	ds	2
	global	??_CDS_Get
??_CDS_Get:	; 0 bytes @ 0x3
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x3
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x5
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	CDS_Get@i
CDS_Get@i:	; 2 bytes @ 0x7
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x9
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xA
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	?_printf
?_printf:	; 2 bytes @ 0x4
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x6
	ds	2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x8
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x9
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0xA
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0xB
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0xC
	ds	4
	global	printf@c
printf@c:	; 1 bytes @ 0x10
	ds	1
	global	??_MainT
??_MainT:	; 0 bytes @ 0x11
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x13
	ds	3
;;Data sizes: Strings 3, constant 112, data 83, bss 49, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      12
;; BANK0           80     22      77
;; BANK1           80      0      79
;; BANK2           80      0       0
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           16      0       0

;;
;; Pointer list with targets:

;; ?_CDS_Get	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_1(CODE[3]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S2992$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; Product	PTR struct Product size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarProduct(BANK0[4]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 12
;;		 -> NULL(NULL[0]), VarTMain(BANK0[12]), 
;;
;; Segment	PTR struct Segment size(1) Largest target is 29
;;		 -> NULL(NULL[0]), VarSegment(BANK1[29]), 
;;
;; Uart	PTR struct UART size(1) Largest target is 50
;;		 -> NULL(NULL[0]), VarUart(BANK1[50]), 
;;
;; Timer1	PTR struct Timer1 size(1) Largest target is 3
;;		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwmod
;;   _printf->___lwmod
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_MainT
;;   _MainT->_printf
;;   _printf->___lwmod
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    1397
;;                                             19 BANK0      3     3      0
;;                      _MainT_Initial
;;                              _MainT
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                2     2      0    1003
;;                                             17 BANK0      2     2      0
;;                _setOverLoadtoEnable
;;                             _printf
;;                            _CDS_Get
;; ---------------------------------------------------------------------------------
;; (2) _printf                                              13    11      2     979
;;                                              4 BANK0     13    11      2
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _setOverLoadtoEnable                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              6     2      4     232
;;                                              9 COMMON     2     2      0
;;                                              0 BANK0      4     0      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              1 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     1      0      22
;;                                              1 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _CDS_Get                                              8     6      2      24
;;                                              1 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              1 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ISR                                                  1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initial
;;   _MainT
;;     _setOverLoadtoEnable
;;     _printf
;;       _putch
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;     _CDS_Get
;;   ___lwdiv
;;   ___lwmod
;;     ___lwdiv (ARG)
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             1F0      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      B       C       2       85.7%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       3       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0      A8       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50     16      4D       6       96.3%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BITBANK1            50      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BANK1               50      0      4F       8       98.8%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BITBANK2            50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BANK2               50      0       0      10        0.0%
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
;;DATA                 0      0      AB      19        0.0%
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
;;		line 48 in file "G:\Program\PIC\7.Development\Release\Development.c"
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
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MainT_Initial
;;		_MainT
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Program\PIC\7.Development\Release\Development.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 12
; Regs used in _main: [allreg]
	line	49
	
l4380:	
;Development.c: 49: MainT_Initial();
	fcall	_MainT_Initial
	line	50
	
l4382:	
;Development.c: 50: ; OSCCON=0x78; ; TRISA=0b00001001;; TRISB=0b00000000;; TRISC=0b00000000;; LATA=0b00000000;; LATB=0b00000000;; LATC=0b00000000;; ANSELA=0b00000001;; ANSELB=0b00000000;; ANSELC=0b00000000;; PORTA=0b00001001;; PORTB=0b00000000;; PORTC=0b00000000;; ;; ; 
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	
l4384:	
	movlw	(09h)
	movwf	(140)^080h	;volatile
	
l4386:	
	clrf	(141)^080h	;volatile
	
l4388:	
	clrf	(142)^080h	;volatile
	
l4390:	
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	
l4392:	
	clrf	(269)^0100h	;volatile
	
l4394:	
	clrf	(270)^0100h	;volatile
	
l4396:	
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	
l4398:	
	clrf	(397)^0180h	;volatile
	
l4400:	
	clrf	(398)^0180h	;volatile
	
l4402:	
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	
l4404:	
	clrf	(13)	;volatile
	
l4406:	
	clrf	(14)	;volatile
	
l4408:	
	nop
	
l4410:	
	movlw	(_VarTimer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Timer1)
	
l4412:	
	movlw	(041h)
	movwf	(24)	;volatile
	
l4414:	
	movlw	(0FAh)
	movwf	(23)	;volatile
	
l4416:	
	movlw	(024h)
	movwf	(22)	;volatile
	
l4418:	
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7
	
l4420:	
	bsf	(94/8),(94)&7
	
l4422:	
	bsf	(95/8),(95)&7
	
l4424:	
	movlw	(0F2h)
	movwf	(158)^080h	;volatile
	
l4426:	
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	
l4428:	
	nop
	
l4430:	
	nop
	
l4432:	
	movlw	(_VarUart)&0ffh
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Uart)
	
l4434:	
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7
	
l4436:	
	bsf	(1142/8)^080h,(1142)&7
	
l4438:	
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	
l4440:	
	clrf	(412)^0180h	;volatile
	
l4442:	
	bcf	(3323/8)^0180h,(3323)&7
	
l4444:	
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	
l4446:	
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	
l4448:	
	bcf	(3318/8)^0180h,(3318)&7
	
l4450:	
	bcf	(3310/8)^0180h,(3310)&7
	
l4452:	
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7
	
l4454:	
	bcf	(1165/8)^080h,(1165)&7
	line	51
	
l4456:	
;Development.c: 51: _nop();
	nop
	line	52
	
l4458:	
;Development.c: 52: _nop();
	nop
	line	53
	
l4460:	
;Development.c: 53: _nop();
	nop
	line	54
	
l4462:	
;Development.c: 54: _nop();
	nop
	line	55
	
l4464:	
;Development.c: 55: _nop();
	nop
	line	56
	
l4466:	
;Development.c: 56: _nop();
	nop
	line	57
	
l4468:	
;Development.c: 57: _nop();
	nop
	line	59
	
l4470:	
;Development.c: 59: _nop();
	nop
	line	60
	
l4472:	
;Development.c: 60: Segment=&VarSegment; Segment->Enable=1; Segment->Ary=1; ;;
	movlw	(_VarSegment)&0ffh
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Segment)
	
l4474:	
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l4476:	
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	goto	l4478
	line	61
;Development.c: 61: while(1)
	
l1063:	
	line	63
	
l4478:	
;Development.c: 62: {
;Development.c: 63: if(TMain->PowerON == 1)
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3201
	goto	u3200
u3201:
	goto	l4482
u3200:
	line	65
	
l4480:	
;Development.c: 64: {
;Development.c: 65: _nop();
	nop
	line	66
;Development.c: 66: _nop();
	nop
	line	67
;Development.c: 67: _nop();
	nop
	goto	l4482
	line	68
	
l1064:	
	line	70
	
l4482:	
;Development.c: 68: }
;Development.c: 70: if(TMain->T1_Timerout == 1)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u3211
	goto	u3210
u3211:
	goto	l4478
u3210:
	line	72
	
l4484:	
;Development.c: 71: {
;Development.c: 72: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	73
	
l4486:	
;Development.c: 73: MainT();
	fcall	_MainT
	line	74
	
l4488:	
;Development.c: 74: if(TMain->PowerON == 1)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3221
	goto	u3220
u3221:
	goto	l4478
u3220:
	line	76
	
l4490:	
;Development.c: 75: {
;Development.c: 76: _nop();
	nop
	line	77
;Development.c: 77: _nop();
	nop
	line	78
;Development.c: 78: _nop();
	nop
	line	80
;Development.c: 80: _nop();
	nop
	line	82
;Development.c: 82: _nop();
	nop
	line	85
;Development.c: 85: _nop();
	nop
	line	86
;Development.c: 86: _nop();
	nop
	line	87
	
l4492:	
;Development.c: 87: if(Segment->Enable) { if(Segment->Set) { Segment->Set=0; Segment->GO=1; if(1) { Segment->Num[0] = Segment->Data & 0x000f; Segment->Num[1] = (Segment->Data>>4) & 0x000f; Segment->Num[2] = (Segment->Data>>8) & 0x000f; Segment->Num[3] = (Segment->Data>>
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3231
	goto	u3230
u3231:
	goto	l4478
u3230:
	
l4494:	
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u3241
	goto	u3240
u3241:
	goto	l1068
u3240:
	
l4496:	
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l4498:	
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	
l4500:	
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_main+0)+0
	moviw	[1]fsr1
	movwf	(??_main+0)+0+1
	movlw	04h
u3255:
	lsrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	decfsz	wreg,f
	goto	u3255
	movf	0+(??_main+0)+0,w
	andlw	0Fh
	movwf	(??_main+2)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+2)+0,w
	movwf	indf1
	
l4502:	
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_main+0)+0
	moviw	[1]fsr1
	movwf	(??_main+0)+0+1
	movf	1+(??_main+0)+0,w
	andlw	0Fh
	movwf	(??_main+2)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+2)+0,w
	movwf	indf1
	
l4504:	
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_main+0)+0
	moviw	[1]fsr1
	movwf	(??_main+0)+0+1
	movlw	0Ch
u3265:
	lsrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	decfsz	wreg,f
	goto	u3265
	movf	0+(??_main+0)+0,w
	andlw	0Fh
	movwf	(??_main+2)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+2)+0,w
	movwf	indf1
	goto	l4518
	
l1069:	
	goto	l4518
	
l4506:	
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_main+0)+0
	moviw	[1]fsr1
	movwf	(??_main+0)+0+1
	movlw	high(02710h)
	subwf	1+(??_main+0)+0,w
	movlw	low(02710h)
	skipnz
	subwf	0+(??_main+0)+0,w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l4514
u3270:
	
l4508:	
	movf	(_Segment),w
	addlw	01Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l4512
	
l1074:	
	
l4510:	
	movlw	(010h)
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	01Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addlw	011h
	addwf	(_Segment),w
	movwf	(??_main+1)+0
	movf	0+(??_main+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	01Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	addwf	indf1,f
	goto	l4512
	
l1073:	
	
l4512:	
	movf	(_Segment),w
	addlw	01Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(04h)
	subwf	indf1,w
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l4510
u3280:
	goto	l4518
	
l1075:	
	goto	l4518
	
l1072:	
	
l4514:	
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___lwdiv)+02h
	moviw	[1]fsr1
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___lwmod)+02h
	moviw	[1]fsr1
	movwf	1+(?___lwmod)+02h
	fcall	___lwmod
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(0+(?___lwmod)),w
	movwi	[0]fsr1
	movf	(1+(?___lwmod)),w
	movwi	[1]fsr1
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___lwdiv)+02h
	moviw	[1]fsr1
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___lwmod)+02h
	moviw	[1]fsr1
	movwf	1+(?___lwmod)+02h
	fcall	___lwmod
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(0+(?___lwmod)),w
	movwi	[0]fsr1
	movf	(1+(?___lwmod)),w
	movwi	[1]fsr1
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___lwdiv)+02h
	moviw	[1]fsr1
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___lwmod)+02h
	moviw	[1]fsr1
	movwf	1+(?___lwmod)+02h
	fcall	___lwmod
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(0+(?___lwmod)),w
	movwi	[0]fsr1
	movf	(1+(?___lwmod)),w
	movwi	[1]fsr1
	
l4516:	
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	goto	l4518
	
l1076:	
	goto	l4518
	
l1071:	
	goto	l4518
	
l1070:	
	
l4518:	
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3291
	goto	u3290
u3291:
	goto	l4522
u3290:
	
l4520:	
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	goto	l1068
	
l1077:	
	
l4522:	
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3301
	goto	u3300
u3301:
	goto	l4526
u3300:
	
l4524:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	goto	l1068
	
l1079:	
	
l4526:	
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3311
	goto	u3310
u3311:
	goto	l4530
u3310:
	
l4528:	
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	goto	l1068
	
l1081:	
	
l4530:	
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l1068
	
l1082:	
	goto	l1068
	
l1080:	
	goto	l1068
	
l1078:	
	
l1068:	
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u3321
	goto	u3320
u3321:
	goto	l4478
u3320:
	
l4532:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	addwf	indf1,f
	
l4534:	
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l4478
u3330:
	
l4536:	
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	
l4538:	
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	andwf	(12),f	;volatile
	
l4540:	
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l4544
u3340:
	
l4542:	
	bsf	(100/8),(100)&7
	goto	l4556
	
l1085:	
	
l4544:	
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l4548
u3350:
	
l4546:	
	bsf	(101/8),(101)&7
	goto	l4556
	
l1087:	
	
l4548:	
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l4552
u3360:
	
l4550:	
	bsf	(102/8),(102)&7
	goto	l4556
	
l1089:	
	
l4552:	
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l4556
u3370:
	
l4554:	
	bsf	(103/8),(103)&7
	goto	l4556
	
l1091:	
	goto	l4556
	
l1090:	
	goto	l4556
	
l1088:	
	goto	l4556
	
l1086:	
	
l4556:	
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addlw	011h
	addwf	(_Segment),w
	movwf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addwf	(_Segment),w
	movwf	(??_main+1)+0
	movf	0+(??_main+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	
l4558:	
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
	goto	u3381
	goto	u3380
u3381:
	goto	l4562
u3380:
	
l4560:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	addwf	indf1,f
	goto	l4478
	
l1092:	
	
l4562:	
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l4478
	
l1093:	
	goto	l4478
	
l1084:	
	goto	l4478
	
l1083:	
	goto	l4478
	
l1067:	
	goto	l4478
	line	88
	
l1066:	
	goto	l4478
	line	89
	
l1065:	
	goto	l4478
	line	90
	
l1094:	
	line	61
	goto	l4478
	
l1095:	
	line	91
	
l1096:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_MainT
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:

;; *************** function _MainT *****************
;; Defined at:
;;		line 101 in file "G:\Program\PIC\7.Development\Release\Development.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setOverLoadtoEnable
;;		_printf
;;		_CDS_Get
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text354
	file	"G:\Program\PIC\7.Development\Release\Development.c"
	line	101
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 12
; Regs used in _MainT: [allreg]
	line	103
	
l4326:	
;Development.c: 103: if(TMain->PowerON == 0)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u3131
	goto	u3130
u3131:
	goto	l4342
u3130:
	line	105
	
l4328:	
;Development.c: 104: {
;Development.c: 105: TMain->PowerCount++;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	106
	
l4330:	
;Development.c: 106: if(TMain->PowerCount == 2000)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u3145
	moviw	[1]fsr1
	xorlw	high(07D0h)
u3145:
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l1113
u3140:
	line	108
	
l4332:	
;Development.c: 107: {
;Development.c: 108: TMain->PowerCount=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	109
;Development.c: 109: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	111
	
l4334:	
;Development.c: 111: _nop();
	nop
	line	112
	
l4336:	
;Development.c: 112: _nop();
	nop
	line	113
	
l4338:	
;Development.c: 113: _nop();
	nop
	line	114
	
l4340:	
;Development.c: 114: setOverLoadtoEnable();
	fcall	_setOverLoadtoEnable
	goto	l1113
	line	115
	
l1103:	
	line	116
;Development.c: 115: }
;Development.c: 116: }
	goto	l1113
	line	117
	
l1102:	
	line	119
	
l4342:	
;Development.c: 117: else
;Development.c: 118: {
;Development.c: 119: TMain->Count1++;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	120
	
l4344:	
;Development.c: 120: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u3155
	moviw	[1]fsr1
	xorlw	high(03E8h)
u3155:
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l4358
u3150:
	line	122
	
l4346:	
;Development.c: 123: if(1)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	125
	
l4348:	
;Development.c: 124: {
;Development.c: 125: TMain->Count++;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	126
	
l4350:	
;Development.c: 126: Segment->Set=1; Segment->Data=TMain->Count; ;;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	
l4352:	
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_MainT+0)+0
	moviw	[1]fsr1
	movwf	(??_MainT+0)+0+1
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_MainT+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_MainT+0)+0,w
	movwi	[1]fsr1
	line	128
	
l4354:	
;Development.c: 128: printf("%d",TMain->Count);
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(?_printf)
	moviw	[1]fsr1
	movwf	(?_printf+1)
	movlw	(STR_1|8000h)&0ffh
	fcall	_printf
	line	129
	
l4356:	
;Development.c: 129: RA1=~RA1;
	movlw	1<<((97)&7)
	movlb 0	; select bank0
	xorwf	((97)/8),f
	goto	l4358
	line	130
	
l1106:	
	goto	l4358
	line	131
	
l1105:	
	line	132
	
l4358:	
;Development.c: 130: }
;Development.c: 131: }
;Development.c: 132: TMain->Count2++;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	133
	
l4360:	
;Development.c: 133: if(TMain->Count2 == 200)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0C8h)
	skipz
	goto	u3165
	moviw	[1]fsr1
	xorlw	high(0C8h)
u3165:
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l1113
u3160:
	line	135
	
l4362:	
;Development.c: 134: {
;Development.c: 135: TMain->Count2=0;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	136
;Development.c: 136: if(0)
	goto	l1113
	line	138
	
l4364:	
;Development.c: 137: {
;Development.c: 138: if(TMain->Flag == 0)
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u3171
	goto	u3170
u3171:
	goto	l4376
u3170:
	line	140
	
l4366:	
;Development.c: 139: {
;Development.c: 140: if(CDS_Get()<=0x40)
	fcall	_CDS_Get
	movf	(1+(?_CDS_Get)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(041h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3185
	movlw	low(041h)
	subwf	(0+(?_CDS_Get)),w
u3185:

	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l1113
u3180:
	line	142
	
l4368:	
;Development.c: 141: {
;Development.c: 142: TMain->Flag=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	143
	
l4370:	
;Development.c: 143: TMain->Count++;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	144
	
l4372:	
;Development.c: 144: Segment->Set=1; Segment->Data=TMain->Count; ;;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	
l4374:	
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_MainT+0)+0
	moviw	[1]fsr1
	movwf	(??_MainT+0)+0+1
	movf	(_Segment),w
	addlw	01Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_MainT+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_MainT+0)+0,w
	movwi	[1]fsr1
	goto	l1113
	line	145
	
l1110:	
	line	146
;Development.c: 145: }
;Development.c: 146: }
	goto	l1113
	line	147
	
l1109:	
	line	149
	
l4376:	
;Development.c: 147: else
;Development.c: 148: {
;Development.c: 149: if(CDS_Get()>=0x80)
	fcall	_CDS_Get
	movf	(1+(?_CDS_Get)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(080h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3195
	movlw	low(080h)
	subwf	(0+(?_CDS_Get)),w
u3195:

	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l1113
u3190:
	line	150
	
l4378:	
;Development.c: 150: TMain->Flag=0;
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	goto	l1113
	
l1112:	
	goto	l1113
	line	151
	
l1111:	
	goto	l1113
	line	152
	
l1108:	
	goto	l1113
	line	153
	
l1107:	
	goto	l1113
	line	154
	
l1104:	
	line	155
	
l1113:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_printf
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  f               1   10[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(3), 
;;  _val            4   12[BANK0 ] struct .
;;  c               1   16[BANK0 ] char 
;;  prec            1   11[BANK0 ] char 
;;  flag            1    9[BANK0 ] unsigned char 
;;  ap              1    8[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text355
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 12
; Regs used in _printf: [wreg-status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	movlb 0	; select bank0
	movwf	(printf@f)
	
l4278:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l4324
	
l2217:	
	line	542
	
l4280:	
	movf	(printf@c),w
	xorlw	025h&0ffh
	skipnz
	goto	u3051
	goto	u3050
u3051:
	goto	l2218
u3050:
	line	545
	
l4282:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l4324
	line	547
	
l2218:	
	line	552
	clrf	(printf@flag)
	line	638
	goto	l4286
	line	640
	
l2220:	
	line	641
	goto	l2235
	line	700
	
l2222:	
	goto	l4288
	line	701
	
l2223:	
	line	702
	goto	l4288
	line	805
	
l2225:	
	line	816
	goto	l4324
	line	825
	
l4284:	
	goto	l4288
	line	638
	
l2219:	
	
l4286:	
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
	goto	l2235
	xorlw	100^0	; case 100
	skipnz
	goto	l4288
	xorlw	105^100	; case 105
	skipnz
	goto	l4288
	goto	l4324
	opt asmopt_on

	line	825
	
l2224:	
	line	1254
	
l4288:	
	movf	(printf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(printf@_val)
	moviw	[1]fsr1
	movwf	(printf@_val+1)
	
l4290:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1256
	
l4292:	
	btfss	(printf@_val+1),7
	goto	u3061
	goto	u3060
u3061:
	goto	l4298
u3060:
	line	1257
	
l4294:	
	movlw	(03h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	iorwf	(printf@flag),f
	line	1258
	
l4296:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	l4298
	line	1259
	
l2226:	
	line	1300
	
l4298:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l4300:	
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l4304
u3070:
	goto	l4312
	
l4302:	
	goto	l4312
	line	1301
	
l2227:	
	
l4304:	
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
	goto	u3085
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u3085:
	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l4308
u3080:
	goto	l4312
	line	1302
	
l4306:	
	goto	l4312
	
l2229:	
	line	1300
	
l4308:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l4310:	
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l4304
u3090:
	goto	l4312
	
l2228:	
	line	1433
	
l4312:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l4316
u3100:
	line	1434
	
l4314:	
	movlw	(02Dh)
	fcall	_putch
	goto	l4316
	
l2230:	
	line	1467
	
l4316:	
	movlb 0	; select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1469
	goto	l4322
	
l2232:	
	line	1484
	
l4318:	
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
	movf	(1+(?___lwdiv)),w
	movlb 0	; select bank0
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
	
l4320:	
	movf	(printf@c),w
	fcall	_putch
	goto	l4322
	line	1517
	
l2231:	
	line	1469
	
l4322:	
	movlw	(-1)
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1&0ffh
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l4318
u3110:
	goto	l4324
	
l2233:	
	goto	l4324
	line	1525
	
l2216:	
	line	540
	
l4324:	
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
	goto	u3121
	goto	u3120
u3121:
	goto	l4280
u3120:
	goto	l2235
	
l2234:	
	goto	l2235
	line	1527
	
l2221:	
	line	1533
;	Return value of _printf is never used
	
l2235:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_setOverLoadtoEnable
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _setOverLoadtoEnable *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\Source_File\OverLoad_A.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text356
	file	"G:\Program\PIC\Source_File\OverLoad_A.c"
	line	27
	global	__size_of_setOverLoadtoEnable
	__size_of_setOverLoadtoEnable	equ	__end_of_setOverLoadtoEnable-_setOverLoadtoEnable
	
_setOverLoadtoEnable:	
	opt	stack 13
; Regs used in _setOverLoadtoEnable: []
	line	28
	
l3952:	
;OverLoad_A.c: 28: _nop();
	nop
	line	29
	
l2196:	
	return
	opt stack 0
GLOBAL	__end_of_setOverLoadtoEnable
	__end_of_setOverLoadtoEnable:
;; =============== function _setOverLoadtoEnable ends ============

	signat	_setOverLoadtoEnable,88
	global	___lwmod
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       4       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text357
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 14
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4256:	
	movlb 0	; select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2991
	goto	u2990
u2991:
	goto	l4274
u2990:
	line	9
	
l4258:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l4264
	
l2262:	
	line	11
	
l4260:	
	movlw	01h
	
u3005:
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	decfsz	wreg,f
	goto	u3005
	line	12
	
l4262:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l4264
	line	13
	
l2261:	
	line	10
	
l4264:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l4260
u3010:
	goto	l4266
	
l2263:	
	goto	l4266
	line	14
	
l2264:	
	line	15
	
l4266:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3025
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3025:
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l4270
u3020:
	line	16
	
l4268:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	goto	l4270
	
l2265:	
	line	17
	
l4270:	
	movlw	01h
	
u3035:
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	decfsz	wreg,f
	goto	u3035
	line	18
	
l4272:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l4266
u3040:
	goto	l4274
	
l2266:	
	goto	l4274
	line	19
	
l2260:	
	line	20
	
l4274:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l2267
	
l4276:	
	line	21
	
l2267:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    1[COMMON] unsigned int 
;;  dividend        2    3[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 14
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3904:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3906:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2521
	goto	u2520
u2521:
	goto	l3926
u2520:
	line	11
	
l3908:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3914
	
l2252:	
	line	13
	
l3910:	
	movlw	01h
	
u2535:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2535
	line	14
	
l3912:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3914
	line	15
	
l2251:	
	line	12
	
l3914:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l3910
u2540:
	goto	l3916
	
l2253:	
	goto	l3916
	line	16
	
l2254:	
	line	17
	
l3916:	
	movlw	01h
	
u2555:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u2555
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2565
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2565:
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l3922
u2560:
	line	19
	
l3918:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l3920:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3922
	line	21
	
l2255:	
	line	22
	
l3922:	
	movlw	01h
	
u2575:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u2575
	line	23
	
l3924:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3916
u2580:
	goto	l3926
	
l2256:	
	goto	l3926
	line	24
	
l2250:	
	line	25
	
l3926:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2257
	
l3928:	
	line	26
	
l2257:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_putch
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _putch *****************
;; Defined at:
;;		line 172 in file "G:\Program\PIC\7.Development\Release\Development.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text359
	file	"G:\Program\PIC\7.Development\Release\Development.c"
	line	172
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 12
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	174
	
l3896:	
;Development.c: 174: while(!TXIF)
	goto	l1121
	
l1122:	
	line	175
;Development.c: 175: continue;
	
l1121:	
	line	174
	movlb 0	; select bank0
	btfss	(140/8),(140)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1121
u2510:
	goto	l3898
	
l1123:	
	line	176
	
l3898:	
;Development.c: 176: TXREG = byte;
	movf	(putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	177
	
l1124:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_CDS_Get
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _CDS_Get *****************
;; Defined at:
;;		line 194 in file "G:\Program\PIC\7.Development\Release\Development.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    7[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text360
	file	"G:\Program\PIC\7.Development\Release\Development.c"
	line	194
	global	__size_of_CDS_Get
	__size_of_CDS_Get	equ	__end_of_CDS_Get-_CDS_Get
	
_CDS_Get:	
	opt	stack 13
; Regs used in _CDS_Get: [wreg+status,2+status,0+btemp+1]
	line	195
	
l3868:	
;Development.c: 195: int i=0;
	clrf	(CDS_Get@i)
	clrf	(CDS_Get@i+1)
	line	196
	
l3870:	
;Development.c: 196: ADCON0=0x01;
	movlw	(01h)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	198
	
l3872:	
;Development.c: 198: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7
	line	199
;Development.c: 199: while(GO_nDONE);
	goto	l1136
	
l1137:	
	
l1136:	
	btfsc	(1257/8)^080h,(1257)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l1136
u2470:
	goto	l3874
	
l1138:	
	line	200
	
l3874:	
;Development.c: 200: i=((ADRESH*256)+ADRESL);
	movf	(155)^080h,w	;volatile
	movwf	(??_CDS_Get+0)+0
	clrf	(??_CDS_Get+0)+0+1
	movf	(156)^080h,w	;volatile
	movwf	(??_CDS_Get+2)+0
	clrf	(??_CDS_Get+2)+0+1
	movf	(??_CDS_Get+2)+0,w
	movwf	(??_CDS_Get+2)+1
	clrf	(??_CDS_Get+2)+0
	movf	0+(??_CDS_Get+0)+0,w
	addwf	0+(??_CDS_Get+2)+0,w
	movwf	(CDS_Get@i)
	movf	1+(??_CDS_Get+0)+0,w
	addwfc	1+(??_CDS_Get+2)+0,w
	movwf	1+(CDS_Get@i)
	line	203
	
l3876:	
;Development.c: 203: return i;
	movf	(CDS_Get@i+1),w
	clrf	(?_CDS_Get+1)
	addwf	(?_CDS_Get+1)
	movf	(CDS_Get@i),w
	clrf	(?_CDS_Get)
	addwf	(?_CDS_Get)

	goto	l1139
	
l3878:	
	line	204
	
l1139:	
	return
	opt stack 0
GLOBAL	__end_of_CDS_Get
	__end_of_CDS_Get:
;; =============== function _CDS_Get ends ============

	signat	_CDS_Get,90
	global	_MainT_Initial
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 95 in file "G:\Program\PIC\7.Development\Release\Development.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text361
	file	"G:\Program\PIC\7.Development\Release\Development.c"
	line	95
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 14
; Regs used in _MainT_Initial: [wreg]
	line	96
	
l3866:	
;Development.c: 96: TMain = &VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_TMain)
	line	97
;Development.c: 97: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	98
	
l1099:	
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
;;		line 158 in file "G:\Program\PIC\7.Development\Release\Development.c"
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"G:\Program\PIC\7.Development\Release\Development.c"
	line	158
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 12
; Regs used in _ISR: [wreg+fsr1l-status,0]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	159
	
i1l3880:	
;Development.c: 159: _nop();
	nop
	line	161
;Development.c: 161: _nop();
	nop
	line	163
;Development.c: 163: if(TMR1IE && TMR1IF) { TMR1H=((65536-1500)/256); TMR1L=((65536-1500)%256); TMR1IF=0; Timer1->Count++; if(Timer1->Count == 10) { Timer1->Count=0; TMain->T1_Timerout=1; } };
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l3894
u248_20:
	
i1l3882:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l3894
u249_20:
	
i1l3884:	
	movlw	(0FAh)
	movwf	(23)	;volatile
	movlw	(024h)
	movwf	(22)	;volatile
	
i1l3886:	
	bcf	(136/8),(136)&7
	
i1l3888:	
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
i1l3890:	
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0Ah)
	skipz
	goto	u250_25
	moviw	[1]fsr1
	xorlw	high(0Ah)
u250_25:
	skipz
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l3894
u250_20:
	
i1l3892:	
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	goto	i1l3894
	
i1l1117:	
	goto	i1l3894
	
i1l1116:	
	line	167
	
i1l3894:	
;Development.c: 167: _nop();
	nop
	line	169
	
i1l1118:	
	movf	(??_ISR+0),w
	movlb 0	; select bank0
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	intentry
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
