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
	FNCALL	_main,_RF_Initialization
	FNCALL	_main,_CC2500_PowerOnInitial
	FNCALL	_main,_MainT
	FNCALL	_main,_RF_Main
	FNCALL	_main,_I2C_Main
	FNCALL	_RF_Main,_setRF_Main
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_setRF_Main,_RfPointSelect
	FNCALL	_setRF_Main,_RF_RxDisable
	FNCALL	_setRF_Main,_CC2500_RxData
	FNCALL	_setRF_Main,_I2C_SetData
	FNCALL	_setRF_Main,_CC2500_TxData
	FNCALL	_setRF_Main,_CC2500_WriteCommand
	FNCALL	_setRF_Main,_setINT_GO
	FNCALL	_setRF_Enable,_RfPointSelect
	FNCALL	_setRF_Enable,_CC2500_WriteCommand
	FNCALL	_setRF_Enable,_RF_RxDisable
	FNCALL	_CC2500_PowerOnInitial,_CC2500_PowerRST
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitSetREG
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitPATable
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearTXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearRXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_FrequencyCabr
	FNCALL	_CC2500_PowerOnInitial,_CC2500_SIDLEMode
	FNCALL	_RF_RxDisable,_RfPointSelect
	FNCALL	_RF_RxDisable,_CC2500_WriteCommand
	FNCALL	_RF_RxDisable,_setINT_GO
	FNCALL	_CC2500_SIDLEMode,_CC2500_WriteCommand
	FNCALL	_CC2500_FrequencyCabr,_CC2500_WriteCommand
	FNCALL	_CC2500_FrequencyCabr,_DelayTime_1us
	FNCALL	_CC2500_ClearRXFIFO,_CC2500_WriteCommand
	FNCALL	_CC2500_ClearTXFIFO,_CC2500_WriteCommand
	FNCALL	_CC2500_InitPATable,_CC2500_WriteREG
	FNCALL	_CC2500_InitSetREG,_CC2500_WriteREG
	FNCALL	_CC2500_RxData,_CC2500_ReadStatus
	FNCALL	_CC2500_RxData,_CC2500_WriteByte
	FNCALL	_CC2500_RxData,_CC2500_ReadByte
	FNCALL	_CC2500_RxData,_CC2500_WriteCommand
	FNCALL	_CC2500_RxData,_setRF_RxStatus
	FNCALL	_CC2500_TxData,_CC2500_WriteByte
	FNCALL	_CC2500_TxData,_CC2500_WriteCommand
	FNCALL	_CC2500_WriteREG,_CC2500_WriteByte
	FNCALL	_CC2500_PowerRST,_DelayTime_1us
	FNCALL	_CC2500_PowerRST,_CC2500_WriteByte
	FNCALL	_setRF_RxStatus,_RfPointSelect
	FNCALL	_CC2500_ReadStatus,_CC2500_WriteByte
	FNCALL	_CC2500_ReadStatus,_CC2500_ReadByte
	FNCALL	_CC2500_WriteCommand,_CC2500_WriteByte
	FNCALL	_I2C_Main,_I2C_Slave_Mode
	FNCALL	_I2C_Main,_I2C_SetData
	FNCALL	_RF_Initialization,_setRF_Initialization
	FNCALL	_Mcu_Initial,_IO_Set
	FNCALL	_Mcu_Initial,_TMR1_Set
	FNCALL	_Mcu_Initial,_INT_Set
	FNCALL	_Mcu_Initial,_I2C_Set
	FNROOT	_main
	FNCALL	_ISR,_TMR1_ISR
	FNCALL	_ISR,_INT_ISR
	FNCALL	_ISR,_I2C_ISR
	FNCALL	_INT_ISR,_setRF_ReceiveGO
	FNCALL	_setRF_ReceiveGO,i1_RfPointSelect
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"I:\Program\PIC\0.myFile\myDevelopment-BH\Release\../Release/myDevelopment-B.h"
	line	230

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
	global	_CC2500_registers_address
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
	global    __stringtab
__stringtab:
	retlw	0
psect	strings
	file	"I:\Program\PIC\Header_File\CC2500_B1.h"
	line	218
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
	file	"I:\Program\PIC\Header_File\CC2500_B1.h"
	line	161
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
	global	_CC2500_patable_vaule
psect	strings
	file	"I:\Program\PIC\Header_File\CC2500_B1.h"
	line	292
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
	global	_CC2500_patable_vaule
	global	_RF_Data
	global	_RF_Count
	global	_CRC
	global	_I2C
	global	_RSSI
	global	_Rx_Length
	global	_SPI0Buffer
	global	_Tx_Length
	global	_r_address
	global	_r_data
	global	_s_data
	global	_RF
	global	_RFSW
	global	_Timer1
	global	_CC2500_Enable
	global	_Receive_GO
	global	_Receive_OK
	global	_RxStatus
	global	_Transceive_GO
	global	_Transceive_OK
	global	_TxStatus
	global	_VarTMain
	global	_VarTimer1
	global	_RF1
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
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RA0
_RA0	set	96
	global	_RA1
_RA1	set	97
	global	_RB0
_RB0	set	104
	global	_RB1
_RB1	set	105
	global	_RB2
_RB2	set	106
	global	_RB3
_RB3	set	107
	global	_RB5
_RB5	set	109
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
	global	_AHEN
_AHEN	set	4281
	global	_BF
_BF	set	4256
	global	_CKP
_CKP	set	4268
	global	_DHEN
_DHEN	set	4280
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
	global	_WPUB0
_WPUB0	set	4200
	file	"myDevelopment-BH.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_CC2500_Enable:
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

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_RF:
       ds      1

_RFSW:
       ds      1

_Timer1:
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

_I2C:
       ds      1

_RSSI:
       ds      1

_Rx_Length:
       ds      1

_SPI0Buffer:
       ds      1

_Tx_Length:
       ds      1

_r_address:
       ds      1

_r_data:
       ds      1

_s_data:
       ds      1

_VarTMain:
       ds      15

_VarTimer1:
       ds      3

_RF1:
       ds      2

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"I:\Program\PIC\0.myFile\myDevelopment-BH\Release\../Release/myDevelopment-B.h"
	line	230
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
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	034h
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
	global	?_RF_Initialization
?_RF_Initialization:	; 0 bytes @ 0x0
	global	?_CC2500_PowerOnInitial
?_CC2500_PowerOnInitial:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_RF_Main
?_RF_Main:	; 0 bytes @ 0x0
	global	?_I2C_Main
?_I2C_Main:	; 0 bytes @ 0x0
	global	?_CC2500_WriteByte
?_CC2500_WriteByte:	; 0 bytes @ 0x0
	global	?_CC2500_WriteCommand
?_CC2500_WriteCommand:	; 0 bytes @ 0x0
	global	?_CC2500_ReadStatus
?_CC2500_ReadStatus:	; 0 bytes @ 0x0
	global	?_CC2500_ReadByte
?_CC2500_ReadByte:	; 0 bytes @ 0x0
	global	?_CC2500_PowerRST
?_CC2500_PowerRST:	; 0 bytes @ 0x0
	global	?_CC2500_InitSetREG
?_CC2500_InitSetREG:	; 0 bytes @ 0x0
	global	?_CC2500_InitPATable
?_CC2500_InitPATable:	; 0 bytes @ 0x0
	global	?_CC2500_ClearTXFIFO
?_CC2500_ClearTXFIFO:	; 0 bytes @ 0x0
	global	?_CC2500_ClearRXFIFO
?_CC2500_ClearRXFIFO:	; 0 bytes @ 0x0
	global	?_CC2500_FrequencyCabr
?_CC2500_FrequencyCabr:	; 0 bytes @ 0x0
	global	?_CC2500_SIDLEMode
?_CC2500_SIDLEMode:	; 0 bytes @ 0x0
	global	?_setRF_Initialization
?_setRF_Initialization:	; 0 bytes @ 0x0
	global	?_setRF_Main
?_setRF_Main:	; 0 bytes @ 0x0
	global	?_RF_RxDisable
?_RF_RxDisable:	; 0 bytes @ 0x0
	global	?_I2C_SetData
?_I2C_SetData:	; 0 bytes @ 0x0
	global	?_setINT_GO
?_setINT_GO:	; 0 bytes @ 0x0
	global	?_IO_Set
?_IO_Set:	; 0 bytes @ 0x0
	global	?_TMR1_Set
?_TMR1_Set:	; 0 bytes @ 0x0
	global	?_INT_Set
?_INT_Set:	; 0 bytes @ 0x0
	global	?_I2C_Set
?_I2C_Set:	; 0 bytes @ 0x0
	global	?_TMR1_ISR
?_TMR1_ISR:	; 0 bytes @ 0x0
	global	??_TMR1_ISR
??_TMR1_ISR:	; 0 bytes @ 0x0
	global	?_INT_ISR
?_INT_ISR:	; 0 bytes @ 0x0
	global	?_I2C_ISR
?_I2C_ISR:	; 0 bytes @ 0x0
	global	??_I2C_ISR
??_I2C_ISR:	; 0 bytes @ 0x0
	global	?_I2C_Slave_Mode
?_I2C_Slave_Mode:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_CC2500_TxData
?_CC2500_TxData:	; 0 bytes @ 0x0
	global	?_CC2500_RxData
?_CC2500_RxData:	; 0 bytes @ 0x0
	global	?_RfPointSelect
?_RfPointSelect:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?i1_RfPointSelect
?i1_RfPointSelect:	; 0 bytes @ 0x0
	global	??i1_RfPointSelect
??i1_RfPointSelect:	; 0 bytes @ 0x0
	global	setRF_Initialization@rf
setRF_Initialization@rf:	; 1 bytes @ 0x0
	ds	1
	global	i1RfPointSelect@rf
i1RfPointSelect@rf:	; 1 bytes @ 0x1
	ds	1
	global	?_setRF_ReceiveGO
?_setRF_ReceiveGO:	; 0 bytes @ 0x2
	global	setRF_ReceiveGO@command
setRF_ReceiveGO@command:	; 1 bytes @ 0x2
	ds	1
	global	??_setRF_ReceiveGO
??_setRF_ReceiveGO:	; 0 bytes @ 0x3
	global	setRF_ReceiveGO@rf
setRF_ReceiveGO@rf:	; 1 bytes @ 0x3
	ds	1
	global	??_INT_ISR
??_INT_ISR:	; 0 bytes @ 0x4
	global	??_ISR
??_ISR:	; 0 bytes @ 0x4
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x0
	global	??_CC2500_WriteByte
??_CC2500_WriteByte:	; 0 bytes @ 0x0
	global	??_CC2500_ReadByte
??_CC2500_ReadByte:	; 0 bytes @ 0x0
	global	?_DelayTime_1us
?_DelayTime_1us:	; 0 bytes @ 0x0
	global	??_setRF_Initialization
??_setRF_Initialization:	; 0 bytes @ 0x0
	global	??_I2C_SetData
??_I2C_SetData:	; 0 bytes @ 0x0
	global	??_setINT_GO
??_setINT_GO:	; 0 bytes @ 0x0
	global	??_IO_Set
??_IO_Set:	; 0 bytes @ 0x0
	global	??_TMR1_Set
??_TMR1_Set:	; 0 bytes @ 0x0
	global	??_INT_Set
??_INT_Set:	; 0 bytes @ 0x0
	global	??_I2C_Set
??_I2C_Set:	; 0 bytes @ 0x0
	global	??_I2C_Slave_Mode
??_I2C_Slave_Mode:	; 0 bytes @ 0x0
	global	??_RfPointSelect
??_RfPointSelect:	; 0 bytes @ 0x0
	global	setINT_GO@command
setINT_GO@command:	; 1 bytes @ 0x0
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x0
	ds	1
	global	??_Mcu_Initial
??_Mcu_Initial:	; 0 bytes @ 0x1
	global	??_RF_Initialization
??_RF_Initialization:	; 0 bytes @ 0x1
	global	CC2500_WriteByte@loop_a
CC2500_WriteByte@loop_a:	; 1 bytes @ 0x1
	global	CC2500_ReadByte@loop_b
