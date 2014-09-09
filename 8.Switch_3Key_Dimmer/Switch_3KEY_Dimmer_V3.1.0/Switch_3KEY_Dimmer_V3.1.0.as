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
# 7 "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	dw 0xFFFC & 0xFFE7 ;#
# 8 "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	dw 0xFFFF & 0xFFFD ;#
	FNCALL	_main,_MainT_Initial
	FNCALL	_main,_Flash_Memory_Initial
	FNCALL	_main,_LED_Initial
	FNCALL	_main,_Buzzer_Initial
	FNCALL	_main,_setLED1
	FNCALL	_main,_setLED2
	FNCALL	_main,_setLED3
	FNCALL	_main,_RF_Initial
	FNCALL	_main,_CC2500_PowerOnInitial
	FNCALL	_main,_MainT
	FNCALL	_main,_Flash_Memory_Main
	FNCALL	_main,_setDimmerLights1
	FNCALL	_main,_setBuzzer
	FNCALL	_main,_setTxData
	FNCALL	_main,_setDimmerLights1_Adj
	FNCALL	_main,_setDimmerLights2
	FNCALL	_main,_setDimmerLights2_Adj
	FNCALL	_main,_setDimmerLights3
	FNCALL	_main,_setDimmerLights3_Adj
	FNCALL	_main,_RF_Main
	FNCALL	_main,_Buzzer_Main
	FNCALL	_main,_LED_Main
	FNCALL	_RF_Main,_RF_RxDisable
	FNCALL	_RF_Main,_CC2500_RxData
	FNCALL	_RF_Main,_getRxData
	FNCALL	_RF_Main,_CC2500_TxData
	FNCALL	_RF_Main,_CC2500_WriteCommand
	FNCALL	_Flash_Memory_Main,_Flash_Memory_Modify
	FNCALL	_MainT,_setBuzzer
	FNCALL	_MainT,_setLoadtoEnable
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_getRxData,_setBuzzer
	FNCALL	_getRxData,_setDimmerLights1
	FNCALL	_getRxData,_setDimmerLights2
	FNCALL	_getRxData,_setDimmerLights3
	FNCALL	_getRxData,_setTxData
	FNCALL	_getRxData,_DelayTimejudge
	FNCALL	_getRxData,_setRF_DimmerValue
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Erasing
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Write
	FNCALL	_setRF_Enable,_CC2500_WriteCommand
	FNCALL	_setRF_Enable,_RF_RxDisable
	FNCALL	_Flash_Memory_Initial,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Initial,_Flash_Memory_Write
	FNCALL	_CC2500_PowerOnInitial,_CC2500_PowerRST
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitSetREG
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitPATable
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearTXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearRXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_FrequencyCabr
	FNCALL	_CC2500_PowerOnInitial,_CC2500_SIDLEMode
	FNCALL	_RF_RxDisable,_CC2500_WriteCommand
	FNCALL	_Flash_Memory_Erasing,_Flash_Memory_Unlock
	FNCALL	_Flash_Memory_Write,_Flash_Memory_Unlock
	FNCALL	_setDimmerLights3,_setLoad_GO_On
	FNCALL	_setDimmerLights3,_setLED3
	FNCALL	_setDimmerLights3,_setRF_DimmerLights
	FNCALL	_setDimmerLights3,_setLoad_JudgeValue
	FNCALL	_setDimmerLights3,_Dimmer_setOverLoad_GO_Off
	FNCALL	_setDimmerLights2,_setLoad_GO_On
	FNCALL	_setDimmerLights2,_setLED2
	FNCALL	_setDimmerLights2,_setRF_DimmerLights
	FNCALL	_setDimmerLights2,_setLoad_JudgeValue
	FNCALL	_setDimmerLights2,_Dimmer_setOverLoad_GO_Off
	FNCALL	_setDimmerLights1,_setLoad_GO_On
	FNCALL	_setDimmerLights1,_setLED1
	FNCALL	_setDimmerLights1,_setRF_DimmerLights
	FNCALL	_setDimmerLights1,_setLoad_JudgeValue
	FNCALL	_setDimmerLights1,_Dimmer_setOverLoad_GO_Off
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
	FNCALL	_CC2500_TxData,_CC2500_WriteByte
	FNCALL	_CC2500_TxData,_CC2500_WriteCommand
	FNCALL	_setRF_DimmerValue,_getStartValue
	FNCALL	_setDimmerLights3_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights2_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights1_Adj,_setRF_DimmerLights
	FNCALL	_CC2500_WriteREG,_CC2500_WriteByte
	FNCALL	_CC2500_PowerRST,_DelayTime_1us
	FNCALL	_CC2500_PowerRST,_CC2500_WriteByte
	FNCALL	_CC2500_ReadStatus,_CC2500_WriteByte
	FNCALL	_CC2500_ReadStatus,_CC2500_ReadByte
	FNCALL	_CC2500_WriteCommand,_CC2500_WriteByte
	FNROOT	_main
	FNCALL	_ISR,i1_setLoad_JudgeValue
	FNCALL	_ISR,i1_setLED1
	FNCALL	_ISR,_Dimmer_Close
	FNCALL	_ISR,i1_setLED2
	FNCALL	_ISR,i1_setLED3
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
	global	_VarMemory
psect	idataBANK2,class=CODE,space=0,delta=2
global __pidataBANK2
__pidataBANK2:
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\../Release/Switch_3key_Dimmer_V3.1.0.h"
	line	220

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
	retlw	03h
	retlw	025h
	retlw	025h
	retlw	025h
	retlw	0
	retlw	0
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\../Release/MCU_16F1516_A.h"
	line	614

;initializer for _VarMemory
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
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
	retlw	0AAh
	retlw	0AAh
	retlw	0AAh
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
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\../Release/CC2500_A1.h"
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
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\../Release/CC2500_A1.h"
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
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\../Release/CC2500_A1.h"
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
	global	_Buzzer
	global	_CRC
	global	_DelayOffSw1
	global	_DelayOffSw2
	global	_DelayOffSw3
	global	_Dimmable
	global	_DimmerLights3
	global	_Memory
	global	_RF
	global	_RFsw1
	global	_RFsw2
	global	_RFsw3
	global	_RSSI
	global	_Rx_Length
	global	_SPI0Buffer
	global	_Sw1
	global	_Sw2
	global	_Sw3
	global	_Tx_Length
	global	__ErrLED
	global	__LED1
	global	__LED2
	global	__LED3
	global	_r_address
	global	_r_data
	global	_s_data
	global	_DimmerLights1
	global	_DimmerLights2
	global	_CC2500_Enable
	global	_Receive_GO
	global	_Receive_OK
	global	_RxStatus
	global	_Transceive_GO
	global	_Transceive_OK
	global	_TxStatus
	global	_VarErrLED
	global	_VarLED1
	global	_VarLED2
	global	_VarLED3
	global	_VarDimmable
	global	_VarRF
	global	_VarRFsw1
	global	_VarRFsw2
	global	_VarRFsw3
	global	_VarTMain
	global	_VarDimmerLights3
	global	_VarDimmerLights1
	global	_VarDimmerLights2
	global	_VarBuzzer
	global	_VarSw1
	global	_VarSw2
	global	_VarSw3
	global	_VarTimer0
	global	_VarDelayOffSw1
	global	_VarDelayOffSw2
	global	_VarDelayOffSw3
	global	_Product
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_Product:
       ds      1

	global	_TMain
_TMain:
       ds      1

	global	_Timer0
_Timer0:
       ds      1

	global	_PORTA
_PORTA	set	12
	global	_PORTB
_PORTB	set	13
	global	_PORTC
_PORTC	set	14
	global	_TMR0
_TMR0	set	21
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_IOCIE
_IOCIE	set	91
	global	_IOCIF
_IOCIF	set	88
	global	_PEIE
_PEIE	set	94
	global	_RA0
_RA0	set	96
	global	_RA3
_RA3	set	99
	global	_RA4
_RA4	set	100
	global	_RA6
_RA6	set	102
	global	_RA7
_RA7	set	103
	global	_RB0
_RB0	set	104
	global	_RB1
_RB1	set	105
	global	_RB3
_RB3	set	107
	global	_RB4
_RB4	set	108
	global	_RB5
_RB5	set	109
	global	_RC0
_RC0	set	112
	global	_RC1
_RC1	set	113
	global	_RC2
_RC2	set	114
	global	_RC4
_RC4	set	116
	global	_RC5
_RC5	set	117
	global	_RC6
_RC6	set	118
	global	_RC7
_RC7	set	119
	global	_RCIF
_RCIF	set	141
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_TXIF
_TXIF	set	140
	global	_ADCON1
_ADCON1	set	158
	global	_OPTION_REG
_OPTION_REG	set	149
	global	_OSCCON
_OSCCON	set	153
	global	_TRISA
_TRISA	set	140
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
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
	global	_PMADRH
_PMADRH	set	402
	global	_PMADRL
_PMADRL	set	401
	global	_PMCON2
_PMCON2	set	406
	global	_PMDATH
_PMDATH	set	404
	global	_PMDATL
_PMDATL	set	403
	global	_RCREG
_RCREG	set	409
	global	_TXREG
_TXREG	set	410
	global	_CFGS
_CFGS	set	3246
	global	_FREE
_FREE	set	3244
	global	_LWLO
_LWLO	set	3245
	global	_RD
_RD	set	3240
	global	_WR
_WR	set	3241
	global	_WREN
_WREN	set	3242
	global	_WPUB0
_WPUB0	set	4200
	global	_WPUB2
_WPUB2	set	4202
	global	_IOCBF
_IOCBF	set	918
	global	_IOCBN
_IOCBN	set	917
	global	_IOCBP
_IOCBP	set	916
	global	_IOCBF2
_IOCBF2	set	7346
	file	"Switch_3KEY_Dimmer_V3.1.0.as"
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
_DimmerLights1:
       ds      1

_DimmerLights2:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_RF_Data:
       ds      21

_RF_Count:
       ds      2

_Buzzer:
       ds      1

_CRC:
       ds      1

_DelayOffSw1:
       ds      1

_DelayOffSw2:
       ds      1

_DelayOffSw3:
       ds      1

_Dimmable:
       ds      1

_DimmerLights3:
       ds      1

_Memory:
       ds      1

_RF:
       ds      1

_RFsw1:
       ds      1

_RFsw2:
       ds      1

_RFsw3:
       ds      1

_RSSI:
       ds      1

_Rx_Length:
       ds      1

_SPI0Buffer:
       ds      1

_Sw1:
       ds      1

_Sw2:
       ds      1

_Sw3:
       ds      1

_Tx_Length:
       ds      1

__ErrLED:
       ds      1

__LED1:
       ds      1

__LED2:
       ds      1

__LED3:
       ds      1

_r_address:
       ds      1

_r_data:
       ds      1

_s_data:
       ds      1

_VarErrLED:
       ds      4

_VarLED1:
       ds      4

_VarLED2:
       ds      4

_VarLED3:
       ds      4

_VarDimmable:
       ds      2

_VarRF:
       ds      2

_VarRFsw1:
       ds      1

_VarRFsw2:
       ds      1

_VarRFsw3:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_VarDimmerLights1:
       ds      11

_VarDimmerLights2:
       ds      11

_VarBuzzer:
       ds      9

_VarSw1:
       ds      9

_VarSw2:
       ds      9

_VarSw3:
       ds      9

_VarTimer0:
       ds      7

_VarDelayOffSw1:
       ds      5

_VarDelayOffSw2:
       ds      5

_VarDelayOffSw3:
       ds      5

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_VarTMain:
       ds      12

_VarDimmerLights3:
       ds      11

psect	dataBANK2,class=BANK2,space=1
global __pdataBANK2
__pdataBANK2:
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\../Release/Switch_3key_Dimmer_V3.1.0.h"
	line	220
_VarProduct:
       ds      26

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\../Release/MCU_16F1516_A.h"
	line	614
_VarMemory:
       ds      37

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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	048h
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	050h
	fcall	clear_ram
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	017h
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
; Initialize objects allocated to BANK2
	global __pidataBANK2,__pdataBANK2
psect cinit,class=CODE,delta=2
	movlw low(__pidataBANK2)
	movwf fsr0l
	movlw high(__pidataBANK2)|80h
	movwf fsr0h
	movlw low(__pdataBANK2)
	movwf fsr1l
	movlw high(__pdataBANK2)
	movwf fsr1h
	movlw 01Ah
	fcall init_ram
; Initialize objects allocated to BANK3
	global __pidataBANK3,__pdataBANK3
psect cinit,class=CODE,delta=2
	movlw low(__pidataBANK3)
	movwf fsr0l
	movlw high(__pidataBANK3)|80h
	movwf fsr0h
	movlw low(__pdataBANK3)
	movwf fsr1l
	movlw high(__pdataBANK3)
	movwf fsr1h
	movlw 025h
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK2,class=BANK2,space=1
global __pcstackBANK2
__pcstackBANK2:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
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
	global	?_setLoad_GO_On
?_setLoad_GO_On:	; 0 bytes @ 0x0
	global	?_setLED1
?_setLED1:	; 0 bytes @ 0x0
	global	?_setLoad_JudgeValue
?_setLoad_JudgeValue:	; 0 bytes @ 0x0
	global	?_Dimmer_setOverLoad_GO_Off
?_Dimmer_setOverLoad_GO_Off:	; 0 bytes @ 0x0
	global	?_setLED2
?_setLED2:	; 0 bytes @ 0x0
	global	?_setLED3
?_setLED3:	; 0 bytes @ 0x0
	global	?_MainT_Initial
?_MainT_Initial:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Initial
?_Flash_Memory_Initial:	; 0 bytes @ 0x0
	global	?_RF_Initial
?_RF_Initial:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Main
?_Flash_Memory_Main:	; 0 bytes @ 0x0
	global	?_setTxData
?_setTxData:	; 0 bytes @ 0x0
	global	?_RF_Main
?_RF_Main:	; 0 bytes @ 0x0
	global	?_setLoadtoEnable
?_setLoadtoEnable:	; 0 bytes @ 0x0
	global	?_setRF_Enable
?_setRF_Enable:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Write
?_Flash_Memory_Write:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Modify
?_Flash_Memory_Modify:	; 0 bytes @ 0x0
	global	?_RF_RxDisable
?_RF_RxDisable:	; 0 bytes @ 0x0
	global	?_getRxData
?_getRxData:	; 0 bytes @ 0x0
	global	?_setRF_DimmerValue
?_setRF_DimmerValue:	; 0 bytes @ 0x0
	global	?_Buzzer_Initial
?_Buzzer_Initial:	; 0 bytes @ 0x0
	global	?_Buzzer_Main
?_Buzzer_Main:	; 0 bytes @ 0x0
	global	?_CC2500_TxData
?_CC2500_TxData:	; 0 bytes @ 0x0
	global	?_CC2500_RxData
?_CC2500_RxData:	; 0 bytes @ 0x0
	global	?_CC2500_PowerOnInitial
?_CC2500_PowerOnInitial:	; 0 bytes @ 0x0
	global	?_setDimmerLights1
?_setDimmerLights1:	; 0 bytes @ 0x0
	global	?_setDimmerLights2
?_setDimmerLights2:	; 0 bytes @ 0x0
	global	?_setDimmerLights3
?_setDimmerLights3:	; 0 bytes @ 0x0
	global	?_setDimmerLights1_Adj
?_setDimmerLights1_Adj:	; 0 bytes @ 0x0
	global	?_setDimmerLights2_Adj
?_setDimmerLights2_Adj:	; 0 bytes @ 0x0
	global	?_setDimmerLights3_Adj
?_setDimmerLights3_Adj:	; 0 bytes @ 0x0
	global	?_Dimmer_Close
?_Dimmer_Close:	; 0 bytes @ 0x0
	global	??_Dimmer_Close
??_Dimmer_Close:	; 0 bytes @ 0x0
	global	?_LED_Initial
?_LED_Initial:	; 0 bytes @ 0x0
	global	?_LED_Main
?_LED_Main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Unlock
?_Flash_Memory_Unlock:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Erasing
?_Flash_Memory_Erasing:	; 0 bytes @ 0x0
	global	?i1_setLED1
?i1_setLED1:	; 0 bytes @ 0x0
	global	??i1_setLED1
??i1_setLED1:	; 0 bytes @ 0x0
	global	?i1_setLED2
?i1_setLED2:	; 0 bytes @ 0x0
	global	??i1_setLED2
??i1_setLED2:	; 0 bytes @ 0x0
	global	?i1_setLED3
?i1_setLED3:	; 0 bytes @ 0x0
	global	??i1_setLED3
??i1_setLED3:	; 0 bytes @ 0x0
	global	?i1_setLoad_JudgeValue
?i1_setLoad_JudgeValue:	; 0 bytes @ 0x0
	global	??i1_setLoad_JudgeValue
??i1_setLoad_JudgeValue:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Read
?_Flash_Memory_Read:	; 1 bytes @ 0x0
	global	?_DelayTimejudge
?_DelayTimejudge:	; 1 bytes @ 0x0
	global	i1setLED1@status
i1setLED1@status:	; 1 bytes @ 0x0
	global	i1setLED2@status
i1setLED2@status:	; 1 bytes @ 0x0
	global	i1setLED3@status
i1setLED3@status:	; 1 bytes @ 0x0
	ds	1
	global	??_ISR
??_ISR:	; 0 bytes @ 0x1
	ds	2
	global	??_CC2500_WriteByte
??_CC2500_WriteByte:	; 0 bytes @ 0x3
	global	??_CC2500_ReadByte
??_CC2500_ReadByte:	; 0 bytes @ 0x3
	global	?_DelayTime_1us
?_DelayTime_1us:	; 0 bytes @ 0x3
	global	??_setLoad_GO_On
??_setLoad_GO_On:	; 0 bytes @ 0x3
	global	??_setLED1
??_setLED1:	; 0 bytes @ 0x3
	global	?_setRF_DimmerLights
?_setRF_DimmerLights:	; 0 bytes @ 0x3
	global	??_setLoad_JudgeValue
??_setLoad_JudgeValue:	; 0 bytes @ 0x3
	global	??_Dimmer_setOverLoad_GO_Off
??_Dimmer_setOverLoad_GO_Off:	; 0 bytes @ 0x3
	global	??_setLED2
??_setLED2:	; 0 bytes @ 0x3
	global	??_setLED3
??_setLED3:	; 0 bytes @ 0x3
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x3
	global	??_RF_Initial
??_RF_Initial:	; 0 bytes @ 0x3
	global	??_setTxData
??_setTxData:	; 0 bytes @ 0x3
	global	??_setLoadtoEnable
??_setLoadtoEnable:	; 0 bytes @ 0x3
	global	??_Flash_Memory_Read
??_Flash_Memory_Read:	; 0 bytes @ 0x3
	global	??_Flash_Memory_Write
??_Flash_Memory_Write:	; 0 bytes @ 0x3
	global	??_DelayTimejudge
??_DelayTimejudge:	; 0 bytes @ 0x3
	global	?_setBuzzer
?_setBuzzer:	; 0 bytes @ 0x3
	global	??_Buzzer_Initial
??_Buzzer_Initial:	; 0 bytes @ 0x3
	global	??_Buzzer_Main
??_Buzzer_Main:	; 0 bytes @ 0x3
	global	??_LED_Initial
??_LED_Initial:	; 0 bytes @ 0x3
	global	??_LED_Main
??_LED_Main:	; 0 bytes @ 0x3
	global	??_Flash_Memory_Unlock
??_Flash_Memory_Unlock:	; 0 bytes @ 0x3
	global	??_Flash_Memory_Erasing
??_Flash_Memory_Erasing:	; 0 bytes @ 0x3
	global	?_getStartValue
?_getStartValue:	; 1 bytes @ 0x3
	global	setLED1@status
setLED1@status:	; 1 bytes @ 0x3
	global	setLED2@status
setLED2@status:	; 1 bytes @ 0x3
	global	setLED3@status
setLED3@status:	; 1 bytes @ 0x3
	global	setRF_DimmerLights@on
setRF_DimmerLights@on:	; 1 bytes @ 0x3
	global	setBuzzer@time
setBuzzer@time:	; 2 bytes @ 0x3
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x3
	ds	1
	global	CC2500_WriteByte@loop_a
CC2500_WriteByte@loop_a:	; 1 bytes @ 0x4
	global	CC2500_ReadByte@loop_b
CC2500_ReadByte@loop_b:	; 1 bytes @ 0x4
	global	Flash_Memory_Read@i
Flash_Memory_Read@i:	; 1 bytes @ 0x4
	global	Flash_Memory_Write@i
Flash_Memory_Write@i:	; 1 bytes @ 0x4
	global	setRF_DimmerLights@value
setRF_DimmerLights@value:	; 1 bytes @ 0x4
	global	DelayTimejudge@i
DelayTimejudge@i:	; 1 bytes @ 0x4
	ds	1
	global	??_CC2500_WriteCommand
??_CC2500_WriteCommand:	; 0 bytes @ 0x5
	global	??_CC2500_ReadStatus
??_CC2500_ReadStatus:	; 0 bytes @ 0x5
	global	??_CC2500_PowerRST
??_CC2500_PowerRST:	; 0 bytes @ 0x5
	global	??_DelayTime_1us
??_DelayTime_1us:	; 0 bytes @ 0x5
	global	?_CC2500_WriteREG
?_CC2500_WriteREG:	; 0 bytes @ 0x5
	global	??_setRF_DimmerLights
??_setRF_DimmerLights:	; 0 bytes @ 0x5
	global	??_setBuzzer
??_setBuzzer:	; 0 bytes @ 0x5
	global	CC2500_WriteREG@value
CC2500_WriteREG@value:	; 1 bytes @ 0x5
	global	Flash_Memory_Read@address
Flash_Memory_Read@address:	; 1 bytes @ 0x5
	global	DelayTimejudge@value
DelayTimejudge@value:	; 1 bytes @ 0x5
	ds	1
	global	??_CC2500_WriteREG
??_CC2500_WriteREG:	; 0 bytes @ 0x6
	global	??_setRF_DimmerValue
??_setRF_DimmerValue:	; 0 bytes @ 0x6
	global	??_getStartValue
??_getStartValue:	; 0 bytes @ 0x6
	global	setBuzzer@count
setBuzzer@count:	; 1 bytes @ 0x6
	global	CC2500_WriteCommand@command
CC2500_WriteCommand@command:	; 1 bytes @ 0x6
	global	CC2500_ReadStatus@status_addr
CC2500_ReadStatus@status_addr:	; 1 bytes @ 0x6
	global	Flash_Memory_Read@ret
Flash_Memory_Read@ret:	; 1 bytes @ 0x6
	global	setRF_DimmerLights@lights
setRF_DimmerLights@lights:	; 1 bytes @ 0x6
	ds	1
	global	??_CC2500_ClearTXFIFO
??_CC2500_ClearTXFIFO:	; 0 bytes @ 0x7
	global	??_CC2500_ClearRXFIFO
??_CC2500_ClearRXFIFO:	; 0 bytes @ 0x7
	global	??_CC2500_FrequencyCabr
??_CC2500_FrequencyCabr:	; 0 bytes @ 0x7
	global	??_CC2500_SIDLEMode
??_CC2500_SIDLEMode:	; 0 bytes @ 0x7
	global	??_Flash_Memory_Initial
??_Flash_Memory_Initial:	; 0 bytes @ 0x7
	global	??_setRF_Enable
??_setRF_Enable:	; 0 bytes @ 0x7
	global	??_RF_RxDisable
??_RF_RxDisable:	; 0 bytes @ 0x7
	global	??_CC2500_TxData
??_CC2500_TxData:	; 0 bytes @ 0x7
	global	??_CC2500_RxData
??_CC2500_RxData:	; 0 bytes @ 0x7
	global	??_setDimmerLights1
??_setDimmerLights1:	; 0 bytes @ 0x7
	global	??_setDimmerLights2
??_setDimmerLights2:	; 0 bytes @ 0x7
	global	??_setDimmerLights3
??_setDimmerLights3:	; 0 bytes @ 0x7
	global	??_setDimmerLights1_Adj
??_setDimmerLights1_Adj:	; 0 bytes @ 0x7
	global	??_setDimmerLights2_Adj
??_setDimmerLights2_Adj:	; 0 bytes @ 0x7
	global	??_setDimmerLights3_Adj
??_setDimmerLights3_Adj:	; 0 bytes @ 0x7
	global	CC2500_WriteREG@w_addr
CC2500_WriteREG@w_addr:	; 1 bytes @ 0x7
	global	Flash_Memory_Modify@i
Flash_Memory_Modify@i:	; 1 bytes @ 0x7
	global	setRF_Enable@command
setRF_Enable@command:	; 1 bytes @ 0x7
	global	setRF_DimmerValue@lights
setRF_DimmerValue@lights:	; 1 bytes @ 0x7
	ds	1
	global	??_MainT
??_MainT:	; 0 bytes @ 0x8
	global	??_Flash_Memory_Main
??_Flash_Memory_Main:	; 0 bytes @ 0x8
	global	??_CC2500_PowerOnInitial
??_CC2500_PowerOnInitial:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_CC2500_InitSetREG
??_CC2500_InitSetREG:	; 0 bytes @ 0x0
	global	??_CC2500_InitPATable