CC2500_ReadByte@loop_b:	; 1 bytes @ 0x1
	global	RfPointSelect@rf
RfPointSelect@rf:	; 1 bytes @ 0x1
	ds	1
	global	??_CC2500_WriteCommand
??_CC2500_WriteCommand:	; 0 bytes @ 0x2
	global	??_CC2500_ReadStatus
??_CC2500_ReadStatus:	; 0 bytes @ 0x2
	global	?_setRF_RxStatus
?_setRF_RxStatus:	; 0 bytes @ 0x2
	global	??_DelayTime_1us
??_DelayTime_1us:	; 0 bytes @ 0x2
	global	?_CC2500_WriteREG
?_CC2500_WriteREG:	; 0 bytes @ 0x2
	global	CC2500_WriteREG@value
CC2500_WriteREG@value:	; 1 bytes @ 0x2
	global	setRF_RxStatus@command
setRF_RxStatus@command:	; 1 bytes @ 0x2
	global	I2C_SetData@command
I2C_SetData@command:	; 1 bytes @ 0x2
	global	I2C_Slave_Mode@i
I2C_Slave_Mode@i:	; 1 bytes @ 0x2
	global	DelayTime_1us@i
DelayTime_1us@i:	; 2 bytes @ 0x2
	ds	1
	global	??_setRF_RxStatus
??_setRF_RxStatus:	; 0 bytes @ 0x3
	global	??_CC2500_WriteREG
??_CC2500_WriteREG:	; 0 bytes @ 0x3
	global	CC2500_WriteCommand@command
CC2500_WriteCommand@command:	; 1 bytes @ 0x3
	global	CC2500_ReadStatus@status_addr
CC2500_ReadStatus@status_addr:	; 1 bytes @ 0x3
	global	setRF_RxStatus@rf
setRF_RxStatus@rf:	; 1 bytes @ 0x3
	global	I2C_SetData@i
I2C_SetData@i:	; 1 bytes @ 0x3
	ds	1
	global	??_I2C_Main
??_I2C_Main:	; 0 bytes @ 0x4
	global	??_CC2500_ClearTXFIFO
??_CC2500_ClearTXFIFO:	; 0 bytes @ 0x4
	global	??_CC2500_ClearRXFIFO
??_CC2500_ClearRXFIFO:	; 0 bytes @ 0x4
	global	??_CC2500_SIDLEMode
??_CC2500_SIDLEMode:	; 0 bytes @ 0x4
	global	??_RF_RxDisable
??_RF_RxDisable:	; 0 bytes @ 0x4
	global	??_CC2500_TxData
??_CC2500_TxData:	; 0 bytes @ 0x4
	global	??_CC2500_RxData
??_CC2500_RxData:	; 0 bytes @ 0x4
	global	CC2500_WriteREG@w_addr
CC2500_WriteREG@w_addr:	; 1 bytes @ 0x4
	global	RF_RxDisable@rf
RF_RxDisable@rf:	; 1 bytes @ 0x4
	global	DelayTime_1us@j
DelayTime_1us@j:	; 2 bytes @ 0x4
	ds	1
	global	?_setRF_Enable
?_setRF_Enable:	; 0 bytes @ 0x5
	global	??_CC2500_InitSetREG
??_CC2500_InitSetREG:	; 0 bytes @ 0x5
	global	??_CC2500_InitPATable
??_CC2500_InitPATable:	; 0 bytes @ 0x5
	global	CC2500_TxData@loop_e
CC2500_TxData@loop_e:	; 1 bytes @ 0x5
	global	CC2500_RxData@loop_f
CC2500_RxData@loop_f:	; 1 bytes @ 0x5
	global	setRF_Enable@command
setRF_Enable@command:	; 1 bytes @ 0x5
	ds	1
	global	??_setRF_Enable
??_setRF_Enable:	; 0 bytes @ 0x6
	global	??_CC2500_PowerRST
??_CC2500_PowerRST:	; 0 bytes @ 0x6
	global	??_CC2500_FrequencyCabr
??_CC2500_FrequencyCabr:	; 0 bytes @ 0x6
	global	??_setRF_Main
??_setRF_Main:	; 0 bytes @ 0x6
	global	CC2500_InitSetREG@temp1
CC2500_InitSetREG@temp1:	; 1 bytes @ 0x6
	global	CC2500_InitPATable@temp
CC2500_InitPATable@temp:	; 1 bytes @ 0x6
	global	setRF_Enable@rf
setRF_Enable@rf:	; 1 bytes @ 0x6
	ds	1
	global	??_MainT
??_MainT:	; 0 bytes @ 0x7
	global	CC2500_InitSetREG@temp2
CC2500_InitSetREG@temp2:	; 1 bytes @ 0x7
	global	CC2500_InitPATable@loop_d
CC2500_InitPATable@loop_d:	; 1 bytes @ 0x7
	global	setRF_Main@rf
setRF_Main@rf:	; 1 bytes @ 0x7
	ds	1
	global	??_RF_Main
??_RF_Main:	; 0 bytes @ 0x8
	global	CC2500_InitSetREG@loop_c
CC2500_InitSetREG@loop_c:	; 1 bytes @ 0x8
	ds	1
	global	??_CC2500_PowerOnInitial
??_CC2500_PowerOnInitial:	; 0 bytes @ 0x9
	global	??_main
??_main:	; 0 bytes @ 0x9
;;Data sizes: Strings 0, constant 102, data 32, bss 122, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80      9      62
;; BANK1           80      0      32
;; BANK2           80      0      67
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           16      0       0

;;
;; Pointer list with targets:

;; Timer1	PTR struct Timer1 size(1) Largest target is 3
;;		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
;;
;; RFSW	PTR struct RFSW size(1) Largest target is 0
;;		 -> NULL(NULL[0]), 
;;
;; RF	PTR struct RF size(1) Largest target is 2
;;		 -> NULL(NULL[0]), RF1(BANK0[2]), 
;;
;; I2C	PTR struct I2C size(1) Largest target is 67
;;		 -> NULL(NULL[0]), VarI2C(BANK2[67]), 
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
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _INT_ISR->_setRF_ReceiveGO
;;   _setRF_ReceiveGO->i1_RfPointSelect
;;
;; Critical Paths under _main in BANK0
;;
;;   _RF_Main->_setRF_Main
;;   _MainT->_setRF_Enable
;;   _setRF_Main->_CC2500_RxData
;;   _setRF_Main->_CC2500_TxData
;;   _setRF_Enable->_RF_RxDisable
;;   _CC2500_PowerOnInitial->_CC2500_InitSetREG
;;   _RF_RxDisable->_CC2500_WriteCommand
;;   _CC2500_SIDLEMode->_CC2500_WriteCommand
;;   _CC2500_FrequencyCabr->_DelayTime_1us
;;   _CC2500_ClearRXFIFO->_CC2500_WriteCommand
;;   _CC2500_ClearTXFIFO->_CC2500_WriteCommand
;;   _CC2500_InitPATable->_CC2500_WriteREG
;;   _CC2500_InitSetREG->_CC2500_WriteREG
;;   _CC2500_RxData->_CC2500_ReadStatus
;;   _CC2500_RxData->_CC2500_WriteCommand
;;   _CC2500_RxData->_setRF_RxStatus
;;   _CC2500_TxData->_CC2500_WriteCommand
;;   _CC2500_WriteREG->_CC2500_WriteByte
;;   _CC2500_PowerRST->_DelayTime_1us
;;   _setRF_RxStatus->_RfPointSelect
;;   _CC2500_ReadStatus->_CC2500_WriteByte
;;   _CC2500_ReadStatus->_CC2500_ReadByte
;;   _CC2500_WriteCommand->_CC2500_WriteByte
;;   _I2C_Main->_I2C_SetData
;;   _RF_Initialization->_setRF_Initialization
;;   _Mcu_Initial->_TMR1_Set
;;   _Mcu_Initial->_I2C_Set
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
;; (0) _main                                                 0     0      0    3673
;;                      _MainT_Initial
;;                        _Mcu_Initial
;;                  _RF_Initialization
;;              _CC2500_PowerOnInitial
;;                              _MainT
;;                            _RF_Main
;;                           _I2C_Main
;; ---------------------------------------------------------------------------------
;; (1) _RF_Main                                              0     0      0    1473
;;                         _setRF_Main
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                2     2      0     384
;;                                              7 BANK0      1     1      0
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Main                                           2     2      0    1473
;;                                              6 BANK0      2     2      0
;;                      _RfPointSelect
;;                       _RF_RxDisable
;;                      _CC2500_RxData
;;                        _I2C_SetData
;;                      _CC2500_TxData
;;                _CC2500_WriteCommand
;;                          _setINT_GO
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Enable                                         2     1      1     384
;;                                              5 BANK0      2     1      1
;;                      _RfPointSelect
;;                _CC2500_WriteCommand
;;                       _RF_RxDisable
;; ---------------------------------------------------------------------------------
;; (1) _CC2500_PowerOnInitial                                0     0      0    1327
;;                    _CC2500_PowerRST
;;                  _CC2500_InitSetREG
;;                 _CC2500_InitPATable
;;                 _CC2500_ClearTXFIFO
;;                 _CC2500_ClearRXFIFO
;;               _CC2500_FrequencyCabr
;;                   _CC2500_SIDLEMode
;; ---------------------------------------------------------------------------------
;; (3) _RF_RxDisable                                         1     1      0     192
;;                                              4 BANK0      1     1      0
;;                      _RfPointSelect
;;                _CC2500_WriteCommand
;;                          _setINT_GO
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_SIDLEMode                                     0     0      0      99
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_FrequencyCabr                                 0     0      0     235
;;                _CC2500_WriteCommand
;;                      _DelayTime_1us
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_ClearRXFIFO                                   0     0      0      99
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_ClearTXFIFO                                   0     0      0      99
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_InitPATable                                   3     3      0     263
;;                                              5 BANK0      3     3      0
;;                    _CC2500_WriteREG
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_InitSetREG                                    4     4      0     328
;;                                              5 BANK0      4     4      0
;;                    _CC2500_WriteREG
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_RxData                                        2     2      0     563
;;                                              4 BANK0      2     2      0
;;                  _CC2500_ReadStatus
;;                   _CC2500_WriteByte
;;                    _CC2500_ReadByte
;;                _CC2500_WriteCommand
;;                     _setRF_RxStatus
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_TxData                                        2     2      0     235
;;                                              4 BANK0      2     2      0
;;                   _CC2500_WriteByte
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_WriteREG                                      3     2      1     130
;;                                              2 BANK0      3     2      1
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_PowerRST                                      1     1      0     204
;;                                              6 BANK0      1     1      0
;;                      _DelayTime_1us
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (4) _setRF_RxStatus                                       2     1      1      93
;;                                              2 BANK0      2     1      1
;;                      _RfPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_ReadStatus                                    2     2      0     167
;;                                              2 BANK0      2     2      0
;;                   _CC2500_WriteByte
;;                    _CC2500_ReadByte
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_WriteCommand                                  2     2      0      99
;;                                              2 BANK0      2     2      0
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Main                                             1     1      0     489
;;                     _I2C_Slave_Mode
;;                        _I2C_SetData
;; ---------------------------------------------------------------------------------
;; (1) _RF_Initialization                                    0     0      0       0
;;               _setRF_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initial                                          0     0      0       0
;;                             _IO_Set
;;                           _TMR1_Set
;;                            _INT_Set
;;                            _I2C_Set
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Slave_Mode                                       3     3      0     198
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Set                                              1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _INT_Set                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _TMR1_Set                                             1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _IO_Set                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _setINT_GO                                            1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_SetData                                          4     4      0     291
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Initialization                                 2     2      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (5) _RfPointSelect                                        2     2      0      31
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayTime_1us                                        6     4      2     136
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_ReadByte                                      2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_WriteByte                                     2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ISR                                                  1     1      0     117
;;                                              4 COMMON     1     1      0
;;                           _TMR1_ISR
;;                            _INT_ISR
;;                            _I2C_ISR
;; ---------------------------------------------------------------------------------
;; (7) _INT_ISR                                              0     0      0     117
;;                    _setRF_ReceiveGO
;; ---------------------------------------------------------------------------------
;; (8) _setRF_ReceiveGO                                      2     1      1     117
;;                                              2 COMMON     2     1      1
;;                    i1_RfPointSelect
;; ---------------------------------------------------------------------------------
;; (9) i1_RfPointSelect                                      2     2      0      73
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (7) _I2C_ISR                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (7) _TMR1_ISR                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 9
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initial
;;   _Mcu_Initial
;;     _IO_Set
;;     _TMR1_Set
;;     _INT_Set
;;     _I2C_Set
;;   _RF_Initialization
;;     _setRF_Initialization
;;   _CC2500_PowerOnInitial
;;     _CC2500_PowerRST
;;       _DelayTime_1us
;;       _CC2500_WriteByte
;;     _CC2500_InitSetREG
;;       _CC2500_WriteREG
;;         _CC2500_WriteByte
;;     _CC2500_InitPATable
;;       _CC2500_WriteREG
;;         _CC2500_WriteByte
;;     _CC2500_ClearTXFIFO
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;     _CC2500_ClearRXFIFO
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;     _CC2500_FrequencyCabr
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;       _DelayTime_1us
;;     _CC2500_SIDLEMode
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;   _MainT
;;     _setRF_Enable
;;       _RfPointSelect
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;       _RF_RxDisable
;;         _RfPointSelect
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;         _setINT_GO
;;   _RF_Main
;;     _setRF_Main
;;       _RfPointSelect
;;       _RF_RxDisable
;;         _RfPointSelect
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;         _setINT_GO
;;       _CC2500_RxData
;;         _CC2500_ReadStatus
;;           _CC2500_WriteByte
;;           _CC2500_ReadByte
;;         _CC2500_WriteByte
;;         _CC2500_ReadByte
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;         _setRF_RxStatus
;;           _RfPointSelect
;;       _I2C_SetData
;;       _CC2500_TxData
;;         _CC2500_WriteByte
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;       _setINT_GO
;;   _I2C_Main
;;     _I2C_Slave_Mode
;;     _I2C_SetData
;;
;; _ISR (ROOT)
;;   _TMR1_ISR
;;   _INT_ISR
;;     _setRF_ReceiveGO
;;       i1_RfPointSelect
;;   _I2C_ISR
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             1F0      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      5       A       2       71.4%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       D       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0      AB       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50      9      3E       6       77.5%
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
;;DATA                 0      0      B8      19        0.0%
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
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_MainT_Initial
;;		_Mcu_Initial
;;		_RF_Initialization
;;		_CC2500_PowerOnInitial
;;		_MainT
;;		_RF_Main
;;		_I2C_Main
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
	opt	stack 7
; Regs used in _main: [wreg+fsr1l-status,0+pclath+cstack]
	line	8
	
l8813:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l8815:	
;myMain.c: 9: Mcu_Initial();
	fcall	_Mcu_Initial
	line	11
	
l8817:	
;myMain.c: 10: ;;
;myMain.c: 11: RF_Initialization();
	fcall	_RF_Initialization
	line	12
	
l8819:	
;myMain.c: 12: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l8821
	line	13
;myMain.c: 13: while(1)
	
l1067:	
	line	17
	
l8821:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u5391
	goto	u5390
u5391:
	goto	l8821
u5390:
	line	19
	
l8823:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l8825:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l8827:	
;myMain.c: 21: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5401
	goto	u5400
u5401:
	goto	l8821
u5400:
	line	23
	
l8829:	
;myMain.c: 22: {
;myMain.c: 23: RF_Main();
	fcall	_RF_Main
	line	24
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	goto	l8821
	line	27
;myMain.c: 25: ;;
;myMain.c: 26: ;;
	
l1069:	
	goto	l8821
	line	28
	
l1068:	
	goto	l8821
	line	29
	
l1070:	
	line	13
	goto	l8821
	
l1071:	
	line	30
	
l1072:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RF_Main
psect	text1313,local,class=CODE,delta=2
global __ptext1313
__ptext1313:

;; *************** function _RF_Main *****************
;; Defined at:
;;		line 25 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setRF_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1313
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	25
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
	opt	stack 7
; Regs used in _RF_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	27
	
l8811:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l4399:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Main
	__end_of_RF_Main:
;; =============== function _RF_Main ends ============

	signat	_RF_Main,88
	global	_MainT
psect	text1314,local,class=CODE,delta=2
global __ptext1314
__ptext1314:

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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setRF_Enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1314
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	42
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 7
; Regs used in _MainT: [wreg+fsr1l-status,0+pclath+cstack]
	line	45
	
l8783:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u5341
	goto	u5340
u5341:
	goto	l8793
u5340:
	line	47
	
l8785:	
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
	
l8787:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u5355
	moviw	[1]fsr1
	xorlw	high(05DCh)
u5355:
	skipz
	goto	u5351
	goto	u5350
u5351:
	goto	l1085
u5350:
	line	50
	
l8789:	
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
	line	54
	
l8791:	
;myMain.c: 54: setRF_Enable(1,1);
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l1085
	line	56
	
l1079:	
	line	57
;myMain.c: 56: }
;myMain.c: 57: }
	goto	l1085
	line	58
	
l1078:	
	line	60
	