??_CC2500_InitPATable:	; 0 bytes @ 0x0
	global	??_Flash_Memory_Modify
??_Flash_Memory_Modify:	; 0 bytes @ 0x0
	global	CC2500_TxData@loop_e
CC2500_TxData@loop_e:	; 1 bytes @ 0x0
	global	CC2500_RxData@loop_f
CC2500_RxData@loop_f:	; 1 bytes @ 0x0
	global	setDimmerLights1@status
setDimmerLights1@status:	; 1 bytes @ 0x0
	global	setDimmerLights2@status
setDimmerLights2@status:	; 1 bytes @ 0x0
	global	setDimmerLights3@status
setDimmerLights3@status:	; 1 bytes @ 0x0
	global	setDimmerLights1_Adj@status
setDimmerLights1_Adj@status:	; 1 bytes @ 0x0
	global	setDimmerLights2_Adj@status
setDimmerLights2_Adj@status:	; 1 bytes @ 0x0
	global	setDimmerLights3_Adj@status
setDimmerLights3_Adj@status:	; 1 bytes @ 0x0
	global	DelayTime_1us@i
DelayTime_1us@i:	; 2 bytes @ 0x0
	ds	1
	global	??_getRxData
??_getRxData:	; 0 bytes @ 0x1
	global	CC2500_InitSetREG@temp1
CC2500_InitSetREG@temp1:	; 1 bytes @ 0x1
	global	CC2500_InitPATable@temp
CC2500_InitPATable@temp:	; 1 bytes @ 0x1
	ds	1
	global	??_RF_Main
??_RF_Main:	; 0 bytes @ 0x2
	global	CC2500_InitSetREG@temp2
CC2500_InitSetREG@temp2:	; 1 bytes @ 0x2
	global	CC2500_InitPATable@loop_d
CC2500_InitPATable@loop_d:	; 1 bytes @ 0x2
	global	DelayTime_1us@j
DelayTime_1us@j:	; 2 bytes @ 0x2
	ds	1
	global	CC2500_InitSetREG@loop_c
CC2500_InitSetREG@loop_c:	; 1 bytes @ 0x3
	ds	1
;;Data sizes: Strings 0, constant 102, data 63, bss 177, persistent 3 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      11
;; BANK0           80      4      79
;; BANK1           80      0      80
;; BANK2           80      2      51
;; BANK3           80      0      37
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           16      0       0

;;
;; Pointer list with targets:

;; TMain	PTR struct TMain size(1) Largest target is 12
;;		 -> NULL(NULL[0]), VarTMain(BANK2[12]), 
;;
;; DelayOffSw3	PTR struct DelayOff size(1) Largest target is 5
;;		 -> NULL(NULL[0]), VarDelayOffSw3(BANK1[5]), 
;;
;; DelayOffSw2	PTR struct DelayOff size(1) Largest target is 5
;;		 -> NULL(NULL[0]), VarDelayOffSw2(BANK1[5]), 
;;
;; DelayOffSw1	PTR struct DelayOff size(1) Largest target is 5
;;		 -> NULL(NULL[0]), VarDelayOffSw1(BANK1[5]), 
;;
;; Product	PTR struct Product size(1) Largest target is 26
;;		 -> NULL(NULL[0]), VarProduct(BANK2[26]), 
;;
;; Timer0	PTR struct Timer0 size(1) Largest target is 7
;;		 -> NULL(NULL[0]), VarTimer0(BANK1[7]), 
;;
;; _LED3	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarLED3(BANK0[4]), 
;;
;; _LED2	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarLED2(BANK0[4]), 
;;
;; _LED1	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarLED1(BANK0[4]), 
;;
;; _ErrLED	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarErrLED(BANK0[4]), 
;;
;; RFsw3	PTR struct RFsw size(1) Largest target is 1
;;		 -> NULL(NULL[0]), VarRFsw3(BANK0[1]), 
;;
;; Sw3	PTR struct Switch size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarSw3(BANK1[9]), 
;;
;; RFsw2	PTR struct RFsw size(1) Largest target is 1
;;		 -> NULL(NULL[0]), VarRFsw2(BANK0[1]), 
;;
;; Sw2	PTR struct Switch size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarSw2(BANK1[9]), 
;;
;; RFsw1	PTR struct RFsw size(1) Largest target is 1
;;		 -> NULL(NULL[0]), VarRFsw1(BANK0[1]), 
;;
;; Sw1	PTR struct Switch size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarSw1(BANK1[9]), 
;;
;; Memory	PTR struct FlashMemory size(1) Largest target is 37
;;		 -> NULL(NULL[0]), VarMemory(BANK3[37]), 
;;
;; DimmerLights3	PTR struct DimmerLights size(1) Largest target is 11
;;		 -> NULL(NULL[0]), VarDimmerLights3(BANK2[11]), 
;;
;; DimmerLights2	PTR struct DimmerLights size(1) Largest target is 11
;;		 -> NULL(NULL[0]), VarDimmerLights2(BANK1[11]), 
;;
;; Dimmable	PTR struct Dimmer size(1) Largest target is 2
;;		 -> NULL(NULL[0]), VarDimmable(BANK0[2]), 
;;
;; DimmerLights1	PTR struct DimmerLights size(1) Largest target is 11
;;		 -> NULL(NULL[0]), VarDimmerLights1(BANK1[11]), 
;;
;; RF	PTR struct RF size(1) Largest target is 2
;;		 -> NULL(NULL[0]), VarRF(BANK0[2]), 
;;
;; Buzzer	PTR struct Buzzer size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarBuzzer(BANK1[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Flash_Memory_Initial
;;   _main->_setDimmerLights1
;;   _main->_setDimmerLights1_Adj
;;   _main->_setDimmerLights2
;;   _main->_setDimmerLights2_Adj
;;   _main->_setDimmerLights3
;;   _main->_setDimmerLights3_Adj
;;   _RF_Main->_CC2500_RxData
;;   _RF_Main->_CC2500_TxData
;;   _Flash_Memory_Main->_Flash_Memory_Modify
;;   _MainT->_setRF_Enable
;;   _getRxData->_setDimmerLights1
;;   _getRxData->_setDimmerLights2
;;   _getRxData->_setDimmerLights3
;;   _getRxData->_setRF_DimmerValue
;;   _Flash_Memory_Modify->_Flash_Memory_Read
;;   _setRF_Enable->_CC2500_WriteCommand
;;   _Flash_Memory_Initial->_Flash_Memory_Read
;;   _RF_RxDisable->_CC2500_WriteCommand
;;   _setDimmerLights3->_setRF_DimmerLights
;;   _setDimmerLights2->_setRF_DimmerLights
;;   _setDimmerLights1->_setRF_DimmerLights
;;   _CC2500_SIDLEMode->_CC2500_WriteCommand
;;   _CC2500_FrequencyCabr->_CC2500_WriteCommand
;;   _CC2500_ClearRXFIFO->_CC2500_WriteCommand
;;   _CC2500_ClearTXFIFO->_CC2500_WriteCommand
;;   _CC2500_InitPATable->_CC2500_WriteREG
;;   _CC2500_InitSetREG->_CC2500_WriteREG
;;   _CC2500_RxData->_CC2500_ReadStatus
;;   _CC2500_RxData->_CC2500_WriteCommand
;;   _CC2500_TxData->_CC2500_WriteCommand
;;   _setRF_DimmerValue->_getStartValue
;;   _setDimmerLights3_Adj->_setRF_DimmerLights
;;   _setDimmerLights2_Adj->_setRF_DimmerLights
;;   _setDimmerLights1_Adj->_setRF_DimmerLights
;;   _CC2500_WriteREG->_CC2500_WriteByte
;;   _CC2500_PowerRST->_DelayTime_1us
;;   _CC2500_PowerRST->_CC2500_WriteByte
;;   _CC2500_ReadStatus->_CC2500_WriteByte
;;   _CC2500_ReadStatus->_CC2500_ReadByte
;;   _CC2500_WriteCommand->_CC2500_WriteByte
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->i1_setLED1
;;   _ISR->i1_setLED2
;;   _ISR->i1_setLED3
;;
;; Critical Paths under _main in BANK0
;;
;;   _RF_Main->_getRxData
;;   _Flash_Memory_Main->_Flash_Memory_Modify
;;   _getRxData->_setDimmerLights1
;;   _getRxData->_setDimmerLights2
;;   _getRxData->_setDimmerLights3
;;   _CC2500_PowerOnInitial->_CC2500_InitSetREG
;;   _CC2500_FrequencyCabr->_DelayTime_1us
;;   _CC2500_PowerRST->_DelayTime_1us
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    8987
;;                                              0 BANK2      2     2      0
;;                      _MainT_Initial
;;               _Flash_Memory_Initial
;;                        _LED_Initial
;;                     _Buzzer_Initial
;;                            _setLED1
;;                            _setLED2
;;                            _setLED3
;;                         _RF_Initial
;;              _CC2500_PowerOnInitial
;;                              _MainT
;;                  _Flash_Memory_Main
;;                   _setDimmerLights1
;;                          _setBuzzer
;;                          _setTxData
;;               _setDimmerLights1_Adj
;;                   _setDimmerLights2
;;               _setDimmerLights2_Adj
;;                   _setDimmerLights3
;;               _setDimmerLights3_Adj
;;                            _RF_Main
;;                        _Buzzer_Main
;;                           _LED_Main
;; ---------------------------------------------------------------------------------
;; (1) _RF_Main                                              1     1      0    3100
;;                                              2 BANK0      1     1      0
;;                       _RF_RxDisable
;;                      _CC2500_RxData
;;                          _getRxData
;;                      _CC2500_TxData
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Main                                    0     0      0     267
;;                _Flash_Memory_Modify
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                0     0      0     348
;;                          _setBuzzer
;;                    _setLoadtoEnable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (2) _getRxData                                            2     2      0    2197
;;                                              1 BANK0      1     1      0
;;                          _setBuzzer
;;                   _setDimmerLights1
;;                   _setDimmerLights2
;;                   _setDimmerLights3
;;                          _setTxData
;;                     _DelayTimejudge
;;                  _setRF_DimmerValue
;; ---------------------------------------------------------------------------------
;; (2) _Flash_Memory_Modify                                  3     3      0     267
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      2     2      0
;;                  _Flash_Memory_Read
;;               _Flash_Memory_Erasing
;;                 _Flash_Memory_Write
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Enable                                         1     1      0     260
;;                                              7 COMMON     1     1      0
;;                _CC2500_WriteCommand
;;                       _RF_RxDisable
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Initial                                 2     2      0     137
;;                                              7 COMMON     1     1      0
;;                  _Flash_Memory_Read
;;                 _Flash_Memory_Write
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
;; (2) _RF_RxDisable                                         0     0      0      99
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Erasing                                 0     0      0       0
;;                _Flash_Memory_Unlock
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Write                                   2     2      0      90
;;                                              3 COMMON     2     2      0
;;                _Flash_Memory_Unlock
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights3                                     2     2      0     620
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                      _setLoad_GO_On
;;                            _setLED3
;;                 _setRF_DimmerLights
;;                 _setLoad_JudgeValue
;;          _Dimmer_setOverLoad_GO_Off
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights2                                     2     2      0     620
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                      _setLoad_GO_On
;;                            _setLED2
;;                 _setRF_DimmerLights
;;                 _setLoad_JudgeValue
;;          _Dimmer_setOverLoad_GO_Off
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights1                                     2     2      0     620
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                      _setLoad_GO_On
;;                            _setLED1
;;                 _setRF_DimmerLights
;;                 _setLoad_JudgeValue
;;          _Dimmer_setOverLoad_GO_Off
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
;;                                              0 BANK0      3     3      0
;;                    _CC2500_WriteREG
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_InitSetREG                                    4     4      0     328
;;                                              0 BANK0      4     4      0
;;                    _CC2500_WriteREG
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_RxData                                        2     2      0     470
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                  _CC2500_ReadStatus
;;                   _CC2500_WriteByte
;;                    _CC2500_ReadByte
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_TxData                                        2     2      0     235
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                   _CC2500_WriteByte
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (3) _setRF_DimmerValue                                    2     2      0      88
;;                                              6 COMMON     2     2      0
;;                      _getStartValue
;; ---------------------------------------------------------------------------------
;; (4) _Flash_Memory_Unlock                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _setLoadtoEnable                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _LED_Main                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _setDimmerLights3_Adj                                 2     2      0     496
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                 _setRF_DimmerLights
;; ---------------------------------------------------------------------------------
;; (1) _setDimmerLights2_Adj                                 2     2      0     496
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                 _setRF_DimmerLights
;; ---------------------------------------------------------------------------------
;; (1) _setDimmerLights1_Adj                                 2     2      0     496
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                 _setRF_DimmerLights
;; ---------------------------------------------------------------------------------
;; (4) _setLoad_JudgeValue                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _setLoad_GO_On                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_WriteREG                                      3     2      1     130
;;                                              5 COMMON     3     2      1
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_PowerRST                                      1     1      0     204
;;                                              5 COMMON     1     1      0
;;                      _DelayTime_1us
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_ReadStatus                                    2     2      0     167
;;                                              5 COMMON     2     2      0
;;                   _CC2500_WriteByte
;;                    _CC2500_ReadByte
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_WriteCommand                                  2     2      0      99
;;                                              5 COMMON     2     2      0
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (3) _DelayTimejudge                                       3     3      0     161
;;                                              3 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Read                                    4     4      0      47
;;                                              3 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (3) _setTxData                                            1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _RF_Initial                                           1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _LED_Initial                                          1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _getStartValue                                        3     0      3       0
;;                                              3 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (4) _setLED3                                              1     1      0     124
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _setLED2                                              1     1      0     124
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _Dimmer_setOverLoad_GO_Off                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _setRF_DimmerLights                                   4     2      2     434
;;                                              3 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (4) _setLED1                                              1     1      0     124
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayTime_1us                                        6     4      2     136
;;                                              3 COMMON     2     0      2
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_ReadByte                                      2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_WriteByte                                     2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Buzzer_Main                                          2     2      0       0
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Buzzer_Initial                                       1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _setBuzzer                                            4     2      2      88
;;                                              3 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ISR                                                  2     2      0     876
;;                                              1 COMMON     2     2      0
;;               i1_setLoad_JudgeValue
;;                          i1_setLED1
;;                       _Dimmer_Close
;;                          i1_setLED2
;;                          i1_setLED3
;; ---------------------------------------------------------------------------------
;; (7) i1_setLoad_JudgeValue                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (7) i1_setLED3                                            1     1      0     292
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (7) i1_setLED2                                            1     1      0     292
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (7) i1_setLED1                                            1     1      0     292
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (7) _Dimmer_Close                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initial
;;   _Flash_Memory_Initial
;;     _Flash_Memory_Read
;;     _Flash_Memory_Write
;;       _Flash_Memory_Unlock
;;   _LED_Initial
;;   _Buzzer_Initial
;;   _setLED1
;;   _setLED2
;;   _setLED3
;;   _RF_Initial
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
;;     _setBuzzer
;;     _setLoadtoEnable
;;     _setRF_Enable
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;       _RF_RxDisable
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;   _Flash_Memory_Main
;;     _Flash_Memory_Modify
;;       _Flash_Memory_Read
;;       _Flash_Memory_Erasing
;;         _Flash_Memory_Unlock
;;       _Flash_Memory_Write
;;         _Flash_Memory_Unlock
;;   _setDimmerLights1
;;     _setLoad_GO_On
;;     _setLED1
;;     _setRF_DimmerLights
;;     _setLoad_JudgeValue
;;     _Dimmer_setOverLoad_GO_Off
;;   _setBuzzer
;;   _setTxData
;;   _setDimmerLights1_Adj
;;     _setRF_DimmerLights
;;   _setDimmerLights2
;;     _setLoad_GO_On
;;     _setLED2
;;     _setRF_DimmerLights
;;     _setLoad_JudgeValue
;;     _Dimmer_setOverLoad_GO_Off
;;   _setDimmerLights2_Adj
;;     _setRF_DimmerLights
;;   _setDimmerLights3
;;     _setLoad_GO_On
;;     _setLED3
;;     _setRF_DimmerLights
;;     _setLoad_JudgeValue
;;     _Dimmer_setOverLoad_GO_Off
;;   _setDimmerLights3_Adj
;;     _setRF_DimmerLights
;;   _RF_Main
;;     _RF_RxDisable
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;     _CC2500_RxData
;;       _CC2500_ReadStatus
;;         _CC2500_WriteByte
;;         _CC2500_ReadByte
;;       _CC2500_WriteByte
;;       _CC2500_ReadByte
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;     _getRxData
;;       _setBuzzer
;;       _setDimmerLights1
;;         _setLoad_GO_On
;;         _setLED1
;;         _setRF_DimmerLights
;;         _setLoad_JudgeValue
;;         _Dimmer_setOverLoad_GO_Off
;;       _setDimmerLights2
;;         _setLoad_GO_On
;;         _setLED2
;;         _setRF_DimmerLights
;;         _setLoad_JudgeValue
;;         _Dimmer_setOverLoad_GO_Off
;;       _setDimmerLights3
;;         _setLoad_GO_On
;;         _setLED3
;;         _setRF_DimmerLights
;;         _setLoad_JudgeValue
;;         _Dimmer_setOverLoad_GO_Off
;;       _setTxData
;;       _DelayTimejudge
;;       _setRF_DimmerValue
;;         _getStartValue
;;     _CC2500_TxData
;;       _CC2500_WriteByte
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;     _CC2500_WriteCommand
;;       _CC2500_WriteByte
;;   _Buzzer_Main
;;   _LED_Main
;;
;; _ISR (ROOT)
;;   i1_setLoad_JudgeValue
;;   i1_setLED1
;;   _Dimmer_Close
;;   i1_setLED2
;;   i1_setLED3
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             1F0      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      8       B       2       78.6%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       9       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0     102       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50      4      4F       6       98.8%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BITBANK1            50      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BANK1               50      0      50       8      100.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BITBANK2            50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BANK2               50      2      33      10       63.8%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BITBANK3            50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BANK3               50      0      25      12       46.3%
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
;;DATA                 0      0     10B      19        0.0%
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
;;		line 7 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       2       0       0       0       0
;;      Totals:         0       0       0       2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_MainT_Initial
;;		_Flash_Memory_Initial
;;		_LED_Initial
;;		_Buzzer_Initial
;;		_setLED1
;;		_setLED2
;;		_setLED3
;;		_RF_Initial
;;		_CC2500_PowerOnInitial
;;		_MainT
;;		_Flash_Memory_Main
;;		_setDimmerLights1
;;		_setBuzzer
;;		_setTxData
;;		_setDimmerLights1_Adj
;;		_setDimmerLights2
;;		_setDimmerLights2_Adj
;;		_setDimmerLights3
;;		_setDimmerLights3_Adj
;;		_RF_Main
;;		_Buzzer_Main
;;		_LED_Main
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\main.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 9
; Regs used in _main: [wreg-status,0+pclath+cstack]
	line	8
	
l16543:	
;main.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l16545:	
;main.c: 9: ; OSCCON=0x78; ; TRISA=0b01110111;; TRISB=0b00000101;; TRISC=0b00001100;; LATA=0b00000000;; LATB=0b00000000;; LATC=0b00000000;; ANSELA=0b00100010;; ANSELB=0b00000000;; ANSELC=0b00000000;; PORTA=0b01110111;; PORTB=0b00000101;; PORTC=0b00001100;; ;; ; 
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	
l16547:	
	movlw	(077h)
	movwf	(140)^080h	;volatile
	
l16549:	
	movlw	(05h)
	movwf	(141)^080h	;volatile
	
l16551:	
	movlw	(0Ch)
	movwf	(142)^080h	;volatile
	
l16553:	
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	
l16555:	
	clrf	(269)^0100h	;volatile
	
l16557:	
	clrf	(270)^0100h	;volatile
	
l16559:	
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	
l16561:	
	clrf	(397)^0180h	;volatile
	
l16563:	
	clrf	(398)^0180h	;volatile
	
l16565:	
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	
l16567:	
	movlw	(05h)
	movwf	(13)	;volatile
	
l16569:	
	movlw	(0Ch)
	movwf	(14)	;volatile
	
l16571:	
	movlw	(_VarTimer0)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Timer0)
	
l16573:	
	movf	(_Timer0),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(09Eh)
	movwi	[0]fsr1
	movlw	high(09Eh)
	movwi	[1]fsr1
	
l16575:	
	movlb 1	; select bank1
	clrf	(149)^080h	;volatile
	
l16577:	
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	
l16579:	
	bsf	(93/8),(93)&7
	
l16581:	
	bsf	(95/8),(95)&7
	
l16583:	
	nop
	
l16585:	
	movlw	(0F2h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	
l16587:	
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	
l16589:	
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7
	
l16591:	
	bsf	(94/8),(94)&7
	
l16593:	
	bsf	(95/8),(95)&7
	
l16595:	
	bcf	(4202/8)^0200h,(4202)&7
	
l16597:	
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	
l16599:	
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	
l16601:	
	clrf	(918)^0380h	;volatile
	
l16603:	
	bsf	(91/8),(91)&7
	
l16605:	
	bcf	(88/8),(88)&7
	
l16607:	
	bsf	(95/8),(95)&7
	
l16609:	
	nop
	
l16611:	
	movlw	(_VarMemory)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Memory)
	line	10
	
l16613:	
;main.c: 10: Flash_Memory_Initial();
	fcall	_Flash_Memory_Initial
	line	11
	
l16615:	
;main.c: 11: LED_Initial();
	fcall	_LED_Initial
	line	12
	
l16617:	
;main.c: 12: Buzzer_Initial();
	fcall	_Buzzer_Initial
	line	13
;main.c: 13: while(RC5 == 0) RC5=1; ;; setLED1(1); setLED2(1); setLED3(1); ;; Sw1=&VarSw1; ;; Sw2=&VarSw2; ;; Sw3=&VarSw3; ;; ;;
	goto	l5946
	
l5947:	
	bsf	(117/8),(117)&7
	
l5946:	
	movlb 0	; select bank0
	btfss	(117/8),(117)&7
	goto	u9851
	goto	u9850
u9851:
	goto	l5947
u9850:
	goto	l16619
	
l5948:	
	
l16619:	
	movlw	(01h)
	fcall	_setLED1
	movlw	(01h)
	fcall	_setLED2
	movlw	(01h)
	fcall	_setLED3
	
l16621:	
	movlw	(_VarSw1)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Sw1)
	
l16623:	
	movlw	(_VarSw2)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Sw2)
	
l16625:	
	movlw	(_VarSw3)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Sw3)
	line	14
	
l16627:	
;main.c: 14: Dimmable=&VarDimmable; DimmerLights1=&VarDimmerLights1; DimmerLights1->StartValue=Product->Data[21]; DimmerLights1->StopValue=((char)((100-20)*1.5)); DimmerLights1->Dimmable=1; DimmerLights1->DimmingValue=DimmerLights1->StopValue; ;; Dimmable=&VarDim
	movlw	(_VarDimmable)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Dimmable)
	
l16629:	
	movlw	(_VarDimmerLights1)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movwf	(_DimmerLights1)
	
l16631:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l16633:	
	movlw	(078h)
	movwf	(??_main+0)^0100h+0
	movf	(_DimmerLights1),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l16635:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,7
	
l16637:	
	movf	(_DimmerLights1),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_main+0)^0100h+0
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l16639:	
	movlw	(_VarDimmable)&0ffh
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Dimmable)
	
l16641:	
	movlw	(_VarDimmerLights2)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movwf	(_DimmerLights2)
	
l16643:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l16645:	
	movlw	(078h)
	movwf	(??_main+0)^0100h+0
	movf	(_DimmerLights2),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l16647:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,7
	
l16649:	
	movf	(_DimmerLights2),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_main+0)^0100h+0
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l16651:	
	movlw	(_VarDimmable)&0ffh
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Dimmable)
	
l16653:	
	movlw	(_VarDimmerLights3)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_DimmerLights3)
	
l16655:	
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l16657:	
	movlw	(078h)
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l16659:	
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	
l16661:	
	movf	(_DimmerLights3),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	line	15
	
l16663:	
;main.c: 15: _nop();
	nop
	line	16
	
l16665:	
;main.c: 16: _nop();
	nop
	line	17
	
l16667:	
;main.c: 17: DelayOffSw1=&VarDelayOffSw1; DelayOffSw2=&VarDelayOffSw2; DelayOffSw3=&VarDelayOffSw3; ;;
	movlw	(_VarDelayOffSw1)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_DelayOffSw1)
	
l16669:	
	movlw	(_VarDelayOffSw2)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_DelayOffSw2)
	
l16671:	
	movlw	(_VarDelayOffSw3)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_DelayOffSw3)
	line	18
	
l16673:	
;main.c: 18: RF_Initial();
	fcall	_RF_Initial
	line	19
	
l16675:	
;main.c: 19: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l16677
	line	21
;main.c: 21: while(1)
	
l5949:	
	line	23
	