l8793:	
;myMain.c: 58: else
;myMain.c: 59: {
;myMain.c: 60: TMain->Count1++;
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
	line	61
	
l8795:	
;myMain.c: 61: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u5365
	moviw	[1]fsr1
	xorlw	high(03E8h)
u5365:
	skipz
	goto	u5361
	goto	u5360
u5361:
	goto	l1085
u5360:
	line	63
	
l8797:	
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
	
l8799:	
;myMain.c: 64: RA0=~RA0;
	movlw	1<<((96)&7)
	xorwf	((96)/8),f
	goto	l8803
	line	73
	
l8801:	
	goto	l8803
	line	77
;myMain.c: 74: {
	
l1082:	
	line	79
	
l8803:	
;myMain.c: 77: }
;myMain.c: 79: if(TMain->Test)
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u5371
	goto	u5370
u5371:
	goto	l1085
u5370:
	line	82
	
l8805:	
;myMain.c: 80: {
;myMain.c: 81: ;;
;myMain.c: 82: I2C->Count++;
	movlw	(01h)
	movwf	(??_MainT+0)+0
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT+0)+0,w
	addwf	indf1,f
	line	83
	
l8807:	
;myMain.c: 83: if(I2C->Count==32)
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	020h&0ffh
	skipz
	goto	u5381
	goto	u5380
u5381:
	goto	l1085
u5380:
	line	85
	
l8809:	
;myMain.c: 84: {
;myMain.c: 85: I2C->Count=0;
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l1085
	line	86
	
l1084:	
	goto	l1085
	line	87
	
l1083:	
	goto	l1085
	line	100
	
l1081:	
	goto	l1085
	line	122
	
l1080:	
	line	123
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_setRF_Main
psect	text1315,local,class=CODE,delta=2
global __ptext1315
__ptext1315:

;; *************** function _setRF_Main *****************
;; Defined at:
;;		line 59 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    7[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_RfPointSelect
;;		_RF_RxDisable
;;		_CC2500_RxData
;;		_I2C_SetData
;;		_CC2500_TxData
;;		_CC2500_WriteCommand
;;		_setINT_GO
;; This function is called by:
;;		_RF_Main
;; This function uses a non-reentrant model
;;
psect	text1315
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	59
	global	__size_of_setRF_Main
	__size_of_setRF_Main	equ	__end_of_setRF_Main-_setRF_Main
	
_setRF_Main:	
	opt	stack 7
; Regs used in _setRF_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Main@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Main@rf)
	line	60
	
l8741:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf),w
	fcall	_RfPointSelect
	line	61
	
l8743:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5271
	goto	u5270
u5271:
	goto	l4425
u5270:
	line	75
	
l8745:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 75: if(RF->Key)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u5281
	goto	u5280
u5281:
	goto	l8749
u5280:
	line	77
	
l8747:	
;RF_Control_B1.c: 76: {
;RF_Control_B1.c: 77: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	78
;RF_Control_B1.c: 78: }
	goto	l4425
	line	79
	
l4415:	
	line	81
	
l8749:	
;RF_Control_B1.c: 79: else
;RF_Control_B1.c: 80: {
;RF_Control_B1.c: 81: if(RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u5291
	goto	u5290
u5291:
	goto	l8757
u5290:
	line	83
	
l8751:	
;RF_Control_B1.c: 82: {
;RF_Control_B1.c: 83: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	84
	
l8753:	
;RF_Control_B1.c: 84: CC2500_RxData();
	fcall	_CC2500_RxData
	line	86
	
l8755:	
;RF_Control_B1.c: 86: I2C_SetData(1);
	movlw	(01h)
	fcall	_I2C_SetData
	line	96
;RF_Control_B1.c: 96: }
	goto	l4425
	line	97
	
l4417:	
	line	99
	
l8757:	
;RF_Control_B1.c: 97: else
;RF_Control_B1.c: 98: {
;RF_Control_B1.c: 99: if(RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u5301
	goto	u5300
u5301:
	goto	l8773
u5300:
	line	101
	
l8759:	
;RF_Control_B1.c: 100: {
;RF_Control_B1.c: 101: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	102
	
l8761:	
;RF_Control_B1.c: 102: if(RF->Debounce == 0)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u5311
	goto	u5310
u5311:
	goto	l8769
u5310:
	line	104
	
l8763:	
;RF_Control_B1.c: 103: {
;RF_Control_B1.c: 104: RF->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setRF_Main+0)+0
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_Main+0)+0,w
	addwf	indf1,f
	line	105
	
l8765:	
;RF_Control_B1.c: 105: if(RF->DebounceTime == 25)
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	019h&0ffh
	skipz
	goto	u5321
	goto	u5320
u5321:
	goto	l4425
u5320:
	line	107
	
l8767:	
;RF_Control_B1.c: 106: {
;RF_Control_B1.c: 107: RF->DebounceTime=0;
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	108
;RF_Control_B1.c: 108: RF->Debounce=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l4425
	line	109
	
l4421:	
	line	110
;RF_Control_B1.c: 109: }
;RF_Control_B1.c: 110: }
	goto	l4425
	line	111
	
l4420:	
	line	113
	
l8769:	
;RF_Control_B1.c: 111: else
;RF_Control_B1.c: 112: {
;RF_Control_B1.c: 113: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	114
;RF_Control_B1.c: 114: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	115
	
l8771:	
;RF_Control_B1.c: 115: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l4425
	line	116
	
l4422:	
	line	117
;RF_Control_B1.c: 116: }
;RF_Control_B1.c: 117: }
	goto	l4425
	line	118
	
l4419:	
	line	120
	
l8773:	
;RF_Control_B1.c: 118: else
;RF_Control_B1.c: 119: {
;RF_Control_B1.c: 120: if(RF->RxStatus == 0 && 1)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u5331
	goto	u5330
u5331:
	goto	l4425
u5330:
	line	122
	
l8775:	
;RF_Control_B1.c: 121: {
;RF_Control_B1.c: 122: RF->RxStatus=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	123
	
l8777:	
;RF_Control_B1.c: 123: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	124
	
l8779:	
;RF_Control_B1.c: 124: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	125
	
l8781:	
;RF_Control_B1.c: 125: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l4425
	line	126
	
l4424:	
	goto	l4425
	line	127
	
l4423:	
	goto	l4425
	line	128
	
l4418:	
	goto	l4425
	line	129
	
l4416:	
	goto	l4425
	line	130
	
l4414:	
	line	131
	
l4425:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
;; =============== function _setRF_Main ends ============

	signat	_setRF_Main,4216
	global	_setRF_Enable
psect	text1316,local,class=CODE,delta=2
global __ptext1316
__ptext1316:

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 177 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;;  command         1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       1       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_RfPointSelect
;;		_CC2500_WriteCommand
;;		_RF_RxDisable
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text1316
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	177
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
	opt	stack 7
; Regs used in _setRF_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	178
	
l8725:	
;RF_Control_B1.c: 178: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	179
	
l8727:	
;RF_Control_B1.c: 179: if(command)
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	skipz
	goto	u5260
	goto	l8731
u5260:
	line	181
	
l8729:	
;RF_Control_B1.c: 180: {
;RF_Control_B1.c: 181: RF->Enable=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	182
;RF_Control_B1.c: 182: }
	goto	l4437
	line	183
	
l4435:	
	line	185
	
l8731:	
;RF_Control_B1.c: 183: else
;RF_Control_B1.c: 184: {
;RF_Control_B1.c: 185: RF->Enable=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	186
;RF_Control_B1.c: 186: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	187
	
l8733:	
;RF_Control_B1.c: 187: Transceive_GO=0;
	bcf	(_Transceive_GO/8),(_Transceive_GO)&7
	line	188
	
l8735:	
;RF_Control_B1.c: 188: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	189
	
l8737:	
;RF_Control_B1.c: 189: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	190
	
l8739:	
;RF_Control_B1.c: 190: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l4437
	line	191
	
l4436:	
	line	192
	
l4437:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
;; =============== function _setRF_Enable ends ============

	signat	_setRF_Enable,8312
	global	_CC2500_PowerOnInitial
psect	text1317,local,class=CODE,delta=2
global __ptext1317
__ptext1317:

;; *************** function _CC2500_PowerOnInitial *****************
;; Defined at:
;;		line 98 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_CC2500_PowerRST
;;		_CC2500_InitSetREG
;;		_CC2500_InitPATable
;;		_CC2500_ClearTXFIFO
;;		_CC2500_ClearRXFIFO
;;		_CC2500_FrequencyCabr
;;		_CC2500_SIDLEMode
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1317
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	98
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg+status,2+status,0+pclath+cstack]
	line	99
	
l8723:	
;CC2500_B1.c: 99: CC2500_PowerRST();
	fcall	_CC2500_PowerRST
	line	100
;CC2500_B1.c: 100: CC2500_InitSetREG();
	fcall	_CC2500_InitSetREG
	line	101
;CC2500_B1.c: 101: CC2500_InitPATable();
	fcall	_CC2500_InitPATable
	line	102
;CC2500_B1.c: 102: CC2500_ClearTXFIFO();
	fcall	_CC2500_ClearTXFIFO
	line	103
;CC2500_B1.c: 103: CC2500_ClearRXFIFO();
	fcall	_CC2500_ClearRXFIFO
	line	104
;CC2500_B1.c: 104: CC2500_FrequencyCabr();
	fcall	_CC2500_FrequencyCabr
	line	105
;CC2500_B1.c: 105: CC2500_SIDLEMode();
	fcall	_CC2500_SIDLEMode
	line	106
	
l3242:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerOnInitial
	__end_of_CC2500_PowerOnInitial:
;; =============== function _CC2500_PowerOnInitial ends ============

	signat	_CC2500_PowerOnInitial,88
	global	_RF_RxDisable
psect	text1318,local,class=CODE,delta=2
global __ptext1318
__ptext1318:

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 195 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    4[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_RfPointSelect
;;		_CC2500_WriteCommand
;;		_setINT_GO
;; This function is called by:
;;		_setRF_Main
;;		_setRF_Enable
;; This function uses a non-reentrant model
;;
psect	text1318
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	195
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
	opt	stack 7
; Regs used in _RF_RxDisable: [wreg+fsr1l-status,0+pclath+cstack]
;RF_RxDisable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RF_RxDisable@rf)
	line	196
	
l8709:	
;RF_Control_B1.c: 196: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	197
	
l8711:	
;RF_Control_B1.c: 197: if(RF->RxStatus || RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u5241
	goto	u5240
u5241:
	goto	l8715
u5240:
	
l8713:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u5251
	goto	u5250
u5251:
	goto	l4443
u5250:
	goto	l8715
	
l4442:	
	line	199
	
l8715:	
;RF_Control_B1.c: 198: {
;RF_Control_B1.c: 199: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	200
;RF_Control_B1.c: 200: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	201
;RF_Control_B1.c: 201: RF->DebounceTime=0;
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	202
;RF_Control_B1.c: 202: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	203
	
l8717:	
;RF_Control_B1.c: 203: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	204
	
l8719:	
;RF_Control_B1.c: 204: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	205
	
l8721:	
;RF_Control_B1.c: 205: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l4443
	line	206
	
l4440:	
	line	207
	
l4443:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
;; =============== function _RF_RxDisable ends ============

	signat	_RF_RxDisable,4216
	global	_CC2500_SIDLEMode
psect	text1319,local,class=CODE,delta=2
global __ptext1319
__ptext1319:

;; *************** function _CC2500_SIDLEMode *****************
;; Defined at:
;;		line 184 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1319
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	184
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l8707:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l3273:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_SIDLEMode
	__end_of_CC2500_SIDLEMode:
;; =============== function _CC2500_SIDLEMode ends ============

	signat	_CC2500_SIDLEMode,88
	global	_CC2500_FrequencyCabr
psect	text1320,local,class=CODE,delta=2
global __ptext1320
__ptext1320:

;; *************** function _CC2500_FrequencyCabr *****************
;; Defined at:
;;		line 176 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;;		_DelayTime_1us
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1320
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	176
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l8705:	
;CC2500_B1.c: 177: CC2500_WriteCommand(0x33);
	movlw	(033h)
	fcall	_CC2500_WriteCommand
	line	178
;CC2500_B1.c: 178: DelayTime_1us(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(?_DelayTime_1us)
	movlw	high(03E8h)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	179
	
l3270:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_FrequencyCabr
	__end_of_CC2500_FrequencyCabr:
;; =============== function _CC2500_FrequencyCabr ends ============

	signat	_CC2500_FrequencyCabr,88
	global	_CC2500_ClearRXFIFO
psect	text1321,local,class=CODE,delta=2
global __ptext1321
__ptext1321:

;; *************** function _CC2500_ClearRXFIFO *****************
;; Defined at:
;;		line 169 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1321
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	169
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l8703:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l3267:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearRXFIFO
	__end_of_CC2500_ClearRXFIFO:
;; =============== function _CC2500_ClearRXFIFO ends ============

	signat	_CC2500_ClearRXFIFO,88
	global	_CC2500_ClearTXFIFO
psect	text1322,local,class=CODE,delta=2
global __ptext1322
__ptext1322:

;; *************** function _CC2500_ClearTXFIFO *****************
;; Defined at:
;;		line 162 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1322
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	162
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l8701:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l3264:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearTXFIFO
	__end_of_CC2500_ClearTXFIFO:
;; =============== function _CC2500_ClearTXFIFO ends ============

	signat	_CC2500_ClearTXFIFO,88
	global	_CC2500_InitPATable
psect	text1323,local,class=CODE,delta=2
global __ptext1323
__ptext1323:

;; *************** function _CC2500_InitPATable *****************
;; Defined at:
;;		line 148 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_d          1    7[BANK0 ] unsigned char 
;;  temp            1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteREG
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1323
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	148
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg+status,2+status,0+pclath+cstack]
	line	152
	
l8687:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l8689:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u5221
	goto	u5220
u5221:
	goto	l8693
u5220:
	goto	l3261
	
l8691:	
	goto	l3261
	line	153
	
l3259:	
	line	154
	
l8693:	
;CC2500_B1.c: 153: {
;CC2500_B1.c: 154: temp=CC2500_patable_vaule[loop_d];
	movf	(CC2500_InitPATable@loop_d),w
	addlw	low(_CC2500_patable_vaule|8000h)
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_InitPATable@temp)
	line	155
	
l8695:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l8697:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l8699:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u5231
	goto	u5230
u5231:
	goto	l8693
u5230:
	goto	l3261
	
l3260:	
	line	157
	
l3261:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitPATable
	__end_of_CC2500_InitPATable:
;; =============== function _CC2500_InitPATable ends ============

	signat	_CC2500_InitPATable,88
	global	_CC2500_InitSetREG
psect	text1324,local,class=CODE,delta=2
global __ptext1324
__ptext1324:

;; *************** function _CC2500_InitSetREG *****************
;; Defined at:
;;		line 132 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_c          1    8[BANK0 ] unsigned char 
;;  temp2           1    7[BANK0 ] unsigned char 
;;  temp1           1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteREG
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1324
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	132
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg+status,2+status,0+pclath+cstack]
	line	136
	
l8673:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l8675:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u5201
	goto	u5200
u5201:
	goto	l8679
u5200:
	goto	l3256
	
l8677:	
	goto	l3256
	line	137
	
l3254:	
	line	138
	
l8679:	
;CC2500_B1.c: 137: {
;CC2500_B1.c: 138: temp1 = CC2500_registers_address[loop_c];
	movf	(CC2500_InitSetREG@loop_c),w
	addlw	low(_CC2500_registers_address|8000h)
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_InitSetREG@temp1)
	line	139
;CC2500_B1.c: 139: temp2 = CC2500_rfSettings[loop_c];
	movf	(CC2500_InitSetREG@loop_c),w
	addlw	low(_CC2500_rfSettings|8000h)
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_InitSetREG@temp2)
	line	141
	
l8681:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l8683:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l8685:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u5211
	goto	u5210
u5211:
	goto	l8679
u5210:
	goto	l3256
	
l3255:	
	line	143
	
l3256:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitSetREG
	__end_of_CC2500_InitSetREG:
;; =============== function _CC2500_InitSetREG ends ============

	signat	_CC2500_InitSetREG,88
	global	_CC2500_RxData
psect	text1325,local,class=CODE,delta=2
global __ptext1325
__ptext1325:

;; *************** function _CC2500_RxData *****************
;; Defined at:
;;		line 57 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_f          1    5[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_ReadStatus
;;		_CC2500_WriteByte
;;		_CC2500_ReadByte
;;		_CC2500_WriteCommand
;;		_setRF_RxStatus
;; This function is called by:
;;		_setRF_Main
;; This function uses a non-reentrant model
;;
psect	text1325
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	57
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
	opt	stack 7
; Regs used in _CC2500_RxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	62
	
l8631:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u5141
	goto	u5140
u5141:
	goto	l8635
u5140:
	goto	l3228
	line	64
	
l8633:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l3228
	
l3229:	
	
l3228:	
	btfsc	(104/8),(104)&7
	goto	u5151
	goto	u5150
u5151:
	goto	l3228
u5150:
	goto	l8635
	
l3230:	
	goto	l8635
	line	65
	
l3227:	
	line	66
	
l8635:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l8637:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 0	; select bank0
	movf	(_s_data),w
	skipz
	goto	u5160
	goto	l8669
u5160:
	line	70
	
l8639:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RB5=0;
	bcf	(109/8),(109)&7
	line	71
	
l8641:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_SPI0Buffer)
	line	72
;CC2500_B1.c: 72: while(RB3==1);
	goto	l3232
	
l3233:	
	
l3232:	
	btfsc	(107/8),(107)&7
	goto	u5171
	goto	u5170
u5171:
	goto	l3232
u5170:
	goto	l8643
	
l3234:	
	line	73
	
l8643:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l8645:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_Rx_Length)
	line	77
	
l8647:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	clrf	(CC2500_RxData@loop_f)
	goto	l8655
	line	78
	
l3236:	
	line	79
	
l8649:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l8651:	
;CC2500_B1.c: 80: RF_Data[loop_f]=SPI0Buffer;
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(CC2500_RxData@loop_f),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_CC2500_RxData+0)+0,w
	movwf	indf1
	line	77
	
l8653:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l8655
	
l3235:	
	
l8655:	
	movf	(_Rx_Length),w
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u5181
	goto	u5180
u5181:
	goto	l8649
u5180:
	goto	l8657
	
l3237:	
	line	82
	
l8657:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l8659:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_RSSI)
	line	84
	
l8661:	
;CC2500_B1.c: 84: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	85
;CC2500_B1.c: 85: CRC=SPI0Buffer;
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_CRC)
	line	86
	
l8663:	
;CC2500_B1.c: 86: RB5=1;
	bsf	(109/8),(109)&7
	line	87
	
l8665:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	btfss	(_CRC),(7)&7
	goto	u5191
	goto	u5190
u5191:
	goto	l8669
u5190:
	line	88
	
l8667:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l8669
	
l3238:	
	goto	l8669
	line	89
	
l3231:	
	line	90
	
l8669:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l8671:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_RxStatus)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l3239:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_RxData
	__end_of_CC2500_RxData:
;; =============== function _CC2500_RxData ends ============

	signat	_CC2500_RxData,88
	global	_CC2500_TxData
psect	text1326,local,class=CODE,delta=2
global __ptext1326
__ptext1326:

;; *************** function _CC2500_TxData *****************
;; Defined at:
;;		line 31 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_e          1    5[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteByte
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_setRF_Main
;; This function uses a non-reentrant model
;;
psect	text1326
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	31
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
	opt	stack 7
; Regs used in _CC2500_TxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	34
	
l8605:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RB5=0;
	movlb 0	; select bank0
	bcf	(109/8),(109)&7
	line	35
	
l8607:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	line	36
;CC2500_B1.c: 36: while(RB3==1);
	goto	l3212
	
l3213:	
	
l3212:	
	btfsc	(107/8),(107)&7
	goto	u5101
	goto	u5100
u5101:
	goto	l3212
u5100:
	goto	l8609
	
l3214:	
	line	37
	
l8609:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l8611:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 0	; select bank0
	movf	(_Tx_Length),w
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	line	39
	
l8613:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l8615:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l8623
	line	41
	
l3216:	
	line	42
	
l8617:	
;CC2500_B1.c: 41: {
;CC2500_B1.c: 42: SPI0Buffer=RF_Data[loop_e];
	movf	(CC2500_TxData@loop_e),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	line	43
	
l8619:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l8621:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l8623
	
l3215:	
	
l8623:	
	movf	(_Tx_Length),w
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u5111
	goto	u5110
u5111:
	goto	l8617
u5110:
	
l3217:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RB5=1;
	bsf	(109/8),(109)&7
	line	46
	
l8625:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l3218
	
l3219:	
	
l3218:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u5121
	goto	u5120
u5121:
	goto	l3218
u5120:
	goto	l3221
	
l3220:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l3221
	
l3222:	
	
l3221:	
	btfsc	(104/8),(104)&7
	goto	u5131
	goto	u5130
u5131:
	goto	l3221
u5130:
	goto	l8627
	
l3223:	
	line	49
	
l8627:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l8629:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l3224:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_TxData
	__end_of_CC2500_TxData:
;; =============== function _CC2500_TxData ends ============

	signat	_CC2500_TxData,88
	global	_CC2500_WriteREG
psect	text1327,local,class=CODE,delta=2
global __ptext1327
__ptext1327:

;; *************** function _CC2500_WriteREG *****************
;; Defined at:
;;		line 228 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;  w_addr          1    wreg     unsigned char 
;;  value           1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  w_addr          1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       1       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_InitSetREG
;;		_CC2500_InitPATable
;; This function uses a non-reentrant model
;;
psect	text1327
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	228
	global	__size_of_CC2500_WriteREG
	__size_of_CC2500_WriteREG	equ	__end_of_CC2500_WriteREG-_CC2500_WriteREG
	
_CC2500_WriteREG:	
	opt	stack 8
; Regs used in _CC2500_WriteREG: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteREG@w_addr stored from wreg
	movlb 0	; select bank0
	movwf	(CC2500_WriteREG@w_addr)
	line	229
	
l8593:	
;CC2500_B1.c: 229: RB5=0;
	bcf	(109/8),(109)&7
	line	230
	
l8595:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movwf	(_SPI0Buffer)
	line	231
;CC2500_B1.c: 231: while(RB3==1);
	goto	l3290
	
l3291:	
	
l3290:	
	btfsc	(107/8),(107)&7
	goto	u5091
	goto	u5090
u5091:
	goto	l3290
u5090:
	goto	l8597
	
l3292:	
	line	232
	
l8597:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l8599:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movwf	(_SPI0Buffer)
	line	234
	
l8601:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l8603:	
;CC2500_B1.c: 235: RB5=1;
	movlb 0	; select bank0
	bsf	(109/8),(109)&7
	line	236
	
l3293:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteREG
	__end_of_CC2500_WriteREG:
;; =============== function _CC2500_WriteREG ends ============

	signat	_CC2500_WriteREG,8312
	global	_CC2500_PowerRST
psect	text1328,local,class=CODE,delta=2
global __ptext1328
__ptext1328:

;; *************** function _CC2500_PowerRST *****************
;; Defined at:
;;		line 111 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DelayTime_1us
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1328
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	111
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l8579:	
;CC2500_B1.c: 112: RB2=0;
	movlb 0	; select bank0
	bcf	(106/8),(106)&7
	line	113
;CC2500_B1.c: 113: RB1=0;
	bcf	(105/8),(105)&7
	line	114
;CC2500_B1.c: 114: RB5=1;
	bsf	(109/8),(109)&7
	line	115
	
l8581:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	116
	
l8583:	
;CC2500_B1.c: 116: RB5=0;
	movlb 0	; select bank0
	bcf	(109/8),(109)&7
	line	117
;CC2500_B1.c: 117: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	118
	
l8585:	
;CC2500_B1.c: 118: RB5=1;
	movlb 0	; select bank0
	bsf	(109/8),(109)&7
	line	119
;CC2500_B1.c: 119: DelayTime_1us(40);
	movlw	low(028h)
	movwf	(?_DelayTime_1us)
	movlw	high(028h)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	120
	
l8587:	
;CC2500_B1.c: 120: RB5=0;
	movlb 0	; select bank0
	bcf	(109/8),(109)&7
	line	121
	
l8589:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movwf	(_SPI0Buffer)
	line	122
;CC2500_B1.c: 122: while(RB3==1);
	goto	l3245
	
l3246:	
	
l3245:	
	btfsc	(107/8),(107)&7
	goto	u5071
	goto	u5070
u5071:
	goto	l3245
u5070:
	goto	l8591
	
l3247:	
	line	123
	
l8591:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RB3==1);
	goto	l3248
	
l3249:	
	
l3248:	
	movlb 0	; select bank0
	btfsc	(107/8),(107)&7
	goto	u5081
	goto	u5080
u5081:
	goto	l3248
u5080:
	
l3250:	
	line	125
;CC2500_B1.c: 125: RB1=0;
	bcf	(105/8),(105)&7
	line	126
;CC2500_B1.c: 126: RB5=1;
	bsf	(109/8),(109)&7
	line	127
	
l3251:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerRST
	__end_of_CC2500_PowerRST:
;; =============== function _CC2500_PowerRST ends ============

	signat	_CC2500_PowerRST,88
	global	_setRF_RxStatus
psect	text1329,local,class=CODE,delta=2
global __ptext1329
__ptext1329:

;; *************** function _setRF_RxStatus *****************
;; Defined at:
;;		line 44 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       1       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;; This function is called by:
;;		_CC2500_RxData
;; This function uses a non-reentrant model
;;
psect	text1329
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	44
	global	__size_of_setRF_RxStatus
	__size_of_setRF_RxStatus	equ	__end_of_setRF_RxStatus-_setRF_RxStatus
	
_setRF_RxStatus:	
	opt	stack 7
; Regs used in _setRF_RxStatus: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_RxStatus@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_RxStatus@rf)
	line	45
	
l8575:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l8577:	
;RF_Control_B1.c: 46: RF->RxStatus=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_RxStatus@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	47
	
l4408:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_RxStatus
	__end_of_setRF_RxStatus:
;; =============== function _setRF_RxStatus ends ============

	signat	_setRF_RxStatus,8312
	global	_CC2500_ReadStatus
psect	text1330,local,class=CODE,delta=2
global __ptext1330
__ptext1330:

;; *************** function _CC2500_ReadStatus *****************
;; Defined at:
;;		line 268 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;  status_addr     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status_addr     1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CC2500_WriteByte
;;		_CC2500_ReadByte
;; This function is called by:
;;		_CC2500_RxData
;; This function uses a non-reentrant model
;;
psect	text1330
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	268
	global	__size_of_CC2500_ReadStatus
	__size_of_CC2500_ReadStatus	equ	__end_of_CC2500_ReadStatus-_CC2500_ReadStatus
	
_CC2500_ReadStatus:	
	opt	stack 7
; Regs used in _CC2500_ReadStatus: [wreg+status,2+status,0+pclath+cstack]
;CC2500_ReadStatus@status_addr stored from wreg
	movlb 0	; select bank0
	movwf	(CC2500_ReadStatus@status_addr)
	line	269
	
l8565:	
;CC2500_B1.c: 269: RB5=0;
	bcf	(109/8),(109)&7
	line	270
	
l8567:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movwf	(_SPI0Buffer)
	line	272
;CC2500_B1.c: 272: while(RB3==1);
	goto	l3308
	
l3309:	
	
l3308:	
	btfsc	(107/8),(107)&7
	goto	u5061
	goto	u5060
u5061:
	goto	l3308
u5060:
	goto	l8569
	
l3310:	
	line	274
	
l8569:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l8571:	
;CC2500_B1.c: 276: RB5=1;
	movlb 0	; select bank0
	bsf	(109/8),(109)&7
	line	278
	
l8573:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movwf	(_s_data)
	line	279
	
l3311:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadStatus
	__end_of_CC2500_ReadStatus:
;; =============== function _CC2500_ReadStatus ends ============

	signat	_CC2500_ReadStatus,4216
	global	_CC2500_WriteCommand
psect	text1331,local,class=CODE,delta=2
global __ptext1331
__ptext1331:

;; *************** function _CC2500_WriteCommand *****************
;; Defined at:
;;		line 254 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_TxData
;;		_CC2500_RxData
;;		_CC2500_ClearTXFIFO
;;		_CC2500_ClearRXFIFO
;;		_CC2500_FrequencyCabr
;;		_CC2500_SIDLEMode
;;		_setRF_Main
;;		_setRF_Enable
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text1331
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	254
	global	__size_of_CC2500_WriteCommand
	__size_of_CC2500_WriteCommand	equ	__end_of_CC2500_WriteCommand-_CC2500_WriteCommand
	
_CC2500_WriteCommand:	
	opt	stack 8
; Regs used in _CC2500_WriteCommand: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteCommand@command stored from wreg
	movlb 0	; select bank0
	movwf	(CC2500_WriteCommand@command)
	line	255
	
l8557:	
;CC2500_B1.c: 255: RB5=0;
	bcf	(109/8),(109)&7
	line	256
	
l8559:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movwf	(_SPI0Buffer)
	line	258
;CC2500_B1.c: 258: while(RB3==1);
	goto	l3302
	
l3303:	
	
l3302:	
	btfsc	(107/8),(107)&7
	goto	u5051
	goto	u5050
u5051:
	goto	l3302
u5050:
	goto	l8561
	
l3304:	
	line	260
	
l8561:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l8563:	
;CC2500_B1.c: 261: RB5=1;
	movlb 0	; select bank0
	bsf	(109/8),(109)&7
	line	263
	
l3305:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteCommand
	__end_of_CC2500_WriteCommand:
;; =============== function _CC2500_WriteCommand ends ============

	signat	_CC2500_WriteCommand,4216
	global	_I2C_Main
psect	text1332,local,class=CODE,delta=2
global __ptext1332
__ptext1332:

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 276 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_Slave_Mode
;;		_I2C_SetData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1332
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	276
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
	opt	stack 10
; Regs used in _I2C_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	279
	