l16677:	
;main.c: 22: {
;main.c: 23: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9861
	goto	u9860
u9861:
	goto	l16681
u9860:
	line	25
	
l16679:	
;main.c: 24: {
;main.c: 25: _nop();
	nop
	line	26
;main.c: 26: _nop();
	nop
	goto	l16681
	line	27
	
l5950:	
	line	29
	
l16681:	
;main.c: 27: }
;main.c: 29: if(TMain->T0_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9871
	goto	u9870
u9871:
	goto	l16677
u9870:
	line	31
	
l16683:	
;main.c: 30: {
;main.c: 31: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	32
	
l16685:	
;main.c: 32: MainT();
	fcall	_MainT
	line	33
	
l16687:	
;main.c: 33: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9881
	goto	u9880
u9881:
	goto	l16677
u9880:
	line	35
	
l16689:	
;main.c: 34: {
;main.c: 35: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	36
	
l16691:	
;main.c: 36: _nop();
	nop
	line	37
	
l16693:	
;main.c: 37: _nop();
	nop
	line	38
	
l16695:	
;main.c: 38: if(Sw1->Enable == 1) { if(RA6) { if(Sw1->Debounce == 0) { Sw1->DebounceTime++; if(Sw1->DebounceTime >= 100) { Sw1->DebounceTime=0; Sw1->Debounce=1; if(RA6) { DelayOffSw1->GO=0; DelayOffSw1->SecondTime=0; ;; Sw1->Flag=1; if(Sw1->Status == 0) { Sw1->St
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9891
	goto	u9890
u9891:
	goto	l16769
u9890:
	
l16697:	
	btfss	(102/8),(102)&7
	goto	u9901
	goto	u9900
u9901:
	goto	l16755
u9900:
	
l16699:	
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u9911
	goto	u9910
u9911:
	goto	l16723
u9910:
	
l16701:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16703:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u9921
	goto	u9920
u9921:
	goto	l16769
u9920:
	
l16705:	
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l16707:	
	btfss	(102/8),(102)&7
	goto	u9931
	goto	u9930
u9931:
	goto	l16769
u9930:
	
l16709:	
	movf	(_DelayOffSw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DelayOffSw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9941
	goto	u9940
u9941:
	goto	l16719
u9940:
	
l16711:	
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16713:	
	movlw	(01h)
	fcall	_setDimmerLights1
	
l16715:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16717:	
	fcall	_setTxData
	goto	l16769
	
l5958:	
	
l16719:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16721:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l16769
	
l5959:	
	goto	l16769
	
l5957:	
	goto	l16769
	
l5956:	
	goto	l16769
	
l5955:	
	
l16723:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u9951
	goto	u9950
u9951:
	goto	l16737
u9950:
	
l16725:	
	movf	(_Sw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16727:	
	movf	(_Sw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(03E8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u9961
	goto	u9960
u9961:
	goto	l16769
u9960:
	
l16729:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9971
	goto	u9970
u9971:
	goto	l16769
u9970:
	
l16731:	
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16733:	
	movlw	(01h)
	fcall	_setDimmerLights1_Adj
	
l16735:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l16769
	
l5963:	
	goto	l16769
	
l5962:	
	goto	l16769
	
l5961:	
	
l16737:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u9981
	goto	u9980
u9981:
	goto	l16747
u9980:
	
l16739:	
	movf	(_Sw1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16741:	
	movf	(_Sw1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(03E8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u9991
	goto	u9990
u9991:
	goto	l16769
u9990:
	
l16743:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,6
	
l16745:	
	movlw	low(032h)
	movwf	(?_setBuzzer)
	movlw	high(032h)
	movwf	((?_setBuzzer))+1
	movlw	(02h)
	fcall	_setBuzzer
	goto	l16769
	
l5966:	
	goto	l16769
	
l5965:	
	
l16747:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u10001
	goto	u10000
u10001:
	goto	l16769
u10000:
	
l16749:	
	movf	(_Sw1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16751:	
	movf	(_Sw1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(0BB8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(0BB8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10011
	goto	u10010
u10011:
	goto	l16769
u10010:
	
l16753:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,4
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	goto	l16769
	
l5969:	
	goto	l16769
	
l5968:	
	goto	l16769
	
l5967:	
	goto	l16769
	
l5964:	
	goto	l16769
	
l5960:	
	goto	l16769
	
l5954:	
	
l16755:	
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10021
	goto	u10020
u10021:
	goto	l16769
u10020:
	
l16757:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16759:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10031
	goto	u10030
u10031:
	goto	l16769
u10030:
	
l16761:	
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_Sw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	movf	(_Sw1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	movf	(_Sw1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10041
	goto	u10040
u10041:
	goto	l16769
u10040:
	
l16763:	
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10051
	goto	u10050
u10051:
	goto	l16767
u10050:
	
l16765:	
	movlw	(0)
	fcall	_setDimmerLights1_Adj
	goto	l5975
	
l5974:	
	
l16767:	
	movlw	(0)
	fcall	_setDimmerLights1
	
l5975:	
	fcall	_setTxData
	goto	l16769
	
l5973:	
	goto	l16769
	
l5972:	
	goto	l16769
	
l5971:	
	goto	l16769
	
l5970:	
	goto	l16769
	
l5953:	
	
l16769:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10061
	goto	u10060
u10061:
	goto	l16843
u10060:
	
l16771:	
	btfss	(100/8),(100)&7
	goto	u10071
	goto	u10070
u10071:
	goto	l16829
u10070:
	
l16773:	
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u10081
	goto	u10080
u10081:
	goto	l16797
u10080:
	
l16775:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16777:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10091
	goto	u10090
u10091:
	goto	l16843
u10090:
	
l16779:	
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l16781:	
	btfss	(100/8),(100)&7
	goto	u10101
	goto	u10100
u10101:
	goto	l16843
u10100:
	
l16783:	
	movf	(_DelayOffSw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DelayOffSw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u10111
	goto	u10110
u10111:
	goto	l16793
u10110:
	
l16785:	
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16787:	
	movlw	(01h)
	fcall	_setDimmerLights2
	
l16789:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16791:	
	fcall	_setTxData
	goto	l16843
	
l5981:	
	
l16793:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16795:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l16843
	
l5982:	
	goto	l16843
	
l5980:	
	goto	l16843
	
l5979:	
	goto	l16843
	
l5978:	
	
l16797:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u10121
	goto	u10120
u10121:
	goto	l16811
u10120:
	
l16799:	
	movf	(_Sw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16801:	
	movf	(_Sw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(03E8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10131
	goto	u10130
u10131:
	goto	l16843
u10130:
	
l16803:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10141
	goto	u10140
u10141:
	goto	l16843
u10140:
	
l16805:	
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16807:	
	movlw	(01h)
	fcall	_setDimmerLights2_Adj
	
l16809:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l16843
	
l5986:	
	goto	l16843
	
l5985:	
	goto	l16843
	
l5984:	
	
l16811:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10151
	goto	u10150
u10151:
	goto	l16821
u10150:
	
l16813:	
	movf	(_Sw2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16815:	
	movf	(_Sw2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(03E8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10161
	goto	u10160
u10161:
	goto	l16843
u10160:
	
l16817:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,6
	
l16819:	
	movlw	low(032h)
	movwf	(?_setBuzzer)
	movlw	high(032h)
	movwf	((?_setBuzzer))+1
	movlw	(02h)
	fcall	_setBuzzer
	goto	l16843
	
l5989:	
	goto	l16843
	
l5988:	
	
l16821:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u10171
	goto	u10170
u10171:
	goto	l16843
u10170:
	
l16823:	
	movf	(_Sw2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16825:	
	movf	(_Sw2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(0BB8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(0BB8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10181
	goto	u10180
u10181:
	goto	l16843
u10180:
	
l16827:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,4
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	goto	l16843
	
l5992:	
	goto	l16843
	
l5991:	
	goto	l16843
	
l5990:	
	goto	l16843
	
l5987:	
	goto	l16843
	
l5983:	
	goto	l16843
	
l5977:	
	
l16829:	
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10191
	goto	u10190
u10191:
	goto	l16843
u10190:
	
l16831:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16833:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10201
	goto	u10200
u10201:
	goto	l16843
u10200:
	
l16835:	
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_Sw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	movf	(_Sw2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	movf	(_Sw2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10211
	goto	u10210
u10211:
	goto	l16843
u10210:
	
l16837:	
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10221
	goto	u10220
u10221:
	goto	l16841
u10220:
	
l16839:	
	movlw	(0)
	fcall	_setDimmerLights2_Adj
	goto	l5998
	
l5997:	
	
l16841:	
	movlw	(0)
	fcall	_setDimmerLights2
	
l5998:	
	fcall	_setTxData
	goto	l16843
	
l5996:	
	goto	l16843
	
l5995:	
	goto	l16843
	
l5994:	
	goto	l16843
	
l5993:	
	goto	l16843
	
l5976:	
	
l16843:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10231
	goto	u10230
u10231:
	goto	l5999
u10230:
	
l16845:	
	btfss	(96/8),(96)&7
	goto	u10241
	goto	u10240
u10241:
	goto	l16903
u10240:
	
l16847:	
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u10251
	goto	u10250
u10251:
	goto	l16871
u10250:
	
l16849:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16851:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10261
	goto	u10260
u10261:
	goto	l5999
u10260:
	
l16853:	
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l16855:	
	btfss	(96/8),(96)&7
	goto	u10271
	goto	u10270
u10271:
	goto	l5999
u10270:
	
l16857:	
	movf	(_DelayOffSw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DelayOffSw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u10281
	goto	u10280
u10281:
	goto	l16867
u10280:
	
l16859:	
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16861:	
	movlw	(01h)
	fcall	_setDimmerLights3
	
l16863:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16865:	
	fcall	_setTxData
	goto	l5999
	
l6004:	
	
l16867:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16869:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l5999
	
l6005:	
	goto	l5999
	
l6003:	
	goto	l5999
	
l6002:	
	goto	l5999
	
l6001:	
	
l16871:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u10291
	goto	u10290
u10291:
	goto	l16885
u10290:
	
l16873:	
	movf	(_Sw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16875:	
	movf	(_Sw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(03E8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10301
	goto	u10300
u10301:
	goto	l5999
u10300:
	
l16877:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10311
	goto	u10310
u10311:
	goto	l5999
u10310:
	
l16879:	
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16881:	
	movlw	(01h)
	fcall	_setDimmerLights3_Adj
	
l16883:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l5999
	
l6009:	
	goto	l5999
	
l6008:	
	goto	l5999
	
l6007:	
	
l16885:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10321
	goto	u10320
u10321:
	goto	l16895
u10320:
	
l16887:	
	movf	(_Sw3),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16889:	
	movf	(_Sw3),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(03E8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10331
	goto	u10330
u10331:
	goto	l5999
u10330:
	
l16891:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,6
	
l16893:	
	movlw	low(032h)
	movwf	(?_setBuzzer)
	movlw	high(032h)
	movwf	((?_setBuzzer))+1
	movlw	(02h)
	fcall	_setBuzzer
	goto	l5999
	
l6012:	
	goto	l5999
	
l6011:	
	
l16895:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u10341
	goto	u10340
u10341:
	goto	l5999
u10340:
	
l16897:	
	movf	(_Sw3),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16899:	
	movf	(_Sw3),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(0BB8h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(0BB8h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10351
	goto	u10350
u10351:
	goto	l5999
u10350:
	
l16901:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,4
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	goto	l5999
	
l6015:	
	goto	l5999
	
l6014:	
	goto	l5999
	
l6013:	
	goto	l5999
	
l6010:	
	goto	l5999
	
l6006:	
	goto	l5999
	
l6000:	
	
l16903:	
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10361
	goto	u10360
u10361:
	goto	l5999
u10360:
	
l16905:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16907:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10371
	goto	u10370
u10371:
	goto	l5999
u10370:
	
l16909:	
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_Sw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	movf	(_Sw3),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	movf	(_Sw3),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10381
	goto	u10380
u10381:
	goto	l5999
u10380:
	
l16911:	
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10391
	goto	u10390
u10391:
	goto	l16915
u10390:
	
l16913:	
	movlw	(0)
	fcall	_setDimmerLights3_Adj
	goto	l6021
	
l6020:	
	
l16915:	
	movlw	(0)
	fcall	_setDimmerLights3
	
l6021:	
	fcall	_setTxData
	goto	l5999
	
l6019:	
	goto	l5999
	
l6018:	
	goto	l5999
	
l6017:	
	goto	l5999
	
l6016:	
	
l5999:	
	line	39
;main.c: 39: RF_Main();
	fcall	_RF_Main
	line	40
	
l16917:	
;main.c: 40: if(DelayOffSw1->GO) { DelayOffSw1->SecondTime++; if(DelayOffSw1->SecondTime >= 60000) { DelayOffSw1->SecondTime=0; DelayOffSw1->MinuteTime++; if(DelayOffSw1->MinuteTime >= DelayOffSw1->Value) { DelayOffSw1->MinuteTime=0; DelayOffSw1->GO=0; RFsw1->Sta
	movlb 0	; select bank0
	movf	(_DelayOffSw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10401
	goto	u10400
u10401:
	goto	l16937
u10400:
	
l16919:	
	movf	(_DelayOffSw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16921:	
	movf	(_DelayOffSw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(0EA60h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(0EA60h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10411
	goto	u10410
u10411:
	goto	l16937
u10410:
	
l16923:	
	movlb 0	; select bank0
	movf	(_DelayOffSw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l16925:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_DelayOffSw1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16927:	
	movlb 0	; select bank0
	movf	(_DelayOffSw1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DelayOffSw1),w
	addlw	01h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u10421
	goto	u10420
u10421:
	goto	l16937
u10420:
	
l16929:	
	movf	(_DelayOffSw1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DelayOffSw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16931:	
	movlw	(0)
	fcall	_setDimmerLights1
	
l16933:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16935:	
	fcall	_setTxData
	goto	l16937
	
l6024:	
	goto	l16937
	
l6023:	
	goto	l16937
	
l6022:	
	
l16937:	
	movlb 0	; select bank0
	movf	(_DelayOffSw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10431
	goto	u10430
u10431:
	goto	l16957
u10430:
	
l16939:	
	movf	(_DelayOffSw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16941:	
	movf	(_DelayOffSw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(0EA60h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(0EA60h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10441
	goto	u10440
u10441:
	goto	l16957
u10440:
	
l16943:	
	movlb 0	; select bank0
	movf	(_DelayOffSw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l16945:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_DelayOffSw2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16947:	
	movlb 0	; select bank0
	movf	(_DelayOffSw2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DelayOffSw2),w
	addlw	01h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u10451
	goto	u10450
u10451:
	goto	l16957
u10450:
	
l16949:	
	movf	(_DelayOffSw2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DelayOffSw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16951:	
	movlw	(0)
	fcall	_setDimmerLights2
	
l16953:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16955:	
	fcall	_setTxData
	goto	l16957
	
l6027:	
	goto	l16957
	
l6026:	
	goto	l16957
	
l6025:	
	
l16957:	
	movlb 0	; select bank0
	movf	(_DelayOffSw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10461
	goto	u10460
u10461:
	goto	l16977
u10460:
	
l16959:	
	movf	(_DelayOffSw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16961:	
	movf	(_DelayOffSw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	moviw	[1]fsr1
	movwf	(??_main+0)^0100h+0+1
	movlw	high(0EA60h)
	subwf	1+(??_main+0)^0100h+0,w
	movlw	low(0EA60h)
	skipnz
	subwf	0+(??_main+0)^0100h+0,w
	skipc
	goto	u10471
	goto	u10470
u10471:
	goto	l16977
u10470:
	
l16963:	
	movlb 0	; select bank0
	movf	(_DelayOffSw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l16965:	
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movlb 0	; select bank0
	movf	(_DelayOffSw3),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(??_main+0)^0100h+0,w
	addwf	indf1,f
	
l16967:	
	movlb 0	; select bank0
	movf	(_DelayOffSw3),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DelayOffSw3),w
	addlw	01h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u10481
	goto	u10480
u10481:
	goto	l16977
u10480:
	
l16969:	
	movf	(_DelayOffSw3),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DelayOffSw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16971:	
	movlw	(0)
	fcall	_setDimmerLights3
	
l16973:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16975:	
	fcall	_setTxData
	goto	l16977
	
l6030:	
	goto	l16977
	
l6029:	
	goto	l16977
	
l6028:	
	line	41
	
l16977:	
;main.c: 41: Buzzer_Main();
	fcall	_Buzzer_Main
	line	42
	
l16979:	
;main.c: 42: LED_Main();
	fcall	_LED_Main
	goto	l16677
	line	43
	
l5952:	
	goto	l16677
	line	44
	
l5951:	
	goto	l16677
	line	45
	
l6031:	
	line	21
	goto	l16677
	
l6032:	
	line	46
	
l6033:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RF_Main
psect	text1869,local,class=CODE,delta=2
global __ptext1869
__ptext1869:

;; *************** function _RF_Main *****************
;; Defined at:
;;		line 11 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RF_RxDisable
;;		_CC2500_RxData
;;		_getRxData
;;		_CC2500_TxData
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1869
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	11
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
	opt	stack 10
; Regs used in _RF_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	12
	
l16485:	
;RF_Control_A1.c: 12: if(RF->Enable) { if((RA6 || RA4 || RA0) && RF->Learn == 0) { RF_RxDisable(); } else { if(RF->ReceiveGO) { CC2500_RxData(); RF->ReceiveGO=0; getRxData(); RB5=~RB5; } else { if(RF->TransceiveGO) { RF_RxDisable(); if(RF->Debounce == 0) { RF->DebounceTim
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9731
	goto	u9730
u9731:
	goto	l10743
u9730:
	
l16487:	
	btfsc	(102/8),(102)&7
	goto	u9741
	goto	u9740
u9741:
	goto	l16493
u9740:
	
l16489:	
	btfsc	(100/8),(100)&7
	goto	u9751
	goto	u9750
u9751:
	goto	l16493
u9750:
	
l16491:	
	btfss	(96/8),(96)&7
	goto	u9761
	goto	u9760
u9761:
	goto	l16497
u9760:
	goto	l16493
	
l10730:	
	
l16493:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u9771
	goto	u9770
u9771:
	goto	l16497
u9770:
	
l16495:	
	fcall	_RF_RxDisable
	goto	l10743
	
l10728:	
	
l16497:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9781
	goto	u9780
u9781:
	goto	l16507
u9780:
	
l16499:	
	fcall	_CC2500_RxData
	
l16501:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	
l16503:	
	fcall	_getRxData
	
l16505:	
	movlw	1<<((109)&7)
	movlb 0	; select bank0
	xorwf	((109)/8),f
	goto	l10743
	
l10732:	
	
l16507:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u9791
	goto	u9790
u9791:
	goto	l16523
u9790:
	
l16509:	
	fcall	_RF_RxDisable
	
l16511:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u9801
	goto	u9800
u9801:
	goto	l16519
u9800:
	
l16513:	
	movlw	(01h)
	movwf	(??_RF_Main+0)+0
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_RF_Main+0)+0,w
	addwf	indf1,f
	
l16515:	
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	096h&0ffh
	skipz
	goto	u9811
	goto	u9810
u9811:
	goto	l10743
u9810:
	
l16517:	
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l10743
	
l10736:	
	goto	l10743
	
l10735:	
	
l16519:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	
l16521:	
	fcall	_CC2500_TxData
	goto	l10743
	
l10737:	
	goto	l10743
	
l10734:	
	
l16523:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u9821
	goto	u9820
u9821:
	goto	l10743
u9820:
	
l16525:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u9831
	goto	u9830
u9831:
	goto	l16533
u9830:
	
l16527:	
	movlw	(01h)
	movwf	(??_RF_Main+0)+0
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_RF_Main+0)+0,w
	addwf	indf1,f
	
l16529:	
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	032h&0ffh
	skipz
	goto	u9841
	goto	u9840
u9841:
	goto	l10743
u9840:
	
l16531:	
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l10743
	
l10741:	
	goto	l10743
	
l10740:	
	
l16533:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	
l16535:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	
l16537:	
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	
l16539:	
	bcf	(89/8),(89)&7
	
l16541:	
	bsf	(92/8),(92)&7
	goto	l10743
	
l10742:	
	goto	l10743
	
l10739:	
	goto	l10743
	
l10738:	
	goto	l10743
	
l10733:	
	goto	l10743
	
l10731:	
	goto	l10743
	
l10727:	
	line	13
	
l10743:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Main
	__end_of_RF_Main:
;; =============== function _RF_Main ends ============

	signat	_RF_Main,88
	global	_Flash_Memory_Main
psect	text1870,local,class=CODE,delta=2
global __ptext1870
__ptext1870:

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 56 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Flash_Memory_Modify
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1870
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	line	56
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
	opt	stack 10
; Regs used in _Flash_Memory_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	57
	
l16471:	
;MCU_16f1516_A.c: 57: if(Memory->GO) { if(Memory->Modify) { Memory->Time++; if(Memory->Time == 1000) { Memory->Time=0; Memory->Modify=0; Memory->GO=0; Flash_Memory_Modify(); } } else { Memory->GO=0; } };
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9701
	goto	u9700
u9701:
	goto	l7296
u9700:
	
l16473:	
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9711
	goto	u9710
u9711:
	goto	l16483
u9710:
	
l16475:	
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l16477:	
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u9725
	moviw	[1]fsr1
	xorlw	high(03E8h)
u9725:
	skipz
	goto	u9721
	goto	u9720
u9721:
	goto	l7296
u9720:
	
l16479:	
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	
l16481:	
	fcall	_Flash_Memory_Modify
	goto	l7296
	
l7294:	
	goto	l7296
	
l7293:	
	
l16483:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l7296
	
l7295:	
	goto	l7296
	
l7292:	
	line	58
	
l7296:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
;; =============== function _Flash_Memory_Main ends ============

	signat	_Flash_Memory_Main,88
	global	_MainT
psect	text1871,local,class=CODE,delta=2
global __ptext1871
__ptext1871:

;; *************** function _MainT *****************
;; Defined at:
;;		line 56 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\main.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setBuzzer
;;		_setLoadtoEnable
;;		_setRF_Enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1871
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\main.c"
	line	56
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 9
; Regs used in _MainT: [wreg+fsr1l-status,0+pclath+cstack]
	line	57
	
l16441:	
;main.c: 57: TMain->Count1++;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	58
	
l16443:	
;main.c: 58: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u9665
	moviw	[1]fsr1
	xorlw	high(03E8h)
u9665:
	skipz
	goto	u9661
	goto	u9660
u9661:
	goto	l6039
u9660:
	line	60
	
l16445:	
;main.c: 59: {
;main.c: 60: TMain->Count1=0;
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	61
;main.c: 61: if(TMain->Flag == 1)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9671
	goto	u9670
u9671:
	goto	l16449
u9670:
	line	63
	
l16447:	
;main.c: 62: {
;main.c: 63: TMain->Flag=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	68
;main.c: 68: }
	goto	l6039
	line	69
	
l6040:	
	line	71
	
l16449:	
;main.c: 69: else
;main.c: 70: {
;main.c: 71: TMain->Flag=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	goto	l6039
	line	76
	
l6041:	
	line	77
	
l6039:	
	line	79
;main.c: 76: }
;main.c: 77: }
;main.c: 79: if(TMain->PowerON == 0)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9681
	goto	u9680
u9681:
	goto	l6044
u9680:
	line	81
	
l16451:	
;main.c: 80: {
;main.c: 81: TMain->PowerCount++;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	82
	
l16453:	
;main.c: 82: if(TMain->PowerCount == 1500)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u9695
	moviw	[1]fsr1
	xorlw	high(05DCh)
u9695:
	skipz
	goto	u9691
	goto	u9690
u9691:
	goto	l6044
u9690:
	line	84
	
l16455:	
;main.c: 83: {
;main.c: 84: TMain->PowerCount=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	85
;main.c: 85: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	87
	
l16457:	
;main.c: 87: setBuzzer(3,50);
	movlw	low(032h)
	movwf	(?_setBuzzer)
	movlw	high(032h)
	movwf	((?_setBuzzer))+1
	movlw	(03h)
	fcall	_setBuzzer
	line	88
	
l16459:	
;main.c: 88: Sw1->Enable=1;
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	89
	
l16461:	
;main.c: 89: Sw2->Enable=1;
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	90
	
l16463:	
;main.c: 90: Sw3->Enable=1;
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	91
	
l16465:	
;main.c: 91: _nop();
	nop
	line	92
	
l16467:	
;main.c: 92: setLoadtoEnable();
	fcall	_setLoadtoEnable
	line	93
	
l16469:	
;main.c: 93: setRF_Enable(1);
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l6044
	line	94
	
l6043:	
	goto	l6044
	line	95
	
l6042:	
	line	96
	
l6044:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_getRxData
psect	text1872,local,class=CODE,delta=2
global __ptext1872
__ptext1872:

;; *************** function _getRxData *****************
;; Defined at:
;;		line 32 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setBuzzer
;;		_setDimmerLights1
;;		_setDimmerLights2
;;		_setDimmerLights3
;;		_setTxData
;;		_DelayTimejudge
;;		_setRF_DimmerValue
;; This function is called by:
;;		_RF_Main
;; This function uses a non-reentrant model
;;
psect	text1872
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	32
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
	opt	stack 10
; Regs used in _getRxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	34
	
l16265:	
;RF_Control_A1.c: 33: unsigned char i;
;RF_Control_A1.c: 34: if(RF->Learn) { if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64) { Product->Data[12]=RF_Data[12]; Product->Data[13]=RF_Data[13]; Product->Data[14]=RF_Data[14]; setBuzzer(1,100); RF->Learn=0; Memory->Modify=1; ;; } } else { if(RF_Data[0] == 0x00 && RF_Data
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u9331
	goto	u9330
u9331:
	goto	l16279
u9330:
	
l16267:	
	movf	(_RF_Data),f
	skipz
	goto	u9341
	goto	u9340
u9341:
	goto	l10804
u9340:
	
l16269:	
	movf	0+(_RF_Data)+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u9351
	goto	u9350
u9351:
	goto	l10804
u9350:
	
l16271:	
	movf	0+(_RF_Data)+0Ch,w
	movwf	(??_getRxData+0)+0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_getRxData+0)+0,w
	movwf	indf1
	movf	0+(_RF_Data)+0Dh,w
	movwf	(??_getRxData+0)+0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_getRxData+0)+0,w
	movwf	indf1
	movf	0+(_RF_Data)+0Eh,w
	movwf	(??_getRxData+0)+0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_getRxData+0)+0,w
	movwf	indf1
	
l16273:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16275:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
l16277:	
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	l10804
	
l10764:	
	goto	l10804
	
l10763:	
	
l16279:	
	movf	(_RF_Data),f
	skipz
	goto	u9361
	goto	u9360
u9361:
	goto	l16423
u9360:
	
l16281:	
	movf	0+(_RF_Data)+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u9371
	goto	u9370
u9371:
	goto	l16423
u9370:
	
l16283:	
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)+0Ch,w
	xorwf	indf1,w
	skipz
	goto	u9381
	goto	u9380
u9381:
	goto	l10804
u9380:
	
l16285:	
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)+0Dh,w
	xorwf	indf1,w
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l10804
u9390:
	
l16287:	
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)+0Eh,w
	xorwf	indf1,w
	skipz
	goto	u9401
	goto	u9400
u9401:
	goto	l10804
u9400:
	
l16289:	
	movf	0+(_RF_Data)+0Fh,f
	skipz
	goto	u9411
	goto	u9410
u9411:
	goto	l16309
u9410:
	
l16291:	
	movlw	(0)
	fcall	_setDimmerLights1
	movlw	(0)
	fcall	_setDimmerLights2
	movlw	(0)
	fcall	_setDimmerLights3
	
l16293:	
	movlb 0	; select bank0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16295:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16297:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16299:	
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16301:	
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16303:	
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16305:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
l16307:	
	fcall	_setTxData
	goto	l16309
	
l10768:	
	
l16309:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u9421
	goto	u9420
u9421:
	goto	l16337
u9420:
	
l16311:	
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9431
	goto	u9430
u9431:
	goto	l16317
u9430:
	
l16313:	
	movf	(_DelayOffSw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_DelayOffSw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l16315:	
	movf	0+(_RF_Data)+011h,w
	fcall	_DelayTimejudge
	movlb 0	; select bank0
	movwf	(??_getRxData+0)+0
	movf	(_DelayOffSw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_getRxData+0)+0,w
	movwf	indf1
	goto	l10771
	
l10770:	
	
l16317:	
	movf	(_DelayOffSw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DelayOffSw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l10771:	
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9441
	goto	u9440
u9441:
	goto	l16327
u9440:
	
l16319:	
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16321:	
	movlw	(01h)
	fcall	_setDimmerLights1
	
l16323:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16325:	
	fcall	_setTxData
	goto	l10804
	
l10772:	
	
l16327:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipnz
	goto	u9451
	goto	u9450
u9451:
	goto	l16333
u9450:
	
l16329:	
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16331:	
	movlw	(0)
	fcall	_setDimmerLights1
	goto	l16333
	
l10774:	
	
l16333:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16335:	
	fcall	_setTxData
	goto	l10804
	
l10773:	
	goto	l10804
	
l10769:	
	
l16337:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u9461
	goto	u9460
u9461:
	goto	l16347
u9460:
	
l16339:	
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9471
	goto	u9470
u9471:
	goto	l10804
u9470:
	
l16341:	
	movlw	(01h)
	fcall	_setRF_DimmerValue
	
l16343:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
l16345:	
	fcall	_setTxData
	goto	l10804
	
l10777:	
	goto	l10804
	
l10776:	
	
l16347:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	02h&0ffh
	skipz
	goto	u9481
	goto	u9480
u9481:
	goto	l16375
u9480:
	
l16349:	
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9491
	goto	u9490
u9491:
	goto	l16355
u9490:
	
l16351:	
	movf	(_DelayOffSw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_DelayOffSw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l16353:	
	movf	0+(_RF_Data)+011h,w
	fcall	_DelayTimejudge
	movlb 0	; select bank0
	movwf	(??_getRxData+0)+0
	movf	(_DelayOffSw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_getRxData+0)+0,w
	movwf	indf1
	goto	l10781
	
l10780:	
	
l16355:	
	movf	(_DelayOffSw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DelayOffSw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l10781:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9501
	goto	u9500
u9501:
	goto	l16365
u9500:
	
l16357:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16359:	
	movlw	(01h)
	fcall	_setDimmerLights2
	
l16361:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16363:	
	fcall	_setTxData
	goto	l10804
	
l10782:	
	
l16365:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipnz
	goto	u9511
	goto	u9510
u9511:
	goto	l16371
u9510:
	
l16367:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16369:	
	movlw	(0)
	fcall	_setDimmerLights2
	goto	l16371
	
l10784:	
	
l16371:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16373:	
	fcall	_setTxData
	goto	l10804
	
l10783:	
	goto	l10804
	
l10779:	
	
l16375:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	021h&0ffh
	skipz
	goto	u9521
	goto	u9520
u9521:
	goto	l16385
u9520:
	
l16377:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9531
	goto	u9530
u9531:
	goto	l10804
u9530:
	
l16379:	
	movlw	(02h)
	fcall	_setRF_DimmerValue
	
l16381:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
l16383:	
	fcall	_setTxData
	goto	l10804
	
l10787:	
	goto	l10804
	
l10786:	
	
l16385:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	03h&0ffh
	skipz
	goto	u9541
	goto	u9540
u9541:
	goto	l16413
u9540:
	
l16387:	
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9551
	goto	u9550
u9551:
	goto	l16393
u9550:
	
l16389:	
	movf	(_DelayOffSw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_DelayOffSw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l16391:	
	movf	0+(_RF_Data)+011h,w
	fcall	_DelayTimejudge
	movlb 0	; select bank0
	movwf	(??_getRxData+0)+0
	movf	(_DelayOffSw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_getRxData+0)+0,w
	movwf	indf1
	goto	l10791
	
l10790:	
	
l16393:	
	movf	(_DelayOffSw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DelayOffSw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l10791:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9561
	goto	u9560
u9561:
	goto	l16403
u9560:
	
l16395:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l16397:	
	movlw	(01h)
	fcall	_setDimmerLights3
	
l16399:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16401:	
	fcall	_setTxData
	goto	l10804
	
l10792:	
	
l16403:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipnz
	goto	u9571
	goto	u9570
u9571:
	goto	l16409
u9570:
	
l16405:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l16407:	
	movlw	(0)
	fcall	_setDimmerLights3
	goto	l16409
	
l10794:	
	
l16409:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l16411:	
	fcall	_setTxData
	goto	l10804
	
l10793:	
	goto	l10804
	
l10789:	
	
l16413:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	031h&0ffh
	skipz
	goto	u9581
	goto	u9580
u9581:
	goto	l10804
u9580:
	
l16415:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9591
	goto	u9590
u9591:
	goto	l10804
u9590:
	
l16417:	
	movlw	(03h)
	fcall	_setRF_DimmerValue
	
l16419:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
l16421:	
	fcall	_setTxData
	goto	l10804
	
l10797:	
	goto	l10804
	
l10796:	
	goto	l10804
	
l10795:	
	goto	l10804
	
l10788:	
	goto	l10804
	
l10785:	
	goto	l10804
	
l10778:	
	goto	l10804
	
l10775:	
	goto	l10804
	
l10767:	
	goto	l10804
	
l10766:	
	
l16423:	
	movlb 0	; select bank0
	movf	(_RF_Data),w
	xorlw	063h&0ffh
	skipz
	goto	u9601
	goto	u9600
u9601:
	goto	l16429
u9600:
	
l16425:	
	movf	0+(_RF_Data)+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u9611
	goto	u9610
u9611:
	goto	l16429
u9610:
	
l16427:	
	nop
	goto	l10804
	
l10799:	
	
l16429:	
	movlb 0	; select bank0
	movf	(_RF_Data),w
	xorlw	0FFh&0ffh
	skipz
	goto	u9621
	goto	u9620
u9621:
	goto	l16435
u9620:
	
l16431:	
	movf	0+(_RF_Data)+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u9631
	goto	u9630
u9631:
	goto	l16435
u9630:
	
l16433:	
	nop
	goto	l10804
	
l10801:	
	
l16435:	
	movlb 0	; select bank0
	movf	(_RF_Data),f
	skipz
	goto	u9641
	goto	u9640
u9641:
	goto	l10804
u9640:
	
l16437:	
	movf	0+(_RF_Data)+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u9651
	goto	u9650
u9651:
	goto	l10804
u9650:
	
l16439:	
	nop
	goto	l10804
	
l10803:	
	goto	l10804
	
l10802:	
	goto	l10804
	
l10800:	
	goto	l10804
	
l10798:	
	goto	l10804
	
l10765:	
	line	35
	
l10804:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
;; =============== function _getRxData ends ============

	signat	_getRxData,88
	global	_Flash_Memory_Modify
psect	text1873,local,class=CODE,delta=2
global __ptext1873
__ptext1873:

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 79 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    7[COMMON] unsigned char 
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
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         1       2       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Flash_Memory_Read
;;		_Flash_Memory_Erasing
;;		_Flash_Memory_Write
;; This function is called by:
;;		_Flash_Memory_Main
;; This function uses a non-reentrant model
;;
psect	text1873
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	line	79
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
	opt	stack 10
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l-status,0+pclath+cstack]
	line	81
	
l16243:	
;MCU_16f1516_A.c: 80: char i;
;MCU_16f1516_A.c: 81: for(i=0;i<32;i++) { Memory->Data[i]=Flash_Memory_Read(i); } Memory->Data[0]=Product->Data[12]; Memory->Data[1]=Product->Data[13]; Memory->Data[2]=Product->Data[14]; Memory->Data[3]=Product->Data[21]; Memory->Data[4]=Product->Data[22]; Memory->Data[5]
	clrf	(Flash_Memory_Modify@i)
	
l16245:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9311
	goto	u9310
u9311:
	goto	l16249
u9310:
	goto	l16255
	
l16247:	
	goto	l16255
	
l7313:	
	
l16249:	
	movf	(Flash_Memory_Modify@i),w
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(Flash_Memory_Modify@i),w
	addwf	(_Memory),w
	movwf	(??_Flash_Memory_Modify+1)+0
	movf	0+(??_Flash_Memory_Modify+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	
l16251:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l16253:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9321
	goto	u9320
u9321:
	goto	l16249
u9320:
	goto	l16255
	
l7314:	
	
l16255:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	
l16257:	
	bcf	(95/8),(95)&7
	
l16259:	
	fcall	_Flash_Memory_Erasing
	
l16261:	
	fcall	_Flash_Memory_Write
	
l16263:	
	bsf	(95/8),(95)&7
	line	82
	
l7315:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
;; =============== function _Flash_Memory_Modify ends ============

	signat	_Flash_Memory_Modify,88
	global	_setRF_Enable
psect	text1874,local,class=CODE,delta=2
global __ptext1874
__ptext1874:

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    7[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CC2500_WriteCommand
;;		_RF_RxDisable
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text1874
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	27
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
	opt	stack 9
; Regs used in _setRF_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Enable@command stored from wreg
	movwf	(setRF_Enable@command)
	line	28
	
l16227:	
;RF_Control_A1.c: 28: if(command == 1) { RF->Enable=1; } else if(command == 0) { RF->Enable=0; RF->Learn=0; Transceive_GO=0; CC2500_WriteCommand(0x36); CC2500_WriteCommand(0x3B); RF_RxDisable(); } ;;
	movf	(setRF_Enable@command),w
	xorlw	01h&0ffh
	skipz
	goto	u9291
	goto	u9290
u9291:
	goto	l16231
u9290:
	
l16229:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	goto	l10760
	
l10757:	
	
l16231:	
	movf	(setRF_Enable@command),f
	skipz
	goto	u9301
	goto	u9300
u9301:
	goto	l10760
u9300:
	
l16233:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
l16235:	
	bcf	(_Transceive_GO/8),(_Transceive_GO)&7
	
l16237:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	
l16239:	
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	
l16241:	
	fcall	_RF_RxDisable
	goto	l10760
	
l10759:	
	goto	l10760
	
l10758:	
	line	29
	
l10760:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
;; =============== function _setRF_Enable ends ============

	signat	_setRF_Enable,4216
	global	_Flash_Memory_Initial
psect	text1875,local,class=CODE,delta=2
global __ptext1875
__ptext1875:

;; *************** function _Flash_Memory_Initial *****************
;; Defined at:
;;		line 51 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Flash_Memory_Read
;;		_Flash_Memory_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1875
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	line	51
	global	__size_of_Flash_Memory_Initial
	__size_of_Flash_Memory_Initial	equ	__end_of_Flash_Memory_Initial-_Flash_Memory_Initial
	
_Flash_Memory_Initial:	
	opt	stack 11
; Regs used in _Flash_Memory_Initial: [wreg+fsr1l-status,0+pclath+cstack]
	line	53
	
l14979:	
;MCU_16f1516_A.c: 52: char i;
;MCU_16f1516_A.c: 53: if(Flash_Memory_Read(31) == 0xaa) { Product->Data[12]=Flash_Memory_Read(0); Product->Data[13]=Flash_Memory_Read(1); Product->Data[14]=Flash_Memory_Read(2); Product->Data[21]=Flash_Memory_Read(3); Product->Data[22]=Flash_Memory_Read(4); Product->Data[
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u7261
	goto	u7260
u7261:
	goto	l7287
u7260:
	
l14981:	
	movlw	(0)
	fcall	_Flash_Memory_Read
	movwf	(??_Flash_Memory_Initial+0)+0
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initial+0)+0,w
	movwf	indf1
	movlw	(01h)
	fcall	_Flash_Memory_Read
	movwf	(??_Flash_Memory_Initial+0)+0
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initial+0)+0,w
	movwf	indf1
	movlw	(02h)
	fcall	_Flash_Memory_Read
	movwf	(??_Flash_Memory_Initial+0)+0
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initial+0)+0,w
	movwf	indf1
	movlw	(03h)
	fcall	_Flash_Memory_Read
	movwf	(??_Flash_Memory_Initial+0)+0
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initial+0)+0,w
	movwf	indf1
	movlw	(04h)
	fcall	_Flash_Memory_Read
	movwf	(??_Flash_Memory_Initial+0)+0
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initial+0)+0,w
	movwf	indf1
	movlw	(05h)
	fcall	_Flash_Memory_Read
	movwf	(??_Flash_Memory_Initial+0)+0
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initial+0)+0,w
	movwf	indf1
	goto	l7289
	
l7287:	
	bcf	(95/8),(95)&7
	
l14983:	
	fcall	_Flash_Memory_Write
	
l14985:	
	bsf	(95/8),(95)&7
	goto	l7289
	
l7288:	
	line	54
	
l7289:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initial
	__end_of_Flash_Memory_Initial:
;; =============== function _Flash_Memory_Initial ends ============

	signat	_Flash_Memory_Initial,88
	global	_CC2500_PowerOnInitial
psect	text1876,local,class=CODE,delta=2
global __ptext1876
__ptext1876:

;; *************** function _CC2500_PowerOnInitial *****************
;; Defined at:
;;		line 100 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
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
psect	text1876
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	100
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
	opt	stack 10
; Regs used in _CC2500_PowerOnInitial: [wreg+status,2+status,0+pclath+cstack]
	line	101
	
l16225:	
;CC2500_A1.c: 101: CC2500_PowerRST(); CC2500_InitSetREG(); CC2500_InitPATable(); CC2500_ClearTXFIFO(); CC2500_ClearRXFIFO(); CC2500_FrequencyCabr(); CC2500_SIDLEMode(); ;;
	fcall	_CC2500_PowerRST
	fcall	_CC2500_InitSetREG
	fcall	_CC2500_InitPATable
	fcall	_CC2500_ClearTXFIFO
	fcall	_CC2500_ClearRXFIFO
	fcall	_CC2500_FrequencyCabr
	fcall	_CC2500_SIDLEMode
	line	114
	
l2320:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerOnInitial
	__end_of_CC2500_PowerOnInitial:
;; =============== function _CC2500_PowerOnInitial ends ============

	signat	_CC2500_PowerOnInitial,88
	global	_RF_RxDisable
psect	text1877,local,class=CODE,delta=2
global __ptext1877
__ptext1877:

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 16 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_RF_Main
;;		_setRF_Enable
;; This function uses a non-reentrant model
;;
psect	text1877
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	16
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
	opt	stack 10
; Regs used in _RF_RxDisable: [wreg+fsr1l-status,0+pclath+cstack]
	line	17
	
l16211:	
;RF_Control_A1.c: 17: if(RF->RxStatus || RF->ReceiveGO) { RF->RxStatus=0; RF->ReceiveGO=0; RF->DebounceTime=0; RF->Debounce=0; CC2500_WriteCommand(0x36); CC2500_WriteCommand(0x3A); INTF=0; INTE=0; ;; } ;;
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u9271
	goto	u9270
u9271:
	goto	l16215
u9270:
	
l16213:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9281
	goto	u9280
u9281:
	goto	l10749
u9280:
	goto	l16215
	
l10748:	
	
l16215:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	
l16217:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	
l16219:	
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	
l16221:	
	bcf	(89/8),(89)&7
	
l16223:	
	bcf	(92/8),(92)&7
	goto	l10749
	
l10746:	
	line	18
	
l10749:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
;; =============== function _RF_RxDisable ends ============

	signat	_RF_RxDisable,88
	global	_Flash_Memory_Erasing
psect	text1878,local,class=CODE,delta=2
global __ptext1878
__ptext1878:

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 75 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
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
;;		_Flash_Memory_Unlock
;; This function is called by:
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text1878
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	line	75
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
	opt	stack 10
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	76
	
l14949:	
;MCU_16f1516_A.c: 76: CFGS=0; PMADRH=0x1a; PMADRL=0x00; FREE=1; WREN=1; Flash_Memory_Unlock(); WREN=0; ;;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	
l14951:	
	movlw	(01Ah)
	movwf	(402)^0180h	;volatile
	
l14953:	
	clrf	(401)^0180h	;volatile
	
l14955:	
	bsf	(3244/8)^0180h,(3244)&7
	
l14957:	
	bsf	(3242/8)^0180h,(3242)&7
	
l14959:	
	fcall	_Flash_Memory_Unlock
	
l14961:	
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	77
	
l7310:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
;; =============== function _Flash_Memory_Erasing ends ============

	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Write
psect	text1879,local,class=CODE,delta=2
global __ptext1879
__ptext1879:

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 70 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    4[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Flash_Memory_Unlock
;; This function is called by:
;;		_Flash_Memory_Initial
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text1879
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	line	70
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
	opt	stack 10
; Regs used in _Flash_Memory_Write: [wreg+fsr1l-status,0+pclath+cstack]
	line	72
	
l14917:	
;MCU_16f1516_A.c: 71: char i;
;MCU_16f1516_A.c: 72: CFGS=0; PMADRH=0x1a; PMDATH=0; FREE=0; LWLO=1; WREN=1; for(i=0 ; i<32 ; i++) { PMADRL=i; PMDATL=Memory->Data[i]; Flash_Memory_Unlock(); } LWLO=0; Flash_Memory_Unlock(); WREN=0; ;;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	
l14919:	
	movlw	(01Ah)
	movwf	(402)^0180h	;volatile
	
l14921:	
	clrf	(404)^0180h	;volatile
	
l14923:	
	bcf	(3244/8)^0180h,(3244)&7
	
l14925:	
	bsf	(3245/8)^0180h,(3245)&7
	
l14927:	
	bsf	(3242/8)^0180h,(3242)&7
	
l14929:	
	clrf	(Flash_Memory_Write@i)
	
l14931:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u7221
	goto	u7220
u7221:
	goto	l14935
u7220:
	goto	l7306
	
l14933:	
	goto	l7306
	
l7305:	
	
l14935:	
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	
l14937:	
	movf	(Flash_Memory_Write@i),w
	movlb 0	; select bank0
	addwf	(_Memory),w
	movwf	(??_Flash_Memory_Write+0)+0
	movf	0+(??_Flash_Memory_Write+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	
l14939:	
	fcall	_Flash_Memory_Unlock
	
l14941:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l14943:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u7231
	goto	u7230
u7231:
	goto	l14935
u7230:
	
l7306:	
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7
	
l14945:	
	fcall	_Flash_Memory_Unlock
	
l14947:	
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	73
	
l7307:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
;; =============== function _Flash_Memory_Write ends ============

	signat	_Flash_Memory_Write,88
	global	_setDimmerLights3
psect	text1880,local,class=CODE,delta=2
global __ptext1880
__ptext1880:

;; *************** function _setDimmerLights3 *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setLoad_GO_On
;;		_setLED3
;;		_setRF_DimmerLights
;;		_setLoad_JudgeValue
;;		_Dimmer_setOverLoad_GO_Off
;; This function is called by:
;;		_main
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text1880
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	17
	global	__size_of_setDimmerLights3
	__size_of_setDimmerLights3	equ	__end_of_setDimmerLights3-_setDimmerLights3
	
_setDimmerLights3:	
	opt	stack 10
; Regs used in _setDimmerLights3: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights3@status stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights3@status)
	line	18
	
l16185:	
;Dimmer_A1.c: 18: if(status) { DimmerLights3->Status=1; if(DimmerLights3->Dimmable) { DimmerLights3->Signal=1; DimmerLights3->DimmingTimeValue=3; } if( DimmerLights3->StatusFlag == 0) { DimmerLights3->StatusFlag=1; _nop(); } Dimmable->Load=3; setLoad_GO_On(); setLED3(
	movf	(setDimmerLights3@status),w
	skipz
	goto	u9220
	goto	l16197
u9220:
	
l16187:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9231
	goto	u9230
u9231:
	goto	l3555
u9230:
	
l16189:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	movlw	(03h)
	movwf	(??_setDimmerLights3+0)+0
	movf	(_DimmerLights3),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights3+0)+0,w
	movwf	indf1
	
l3555:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9241
	goto	u9240
u9241:
	goto	l3556
u9240:
	
l16191:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	
l16193:	
	nop
	
l3556:	
	movlw	(03h)
	movwf	(??_setDimmerLights3+0)+0
	movlb 0	; select bank0
	movf	(_Dimmable),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights3+0)+0,w
	movwf	indf1
	
l16195:	
	fcall	_setLoad_GO_On
	movlw	(0)
	fcall	_setLED3
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights3+0)+0
	movf	(??_setDimmerLights3+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(03h)
	fcall	_setRF_DimmerLights
	goto	l3561
	
l3554:	
	
l16197:	
	movlb 0	; select bank0
	movf	(setDimmerLights3@status),f
	skipz
	goto	u9251
	goto	u9250
u9251:
	goto	l3561
u9250:
	
l16199:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9261
	goto	u9260
u9261:
	goto	l16203
u9260:
	
l16201:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	movlw	(03h)
	movwf	(??_setDimmerLights3+0)+0
	movf	(_DimmerLights3),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights3+0)+0,w
	movwf	indf1
	goto	l3560
	
l3559:	
	
l16203:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	
l16205:	
	movlw	(0)
	fcall	_setLED3
	
l16207:	
	nop
	fcall	_setLoad_JudgeValue
	
l3560:	
	fcall	_Dimmer_setOverLoad_GO_Off
	
l16209:	
	clrf	(?_setRF_DimmerLights)
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights3+0)+0
	movf	(??_setDimmerLights3+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(03h)
	fcall	_setRF_DimmerLights
	goto	l3561
	
l3558:	
	goto	l3561
	
l3557:	
	line	19
	
l3561:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights3
	__end_of_setDimmerLights3:
;; =============== function _setDimmerLights3 ends ============

	signat	_setDimmerLights3,4216
	global	_setDimmerLights2
psect	text1881,local,class=CODE,delta=2
global __ptext1881
__ptext1881:

;; *************** function _setDimmerLights2 *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setLoad_GO_On
;;		_setLED2
;;		_setRF_DimmerLights
;;		_setLoad_JudgeValue
;;		_Dimmer_setOverLoad_GO_Off
;; This function is called by:
;;		_main
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text1881
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	12
	global	__size_of_setDimmerLights2
	__size_of_setDimmerLights2	equ	__end_of_setDimmerLights2-_setDimmerLights2
	
_setDimmerLights2:	
	opt	stack 10
; Regs used in _setDimmerLights2: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights2@status stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights2@status)
	line	13
	
l16159:	
;Dimmer_A1.c: 13: if(status) { DimmerLights2->Status=1; if(DimmerLights2->Dimmable) { DimmerLights2->Signal=1; DimmerLights2->DimmingTimeValue=3; } if( DimmerLights2->StatusFlag == 0) { DimmerLights2->StatusFlag=1; _nop(); } Dimmable->Load=2; setLoad_GO_On(); setLED2(
	movf	(setDimmerLights2@status),w
	skipz
	goto	u9170
	goto	l16171
u9170:
	
l16161:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u9181
	goto	u9180
u9181:
	goto	l3545
u9180:
	
l16163:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	movlw	(03h)
	movwf	(??_setDimmerLights2+0)+0
	movf	(_DimmerLights2),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights2+0)+0,w
	movwf	indf1
	
l3545:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u9191
	goto	u9190
u9191:
	goto	l3546
u9190:
	
l16165:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,6
	
l16167:	
	nop
	
l3546:	
	movlw	(02h)
	movwf	(??_setDimmerLights2+0)+0
	movlb 0	; select bank0
	movf	(_Dimmable),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights2+0)+0,w
	movwf	indf1
	
l16169:	
	fcall	_setLoad_GO_On
	movlw	(0)
	fcall	_setLED2
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights2+0)+0
	movf	(??_setDimmerLights2+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(02h)
	fcall	_setRF_DimmerLights
	goto	l3551
	
l3544:	
	
l16171:	
	movlb 0	; select bank0
	movf	(setDimmerLights2@status),f
	skipz
	goto	u9201
	goto	u9200
u9201:
	goto	l3551
u9200:
	
l16173:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u9211
	goto	u9210
u9211:
	goto	l16177
u9210:
	
l16175:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	movlw	(03h)
	movwf	(??_setDimmerLights2+0)+0
	movf	(_DimmerLights2),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights2+0)+0,w
	movwf	indf1
	goto	l3550
	
l3549:	
	
l16177:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
l16179:	
	movlw	(0)
	fcall	_setLED2
	
l16181:	
	nop
	fcall	_setLoad_JudgeValue
	
l3550:	
	fcall	_Dimmer_setOverLoad_GO_Off
	
l16183:	
	clrf	(?_setRF_DimmerLights)
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights2+0)+0
	movf	(??_setDimmerLights2+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(02h)
	fcall	_setRF_DimmerLights
	goto	l3551
	
l3548:	
	goto	l3551
	
l3547:	
	line	14
	
l3551:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights2
	__end_of_setDimmerLights2:
;; =============== function _setDimmerLights2 ends ============

	signat	_setDimmerLights2,4216
	global	_setDimmerLights1
psect	text1882,local,class=CODE,delta=2
global __ptext1882
__ptext1882:

;; *************** function _setDimmerLights1 *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setLoad_GO_On
;;		_setLED1
;;		_setRF_DimmerLights
;;		_setLoad_JudgeValue
;;		_Dimmer_setOverLoad_GO_Off
;; This function is called by:
;;		_main
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text1882
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	7
	global	__size_of_setDimmerLights1
	__size_of_setDimmerLights1	equ	__end_of_setDimmerLights1-_setDimmerLights1
	
_setDimmerLights1:	
	opt	stack 10
; Regs used in _setDimmerLights1: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights1@status stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights1@status)
	line	8
	
l16127:	
;Dimmer_A1.c: 8: if(status) { DimmerLights1->Status=1; if(DimmerLights1->Dimmable) { DimmerLights1->Signal=1; DimmerLights1->DimmingTimeValue=3; } if( DimmerLights1->StatusFlag == 0) { DimmerLights1->StatusFlag=1; _nop(); } Dimmable->Load=1; setLoad_GO_On(); setLED1(
	movf	(setDimmerLights1@status),w
	skipz
	goto	u9120
	goto	l16145
u9120:
	
l16129:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u9131
	goto	u9130
u9131:
	goto	l3535
u9130:
	
l16131:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	movlw	(03h)
	movwf	(??_setDimmerLights1+0)+0
	movf	(_DimmerLights1),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights1+0)+0,w
	movwf	indf1
	
l3535:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u9141
	goto	u9140
u9141:
	goto	l16137
u9140:
	
l16133:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,6
	
l16135:	
	nop
	goto	l16137
	
l3536:	
	
l16137:	
	movlb 0	; select bank0
	movf	(_Dimmable),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	
l16139:	
	fcall	_setLoad_GO_On
	
l16141:	
	movlw	(0)
	fcall	_setLED1
	
l16143:	
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights1+0)+0
	movf	(??_setDimmerLights1+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(01h)
	fcall	_setRF_DimmerLights
	goto	l3541
	
l3534:	
	
l16145:	
	movlb 0	; select bank0
	movf	(setDimmerLights1@status),f
	skipz
	goto	u9151
	goto	u9150
u9151:
	goto	l3541
u9150:
	
l16147:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u9161
	goto	u9160
u9161:
	goto	l16151
u9160:
	
l16149:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	movlw	(03h)
	movwf	(??_setDimmerLights1+0)+0
	movf	(_DimmerLights1),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights1+0)+0,w
	movwf	indf1
	goto	l3540
	
l3539:	
	
l16151:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
l16153:	
	movlw	(0)
	fcall	_setLED1
	
l16155:	
	nop
	fcall	_setLoad_JudgeValue
	
l3540:	
	fcall	_Dimmer_setOverLoad_GO_Off
	
l16157:	
	clrf	(?_setRF_DimmerLights)
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights1+0)+0
	movf	(??_setDimmerLights1+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(01h)
	fcall	_setRF_DimmerLights
	goto	l3541
	
l3538:	
	goto	l3541
	
l3537:	
	line	9
	
l3541:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights1
	__end_of_setDimmerLights1:
;; =============== function _setDimmerLights1 ends ============

	signat	_setDimmerLights1,4216
	global	_CC2500_SIDLEMode
psect	text1883,local,class=CODE,delta=2
global __ptext1883
__ptext1883:

;; *************** function _CC2500_SIDLEMode *****************
;; Defined at:
;;		line 204 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1883
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	204
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
	opt	stack 10
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	205
	
l16125:	
;CC2500_A1.c: 205: CC2500_WriteCommand(0x36); ;;
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	207
	
l2351:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_SIDLEMode
	__end_of_CC2500_SIDLEMode:
;; =============== function _CC2500_SIDLEMode ends ============

	signat	_CC2500_SIDLEMode,88
	global	_CC2500_FrequencyCabr
psect	text1884,local,class=CODE,delta=2
global __ptext1884
__ptext1884:

;; *************** function _CC2500_FrequencyCabr *****************
;; Defined at:
;;		line 193 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_WriteCommand
;;		_DelayTime_1us
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1884
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	193
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
	opt	stack 10
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	194
	
l16123:	
;CC2500_A1.c: 194: CC2500_WriteCommand(0x33); DelayTime_1us(1000); ;;
	movlw	(033h)
	fcall	_CC2500_WriteCommand
	movlw	low(03E8h)
	movwf	(?_DelayTime_1us)
	movlw	high(03E8h)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	199
	
l2348:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_FrequencyCabr
	__end_of_CC2500_FrequencyCabr:
;; =============== function _CC2500_FrequencyCabr ends ============

	signat	_CC2500_FrequencyCabr,88
	global	_CC2500_ClearRXFIFO
psect	text1885,local,class=CODE,delta=2
global __ptext1885
__ptext1885:

;; *************** function _CC2500_ClearRXFIFO *****************
;; Defined at:
;;		line 185 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1885
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	185
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
	opt	stack 10
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	186
	
l16121:	
;CC2500_A1.c: 186: CC2500_WriteCommand(0x3A); ;;
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	188
	
l2345:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearRXFIFO
	__end_of_CC2500_ClearRXFIFO:
;; =============== function _CC2500_ClearRXFIFO ends ============

	signat	_CC2500_ClearRXFIFO,88
	global	_CC2500_ClearTXFIFO
psect	text1886,local,class=CODE,delta=2
global __ptext1886
__ptext1886:

;; *************** function _CC2500_ClearTXFIFO *****************
;; Defined at:
;;		line 177 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1886
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	177
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
	opt	stack 10
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	178
	
l16119:	
;CC2500_A1.c: 178: CC2500_WriteCommand(0x3B); ;;
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	180
	
l2342:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearTXFIFO
	__end_of_CC2500_ClearTXFIFO:
;; =============== function _CC2500_ClearTXFIFO ends ============

	signat	_CC2500_ClearTXFIFO,88
	global	_CC2500_InitPATable
psect	text1887,local,class=CODE,delta=2
global __ptext1887
__ptext1887:

;; *************** function _CC2500_InitPATable *****************
;; Defined at:
;;		line 161 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_d          1    2[BANK0 ] unsigned char 
;;  temp            1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_WriteREG
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1887
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	161
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
	opt	stack 10
; Regs used in _CC2500_InitPATable: [wreg+status,2+status,0+pclath+cstack]
	line	164
	
l16105:	
;CC2500_A1.c: 162: unsigned char loop_d;
;CC2500_A1.c: 163: unsigned char temp;
;CC2500_A1.c: 164: for(loop_d=0;loop_d<8;loop_d++) { temp=CC2500_patable_vaule[loop_d]; CC2500_WriteREG(0x3E,temp); } ;;
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l16107:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u9101
	goto	u9100
u9101:
	goto	l16111
u9100:
	goto	l2339
	
l16109:	
	goto	l2339
	
l2337:	
	
l16111:	
	movf	(CC2500_InitPATable@loop_d),w
	addlw	low(_CC2500_patable_vaule|8000h)
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_InitPATable@temp)
	
l16113:	
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	
l16115:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l16117:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u9111
	goto	u9110
u9111:
	goto	l16111
u9110:
	goto	l2339
	
l2338:	
	line	172
	
l2339:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitPATable
	__end_of_CC2500_InitPATable:
;; =============== function _CC2500_InitPATable ends ============

	signat	_CC2500_InitPATable,88
	global	_CC2500_InitSetREG
psect	text1888,local,class=CODE,delta=2
global __ptext1888
__ptext1888:

;; *************** function _CC2500_InitSetREG *****************
;; Defined at:
;;		line 143 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_c          1    3[BANK0 ] unsigned char 
;;  temp2           1    2[BANK0 ] unsigned char 
;;  temp1           1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_WriteREG
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1888
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	143
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
	opt	stack 10
; Regs used in _CC2500_InitSetREG: [wreg+status,2+status,0+pclath+cstack]
	line	146
	
l16091:	
;CC2500_A1.c: 144: unsigned char loop_c;
;CC2500_A1.c: 145: unsigned char temp1,temp2;
;CC2500_A1.c: 146: for(loop_c=0;loop_c<47;loop_c++) { temp1 = CC2500_registers_address[loop_c]; temp2 = CC2500_rfSettings[loop_c]; CC2500_WriteREG(temp1,temp2); } ;;
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l16093:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u9081
	goto	u9080
u9081:
	goto	l16097
u9080:
	goto	l2334
	
l16095:	
	goto	l2334
	
l2332:	
	
l16097:	
	movf	(CC2500_InitSetREG@loop_c),w
	addlw	low(_CC2500_registers_address|8000h)
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_InitSetREG@temp1)
	movf	(CC2500_InitSetREG@loop_c),w
	addlw	low(_CC2500_rfSettings|8000h)
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_InitSetREG@temp2)
	
l16099:	
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	
l16101:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l16103:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u9091
	goto	u9090
u9091:
	goto	l16097
u9090:
	goto	l2334
	
l2333:	
	line	156
	
l2334:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitSetREG
	__end_of_CC2500_InitSetREG:
;; =============== function _CC2500_InitSetREG ends ============

	signat	_CC2500_InitSetREG,88
	global	_CC2500_RxData
psect	text1889,local,class=CODE,delta=2
global __ptext1889
__ptext1889:

;; *************** function _CC2500_RxData *****************
;; Defined at:
;;		line 58 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_f          1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_ReadStatus
;;		_CC2500_WriteByte
;;		_CC2500_ReadByte
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_RF_Main
;; This function uses a non-reentrant model
;;
psect	text1889
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	58
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
	opt	stack 10
; Regs used in _CC2500_RxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	60
	
l16049:	
;CC2500_A1.c: 59: unsigned char loop_f;
;CC2500_A1.c: 60: ; ; if(RB0) { while(RB0); } CC2500_ReadStatus(0x3B); if(s_data == 0x18) { RC4=0; SPI0Buffer=0x3F+0xC0; while(RC2==1); CC2500_WriteByte(); CC2500_ReadByte(); Rx_Length=SPI0Buffer; for(loop_f=0;loop_f<Rx_Length;loop_f++) { CC2500_ReadByte(); RF_Data[lo
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u9021
	goto	u9020
u9021:
	goto	l16053
u9020:
	goto	l2306
	
l16051:	
	goto	l2306
	
l2307:	
	
l2306:	
	btfsc	(104/8),(104)&7
	goto	u9031
	goto	u9030
u9031:
	goto	l2306
u9030:
	goto	l16053
	
l2308:	
	goto	l16053
	
l2305:	
	
l16053:	
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	
l16055:	
	movlb 0	; select bank0
	movf	(_s_data),w
	xorlw	018h&0ffh
	skipz
	goto	u9041
	goto	u9040
u9041:
	goto	l16087
u9040:
	
l16057:	
	bcf	(116/8),(116)&7
	
l16059:	
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l2310
	
l2311:	
	
l2310:	
	btfsc	(114/8),(114)&7
	goto	u9051
	goto	u9050
u9051:
	goto	l2310
u9050:
	goto	l16061
	
l2312:	
	
l16061:	
	fcall	_CC2500_WriteByte
	fcall	_CC2500_ReadByte
	
l16063:	
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_Rx_Length)
	
l16065:	
	clrf	(CC2500_RxData@loop_f)
	goto	l16073
	
l2314:	
	
l16067:	
	fcall	_CC2500_ReadByte
	
l16069:	
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(CC2500_RxData@loop_f),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_CC2500_RxData+0)+0,w
	movwf	indf1
	
l16071:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l16073
	
l2313:	
	
l16073:	
	movf	(_Rx_Length),w
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u9061
	goto	u9060
u9061:
	goto	l16067
u9060:
	goto	l16075
	
l2315:	
	
l16075:	
	fcall	_CC2500_ReadByte
	
l16077:	
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_RSSI)
	
l16079:	
	fcall	_CC2500_ReadByte
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_CRC)
	
l16081:	
	bsf	(116/8),(116)&7
	
l16083:	
	btfss	(_CRC),(7)&7
	goto	u9071
	goto	u9070
u9071:
	goto	l16087
u9070:
	
l16085:	
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l16087
	
l2316:	
	goto	l16087
	
l2309:	
	
l16087:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	
l16089:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	95
	
l2317:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_RxData
	__end_of_CC2500_RxData:
;; =============== function _CC2500_RxData ends ============

	signat	_CC2500_RxData,88
	global	_CC2500_TxData
psect	text1890,local,class=CODE,delta=2
global __ptext1890
__ptext1890:

;; *************** function _CC2500_TxData *****************
;; Defined at:
;;		line 30 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_e          1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CC2500_WriteByte
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_RF_Main
;; This function uses a non-reentrant model
;;
psect	text1890
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	30
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
	opt	stack 10
; Regs used in _CC2500_TxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	32
	
l16023:	
;CC2500_A1.c: 31: unsigned char loop_e;
;CC2500_A1.c: 32: RC4=0; SPI0Buffer=0x3F+0x40; while(RC2==1); CC2500_WriteByte(); SPI0Buffer=Tx_Length; CC2500_WriteByte(); for(loop_e=0;loop_e<Tx_Length;loop_e++) { SPI0Buffer=RF_Data[loop_e]; CC2500_WriteByte(); } RC4=1; CC2500_WriteCommand(0x35); while(RB0==0); whi
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l16025:	
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l2290
	
l2291:	
	
l2290:	
	btfsc	(114/8),(114)&7
	goto	u8981
	goto	u8980
u8981:
	goto	l2290
u8980:
	goto	l16027
	
l2292:	
	
l16027:	
	fcall	_CC2500_WriteByte
	
l16029:	
	movlb 0	; select bank0
	movf	(_Tx_Length),w
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	
l16031:	
	fcall	_CC2500_WriteByte
	
l16033:	
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l16041
	
l2294:	
	
l16035:	
	movf	(CC2500_TxData@loop_e),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	
l16037:	
	fcall	_CC2500_WriteByte
	
l16039:	
	movlw	(01h)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 0	; select bank0
	addwf	(CC2500_TxData@loop_e),f
	goto	l16041
	
l2293:	
	
l16041:	
	movf	(_Tx_Length),w
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u8991
	goto	u8990
u8991:
	goto	l16035
u8990:
	
l2295:	
	bsf	(116/8),(116)&7
	
l16043:	
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	goto	l2296
	
l2297:	
	
l2296:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u9001
	goto	u9000
u9001:
	goto	l2296
u9000:
	goto	l2299
	
l2298:	
	goto	l2299
	
l2300:	
	
l2299:	
	btfsc	(104/8),(104)&7
	goto	u9011
	goto	u9010
u9011:
	goto	l2299
u9010:
	goto	l16045
	
l2301:	
	
l16045:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	
l16047:	
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	53
	
l2302:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_TxData
	__end_of_CC2500_TxData:
;; =============== function _CC2500_TxData ends ============

	signat	_CC2500_TxData,88
	global	_setRF_DimmerValue
psect	text1891,local,class=CODE,delta=2
global __ptext1891
__ptext1891:

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    7[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_getStartValue
;; This function is called by:
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text1891
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	38
	global	__size_of_setRF_DimmerValue
	__size_of_setRF_DimmerValue	equ	__end_of_setRF_DimmerValue-_setRF_DimmerValue
	
_setRF_DimmerValue:	
	opt	stack 10
; Regs used in _setRF_DimmerValue: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_DimmerValue@lights stored from wreg
	movwf	(setRF_DimmerValue@lights)
	line	39
	
l14699:	
;RF_Control_A1.c: 39: if(RF_Data[9] > 0x64) { RF_Data[9]=0x64; } Product->Data[9]=RF_Data[9]; Product->Data[11]=lights; if(lights == 1) { DimmerLights1->AdjRF=1; DimmerLights1->Signal=1; DimmerLights1->StartValue=getStartValue(1.5); Product->Data[15]=(Product->Data[15]|0x
	movlw	(065h)
	movlb 0	; select bank0
	subwf	0+(_RF_Data)+09h,w
	skipc
	goto	u6891
	goto	u6890
u6891:
	goto	l14703
u6890:
	
l14701:	
	movlw	(064h)
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	0+(_RF_Data)+09h
	goto	l14703
	
l10807:	
	
l14703:	
	movf	0+(_RF_Data)+09h,w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	
l14705:	
	movf	(setRF_DimmerValue@lights),w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	movf	(setRF_DimmerValue@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u6901
	goto	u6900
u6901:
	goto	l14713
u6900:
	
l14707:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l14709:	
	movlw	0x0
	movwf	(?_getStartValue)
	movlw	0xc0
	movwf	(?_getStartValue+1)
	movlw	0x3f
	movwf	(?_getStartValue+2)
	fcall	_getStartValue
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	
l14711:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	iorlw	01h
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	goto	l10813
	
l10808:	
	
l14713:	
	movf	(setRF_DimmerValue@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l14721
u6910:
	
l14715:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l14717:	
	movlw	0x0
	movwf	(?_getStartValue)
	movlw	0xc0
	movwf	(?_getStartValue+1)
	movlw	0x3f
	movwf	(?_getStartValue+2)
	fcall	_getStartValue
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	
l14719:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	iorlw	02h
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	goto	l10813
	
l10810:	
	
l14721:	
	movf	(setRF_DimmerValue@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u6921
	goto	u6920
u6921:
	goto	l10813
u6920:
	
l14723:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	
l14725:	
	movlw	0x0
	movwf	(?_getStartValue)
	movlw	0xc0
	movwf	(?_getStartValue+1)
	movlw	0x3f
	movwf	(?_getStartValue+2)
	fcall	_getStartValue
	movwf	(??_setRF_DimmerValue+0)+0
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	
l14727:	
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	iorlw	04h
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	goto	l10813
	
l10812:	
	goto	l10813
	
l10811:	
	goto	l10813
	
l10809:	
	line	40
	
l10813:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
;; =============== function _setRF_DimmerValue ends ============

	signat	_setRF_DimmerValue,4216
	global	_Flash_Memory_Unlock
psect	text1892,local,class=CODE,delta=2
global __ptext1892
__ptext1892:

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 60 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Flash_Memory_Write
;;		_Flash_Memory_Erasing
;; This function uses a non-reentrant model
;;
psect	text1892
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	line	60
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
	opt	stack 10
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	61
	
l14691:	
;MCU_16f1516_A.c: 61: PMCON2=0x55; PMCON2=0xaa; WR=1; _nop(); _nop(); ;;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	
l14693:	
	bsf	(3241/8)^0180h,(3241)&7
	
l14695:	
	nop
	
l14697:	
	nop
	line	62
	
l7299:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
;; =============== function _Flash_Memory_Unlock ends ============

	signat	_Flash_Memory_Unlock,88
	global	_setLoadtoEnable
psect	text1893,local,class=CODE,delta=2
global __ptext1893
__ptext1893:

;; *************** function _setLoadtoEnable *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\OverLoad_A.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text1893
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\OverLoad_A.c"
	line	27
	global	__size_of_setLoadtoEnable
	__size_of_setLoadtoEnable	equ	__end_of_setLoadtoEnable-_setLoadtoEnable
	
_setLoadtoEnable:	
	opt	stack 12
; Regs used in _setLoadtoEnable: []
	line	28
	
l14689:	
;OverLoad_A.c: 28: _nop();
	nop
	line	29
	
l8450:	
	return
	opt stack 0
GLOBAL	__end_of_setLoadtoEnable
	__end_of_setLoadtoEnable:
;; =============== function _setLoadtoEnable ends ============

	signat	_setLoadtoEnable,88
	global	_LED_Main
psect	text1894,local,class=CODE,delta=2
global __ptext1894
__ptext1894:

;; *************** function _LED_Main *****************
;; Defined at:
;;		line 35 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1894
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
	line	35
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
	opt	stack 13
; Regs used in _LED_Main: [wreg+fsr1l-status,0]
	line	36
	
l14673:	
;LED_A1.c: 36: if(_ErrLED->GO) { _ErrLED->Time++; if(_ErrLED->Time == 500) { _ErrLED->Time=0; RB5=~RB5; } } ;;
	movlb 0	; select bank0
	movf	(__ErrLED),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u6871
	goto	u6870
u6871:
	goto	l14683
u6870:
	
l14675:	
	movf	(__ErrLED),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l14677:	
	movf	(__ErrLED),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(01F4h)
	skipz
	goto	u6885
	moviw	[1]fsr1
	xorlw	high(01F4h)
u6885:
	skipz
	goto	u6881
	goto	u6880
u6881:
	goto	l14683
u6880:
	
l14679:	
	movf	(__ErrLED),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l14681:	
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l14683
	
l4774:	
	goto	l14683
	
l4773:	
	line	37
	
l14683:	
;LED_A1.c: 37: _nop();
	nop
	line	38
	
l14685:	
;LED_A1.c: 38: _nop();
	nop
	line	39
	
l14687:	
;LED_A1.c: 39: _nop();
	nop
	line	40
	
l4775:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
;; =============== function _LED_Main ends ============

	signat	_LED_Main,88
	global	_setDimmerLights3_Adj
psect	text1895,local,class=CODE,delta=2
global __ptext1895
__ptext1895:

;; *************** function _setDimmerLights3_Adj *****************
;; Defined at:
;;		line 32 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setRF_DimmerLights
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1895
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	32
	global	__size_of_setDimmerLights3_Adj
	__size_of_setDimmerLights3_Adj	equ	__end_of_setDimmerLights3_Adj-_setDimmerLights3_Adj
	
_setDimmerLights3_Adj:	
	opt	stack 12
; Regs used in _setDimmerLights3_Adj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights3_Adj@status stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights3_Adj@status)
	line	33
	
l16007:	
;Dimmer_A1.c: 33: if(DimmerLights3->Dimmable) { if(status) { DimmerLights3->AdjFlag=1; DimmerLights3->Signal=1; } else if(status == 0) { if(DimmerLights3->AdjFlag) { DimmerLights3->Signal=0; DimmerLights3->AdjFlag=0; DimmerLights3->StartValue=DimmerLights3->DimmingVal
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u8941
	goto	u8940
u8941:
	goto	l3585
u8940:
	
l16009:	
	movf	(setDimmerLights3_Adj@status),w
	skipz
	goto	u8950
	goto	l16013
u8950:
	
l16011:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l3585
	
l3581:	
	
l16013:	
	movf	(setDimmerLights3_Adj@status),f
	skipz
	goto	u8961
	goto	u8960
u8961:
	goto	l3585
u8960:
	
l16015:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8971
	goto	u8970
u8971:
	goto	l3585
u8970:
	
l16017:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights3_Adj+0)+0
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights3_Adj+0)+0,w
	movwf	indf1
	
l16019:	
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights3_Adj+0)+0
	movf	(??_setDimmerLights3_Adj+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(03h)
	fcall	_setRF_DimmerLights
	
l16021:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	l3585
	
l3584:	
	goto	l3585
	
l3583:	
	goto	l3585
	
l3582:	
	goto	l3585
	
l3580:	
	line	34
	
l3585:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights3_Adj
	__end_of_setDimmerLights3_Adj:
;; =============== function _setDimmerLights3_Adj ends ============

	signat	_setDimmerLights3_Adj,4216
	global	_setDimmerLights2_Adj
psect	text1896,local,class=CODE,delta=2
global __ptext1896
__ptext1896:

;; *************** function _setDimmerLights2_Adj *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setRF_DimmerLights
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1896
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	27
	global	__size_of_setDimmerLights2_Adj
	__size_of_setDimmerLights2_Adj	equ	__end_of_setDimmerLights2_Adj-_setDimmerLights2_Adj
	
_setDimmerLights2_Adj:	
	opt	stack 12
; Regs used in _setDimmerLights2_Adj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights2_Adj@status stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights2_Adj@status)
	line	28
	
l15991:	
;Dimmer_A1.c: 28: if(DimmerLights2->Dimmable) { if(status) { DimmerLights2->AdjFlag=1; DimmerLights2->Signal=1; } else if(status == 0) { if(DimmerLights2->AdjFlag) { DimmerLights2->Signal=0; DimmerLights2->AdjFlag=0; DimmerLights2->StartValue=DimmerLights2->DimmingVal
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u8901
	goto	u8900
u8901:
	goto	l3577
u8900:
	
l15993:	
	movf	(setDimmerLights2_Adj@status),w
	skipz
	goto	u8910
	goto	l15997
u8910:
	
l15995:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l3577
	
l3573:	
	
l15997:	
	movf	(setDimmerLights2_Adj@status),f
	skipz
	goto	u8921
	goto	u8920
u8921:
	goto	l3577
u8920:
	
l15999:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u8931
	goto	u8930
u8931:
	goto	l3577
u8930:
	
l16001:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights2_Adj+0)+0
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights2_Adj+0)+0,w
	movwf	indf1
	
l16003:	
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights2_Adj+0)+0
	movf	(??_setDimmerLights2_Adj+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(02h)
	fcall	_setRF_DimmerLights
	
l16005:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	l3577
	
l3576:	
	goto	l3577
	
l3575:	
	goto	l3577
	
l3574:	
	goto	l3577
	
l3572:	
	line	29
	
l3577:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights2_Adj
	__end_of_setDimmerLights2_Adj:
;; =============== function _setDimmerLights2_Adj ends ============

	signat	_setDimmerLights2_Adj,4216
	global	_setDimmerLights1_Adj
psect	text1897,local,class=CODE,delta=2
global __ptext1897
__ptext1897:

;; *************** function _setDimmerLights1_Adj *****************
;; Defined at:
;;		line 22 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setRF_DimmerLights
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1897
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	22
	global	__size_of_setDimmerLights1_Adj
	__size_of_setDimmerLights1_Adj	equ	__end_of_setDimmerLights1_Adj-_setDimmerLights1_Adj
	
_setDimmerLights1_Adj:	
	opt	stack 12
; Regs used in _setDimmerLights1_Adj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights1_Adj@status stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights1_Adj@status)
	line	23
	
l15975:	
;Dimmer_A1.c: 23: if(DimmerLights1->Dimmable) { if(status) { DimmerLights1->AdjFlag=1; DimmerLights1->Signal=1; } else if(status == 0) { if(DimmerLights1->AdjFlag) { DimmerLights1->Signal=0; DimmerLights1->AdjFlag=0; DimmerLights1->StartValue=DimmerLights1->DimmingVal
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u8861
	goto	u8860
u8861:
	goto	l3569
u8860:
	
l15977:	
	movf	(setDimmerLights1_Adj@status),w
	skipz
	goto	u8870
	goto	l15981
u8870:
	
l15979:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l3569
	
l3565:	
	
l15981:	
	movf	(setDimmerLights1_Adj@status),f
	skipz
	goto	u8881
	goto	u8880
u8881:
	goto	l3569
u8880:
	
l15983:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u8891
	goto	u8890
u8891:
	goto	l3569
u8890:
	
l15985:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights1_Adj+0)+0
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights1_Adj+0)+0,w
	movwf	indf1
	
l15987:	
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights1_Adj+0)+0
	movf	(??_setDimmerLights1_Adj+0)+0,w
	movwf	0+(?_setRF_DimmerLights)+01h
	movlw	(01h)
	fcall	_setRF_DimmerLights
	
l15989:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	l3569
	
l3568:	
	goto	l3569
	
l3567:	
	goto	l3569
	
l3566:	
	goto	l3569
	
l3564:	
	line	24
	
l3569:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights1_Adj
	__end_of_setDimmerLights1_Adj:
;; =============== function _setDimmerLights1_Adj ends ============

	signat	_setDimmerLights1_Adj,4216
	global	_setLoad_JudgeValue
psect	text1898,local,class=CODE,delta=2
global __ptext1898
__ptext1898:

;; *************** function _setLoad_JudgeValue *****************
;; Defined at:
;;		line 42 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\OverLoad_A.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights1
;;		_setDimmerLights2
;;		_setDimmerLights3
;;		_setDimmerLights1_ERROR
;;		_setDimmerLights2_ERROR
;;		_setDimmerLights3_ERROR
;; This function uses a non-reentrant model
;;
psect	text1898
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\OverLoad_A.c"
	line	42
	global	__size_of_setLoad_JudgeValue
	__size_of_setLoad_JudgeValue	equ	__end_of_setLoad_JudgeValue-_setLoad_JudgeValue
	
_setLoad_JudgeValue:	
	opt	stack 10
; Regs used in _setLoad_JudgeValue: []
	line	43
	
l15973:	
;OverLoad_A.c: 43: _nop();
	nop
	line	44
	
l8459:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_JudgeValue
	__end_of_setLoad_JudgeValue:
;; =============== function _setLoad_JudgeValue ends ============

	signat	_setLoad_JudgeValue,88
	global	_setLoad_GO_On
psect	text1899,local,class=CODE,delta=2
global __ptext1899
__ptext1899:

;; *************** function _setLoad_GO_On *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\OverLoad_A.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights1
;;		_setDimmerLights2
;;		_setDimmerLights3
;; This function uses a non-reentrant model
;;
psect	text1899
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\OverLoad_A.c"
	line	17
	global	__size_of_setLoad_GO_On
	__size_of_setLoad_GO_On	equ	__end_of_setLoad_GO_On-_setLoad_GO_On
	
_setLoad_GO_On:	
	opt	stack 10
; Regs used in _setLoad_GO_On: []
	line	18
	
l15971:	
;OverLoad_A.c: 18: _nop();
	nop
	line	19
	
l8444:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_GO_On
	__end_of_setLoad_GO_On:
;; =============== function _setLoad_GO_On ends ============

	signat	_setLoad_GO_On,88
	global	_CC2500_WriteREG
psect	text1900,local,class=CODE,delta=2
global __ptext1900
__ptext1900:

;; *************** function _CC2500_WriteREG *****************
;; Defined at:
;;		line 255 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;  w_addr          1    wreg     unsigned char 
;;  value           1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  w_addr          1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         1       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_InitSetREG
;;		_CC2500_InitPATable
;; This function uses a non-reentrant model
;;
psect	text1900
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	255
	global	__size_of_CC2500_WriteREG
	__size_of_CC2500_WriteREG	equ	__end_of_CC2500_WriteREG-_CC2500_WriteREG
	
_CC2500_WriteREG:	
	opt	stack 10
; Regs used in _CC2500_WriteREG: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteREG@w_addr stored from wreg
	movwf	(CC2500_WriteREG@w_addr)
	line	256
	
l15959:	
;CC2500_A1.c: 256: RC4=0; SPI0Buffer=w_addr; while(RC2==1); CC2500_WriteByte(); SPI0Buffer=value; CC2500_WriteByte(); RC4=1; ;;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l15961:	
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l2368
	
l2369:	
	
l2368:	
	btfsc	(114/8),(114)&7
	goto	u8851
	goto	u8850
u8851:
	goto	l2368
u8850:
	goto	l15963
	
l2370:	
	
l15963:	
	fcall	_CC2500_WriteByte
	
l15965:	
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 0	; select bank0
	movwf	(_SPI0Buffer)
	
l15967:	
	fcall	_CC2500_WriteByte
	
l15969:	
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	266
	
l2371:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteREG
	__end_of_CC2500_WriteREG:
;; =============== function _CC2500_WriteREG ends ============

	signat	_CC2500_WriteREG,8312
	global	_CC2500_PowerRST
psect	text1901,local,class=CODE,delta=2
global __ptext1901
__ptext1901:

;; *************** function _CC2500_PowerRST *****************
;; Defined at:
;;		line 119 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayTime_1us
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text1901
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	119
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
	opt	stack 11
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	120
	
l15945:	
;CC2500_A1.c: 120: RC1=0; RC0=0; RC4=1; DelayTime_1us(10); RC4=0; DelayTime_1us(10); RC4=1; DelayTime_1us(40); RC4=0; SPI0Buffer=0x30; while(RC2==1); CC2500_WriteByte(); while(RC2==1); RC0=0; RC4=1; ;;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	bcf	(112/8),(112)&7
	bsf	(116/8),(116)&7
	
l15947:	
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	
l15949:	
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	
l15951:	
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	movlw	low(028h)
	movwf	(?_DelayTime_1us)
	movlw	high(028h)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	
l15953:	
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l15955:	
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l2323
	
l2324:	
	
l2323:	
	btfsc	(114/8),(114)&7
	goto	u8831
	goto	u8830
u8831:
	goto	l2323
u8830:
	goto	l15957
	
l2325:	
	
l15957:	
	fcall	_CC2500_WriteByte
	goto	l2326
	
l2327:	
	
l2326:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u8841
	goto	u8840
u8841:
	goto	l2326
u8840:
	
l2328:	
	bcf	(112/8),(112)&7
	bsf	(116/8),(116)&7
	line	138
	
l2329:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerRST
	__end_of_CC2500_PowerRST:
;; =============== function _CC2500_PowerRST ends ============

	signat	_CC2500_PowerRST,88
	global	_CC2500_ReadStatus
psect	text1902,local,class=CODE,delta=2
global __ptext1902
__ptext1902:

;; *************** function _CC2500_ReadStatus *****************
;; Defined at:
;;		line 303 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;  status_addr     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status_addr     1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CC2500_WriteByte
;;		_CC2500_ReadByte
;; This function is called by:
;;		_CC2500_RxData
;; This function uses a non-reentrant model
;;
psect	text1902
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	303
	global	__size_of_CC2500_ReadStatus
	__size_of_CC2500_ReadStatus	equ	__end_of_CC2500_ReadStatus-_CC2500_ReadStatus
	
_CC2500_ReadStatus:	
	opt	stack 10
; Regs used in _CC2500_ReadStatus: [wreg+status,2+status,0+pclath+cstack]
;CC2500_ReadStatus@status_addr stored from wreg
	movwf	(CC2500_ReadStatus@status_addr)
	line	304
	
l15935:	
;CC2500_A1.c: 304: RC4=0; SPI0Buffer=status_addr+0xC0; while(RC2==1); CC2500_WriteByte(); CC2500_ReadByte(); RC4=1; s_data=SPI0Buffer; ;;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l15937:	
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l2386
	
l2387:	
	
l2386:	
	btfsc	(114/8),(114)&7
	goto	u8821
	goto	u8820
u8821:
	goto	l2386
u8820:
	goto	l15939
	
l2388:	
	
l15939:	
	fcall	_CC2500_WriteByte
	fcall	_CC2500_ReadByte
	
l15941:	
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	
l15943:	
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movwf	(_s_data)
	line	317
	
l2389:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadStatus
	__end_of_CC2500_ReadStatus:
;; =============== function _CC2500_ReadStatus ends ============

	signat	_CC2500_ReadStatus,4216
	global	_CC2500_WriteCommand
psect	text1903,local,class=CODE,delta=2
global __ptext1903
__ptext1903:

;; *************** function _CC2500_WriteCommand *****************
;; Defined at:
;;		line 287 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_TxData
;;		_CC2500_RxData
;;		_CC2500_ClearTXFIFO
;;		_CC2500_ClearRXFIFO
;;		_CC2500_FrequencyCabr
;;		_CC2500_SIDLEMode
;;		_RF_Main
;;		_RF_RxDisable
;;		_setRF_Enable
;; This function uses a non-reentrant model
;;
psect	text1903
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	287
	global	__size_of_CC2500_WriteCommand
	__size_of_CC2500_WriteCommand	equ	__end_of_CC2500_WriteCommand-_CC2500_WriteCommand
	
_CC2500_WriteCommand:	
	opt	stack 11
; Regs used in _CC2500_WriteCommand: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteCommand@command stored from wreg
	movwf	(CC2500_WriteCommand@command)
	line	288
	
l15927:	
;CC2500_A1.c: 288: RC4=0; SPI0Buffer=command; while(RC2==1); CC2500_WriteByte(); RC4=1; ;;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l15929:	
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l2380
	
l2381:	
	
l2380:	
	btfsc	(114/8),(114)&7
	goto	u8811
	goto	u8810
u8811:
	goto	l2380
u8810:
	goto	l15931
	
l2382:	
	
l15931:	
	fcall	_CC2500_WriteByte
	
l15933:	
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	298
	
l2383:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteCommand
	__end_of_CC2500_WriteCommand:
;; =============== function _CC2500_WriteCommand ends ============

	signat	_CC2500_WriteCommand,4216
	global	_DelayTimejudge
psect	text1904,local,class=CODE,delta=2
global __ptext1904
__ptext1904:

;; *************** function _DelayTimejudge *****************
;; Defined at:
;;		line 48 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    5[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text1904
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	48
	global	__size_of_DelayTimejudge
	__size_of_DelayTimejudge	equ	__end_of_DelayTimejudge-_DelayTimejudge
	
_DelayTimejudge:	
	opt	stack 11
; Regs used in _DelayTimejudge: [wreg]
;DelayTimejudge@value stored from wreg
	movwf	(DelayTimejudge@value)
	line	49
	
l14495:	
;RF_Control_A1.c: 49: char i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	50
;RF_Control_A1.c: 50: if(value == 0x05) i=5; else if(value == 0x10) i=10; else if(value == 0x15) i=15; else if(value == 0x20) i=20; else if(value == 0x25) i=25; else if(value == 0x30) i=30; ;;
	movf	(DelayTimejudge@value),w
	xorlw	05h&0ffh
	skipz
	goto	u6521
	goto	u6520
u6521:
	goto	l14499
u6520:
	
l14497:	
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l10834
	
l10833:	
	
l14499:	
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u6531
	goto	u6530
u6531:
	goto	l14503
u6530:
	
l14501:	
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l10834
	
l10835:	
	
l14503:	
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u6541
	goto	u6540
u6541:
	goto	l14507
u6540:
	
l14505:	
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l10834
	
l10837:	
	
l14507:	
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u6551
	goto	u6550
u6551:
	goto	l14511
u6550:
	
l14509:	
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l10834
	
l10839:	
	
l14511:	
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u6561
	goto	u6560
u6561:
	goto	l14515
u6560:
	
l14513:	
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l10834
	
l10841:	
	
l14515:	
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u6571
	goto	u6570
u6571:
	goto	l10834
u6570:
	
l14517:	
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l10834
	
l10843:	
	goto	l10834
	
l10842:	
	goto	l10834
	
l10840:	
	goto	l10834
	
l10838:	
	goto	l10834
	
l10836:	
	
l10834:	
	line	51
;RF_Control_A1.c: 51: return i;
	movf	(DelayTimejudge@i),w
	goto	l10844
	
l14519:	
	line	52
	
l10844:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
;; =============== function _DelayTimejudge ends ============

	signat	_DelayTimejudge,4217
	global	_Flash_Memory_Read
psect	text1905,local,class=CODE,delta=2
global __ptext1905
__ptext1905:

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 64 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    5[COMMON] unsigned char 
;;  ret             1    6[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Flash_Memory_Initial
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text1905
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	line	64
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
	opt	stack 11
; Regs used in _Flash_Memory_Read: [wreg]
;Flash_Memory_Read@address stored from wreg
	movwf	(Flash_Memory_Read@address)
	line	65
	
l14485:	
;MCU_16f1516_A.c: 65: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	66
	
l14487:	
;MCU_16f1516_A.c: 66: PMADRH=0x1a; PMADRL=address; CFGS=0; RD=1; i=PMDATH; ret=PMDATL; ;;
	movlw	(01Ah)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	movf	(Flash_Memory_Read@address),w
	movwf	(401)^0180h	;volatile
	
l14489:	
	bcf	(3246/8)^0180h,(3246)&7
	
l14491:	
	bsf	(3240/8)^0180h,(3240)&7
	movf	(404)^0180h,w	;volatile
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	movf	(403)^0180h,w	;volatile
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	67
;MCU_16f1516_A.c: 67: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l7302
	
l14493:	
	line	68
	
l7302:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
;; =============== function _Flash_Memory_Read ends ============

	signat	_Flash_Memory_Read,4217
	global	_setTxData
psect	text1906,local,class=CODE,delta=2
global __ptext1906
__ptext1906:

;; *************** function _setTxData *****************
;; Defined at:
;;		line 21 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
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
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text1906
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	21
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
	opt	stack 11
; Regs used in _setTxData: [wregfsr1]
	line	22
	
l14211:	
;RF_Control_A1.c: 22: if(RF->Enable) { if(RF->TransceiveGO == 0 && 1) { RF->TransceiveGO=1; RF_Data[0]=Product->Data[0]; RF_Data[1]=Product->Data[1]; RF_Data[2]=Product->Data[2]; RF_Data[3]=Product->Data[3]; RF_Data[4]=Product->Data[4]; RF_Data[5]=Product->Data[5]; RF_Dat
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5841
	goto	u5840
u5841:
	goto	l10754
u5840:
	
l14213:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u5851
	goto	u5850
u5851:
	goto	l10754
u5850:
	
l14215:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	(_RF_Data)
	movf	(_Product),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+01h
	movf	(_Product),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+02h
	movf	(_Product),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+03h
	movf	(_Product),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+04h
	movf	(_Product),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+05h
	movf	(_Product),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+06h
	movf	(_Product),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+07h
	movf	(_Product),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+08h
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+09h
	movf	(_Product),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+0Ah
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+0Bh
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+0Ch
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+0Dh
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+0Eh
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+0Fh
	movf	(_Product),w
	addlw	010h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+010h
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+011h
	movf	(_Product),w
	addlw	012h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+012h
	movf	(_Product),w
	addlw	013h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+013h
	movf	(_Product),w
	addlw	014h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+014h
	goto	l10754
	
l10753:	
	goto	l10754
	
l10752:	
	line	23
	
l10754:	
	return
	opt stack 0
GLOBAL	__end_of_setTxData
	__end_of_setTxData:
;; =============== function _setTxData ends ============

	signat	_setTxData,88
	global	_RF_Initial
psect	text1907,local,class=CODE,delta=2
global __ptext1907
__ptext1907:

;; *************** function _RF_Initial *****************
;; Defined at:
;;		line 6 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1907
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	6
	global	__size_of_RF_Initial
	__size_of_RF_Initial	equ	__end_of_RF_Initial-_RF_Initial
	
_RF_Initial:	
	opt	stack 13
; Regs used in _RF_Initial: [wreg]
	line	7
	
l14209:	
;RF_Control_A1.c: 7: RF=&VarRF; Tx_Length=21; RFsw1=&VarRFsw1; RFsw2=&VarRFsw2; RFsw3=&VarRFsw3; ;;
	movlw	(_VarRF)&0ffh
	movwf	(??_RF_Initial+0)+0
	movf	(??_RF_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF)
	movlw	(015h)
	movwf	(??_RF_Initial+0)+0
	movf	(??_RF_Initial+0)+0,w
	movwf	(_Tx_Length)
	movlw	(_VarRFsw1)&0ffh
	movwf	(??_RF_Initial+0)+0
	movf	(??_RF_Initial+0)+0,w
	movwf	(_RFsw1)
	movlw	(_VarRFsw2)&0ffh
	movwf	(??_RF_Initial+0)+0
	movf	(??_RF_Initial+0)+0,w
	movwf	(_RFsw2)
	movlw	(_VarRFsw3)&0ffh
	movwf	(??_RF_Initial+0)+0
	movf	(??_RF_Initial+0)+0,w
	movwf	(_RFsw3)
	line	8
	
l10724:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Initial
	__end_of_RF_Initial:
;; =============== function _RF_Initial ends ============

	signat	_RF_Initial,88
	global	_MainT_Initial
psect	text1908,local,class=CODE,delta=2
global __ptext1908
__ptext1908:

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 50 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1908
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\main.c"
	line	50
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 13
; Regs used in _MainT_Initial: [wreg]
	line	51
	
l14207:	
;main.c: 51: TMain = &VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_TMain)
	line	52
;main.c: 52: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	53
	
l6036:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
;; =============== function _MainT_Initial ends ============

	signat	_MainT_Initial,88
	global	_LED_Initial
psect	text1909,local,class=CODE,delta=2
global __ptext1909
__ptext1909:

;; *************** function _LED_Initial *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
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
psect	text1909
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
	line	27
	global	__size_of_LED_Initial
	__size_of_LED_Initial	equ	__end_of_LED_Initial-_LED_Initial
	
_LED_Initial:	
	opt	stack 13
; Regs used in _LED_Initial: [wregfsr1]
	line	28
	
l14187:	
;LED_A1.c: 28: _ErrLED=&VarErrLED; _ErrLED->Enable=1; RB5=!0; ;; ;;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LED_Initial+0)+0
	movf	(??_LED_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(__ErrLED)
	
l14189:	
	movf	(__ErrLED),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l14191:	
	bsf	(109/8),(109)&7
	line	29
	
l14193:	
;LED_A1.c: 29: _LED1=&VarLED1; _LED1->Enable=1; RA3=!0; ;; ;;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LED_Initial+0)+0
	movf	(??_LED_Initial+0)+0,w
	movwf	(__LED1)
	movf	(__LED1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l14195:	
	bsf	(99/8),(99)&7
	line	30
	
l14197:	
;LED_A1.c: 30: _LED2=&VarLED2; _LED2->Enable=1; RC6=!0; ;; ;;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LED_Initial+0)+0
	movf	(??_LED_Initial+0)+0,w
	movwf	(__LED2)
	
l14199:	
	movf	(__LED2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l14201:	
	bsf	(118/8),(118)&7
	line	31
;LED_A1.c: 31: _LED3=&VarLED3; _LED3->Enable=1; RC7=!0; ;; ;;
	movlw	(_VarLED3)&0ffh
	movwf	(??_LED_Initial+0)+0
	movf	(??_LED_Initial+0)+0,w
	movwf	(__LED3)
	
l14203:	
	movf	(__LED3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l14205:	
	bsf	(119/8),(119)&7
	line	32
	
l4770:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Initial
	__end_of_LED_Initial:
;; =============== function _LED_Initial ends ============

	signat	_LED_Initial,88
	global	_getStartValue
psect	text1910,local,class=CODE,delta=2
global __ptext1910
__ptext1910:

;; *************** function _getStartValue *****************
;; Defined at:
;;		line 37 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         3       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_DimmerValue
;; This function uses a non-reentrant model
;;
psect	text1910
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	37
	global	__size_of_getStartValue
	__size_of_getStartValue	equ	__end_of_getStartValue-_getStartValue
	
_getStartValue:	
	opt	stack 10
; Regs used in _getStartValue: [wreg+status,2+status,0]
	line	38
	
l14121:	
;Dimmer_A1.c: 38: return (((100-RF_Data[9]))+40);
	movlb 0	; select bank0
	decf	0+(_RF_Data)+09h,w
	xorlw	0ffh
	addlw	08Ch
	goto	l3588
	
l14123:	
	line	39
	
l3588:	
	return
	opt stack 0
GLOBAL	__end_of_getStartValue
	__end_of_getStartValue:
;; =============== function _getStartValue ends ============

	signat	_getStartValue,89
	global	_setLED3
psect	text1911,local,class=CODE,delta=2
global __ptext1911
__ptext1911:

;; *************** function _setLED3 *****************
;; Defined at:
;;		line 22 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    3[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights3
;;		_main
;;		_setDimmerLights3_ERROR
;; This function uses a non-reentrant model
;;
psect	text1911
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
	line	22
	global	__size_of_setLED3
	__size_of_setLED3	equ	__end_of_setLED3-_setLED3
	
_setLED3:	
	opt	stack 10
; Regs used in _setLED3: [wreg+fsr1l-status,0]
;setLED3@status stored from wreg
	movwf	(setLED3@status)
	line	23
	
l15873:	
;LED_A1.c: 23: if(status == 0) { RC7=!0; ;; } else if(status == 1) { RC7=!1; ;; } else if(status == 10) { _LED3->GO=0; _LED3->Time=0; RC7=!0; ;; } else if(status == 11) { _LED3->GO=1; } ;;
	movf	(setLED3@status),f
	skipz
	goto	u8741
	goto	u8740
u8741:
	goto	l15877
u8740:
	
l15875:	
	movlb 0	; select bank0
	bsf	(119/8),(119)&7
	goto	l4767
	
l4760:	
	
l15877:	
	movf	(setLED3@status),w
	xorlw	01h&0ffh
	skipz
	goto	u8751
	goto	u8750
u8751:
	goto	l15881
u8750:
	
l15879:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7
	goto	l4767
	
l4762:	
	
l15881:	
	movf	(setLED3@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u8761
	goto	u8760
u8761:
	goto	l15887
u8760:
	
l15883:	
	movlb 0	; select bank0
	movf	(__LED3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(__LED3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l15885:	
	bsf	(119/8),(119)&7
	goto	l4767
	
l4764:	
	
l15887:	
	movf	(setLED3@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u8771
	goto	u8770
u8771:
	goto	l4767
u8770:
	
l15889:	
	movlb 0	; select bank0
	movf	(__LED3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l4767
	
l4766:	
	goto	l4767
	
l4765:	
	goto	l4767
	
l4763:	
	goto	l4767
	
l4761:	
	line	24
	
l4767:	
	return
	opt stack 0
GLOBAL	__end_of_setLED3
	__end_of_setLED3:
;; =============== function _setLED3 ends ============

	signat	_setLED3,4216
	global	_setLED2
psect	text1912,local,class=CODE,delta=2
global __ptext1912
__ptext1912:

;; *************** function _setLED2 *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    3[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights2
;;		_main
;;		_setDimmerLights2_ERROR
;; This function uses a non-reentrant model
;;
psect	text1912
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
	line	17
	global	__size_of_setLED2
	__size_of_setLED2	equ	__end_of_setLED2-_setLED2
	
_setLED2:	
	opt	stack 10
; Regs used in _setLED2: [wreg+fsr1l-status,0]
;setLED2@status stored from wreg
	movwf	(setLED2@status)
	line	18
	
l15855:	
;LED_A1.c: 18: if(status == 0) { RC6=!0; ;; } else if(status == 1) { RC6=!1; ;; } else if(status == 10) { _LED2->GO=0; _LED2->Time=0; RC6=!0; ;; } else if(status == 11) { _LED2->GO=1; } ;;
	movf	(setLED2@status),f
	skipz
	goto	u8701
	goto	u8700
u8701:
	goto	l15859
u8700:
	
l15857:	
	movlb 0	; select bank0
	bsf	(118/8),(118)&7
	goto	l4757
	
l4750:	
	
l15859:	
	movf	(setLED2@status),w
	xorlw	01h&0ffh
	skipz
	goto	u8711
	goto	u8710
u8711:
	goto	l15863
u8710:
	
l15861:	
	movlb 0	; select bank0
	bcf	(118/8),(118)&7
	goto	l4757
	
l4752:	
	
l15863:	
	movf	(setLED2@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u8721
	goto	u8720
u8721:
	goto	l15869
u8720:
	
l15865:	
	movlb 0	; select bank0
	movf	(__LED2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(__LED2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l15867:	
	bsf	(118/8),(118)&7
	goto	l4757
	
l4754:	
	
l15869:	
	movf	(setLED2@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u8731
	goto	u8730
u8731:
	goto	l4757
u8730:
	
l15871:	
	movlb 0	; select bank0
	movf	(__LED2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l4757
	
l4756:	
	goto	l4757
	
l4755:	
	goto	l4757
	
l4753:	
	goto	l4757
	
l4751:	
	line	19
	
l4757:	
	return
	opt stack 0
GLOBAL	__end_of_setLED2
	__end_of_setLED2:
;; =============== function _setLED2 ends ============

	signat	_setLED2,4216
	global	_Dimmer_setOverLoad_GO_Off
psect	text1913,local,class=CODE,delta=2
global __ptext1913
__ptext1913:

;; *************** function _Dimmer_setOverLoad_GO_Off *****************
;; Defined at:
;;		line 62 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights1
;;		_setDimmerLights2
;;		_setDimmerLights3
;;		_setDimmerLights1_ERROR
;;		_setDimmerLights2_ERROR
;;		_setDimmerLights3_ERROR
;; This function uses a non-reentrant model
;;
psect	text1913
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	62
	global	__size_of_Dimmer_setOverLoad_GO_Off
	__size_of_Dimmer_setOverLoad_GO_Off	equ	__end_of_Dimmer_setOverLoad_GO_Off-_Dimmer_setOverLoad_GO_Off
	
_Dimmer_setOverLoad_GO_Off:	
	opt	stack 10
; Regs used in _Dimmer_setOverLoad_GO_Off: []
	line	64
	
l3607:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_setOverLoad_GO_Off
	__end_of_Dimmer_setOverLoad_GO_Off:
;; =============== function _Dimmer_setOverLoad_GO_Off ends ============

	signat	_Dimmer_setOverLoad_GO_Off,88
	global	_setRF_DimmerLights
psect	text1914,local,class=CODE,delta=2
global __ptext1914
__ptext1914:

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 43 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  on              1    3[COMMON] unsigned char 
;;  value           1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights1
;;		_setDimmerLights2
;;		_setDimmerLights3
;;		_setDimmerLights1_Adj
;;		_setDimmerLights2_Adj
;;		_setDimmerLights3_Adj
;; This function uses a non-reentrant model
;;
psect	text1914
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\RF_Control_A1.c"
	line	43
	global	__size_of_setRF_DimmerLights
	__size_of_setRF_DimmerLights	equ	__end_of_setRF_DimmerLights-_setRF_DimmerLights
	
_setRF_DimmerLights:	
	opt	stack 10
; Regs used in _setRF_DimmerLights: [wreg+fsr1l-status,0]
;setRF_DimmerLights@lights stored from wreg
	movwf	(setRF_DimmerLights@lights)
	line	44
	
l15815:	
;RF_Control_A1.c: 44: Product->Data[9]=(100-(value-40)); Product->Data[11]=lights; if(lights == 1) { Product->Data[21]=value; if(on == 1) { Product->Data[15]=(Product->Data[15]|0x01); } else if(on == 0) { Product->Data[15]=(Product->Data[15]&0xfe); } } else if(lights == 2
	movf	(setRF_DimmerLights@value),w
	addlw	0D8h
	xorlw	0ffh
	addlw	1
	addlw	064h
	movwf	(??_setRF_DimmerLights+0)+0
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l15817:	
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l15819:	
	movf	(setRF_DimmerLights@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u8611
	goto	u8610
u8611:
	goto	l15831
u8610:
	
l15821:	
	movf	(setRF_DimmerLights@value),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l15823:	
	movf	(setRF_DimmerLights@on),w
	xorlw	01h&0ffh
	skipz
	goto	u8621
	goto	u8620
u8621:
	goto	l15827
u8620:
	
l15825:	
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	iorlw	01h
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l10830
	
l10817:	
	
l15827:	
	movf	(setRF_DimmerLights@on),f
	skipz
	goto	u8631
	goto	u8630
u8631:
	goto	l10830
u8630:
	
l15829:	
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	0FEh
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l10830
	
l10819:	
	goto	l10830
	
l10818:	
	goto	l10830
	
l10816:	
	
l15831:	
	movf	(setRF_DimmerLights@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u8641
	goto	u8640
u8641:
	goto	l15843
u8640:
	
l15833:	
	movf	(setRF_DimmerLights@value),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l15835:	
	movf	(setRF_DimmerLights@on),w
	xorlw	01h&0ffh
	skipz
	goto	u8651
	goto	u8650
u8651:
	goto	l15839
u8650:
	
l15837:	
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	iorlw	02h
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l10830
	
l10822:	
	
l15839:	
	movf	(setRF_DimmerLights@on),f
	skipz
	goto	u8661
	goto	u8660
u8661:
	goto	l10830
u8660:
	
l15841:	
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	0FDh
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l10830
	
l10824:	
	goto	l10830
	
l10823:	
	goto	l10830
	
l10821:	
	
l15843:	
	movf	(setRF_DimmerLights@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u8671
	goto	u8670
u8671:
	goto	l10830
u8670:
	
l15845:	
	movf	(setRF_DimmerLights@value),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l15847:	
	movf	(setRF_DimmerLights@on),w
	xorlw	01h&0ffh
	skipz
	goto	u8681
	goto	u8680
u8681:
	goto	l15851
u8680:
	
l15849:	
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	iorlw	04h
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l10830
	
l10827:	
	
l15851:	
	movf	(setRF_DimmerLights@on),f
	skipz
	goto	u8691
	goto	u8690
u8691:
	goto	l10830
u8690:
	
l15853:	
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	0FBh
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l10830
	
l10829:	
	goto	l10830
	
l10828:	
	goto	l10830
	
l10826:	
	goto	l10830
	
l10825:	
	goto	l10830
	
l10820:	
	line	45
	
l10830:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
;; =============== function _setRF_DimmerLights ends ============

	signat	_setRF_DimmerLights,12408
	global	_setLED1
psect	text1915,local,class=CODE,delta=2
global __ptext1915
__ptext1915:

;; *************** function _setLED1 *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1    3[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights1
;;		_main
;;		_setDimmerLights1_ERROR
;; This function uses a non-reentrant model
;;
psect	text1915
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
	line	12
	global	__size_of_setLED1
	__size_of_setLED1	equ	__end_of_setLED1-_setLED1
	
_setLED1:	
	opt	stack 10
; Regs used in _setLED1: [wreg+fsr1l-status,0]
;setLED1@status stored from wreg
	movwf	(setLED1@status)
	line	13
	
l15797:	
;LED_A1.c: 13: if(status == 0) { RA3=!0; ;; } else if(status == 1) { RA3=!1; ;; } else if(status == 10) { _LED1->GO=0; _LED1->Time=0; RA3=!0; ;; } else if(status == 11) { _LED1->GO=1; } ;;
	movf	(setLED1@status),f
	skipz
	goto	u8571
	goto	u8570
u8571:
	goto	l15801
u8570:
	
l15799:	
	movlb 0	; select bank0
	bsf	(99/8),(99)&7
	goto	l4747
	
l4740:	
	
l15801:	
	movf	(setLED1@status),w
	xorlw	01h&0ffh
	skipz
	goto	u8581
	goto	u8580
u8581:
	goto	l15805
u8580:
	
l15803:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7
	goto	l4747
	
l4742:	
	
l15805:	
	movf	(setLED1@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u8591
	goto	u8590
u8591:
	goto	l15811
u8590:
	
l15807:	
	movlb 0	; select bank0
	movf	(__LED1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(__LED1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l15809:	
	bsf	(99/8),(99)&7
	goto	l4747
	
l4744:	
	
l15811:	
	movf	(setLED1@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u8601
	goto	u8600
u8601:
	goto	l4747
u8600:
	
l15813:	
	movlb 0	; select bank0
	movf	(__LED1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l4747
	
l4746:	
	goto	l4747
	
l4745:	
	goto	l4747
	
l4743:	
	goto	l4747
	
l4741:	
	line	14
	
l4747:	
	return
	opt stack 0
GLOBAL	__end_of_setLED1
	__end_of_setLED1:
;; =============== function _setLED1 ends ============

	signat	_setLED1,4216
	global	_DelayTime_1us
psect	text1916,local,class=CODE,delta=2
global __ptext1916
__ptext1916:

;; *************** function _DelayTime_1us *****************
;; Defined at:
;;		line 322 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;  count           2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    2[BANK0 ] unsigned int 
;;  i               2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         2       4       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CC2500_PowerRST
;;		_CC2500_FrequencyCabr
;; This function uses a non-reentrant model
;;
psect	text1916
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	322
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
	opt	stack 11
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	324
	
l15775:	
;CC2500_A1.c: 323: unsigned int i,j;
;CC2500_A1.c: 324: for(i=1;i<count;i++) { for(j=0;j<=1;j++); } ;;
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l2392
	
l2393:	
	
l15777:	
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l15779:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u8531
	goto	u8530
u8531:
	goto	l15783
u8530:
	goto	l15785
	
l15781:	
	goto	l15785
	
l2394:	
	
l15783:	
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
	goto	u8541
	goto	u8540
u8541:
	goto	l15783
u8540:
	goto	l15785
	
l2395:	
	
l15785:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l2392:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u8555
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u8555:
	skipc
	goto	u8551
	goto	u8550
u8551:
	goto	l15777
u8550:
	goto	l2397
	
l2396:	
	line	327
	
l2397:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTime_1us
	__end_of_DelayTime_1us:
;; =============== function _DelayTime_1us ends ============

	signat	_DelayTime_1us,4216
	global	_CC2500_ReadByte
psect	text1917,local,class=CODE,delta=2
global __ptext1917
__ptext1917:

;; *************** function _CC2500_ReadByte *****************
;; Defined at:
;;		line 235 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_b          1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CC2500_RxData
;;		_CC2500_ReadStatus
;;		_CC2500_ReadREG
;; This function uses a non-reentrant model
;;
psect	text1917
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	235
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
	opt	stack 11
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	237
	
l15757:	
;CC2500_A1.c: 236: unsigned char loop_b;
;CC2500_A1.c: 237: for(loop_b=0;loop_b<8;loop_b++) { RC1=1; SPI0Buffer<<=1; if(RC2 == 1) SPI0Buffer |= 0x01; else SPI0Buffer &= 0xFE; RC1=0; } ;;
	clrf	(CC2500_ReadByte@loop_b)
	
l15759:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u8501
	goto	u8500
u8501:
	goto	l2361
u8500:
	goto	l2365
	
l15761:	
	goto	l2365
	
l2361:	
	movlb 0	; select bank0
	bsf	(113/8),(113)&7
	
l15763:	
	clrc
	rlf	(_SPI0Buffer),f

	
l15765:	
	btfss	(114/8),(114)&7
	goto	u8511
	goto	u8510
u8511:
	goto	l15769
u8510:
	
l15767:	
	bsf	(_SPI0Buffer)+(0/8),(0)&7
	goto	l15771
	
l2363:	
	
l15769:	
	movlw	(0FEh)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	andwf	(_SPI0Buffer),f
	goto	l15771
	
l2364:	
	
l15771:	
	bcf	(113/8),(113)&7
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l15773:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u8521
	goto	u8520
u8521:
	goto	l2361
u8520:
	goto	l2365
	
l2362:	
	line	250
	
l2365:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadByte
	__end_of_CC2500_ReadByte:
;; =============== function _CC2500_ReadByte ends ============

	signat	_CC2500_ReadByte,88
	global	_CC2500_WriteByte
psect	text1918,local,class=CODE,delta=2
global __ptext1918
__ptext1918:

;; *************** function _CC2500_WriteByte *****************
;; Defined at:
;;		line 215 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_a          1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
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
psect	text1918
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\CC2500_A1.c"
	line	215
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
	opt	stack 11
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	217
	
l15741:	
;CC2500_A1.c: 216: unsigned char loop_a;
;CC2500_A1.c: 217: for(loop_a=0;loop_a<8;loop_a++) { if(SPI0Buffer&0x80) RC0=1; else RC0=0; RC1=1; SPI0Buffer<<=1; RC1=0; } ;;
	clrf	(CC2500_WriteByte@loop_a)
	
l15743:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u8471
	goto	u8470
u8471:
	goto	l2354
u8470:
	goto	l2358
	
l15745:	
	goto	l2358
	
l2354:	
	movlb 0	; select bank0
	btfss	(_SPI0Buffer),(7)&7
	goto	u8481
	goto	u8480
u8481:
	goto	l2356
u8480:
	
l15747:	
	bsf	(112/8),(112)&7
	goto	l2357
	
l2356:	
	bcf	(112/8),(112)&7
	
l2357:	
	bsf	(113/8),(113)&7
	
l15749:	
	clrc
	rlf	(_SPI0Buffer),f

	
l15751:	
	bcf	(113/8),(113)&7
	
l15753:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l15755:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u8491
	goto	u8490
u8491:
	goto	l2354
u8490:
	goto	l2358
	
l2355:	
	line	230
	
l2358:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteByte
	__end_of_CC2500_WriteByte:
;; =============== function _CC2500_WriteByte ends ============

	signat	_CC2500_WriteByte,88
	global	_Buzzer_Main
psect	text1919,local,class=CODE,delta=2
global __ptext1919
__ptext1919:

;; *************** function _Buzzer_Main *****************
;; Defined at:
;;		line 23 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Buzzer_A1.c"
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
psect	text1919
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Buzzer_A1.c"
	line	23
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
	opt	stack 13
; Regs used in _Buzzer_Main: [wreg+fsr1l-status,0]
	line	24
	
l13945:	
;Buzzer_A1.c: 24: if(Buzzer->GO) { Buzzer->Time++; if(Buzzer->Time == Buzzer->TimeValue) { Buzzer->Time=0; if(RB3 == 0) { RB3=1; } else { RB3=0; if(Buzzer->Count == 0) { if(Buzzer->BufferStatus) { Buzzer->BufferStatus=0; Buzzer->Count=(--Buzzer->CountBuffer); Buzzer->
	movlb 0	; select bank0
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u5381
	goto	u5380
u5381:
	goto	l1143
u5380:
	
l13947:	
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l13949:	
	movf	(_Buzzer),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Buzzer_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Buzzer_Main+0)+0+1
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorwf	0+(??_Buzzer_Main+0)+0,w
	skipz
	goto	u5395
	moviw	[1]fsr1
	xorwf	1+(??_Buzzer_Main+0)+0,w
u5395:
	skipz
	goto	u5391
	goto	u5390
u5391:
	goto	l1143
u5390:
	
l13951:	
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l13953:	
	btfsc	(107/8),(107)&7
	goto	u5401
	goto	u5400
u5401:
	goto	l1137
u5400:
	
l13955:	
	bsf	(107/8),(107)&7
	goto	l1143
	
l1137:	
	bcf	(107/8),(107)&7
	
l13957:	
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u5411
	goto	u5410
u5411:
	goto	l13969
u5410:
	
l13959:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u5421
	goto	u5420
u5421:
	goto	l13967
u5420:
	
l13961:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	
l13963:	
	movf	(_Buzzer),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	decf	wreg,w
	movwi	[0]fsr1
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Buzzer_Main+0)+0,w
	movwf	indf1
	
l13965:	
	movf	(_Buzzer),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Buzzer_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Buzzer_Main+0)+0+1
	movf	(_Buzzer),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_Buzzer_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_Buzzer_Main+0)+0,w
	movwi	[1]fsr1
	goto	l1143
	
l1140:	
	
l13967:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	l1143
	
l1141:	
	goto	l1143
	
l1139:	
	
l13969:	
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l1143
	
l1142:	
	goto	l1143
	
l1138:	
	goto	l1143
	
l1136:	
	goto	l1143
	
l1135:	
	line	25
	
l1143:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Main
	__end_of_Buzzer_Main:
;; =============== function _Buzzer_Main ends ============

	signat	_Buzzer_Main,88
	global	_Buzzer_Initial
psect	text1920,local,class=CODE,delta=2
global __ptext1920
__ptext1920:

;; *************** function _Buzzer_Initial *****************
;; Defined at:
;;		line 18 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Buzzer_A1.c"
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
psect	text1920
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Buzzer_A1.c"
	line	18
	global	__size_of_Buzzer_Initial
	__size_of_Buzzer_Initial	equ	__end_of_Buzzer_Initial-_Buzzer_Initial
	
_Buzzer_Initial:	
	opt	stack 13
; Regs used in _Buzzer_Initial: [wregfsr1]
	line	19
	
l13941:	
;Buzzer_A1.c: 19: Buzzer=&VarBuzzer; Buzzer->Enable=1; ;;
	movlw	(_VarBuzzer)&0ffh
	movwf	(??_Buzzer_Initial+0)+0
	movf	(??_Buzzer_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_Buzzer)
	
l13943:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	20
	
l1132:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initial
	__end_of_Buzzer_Initial:
;; =============== function _Buzzer_Initial ends ============

	signat	_Buzzer_Initial,88
	global	_setBuzzer
psect	text1921,local,class=CODE,delta=2
global __ptext1921
__ptext1921:

;; *************** function _setBuzzer *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Buzzer_A1.c"
;; Parameters:    Size  Location     Type
;;  count           1    wreg     unsigned char 
;;  time            2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  count           1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_MainT
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text1921
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Buzzer_A1.c"
	line	8
	global	__size_of_setBuzzer
	__size_of_setBuzzer	equ	__end_of_setBuzzer-_setBuzzer
	
_setBuzzer:	
	opt	stack 11
; Regs used in _setBuzzer: [wreg+fsr1l-status,0]
;setBuzzer@count stored from wreg
	movwf	(setBuzzer@count)
	line	9
	
l13919:	
;Buzzer_A1.c: 9: if(Buzzer->Enable) { if(Buzzer->GO == 0) { Buzzer->GO=1; RB3=1; Buzzer->Count=(--count); Buzzer->TimeValue=time; if(Buzzer->TimeValue == 0) { Buzzer->TimeValue=100; } } else { if(Buzzer->BufferStatus == 0) { Buzzer->BufferStatus=1; Buzzer->CountBuffe
	movlb 0	; select bank0
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5341
	goto	u5340
u5341:
	goto	l1126
u5340:
	
l13921:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u5351
	goto	u5350
u5351:
	goto	l13935
u5350:
	
l13923:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l13925:	
	bsf	(107/8),(107)&7
	
l13927:	
	movlw	low(01h)
	subwf	(setBuzzer@count),f
	movf	((setBuzzer@count)),w
	movwf	(??_setBuzzer+0)+0
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setBuzzer+0)+0,w
	movwf	indf1
	
l13929:	
	movf	(_Buzzer),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setBuzzer@time),w
	movwi	[0]fsr1
	movf	(setBuzzer@time+1),w
	movwi	[1]fsr1
	
l13931:	
	movf	(_Buzzer),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	fsr1++
	iorwf	indf1,w
	skipz
	goto	u5361
	goto	u5360
u5361:
	goto	l1126
u5360:
	
l13933:	
	movf	(_Buzzer),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(064h)
	movwi	[0]fsr1
	movlw	high(064h)
	movwi	[1]fsr1
	goto	l1126
	
l1123:	
	goto	l1126
	
l1122:	
	
l13935:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u5371
	goto	u5370
u5371:
	goto	l1126
u5370:
	
l13937:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	movf	(setBuzzer@count),w
	movwf	(??_setBuzzer+0)+0
	movf	(_Buzzer),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setBuzzer+0)+0,w
	movwf	indf1
	movf	(_Buzzer),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setBuzzer@time),w
	movwi	[0]fsr1
	movf	(setBuzzer@time+1),w
	movwi	[1]fsr1
	goto	l1126
	
l1125:	
	goto	l1126
	
l1124:	
	goto	l1126
	
l1121:	
	line	10
	
l1126:	
	return
	opt stack 0
GLOBAL	__end_of_setBuzzer
	__end_of_setBuzzer:
;; =============== function _setBuzzer ends ============

	signat	_setBuzzer,8312
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
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
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_setLoad_JudgeValue
;;		i1_setLED1
;;		_Dimmer_Close
;;		i1_setLED2
;;		i1_setLED3
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\MCU_16f1516_A.c"
	line	12
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 9
; Regs used in _ISR: [wreg-status,0+pclath+cstack]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+1)
	line	13
	
i1l14217:	
;MCU_16f1516_A.c: 13: if(IOCIE && IOCIF && IOCBF2) { IOCBF2=0; IOCIF=0; _nop(); if(TMain->PowerON == 1) { TMR0=255; DimmerLights1->GO=1; DimmerLights2->GO=1; DimmerLights3->GO=1; ;; ;; } } ;;
	btfss	(91/8),(91)&7
	goto	u586_21
	goto	u586_20
u586_21:
	goto	i1l14235
u586_20:
	
i1l14219:	
	btfss	(88/8),(88)&7
	goto	u587_21
	goto	u587_20
u587_21:
	goto	i1l14235
u587_20:
	
i1l14221:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7
	goto	u588_21
	goto	u588_20
u588_21:
	goto	i1l14235
u588_20:
	
i1l14223:	
	bcf	(7346/8)^0380h,(7346)&7
	bcf	(88/8),(88)&7
	nop
	
i1l14225:	
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u589_21
	goto	u589_20
u589_21:
	goto	i1l14235
u589_20:
	
i1l14227:	
	movlw	(0FFh)
	movwf	(21)	;volatile
	
i1l14229:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
i1l14231:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
i1l14233:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l14235
	
i1l7184:	
	goto	i1l14235
	
i1l7183:	
	line	15
	
i1l14235:	
;MCU_16f1516_A.c: 15: if(TMR0IE && TMR0IF) { TMR0=(256-90); TMR0IF=0; if(DimmerLights1->GO) { DimmerLights1->Count++; if(DimmerLights1->Count >= DimmerLights1->DimmingValue) { DimmerLights1->Count=0; DimmerLights1->GO=0; DimmerLights1->Flag=1; if(DimmerLights1->StatusFlag
	btfss	(93/8),(93)&7
	goto	u590_21
	goto	u590_20
u590_21:
	goto	i1l14473
u590_20:
	
i1l14237:	
	btfss	(90/8),(90)&7
	goto	u591_21
	goto	u591_20
u591_21:
	goto	i1l14473
u591_20:
	
i1l14239:	
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	
i1l14241:	
	bcf	(90/8),(90)&7
	
i1l14243:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u592_21
	goto	u592_20
u592_21:
	goto	i1l14253
u592_20:
	
i1l14245:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14247:	
	movf	(_DimmerLights1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u593_21
	goto	u593_20
u593_21:
	goto	i1l7189
u593_20:
	
i1l14249:	
	movf	(_DimmerLights1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u594_21
	goto	u594_20
u594_21:
	goto	i1l7189
u594_20:
	
i1l14251:	
	bsf	(103/8),(103)&7
	goto	i1l7189
	
i1l7188:	
	goto	i1l7189
	
i1l7187:	
	goto	i1l7189
	
i1l7186:	
	
i1l14253:	
	movf	(_DimmerLights1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u595_21
	goto	u595_20
u595_21:
	goto	i1l14309
u595_20:
	
i1l14255:	
	movf	(_DimmerLights1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u596_21
	goto	u596_20
u596_21:
	goto	i1l14309
u596_20:
	
i1l14257:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14259:	
	movf	(_DimmerLights1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights1),w
	addlw	03h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u597_21
	goto	u597_20
u597_21:
	goto	i1l14309
u597_20:
	
i1l14261:	
	movf	(_DimmerLights1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u598_21
	goto	u598_20
u598_21:
	goto	i1l14277
u598_20:
	
i1l14263:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u599_21
	goto	u599_20
u599_21:
	goto	i1l14271
u599_20:
	
i1l14265:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(026h)
	subwf	indf1,w
	skipc
	goto	u600_21
	goto	u600_20
u600_21:
	goto	i1l14269
u600_20:
	
i1l14267:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l14309
	
i1l7195:	
	
i1l14269:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,4
	goto	i1l14309
	
i1l7196:	
	goto	i1l14309
	
i1l7194:	
	
i1l14271:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(06Eh)
	subwf	indf1,w
	skipnc
	goto	u601_21
	goto	u601_20
u601_21:
	goto	i1l14275
u601_20:
	
i1l14273:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l14309
	
i1l7198:	
	
i1l14275:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	goto	i1l14309
	
i1l7199:	
	goto	i1l14309
	
i1l7197:	
	goto	i1l14309
	
i1l7193:	
	
i1l14277:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u602_21
	goto	u602_20
u602_21:
	goto	i1l14291
u602_20:
	
i1l14279:	
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u603_21
	goto	u603_20
u603_21:
	goto	i1l14283
u603_20:
	
i1l14281:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l14287
	
i1l7202:	
	
i1l14283:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u604_21
	goto	u604_20
u604_21:
	goto	i1l14287
u604_20:
	
i1l14285:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l14287
	
i1l7204:	
	goto	i1l14287
	
i1l7203:	
	
i1l14287:	
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	xorwf	indf1,w
	skipz
	goto	u605_21
	goto	u605_20
u605_21:
	goto	i1l14309
u605_20:
	
i1l14289:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	i1l14309
	
i1l7205:	
	goto	i1l14309
	
i1l7201:	
	
i1l14291:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,5
	goto	u606_21
	goto	u606_20
u606_21:
	goto	i1l14299
u606_20:
	
i1l14293:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l14295:	
	movf	(_DimmerLights1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u607_21
	goto	u607_20
u607_21:
	goto	i1l14309
u607_20:
	
i1l14297:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	i1l14309
	
i1l7208:	
	goto	i1l14309
	
i1l7207:	
	
i1l14299:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14301:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights1),w
	addlw	07h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u608_21
	goto	u608_20
u608_21:
	goto	i1l14309
u608_20:
	
i1l14303:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
i1l14305:	
	nop
	
i1l14307:	
	fcall	i1_setLoad_JudgeValue
	movlw	(01h)
	fcall	i1_setLED1
	fcall	_Dimmer_Close
	goto	i1l14309
	
i1l7210:	
	goto	i1l14309
	
i1l7209:	
	goto	i1l14309
	
i1l7206:	
	goto	i1l14309
	
i1l7200:	
	goto	i1l14309
	
i1l7192:	
	goto	i1l14309
	
i1l7191:	
	goto	i1l14309
	
i1l7190:	
	
i1l14309:	
	movlb 0	; select bank0
	btfss	(103/8),(103)&7
	goto	u609_21
	goto	u609_20
u609_21:
	goto	i1l7189
u609_20:
	
i1l14311:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14313:	
	movf	(_DimmerLights1),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u610_21
	goto	u610_20
u610_21:
	goto	i1l7189
u610_20:
	
i1l14315:	
	movf	(_DimmerLights1),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	
i1l14317:	
	bcf	(103/8),(103)&7
	goto	i1l7189
	
i1l7212:	
	goto	i1l7189
	
i1l7211:	
	
i1l7189:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u611_21
	goto	u611_20
u611_21:
	goto	i1l14327
u611_20:
	
i1l14319:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14321:	
	movf	(_DimmerLights2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u612_21
	goto	u612_20
u612_21:
	goto	i1l7216
u612_20:
	
i1l14323:	
	movf	(_DimmerLights2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u613_21
	goto	u613_20
u613_21:
	goto	i1l7216
u613_20:
	
i1l14325:	
	bsf	(105/8),(105)&7
	goto	i1l7216
	
i1l7215:	
	goto	i1l7216
	
i1l7214:	
	goto	i1l7216
	
i1l7213:	
	
i1l14327:	
	movf	(_DimmerLights2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u614_21
	goto	u614_20
u614_21:
	goto	i1l14383
u614_20:
	
i1l14329:	
	movf	(_DimmerLights2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u615_21
	goto	u615_20
u615_21:
	goto	i1l14383
u615_20:
	
i1l14331:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14333:	
	movf	(_DimmerLights2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights2),w
	addlw	03h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u616_21
	goto	u616_20
u616_21:
	goto	i1l14383
u616_20:
	
i1l14335:	
	movf	(_DimmerLights2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u617_21
	goto	u617_20
u617_21:
	goto	i1l14351
u617_20:
	
i1l14337:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u618_21
	goto	u618_20
u618_21:
	goto	i1l14345
u618_20:
	
i1l14339:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(026h)
	subwf	indf1,w
	skipc
	goto	u619_21
	goto	u619_20
u619_21:
	goto	i1l14343
u619_20:
	
i1l14341:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l14383
	
i1l7222:	
	
i1l14343:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,4
	goto	i1l14383
	
i1l7223:	
	goto	i1l14383
	
i1l7221:	
	
i1l14345:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(06Eh)
	subwf	indf1,w
	skipnc
	goto	u620_21
	goto	u620_20
u620_21:
	goto	i1l14349
u620_20:
	
i1l14347:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l14383
	
i1l7225:	
	
i1l14349:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	goto	i1l14383
	
i1l7226:	
	goto	i1l14383
	
i1l7224:	
	goto	i1l14383
	
i1l7220:	
	
i1l14351:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u621_21
	goto	u621_20
u621_21:
	goto	i1l14365
u621_20:
	
i1l14353:	
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u622_21
	goto	u622_20
u622_21:
	goto	i1l14357
u622_20:
	
i1l14355:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l14361
	
i1l7229:	
	
i1l14357:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u623_21
	goto	u623_20
u623_21:
	goto	i1l14361
u623_20:
	
i1l14359:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l14361
	
i1l7231:	
	goto	i1l14361
	
i1l7230:	
	
i1l14361:	
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	xorwf	indf1,w
	skipz
	goto	u624_21
	goto	u624_20
u624_21:
	goto	i1l14383
u624_20:
	
i1l14363:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	i1l14383
	
i1l7232:	
	goto	i1l14383
	
i1l7228:	
	
i1l14365:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,5
	goto	u625_21
	goto	u625_20
u625_21:
	goto	i1l14373
u625_20:
	
i1l14367:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l14369:	
	movf	(_DimmerLights2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u626_21
	goto	u626_20
u626_21:
	goto	i1l14383
u626_20:
	
i1l14371:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	i1l14383
	
i1l7235:	
	goto	i1l14383
	
i1l7234:	
	
i1l14373:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14375:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DimmerLights2),w
	addlw	07h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u627_21
	goto	u627_20
u627_21:
	goto	i1l14383
u627_20:
	
i1l14377:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
i1l14379:	
	nop
	
i1l14381:	
	fcall	i1_setLoad_JudgeValue
	movlw	(01h)
	fcall	i1_setLED2
	fcall	_Dimmer_Close
	goto	i1l14383
	
i1l7237:	
	goto	i1l14383
	
i1l7236:	
	goto	i1l14383
	
i1l7233:	
	goto	i1l14383
	
i1l7227:	
	goto	i1l14383
	
i1l7219:	
	goto	i1l14383
	
i1l7218:	
	goto	i1l14383
	
i1l7217:	
	
i1l14383:	
	movlb 0	; select bank0
	btfss	(105/8),(105)&7
	goto	u628_21
	goto	u628_20
u628_21:
	goto	i1l7216
u628_20:
	
i1l14385:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14387:	
	movf	(_DimmerLights2),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u629_21
	goto	u629_20
u629_21:
	goto	i1l7216
u629_20:
	
i1l14389:	
	movf	(_DimmerLights2),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	
i1l14391:	
	bcf	(105/8),(105)&7
	goto	i1l7216
	
i1l7239:	
	goto	i1l7216
	
i1l7238:	
	
i1l7216:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u630_21
	goto	u630_20
u630_21:
	goto	i1l14401
u630_20:
	
i1l14393:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14395:	
	movf	(_DimmerLights3),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u631_21
	goto	u631_20
u631_21:
	goto	i1l14467
u631_20:
	
i1l14397:	
	movf	(_DimmerLights3),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights3),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u632_21
	goto	u632_20
u632_21:
	goto	i1l14467
u632_20:
	
i1l14399:	
	bsf	(108/8),(108)&7
	goto	i1l14467
	
i1l7242:	
	goto	i1l14467
	
i1l7241:	
	goto	i1l14467
	
i1l7240:	
	
i1l14401:	
	movf	(_DimmerLights3),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u633_21
	goto	u633_20
u633_21:
	goto	i1l14457
u633_20:
	
i1l14403:	
	movf	(_DimmerLights3),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u634_21
	goto	u634_20
u634_21:
	goto	i1l14457
u634_20:
	
i1l14405:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14407:	
	movf	(_DimmerLights3),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights3),w
	addlw	03h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u635_21
	goto	u635_20
u635_21:
	goto	i1l14457
u635_20:
	
i1l14409:	
	movf	(_DimmerLights3),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u636_21
	goto	u636_20
u636_21:
	goto	i1l14425
u636_20:
	
i1l14411:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u637_21
	goto	u637_20
u637_21:
	goto	i1l14419
u637_20:
	
i1l14413:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(026h)
	subwf	indf1,w
	skipc
	goto	u638_21
	goto	u638_20
u638_21:
	goto	i1l14417
u638_20:
	
i1l14415:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l14457
	
i1l7249:	
	
i1l14417:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l14457
	
i1l7250:	
	goto	i1l14457
	
i1l7248:	
	
i1l14419:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(06Eh)
	subwf	indf1,w
	skipnc
	goto	u639_21
	goto	u639_20
u639_21:
	goto	i1l14423
u639_20:
	
i1l14421:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l14457
	
i1l7252:	
	
i1l14423:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l14457
	
i1l7253:	
	goto	i1l14457
	
i1l7251:	
	goto	i1l14457
	
i1l7247:	
	
i1l14425:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u640_21
	goto	u640_20
u640_21:
	goto	i1l14439
u640_20:
	
i1l14427:	
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u641_21
	goto	u641_20
u641_21:
	goto	i1l14431
u641_20:
	
i1l14429:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l14435
	
i1l7256:	
	
i1l14431:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u642_21
	goto	u642_20
u642_21:
	goto	i1l14435
u642_20:
	
i1l14433:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l14435
	
i1l7258:	
	goto	i1l14435
	
i1l7257:	
	
i1l14435:	
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	xorwf	indf1,w
	skipz
	goto	u643_21
	goto	u643_20
u643_21:
	goto	i1l14457
u643_20:
	
i1l14437:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l14457
	
i1l7259:	
	goto	i1l14457
	
i1l7255:	
	
i1l14439:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u644_21
	goto	u644_20
u644_21:
	goto	i1l14447
u644_20:
	
i1l14441:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l14443:	
	movf	(_DimmerLights3),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u645_21
	goto	u645_20
u645_21:
	goto	i1l14457
u645_20:
	
i1l14445:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l14457
	
i1l7262:	
	goto	i1l14457
	
i1l7261:	
	
i1l14447:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14449:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights3),w
	addlw	07h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u646_21
	goto	u646_20
u646_21:
	goto	i1l14457
u646_20:
	
i1l14451:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	
i1l14453:	
	nop
	
i1l14455:	
	fcall	i1_setLoad_JudgeValue
	movlw	(01h)
	fcall	i1_setLED3
	fcall	_Dimmer_Close
	goto	i1l14457
	
i1l7264:	
	goto	i1l14457
	
i1l7263:	
	goto	i1l14457
	
i1l7260:	
	goto	i1l14457
	
i1l7254:	
	goto	i1l14457
	
i1l7246:	
	goto	i1l14457
	
i1l7245:	
	goto	i1l14457
	
i1l7244:	
	
i1l14457:	
	movlb 0	; select bank0
	btfss	(108/8),(108)&7
	goto	u647_21
	goto	u647_20
u647_21:
	goto	i1l14467
u647_20:
	
i1l14459:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l14461:	
	movf	(_DimmerLights3),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u648_21
	goto	u648_20
u648_21:
	goto	i1l14467
u648_20:
	
i1l14463:	
	movf	(_DimmerLights3),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l14465:	
	bcf	(108/8),(108)&7
	goto	i1l14467
	
i1l7266:	
	goto	i1l14467
	
i1l7265:	
	goto	i1l14467
	
i1l7243:	
	
i1l14467:	
	movf	(_Timer0),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
i1l14469:	
	movf	(_Timer0),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u649_25
	moviw	[1]fsr1
	xorlw	high(014h)
u649_25:
	skipz
	goto	u649_21
	goto	u649_20
u649_21:
	goto	i1l14473
u649_20:
	
i1l14471:	
	movf	(_Timer0),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	i1l14473
	
i1l7267:	
	goto	i1l14473
	
i1l7185:	
	line	17
	
i1l14473:	
;MCU_16f1516_A.c: 17: _nop();
	nop
	line	21
	
i1l14475:	
;MCU_16f1516_A.c: 21: if(INTE && INTF) { INTF=0; INTE=0; RF->ReceiveGO=1; } ;;
	btfss	(92/8),(92)&7
	goto	u650_21
	goto	u650_20
u650_21:
	goto	i1l14483
u650_20:
	
i1l14477:	
	btfss	(89/8),(89)&7
	goto	u651_21
	goto	u651_20
u651_21:
	goto	i1l14483
u651_20:
	
i1l14479:	
	bcf	(89/8),(89)&7
	bcf	(92/8),(92)&7
	
i1l14481:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l14483
	
i1l7268:	
	line	23
	
i1l14483:	
;MCU_16f1516_A.c: 23: _nop();
	nop
	line	25
	
i1l7269:	
	movf	(??_ISR+1),w
	movlb 0	; select bank0
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	i1_setLoad_JudgeValue
psect	text1923,local,class=CODE,delta=2
global __ptext1923
__ptext1923:

;; *************** function i1_setLoad_JudgeValue *****************
;; Defined at:
;;		line 42 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\OverLoad_A.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1923
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\OverLoad_A.c"
	line	42
	global	__size_ofi1_setLoad_JudgeValue
	__size_ofi1_setLoad_JudgeValue	equ	__end_ofi1_setLoad_JudgeValue-i1_setLoad_JudgeValue
	
i1_setLoad_JudgeValue:	
	opt	stack 9
; Regs used in i1_setLoad_JudgeValue: []
	line	43
	
i1l14575:	
;OverLoad_A.c: 43: _nop();
	nop
	line	44
	
i1l8459:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLoad_JudgeValue
	__end_ofi1_setLoad_JudgeValue:
;; =============== function i1_setLoad_JudgeValue ends ============

	signat	i1_setLoad_JudgeValue,88
	global	i1_setLED3
psect	text1924,local,class=CODE,delta=2
global __ptext1924
__ptext1924:

;; *************** function i1_setLED3 *****************
;; Defined at:
;;		line 22 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
;; Parameters:    Size  Location     Type
;;  setLED3         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  setLED3         1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1924
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
	line	22
	global	__size_ofi1_setLED3
	__size_ofi1_setLED3	equ	__end_ofi1_setLED3-i1_setLED3
	
i1_setLED3:	
	opt	stack 9
; Regs used in i1_setLED3: [wreg+fsr1l-status,0]
;i1setLED3@status stored from wreg
	movwf	(i1setLED3@status)
	line	23
	
i1l14557:	
;LED_A1.c: 23: if(status == 0) { RC7=!0; ;; } else if(status == 1) { RC7=!1; ;; } else if(status == 10) { _LED3->GO=0; _LED3->Time=0; RC7=!0; ;; } else if(status == 11) { _LED3->GO=1; } ;;
	movf	(i1setLED3@status),f
	skipz
	goto	u666_21
	goto	u666_20
u666_21:
	goto	i1l14561
u666_20:
	
i1l14559:	
	movlb 0	; select bank0
	bsf	(119/8),(119)&7
	goto	i1l4767
	
i1l4760:	
	
i1l14561:	
	movf	(i1setLED3@status),w
	xorlw	01h&0ffh
	skipz
	goto	u667_21
	goto	u667_20
u667_21:
	goto	i1l14565
u667_20:
	
i1l14563:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7
	goto	i1l4767
	
i1l4762:	
	
i1l14565:	
	movf	(i1setLED3@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u668_21
	goto	u668_20
u668_21:
	goto	i1l14571
u668_20:
	
i1l14567:	
	movlb 0	; select bank0
	movf	(__LED3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(__LED3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
i1l14569:	
	bsf	(119/8),(119)&7
	goto	i1l4767
	
i1l4764:	
	
i1l14571:	
	movf	(i1setLED3@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u669_21
	goto	u669_20
u669_21:
	goto	i1l4767
u669_20:
	
i1l14573:	
	movlb 0	; select bank0
	movf	(__LED3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l4767
	
i1l4766:	
	goto	i1l4767
	
i1l4765:	
	goto	i1l4767
	
i1l4763:	
	goto	i1l4767
	
i1l4761:	
	line	24
	
i1l4767:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLED3
	__end_ofi1_setLED3:
;; =============== function i1_setLED3 ends ============

	signat	i1_setLED3,88
	global	i1_setLED2
psect	text1925,local,class=CODE,delta=2
global __ptext1925
__ptext1925:

;; *************** function i1_setLED2 *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
;; Parameters:    Size  Location     Type
;;  setLED2         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  setLED2         1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1925
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
	line	17
	global	__size_ofi1_setLED2
	__size_ofi1_setLED2	equ	__end_ofi1_setLED2-i1_setLED2
	
i1_setLED2:	
	opt	stack 9
; Regs used in i1_setLED2: [wreg+fsr1l-status,0]
;i1setLED2@status stored from wreg
	movwf	(i1setLED2@status)
	line	18
	
i1l14539:	
;LED_A1.c: 18: if(status == 0) { RC6=!0; ;; } else if(status == 1) { RC6=!1; ;; } else if(status == 10) { _LED2->GO=0; _LED2->Time=0; RC6=!0; ;; } else if(status == 11) { _LED2->GO=1; } ;;
	movf	(i1setLED2@status),f
	skipz
	goto	u662_21
	goto	u662_20
u662_21:
	goto	i1l14543
u662_20:
	
i1l14541:	
	movlb 0	; select bank0
	bsf	(118/8),(118)&7
	goto	i1l4757
	
i1l4750:	
	
i1l14543:	
	movf	(i1setLED2@status),w
	xorlw	01h&0ffh
	skipz
	goto	u663_21
	goto	u663_20
u663_21:
	goto	i1l14547
u663_20:
	
i1l14545:	
	movlb 0	; select bank0
	bcf	(118/8),(118)&7
	goto	i1l4757
	
i1l4752:	
	
i1l14547:	
	movf	(i1setLED2@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u664_21
	goto	u664_20
u664_21:
	goto	i1l14553
u664_20:
	
i1l14549:	
	movlb 0	; select bank0
	movf	(__LED2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(__LED2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
i1l14551:	
	bsf	(118/8),(118)&7
	goto	i1l4757
	
i1l4754:	
	
i1l14553:	
	movf	(i1setLED2@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u665_21
	goto	u665_20
u665_21:
	goto	i1l4757
u665_20:
	
i1l14555:	
	movlb 0	; select bank0
	movf	(__LED2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l4757
	
i1l4756:	
	goto	i1l4757
	
i1l4755:	
	goto	i1l4757
	
i1l4753:	
	goto	i1l4757
	
i1l4751:	
	line	19
	
i1l4757:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLED2
	__end_ofi1_setLED2:
;; =============== function i1_setLED2 ends ============

	signat	i1_setLED2,88
	global	i1_setLED1
psect	text1926,local,class=CODE,delta=2
global __ptext1926
__ptext1926:

;; *************** function i1_setLED1 *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
;; Parameters:    Size  Location     Type
;;  setLED1         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  setLED1         1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1926
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\LED_A1.c"
	line	12
	global	__size_ofi1_setLED1
	__size_ofi1_setLED1	equ	__end_ofi1_setLED1-i1_setLED1
	
i1_setLED1:	
	opt	stack 9
; Regs used in i1_setLED1: [wreg+fsr1l-status,0]
;i1setLED1@status stored from wreg
	movwf	(i1setLED1@status)
	line	13
	
i1l14521:	
;LED_A1.c: 13: if(status == 0) { RA3=!0; ;; } else if(status == 1) { RA3=!1; ;; } else if(status == 10) { _LED1->GO=0; _LED1->Time=0; RA3=!0; ;; } else if(status == 11) { _LED1->GO=1; } ;;
	movf	(i1setLED1@status),f
	skipz
	goto	u658_21
	goto	u658_20
u658_21:
	goto	i1l14525
u658_20:
	
i1l14523:	
	movlb 0	; select bank0
	bsf	(99/8),(99)&7
	goto	i1l4747
	
i1l4740:	
	
i1l14525:	
	movf	(i1setLED1@status),w
	xorlw	01h&0ffh
	skipz
	goto	u659_21
	goto	u659_20
u659_21:
	goto	i1l14529
u659_20:
	
i1l14527:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7
	goto	i1l4747
	
i1l4742:	
	
i1l14529:	
	movf	(i1setLED1@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u660_21
	goto	u660_20
u660_21:
	goto	i1l14535
u660_20:
	
i1l14531:	
	movlb 0	; select bank0
	movf	(__LED1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(__LED1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
i1l14533:	
	bsf	(99/8),(99)&7
	goto	i1l4747
	
i1l4744:	
	
i1l14535:	
	movf	(i1setLED1@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u661_21
	goto	u661_20
u661_21:
	goto	i1l4747
u661_20:
	
i1l14537:	
	movlb 0	; select bank0
	movf	(__LED1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l4747
	
i1l4746:	
	goto	i1l4747
	
i1l4745:	
	goto	i1l4747
	
i1l4743:	
	goto	i1l4747
	
i1l4741:	
	line	14
	
i1l4747:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLED1
	__end_ofi1_setLED1:
;; =============== function i1_setLED1 ends ============

	signat	i1_setLED1,88
	global	_Dimmer_Close
psect	text1927,local,class=CODE,delta=2
global __ptext1927
__ptext1927:

;; *************** function _Dimmer_Close *****************
;; Defined at:
;;		line 42 in file "G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
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
psect	text1927
	file	"G:\Program\PIC\8.Switch_3KEY_Dimmer\Switch_3KEY_Dimmer_V3.1.0\Release\Dimmer_A1.c"
	line	42
	global	__size_of_Dimmer_Close
	__size_of_Dimmer_Close	equ	__end_of_Dimmer_Close-_Dimmer_Close
	
_Dimmer_Close:	
	opt	stack 9
; Regs used in _Dimmer_Close: [wregfsr1]
	line	43
	
i1l14125:	
;Dimmer_A1.c: 43: if(DimmerLights1->Status == 0 && DimmerLights2->Status == 0 && DimmerLights3->Status == 0) { Memory->GO=1; };
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u574_21
	goto	u574_20
u574_21:
	goto	i1l3592
u574_20:
	
i1l14127:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u575_21
	goto	u575_20
u575_21:
	goto	i1l3592
u575_20:
	
i1l14129:	
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u576_21
	goto	u576_20
u576_21:
	goto	i1l3592
u576_20:
	
i1l14131:	
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	i1l3592
	
i1l3591:	
	line	44
	
i1l3592:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_Close
	__end_of_Dimmer_Close:
;; =============== function _Dimmer_Close ends ============

	signat	_Dimmer_Close,88
psect	text1928,local,class=CODE,delta=2
global __ptext1928
__ptext1928:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