l8537:	
;MCU_16f1516_B1.c: 277: char i;
;MCU_16f1516_B1.c: 279: if(I2C->SlaveGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u5021
	goto	u5020
u5021:
	goto	l5596
u5020:
	line	281
	
l8539:	
;MCU_16f1516_B1.c: 280: {
;MCU_16f1516_B1.c: 281: I2C->SlaveGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	282
	
l8541:	
;MCU_16f1516_B1.c: 282: I2C_Slave_Mode();
	fcall	_I2C_Slave_Mode
	line	283
	
l8543:	
;MCU_16f1516_B1.c: 283: SSPIE=1;
	movlb 1	; select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	285
	
l8545:	
;MCU_16f1516_B1.c: 285: if(I2C->SlaveTxGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u5031
	goto	u5030
u5031:
	goto	l5594
u5030:
	line	287
	
l8547:	
;MCU_16f1516_B1.c: 286: {
;MCU_16f1516_B1.c: 287: I2C->SlaveTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	288
	
l8549:	
;MCU_16f1516_B1.c: 288: RC0=0;
	bcf	(112/8),(112)&7
	line	289
;MCU_16f1516_B1.c: 289: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	290
	
l5594:	
	line	291
;MCU_16f1516_B1.c: 290: }
;MCU_16f1516_B1.c: 291: if(I2C->SlaveRxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u5041
	goto	u5040
u5041:
	goto	l8555
u5040:
	line	293
	
l8551:	
;MCU_16f1516_B1.c: 292: {
;MCU_16f1516_B1.c: 293: I2C->SlaveRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	294
	
l8553:	
;MCU_16f1516_B1.c: 294: I2C_SetData(0);
	movlw	(0)
	fcall	_I2C_SetData
	goto	l8555
	line	295
	
l5595:	
	line	296
	
l8555:	
;MCU_16f1516_B1.c: 295: }
;MCU_16f1516_B1.c: 296: RA1=~RA1;
	movlw	1<<((97)&7)
	movlb 0	; select bank0
	xorwf	((97)/8),f
	goto	l5596
	line	297
	
l5593:	
	line	342
	
l5596:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Main
	__end_of_I2C_Main:
;; =============== function _I2C_Main ends ============

	signat	_I2C_Main,88
	global	_RF_Initialization
psect	text1333,local,class=CODE,delta=2
global __ptext1333
__ptext1333:

;; *************** function _RF_Initialization *****************
;; Defined at:
;;		line 18 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;		_setRF_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1333
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	18
	global	__size_of_RF_Initialization
	__size_of_RF_Initialization	equ	__end_of_RF_Initialization-_RF_Initialization
	
_RF_Initialization:	
	opt	stack 10
; Regs used in _RF_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l8535:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l4396:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Initialization
	__end_of_RF_Initialization:
;; =============== function _RF_Initialization ends ============

	signat	_RF_Initialization,88
	global	_Mcu_Initial
psect	text1334,local,class=CODE,delta=2
global __ptext1334
__ptext1334:

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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_IO_Set
;;		_TMR1_Set
;;		_INT_Set
;;		_I2C_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1334
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	12
	global	__size_of_Mcu_Initial
	__size_of_Mcu_Initial	equ	__end_of_Mcu_Initial-_Mcu_Initial
	
_Mcu_Initial:	
	opt	stack 10
; Regs used in _Mcu_Initial: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l8521:	
;MCU_16f1516_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l8523:	
;MCU_16f1516_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l8525:	
;MCU_16f1516_B1.c: 18: _nop();
	nop
	line	20
	
l8527:	
;MCU_16f1516_B1.c: 20: TMR1_Set();
	fcall	_TMR1_Set
	line	22
	
l8529:	
;MCU_16f1516_B1.c: 22: _nop();
	nop
	line	26
	
l8531:	
;MCU_16f1516_B1.c: 26: INT_Set();
	fcall	_INT_Set
	line	28
	
l8533:	
;MCU_16f1516_B1.c: 28: _nop();
	nop
	line	30
;MCU_16f1516_B1.c: 30: I2C_Set();
	fcall	_I2C_Set
	line	35
	
l5559:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initial
	__end_of_Mcu_Initial:
;; =============== function _Mcu_Initial ends ============

	signat	_Mcu_Initial,88
	global	_I2C_Slave_Mode
psect	text1335,local,class=CODE,delta=2
global __ptext1335
__ptext1335:

;; *************** function _I2C_Slave_Mode *****************
;; Defined at:
;;		line 452 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[BANK0 ] unsigned char 
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
psect	text1335
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	452
	global	__size_of_I2C_Slave_Mode
	__size_of_I2C_Slave_Mode	equ	__end_of_I2C_Slave_Mode-_I2C_Slave_Mode
	
_I2C_Slave_Mode:	
	opt	stack 10
; Regs used in _I2C_Slave_Mode: [wreg+fsr1l-status,0]
	line	454
	
l8485:	
;MCU_16f1516_B1.c: 453: char i;
;MCU_16f1516_B1.c: 454: SSPIF=0;
	movlb 0	; select bank0
	bcf	(139/8),(139)&7
	line	455
	
l8487:	
;MCU_16f1516_B1.c: 455: I2C->Address=SSPBUF;
	movlb 4	; select bank4
	movf	(529)^0200h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_I2C_Slave_Mode+0)+0
	movf	(_I2C),w
	addlw	041h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_Slave_Mode+0)+0,w
	movwf	indf1
	line	457
	
l8489:	
;MCU_16f1516_B1.c: 457: if(R_nW)
	movlb 4	; select bank4
	btfss	(4258/8)^0200h,(4258)&7
	goto	u4941
	goto	u4940
u4941:
	goto	l5691
u4940:
	line	459
	
l8491:	
;MCU_16f1516_B1.c: 458: {
;MCU_16f1516_B1.c: 459: SSPOV=0;
	bcf	(4270/8)^0200h,(4270)&7
	line	460
;MCU_16f1516_B1.c: 460: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Slave_Mode@i)
	
l8493:	
	movlw	(020h)
	subwf	(I2C_Slave_Mode@i),w
	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l8497
u4950:
	goto	l5693
	
l8495:	
	goto	l5693
	line	461
	
l5692:	
	line	462
	
l8497:	
;MCU_16f1516_B1.c: 461: {
;MCU_16f1516_B1.c: 462: SSPBUF=I2C->BufferWriter[i];
	movf	(I2C_Slave_Mode@i),w
	addlw	020h
	addwf	(_I2C),w
	movwf	(??_I2C_Slave_Mode+0)+0
	movf	0+(??_I2C_Slave_Mode+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	464
	
l8499:	
;MCU_16f1516_B1.c: 464: CKP=1;
	bsf	(4268/8)^0200h,(4268)&7
	line	465
;MCU_16f1516_B1.c: 465: while(!SSPIF);
	goto	l5694
	
l5695:	
	
l5694:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7
	goto	u4961
	goto	u4960
u4961:
	goto	l5694
u4960:
	
l5696:	
	line	466
;MCU_16f1516_B1.c: 466: SSPIF=0;
	bcf	(139/8),(139)&7
	line	467
;MCU_16f1516_B1.c: 467: while(ACKSTAT);
	goto	l5697
	
l5698:	
	
l5697:	
	movlb 4	; select bank4
	btfsc	(4278/8)^0200h,(4278)&7
	goto	u4971
	goto	u4970
u4971:
	goto	l5697
u4970:
	goto	l8501
	
l5699:	
	line	460
	
l8501:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Slave_Mode+0)+0
	movf	(??_I2C_Slave_Mode+0)+0,w
	addwf	(I2C_Slave_Mode@i),f
	
l8503:	
	movlw	(020h)
	subwf	(I2C_Slave_Mode@i),w
	skipc
	goto	u4981
	goto	u4980
u4981:
	goto	l8497
u4980:
	
l5693:	
	line	469
;MCU_16f1516_B1.c: 468: }
;MCU_16f1516_B1.c: 469: CKP=1;
	movlb 4	; select bank4
	bsf	(4268/8)^0200h,(4268)&7
	line	471
	
l8505:	
;MCU_16f1516_B1.c: 471: I2C->SlaveTxGO=1;
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	472
;MCU_16f1516_B1.c: 472: }
	goto	l5706
	line	473
	
l5691:	
	line	475
;MCU_16f1516_B1.c: 473: else
;MCU_16f1516_B1.c: 474: {
;MCU_16f1516_B1.c: 475: CKP=1;
	bsf	(4268/8)^0200h,(4268)&7
	line	476
;MCU_16f1516_B1.c: 476: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Slave_Mode@i)
	
l8507:	
	movlw	(020h)
	subwf	(I2C_Slave_Mode@i),w
	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l5703
u4990:
	goto	l8519
	
l8509:	
	goto	l8519
	line	477
	
l5701:	
	line	478
;MCU_16f1516_B1.c: 477: {
;MCU_16f1516_B1.c: 478: while(!SSPIF);
	goto	l5703
	
l5704:	
	
l5703:	
	btfss	(139/8),(139)&7
	goto	u5001
	goto	u5000
u5001:
	goto	l5703
u5000:
	
l5705:	
	line	479
;MCU_16f1516_B1.c: 479: SSPIF=0;
	bcf	(139/8),(139)&7
	line	480
	
l8511:	
;MCU_16f1516_B1.c: 480: I2C->BufferReader[i]=SSPBUF;
	movlb 4	; select bank4
	movf	(529)^0200h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_I2C_Slave_Mode+0)+0
	movf	(I2C_Slave_Mode@i),w
	addwf	(_I2C),w
	movwf	(??_I2C_Slave_Mode+1)+0
	movf	0+(??_I2C_Slave_Mode+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_Slave_Mode+0)+0,w
	movwf	indf1
	line	482
	
l8513:	
;MCU_16f1516_B1.c: 482: CKP=1;
	movlb 4	; select bank4
	bsf	(4268/8)^0200h,(4268)&7
	line	476
	
l8515:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Slave_Mode+0)+0
	movf	(??_I2C_Slave_Mode+0)+0,w
	addwf	(I2C_Slave_Mode@i),f
	
l8517:	
	movlw	(020h)
	subwf	(I2C_Slave_Mode@i),w
	skipc
	goto	u5011
	goto	u5010
u5011:
	goto	l5703
u5010:
	goto	l8519
	
l5702:	
	line	485
	
l8519:	
;MCU_16f1516_B1.c: 483: }
;MCU_16f1516_B1.c: 485: I2C->SlaveRxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l5706
	line	486
	
l5700:	
	line	488
	
l5706:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Slave_Mode
	__end_of_I2C_Slave_Mode:
;; =============== function _I2C_Slave_Mode ends ============

	signat	_I2C_Slave_Mode,88
	global	_I2C_Set
psect	text1336,local,class=CODE,delta=2
global __ptext1336
__ptext1336:

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
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text1336
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	234
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
	opt	stack 10
; Regs used in _I2C_Set: [wreg]
	line	235
	
l8471:	
;MCU_16f1516_B1.c: 235: I2C=&VarI2C;
	movlw	(_VarI2C)&0ffh
	movlb 0	; select bank0
	movwf	(??_I2C_Set+0)+0
	movf	(??_I2C_Set+0)+0,w
	movwf	(_I2C)
	line	245
;MCU_16f1516_B1.c: 245: SSPADD=0x10;
	movlw	(010h)
	movlb 4	; select bank4
	movwf	(530)^0200h	;volatile
	line	247
;MCU_16f1516_B1.c: 247: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(532)^0200h	;volatile
	line	248
;MCU_16f1516_B1.c: 248: SSPCON2 = 0x80;
	movlw	(080h)
	movwf	(534)^0200h	;volatile
	line	249
;MCU_16f1516_B1.c: 249: SSPCON1=0b100110;
	movlw	(026h)
	movwf	(533)^0200h	;volatile
	line	251
	
l8473:	
;MCU_16f1516_B1.c: 251: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7
	line	252
	
l8475:	
;MCU_16f1516_B1.c: 252: AHEN=0;
	bcf	(4281/8)^0200h,(4281)&7
	line	253
	
l8477:	
;MCU_16f1516_B1.c: 253: DHEN=0;
	bcf	(4280/8)^0200h,(4280)&7
	line	254
	
l8479:	
;MCU_16f1516_B1.c: 254: SSPIE=1;
	movlb 1	; select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	255
	
l8481:	
;MCU_16f1516_B1.c: 255: PEIE=1;
	bsf	(94/8),(94)&7
	line	256
	
l8483:	
;MCU_16f1516_B1.c: 256: GIE=1;
	bsf	(95/8),(95)&7
	line	258
	
l5586:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Set
	__end_of_I2C_Set:
;; =============== function _I2C_Set ends ============

	signat	_I2C_Set,88
	global	_INT_Set
psect	text1337,local,class=CODE,delta=2
global __ptext1337
__ptext1337:

;; *************** function _INT_Set *****************
;; Defined at:
;;		line 149 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text1337
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	149
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
	opt	stack 10
; Regs used in _INT_Set: []
	line	150
	
l8469:	
;MCU_16f1516_B1.c: 150: WPUB0=0;
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7
	line	152
;MCU_16f1516_B1.c: 152: PEIE=1;
	bsf	(94/8),(94)&7
	line	153
;MCU_16f1516_B1.c: 153: GIE=1;
	bsf	(95/8),(95)&7
	line	154
	
l5576:	
	return
	opt stack 0
GLOBAL	__end_of_INT_Set
	__end_of_INT_Set:
;; =============== function _INT_Set ends ============

	signat	_INT_Set,88
	global	_TMR1_Set
psect	text1338,local,class=CODE,delta=2
global __ptext1338
__ptext1338:

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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text1338
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	115
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
	opt	stack 10
; Regs used in _TMR1_Set: [wreg]
	line	116
	
l8461:	
;MCU_16f1516_B1.c: 116: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
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
	
l8463:	
;MCU_16f1516_B1.c: 120: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	121
	
l8465:	
;MCU_16f1516_B1.c: 121: PEIE=1;
	bsf	(94/8),(94)&7
	line	122
	
l8467:	
;MCU_16f1516_B1.c: 122: GIE=1;
	bsf	(95/8),(95)&7
	line	123
	
l5568:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Set
	__end_of_TMR1_Set:
;; =============== function _TMR1_Set ends ============

	signat	_TMR1_Set,88
	global	_IO_Set
psect	text1339,local,class=CODE,delta=2
global __ptext1339
__ptext1339:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text1339
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	38
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l8451:	
;MCU_16f1516_B1.c: 39: TRISA=0b00000000;;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	40
	
l8453:	
;MCU_16f1516_B1.c: 40: TRISB=0b00011001;;
	movlw	(019h)
	movwf	(141)^080h	;volatile
	line	41
	
l8455:	
;MCU_16f1516_B1.c: 41: TRISC=0b00011000;;
	movlw	(018h)
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
;MCU_16f1516_B1.c: 45: ANSELA=0b00000000;;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	46
;MCU_16f1516_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
;MCU_16f1516_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
;MCU_16f1516_B1.c: 48: PORTA=0b00000000;;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	49
	
l8457:	
;MCU_16f1516_B1.c: 49: PORTB=0b00011001;;
	movlw	(019h)
	movwf	(13)	;volatile
	line	50
	
l8459:	
;MCU_16f1516_B1.c: 50: PORTC=0b00011000;;
	movlw	(018h)
	movwf	(14)	;volatile
	line	51
	
l5562:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
;; =============== function _IO_Set ends ============

	signat	_IO_Set,88
	global	_setINT_GO
psect	text1340,local,class=CODE,delta=2
global __ptext1340
__ptext1340:

;; *************** function _setINT_GO *****************
;; Defined at:
;;		line 167 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    0[BANK0 ] unsigned char 
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
;;		_setRF_Main
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text1340
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	167
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
	opt	stack 9
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	168
	
l8329:	
;MCU_16f1516_B1.c: 168: INTF=0;
	bcf	(89/8),(89)&7
	line	169
	
l8331:	
;MCU_16f1516_B1.c: 169: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u4711
	goto	u4710
	
u4711:
	bsf	(92/8),(92)&7
	goto	u4724
u4710:
	bcf	(92/8),(92)&7
u4724:
	line	170
	
l5583:	
	return
	opt stack 0
GLOBAL	__end_of_setINT_GO
	__end_of_setINT_GO:
;; =============== function _setINT_GO ends ============

	signat	_setINT_GO,4216
	global	_I2C_SetData
psect	text1341,local,class=CODE,delta=2
global __ptext1341
__ptext1341:

;; *************** function _I2C_SetData *****************
;; Defined at:
;;		line 344 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    2[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_Main
;;		_I2C_Main
;; This function uses a non-reentrant model
;;
psect	text1341
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	344
	global	__size_of_I2C_SetData
	__size_of_I2C_SetData	equ	__end_of_I2C_SetData-_I2C_SetData
	
_I2C_SetData:	
	opt	stack 10
; Regs used in _I2C_SetData: [wreg+fsr1l-status,0]
;I2C_SetData@command stored from wreg
	line	347
	movlb 0	; select bank0
	movwf	(I2C_SetData@command)
	
l8295:	
;MCU_16f1516_B1.c: 346: char i;
;MCU_16f1516_B1.c: 347: if(command)
	movf	(I2C_SetData@command),w
	skipz
	goto	u4650
	goto	l5599
u4650:
	line	349
	
l8297:	
;MCU_16f1516_B1.c: 348: {
;MCU_16f1516_B1.c: 349: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u4661
	goto	u4660
u4661:
	goto	l5606
u4660:
	line	351
	
l8299:	
;MCU_16f1516_B1.c: 350: {
;MCU_16f1516_B1.c: 351: I2C->SS=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	352
	
l8301:	
;MCU_16f1516_B1.c: 352: for(i=0 ;i< 21 ;i++)
	clrf	(I2C_SetData@i)
	
l8303:	
	movlw	(015h)
	subwf	(I2C_SetData@i),w
	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l8307
u4670:
	goto	l8313
	
l8305:	
	goto	l8313
	line	353
	
l5601:	
	line	354
	
l8307:	
;MCU_16f1516_B1.c: 353: {
;MCU_16f1516_B1.c: 354: I2C->BufferWriter[i]=RF_Data[i];
	movf	(I2C_SetData@i),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_I2C_SetData+0)+0
	movf	(I2C_SetData@i),w
	addlw	020h
	addwf	(_I2C),w
	movwf	(??_I2C_SetData+1)+0
	movf	0+(??_I2C_SetData+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_SetData+0)+0,w
	movwf	indf1
	line	352
	
l8309:	
	movlw	(01h)
	movwf	(??_I2C_SetData+0)+0
	movf	(??_I2C_SetData+0)+0,w
	addwf	(I2C_SetData@i),f
	
l8311:	
	movlw	(015h)
	subwf	(I2C_SetData@i),w
	skipc
	goto	u4681
	goto	u4680
u4681:
	goto	l8307
u4680:
	goto	l8313
	
l5602:	
	line	356
	
l8313:	
;MCU_16f1516_B1.c: 355: }
;MCU_16f1516_B1.c: 356: I2C->BufferWriter[21]=Tx_Length;
	movf	(_Tx_Length),w
	movwf	(??_I2C_SetData+0)+0
	movf	(_I2C),w
	addlw	035h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_SetData+0)+0,w
	movwf	indf1
	line	357
;MCU_16f1516_B1.c: 357: I2C->BufferWriter[22]=RSSI;
	movf	(_RSSI),w
	movwf	(??_I2C_SetData+0)+0
	movf	(_I2C),w
	addlw	036h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_SetData+0)+0,w
	movwf	indf1
	line	358
;MCU_16f1516_B1.c: 358: I2C->BufferWriter[23]=CRC;
	movf	(_CRC),w
	movwf	(??_I2C_SetData+0)+0
	movf	(_I2C),w
	addlw	037h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_SetData+0)+0,w
	movwf	indf1
	line	359
	
l8315:	
;MCU_16f1516_B1.c: 359: RC0=1;
	bsf	(112/8),(112)&7
	goto	l5606
	line	360
	
l5600:	
	line	361
;MCU_16f1516_B1.c: 360: }
;MCU_16f1516_B1.c: 361: }
	goto	l5606
	line	362
	
l5599:	
	line	364
;MCU_16f1516_B1.c: 362: else
;MCU_16f1516_B1.c: 363: {
;MCU_16f1516_B1.c: 364: for(i=0;i<21;i++)
	clrf	(I2C_SetData@i)
	
l8317:	
	movlw	(015h)
	subwf	(I2C_SetData@i),w
	skipc
	goto	u4691
	goto	u4690
u4691:
	goto	l8321
u4690:
	goto	l8327
	
l8319:	
	goto	l8327
	line	365
	
l5604:	
	line	366
	
l8321:	
;MCU_16f1516_B1.c: 365: {
;MCU_16f1516_B1.c: 366: RF_Data[i]=I2C->BufferReader[i];
	movf	(I2C_SetData@i),w
	addwf	(_I2C),w
	movwf	(??_I2C_SetData+0)+0
	movf	0+(??_I2C_SetData+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_I2C_SetData+1)+0
	movf	(I2C_SetData@i),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_I2C_SetData+1)+0,w
	movwf	indf1
	line	364
	
l8323:	
	movlw	(01h)
	movwf	(??_I2C_SetData+0)+0
	movf	(??_I2C_SetData+0)+0,w
	addwf	(I2C_SetData@i),f
	
l8325:	
	movlw	(015h)
	subwf	(I2C_SetData@i),w
	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l8321
u4700:
	goto	l8327
	
l5605:	
	line	369
	
l8327:	
;MCU_16f1516_B1.c: 367: }
;MCU_16f1516_B1.c: 369: RF->TransceiveGO=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	goto	l5606
	line	371
	
l5603:	
	line	374
	
l5606:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_SetData
	__end_of_I2C_SetData:
;; =============== function _I2C_SetData ends ============

	signat	_I2C_SetData,4216
	global	_setRF_Initialization
psect	text1342,local,class=CODE,delta=2
global __ptext1342
__ptext1342:

;; *************** function _setRF_Initialization *****************
;; Defined at:
;;		line 51 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    0[COMMON] unsigned char 
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
;;		_RF_Initialization
;; This function uses a non-reentrant model
;;
psect	text1342
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	51
	global	__size_of_setRF_Initialization
	__size_of_setRF_Initialization	equ	__end_of_setRF_Initialization-_setRF_Initialization
	
_setRF_Initialization:	
	opt	stack 10
; Regs used in _setRF_Initialization: [wreg]
	line	54
	
l8289:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movwf	(_Tx_Length)
	line	56
	
l4411:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Initialization
	__end_of_setRF_Initialization:
;; =============== function _setRF_Initialization ends ============

	signat	_setRF_Initialization,4216
	global	_RfPointSelect
psect	text1343,local,class=CODE,delta=2
global __ptext1343
__ptext1343:

;; *************** function _RfPointSelect *****************
;; Defined at:
;;		line 8 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    1[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_RxStatus
;;		_setRF_Main
;;		_setRF_Enable
;;		_RF_RxDisable
;;		_setRF_Learn
;;		_setTxData
;;		_getRxData
;;		_setLog_Code
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text1343
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	8
	global	__size_of_RfPointSelect
	__size_of_RfPointSelect	equ	__end_of_RfPointSelect-_RfPointSelect
	
_RfPointSelect:	
	opt	stack 7
; Regs used in _RfPointSelect: [wreg]
;RfPointSelect@rf stored from wreg
	line	10
	movlb 0	; select bank0
	movwf	(RfPointSelect@rf)
	
l8285:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l4393
u4640:
	line	12
	
l8287:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	l4393
	line	13
	
l4392:	
	line	15
	
l4393:	
	return
	opt stack 0
GLOBAL	__end_of_RfPointSelect
	__end_of_RfPointSelect:
;; =============== function _RfPointSelect ends ============

	signat	_RfPointSelect,4216
	global	_DelayTime_1us
psect	text1344,local,class=CODE,delta=2
global __ptext1344
__ptext1344:

;; *************** function _DelayTime_1us *****************
;; Defined at:
;;		line 284 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;  count           2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[BANK0 ] unsigned int 
;;  i               2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CC2500_PowerRST
;;		_CC2500_FrequencyCabr
;; This function uses a non-reentrant model
;;
psect	text1344
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	284
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l8263:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l3314
	line	287
	
l3315:	
	
l8265:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l8267:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u4601
	goto	u4600
u4601:
	goto	l8271
u4600:
	goto	l8273
	
l8269:	
	goto	l8273
	
l3316:	
	
l8271:	
	movlw	low(01h)
	addwf	(DelayTime_1us@j),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@j+1),f
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u4611
	goto	u4610
u4611:
	goto	l8271
u4610:
	goto	l8273
	
l3317:	
	line	286
	
l8273:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l3314:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u4625
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u4625:
	skipc
	goto	u4621
	goto	u4620
u4621:
	goto	l8265
u4620:
	goto	l3319
	
l3318:	
	line	288
	
l3319:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTime_1us
	__end_of_DelayTime_1us:
;; =============== function _DelayTime_1us ends ============

	signat	_DelayTime_1us,4216
	global	_CC2500_ReadByte
psect	text1345,local,class=CODE,delta=2
global __ptext1345
__ptext1345:

;; *************** function _CC2500_ReadByte *****************
;; Defined at:
;;		line 211 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_b          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;;		_CC2500_RxData
;;		_CC2500_ReadStatus
;;		_CC2500_ReadREG
;; This function uses a non-reentrant model
;;
psect	text1345
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	211
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
	opt	stack 8
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	213
	
l8245:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l8247:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l3283
u4570:
	goto	l3287
	
l8249:	
	goto	l3287
	line	214
	
l3283:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RB2=1;
	bsf	(106/8),(106)&7
	line	216
	
l8251:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	rlf	(_SPI0Buffer),f

	line	217
	
l8253:	
;CC2500_B1.c: 217: if(RB3 == 1)
	btfss	(107/8),(107)&7
	goto	u4581
	goto	u4580
u4581:
	goto	l8257
u4580:
	line	218
	
l8255:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	bsf	(_SPI0Buffer)+(0/8),(0)&7
	goto	l8259
	line	219
	
l3285:	
	line	220
	
l8257:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	andwf	(_SPI0Buffer),f
	goto	l8259
	
l3286:	
	line	221
	
l8259:	
;CC2500_B1.c: 221: RB2=0;
	bcf	(106/8),(106)&7
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l8261:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u4591
	goto	u4590
u4591:
	goto	l3283
u4590:
	goto	l3287
	
l3284:	
	line	223
	
l3287:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadByte
	__end_of_CC2500_ReadByte:
;; =============== function _CC2500_ReadByte ends ============

	signat	_CC2500_ReadByte,88
	global	_CC2500_WriteByte
psect	text1346,local,class=CODE,delta=2
global __ptext1346
__ptext1346:

;; *************** function _CC2500_WriteByte *****************
;; Defined at:
;;		line 194 in file "I:\Program\PIC\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_a          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;;		_CC2500_TxData
;;		_CC2500_RxData
;;		_CC2500_PowerRST
;;		_CC2500_WriteREG
;;		_CC2500_WriteCommand
;;		_CC2500_ReadStatus
;;		_CC2500_ReadREG
;; This function uses a non-reentrant model
;;
psect	text1346
	file	"I:\Program\PIC\Source_File\CC2500_B1.c"
	line	194
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
	opt	stack 8
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l8229:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l8231:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u4541
	goto	u4540
u4541:
	goto	l3276
u4540:
	goto	l3280
	
l8233:	
	goto	l3280
	line	197
	
l3276:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	btfss	(_SPI0Buffer),(7)&7
	goto	u4551
	goto	u4550
u4551:
	goto	l3278
u4550:
	line	199
	
l8235:	
;CC2500_B1.c: 199: RB1=1;
	bsf	(105/8),(105)&7
	goto	l3279
	line	200
	
l3278:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RB1=0;
	bcf	(105/8),(105)&7
	
l3279:	
	line	202
;CC2500_B1.c: 202: RB2=1;
	bsf	(106/8),(106)&7
	line	203
	
l8237:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	rlf	(_SPI0Buffer),f

	line	204
	
l8239:	
;CC2500_B1.c: 204: RB2=0;
	bcf	(106/8),(106)&7
	line	196
	
l8241:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l8243:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l3276
u4560:
	goto	l3280
	
l3277:	
	line	206
	
l3280:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteByte
	__end_of_CC2500_WriteByte:
;; =============== function _CC2500_WriteByte ends ============

	signat	_CC2500_WriteByte,88
	global	_MainT_Initial
psect	text1347,local,class=CODE,delta=2
global __ptext1347
__ptext1347:

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
psect	text1347
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	34
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 11
; Regs used in _MainT_Initial: [wregfsr1]
	line	35
	
l8223:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_TMain)
	line	36
	
l8225:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l8227:	
;myMain.c: 37: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	38
	
l1075:	
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TMR1_ISR
;;		_INT_ISR
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
	opt	stack 7
; Regs used in _ISR: [wreg+fsr1l-status,0+pclath+cstack]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	58
	
i1l7811:	
;MCU_16f1516_B1.c: 58: _nop();
	nop
	line	60
;MCU_16f1516_B1.c: 60: _nop();
	nop
	line	62
	
i1l7813:	
;MCU_16f1516_B1.c: 62: TMR1_ISR();
	fcall	_TMR1_ISR
	line	66
;MCU_16f1516_B1.c: 66: INT_ISR();
	fcall	_INT_ISR
	line	70
;MCU_16f1516_B1.c: 68: ;;
;MCU_16f1516_B1.c: 70: I2C_ISR();
	fcall	_I2C_ISR
	line	71
	
i1l5565:	
	movf	(??_ISR+0),w
	movlb 0	; select bank0
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_INT_ISR
psect	text1349,local,class=CODE,delta=2
global __ptext1349
__ptext1349:

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 157 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_setRF_ReceiveGO
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1349
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	157
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
	opt	stack 7
; Regs used in _INT_ISR: [wreg+fsr1l-status,0+pclath+cstack]
	line	158
	
i1l7829:	
;MCU_16f1516_B1.c: 158: if(INTE && INTF)
	btfss	(92/8),(92)&7
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l5580
u374_20:
	
i1l7831:	
	btfss	(89/8),(89)&7
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l5580
u375_20:
	line	160
	
i1l7833:	
;MCU_16f1516_B1.c: 159: {
;MCU_16f1516_B1.c: 160: INTF=0;
	bcf	(89/8),(89)&7
	line	161
;MCU_16f1516_B1.c: 161: INTE=0;
	bcf	(92/8),(92)&7
	line	162
	
i1l7835:	
;MCU_16f1516_B1.c: 162: setRF_ReceiveGO(1,1);
	clrf	(?_setRF_ReceiveGO)
	bsf	status,0
	rlf	(?_setRF_ReceiveGO),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l5580
	line	163
	
i1l5579:	
	line	164
	
i1l5580:	
	return
	opt stack 0
GLOBAL	__end_of_INT_ISR
	__end_of_INT_ISR:
;; =============== function _INT_ISR ends ============

	signat	_INT_ISR,88
	global	_setRF_ReceiveGO
psect	text1350,local,class=CODE,delta=2
global __ptext1350
__ptext1350:

;; *************** function _setRF_ReceiveGO *****************
;; Defined at:
;;		line 38 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;;  command         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         1       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_RfPointSelect
;; This function is called by:
;;		_INT_ISR
;; This function uses a non-reentrant model
;;
psect	text1350
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	38
	global	__size_of_setRF_ReceiveGO
	__size_of_setRF_ReceiveGO	equ	__end_of_setRF_ReceiveGO-_setRF_ReceiveGO
	
_setRF_ReceiveGO:	
	opt	stack 7
; Regs used in _setRF_ReceiveGO: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_ReceiveGO@rf stored from wreg
	movwf	(setRF_ReceiveGO@rf)
	line	39
	
i1l7613:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l7615:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l4405:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_ReceiveGO
	__end_of_setRF_ReceiveGO:
;; =============== function _setRF_ReceiveGO ends ============

	signat	_setRF_ReceiveGO,8312
	global	i1_RfPointSelect
psect	text1351,local,class=CODE,delta=2
global __ptext1351
__ptext1351:

;; *************** function i1_RfPointSelect *****************
;; Defined at:
;;		line 8 in file "I:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  RfPointSelec    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  RfPointSelec    1    1[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_ReceiveGO
;; This function uses a non-reentrant model
;;
psect	text1351
	file	"I:\Program\PIC\Source_File\RF_Control_B1.c"
	line	8
	global	__size_ofi1_RfPointSelect
	__size_ofi1_RfPointSelect	equ	__end_ofi1_RfPointSelect-i1_RfPointSelect
	
i1_RfPointSelect:	
	opt	stack 7
; Regs used in i1_RfPointSelect: [wreg]
;i1RfPointSelect@rf stored from wreg
	line	10
	movwf	(i1RfPointSelect@rf)
	
i1l7909:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u414_21
	goto	u414_20
u414_21:
	goto	i1l4393
u414_20:
	line	12
	
i1l7911:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	i1l4393
	line	13
	
i1l4392:	
	line	15
	
i1l4393:	
	return
	opt stack 0
GLOBAL	__end_ofi1_RfPointSelect
	__end_ofi1_RfPointSelect:
;; =============== function i1_RfPointSelect ends ============

	signat	i1_RfPointSelect,88
	global	_I2C_ISR
psect	text1352,local,class=CODE,delta=2
global __ptext1352
__ptext1352:

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
psect	text1352
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	261
	global	__size_of_I2C_ISR
	__size_of_I2C_ISR	equ	__end_of_I2C_ISR-_I2C_ISR
	
_I2C_ISR:	
	opt	stack 9
; Regs used in _I2C_ISR: [wregfsr1]
	line	262
	
i1l7837:	
;MCU_16f1516_B1.c: 262: if(SSPIE && SSPIF)
	movlb 1	; select bank1
	btfss	(1163/8)^080h,(1163)&7
	goto	u376_21
	goto	u376_20
u376_21:
	goto	i1l5590
u376_20:
	
i1l7839:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7
	goto	u377_21
	goto	u377_20
u377_21:
	goto	i1l5590
u377_20:
	line	264
	
i1l7841:	
;MCU_16f1516_B1.c: 263: {
;MCU_16f1516_B1.c: 264: SSPIE=0;
	movlb 1	; select bank1
	bcf	(1163/8)^080h,(1163)&7
	line	265
	
i1l7843:	
;MCU_16f1516_B1.c: 265: I2C->SlaveGO=1;
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l5590
	line	272
	
i1l5589:	
	line	273
	
i1l5590:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_ISR
	__end_of_I2C_ISR:
;; =============== function _I2C_ISR ends ============

	signat	_I2C_ISR,88
	global	_TMR1_ISR
psect	text1353,local,class=CODE,delta=2
global __ptext1353
__ptext1353:

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
psect	text1353
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	126
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
	opt	stack 9
; Regs used in _TMR1_ISR: [wreg+fsr1l-status,0]
	line	127
	
i1l7815:	
;MCU_16f1516_B1.c: 127: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7
	goto	u371_21
	goto	u371_20
u371_21:
	goto	i1l5573
u371_20:
	
i1l7817:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l5573
u372_20:
	line	129
	
i1l7819:	
;MCU_16f1516_B1.c: 128: {
;MCU_16f1516_B1.c: 129: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	130
;MCU_16f1516_B1.c: 130: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	131
	
i1l7821:	
;MCU_16f1516_B1.c: 131: TMR1IF=0;
	bcf	(136/8),(136)&7
	line	132
	
i1l7823:	
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
	
i1l7825:	
;MCU_16f1516_B1.c: 133: if(Timer1->Count == 20)
	movf	(_Timer1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u373_25
	moviw	[1]fsr1
	xorlw	high(014h)
u373_25:
	skipz
	goto	u373_21
	goto	u373_20
u373_21:
	goto	i1l5573
u373_20:
	line	135
	
i1l7827:	
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
	goto	i1l5573
	line	137
	
i1l5572:	
	goto	i1l5573
	line	138
	
i1l5571:	
	line	139
	
i1l5573:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
;; =============== function _TMR1_ISR ends ============

	signat	_TMR1_ISR,88
psect	text1354,local,class=CODE,delta=2
global __ptext1354
__ptext1354:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
