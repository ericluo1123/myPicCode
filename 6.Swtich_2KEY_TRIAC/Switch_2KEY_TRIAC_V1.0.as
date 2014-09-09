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
# 7 "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	dw 0xFFFC & 0xFFE7 ;#
# 8 "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
	FNCALL	_MainT,_setBuzzer
	FNCALL	_MainT,_setLoadtoEnable
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_RF_Main,_RF_RxDisable
	FNCALL	_RF_Main,_CC2500_RxData
	FNCALL	_RF_Main,_getRxData
	FNCALL	_RF_Main,_CC2500_TxData
	FNCALL	_RF_Main,_CC2500_WriteCommand
	FNCALL	_Flash_Memory_Main,_Flash_Memory_Modify
	FNCALL	_setRF_Enable,_CC2500_WriteCommand
	FNCALL	_setRF_Enable,_RF_RxDisable
	FNCALL	_getRxData,_setBuzzer
	FNCALL	_getRxData,_setDimmerLights1
	FNCALL	_getRxData,_setDimmerLights2
	FNCALL	_getRxData,_setDimmerLights3
	FNCALL	_getRxData,_setTxData
	FNCALL	_getRxData,_DelayTimejudge
	FNCALL	_getRxData,_setRF_DimmerValue
	FNCALL	_CC2500_PowerOnInitial,_CC2500_PowerRST
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitSetREG
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitPATable
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearTXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearRXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_FrequencyCabr
	FNCALL	_CC2500_PowerOnInitial,_CC2500_SIDLEMode
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Erasing
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Write
	FNCALL	_Flash_Memory_Initial,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Initial,_Flash_Memory_Write
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
	FNCALL	_RF_RxDisable,_CC2500_WriteCommand
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
	FNCALL	_Flash_Memory_Erasing,_Flash_Memory_Unlock
	FNCALL	_Flash_Memory_Write,_Flash_Memory_Unlock
	FNCALL	_setDimmerLights3_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights2_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights1_Adj,_setRF_DimmerLights
	FNCALL	_setRF_DimmerValue,_getStartValue
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
	file	"G:\Program\PIC\6.Swtich_2KEY_TRIAC\Relese\../Release/Switch_2Key_Triac.h"
	line	54

;initializer for _VarProduct
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
	file	"G:\Program\PIC\Header_File\../Header_File/MCU_16F1516_A.h"
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
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500_A1.h"
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
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500_A1.h"
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
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500_A1.h"
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
	global	_MSYSC_Signal
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
	global	_RA2
_RA2	set	98
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
	file	"Switch_2KEY_TRIAC_V1.0.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_CC2500_Enable:
       ds      1

_MSYSC_Signal:
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
	file	"G:\Program\PIC\6.Swtich_2KEY_TRIAC\Relese\../Release/Switch_2Key_Triac.h"
	line	54
_VarProduct:
       ds      26

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"G:\Program\PIC\Header_File\../Header_File/MCU_16F1516_A.h"
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
	global	?_setLED1
?_setLED1:	; 0 bytes @ 0x0
	global	?_Dimmer_Close
?_Dimmer_Close:	; 0 bytes @ 0x0
	global	??_Dimmer_Close
??_Dimmer_Close:	; 0 bytes @ 0x0
	global	?_setLED2
?_setLED2:	; 0 bytes @ 0x0
	global	?_setLED3
?_setLED3:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Write
?_Flash_Memory_Write:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Modify
?_Flash_Memory_Modify:	; 0 bytes @ 0x0
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
	global	?_RF_RxDisable
?_RF_RxDisable:	; 0 bytes @ 0x0
	global	?_getRxData
?_getRxData:	; 0 bytes @ 0x0
	global	?_setDimmerLights1
?_setDimmerLights1:	; 0 bytes @ 0x0
	global	?_setDimmerLights2
?_setDimmerLights2:	; 0 bytes @ 0x0
	global	?_setDimmerLights3
?_setDimmerLights3:	; 0 bytes @ 0x0
	global	?_setRF_DimmerValue
?_setRF_DimmerValue:	; 0 bytes @ 0x0
	global	?_Dimmer_setOverLoad_GO_Off
?_Dimmer_setOverLoad_GO_Off:	; 0 bytes @ 0x0
	global	?_MainT_Initial
?_MainT_Initial:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_setLoad_GO_On
?_setLoad_GO_On:	; 0 bytes @ 0x0
	global	?_setLoadtoEnable
?_setLoadtoEnable:	; 0 bytes @ 0x0
	global	?_setLoad_JudgeValue
?_setLoad_JudgeValue:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Initial
?_Flash_Memory_Initial:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Main
?_Flash_Memory_Main:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Unlock
?_Flash_Memory_Unlock:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Erasing
?_Flash_Memory_Erasing:	; 0 bytes @ 0x0
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
	global	?_RF_Initial
?_RF_Initial:	; 0 bytes @ 0x0
	global	?_RF_Main
?_RF_Main:	; 0 bytes @ 0x0
	global	?_setTxData
?_setTxData:	; 0 bytes @ 0x0
	global	?_setRF_Enable
?_setRF_Enable:	; 0 bytes @ 0x0
	global	?_LED_Initial
?_LED_Initial:	; 0 bytes @ 0x0
	global	?_LED_Main
?_LED_Main:	; 0 bytes @ 0x0
	global	?_setDimmerLights1_Adj
?_setDimmerLights1_Adj:	; 0 bytes @ 0x0
	global	?_setDimmerLights2_Adj
?_setDimmerLights2_Adj:	; 0 bytes @ 0x0
	global	?_setDimmerLights3_Adj
?_setDimmerLights3_Adj:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?i1_setLoad_JudgeValue
?i1_setLoad_JudgeValue:	; 0 bytes @ 0x0
	global	??i1_setLoad_JudgeValue
??i1_setLoad_JudgeValue:	; 0 bytes @ 0x0
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
	global	??_setLED1
??_setLED1:	; 0 bytes @ 0x3
	global	??_setLED2
??_setLED2:	; 0 bytes @ 0x3
	global	??_setLED3
??_setLED3:	; 0 bytes @ 0x3
	global	??_Flash_Memory_Read
??_Flash_Memory_Read:	; 0 bytes @ 0x3
	global	??_Flash_Memory_Write
??_Flash_Memory_Write:	; 0 bytes @ 0x3
	global	??_CC2500_WriteByte
??_CC2500_WriteByte:	; 0 bytes @ 0x3
	global	??_CC2500_ReadByte
??_CC2500_ReadByte:	; 0 bytes @ 0x3
	global	?_DelayTime_1us
?_DelayTime_1us:	; 0 bytes @ 0x3
	global	??_DelayTimejudge
??_DelayTimejudge:	; 0 bytes @ 0x3
	global	??_Dimmer_setOverLoad_GO_Off
??_Dimmer_setOverLoad_GO_Off:	; 0 bytes @ 0x3
	global	??_MainT_Initial
??_MainT_Initial:	; 0 bytes @ 0x3
	global	??_setLoad_GO_On
??_setLoad_GO_On:	; 0 bytes @ 0x3
	global	??_setLoadtoEnable
??_setLoadtoEnable:	; 0 bytes @ 0x3
	global	??_setLoad_JudgeValue
??_setLoad_JudgeValue:	; 0 bytes @ 0x3
	global	??_Flash_Memory_Unlock
??_Flash_Memory_Unlock:	; 0 bytes @ 0x3
	global	??_Flash_Memory_Erasing
??_Flash_Memory_Erasing:	; 0 bytes @ 0x3
	global	?_setBuzzer
?_setBuzzer:	; 0 bytes @ 0x3
	global	??_Buzzer_Initial
??_Buzzer_Initial:	; 0 bytes @ 0x3
	global	??_Buzzer_Main
??_Buzzer_Main:	; 0 bytes @ 0x3
	global	??_RF_Initial
??_RF_Initial:	; 0 bytes @ 0x3
	global	??_setTxData
??_setTxData:	; 0 bytes @ 0x3
	global	?_setRF_DimmerLights
?_setRF_DimmerLights:	; 0 bytes @ 0x3
	global	??_LED_Initial
??_LED_Initial:	; 0 bytes @ 0x3
	global	??_LED_Main
??_LED_Main:	; 0 bytes @ 0x3
	global	?_getStartValue
?_getStartValue:	; 1 bytes @ 0x3
	global	setRF_DimmerLights@on
setRF_DimmerLights@on:	; 1 bytes @ 0x3
	global	setLED1@status
setLED1@status:	; 1 bytes @ 0x3
	global	setLED2@status
setLED2@status:	; 1 bytes @ 0x3
	global	setLED3@status
setLED3@status:	; 1 bytes @ 0x3
	global	setBuzzer@time
setBuzzer@time:	; 2 bytes @ 0x3
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x3
	ds	1
	global	Flash_Memory_Read@i
Flash_Memory_Read@i:	; 1 bytes @ 0x4
	global	Flash_Memory_Write@i
Flash_Memory_Write@i:	; 1 bytes @ 0x4
	global	CC2500_WriteByte@loop_a
CC2500_WriteByte@loop_a:	; 1 bytes @ 0x4
	global	CC2500_ReadByte@loop_b
CC2500_ReadByte@loop_b:	; 1 bytes @ 0x4
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
	global	??_setBuzzer
??_setBuzzer:	; 0 bytes @ 0x5
	global	??_setRF_DimmerLights
??_setRF_DimmerLights:	; 0 bytes @ 0x5
	global	Flash_Memory_Read@address
Flash_Memory_Read@address:	; 1 bytes @ 0x5
	global	CC2500_WriteREG@value
CC2500_WriteREG@value:	; 1 bytes @ 0x5
	global	DelayTimejudge@value
DelayTimejudge@value:	; 1 bytes @ 0x5
	ds	1
	global	??_CC2500_WriteREG
??_CC2500_WriteREG:	; 0 bytes @ 0x6
	global	??_setRF_DimmerValue
??_setRF_DimmerValue:	; 0 bytes @ 0x6
	global	??_getStartValue
??_getStartValue:	; 0 bytes @ 0x6
	global	Flash_Memory_Read@ret
Flash_Memory_Read@ret:	; 1 bytes @ 0x6
	global	setBuzzer@count
setBuzzer@count:	; 1 bytes @ 0x6
	global	CC2500_WriteCommand@command
CC2500_WriteCommand@command:	; 1 bytes @ 0x6
	global	CC2500_ReadStatus@status_addr
CC2500_ReadStatus@status_addr:	; 1 bytes @ 0x6
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
	global	??_RF_RxDisable
??_RF_RxDisable:	; 0 bytes @ 0x7
	global	??_setDimmerLights1
??_setDimmerLights1:	; 0 bytes @ 0x7
	global	??_setDimmerLights2
??_setDimmerLights2:	; 0 bytes @ 0x7
	global	??_setDimmerLights3
??_setDimmerLights3:	; 0 bytes @ 0x7
	global	??_Flash_Memory_Initial
??_Flash_Memory_Initial:	; 0 bytes @ 0x7
	global	??_CC2500_TxData
??_CC2500_TxData:	; 0 bytes @ 0x7
	global	??_CC2500_RxData
??_CC2500_RxData:	; 0 bytes @ 0x7
	global	??_setRF_Enable
??_setRF_Enable:	; 0 bytes @ 0x7
	global	??_setDimmerLights1_Adj
??_setDimmerLights1_Adj:	; 0 bytes @ 0x7
	global	??_setDimmerLights2_Adj
??_setDimmerLights2_Adj:	; 0 bytes @ 0x7
	global	??_setDimmerLights3_Adj
??_setDimmerLights3_Adj:	; 0 bytes @ 0x7
	global	Flash_Memory_Modify@i
Flash_Memory_Modify@i:	; 1 bytes @ 0x7
	global	CC2500_WriteREG@w_addr
CC2500_WriteREG@w_addr:	; 1 bytes @ 0x7
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
	global	??_Flash_Memory_Modify
??_Flash_Memory_Modify:	; 0 bytes @ 0x0
	global	??_CC2500_InitSetREG
??_CC2500_InitSetREG:	; 0 bytes @ 0x0
	global	??_CC2500_InitPATable
??_CC2500_InitPATable:	; 0 bytes @ 0x0
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

;; Dimmable	PTR struct Dimmer size(1) Largest target is 2
;;		 -> NULL(NULL[0]), VarDimmable(BANK0[2]), 
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
;; DelayOffSw3	PTR struct DelayOff size(1) Largest target is 5
;;		 -> NULL(NULL[0]), VarDelayOffSw3(BANK1[5]), 
;;
;; DelayOffSw2	PTR struct DelayOff size(1) Largest target is 5
;;		 -> NULL(NULL[0]), VarDelayOffSw2(BANK1[5]), 
;;
;; DelayOffSw1	PTR struct DelayOff size(1) Largest target is 5
;;		 -> NULL(NULL[0]), VarDelayOffSw1(BANK1[5]), 
;;
;; Sw3	PTR struct Switch size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarSw3(BANK1[9]), 
;;
;; Sw2	PTR struct Switch size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarSw2(BANK1[9]), 
;;
;; Sw1	PTR struct Switch size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarSw1(BANK1[9]), 
;;
;; RFsw3	PTR struct RFsw size(1) Largest target is 1
;;		 -> NULL(NULL[0]), VarRFsw3(BANK0[1]), 
;;
;; RFsw2	PTR struct RFsw size(1) Largest target is 1
;;		 -> NULL(NULL[0]), VarRFsw2(BANK0[1]), 
;;
;; RFsw1	PTR struct RFsw size(1) Largest target is 1
;;		 -> NULL(NULL[0]), VarRFsw1(BANK0[1]), 
;;
;; Buzzer	PTR struct Buzzer size(1) Largest target is 9
;;		 -> NULL(NULL[0]), VarBuzzer(BANK1[9]), 
;;
;; Memory	PTR struct FlashMemory size(1) Largest target is 37
;;		 -> NULL(NULL[0]), VarMemory(BANK3[37]), 
;;
;; Product	PTR struct Product size(1) Largest target is 26
;;		 -> NULL(NULL[0]), VarProduct(BANK2[26]), 
;;
;; RF	PTR struct RF size(1) Largest target is 2
;;		 -> NULL(NULL[0]), VarRF(BANK0[2]), 
;;
;; Timer0	PTR struct Timer0 size(1) Largest target is 7
;;		 -> NULL(NULL[0]), VarTimer0(BANK1[7]), 
;;
;; DimmerLights3	PTR struct DimmerLights size(1) Largest target is 11
;;		 -> NULL(NULL[0]), VarDimmerLights3(BANK2[11]), 
;;
;; DimmerLights2	PTR struct DimmerLights size(1) Largest target is 11
;;		 -> NULL(NULL[0]), VarDimmerLights2(BANK1[11]), 
;;
;; DimmerLights1	PTR struct DimmerLights size(1) Largest target is 11
;;		 -> NULL(NULL[0]), VarDimmerLights1(BANK1[11]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 12
;;		 -> NULL(NULL[0]), VarTMain(BANK2[12]), 
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
;;   _MainT->_setRF_Enable
;;   _RF_Main->_CC2500_RxData
;;   _RF_Main->_CC2500_TxData
;;   _Flash_Memory_Main->_Flash_Memory_Modify
;;   _setRF_Enable->_CC2500_WriteCommand
;;   _getRxData->_setDimmerLights1
;;   _getRxData->_setDimmerLights2
;;   _getRxData->_setDimmerLights3
;;   _getRxData->_setRF_DimmerValue
;;   _Flash_Memory_Modify->_Flash_Memory_Read
;;   _Flash_Memory_Initial->_Flash_Memory_Read
;;   _setDimmerLights3->_setRF_DimmerLights
;;   _setDimmerLights2->_setRF_DimmerLights
;;   _setDimmerLights1->_setRF_DimmerLights
;;   _RF_RxDisable->_CC2500_WriteCommand
;;   _CC2500_SIDLEMode->_CC2500_WriteCommand
;;   _CC2500_FrequencyCabr->_CC2500_WriteCommand
;;   _CC2500_ClearRXFIFO->_CC2500_WriteCommand
;;   _CC2500_ClearTXFIFO->_CC2500_WriteCommand
;;   _CC2500_InitPATable->_CC2500_WriteREG
;;   _CC2500_InitSetREG->_CC2500_WriteREG
;;   _CC2500_RxData->_CC2500_ReadStatus
;;   _CC2500_RxData->_CC2500_WriteCommand
;;   _CC2500_TxData->_CC2500_WriteCommand
;;   _setDimmerLights3_Adj->_setRF_DimmerLights
;;   _setDimmerLights2_Adj->_setRF_DimmerLights
;;   _setDimmerLights1_Adj->_setRF_DimmerLights
;;   _setRF_DimmerValue->_getStartValue
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
;; (1) _MainT                                                0     0      0     348
;;                          _setBuzzer
;;                    _setLoadtoEnable
;;                       _setRF_Enable
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
;; (2) _setRF_Enable                                         1     1      0     260
;;                                              7 COMMON     1     1      0
;;                _CC2500_WriteCommand
;;                       _RF_RxDisable
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
;; (1) _CC2500_PowerOnInitial                                0     0      0    1327
;;                    _CC2500_PowerRST
;;                  _CC2500_InitSetREG
;;                 _CC2500_InitPATable
;;                 _CC2500_ClearTXFIFO
;;                 _CC2500_ClearRXFIFO
;;               _CC2500_FrequencyCabr
;;                   _CC2500_SIDLEMode
;; ---------------------------------------------------------------------------------
;; (2) _Flash_Memory_Modify                                  3     3      0     267
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      2     2      0
;;                  _Flash_Memory_Read
;;               _Flash_Memory_Erasing
;;                 _Flash_Memory_Write
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Initial                                 2     2      0     137
;;                                              7 COMMON     1     1      0
;;                  _Flash_Memory_Read
;;                 _Flash_Memory_Write
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
;; (2) _RF_RxDisable                                         0     0      0      99
;;                _CC2500_WriteCommand
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
;; (3) _Flash_Memory_Erasing                                 0     0      0       0
;;                _Flash_Memory_Unlock
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Write                                   2     2      0      90
;;                                              3 COMMON     2     2      0
;;                _Flash_Memory_Unlock
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
;; (1) _LED_Main                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _setRF_DimmerValue                                    2     2      0      88
;;                                              6 COMMON     2     2      0
;;                      _getStartValue
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
;; (4) _Flash_Memory_Unlock                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _setLoad_JudgeValue                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _setLoadtoEnable                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _setLoad_GO_On                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initial                                        1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _Dimmer_setOverLoad_GO_Off                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _LED_Initial                                          1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _setRF_DimmerLights                                   4     2      2     434
;;                                              3 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (4) _getStartValue                                        3     0      3       0
;;                                              3 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (3) _DelayTimejudge                                       3     3      0     161
;;                                              3 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _setTxData                                            1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _RF_Initial                                           1     1      0       0
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
;; (3) _Flash_Memory_Read                                    4     4      0      47
;;                                              3 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (4) _setLED3                                              1     1      0     124
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _setLED2                                              1     1      0     124
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _setLED1                                              1     1      0     124
;;                                              3 COMMON     1     1      0
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
;;		line 7 in file "G:\Program\PIC\Source_File\main.c"
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
	file	"G:\Program\PIC\Source_File\main.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 9
; Regs used in _main: [wreg-status,0+pclath+cstack]
	line	8
	
l15481:	
;main.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l15483:	
;main.c: 9: ; OSCCON=0x78; ; TRISA=0b01110111;; TRISB=0b00000101;; TRISC=0b00001100;; LATA=0b00000000;; LATB=0b00000000;; LATC=0b00000000;; ANSELA=0b00100010;; ANSELB=0b00000000;; ANSELC=0b00000000;; PORTA=0b01110111;; PORTB=0b00000101;; PORTC=0b00001100;; ;; ; 
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	
l15485:	
	movlw	(077h)
	movwf	(140)^080h	;volatile
	
l15487:	
	movlw	(05h)
	movwf	(141)^080h	;volatile
	
l15489:	
	movlw	(0Ch)
	movwf	(142)^080h	;volatile
	
l15491:	
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	
l15493:	
	clrf	(269)^0100h	;volatile
	
l15495:	
	clrf	(270)^0100h	;volatile
	
l15497:	
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	
l15499:	
	clrf	(397)^0180h	;volatile
	
l15501:	
	clrf	(398)^0180h	;volatile
	
l15503:	
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	
l15505:	
	movlw	(05h)
	movwf	(13)	;volatile
	
l15507:	
	movlw	(0Ch)
	movwf	(14)	;volatile
	
l15509:	
	movlw	(_VarTimer0)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Timer0)
	
l15511:	
	movf	(_Timer0),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(09Eh)
	movwi	[0]fsr1
	movlw	high(09Eh)
	movwi	[1]fsr1
	
l15513:	
	movlb 1	; select bank1
	clrf	(149)^080h	;volatile
	
l15515:	
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	
l15517:	
	bsf	(93/8),(93)&7
	
l15519:	
	bsf	(95/8),(95)&7
	
l15521:	
	nop
	
l15523:	
	movlw	(0F2h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	
l15525:	
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	
l15527:	
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7
	
l15529:	
	bsf	(94/8),(94)&7
	
l15531:	
	bsf	(95/8),(95)&7
	
l15533:	
	bcf	(4202/8)^0200h,(4202)&7
	
l15535:	
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	
l15537:	
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	
l15539:	
	clrf	(918)^0380h	;volatile
	
l15541:	
	bsf	(91/8),(91)&7
	
l15543:	
	bcf	(88/8),(88)&7
	
l15545:	
	bsf	(95/8),(95)&7
	
l15547:	
	nop
	
l15549:	
	movlw	(_VarMemory)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Memory)
	line	10
	
l15551:	
;main.c: 10: Flash_Memory_Initial();
	fcall	_Flash_Memory_Initial
	line	11
	
l15553:	
;main.c: 11: LED_Initial();
	fcall	_LED_Initial
	line	12
	
l15555:	
;main.c: 12: Buzzer_Initial();
	fcall	_Buzzer_Initial
	line	13
;main.c: 13: while(RC5 == 0) RC5=1; ;; setLED1(1); setLED2(1); setLED3(1); ;; Sw1=&VarSw1; ;; Sw2=&VarSw2; ;; Sw3=&VarSw3; ;; ;;
	goto	l9644
	
l9645:	
	bsf	(117/8),(117)&7
	
l9644:	
	movlb 0	; select bank0
	btfss	(117/8),(117)&7
	goto	u9911
	goto	u9910
u9911:
	goto	l9645
u9910:
	goto	l15557
	
l9646:	
	
l15557:	
	movlw	(01h)
	fcall	_setLED1
	movlw	(01h)
	fcall	_setLED2
	movlw	(01h)
	fcall	_setLED3
	
l15559:	
	movlw	(_VarSw1)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Sw1)
	
l15561:	
	movlw	(_VarSw2)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Sw2)
	
l15563:	
	movlw	(_VarSw3)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Sw3)
	line	14
	
l15565:	
;main.c: 14: _nop();
	nop
	line	15
	
l15567:	
;main.c: 15: Dimmable=&VarDimmable; DimmerLights1=&VarDimmerLights1; DimmerLights1->StartValue=Product->Data[21]; DimmerLights1->StopValue=((char)((100-20)*1.5)); DimmerLights1->Dimmable=1; DimmerLights1->DimmingValue=DimmerLights1->StopValue; ;; Dimmable=&VarDim
	movlw	(_VarDimmable)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Dimmable)
	
l15569:	
	movlw	(_VarDimmerLights1)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movwf	(_DimmerLights1)
	
l15571:	
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
	
l15573:	
	movlw	(078h)
	movwf	(??_main+0)^0100h+0
	movf	(_DimmerLights1),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l15575:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,7
	
l15577:	
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
	
l15579:	
	movlw	(_VarDimmable)&0ffh
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Dimmable)
	
l15581:	
	movlw	(_VarDimmerLights2)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movwf	(_DimmerLights2)
	
l15583:	
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
	
l15585:	
	movlw	(078h)
	movwf	(??_main+0)^0100h+0
	movf	(_DimmerLights2),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)^0100h+0,w
	movwf	indf1
	
l15587:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,7
	
l15589:	
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
	
l15591:	
	movlw	(_VarDimmable)&0ffh
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_Dimmable)
	
l15593:	
	movlw	(_VarDimmerLights3)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_DimmerLights3)
	
l15595:	
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
	
l15597:	
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
	
l15599:	
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	
l15601:	
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
	line	16
	
l15603:	
;main.c: 16: _nop();
	nop
	line	17
	
l15605:	
;main.c: 17: _nop();
	nop
	line	18
	
l15607:	
;main.c: 18: _nop();
	nop
	line	19
	
l15609:	
;main.c: 19: DelayOffSw1=&VarDelayOffSw1; DelayOffSw2=&VarDelayOffSw2; DelayOffSw3=&VarDelayOffSw3; ;;
	movlw	(_VarDelayOffSw1)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_DelayOffSw1)
	
l15611:	
	movlw	(_VarDelayOffSw2)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_DelayOffSw2)
	
l15613:	
	movlw	(_VarDelayOffSw3)&0ffh
	movlb 2	; select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movlb 0	; select bank0
	movwf	(_DelayOffSw3)
	line	20
	
l15615:	
;main.c: 20: RF_Initial();
	fcall	_RF_Initial
	line	21
	
l15617:	
;main.c: 21: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l15619
	line	23
;main.c: 23: while(1)
	
l9647:	
	line	25
	
l15619:	
;main.c: 24: {
;main.c: 25: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9921
	goto	u9920
u9921:
	goto	l15629
u9920:
	line	27
	
l15621:	
;main.c: 26: {
;main.c: 27: if(RA2 == 1) { _nop(); if(MSYSC_Signal == 0) { MSYSC_Signal=1; } } else { if(MSYSC_Signal == 1) { MSYSC_Signal=0; ; } } ;;
	btfss	(98/8),(98)&7
	goto	u9931
	goto	u9930
u9931:
	goto	l9649
u9930:
	
l15623:	
	nop
	btfsc	(_MSYSC_Signal/8),(_MSYSC_Signal)&7
	goto	u9941
	goto	u9940
u9941:
	goto	l9651
u9940:
	
l15625:	
	bsf	(_MSYSC_Signal/8),(_MSYSC_Signal)&7
	goto	l9651
	
l9650:	
	goto	l9651
	
l9649:	
	btfss	(_MSYSC_Signal/8),(_MSYSC_Signal)&7
	goto	u9951
	goto	u9950
u9951:
	goto	l9651
u9950:
	
l15627:	
	bcf	(_MSYSC_Signal/8),(_MSYSC_Signal)&7
	goto	l9651
	
l9652:	
	
l9651:	
	line	28
;main.c: 28: _nop();
	nop
	line	29
;main.c: 29: _nop();
	nop
	goto	l15629
	line	30
	
l9648:	
	line	32
	
l15629:	
;main.c: 30: }
;main.c: 32: if(TMain->T0_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9961
	goto	u9960
u9961:
	goto	l15619
u9960:
	line	34
	
l15631:	
;main.c: 33: {
;main.c: 34: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	35
	
l15633:	
;main.c: 35: MainT();
	fcall	_MainT
	line	36
	
l15635:	
;main.c: 36: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9971
	goto	u9970
u9971:
	goto	l15619
u9970:
	line	38
	
l15637:	
;main.c: 37: {
;main.c: 38: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	39
	
l15639:	
;main.c: 39: _nop();
	nop
	line	40
	
l15641:	
;main.c: 40: _nop();
	nop
	line	41
	
l15643:	
;main.c: 41: _nop();
	nop
	line	42
	
l15645:	
;main.c: 42: _nop();
	nop
	line	43
	
l15647:	
;main.c: 43: if(Sw1->Enable == 1) { if(RA6) { if(Sw1->Debounce == 0) { Sw1->DebounceTime++; if(Sw1->DebounceTime >= 100) { Sw1->DebounceTime=0; Sw1->Debounce=1; if(RA6) { DelayOffSw1->GO=0; DelayOffSw1->SecondTime=0; ;; Sw1->Flag=1; if(Sw1->Status == 0) { Sw1->St
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9981
	goto	u9980
u9981:
	goto	l15721
u9980:
	
l15649:	
	btfss	(102/8),(102)&7
	goto	u9991
	goto	u9990
u9991:
	goto	l15707
u9990:
	
l15651:	
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u10001
	goto	u10000
u10001:
	goto	l15675
u10000:
	
l15653:	
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
	
l15655:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10011
	goto	u10010
u10011:
	goto	l15721
u10010:
	
l15657:	
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l15659:	
	btfss	(102/8),(102)&7
	goto	u10021
	goto	u10020
u10021:
	goto	l15721
u10020:
	
l15661:	
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
	goto	u10031
	goto	u10030
u10031:
	goto	l15671
u10030:
	
l15663:	
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15665:	
	movlw	(01h)
	fcall	_setDimmerLights1
	
l15667:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15669:	
	fcall	_setTxData
	goto	l15721
	
l9660:	
	
l15671:	
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
	
l15673:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l15721
	
l9661:	
	goto	l15721
	
l9659:	
	goto	l15721
	
l9658:	
	goto	l15721
	
l9657:	
	
l15675:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u10041
	goto	u10040
u10041:
	goto	l15689
u10040:
	
l15677:	
	movf	(_Sw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15679:	
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
	goto	u10051
	goto	u10050
u10051:
	goto	l15721
u10050:
	
l15681:	
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
	goto	u10061
	goto	u10060
u10061:
	goto	l15721
u10060:
	
l15683:	
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15685:	
	movlw	(01h)
	fcall	_setDimmerLights1_Adj
	
l15687:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l15721
	
l9665:	
	goto	l15721
	
l9664:	
	goto	l15721
	
l9663:	
	
l15689:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10071
	goto	u10070
u10071:
	goto	l15699
u10070:
	
l15691:	
	movf	(_Sw1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15693:	
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
	goto	u10081
	goto	u10080
u10081:
	goto	l15721
u10080:
	
l15695:	
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
	
l15697:	
	movlw	low(032h)
	movwf	(?_setBuzzer)
	movlw	high(032h)
	movwf	((?_setBuzzer))+1
	movlw	(02h)
	fcall	_setBuzzer
	goto	l15721
	
l9668:	
	goto	l15721
	
l9667:	
	
l15699:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u10091
	goto	u10090
u10091:
	goto	l15721
u10090:
	
l15701:	
	movf	(_Sw1),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15703:	
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
	goto	u10101
	goto	u10100
u10101:
	goto	l15721
u10100:
	
l15705:	
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
	goto	l15721
	
l9671:	
	goto	l15721
	
l9670:	
	goto	l15721
	
l9669:	
	goto	l15721
	
l9666:	
	goto	l15721
	
l9662:	
	goto	l15721
	
l9656:	
	
l15707:	
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10111
	goto	u10110
u10111:
	goto	l15721
u10110:
	
l15709:	
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
	
l15711:	
	movlb 0	; select bank0
	movf	(_Sw1),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10121
	goto	u10120
u10121:
	goto	l15721
u10120:
	
l15713:	
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
	goto	u10131
	goto	u10130
u10131:
	goto	l15721
u10130:
	
l15715:	
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
	goto	u10141
	goto	u10140
u10141:
	goto	l15719
u10140:
	
l15717:	
	movlw	(0)
	fcall	_setDimmerLights1_Adj
	goto	l9677
	
l9676:	
	
l15719:	
	movlw	(0)
	fcall	_setDimmerLights1
	
l9677:	
	fcall	_setTxData
	goto	l15721
	
l9675:	
	goto	l15721
	
l9674:	
	goto	l15721
	
l9673:	
	goto	l15721
	
l9672:	
	goto	l15721
	
l9655:	
	
l15721:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10151
	goto	u10150
u10151:
	goto	l15795
u10150:
	
l15723:	
	btfss	(100/8),(100)&7
	goto	u10161
	goto	u10160
u10161:
	goto	l15781
u10160:
	
l15725:	
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u10171
	goto	u10170
u10171:
	goto	l15749
u10170:
	
l15727:	
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
	
l15729:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10181
	goto	u10180
u10181:
	goto	l15795
u10180:
	
l15731:	
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l15733:	
	btfss	(100/8),(100)&7
	goto	u10191
	goto	u10190
u10191:
	goto	l15795
u10190:
	
l15735:	
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
	goto	u10201
	goto	u10200
u10201:
	goto	l15745
u10200:
	
l15737:	
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15739:	
	movlw	(01h)
	fcall	_setDimmerLights2
	
l15741:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15743:	
	fcall	_setTxData
	goto	l15795
	
l9683:	
	
l15745:	
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
	
l15747:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l15795
	
l9684:	
	goto	l15795
	
l9682:	
	goto	l15795
	
l9681:	
	goto	l15795
	
l9680:	
	
l15749:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u10211
	goto	u10210
u10211:
	goto	l15763
u10210:
	
l15751:	
	movf	(_Sw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15753:	
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
	goto	u10221
	goto	u10220
u10221:
	goto	l15795
u10220:
	
l15755:	
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
	goto	u10231
	goto	u10230
u10231:
	goto	l15795
u10230:
	
l15757:	
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15759:	
	movlw	(01h)
	fcall	_setDimmerLights2_Adj
	
l15761:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l15795
	
l9688:	
	goto	l15795
	
l9687:	
	goto	l15795
	
l9686:	
	
l15763:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10241
	goto	u10240
u10241:
	goto	l15773
u10240:
	
l15765:	
	movf	(_Sw2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15767:	
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
	goto	u10251
	goto	u10250
u10251:
	goto	l15795
u10250:
	
l15769:	
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
	
l15771:	
	movlw	low(032h)
	movwf	(?_setBuzzer)
	movlw	high(032h)
	movwf	((?_setBuzzer))+1
	movlw	(02h)
	fcall	_setBuzzer
	goto	l15795
	
l9691:	
	goto	l15795
	
l9690:	
	
l15773:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u10261
	goto	u10260
u10261:
	goto	l15795
u10260:
	
l15775:	
	movf	(_Sw2),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15777:	
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
	goto	u10271
	goto	u10270
u10271:
	goto	l15795
u10270:
	
l15779:	
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
	goto	l15795
	
l9694:	
	goto	l15795
	
l9693:	
	goto	l15795
	
l9692:	
	goto	l15795
	
l9689:	
	goto	l15795
	
l9685:	
	goto	l15795
	
l9679:	
	
l15781:	
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10281
	goto	u10280
u10281:
	goto	l15795
u10280:
	
l15783:	
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
	
l15785:	
	movlb 0	; select bank0
	movf	(_Sw2),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10291
	goto	u10290
u10291:
	goto	l15795
u10290:
	
l15787:	
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
	goto	u10301
	goto	u10300
u10301:
	goto	l15795
u10300:
	
l15789:	
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
	goto	u10311
	goto	u10310
u10311:
	goto	l15793
u10310:
	
l15791:	
	movlw	(0)
	fcall	_setDimmerLights2_Adj
	goto	l9700
	
l9699:	
	
l15793:	
	movlw	(0)
	fcall	_setDimmerLights2
	
l9700:	
	fcall	_setTxData
	goto	l15795
	
l9698:	
	goto	l15795
	
l9697:	
	goto	l15795
	
l9696:	
	goto	l15795
	
l9695:	
	goto	l15795
	
l9678:	
	
l15795:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10321
	goto	u10320
u10321:
	goto	l9701
u10320:
	
l15797:	
	btfss	(96/8),(96)&7
	goto	u10331
	goto	u10330
u10331:
	goto	l15855
u10330:
	
l15799:	
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u10341
	goto	u10340
u10341:
	goto	l15823
u10340:
	
l15801:	
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
	
l15803:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10351
	goto	u10350
u10351:
	goto	l9701
u10350:
	
l15805:	
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l15807:	
	btfss	(96/8),(96)&7
	goto	u10361
	goto	u10360
u10361:
	goto	l9701
u10360:
	
l15809:	
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
	goto	u10371
	goto	u10370
u10371:
	goto	l15819
u10370:
	
l15811:	
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15813:	
	movlw	(01h)
	fcall	_setDimmerLights3
	
l15815:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15817:	
	fcall	_setTxData
	goto	l9701
	
l9706:	
	
l15819:	
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
	
l15821:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l9701
	
l9707:	
	goto	l9701
	
l9705:	
	goto	l9701
	
l9704:	
	goto	l9701
	
l9703:	
	
l15823:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u10381
	goto	u10380
u10381:
	goto	l15837
u10380:
	
l15825:	
	movf	(_Sw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15827:	
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
	goto	u10391
	goto	u10390
u10391:
	goto	l9701
u10390:
	
l15829:	
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
	goto	u10401
	goto	u10400
u10401:
	goto	l9701
u10400:
	
l15831:	
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15833:	
	movlw	(01h)
	fcall	_setDimmerLights3_Adj
	
l15835:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	goto	l9701
	
l9711:	
	goto	l9701
	
l9710:	
	goto	l9701
	
l9709:	
	
l15837:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10411
	goto	u10410
u10411:
	goto	l15847
u10410:
	
l15839:	
	movf	(_Sw3),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15841:	
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
	goto	u10421
	goto	u10420
u10421:
	goto	l9701
u10420:
	
l15843:	
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
	
l15845:	
	movlw	low(032h)
	movwf	(?_setBuzzer)
	movlw	high(032h)
	movwf	((?_setBuzzer))+1
	movlw	(02h)
	fcall	_setBuzzer
	goto	l9701
	
l9714:	
	goto	l9701
	
l9713:	
	
l15847:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u10431
	goto	u10430
u10431:
	goto	l9701
u10430:
	
l15849:	
	movf	(_Sw3),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15851:	
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
	goto	u10441
	goto	u10440
u10441:
	goto	l9701
u10440:
	
l15853:	
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
	goto	l9701
	
l9717:	
	goto	l9701
	
l9716:	
	goto	l9701
	
l9715:	
	goto	l9701
	
l9712:	
	goto	l9701
	
l9708:	
	goto	l9701
	
l9702:	
	
l15855:	
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10451
	goto	u10450
u10451:
	goto	l9701
u10450:
	
l15857:	
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
	
l15859:	
	movlb 0	; select bank0
	movf	(_Sw3),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(064h)
	subwf	indf1,w
	skipc
	goto	u10461
	goto	u10460
u10461:
	goto	l9701
u10460:
	
l15861:	
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
	goto	u10471
	goto	u10470
u10471:
	goto	l9701
u10470:
	
l15863:	
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
	goto	u10481
	goto	u10480
u10481:
	goto	l15867
u10480:
	
l15865:	
	movlw	(0)
	fcall	_setDimmerLights3_Adj
	goto	l9723
	
l9722:	
	
l15867:	
	movlw	(0)
	fcall	_setDimmerLights3
	
l9723:	
	fcall	_setTxData
	goto	l9701
	
l9721:	
	goto	l9701
	
l9720:	
	goto	l9701
	
l9719:	
	goto	l9701
	
l9718:	
	
l9701:	
	line	44
;main.c: 44: RF_Main();
	fcall	_RF_Main
	line	45
	
l15869:	
;main.c: 45: if(DelayOffSw1->GO) { DelayOffSw1->SecondTime++; if(DelayOffSw1->SecondTime >= 60000) { DelayOffSw1->SecondTime=0; DelayOffSw1->MinuteTime++; if(DelayOffSw1->MinuteTime >= DelayOffSw1->Value) { DelayOffSw1->MinuteTime=0; DelayOffSw1->GO=0; RFsw1->Sta
	movlb 0	; select bank0
	movf	(_DelayOffSw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10491
	goto	u10490
u10491:
	goto	l15889
u10490:
	
l15871:	
	movf	(_DelayOffSw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15873:	
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
	goto	u10501
	goto	u10500
u10501:
	goto	l15889
u10500:
	
l15875:	
	movlb 0	; select bank0
	movf	(_DelayOffSw1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l15877:	
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
	
l15879:	
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
	goto	u10511
	goto	u10510
u10511:
	goto	l15889
u10510:
	
l15881:	
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
	
l15883:	
	movlw	(0)
	fcall	_setDimmerLights1
	
l15885:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15887:	
	fcall	_setTxData
	goto	l15889
	
l9726:	
	goto	l15889
	
l9725:	
	goto	l15889
	
l9724:	
	
l15889:	
	movlb 0	; select bank0
	movf	(_DelayOffSw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10521
	goto	u10520
u10521:
	goto	l15909
u10520:
	
l15891:	
	movf	(_DelayOffSw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15893:	
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
	goto	u10531
	goto	u10530
u10531:
	goto	l15909
u10530:
	
l15895:	
	movlb 0	; select bank0
	movf	(_DelayOffSw2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l15897:	
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
	
l15899:	
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
	goto	u10541
	goto	u10540
u10541:
	goto	l15909
u10540:
	
l15901:	
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
	
l15903:	
	movlw	(0)
	fcall	_setDimmerLights2
	
l15905:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15907:	
	fcall	_setTxData
	goto	l15909
	
l9729:	
	goto	l15909
	
l9728:	
	goto	l15909
	
l9727:	
	
l15909:	
	movlb 0	; select bank0
	movf	(_DelayOffSw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10551
	goto	u10550
u10551:
	goto	l15929
u10550:
	
l15911:	
	movf	(_DelayOffSw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l15913:	
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
	goto	u10561
	goto	u10560
u10561:
	goto	l15929
u10560:
	
l15915:	
	movlb 0	; select bank0
	movf	(_DelayOffSw3),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l15917:	
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
	
l15919:	
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
	goto	u10571
	goto	u10570
u10571:
	goto	l15929
u10570:
	
l15921:	
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
	
l15923:	
	movlw	(0)
	fcall	_setDimmerLights3
	
l15925:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15927:	
	fcall	_setTxData
	goto	l15929
	
l9732:	
	goto	l15929
	
l9731:	
	goto	l15929
	
l9730:	
	line	46
	
l15929:	
;main.c: 46: Buzzer_Main();
	fcall	_Buzzer_Main
	line	47
	
l15931:	
;main.c: 47: LED_Main();
	fcall	_LED_Main
	goto	l15619
	line	48
	
l9654:	
	goto	l15619
	line	49
	
l9653:	
	goto	l15619
	line	50
	
l9733:	
	line	23
	goto	l15619
	
l9734:	
	line	51
	
l9735:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_MainT
psect	text1869,local,class=CODE,delta=2
global __ptext1869
__ptext1869:

;; *************** function _MainT *****************
;; Defined at:
;;		line 61 in file "G:\Program\PIC\Source_File\main.c"
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
psect	text1869
	file	"G:\Program\PIC\Source_File\main.c"
	line	61
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 9
; Regs used in _MainT: [wreg+fsr1l-status,0+pclath+cstack]
	line	62
	
l15451:	
;main.c: 62: TMain->Count1++;
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
	line	63
	
l15453:	
;main.c: 63: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u9875
	moviw	[1]fsr1
	xorlw	high(03E8h)
u9875:
	skipz
	goto	u9871
	goto	u9870
u9871:
	goto	l9741
u9870:
	line	65
	
l15455:	
;main.c: 64: {
;main.c: 65: TMain->Count1=0;
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	66
;main.c: 66: if(TMain->Flag == 1)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9881
	goto	u9880
u9881:
	goto	l15459
u9880:
	line	68
	
l15457:	
;main.c: 67: {
;main.c: 68: TMain->Flag=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	73
;main.c: 73: }
	goto	l9741
	line	74
	
l9742:	
	line	76
	
l15459:	
;main.c: 74: else
;main.c: 75: {
;main.c: 76: TMain->Flag=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	goto	l9741
	line	81
	
l9743:	
	line	82
	
l9741:	
	line	84
;main.c: 81: }
;main.c: 82: }
;main.c: 84: if(TMain->PowerON == 0)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9891
	goto	u9890
u9891:
	goto	l9746
u9890:
	line	86
	
l15461:	
;main.c: 85: {
;main.c: 86: TMain->PowerCount++;
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
	line	87
	
l15463:	
;main.c: 87: if(TMain->PowerCount == 1500)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u9905
	moviw	[1]fsr1
	xorlw	high(05DCh)
u9905:
	skipz
	goto	u9901
	goto	u9900
u9901:
	goto	l9746
u9900:
	line	89
	
l15465:	
;main.c: 88: {
;main.c: 89: TMain->PowerCount=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	90
;main.c: 90: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	92
	
l15467:	
;main.c: 92: setBuzzer(3,50);
	movlw	low(032h)
	movwf	(?_setBuzzer)
	movlw	high(032h)
	movwf	((?_setBuzzer))+1
	movlw	(03h)
	fcall	_setBuzzer
	line	93
	
l15469:	
;main.c: 93: Sw1->Enable=1;
	movlb 0	; select bank0
	movf	(_Sw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	94
	
l15471:	
;main.c: 94: Sw2->Enable=1;
	movf	(_Sw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	95
	
l15473:	
;main.c: 95: Sw3->Enable=1;
	movf	(_Sw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	96
	
l15475:	
;main.c: 96: _nop();
	nop
	line	97
	
l15477:	
;main.c: 97: setLoadtoEnable();
	fcall	_setLoadtoEnable
	line	98
	
l15479:	
;main.c: 98: setRF_Enable(1);
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l9746
	line	99
	
l9745:	
	goto	l9746
	line	100
	
l9744:	
	line	101
	
l9746:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_RF_Main
psect	text1870,local,class=CODE,delta=2
global __ptext1870
__ptext1870:

;; *************** function _RF_Main *****************
;; Defined at:
;;		line 11 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
psect	text1870
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	11
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
	opt	stack 10
; Regs used in _RF_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	12
	
l15393:	
;RF_Control_A1.c: 12: if(RF->Enable) { if((RA6 || RA4 || RA0) && RF->Learn == 0) { RF_RxDisable(); } else { if(RF->ReceiveGO) { CC2500_RxData(); RF->ReceiveGO=0; getRxData(); RB5=~RB5; } else { if(RF->TransceiveGO) { RF_RxDisable(); if(RF->Debounce == 0) { RF->DebounceTim
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9751
	goto	u9750
u9751:
	goto	l5988
u9750:
	
l15395:	
	btfsc	(102/8),(102)&7
	goto	u9761
	goto	u9760
u9761:
	goto	l15401
u9760:
	
l15397:	
	btfsc	(100/8),(100)&7
	goto	u9771
	goto	u9770
u9771:
	goto	l15401
u9770:
	
l15399:	
	btfss	(96/8),(96)&7
	goto	u9781
	goto	u9780
u9781:
	goto	l15405
u9780:
	goto	l15401
	
l5975:	
	
l15401:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u9791
	goto	u9790
u9791:
	goto	l15405
u9790:
	
l15403:	
	fcall	_RF_RxDisable
	goto	l5988
	
l5973:	
	
l15405:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9801
	goto	u9800
u9801:
	goto	l15415
u9800:
	
l15407:	
	fcall	_CC2500_RxData
	
l15409:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	
l15411:	
	fcall	_getRxData
	
l15413:	
	movlw	1<<((109)&7)
	movlb 0	; select bank0
	xorwf	((109)/8),f
	goto	l5988
	
l5977:	
	
l15415:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u9811
	goto	u9810
u9811:
	goto	l15431
u9810:
	
l15417:	
	fcall	_RF_RxDisable
	
l15419:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u9821
	goto	u9820
u9821:
	goto	l15427
u9820:
	
l15421:	
	movlw	(01h)
	movwf	(??_RF_Main+0)+0
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_RF_Main+0)+0,w
	addwf	indf1,f
	
l15423:	
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	096h&0ffh
	skipz
	goto	u9831
	goto	u9830
u9831:
	goto	l5988
u9830:
	
l15425:	
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l5988
	
l5981:	
	goto	l5988
	
l5980:	
	
l15427:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	
l15429:	
	fcall	_CC2500_TxData
	goto	l5988
	
l5982:	
	goto	l5988
	
l5979:	
	
l15431:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u9841
	goto	u9840
u9841:
	goto	l5988
u9840:
	
l15433:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u9851
	goto	u9850
u9851:
	goto	l15441
u9850:
	
l15435:	
	movlw	(01h)
	movwf	(??_RF_Main+0)+0
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_RF_Main+0)+0,w
	addwf	indf1,f
	
l15437:	
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	032h&0ffh
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l5988
u9860:
	
l15439:	
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l5988
	
l5986:	
	goto	l5988
	
l5985:	
	
l15441:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	
l15443:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	
l15445:	
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	
l15447:	
	bcf	(89/8),(89)&7
	
l15449:	
	bsf	(92/8),(92)&7
	goto	l5988
	
l5987:	
	goto	l5988
	
l5984:	
	goto	l5988
	
l5983:	
	goto	l5988
	
l5978:	
	goto	l5988
	
l5976:	
	goto	l5988
	
l5972:	
	line	13
	
l5988:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Main
	__end_of_RF_Main:
;; =============== function _RF_Main ends ============

	signat	_RF_Main,88
	global	_Flash_Memory_Main
psect	text1871,local,class=CODE,delta=2
global __ptext1871
__ptext1871:

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 56 in file "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
psect	text1871
	file	"E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	line	56
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
	opt	stack 10
; Regs used in _Flash_Memory_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	57
	
l15379:	
;MCU_16f1516_A.c: 57: if(Memory->GO) { if(Memory->Modify) { Memory->Time++; if(Memory->Time == 1000) { Memory->Time=0; Memory->Modify=0; Memory->GO=0; Flash_Memory_Modify(); } } else { Memory->GO=0; } };
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9721
	goto	u9720
u9721:
	goto	l2400
u9720:
	
l15381:	
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9731
	goto	u9730
u9731:
	goto	l15391
u9730:
	
l15383:	
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
	
l15385:	
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u9745
	moviw	[1]fsr1
	xorlw	high(03E8h)
u9745:
	skipz
	goto	u9741
	goto	u9740
u9741:
	goto	l2400
u9740:
	
l15387:	
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
	
l15389:	
	fcall	_Flash_Memory_Modify
	goto	l2400
	
l2398:	
	goto	l2400
	
l2397:	
	
l15391:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l2400
	
l2399:	
	goto	l2400
	
l2396:	
	line	58
	
l2400:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
;; =============== function _Flash_Memory_Main ends ============

	signat	_Flash_Memory_Main,88
	global	_setRF_Enable
psect	text1872,local,class=CODE,delta=2
global __ptext1872
__ptext1872:

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
psect	text1872
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	27
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
	opt	stack 9
; Regs used in _setRF_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Enable@command stored from wreg
	movwf	(setRF_Enable@command)
	line	28
	
l15363:	
;RF_Control_A1.c: 28: if(command == 1) { RF->Enable=1; } else if(command == 0) { RF->Enable=0; RF->Learn=0; Transceive_GO=0; CC2500_WriteCommand(0x36); CC2500_WriteCommand(0x3B); RF_RxDisable(); } ;;
	movf	(setRF_Enable@command),w
	xorlw	01h&0ffh
	skipz
	goto	u9701
	goto	u9700
u9701:
	goto	l15367
u9700:
	
l15365:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	goto	l6005
	
l6002:	
	
l15367:	
	movf	(setRF_Enable@command),f
	skipz
	goto	u9711
	goto	u9710
u9711:
	goto	l6005
u9710:
	
l15369:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
l15371:	
	bcf	(_Transceive_GO/8),(_Transceive_GO)&7
	
l15373:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	
l15375:	
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	
l15377:	
	fcall	_RF_RxDisable
	goto	l6005
	
l6004:	
	goto	l6005
	
l6003:	
	line	29
	
l6005:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
;; =============== function _setRF_Enable ends ============

	signat	_setRF_Enable,4216
	global	_getRxData
psect	text1873,local,class=CODE,delta=2
global __ptext1873
__ptext1873:

;; *************** function _getRxData *****************
;; Defined at:
;;		line 32 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
psect	text1873
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	32
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
	opt	stack 10
; Regs used in _getRxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	34
	
l15187:	
;RF_Control_A1.c: 33: unsigned char i;
;RF_Control_A1.c: 34: if(RF->Learn) { if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64) { Product->Data[12]=RF_Data[12]; Product->Data[13]=RF_Data[13]; Product->Data[14]=RF_Data[14]; setBuzzer(1,100); RF->Learn=0; Memory->Modify=1; ;; } } else { if(RF_Data[0] == 0x00 && RF_Data
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u9371
	goto	u9370
u9371:
	goto	l15201
u9370:
	
l15189:	
	movf	(_RF_Data),f
	skipz
	goto	u9381
	goto	u9380
u9381:
	goto	l6049
u9380:
	
l15191:	
	movf	0+(_RF_Data)+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l6049
u9390:
	
l15193:	
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
	
l15195:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15197:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
l15199:	
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	l6049
	
l6009:	
	goto	l6049
	
l6008:	
	
l15201:	
	movf	(_RF_Data),f
	skipz
	goto	u9401
	goto	u9400
u9401:
	goto	l15345
u9400:
	
l15203:	
	movf	0+(_RF_Data)+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u9411
	goto	u9410
u9411:
	goto	l15345
u9410:
	
l15205:	
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)+0Ch,w
	xorwf	indf1,w
	skipz
	goto	u9421
	goto	u9420
u9421:
	goto	l6049
u9420:
	
l15207:	
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)+0Dh,w
	xorwf	indf1,w
	skipz
	goto	u9431
	goto	u9430
u9431:
	goto	l6049
u9430:
	
l15209:	
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)+0Eh,w
	xorwf	indf1,w
	skipz
	goto	u9441
	goto	u9440
u9441:
	goto	l6049
u9440:
	
l15211:	
	movf	0+(_RF_Data)+0Fh,f
	skipz
	goto	u9451
	goto	u9450
u9451:
	goto	l15231
u9450:
	
l15213:	
	movlw	(0)
	fcall	_setDimmerLights1
	movlw	(0)
	fcall	_setDimmerLights2
	movlw	(0)
	fcall	_setDimmerLights3
	
l15215:	
	movlb 0	; select bank0
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l15217:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l15219:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l15221:	
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l15223:	
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l15225:	
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
	
l15227:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
l15229:	
	fcall	_setTxData
	goto	l15231
	
l6013:	
	
l15231:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u9461
	goto	u9460
u9461:
	goto	l15259
u9460:
	
l15233:	
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9471
	goto	u9470
u9471:
	goto	l15239
u9470:
	
l15235:	
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
	
l15237:	
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
	goto	l6016
	
l6015:	
	
l15239:	
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
	
l6016:	
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9481
	goto	u9480
u9481:
	goto	l15249
u9480:
	
l15241:	
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15243:	
	movlw	(01h)
	fcall	_setDimmerLights1
	
l15245:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15247:	
	fcall	_setTxData
	goto	l6049
	
l6017:	
	
l15249:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipnz
	goto	u9491
	goto	u9490
u9491:
	goto	l15255
u9490:
	
l15251:	
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l15253:	
	movlw	(0)
	fcall	_setDimmerLights1
	goto	l15255
	
l6019:	
	
l15255:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15257:	
	fcall	_setTxData
	goto	l6049
	
l6018:	
	goto	l6049
	
l6014:	
	
l15259:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u9501
	goto	u9500
u9501:
	goto	l15269
u9500:
	
l15261:	
	movf	(_RFsw1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9511
	goto	u9510
u9511:
	goto	l6049
u9510:
	
l15263:	
	movlw	(01h)
	fcall	_setRF_DimmerValue
	
l15265:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
l15267:	
	fcall	_setTxData
	goto	l6049
	
l6022:	
	goto	l6049
	
l6021:	
	
l15269:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	02h&0ffh
	skipz
	goto	u9521
	goto	u9520
u9521:
	goto	l15297
u9520:
	
l15271:	
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9531
	goto	u9530
u9531:
	goto	l15277
u9530:
	
l15273:	
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
	
l15275:	
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
	goto	l6026
	
l6025:	
	
l15277:	
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
	
l6026:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9541
	goto	u9540
u9541:
	goto	l15287
u9540:
	
l15279:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15281:	
	movlw	(01h)
	fcall	_setDimmerLights2
	
l15283:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15285:	
	fcall	_setTxData
	goto	l6049
	
l6027:	
	
l15287:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipnz
	goto	u9551
	goto	u9550
u9551:
	goto	l15293
u9550:
	
l15289:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l15291:	
	movlw	(0)
	fcall	_setDimmerLights2
	goto	l15293
	
l6029:	
	
l15293:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15295:	
	fcall	_setTxData
	goto	l6049
	
l6028:	
	goto	l6049
	
l6024:	
	
l15297:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	021h&0ffh
	skipz
	goto	u9561
	goto	u9560
u9561:
	goto	l15307
u9560:
	
l15299:	
	movf	(_RFsw2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9571
	goto	u9570
u9571:
	goto	l6049
u9570:
	
l15301:	
	movlw	(02h)
	fcall	_setRF_DimmerValue
	
l15303:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
l15305:	
	fcall	_setTxData
	goto	l6049
	
l6032:	
	goto	l6049
	
l6031:	
	
l15307:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	03h&0ffh
	skipz
	goto	u9581
	goto	u9580
u9581:
	goto	l15335
u9580:
	
l15309:	
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9591
	goto	u9590
u9591:
	goto	l15315
u9590:
	
l15311:	
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
	
l15313:	
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
	goto	l6036
	
l6035:	
	
l15315:	
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
	
l6036:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9601
	goto	u9600
u9601:
	goto	l15325
u9600:
	
l15317:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l15319:	
	movlw	(01h)
	fcall	_setDimmerLights3
	
l15321:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15323:	
	fcall	_setTxData
	goto	l6049
	
l6037:	
	
l15325:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+010h,w
	xorlw	080h&0ffh
	skipnz
	goto	u9611
	goto	u9610
u9611:
	goto	l15331
u9610:
	
l15327:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_Sw3),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	
l15329:	
	movlw	(0)
	fcall	_setDimmerLights3
	goto	l15331
	
l6039:	
	
l15331:	
	movlw	low(064h)
	movwf	(?_setBuzzer)
	movlw	high(064h)
	movwf	((?_setBuzzer))+1
	movlw	(01h)
	fcall	_setBuzzer
	
l15333:	
	fcall	_setTxData
	goto	l6049
	
l6038:	
	goto	l6049
	
l6034:	
	
l15335:	
	movlb 0	; select bank0
	movf	0+(_RF_Data)+0Fh,w
	xorlw	031h&0ffh
	skipz
	goto	u9621
	goto	u9620
u9621:
	goto	l6049
u9620:
	
l15337:	
	movf	(_RFsw3),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9631
	goto	u9630
u9631:
	goto	l6049
u9630:
	
l15339:	
	movlw	(03h)
	fcall	_setRF_DimmerValue
	
l15341:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
l15343:	
	fcall	_setTxData
	goto	l6049
	
l6042:	
	goto	l6049
	
l6041:	
	goto	l6049
	
l6040:	
	goto	l6049
	
l6033:	
	goto	l6049
	
l6030:	
	goto	l6049
	
l6023:	
	goto	l6049
	
l6020:	
	goto	l6049
	
l6012:	
	goto	l6049
	
l6011:	
	
l15345:	
	movlb 0	; select bank0
	movf	(_RF_Data),w
	xorlw	063h&0ffh
	skipz
	goto	u9641
	goto	u9640
u9641:
	goto	l15351
u9640:
	
l15347:	
	movf	0+(_RF_Data)+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u9651
	goto	u9650
u9651:
	goto	l15351
u9650:
	
l15349:	
	nop
	goto	l6049
	
l6044:	
	
l15351:	
	movlb 0	; select bank0
	movf	(_RF_Data),w
	xorlw	0FFh&0ffh
	skipz
	goto	u9661
	goto	u9660
u9661:
	goto	l15357
u9660:
	
l15353:	
	movf	0+(_RF_Data)+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u9671
	goto	u9670
u9671:
	goto	l15357
u9670:
	
l15355:	
	nop
	goto	l6049
	
l6046:	
	
l15357:	
	movlb 0	; select bank0
	movf	(_RF_Data),f
	skipz
	goto	u9681
	goto	u9680
u9681:
	goto	l6049
u9680:
	
l15359:	
	movf	0+(_RF_Data)+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u9691
	goto	u9690
u9691:
	goto	l6049
u9690:
	
l15361:	
	nop
	goto	l6049
	
l6048:	
	goto	l6049
	
l6047:	
	goto	l6049
	
l6045:	
	goto	l6049
	
l6043:	
	goto	l6049
	
l6010:	
	line	35
	
l6049:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
;; =============== function _getRxData ends ============

	signat	_getRxData,88
	global	_CC2500_PowerOnInitial
psect	text1874,local,class=CODE,delta=2
global __ptext1874
__ptext1874:

;; *************** function _CC2500_PowerOnInitial *****************
;; Defined at:
;;		line 100 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1874
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	100
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
	opt	stack 10
; Regs used in _CC2500_PowerOnInitial: [wreg+status,2+status,0+pclath+cstack]
	line	101
	
l15185:	
;CC2500_A1.c: 101: CC2500_PowerRST(); CC2500_InitSetREG(); CC2500_InitPATable(); CC2500_ClearTXFIFO(); CC2500_ClearRXFIFO(); CC2500_FrequencyCabr(); CC2500_SIDLEMode(); ;;
	fcall	_CC2500_PowerRST
	fcall	_CC2500_InitSetREG
	fcall	_CC2500_InitPATable
	fcall	_CC2500_ClearTXFIFO
	fcall	_CC2500_ClearRXFIFO
	fcall	_CC2500_FrequencyCabr
	fcall	_CC2500_SIDLEMode
	line	114
	
l4743:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerOnInitial
	__end_of_CC2500_PowerOnInitial:
;; =============== function _CC2500_PowerOnInitial ends ============

	signat	_CC2500_PowerOnInitial,88
	global	_Flash_Memory_Modify
psect	text1875,local,class=CODE,delta=2
global __ptext1875
__ptext1875:

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 79 in file "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
psect	text1875
	file	"E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	line	79
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
	opt	stack 10
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l-status,0+pclath+cstack]
	line	81
	
l15163:	
;MCU_16f1516_A.c: 80: char i;
;MCU_16f1516_A.c: 81: for(i=0;i<32;i++) { Memory->Data[i]=Flash_Memory_Read(i); } Memory->Data[0]=Product->Data[12]; Memory->Data[1]=Product->Data[13]; Memory->Data[2]=Product->Data[14]; Memory->Data[3]=Product->Data[21]; Memory->Data[4]=Product->Data[22]; Memory->Data[5]
	clrf	(Flash_Memory_Modify@i)
	
l15165:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9351
	goto	u9350
u9351:
	goto	l15169
u9350:
	goto	l15175
	
l15167:	
	goto	l15175
	
l2417:	
	
l15169:	
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
	
l15171:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l15173:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9361
	goto	u9360
u9361:
	goto	l15169
u9360:
	goto	l15175
	
l2418:	
	
l15175:	
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
	
l15177:	
	bcf	(95/8),(95)&7
	
l15179:	
	fcall	_Flash_Memory_Erasing
	
l15181:	
	fcall	_Flash_Memory_Write
	
l15183:	
	bsf	(95/8),(95)&7
	line	82
	
l2419:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
;; =============== function _Flash_Memory_Modify ends ============

	signat	_Flash_Memory_Modify,88
	global	_Flash_Memory_Initial
psect	text1876,local,class=CODE,delta=2
global __ptext1876
__ptext1876:

;; *************** function _Flash_Memory_Initial *****************
;; Defined at:
;;		line 51 in file "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
psect	text1876
	file	"E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	line	51
	global	__size_of_Flash_Memory_Initial
	__size_of_Flash_Memory_Initial	equ	__end_of_Flash_Memory_Initial-_Flash_Memory_Initial
	
_Flash_Memory_Initial:	
	opt	stack 11
; Regs used in _Flash_Memory_Initial: [wreg+fsr1l-status,0+pclath+cstack]
	line	53
	
l13901:	
;MCU_16f1516_A.c: 52: char i;
;MCU_16f1516_A.c: 53: if(Flash_Memory_Read(31) == 0xaa) { Product->Data[12]=Flash_Memory_Read(0); Product->Data[13]=Flash_Memory_Read(1); Product->Data[14]=Flash_Memory_Read(2); Product->Data[21]=Flash_Memory_Read(3); Product->Data[22]=Flash_Memory_Read(4); Product->Data[
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u7291
	goto	u7290
u7291:
	goto	l2391
u7290:
	
l13903:	
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
	goto	l2393
	
l2391:	
	bcf	(95/8),(95)&7
	
l13905:	
	fcall	_Flash_Memory_Write
	
l13907:	
	bsf	(95/8),(95)&7
	goto	l2393
	
l2392:	
	line	54
	
l2393:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initial
	__end_of_Flash_Memory_Initial:
;; =============== function _Flash_Memory_Initial ends ============

	signat	_Flash_Memory_Initial,88
	global	_setDimmerLights3
psect	text1877,local,class=CODE,delta=2
global __ptext1877
__ptext1877:

;; *************** function _setDimmerLights3 *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
;;		_getRxData
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1877
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
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
	
l15137:	
;Dimmer_A1.c: 18: if(status) { DimmerLights3->Status=1; if(DimmerLights3->Dimmable) { DimmerLights3->Signal=1; DimmerLights3->DimmingTimeValue=3; } if( DimmerLights3->StatusFlag == 0) { DimmerLights3->StatusFlag=1; _nop(); } Dimmable->Load=3; setLoad_GO_On(); setLED3(
	movf	(setDimmerLights3@status),w
	skipz
	goto	u9300
	goto	l15149
u9300:
	
l15139:	
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
	goto	u9311
	goto	u9310
u9311:
	goto	l8419
u9310:
	
l15141:	
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
	
l8419:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9321
	goto	u9320
u9321:
	goto	l8420
u9320:
	
l15143:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	
l15145:	
	nop
	
l8420:	
	movlw	(03h)
	movwf	(??_setDimmerLights3+0)+0
	movlb 0	; select bank0
	movf	(_Dimmable),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights3+0)+0,w
	movwf	indf1
	
l15147:	
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
	goto	l8425
	
l8418:	
	
l15149:	
	movlb 0	; select bank0
	movf	(setDimmerLights3@status),f
	skipz
	goto	u9331
	goto	u9330
u9331:
	goto	l8425
u9330:
	
l15151:	
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
	goto	u9341
	goto	u9340
u9341:
	goto	l15155
u9340:
	
l15153:	
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
	goto	l8424
	
l8423:	
	
l15155:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	
l15157:	
	movlw	(0)
	fcall	_setLED3
	
l15159:	
	nop
	fcall	_setLoad_JudgeValue
	
l8424:	
	fcall	_Dimmer_setOverLoad_GO_Off
	
l15161:	
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
	goto	l8425
	
l8422:	
	goto	l8425
	
l8421:	
	line	19
	
l8425:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights3
	__end_of_setDimmerLights3:
;; =============== function _setDimmerLights3 ends ============

	signat	_setDimmerLights3,4216
	global	_setDimmerLights2
psect	text1878,local,class=CODE,delta=2
global __ptext1878
__ptext1878:

;; *************** function _setDimmerLights2 *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
;;		_getRxData
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1878
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
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
	
l15111:	
;Dimmer_A1.c: 13: if(status) { DimmerLights2->Status=1; if(DimmerLights2->Dimmable) { DimmerLights2->Signal=1; DimmerLights2->DimmingTimeValue=3; } if( DimmerLights2->StatusFlag == 0) { DimmerLights2->StatusFlag=1; _nop(); } Dimmable->Load=2; setLoad_GO_On(); setLED2(
	movf	(setDimmerLights2@status),w
	skipz
	goto	u9250
	goto	l15123
u9250:
	
l15113:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u9261
	goto	u9260
u9261:
	goto	l8409
u9260:
	
l15115:	
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
	
l8409:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u9271
	goto	u9270
u9271:
	goto	l8410
u9270:
	
l15117:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,6
	
l15119:	
	nop
	
l8410:	
	movlw	(02h)
	movwf	(??_setDimmerLights2+0)+0
	movlb 0	; select bank0
	movf	(_Dimmable),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights2+0)+0,w
	movwf	indf1
	
l15121:	
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
	goto	l8415
	
l8408:	
	
l15123:	
	movlb 0	; select bank0
	movf	(setDimmerLights2@status),f
	skipz
	goto	u9281
	goto	u9280
u9281:
	goto	l8415
u9280:
	
l15125:	
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
	goto	u9291
	goto	u9290
u9291:
	goto	l15129
u9290:
	
l15127:	
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
	goto	l8414
	
l8413:	
	
l15129:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
l15131:	
	movlw	(0)
	fcall	_setLED2
	
l15133:	
	nop
	fcall	_setLoad_JudgeValue
	
l8414:	
	fcall	_Dimmer_setOverLoad_GO_Off
	
l15135:	
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
	goto	l8415
	
l8412:	
	goto	l8415
	
l8411:	
	line	14
	
l8415:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights2
	__end_of_setDimmerLights2:
;; =============== function _setDimmerLights2 ends ============

	signat	_setDimmerLights2,4216
	global	_setDimmerLights1
psect	text1879,local,class=CODE,delta=2
global __ptext1879
__ptext1879:

;; *************** function _setDimmerLights1 *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
;;		_getRxData
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1879
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
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
	
l15079:	
;Dimmer_A1.c: 8: if(status) { DimmerLights1->Status=1; if(DimmerLights1->Dimmable) { DimmerLights1->Signal=1; DimmerLights1->DimmingTimeValue=3; } if( DimmerLights1->StatusFlag == 0) { DimmerLights1->StatusFlag=1; _nop(); } Dimmable->Load=1; setLoad_GO_On(); setLED1(
	movf	(setDimmerLights1@status),w
	skipz
	goto	u9200
	goto	l15097
u9200:
	
l15081:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u9211
	goto	u9210
u9211:
	goto	l8399
u9210:
	
l15083:	
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
	
l8399:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u9221
	goto	u9220
u9221:
	goto	l15089
u9220:
	
l15085:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,6
	
l15087:	
	nop
	goto	l15089
	
l8400:	
	
l15089:	
	movlb 0	; select bank0
	movf	(_Dimmable),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	
l15091:	
	fcall	_setLoad_GO_On
	
l15093:	
	movlw	(0)
	fcall	_setLED1
	
l15095:	
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
	goto	l8405
	
l8398:	
	
l15097:	
	movlb 0	; select bank0
	movf	(setDimmerLights1@status),f
	skipz
	goto	u9231
	goto	u9230
u9231:
	goto	l8405
u9230:
	
l15099:	
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
	goto	u9241
	goto	u9240
u9241:
	goto	l15103
u9240:
	
l15101:	
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
	goto	l8404
	
l8403:	
	
l15103:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
l15105:	
	movlw	(0)
	fcall	_setLED1
	
l15107:	
	nop
	fcall	_setLoad_JudgeValue
	
l8404:	
	fcall	_Dimmer_setOverLoad_GO_Off
	
l15109:	
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
	goto	l8405
	
l8402:	
	goto	l8405
	
l8401:	
	line	9
	
l8405:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights1
	__end_of_setDimmerLights1:
;; =============== function _setDimmerLights1 ends ============

	signat	_setDimmerLights1,4216
	global	_RF_RxDisable
psect	text1880,local,class=CODE,delta=2
global __ptext1880
__ptext1880:

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 16 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
psect	text1880
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	16
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
	opt	stack 10
; Regs used in _RF_RxDisable: [wreg+fsr1l-status,0+pclath+cstack]
	line	17
	
l15065:	
;RF_Control_A1.c: 17: if(RF->RxStatus || RF->ReceiveGO) { RF->RxStatus=0; RF->ReceiveGO=0; RF->DebounceTime=0; RF->Debounce=0; CC2500_WriteCommand(0x36); CC2500_WriteCommand(0x3A); INTF=0; INTE=0; ;; } ;;
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u9181
	goto	u9180
u9181:
	goto	l15069
u9180:
	
l15067:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9191
	goto	u9190
u9191:
	goto	l5994
u9190:
	goto	l15069
	
l5993:	
	
l15069:	
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
	
l15071:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	
l15073:	
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	
l15075:	
	bcf	(89/8),(89)&7
	
l15077:	
	bcf	(92/8),(92)&7
	goto	l5994
	
l5991:	
	line	18
	
l5994:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
;; =============== function _RF_RxDisable ends ============

	signat	_RF_RxDisable,88
	global	_CC2500_SIDLEMode
psect	text1881,local,class=CODE,delta=2
global __ptext1881
__ptext1881:

;; *************** function _CC2500_SIDLEMode *****************
;; Defined at:
;;		line 204 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1881
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	204
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
	opt	stack 10
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	205
	
l15063:	
;CC2500_A1.c: 205: CC2500_WriteCommand(0x36); ;;
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	207
	
l4774:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_SIDLEMode
	__end_of_CC2500_SIDLEMode:
;; =============== function _CC2500_SIDLEMode ends ============

	signat	_CC2500_SIDLEMode,88
	global	_CC2500_FrequencyCabr
psect	text1882,local,class=CODE,delta=2
global __ptext1882
__ptext1882:

;; *************** function _CC2500_FrequencyCabr *****************
;; Defined at:
;;		line 193 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1882
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	193
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
	opt	stack 10
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	194
	
l15061:	
;CC2500_A1.c: 194: CC2500_WriteCommand(0x33); DelayTime_1us(1000); ;;
	movlw	(033h)
	fcall	_CC2500_WriteCommand
	movlw	low(03E8h)
	movwf	(?_DelayTime_1us)
	movlw	high(03E8h)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	199
	
l4771:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_FrequencyCabr
	__end_of_CC2500_FrequencyCabr:
;; =============== function _CC2500_FrequencyCabr ends ============

	signat	_CC2500_FrequencyCabr,88
	global	_CC2500_ClearRXFIFO
psect	text1883,local,class=CODE,delta=2
global __ptext1883
__ptext1883:

;; *************** function _CC2500_ClearRXFIFO *****************
;; Defined at:
;;		line 185 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	185
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
	opt	stack 10
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	186
	
l15059:	
;CC2500_A1.c: 186: CC2500_WriteCommand(0x3A); ;;
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	188
	
l4768:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearRXFIFO
	__end_of_CC2500_ClearRXFIFO:
;; =============== function _CC2500_ClearRXFIFO ends ============

	signat	_CC2500_ClearRXFIFO,88
	global	_CC2500_ClearTXFIFO
psect	text1884,local,class=CODE,delta=2
global __ptext1884
__ptext1884:

;; *************** function _CC2500_ClearTXFIFO *****************
;; Defined at:
;;		line 177 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1884
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	177
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
	opt	stack 10
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	178
	
l15057:	
;CC2500_A1.c: 178: CC2500_WriteCommand(0x3B); ;;
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	180
	
l4765:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearTXFIFO
	__end_of_CC2500_ClearTXFIFO:
;; =============== function _CC2500_ClearTXFIFO ends ============

	signat	_CC2500_ClearTXFIFO,88
	global	_CC2500_InitPATable
psect	text1885,local,class=CODE,delta=2
global __ptext1885
__ptext1885:

;; *************** function _CC2500_InitPATable *****************
;; Defined at:
;;		line 161 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1885
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	161
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
	opt	stack 10
; Regs used in _CC2500_InitPATable: [wreg+status,2+status,0+pclath+cstack]
	line	164
	
l15043:	
;CC2500_A1.c: 162: unsigned char loop_d;
;CC2500_A1.c: 163: unsigned char temp;
;CC2500_A1.c: 164: for(loop_d=0;loop_d<8;loop_d++) { temp=CC2500_patable_vaule[loop_d]; CC2500_WriteREG(0x3E,temp); } ;;
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l15045:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u9161
	goto	u9160
u9161:
	goto	l15049
u9160:
	goto	l4762
	
l15047:	
	goto	l4762
	
l4760:	
	
l15049:	
	movf	(CC2500_InitPATable@loop_d),w
	addlw	low(_CC2500_patable_vaule|8000h)
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_InitPATable@temp)
	
l15051:	
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	
l15053:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l15055:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u9171
	goto	u9170
u9171:
	goto	l15049
u9170:
	goto	l4762
	
l4761:	
	line	172
	
l4762:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitPATable
	__end_of_CC2500_InitPATable:
;; =============== function _CC2500_InitPATable ends ============

	signat	_CC2500_InitPATable,88
	global	_CC2500_InitSetREG
psect	text1886,local,class=CODE,delta=2
global __ptext1886
__ptext1886:

;; *************** function _CC2500_InitSetREG *****************
;; Defined at:
;;		line 143 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1886
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	143
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
	opt	stack 10
; Regs used in _CC2500_InitSetREG: [wreg+status,2+status,0+pclath+cstack]
	line	146
	
l15029:	
;CC2500_A1.c: 144: unsigned char loop_c;
;CC2500_A1.c: 145: unsigned char temp1,temp2;
;CC2500_A1.c: 146: for(loop_c=0;loop_c<47;loop_c++) { temp1 = CC2500_registers_address[loop_c]; temp2 = CC2500_rfSettings[loop_c]; CC2500_WriteREG(temp1,temp2); } ;;
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l15031:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u9141
	goto	u9140
u9141:
	goto	l15035
u9140:
	goto	l4757
	
l15033:	
	goto	l4757
	
l4755:	
	
l15035:	
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
	
l15037:	
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	
l15039:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l15041:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u9151
	goto	u9150
u9151:
	goto	l15035
u9150:
	goto	l4757
	
l4756:	
	line	156
	
l4757:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitSetREG
	__end_of_CC2500_InitSetREG:
;; =============== function _CC2500_InitSetREG ends ============

	signat	_CC2500_InitSetREG,88
	global	_CC2500_RxData
psect	text1887,local,class=CODE,delta=2
global __ptext1887
__ptext1887:

;; *************** function _CC2500_RxData *****************
;; Defined at:
;;		line 58 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1887
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	58
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
	opt	stack 10
; Regs used in _CC2500_RxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	60
	
l14987:	
;CC2500_A1.c: 59: unsigned char loop_f;
;CC2500_A1.c: 60: ; ; if(RB0) { while(RB0); } CC2500_ReadStatus(0x3B); if(s_data == 0x18) { RC4=0; SPI0Buffer=0x3F+0xC0; while(RC2==1); CC2500_WriteByte(); CC2500_ReadByte(); Rx_Length=SPI0Buffer; for(loop_f=0;loop_f<Rx_Length;loop_f++) { CC2500_ReadByte(); RF_Data[lo
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u9081
	goto	u9080
u9081:
	goto	l14991
u9080:
	goto	l4729
	
l14989:	
	goto	l4729
	
l4730:	
	
l4729:	
	btfsc	(104/8),(104)&7
	goto	u9091
	goto	u9090
u9091:
	goto	l4729
u9090:
	goto	l14991
	
l4731:	
	goto	l14991
	
l4728:	
	
l14991:	
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	
l14993:	
	movlb 0	; select bank0
	movf	(_s_data),w
	xorlw	018h&0ffh
	skipz
	goto	u9101
	goto	u9100
u9101:
	goto	l15025
u9100:
	
l14995:	
	bcf	(116/8),(116)&7
	
l14997:	
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l4733
	
l4734:	
	
l4733:	
	btfsc	(114/8),(114)&7
	goto	u9111
	goto	u9110
u9111:
	goto	l4733
u9110:
	goto	l14999
	
l4735:	
	
l14999:	
	fcall	_CC2500_WriteByte
	fcall	_CC2500_ReadByte
	
l15001:	
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_Rx_Length)
	
l15003:	
	clrf	(CC2500_RxData@loop_f)
	goto	l15011
	
l4737:	
	
l15005:	
	fcall	_CC2500_ReadByte
	
l15007:	
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(CC2500_RxData@loop_f),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_CC2500_RxData+0)+0,w
	movwf	indf1
	
l15009:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l15011
	
l4736:	
	
l15011:	
	movf	(_Rx_Length),w
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u9121
	goto	u9120
u9121:
	goto	l15005
u9120:
	goto	l15013
	
l4738:	
	
l15013:	
	fcall	_CC2500_ReadByte
	
l15015:	
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_RSSI)
	
l15017:	
	fcall	_CC2500_ReadByte
	movlb 0	; select bank0
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movwf	(_CRC)
	
l15019:	
	bsf	(116/8),(116)&7
	
l15021:	
	btfss	(_CRC),(7)&7
	goto	u9131
	goto	u9130
u9131:
	goto	l15025
u9130:
	
l15023:	
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l15025
	
l4739:	
	goto	l15025
	
l4732:	
	
l15025:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	
l15027:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	95
	
l4740:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_RxData
	__end_of_CC2500_RxData:
;; =============== function _CC2500_RxData ends ============

	signat	_CC2500_RxData,88
	global	_CC2500_TxData
psect	text1888,local,class=CODE,delta=2
global __ptext1888
__ptext1888:

;; *************** function _CC2500_TxData *****************
;; Defined at:
;;		line 30 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1888
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	30
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
	opt	stack 10
; Regs used in _CC2500_TxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	32
	
l14961:	
;CC2500_A1.c: 31: unsigned char loop_e;
;CC2500_A1.c: 32: RC4=0; SPI0Buffer=0x3F+0x40; while(RC2==1); CC2500_WriteByte(); SPI0Buffer=Tx_Length; CC2500_WriteByte(); for(loop_e=0;loop_e<Tx_Length;loop_e++) { SPI0Buffer=RF_Data[loop_e]; CC2500_WriteByte(); } RC4=1; CC2500_WriteCommand(0x35); while(RB0==0); whi
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l14963:	
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l4713
	
l4714:	
	
l4713:	
	btfsc	(114/8),(114)&7
	goto	u9041
	goto	u9040
u9041:
	goto	l4713
u9040:
	goto	l14965
	
l4715:	
	
l14965:	
	fcall	_CC2500_WriteByte
	
l14967:	
	movlb 0	; select bank0
	movf	(_Tx_Length),w
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	
l14969:	
	fcall	_CC2500_WriteByte
	
l14971:	
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l14979
	
l4717:	
	
l14973:	
	movf	(CC2500_TxData@loop_e),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movwf	(_SPI0Buffer)
	
l14975:	
	fcall	_CC2500_WriteByte
	
l14977:	
	movlw	(01h)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 0	; select bank0
	addwf	(CC2500_TxData@loop_e),f
	goto	l14979
	
l4716:	
	
l14979:	
	movf	(_Tx_Length),w
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u9051
	goto	u9050
u9051:
	goto	l14973
u9050:
	
l4718:	
	bsf	(116/8),(116)&7
	
l14981:	
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	goto	l4719
	
l4720:	
	
l4719:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u9061
	goto	u9060
u9061:
	goto	l4719
u9060:
	goto	l4722
	
l4721:	
	goto	l4722
	
l4723:	
	
l4722:	
	btfsc	(104/8),(104)&7
	goto	u9071
	goto	u9070
u9071:
	goto	l4722
u9070:
	goto	l14983
	
l4724:	
	
l14983:	
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	
l14985:	
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	53
	
l4725:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_TxData
	__end_of_CC2500_TxData:
;; =============== function _CC2500_TxData ends ============

	signat	_CC2500_TxData,88
	global	_Flash_Memory_Erasing
psect	text1889,local,class=CODE,delta=2
global __ptext1889
__ptext1889:

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 75 in file "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
psect	text1889
	file	"E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	line	75
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
	opt	stack 10
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	76
	
l13685:	
;MCU_16f1516_A.c: 76: CFGS=0; PMADRH=0x1a; PMADRL=0x00; FREE=1; WREN=1; Flash_Memory_Unlock(); WREN=0; ;;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	
l13687:	
	movlw	(01Ah)
	movwf	(402)^0180h	;volatile
	
l13689:	
	clrf	(401)^0180h	;volatile
	
l13691:	
	bsf	(3244/8)^0180h,(3244)&7
	
l13693:	
	bsf	(3242/8)^0180h,(3242)&7
	
l13695:	
	fcall	_Flash_Memory_Unlock
	
l13697:	
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	77
	
l2414:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
;; =============== function _Flash_Memory_Erasing ends ============

	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Write
psect	text1890,local,class=CODE,delta=2
global __ptext1890
__ptext1890:

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 70 in file "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
psect	text1890
	file	"E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	line	70
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
	opt	stack 10
; Regs used in _Flash_Memory_Write: [wreg+fsr1l-status,0+pclath+cstack]
	line	72
	
l13653:	
;MCU_16f1516_A.c: 71: char i;
;MCU_16f1516_A.c: 72: CFGS=0; PMADRH=0x1a; PMDATH=0; FREE=0; LWLO=1; WREN=1; for(i=0 ; i<32 ; i++) { PMADRL=i; PMDATL=Memory->Data[i]; Flash_Memory_Unlock(); } LWLO=0; Flash_Memory_Unlock(); WREN=0; ;;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	
l13655:	
	movlw	(01Ah)
	movwf	(402)^0180h	;volatile
	
l13657:	
	clrf	(404)^0180h	;volatile
	
l13659:	
	bcf	(3244/8)^0180h,(3244)&7
	
l13661:	
	bsf	(3245/8)^0180h,(3245)&7
	
l13663:	
	bsf	(3242/8)^0180h,(3242)&7
	
l13665:	
	clrf	(Flash_Memory_Write@i)
	
l13667:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u6961
	goto	u6960
u6961:
	goto	l13671
u6960:
	goto	l2410
	
l13669:	
	goto	l2410
	
l2409:	
	
l13671:	
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	
l13673:	
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
	
l13675:	
	fcall	_Flash_Memory_Unlock
	
l13677:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l13679:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u6971
	goto	u6970
u6971:
	goto	l13671
u6970:
	
l2410:	
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7
	
l13681:	
	fcall	_Flash_Memory_Unlock
	
l13683:	
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	73
	
l2411:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
;; =============== function _Flash_Memory_Write ends ============

	signat	_Flash_Memory_Write,88
	global	_setDimmerLights3_Adj
psect	text1891,local,class=CODE,delta=2
global __ptext1891
__ptext1891:

;; *************** function _setDimmerLights3_Adj *****************
;; Defined at:
;;		line 32 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
psect	text1891
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
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
	
l14945:	
;Dimmer_A1.c: 33: if(DimmerLights3->Dimmable) { if(status) { DimmerLights3->AdjFlag=1; DimmerLights3->Signal=1; } else if(status == 0) { if(DimmerLights3->AdjFlag) { DimmerLights3->Signal=0; DimmerLights3->AdjFlag=0; DimmerLights3->StartValue=DimmerLights3->DimmingVal
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9001
	goto	u9000
u9001:
	goto	l8449
u9000:
	
l14947:	
	movf	(setDimmerLights3_Adj@status),w
	skipz
	goto	u9010
	goto	l14951
u9010:
	
l14949:	
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
	goto	l8449
	
l8445:	
	
l14951:	
	movf	(setDimmerLights3_Adj@status),f
	skipz
	goto	u9021
	goto	u9020
u9021:
	goto	l8449
u9020:
	
l14953:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9031
	goto	u9030
u9031:
	goto	l8449
u9030:
	
l14955:	
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
	
l14957:	
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
	
l14959:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	l8449
	
l8448:	
	goto	l8449
	
l8447:	
	goto	l8449
	
l8446:	
	goto	l8449
	
l8444:	
	line	34
	
l8449:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights3_Adj
	__end_of_setDimmerLights3_Adj:
;; =============== function _setDimmerLights3_Adj ends ============

	signat	_setDimmerLights3_Adj,4216
	global	_setDimmerLights2_Adj
psect	text1892,local,class=CODE,delta=2
global __ptext1892
__ptext1892:

;; *************** function _setDimmerLights2_Adj *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
psect	text1892
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
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
	
l14929:	
;Dimmer_A1.c: 28: if(DimmerLights2->Dimmable) { if(status) { DimmerLights2->AdjFlag=1; DimmerLights2->Signal=1; } else if(status == 0) { if(DimmerLights2->AdjFlag) { DimmerLights2->Signal=0; DimmerLights2->AdjFlag=0; DimmerLights2->StartValue=DimmerLights2->DimmingVal
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u8961
	goto	u8960
u8961:
	goto	l8441
u8960:
	
l14931:	
	movf	(setDimmerLights2_Adj@status),w
	skipz
	goto	u8970
	goto	l14935
u8970:
	
l14933:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l8441
	
l8437:	
	
l14935:	
	movf	(setDimmerLights2_Adj@status),f
	skipz
	goto	u8981
	goto	u8980
u8981:
	goto	l8441
u8980:
	
l14937:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u8991
	goto	u8990
u8991:
	goto	l8441
u8990:
	
l14939:	
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
	
l14941:	
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
	
l14943:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	l8441
	
l8440:	
	goto	l8441
	
l8439:	
	goto	l8441
	
l8438:	
	goto	l8441
	
l8436:	
	line	29
	
l8441:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights2_Adj
	__end_of_setDimmerLights2_Adj:
;; =============== function _setDimmerLights2_Adj ends ============

	signat	_setDimmerLights2_Adj,4216
	global	_setDimmerLights1_Adj
psect	text1893,local,class=CODE,delta=2
global __ptext1893
__ptext1893:

;; *************** function _setDimmerLights1_Adj *****************
;; Defined at:
;;		line 22 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
psect	text1893
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
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
	
l14913:	
;Dimmer_A1.c: 23: if(DimmerLights1->Dimmable) { if(status) { DimmerLights1->AdjFlag=1; DimmerLights1->Signal=1; } else if(status == 0) { if(DimmerLights1->AdjFlag) { DimmerLights1->Signal=0; DimmerLights1->AdjFlag=0; DimmerLights1->StartValue=DimmerLights1->DimmingVal
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u8921
	goto	u8920
u8921:
	goto	l8433
u8920:
	
l14915:	
	movf	(setDimmerLights1_Adj@status),w
	skipz
	goto	u8930
	goto	l14919
u8930:
	
l14917:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l8433
	
l8429:	
	
l14919:	
	movf	(setDimmerLights1_Adj@status),f
	skipz
	goto	u8941
	goto	u8940
u8941:
	goto	l8433
u8940:
	
l14921:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u8951
	goto	u8950
u8951:
	goto	l8433
u8950:
	
l14923:	
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
	
l14925:	
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
	
l14927:	
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	l8433
	
l8432:	
	goto	l8433
	
l8431:	
	goto	l8433
	
l8430:	
	goto	l8433
	
l8428:	
	line	24
	
l8433:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights1_Adj
	__end_of_setDimmerLights1_Adj:
;; =============== function _setDimmerLights1_Adj ends ============

	signat	_setDimmerLights1_Adj,4216
	global	_LED_Main
psect	text1894,local,class=CODE,delta=2
global __ptext1894
__ptext1894:

;; *************** function _LED_Main *****************
;; Defined at:
;;		line 35 in file "G:\Program\PIC\Source_File\LED_A1.c"
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
	file	"G:\Program\PIC\Source_File\LED_A1.c"
	line	35
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
	opt	stack 13
; Regs used in _LED_Main: [wreg+fsr1l-status,0]
	line	36
	
l13589:	
;LED_A1.c: 36: if(_ErrLED->GO) { _ErrLED->Time++; if(_ErrLED->Time == 500) { _ErrLED->Time=0; RB5=~RB5; } } ;;
	movlb 0	; select bank0
	movf	(__ErrLED),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u6821
	goto	u6820
u6821:
	goto	l13599
u6820:
	
l13591:	
	movf	(__ErrLED),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l13593:	
	movf	(__ErrLED),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(01F4h)
	skipz
	goto	u6835
	moviw	[1]fsr1
	xorlw	high(01F4h)
u6835:
	skipz
	goto	u6831
	goto	u6830
u6831:
	goto	l13599
u6830:
	
l13595:	
	movf	(__ErrLED),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l13597:	
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l13599
	
l7258:	
	goto	l13599
	
l7257:	
	line	37
	
l13599:	
;LED_A1.c: 37: _nop();
	nop
	line	38
	
l13601:	
;LED_A1.c: 38: _nop();
	nop
	line	39
	
l13603:	
;LED_A1.c: 39: _nop();
	nop
	line	40
	
l7259:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
;; =============== function _LED_Main ends ============

	signat	_LED_Main,88
	global	_setRF_DimmerValue
psect	text1895,local,class=CODE,delta=2
global __ptext1895
__ptext1895:

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
psect	text1895
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	38
	global	__size_of_setRF_DimmerValue
	__size_of_setRF_DimmerValue	equ	__end_of_setRF_DimmerValue-_setRF_DimmerValue
	
_setRF_DimmerValue:	
	opt	stack 10
; Regs used in _setRF_DimmerValue: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_DimmerValue@lights stored from wreg
	movwf	(setRF_DimmerValue@lights)
	line	39
	
l13559:	
;RF_Control_A1.c: 39: if(RF_Data[9] > 0x64) { RF_Data[9]=0x64; } Product->Data[9]=RF_Data[9]; Product->Data[11]=lights; if(lights == 1) { DimmerLights1->AdjRF=1; DimmerLights1->Signal=1; DimmerLights1->StartValue=getStartValue(1.5); Product->Data[15]=(Product->Data[15]|0x
	movlw	(065h)
	movlb 0	; select bank0
	subwf	0+(_RF_Data)+09h,w
	skipc
	goto	u6781
	goto	u6780
u6781:
	goto	l13563
u6780:
	
l13561:	
	movlw	(064h)
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	0+(_RF_Data)+09h
	goto	l13563
	
l6052:	
	
l13563:	
	movf	0+(_RF_Data)+09h,w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	
l13565:	
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
	goto	u6791
	goto	u6790
u6791:
	goto	l13573
u6790:
	
l13567:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l13569:	
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
	
l13571:	
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
	goto	l6058
	
l6053:	
	
l13573:	
	movf	(setRF_DimmerValue@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u6801
	goto	u6800
u6801:
	goto	l13581
u6800:
	
l13575:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l13577:	
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
	
l13579:	
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
	goto	l6058
	
l6055:	
	
l13581:	
	movf	(setRF_DimmerValue@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u6811
	goto	u6810
u6811:
	goto	l6058
u6810:
	
l13583:	
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
	
l13585:	
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
	
l13587:	
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
	goto	l6058
	
l6057:	
	goto	l6058
	
l6056:	
	goto	l6058
	
l6054:	
	line	40
	
l6058:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
;; =============== function _setRF_DimmerValue ends ============

	signat	_setRF_DimmerValue,4216
	global	_CC2500_WriteREG
psect	text1896,local,class=CODE,delta=2
global __ptext1896
__ptext1896:

;; *************** function _CC2500_WriteREG *****************
;; Defined at:
;;		line 255 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1896
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	255
	global	__size_of_CC2500_WriteREG
	__size_of_CC2500_WriteREG	equ	__end_of_CC2500_WriteREG-_CC2500_WriteREG
	
_CC2500_WriteREG:	
	opt	stack 10
; Regs used in _CC2500_WriteREG: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteREG@w_addr stored from wreg
	movwf	(CC2500_WriteREG@w_addr)
	line	256
	
l14901:	
;CC2500_A1.c: 256: RC4=0; SPI0Buffer=w_addr; while(RC2==1); CC2500_WriteByte(); SPI0Buffer=value; CC2500_WriteByte(); RC4=1; ;;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l14903:	
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l4791
	
l4792:	
	
l4791:	
	btfsc	(114/8),(114)&7
	goto	u8911
	goto	u8910
u8911:
	goto	l4791
u8910:
	goto	l14905
	
l4793:	
	
l14905:	
	fcall	_CC2500_WriteByte
	
l14907:	
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 0	; select bank0
	movwf	(_SPI0Buffer)
	
l14909:	
	fcall	_CC2500_WriteByte
	
l14911:	
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	266
	
l4794:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteREG
	__end_of_CC2500_WriteREG:
;; =============== function _CC2500_WriteREG ends ============

	signat	_CC2500_WriteREG,8312
	global	_CC2500_PowerRST
psect	text1897,local,class=CODE,delta=2
global __ptext1897
__ptext1897:

;; *************** function _CC2500_PowerRST *****************
;; Defined at:
;;		line 119 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1897
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	119
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
	opt	stack 11
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	120
	
l14887:	
;CC2500_A1.c: 120: RC1=0; RC0=0; RC4=1; DelayTime_1us(10); RC4=0; DelayTime_1us(10); RC4=1; DelayTime_1us(40); RC4=0; SPI0Buffer=0x30; while(RC2==1); CC2500_WriteByte(); while(RC2==1); RC0=0; RC4=1; ;;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	bcf	(112/8),(112)&7
	bsf	(116/8),(116)&7
	
l14889:	
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	
l14891:	
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	
l14893:	
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	movlw	low(028h)
	movwf	(?_DelayTime_1us)
	movlw	high(028h)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	
l14895:	
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l14897:	
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l4746
	
l4747:	
	
l4746:	
	btfsc	(114/8),(114)&7
	goto	u8891
	goto	u8890
u8891:
	goto	l4746
u8890:
	goto	l14899
	
l4748:	
	
l14899:	
	fcall	_CC2500_WriteByte
	goto	l4749
	
l4750:	
	
l4749:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u8901
	goto	u8900
u8901:
	goto	l4749
u8900:
	
l4751:	
	bcf	(112/8),(112)&7
	bsf	(116/8),(116)&7
	line	138
	
l4752:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerRST
	__end_of_CC2500_PowerRST:
;; =============== function _CC2500_PowerRST ends ============

	signat	_CC2500_PowerRST,88
	global	_CC2500_ReadStatus
psect	text1898,local,class=CODE,delta=2
global __ptext1898
__ptext1898:

;; *************** function _CC2500_ReadStatus *****************
;; Defined at:
;;		line 303 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1898
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	303
	global	__size_of_CC2500_ReadStatus
	__size_of_CC2500_ReadStatus	equ	__end_of_CC2500_ReadStatus-_CC2500_ReadStatus
	
_CC2500_ReadStatus:	
	opt	stack 10
; Regs used in _CC2500_ReadStatus: [wreg+status,2+status,0+pclath+cstack]
;CC2500_ReadStatus@status_addr stored from wreg
	movwf	(CC2500_ReadStatus@status_addr)
	line	304
	
l14877:	
;CC2500_A1.c: 304: RC4=0; SPI0Buffer=status_addr+0xC0; while(RC2==1); CC2500_WriteByte(); CC2500_ReadByte(); RC4=1; s_data=SPI0Buffer; ;;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l14879:	
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l4809
	
l4810:	
	
l4809:	
	btfsc	(114/8),(114)&7
	goto	u8881
	goto	u8880
u8881:
	goto	l4809
u8880:
	goto	l14881
	
l4811:	
	
l14881:	
	fcall	_CC2500_WriteByte
	fcall	_CC2500_ReadByte
	
l14883:	
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	
l14885:	
	movf	(_SPI0Buffer),w
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movwf	(_s_data)
	line	317
	
l4812:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadStatus
	__end_of_CC2500_ReadStatus:
;; =============== function _CC2500_ReadStatus ends ============

	signat	_CC2500_ReadStatus,4216
	global	_CC2500_WriteCommand
psect	text1899,local,class=CODE,delta=2
global __ptext1899
__ptext1899:

;; *************** function _CC2500_WriteCommand *****************
;; Defined at:
;;		line 287 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1899
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	287
	global	__size_of_CC2500_WriteCommand
	__size_of_CC2500_WriteCommand	equ	__end_of_CC2500_WriteCommand-_CC2500_WriteCommand
	
_CC2500_WriteCommand:	
	opt	stack 11
; Regs used in _CC2500_WriteCommand: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteCommand@command stored from wreg
	movwf	(CC2500_WriteCommand@command)
	line	288
	
l14869:	
;CC2500_A1.c: 288: RC4=0; SPI0Buffer=command; while(RC2==1); CC2500_WriteByte(); RC4=1; ;;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	
l14871:	
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movwf	(_SPI0Buffer)
	goto	l4803
	
l4804:	
	
l4803:	
	btfsc	(114/8),(114)&7
	goto	u8871
	goto	u8870
u8871:
	goto	l4803
u8870:
	goto	l14873
	
l4805:	
	
l14873:	
	fcall	_CC2500_WriteByte
	
l14875:	
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	298
	
l4806:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteCommand
	__end_of_CC2500_WriteCommand:
;; =============== function _CC2500_WriteCommand ends ============

	signat	_CC2500_WriteCommand,4216
	global	_Flash_Memory_Unlock
psect	text1900,local,class=CODE,delta=2
global __ptext1900
__ptext1900:

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 60 in file "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
psect	text1900
	file	"E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	line	60
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
	opt	stack 10
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	61
	
l13507:	
;MCU_16f1516_A.c: 61: PMCON2=0x55; PMCON2=0xaa; WR=1; _nop(); _nop(); ;;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	
l13509:	
	bsf	(3241/8)^0180h,(3241)&7
	
l13511:	
	nop
	
l13513:	
	nop
	line	62
	
l2403:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
;; =============== function _Flash_Memory_Unlock ends ============

	signat	_Flash_Memory_Unlock,88
	global	_setLoad_JudgeValue
psect	text1901,local,class=CODE,delta=2
global __ptext1901
__ptext1901:

;; *************** function _setLoad_JudgeValue *****************
;; Defined at:
;;		line 42 in file "G:\Program\PIC\Source_File\OverLoad_A.c"
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
psect	text1901
	file	"G:\Program\PIC\Source_File\OverLoad_A.c"
	line	42
	global	__size_of_setLoad_JudgeValue
	__size_of_setLoad_JudgeValue	equ	__end_of_setLoad_JudgeValue-_setLoad_JudgeValue
	
_setLoad_JudgeValue:	
	opt	stack 10
; Regs used in _setLoad_JudgeValue: []
	line	43
	
l14867:	
;OverLoad_A.c: 43: _nop();
	nop
	line	44
	
l1146:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_JudgeValue
	__end_of_setLoad_JudgeValue:
;; =============== function _setLoad_JudgeValue ends ============

	signat	_setLoad_JudgeValue,88
	global	_setLoadtoEnable
psect	text1902,local,class=CODE,delta=2
global __ptext1902
__ptext1902:

;; *************** function _setLoadtoEnable *****************
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text1902
	file	"G:\Program\PIC\Source_File\OverLoad_A.c"
	line	27
	global	__size_of_setLoadtoEnable
	__size_of_setLoadtoEnable	equ	__end_of_setLoadtoEnable-_setLoadtoEnable
	
_setLoadtoEnable:	
	opt	stack 12
; Regs used in _setLoadtoEnable: []
	line	28
	
l13503:	
;OverLoad_A.c: 28: _nop();
	nop
	line	29
	
l1137:	
	return
	opt stack 0
GLOBAL	__end_of_setLoadtoEnable
	__end_of_setLoadtoEnable:
;; =============== function _setLoadtoEnable ends ============

	signat	_setLoadtoEnable,88
	global	_setLoad_GO_On
psect	text1903,local,class=CODE,delta=2
global __ptext1903
__ptext1903:

;; *************** function _setLoad_GO_On *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\Source_File\OverLoad_A.c"
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
psect	text1903
	file	"G:\Program\PIC\Source_File\OverLoad_A.c"
	line	17
	global	__size_of_setLoad_GO_On
	__size_of_setLoad_GO_On	equ	__end_of_setLoad_GO_On-_setLoad_GO_On
	
_setLoad_GO_On:	
	opt	stack 10
; Regs used in _setLoad_GO_On: []
	line	18
	
l14865:	
;OverLoad_A.c: 18: _nop();
	nop
	line	19
	
l1131:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_GO_On
	__end_of_setLoad_GO_On:
;; =============== function _setLoad_GO_On ends ============

	signat	_setLoad_GO_On,88
	global	_MainT_Initial
psect	text1904,local,class=CODE,delta=2
global __ptext1904
__ptext1904:

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 55 in file "G:\Program\PIC\Source_File\main.c"
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
psect	text1904
	file	"G:\Program\PIC\Source_File\main.c"
	line	55
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
	opt	stack 13
; Regs used in _MainT_Initial: [wreg]
	line	56
	
l13443:	
;main.c: 56: TMain = &VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_TMain)
	line	57
;main.c: 57: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	58
	
l9738:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
;; =============== function _MainT_Initial ends ============

	signat	_MainT_Initial,88
	global	_Dimmer_setOverLoad_GO_Off
psect	text1905,local,class=CODE,delta=2
global __ptext1905
__ptext1905:

;; *************** function _Dimmer_setOverLoad_GO_Off *****************
;; Defined at:
;;		line 62 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
psect	text1905
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
	line	62
	global	__size_of_Dimmer_setOverLoad_GO_Off
	__size_of_Dimmer_setOverLoad_GO_Off	equ	__end_of_Dimmer_setOverLoad_GO_Off-_Dimmer_setOverLoad_GO_Off
	
_Dimmer_setOverLoad_GO_Off:	
	opt	stack 10
; Regs used in _Dimmer_setOverLoad_GO_Off: []
	line	64
	
l8471:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_setOverLoad_GO_Off
	__end_of_Dimmer_setOverLoad_GO_Off:
;; =============== function _Dimmer_setOverLoad_GO_Off ends ============

	signat	_Dimmer_setOverLoad_GO_Off,88
	global	_LED_Initial
psect	text1906,local,class=CODE,delta=2
global __ptext1906
__ptext1906:

;; *************** function _LED_Initial *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\Source_File\LED_A1.c"
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
psect	text1906
	file	"G:\Program\PIC\Source_File\LED_A1.c"
	line	27
	global	__size_of_LED_Initial
	__size_of_LED_Initial	equ	__end_of_LED_Initial-_LED_Initial
	
_LED_Initial:	
	opt	stack 13
; Regs used in _LED_Initial: [wregfsr1]
	line	28
	
l13387:	
;LED_A1.c: 28: _ErrLED=&VarErrLED; _ErrLED->Enable=1; RB5=!0; ;; ;;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LED_Initial+0)+0
	movf	(??_LED_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(__ErrLED)
	
l13389:	
	movf	(__ErrLED),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l13391:	
	bsf	(109/8),(109)&7
	line	29
	
l13393:	
;LED_A1.c: 29: _LED1=&VarLED1; _LED1->Enable=1; RA3=!0; ;; ;;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LED_Initial+0)+0
	movf	(??_LED_Initial+0)+0,w
	movwf	(__LED1)
	movf	(__LED1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l13395:	
	bsf	(99/8),(99)&7
	line	30
	
l13397:	
;LED_A1.c: 30: _LED2=&VarLED2; _LED2->Enable=1; RC6=!0; ;; ;;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LED_Initial+0)+0
	movf	(??_LED_Initial+0)+0,w
	movwf	(__LED2)
	
l13399:	
	movf	(__LED2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l13401:	
	bsf	(118/8),(118)&7
	line	31
;LED_A1.c: 31: _LED3=&VarLED3; _LED3->Enable=1; RC7=!0; ;; ;;
	movlw	(_VarLED3)&0ffh
	movwf	(??_LED_Initial+0)+0
	movf	(??_LED_Initial+0)+0,w
	movwf	(__LED3)
	
l13403:	
	movf	(__LED3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
l13405:	
	bsf	(119/8),(119)&7
	line	32
	
l7254:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Initial
	__end_of_LED_Initial:
;; =============== function _LED_Initial ends ============

	signat	_LED_Initial,88
	global	_setRF_DimmerLights
psect	text1907,local,class=CODE,delta=2
global __ptext1907
__ptext1907:

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 43 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
psect	text1907
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	43
	global	__size_of_setRF_DimmerLights
	__size_of_setRF_DimmerLights	equ	__end_of_setRF_DimmerLights-_setRF_DimmerLights
	
_setRF_DimmerLights:	
	opt	stack 10
; Regs used in _setRF_DimmerLights: [wreg+fsr1l-status,0]
;setRF_DimmerLights@lights stored from wreg
	movwf	(setRF_DimmerLights@lights)
	line	44
	
l14789:	
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
	
l14791:	
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l14793:	
	movf	(setRF_DimmerLights@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u8751
	goto	u8750
u8751:
	goto	l14805
u8750:
	
l14795:	
	movf	(setRF_DimmerLights@value),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l14797:	
	movf	(setRF_DimmerLights@on),w
	xorlw	01h&0ffh
	skipz
	goto	u8761
	goto	u8760
u8761:
	goto	l14801
u8760:
	
l14799:	
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
	goto	l6075
	
l6062:	
	
l14801:	
	movf	(setRF_DimmerLights@on),f
	skipz
	goto	u8771
	goto	u8770
u8771:
	goto	l6075
u8770:
	
l14803:	
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
	goto	l6075
	
l6064:	
	goto	l6075
	
l6063:	
	goto	l6075
	
l6061:	
	
l14805:	
	movf	(setRF_DimmerLights@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u8781
	goto	u8780
u8781:
	goto	l14817
u8780:
	
l14807:	
	movf	(setRF_DimmerLights@value),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l14809:	
	movf	(setRF_DimmerLights@on),w
	xorlw	01h&0ffh
	skipz
	goto	u8791
	goto	u8790
u8791:
	goto	l14813
u8790:
	
l14811:	
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
	goto	l6075
	
l6067:	
	
l14813:	
	movf	(setRF_DimmerLights@on),f
	skipz
	goto	u8801
	goto	u8800
u8801:
	goto	l6075
u8800:
	
l14815:	
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
	goto	l6075
	
l6069:	
	goto	l6075
	
l6068:	
	goto	l6075
	
l6066:	
	
l14817:	
	movf	(setRF_DimmerLights@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u8811
	goto	u8810
u8811:
	goto	l6075
u8810:
	
l14819:	
	movf	(setRF_DimmerLights@value),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	
l14821:	
	movf	(setRF_DimmerLights@on),w
	xorlw	01h&0ffh
	skipz
	goto	u8821
	goto	u8820
u8821:
	goto	l14825
u8820:
	
l14823:	
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
	goto	l6075
	
l6072:	
	
l14825:	
	movf	(setRF_DimmerLights@on),f
	skipz
	goto	u8831
	goto	u8830
u8831:
	goto	l6075
u8830:
	
l14827:	
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
	goto	l6075
	
l6074:	
	goto	l6075
	
l6073:	
	goto	l6075
	
l6071:	
	goto	l6075
	
l6070:	
	goto	l6075
	
l6065:	
	line	45
	
l6075:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
;; =============== function _setRF_DimmerLights ends ============

	signat	_setRF_DimmerLights,12408
	global	_getStartValue
psect	text1908,local,class=CODE,delta=2
global __ptext1908
__ptext1908:

;; *************** function _getStartValue *****************
;; Defined at:
;;		line 37 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
psect	text1908
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
	line	37
	global	__size_of_getStartValue
	__size_of_getStartValue	equ	__end_of_getStartValue-_getStartValue
	
_getStartValue:	
	opt	stack 10
; Regs used in _getStartValue: [wreg+status,2+status,0]
	line	38
	
l13325:	
;Dimmer_A1.c: 38: return (((100-RF_Data[9]))+40);
	movlb 0	; select bank0
	decf	0+(_RF_Data)+09h,w
	xorlw	0ffh
	addlw	08Ch
	goto	l8452
	
l13327:	
	line	39
	
l8452:	
	return
	opt stack 0
GLOBAL	__end_of_getStartValue
	__end_of_getStartValue:
;; =============== function _getStartValue ends ============

	signat	_getStartValue,89
	global	_DelayTimejudge
psect	text1909,local,class=CODE,delta=2
global __ptext1909
__ptext1909:

;; *************** function _DelayTimejudge *****************
;; Defined at:
;;		line 48 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
psect	text1909
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	48
	global	__size_of_DelayTimejudge
	__size_of_DelayTimejudge	equ	__end_of_DelayTimejudge-_DelayTimejudge
	
_DelayTimejudge:	
	opt	stack 11
; Regs used in _DelayTimejudge: [wreg]
;DelayTimejudge@value stored from wreg
	movwf	(DelayTimejudge@value)
	line	49
	
l13299:	
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
	goto	u6391
	goto	u6390
u6391:
	goto	l13303
u6390:
	
l13301:	
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l6079
	
l6078:	
	
l13303:	
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u6401
	goto	u6400
u6401:
	goto	l13307
u6400:
	
l13305:	
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l6079
	
l6080:	
	
l13307:	
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u6411
	goto	u6410
u6411:
	goto	l13311
u6410:
	
l13309:	
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l6079
	
l6082:	
	
l13311:	
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u6421
	goto	u6420
u6421:
	goto	l13315
u6420:
	
l13313:	
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l6079
	
l6084:	
	
l13315:	
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u6431
	goto	u6430
u6431:
	goto	l13319
u6430:
	
l13317:	
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l6079
	
l6086:	
	
l13319:	
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u6441
	goto	u6440
u6441:
	goto	l6079
u6440:
	
l13321:	
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l6079
	
l6088:	
	goto	l6079
	
l6087:	
	goto	l6079
	
l6085:	
	goto	l6079
	
l6083:	
	goto	l6079
	
l6081:	
	
l6079:	
	line	51
;RF_Control_A1.c: 51: return i;
	movf	(DelayTimejudge@i),w
	goto	l6089
	
l13323:	
	line	52
	
l6089:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
;; =============== function _DelayTimejudge ends ============

	signat	_DelayTimejudge,4217
	global	_setTxData
psect	text1910,local,class=CODE,delta=2
global __ptext1910
__ptext1910:

;; *************** function _setTxData *****************
;; Defined at:
;;		line 21 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
;;		_getRxData
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1910
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	21
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
	opt	stack 11
; Regs used in _setTxData: [wregfsr1]
	line	22
	
l13289:	
;RF_Control_A1.c: 22: if(RF->Enable) { if(RF->TransceiveGO == 0 && 1) { RF->TransceiveGO=1; RF_Data[0]=0x63; RF_Data[1]=0x02; RF_Data[2]=Product->Data[21]; RF_Data[3]=Product->Data[22]; RF_Data[4]=Product->Data[23]; RF_Data[5]=Product->Data[24]; RF_Data[6]=Product->Data[2
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u6371
	goto	u6370
u6371:
	goto	l5999
u6370:
	
l13291:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u6381
	goto	u6380
u6381:
	goto	l5999
u6380:
	
l13293:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	
l13295:	
	movlw	(063h)
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	(_RF_Data)
	
l13297:	
	movlw	(02h)
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+01h
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+02h
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+03h
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+04h
	movf	(_Product),w
	addlw	018h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	0+(_RF_Data)+05h
	movf	(_Product),w
	addlw	019h
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
	goto	l5999
	
l5998:	
	goto	l5999
	
l5997:	
	line	23
	
l5999:	
	return
	opt stack 0
GLOBAL	__end_of_setTxData
	__end_of_setTxData:
;; =============== function _setTxData ends ============

	signat	_setTxData,88
	global	_RF_Initial
psect	text1911,local,class=CODE,delta=2
global __ptext1911
__ptext1911:

;; *************** function _RF_Initial *****************
;; Defined at:
;;		line 6 in file "G:\Program\PIC\Source_File\RF_Control_A1.c"
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
psect	text1911
	file	"G:\Program\PIC\Source_File\RF_Control_A1.c"
	line	6
	global	__size_of_RF_Initial
	__size_of_RF_Initial	equ	__end_of_RF_Initial-_RF_Initial
	
_RF_Initial:	
	opt	stack 13
; Regs used in _RF_Initial: [wreg]
	line	7
	
l13287:	
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
	
l5969:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Initial
	__end_of_RF_Initial:
;; =============== function _RF_Initial ends ============

	signat	_RF_Initial,88
	global	_DelayTime_1us
psect	text1912,local,class=CODE,delta=2
global __ptext1912
__ptext1912:

;; *************** function _DelayTime_1us *****************
;; Defined at:
;;		line 322 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1912
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	322
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
	opt	stack 11
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	324
	
l14767:	
;CC2500_A1.c: 323: unsigned int i,j;
;CC2500_A1.c: 324: for(i=1;i<count;i++) { for(j=0;j<=1;j++); } ;;
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l4815
	
l4816:	
	
l14769:	
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l14771:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u8711
	goto	u8710
u8711:
	goto	l14775
u8710:
	goto	l14777
	
l14773:	
	goto	l14777
	
l4817:	
	
l14775:	
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
	goto	u8721
	goto	u8720
u8721:
	goto	l14775
u8720:
	goto	l14777
	
l4818:	
	
l14777:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l4815:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u8735
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u8735:
	skipc
	goto	u8731
	goto	u8730
u8731:
	goto	l14769
u8730:
	goto	l4820
	
l4819:	
	line	327
	
l4820:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTime_1us
	__end_of_DelayTime_1us:
;; =============== function _DelayTime_1us ends ============

	signat	_DelayTime_1us,4216
	global	_CC2500_ReadByte
psect	text1913,local,class=CODE,delta=2
global __ptext1913
__ptext1913:

;; *************** function _CC2500_ReadByte *****************
;; Defined at:
;;		line 235 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1913
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	235
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
	opt	stack 11
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	237
	
l14749:	
;CC2500_A1.c: 236: unsigned char loop_b;
;CC2500_A1.c: 237: for(loop_b=0;loop_b<8;loop_b++) { RC1=1; SPI0Buffer<<=1; if(RC2 == 1) SPI0Buffer |= 0x01; else SPI0Buffer &= 0xFE; RC1=0; } ;;
	clrf	(CC2500_ReadByte@loop_b)
	
l14751:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u8681
	goto	u8680
u8681:
	goto	l4784
u8680:
	goto	l4788
	
l14753:	
	goto	l4788
	
l4784:	
	movlb 0	; select bank0
	bsf	(113/8),(113)&7
	
l14755:	
	clrc
	rlf	(_SPI0Buffer),f

	
l14757:	
	btfss	(114/8),(114)&7
	goto	u8691
	goto	u8690
u8691:
	goto	l14761
u8690:
	
l14759:	
	bsf	(_SPI0Buffer)+(0/8),(0)&7
	goto	l14763
	
l4786:	
	
l14761:	
	movlw	(0FEh)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	andwf	(_SPI0Buffer),f
	goto	l14763
	
l4787:	
	
l14763:	
	bcf	(113/8),(113)&7
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l14765:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u8701
	goto	u8700
u8701:
	goto	l4784
u8700:
	goto	l4788
	
l4785:	
	line	250
	
l4788:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadByte
	__end_of_CC2500_ReadByte:
;; =============== function _CC2500_ReadByte ends ============

	signat	_CC2500_ReadByte,88
	global	_CC2500_WriteByte
psect	text1914,local,class=CODE,delta=2
global __ptext1914
__ptext1914:

;; *************** function _CC2500_WriteByte *****************
;; Defined at:
;;		line 215 in file "G:\Program\PIC\Source_File\CC2500_A1.c"
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
psect	text1914
	file	"G:\Program\PIC\Source_File\CC2500_A1.c"
	line	215
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
	opt	stack 11
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	217
	
l14733:	
;CC2500_A1.c: 216: unsigned char loop_a;
;CC2500_A1.c: 217: for(loop_a=0;loop_a<8;loop_a++) { if(SPI0Buffer&0x80) RC0=1; else RC0=0; RC1=1; SPI0Buffer<<=1; RC1=0; } ;;
	clrf	(CC2500_WriteByte@loop_a)
	
l14735:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u8651
	goto	u8650
u8651:
	goto	l4777
u8650:
	goto	l4781
	
l14737:	
	goto	l4781
	
l4777:	
	movlb 0	; select bank0
	btfss	(_SPI0Buffer),(7)&7
	goto	u8661
	goto	u8660
u8661:
	goto	l4779
u8660:
	
l14739:	
	bsf	(112/8),(112)&7
	goto	l4780
	
l4779:	
	bcf	(112/8),(112)&7
	
l4780:	
	bsf	(113/8),(113)&7
	
l14741:	
	clrc
	rlf	(_SPI0Buffer),f

	
l14743:	
	bcf	(113/8),(113)&7
	
l14745:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l14747:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u8671
	goto	u8670
u8671:
	goto	l4777
u8670:
	goto	l4781
	
l4778:	
	line	230
	
l4781:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteByte
	__end_of_CC2500_WriteByte:
;; =============== function _CC2500_WriteByte ends ============

	signat	_CC2500_WriteByte,88
	global	_Buzzer_Main
psect	text1915,local,class=CODE,delta=2
global __ptext1915
__ptext1915:

;; *************** function _Buzzer_Main *****************
;; Defined at:
;;		line 23 in file "G:\Program\PIC\Source_File\Buzzer_A1.c"
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
psect	text1915
	file	"G:\Program\PIC\Source_File\Buzzer_A1.c"
	line	23
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
	opt	stack 13
; Regs used in _Buzzer_Main: [wreg+fsr1l-status,0]
	line	24
	
l13205:	
;Buzzer_A1.c: 24: if(Buzzer->GO) { Buzzer->Time++; if(Buzzer->Time == Buzzer->TimeValue) { Buzzer->Time=0; if(RB3 == 0) { RB3=1; } else { RB3=0; if(Buzzer->Count == 0) { if(Buzzer->BufferStatus) { Buzzer->BufferStatus=0; Buzzer->Count=(--Buzzer->CountBuffer); Buzzer->
	movlb 0	; select bank0
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u6221
	goto	u6220
u6221:
	goto	l3564
u6220:
	
l13207:	
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
l13209:	
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
	goto	u6235
	moviw	[1]fsr1
	xorwf	1+(??_Buzzer_Main+0)+0,w
u6235:
	skipz
	goto	u6231
	goto	u6230
u6231:
	goto	l3564
u6230:
	
l13211:	
	movf	(_Buzzer),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	
l13213:	
	btfsc	(107/8),(107)&7
	goto	u6241
	goto	u6240
u6241:
	goto	l3558
u6240:
	
l13215:	
	bsf	(107/8),(107)&7
	goto	l3564
	
l3558:	
	bcf	(107/8),(107)&7
	
l13217:	
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u6251
	goto	u6250
u6251:
	goto	l13229
u6250:
	
l13219:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u6261
	goto	u6260
u6261:
	goto	l13227
u6260:
	
l13221:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	
l13223:	
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
	
l13225:	
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
	goto	l3564
	
l3561:	
	
l13227:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	l3564
	
l3562:	
	goto	l3564
	
l3560:	
	
l13229:	
	movf	(_Buzzer),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l3564
	
l3563:	
	goto	l3564
	
l3559:	
	goto	l3564
	
l3557:	
	goto	l3564
	
l3556:	
	line	25
	
l3564:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Main
	__end_of_Buzzer_Main:
;; =============== function _Buzzer_Main ends ============

	signat	_Buzzer_Main,88
	global	_Buzzer_Initial
psect	text1916,local,class=CODE,delta=2
global __ptext1916
__ptext1916:

;; *************** function _Buzzer_Initial *****************
;; Defined at:
;;		line 18 in file "G:\Program\PIC\Source_File\Buzzer_A1.c"
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
psect	text1916
	file	"G:\Program\PIC\Source_File\Buzzer_A1.c"
	line	18
	global	__size_of_Buzzer_Initial
	__size_of_Buzzer_Initial	equ	__end_of_Buzzer_Initial-_Buzzer_Initial
	
_Buzzer_Initial:	
	opt	stack 13
; Regs used in _Buzzer_Initial: [wregfsr1]
	line	19
	
l13201:	
;Buzzer_A1.c: 19: Buzzer=&VarBuzzer; Buzzer->Enable=1; ;;
	movlw	(_VarBuzzer)&0ffh
	movwf	(??_Buzzer_Initial+0)+0
	movf	(??_Buzzer_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_Buzzer)
	
l13203:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	20
	
l3553:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initial
	__end_of_Buzzer_Initial:
;; =============== function _Buzzer_Initial ends ============

	signat	_Buzzer_Initial,88
	global	_setBuzzer
psect	text1917,local,class=CODE,delta=2
global __ptext1917
__ptext1917:

;; *************** function _setBuzzer *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\Buzzer_A1.c"
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
;;		_getRxData
;;		_main
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text1917
	file	"G:\Program\PIC\Source_File\Buzzer_A1.c"
	line	8
	global	__size_of_setBuzzer
	__size_of_setBuzzer	equ	__end_of_setBuzzer-_setBuzzer
	
_setBuzzer:	
	opt	stack 11
; Regs used in _setBuzzer: [wreg+fsr1l-status,0]
;setBuzzer@count stored from wreg
	movwf	(setBuzzer@count)
	line	9
	
l13179:	
;Buzzer_A1.c: 9: if(Buzzer->Enable) { if(Buzzer->GO == 0) { Buzzer->GO=1; RB3=1; Buzzer->Count=(--count); Buzzer->TimeValue=time; if(Buzzer->TimeValue == 0) { Buzzer->TimeValue=100; } } else { if(Buzzer->BufferStatus == 0) { Buzzer->BufferStatus=1; Buzzer->CountBuffe
	movlb 0	; select bank0
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u6181
	goto	u6180
u6181:
	goto	l3547
u6180:
	
l13181:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u6191
	goto	u6190
u6191:
	goto	l13195
u6190:
	
l13183:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	
l13185:	
	bsf	(107/8),(107)&7
	
l13187:	
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
	
l13189:	
	movf	(_Buzzer),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setBuzzer@time),w
	movwi	[0]fsr1
	movf	(setBuzzer@time+1),w
	movwi	[1]fsr1
	
l13191:	
	movf	(_Buzzer),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	fsr1++
	iorwf	indf1,w
	skipz
	goto	u6201
	goto	u6200
u6201:
	goto	l3547
u6200:
	
l13193:	
	movf	(_Buzzer),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(064h)
	movwi	[0]fsr1
	movlw	high(064h)
	movwi	[1]fsr1
	goto	l3547
	
l3544:	
	goto	l3547
	
l3543:	
	
l13195:	
	movf	(_Buzzer),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u6211
	goto	u6210
u6211:
	goto	l3547
u6210:
	
l13197:	
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
	goto	l3547
	
l3546:	
	goto	l3547
	
l3545:	
	goto	l3547
	
l3542:	
	line	10
	
l3547:	
	return
	opt stack 0
GLOBAL	__end_of_setBuzzer
	__end_of_setBuzzer:
;; =============== function _setBuzzer ends ============

	signat	_setBuzzer,8312
	global	_Flash_Memory_Read
psect	text1918,local,class=CODE,delta=2
global __ptext1918
__ptext1918:

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 64 in file "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
psect	text1918
	file	"E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
	line	64
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
	opt	stack 11
; Regs used in _Flash_Memory_Read: [wreg]
;Flash_Memory_Read@address stored from wreg
	movwf	(Flash_Memory_Read@address)
	line	65
	
l13169:	
;MCU_16f1516_A.c: 65: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	66
	
l13171:	
;MCU_16f1516_A.c: 66: PMADRH=0x1a; PMADRL=address; CFGS=0; RD=1; i=PMDATH; ret=PMDATL; ;;
	movlw	(01Ah)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	movf	(Flash_Memory_Read@address),w
	movwf	(401)^0180h	;volatile
	
l13173:	
	bcf	(3246/8)^0180h,(3246)&7
	
l13175:	
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
	goto	l2406
	
l13177:	
	line	68
	
l2406:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
;; =============== function _Flash_Memory_Read ends ============

	signat	_Flash_Memory_Read,4217
	global	_setLED3
psect	text1919,local,class=CODE,delta=2
global __ptext1919
__ptext1919:

;; *************** function _setLED3 *****************
;; Defined at:
;;		line 22 in file "G:\Program\PIC\Source_File\LED_A1.c"
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
psect	text1919
	file	"G:\Program\PIC\Source_File\LED_A1.c"
	line	22
	global	__size_of_setLED3
	__size_of_setLED3	equ	__end_of_setLED3-_setLED3
	
_setLED3:	
	opt	stack 10
; Regs used in _setLED3: [wreg+fsr1l-status,0]
;setLED3@status stored from wreg
	movwf	(setLED3@status)
	line	23
	
l14715:	
;LED_A1.c: 23: if(status == 0) { RC7=!0; ;; } else if(status == 1) { RC7=!1; ;; } else if(status == 10) { _LED3->GO=0; _LED3->Time=0; RC7=!0; ;; } else if(status == 11) { _LED3->GO=1; } ;;
	movf	(setLED3@status),f
	skipz
	goto	u8611
	goto	u8610
u8611:
	goto	l14719
u8610:
	
l14717:	
	movlb 0	; select bank0
	bsf	(119/8),(119)&7
	goto	l7251
	
l7244:	
	
l14719:	
	movf	(setLED3@status),w
	xorlw	01h&0ffh
	skipz
	goto	u8621
	goto	u8620
u8621:
	goto	l14723
u8620:
	
l14721:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7
	goto	l7251
	
l7246:	
	
l14723:	
	movf	(setLED3@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u8631
	goto	u8630
u8631:
	goto	l14729
u8630:
	
l14725:	
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
	
l14727:	
	bsf	(119/8),(119)&7
	goto	l7251
	
l7248:	
	
l14729:	
	movf	(setLED3@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u8641
	goto	u8640
u8641:
	goto	l7251
u8640:
	
l14731:	
	movlb 0	; select bank0
	movf	(__LED3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l7251
	
l7250:	
	goto	l7251
	
l7249:	
	goto	l7251
	
l7247:	
	goto	l7251
	
l7245:	
	line	24
	
l7251:	
	return
	opt stack 0
GLOBAL	__end_of_setLED3
	__end_of_setLED3:
;; =============== function _setLED3 ends ============

	signat	_setLED3,4216
	global	_setLED2
psect	text1920,local,class=CODE,delta=2
global __ptext1920
__ptext1920:

;; *************** function _setLED2 *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\Source_File\LED_A1.c"
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
psect	text1920
	file	"G:\Program\PIC\Source_File\LED_A1.c"
	line	17
	global	__size_of_setLED2
	__size_of_setLED2	equ	__end_of_setLED2-_setLED2
	
_setLED2:	
	opt	stack 10
; Regs used in _setLED2: [wreg+fsr1l-status,0]
;setLED2@status stored from wreg
	movwf	(setLED2@status)
	line	18
	
l14697:	
;LED_A1.c: 18: if(status == 0) { RC6=!0; ;; } else if(status == 1) { RC6=!1; ;; } else if(status == 10) { _LED2->GO=0; _LED2->Time=0; RC6=!0; ;; } else if(status == 11) { _LED2->GO=1; } ;;
	movf	(setLED2@status),f
	skipz
	goto	u8571
	goto	u8570
u8571:
	goto	l14701
u8570:
	
l14699:	
	movlb 0	; select bank0
	bsf	(118/8),(118)&7
	goto	l7241
	
l7234:	
	
l14701:	
	movf	(setLED2@status),w
	xorlw	01h&0ffh
	skipz
	goto	u8581
	goto	u8580
u8581:
	goto	l14705
u8580:
	
l14703:	
	movlb 0	; select bank0
	bcf	(118/8),(118)&7
	goto	l7241
	
l7236:	
	
l14705:	
	movf	(setLED2@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u8591
	goto	u8590
u8591:
	goto	l14711
u8590:
	
l14707:	
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
	
l14709:	
	bsf	(118/8),(118)&7
	goto	l7241
	
l7238:	
	
l14711:	
	movf	(setLED2@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u8601
	goto	u8600
u8601:
	goto	l7241
u8600:
	
l14713:	
	movlb 0	; select bank0
	movf	(__LED2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l7241
	
l7240:	
	goto	l7241
	
l7239:	
	goto	l7241
	
l7237:	
	goto	l7241
	
l7235:	
	line	19
	
l7241:	
	return
	opt stack 0
GLOBAL	__end_of_setLED2
	__end_of_setLED2:
;; =============== function _setLED2 ends ============

	signat	_setLED2,4216
	global	_setLED1
psect	text1921,local,class=CODE,delta=2
global __ptext1921
__ptext1921:

;; *************** function _setLED1 *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\Source_File\LED_A1.c"
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
psect	text1921
	file	"G:\Program\PIC\Source_File\LED_A1.c"
	line	12
	global	__size_of_setLED1
	__size_of_setLED1	equ	__end_of_setLED1-_setLED1
	
_setLED1:	
	opt	stack 10
; Regs used in _setLED1: [wreg+fsr1l-status,0]
;setLED1@status stored from wreg
	movwf	(setLED1@status)
	line	13
	
l14679:	
;LED_A1.c: 13: if(status == 0) { RA3=!0; ;; } else if(status == 1) { RA3=!1; ;; } else if(status == 10) { _LED1->GO=0; _LED1->Time=0; RA3=!0; ;; } else if(status == 11) { _LED1->GO=1; } ;;
	movf	(setLED1@status),f
	skipz
	goto	u8531
	goto	u8530
u8531:
	goto	l14683
u8530:
	
l14681:	
	movlb 0	; select bank0
	bsf	(99/8),(99)&7
	goto	l7231
	
l7224:	
	
l14683:	
	movf	(setLED1@status),w
	xorlw	01h&0ffh
	skipz
	goto	u8541
	goto	u8540
u8541:
	goto	l14687
u8540:
	
l14685:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7
	goto	l7231
	
l7226:	
	
l14687:	
	movf	(setLED1@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u8551
	goto	u8550
u8551:
	goto	l14693
u8550:
	
l14689:	
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
	
l14691:	
	bsf	(99/8),(99)&7
	goto	l7231
	
l7228:	
	
l14693:	
	movf	(setLED1@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u8561
	goto	u8560
u8561:
	goto	l7231
u8560:
	
l14695:	
	movlb 0	; select bank0
	movf	(__LED1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l7231
	
l7230:	
	goto	l7231
	
l7229:	
	goto	l7231
	
l7227:	
	goto	l7231
	
l7225:	
	line	14
	
l7231:	
	return
	opt stack 0
GLOBAL	__end_of_setLED1
	__end_of_setLED1:
;; =============== function _setLED1 ends ============

	signat	_setLED1,4216
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 12 in file "E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
	file	"E:\MyBackup\20140709\Program\PIC\Source_File\MCU_16f1516_A.c"
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
	
i1l12839:	
;MCU_16f1516_A.c: 13: if(IOCIE && IOCIF && IOCBF2) { IOCBF2=0; IOCIF=0; _nop(); if(TMain->PowerON == 1) { TMR0=255; DimmerLights1->GO=1; DimmerLights2->GO=1; DimmerLights3->GO=1; ;; ;; } } ;;
	btfss	(91/8),(91)&7
	goto	u537_21
	goto	u537_20
u537_21:
	goto	i1l12857
u537_20:
	
i1l12841:	
	btfss	(88/8),(88)&7
	goto	u538_21
	goto	u538_20
u538_21:
	goto	i1l12857
u538_20:
	
i1l12843:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7
	goto	u539_21
	goto	u539_20
u539_21:
	goto	i1l12857
u539_20:
	
i1l12845:	
	bcf	(7346/8)^0380h,(7346)&7
	bcf	(88/8),(88)&7
	nop
	
i1l12847:	
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u540_21
	goto	u540_20
u540_21:
	goto	i1l12857
u540_20:
	
i1l12849:	
	movlw	(0FFh)
	movwf	(21)	;volatile
	
i1l12851:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
i1l12853:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
i1l12855:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l12857
	
i1l2288:	
	goto	i1l12857
	
i1l2287:	
	line	15
	
i1l12857:	
;MCU_16f1516_A.c: 15: if(TMR0IE && TMR0IF) { TMR0=(256-90); TMR0IF=0; if(DimmerLights1->GO) { DimmerLights1->Count++; if(DimmerLights1->Count >= DimmerLights1->DimmingValue) { DimmerLights1->Count=0; DimmerLights1->GO=0; DimmerLights1->Flag=1; if(DimmerLights1->StatusFlag
	btfss	(93/8),(93)&7
	goto	u541_21
	goto	u541_20
u541_21:
	goto	i1l13095
u541_20:
	
i1l12859:	
	btfss	(90/8),(90)&7
	goto	u542_21
	goto	u542_20
u542_21:
	goto	i1l13095
u542_20:
	
i1l12861:	
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	
i1l12863:	
	bcf	(90/8),(90)&7
	
i1l12865:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u543_21
	goto	u543_20
u543_21:
	goto	i1l12875
u543_20:
	
i1l12867:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l12869:	
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
	goto	u544_21
	goto	u544_20
u544_21:
	goto	i1l2293
u544_20:
	
i1l12871:	
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
	goto	u545_21
	goto	u545_20
u545_21:
	goto	i1l2293
u545_20:
	
i1l12873:	
	bsf	(103/8),(103)&7
	goto	i1l2293
	
i1l2292:	
	goto	i1l2293
	
i1l2291:	
	goto	i1l2293
	
i1l2290:	
	
i1l12875:	
	movf	(_DimmerLights1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u546_21
	goto	u546_20
u546_21:
	goto	i1l12931
u546_20:
	
i1l12877:	
	movf	(_DimmerLights1),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u547_21
	goto	u547_20
u547_21:
	goto	i1l12931
u547_20:
	
i1l12879:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l12881:	
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
	goto	u548_21
	goto	u548_20
u548_21:
	goto	i1l12931
u548_20:
	
i1l12883:	
	movf	(_DimmerLights1),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u549_21
	goto	u549_20
u549_21:
	goto	i1l12899
u549_20:
	
i1l12885:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u550_21
	goto	u550_20
u550_21:
	goto	i1l12893
u550_20:
	
i1l12887:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(026h)
	subwf	indf1,w
	skipc
	goto	u551_21
	goto	u551_20
u551_21:
	goto	i1l12891
u551_20:
	
i1l12889:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l12931
	
i1l2299:	
	
i1l12891:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,4
	goto	i1l12931
	
i1l2300:	
	goto	i1l12931
	
i1l2298:	
	
i1l12893:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(06Eh)
	subwf	indf1,w
	skipnc
	goto	u552_21
	goto	u552_20
u552_21:
	goto	i1l12897
u552_20:
	
i1l12895:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l12931
	
i1l2302:	
	
i1l12897:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	goto	i1l12931
	
i1l2303:	
	goto	i1l12931
	
i1l2301:	
	goto	i1l12931
	
i1l2297:	
	
i1l12899:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u553_21
	goto	u553_20
u553_21:
	goto	i1l12913
u553_20:
	
i1l12901:	
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
	goto	u554_21
	goto	u554_20
u554_21:
	goto	i1l12905
u554_20:
	
i1l12903:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l12909
	
i1l2306:	
	
i1l12905:	
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
	goto	u555_21
	goto	u555_20
u555_21:
	goto	i1l12909
u555_20:
	
i1l12907:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l12909
	
i1l2308:	
	goto	i1l12909
	
i1l2307:	
	
i1l12909:	
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
	goto	u556_21
	goto	u556_20
u556_21:
	goto	i1l12931
u556_20:
	
i1l12911:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	i1l12931
	
i1l2309:	
	goto	i1l12931
	
i1l2305:	
	
i1l12913:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,5
	goto	u557_21
	goto	u557_20
u557_21:
	goto	i1l12921
u557_20:
	
i1l12915:	
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l12917:	
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
	goto	u558_21
	goto	u558_20
u558_21:
	goto	i1l12931
u558_20:
	
i1l12919:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	i1l12931
	
i1l2312:	
	goto	i1l12931
	
i1l2311:	
	
i1l12921:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l12923:	
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
	goto	u559_21
	goto	u559_20
u559_21:
	goto	i1l12931
u559_20:
	
i1l12925:	
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
i1l12927:	
	nop
	
i1l12929:	
	fcall	i1_setLoad_JudgeValue
	movlw	(01h)
	fcall	i1_setLED1
	fcall	_Dimmer_Close
	goto	i1l12931
	
i1l2314:	
	goto	i1l12931
	
i1l2313:	
	goto	i1l12931
	
i1l2310:	
	goto	i1l12931
	
i1l2304:	
	goto	i1l12931
	
i1l2296:	
	goto	i1l12931
	
i1l2295:	
	goto	i1l12931
	
i1l2294:	
	
i1l12931:	
	movlb 0	; select bank0
	btfss	(103/8),(103)&7
	goto	u560_21
	goto	u560_20
u560_21:
	goto	i1l2293
u560_20:
	
i1l12933:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights1),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l12935:	
	movf	(_DimmerLights1),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u561_21
	goto	u561_20
u561_21:
	goto	i1l2293
u561_20:
	
i1l12937:	
	movf	(_DimmerLights1),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	
i1l12939:	
	bcf	(103/8),(103)&7
	goto	i1l2293
	
i1l2316:	
	goto	i1l2293
	
i1l2315:	
	
i1l2293:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u562_21
	goto	u562_20
u562_21:
	goto	i1l12949
u562_20:
	
i1l12941:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l12943:	
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
	goto	u563_21
	goto	u563_20
u563_21:
	goto	i1l2320
u563_20:
	
i1l12945:	
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
	goto	u564_21
	goto	u564_20
u564_21:
	goto	i1l2320
u564_20:
	
i1l12947:	
	bsf	(105/8),(105)&7
	goto	i1l2320
	
i1l2319:	
	goto	i1l2320
	
i1l2318:	
	goto	i1l2320
	
i1l2317:	
	
i1l12949:	
	movf	(_DimmerLights2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u565_21
	goto	u565_20
u565_21:
	goto	i1l13005
u565_20:
	
i1l12951:	
	movf	(_DimmerLights2),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u566_21
	goto	u566_20
u566_21:
	goto	i1l13005
u566_20:
	
i1l12953:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l12955:	
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
	goto	u567_21
	goto	u567_20
u567_21:
	goto	i1l13005
u567_20:
	
i1l12957:	
	movf	(_DimmerLights2),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u568_21
	goto	u568_20
u568_21:
	goto	i1l12973
u568_20:
	
i1l12959:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,4
	goto	u569_21
	goto	u569_20
u569_21:
	goto	i1l12967
u569_20:
	
i1l12961:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(026h)
	subwf	indf1,w
	skipc
	goto	u570_21
	goto	u570_20
u570_21:
	goto	i1l12965
u570_20:
	
i1l12963:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l13005
	
i1l2326:	
	
i1l12965:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,4
	goto	i1l13005
	
i1l2327:	
	goto	i1l13005
	
i1l2325:	
	
i1l12967:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(06Eh)
	subwf	indf1,w
	skipnc
	goto	u571_21
	goto	u571_20
u571_21:
	goto	i1l12971
u571_20:
	
i1l12969:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l13005
	
i1l2329:	
	
i1l12971:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,4
	goto	i1l13005
	
i1l2330:	
	goto	i1l13005
	
i1l2328:	
	goto	i1l13005
	
i1l2324:	
	
i1l12973:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u572_21
	goto	u572_20
u572_21:
	goto	i1l12987
u572_20:
	
i1l12975:	
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
	goto	u573_21
	goto	u573_20
u573_21:
	goto	i1l12979
u573_20:
	
i1l12977:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l12983
	
i1l2333:	
	
i1l12979:	
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
	goto	u574_21
	goto	u574_20
u574_21:
	goto	i1l12983
u574_20:
	
i1l12981:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l12983
	
i1l2335:	
	goto	i1l12983
	
i1l2334:	
	
i1l12983:	
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
	goto	u575_21
	goto	u575_20
u575_21:
	goto	i1l13005
u575_20:
	
i1l12985:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	i1l13005
	
i1l2336:	
	goto	i1l13005
	
i1l2332:	
	
i1l12987:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,5
	goto	u576_21
	goto	u576_20
u576_21:
	goto	i1l12995
u576_20:
	
i1l12989:	
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l12991:	
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
	goto	u577_21
	goto	u577_20
u577_21:
	goto	i1l13005
u577_20:
	
i1l12993:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	goto	i1l13005
	
i1l2339:	
	goto	i1l13005
	
i1l2338:	
	
i1l12995:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l12997:	
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
	goto	u578_21
	goto	u578_20
u578_21:
	goto	i1l13005
u578_20:
	
i1l12999:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	
i1l13001:	
	nop
	
i1l13003:	
	fcall	i1_setLoad_JudgeValue
	movlw	(01h)
	fcall	i1_setLED2
	fcall	_Dimmer_Close
	goto	i1l13005
	
i1l2341:	
	goto	i1l13005
	
i1l2340:	
	goto	i1l13005
	
i1l2337:	
	goto	i1l13005
	
i1l2331:	
	goto	i1l13005
	
i1l2323:	
	goto	i1l13005
	
i1l2322:	
	goto	i1l13005
	
i1l2321:	
	
i1l13005:	
	movlb 0	; select bank0
	btfss	(105/8),(105)&7
	goto	u579_21
	goto	u579_20
u579_21:
	goto	i1l2320
u579_20:
	
i1l13007:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights2),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l13009:	
	movf	(_DimmerLights2),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u580_21
	goto	u580_20
u580_21:
	goto	i1l2320
u580_20:
	
i1l13011:	
	movf	(_DimmerLights2),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	
i1l13013:	
	bcf	(105/8),(105)&7
	goto	i1l2320
	
i1l2343:	
	goto	i1l2320
	
i1l2342:	
	
i1l2320:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u581_21
	goto	u581_20
u581_21:
	goto	i1l13023
u581_20:
	
i1l13015:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l13017:	
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
	goto	u582_21
	goto	u582_20
u582_21:
	goto	i1l13089
u582_20:
	
i1l13019:	
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
	goto	u583_21
	goto	u583_20
u583_21:
	goto	i1l13089
u583_20:
	
i1l13021:	
	bsf	(108/8),(108)&7
	goto	i1l13089
	
i1l2346:	
	goto	i1l13089
	
i1l2345:	
	goto	i1l13089
	
i1l2344:	
	
i1l13023:	
	movf	(_DimmerLights3),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u584_21
	goto	u584_20
u584_21:
	goto	i1l13079
u584_20:
	
i1l13025:	
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
	goto	u585_21
	goto	u585_20
u585_21:
	goto	i1l13079
u585_20:
	
i1l13027:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l13029:	
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
	goto	u586_21
	goto	u586_20
u586_21:
	goto	i1l13079
u586_20:
	
i1l13031:	
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
	goto	u587_21
	goto	u587_20
u587_21:
	goto	i1l13047
u587_20:
	
i1l13033:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u588_21
	goto	u588_20
u588_21:
	goto	i1l13041
u588_20:
	
i1l13035:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(026h)
	subwf	indf1,w
	skipc
	goto	u589_21
	goto	u589_20
u589_21:
	goto	i1l13039
u589_20:
	
i1l13037:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l13079
	
i1l2353:	
	
i1l13039:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l13079
	
i1l2354:	
	goto	i1l13079
	
i1l2352:	
	
i1l13041:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(06Eh)
	subwf	indf1,w
	skipnc
	goto	u590_21
	goto	u590_20
u590_21:
	goto	i1l13045
u590_20:
	
i1l13043:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l13079
	
i1l2356:	
	
i1l13045:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l13079
	
i1l2357:	
	goto	i1l13079
	
i1l2355:	
	goto	i1l13079
	
i1l2351:	
	
i1l13047:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u591_21
	goto	u591_20
u591_21:
	goto	i1l13061
u591_20:
	
i1l13049:	
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
	goto	u592_21
	goto	u592_20
u592_21:
	goto	i1l13053
u592_20:
	
i1l13051:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l13057
	
i1l2360:	
	
i1l13053:	
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
	goto	u593_21
	goto	u593_20
u593_21:
	goto	i1l13057
u593_20:
	
i1l13055:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l13057
	
i1l2362:	
	goto	i1l13057
	
i1l2361:	
	
i1l13057:	
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
	goto	u594_21
	goto	u594_20
u594_21:
	goto	i1l13079
u594_20:
	
i1l13059:	
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
	goto	i1l13079
	
i1l2363:	
	goto	i1l13079
	
i1l2359:	
	
i1l13061:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u595_21
	goto	u595_20
u595_21:
	goto	i1l13069
u595_20:
	
i1l13063:	
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l13065:	
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
	goto	u596_21
	goto	u596_20
u596_21:
	goto	i1l13079
u596_20:
	
i1l13067:	
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l13079
	
i1l2366:	
	goto	i1l13079
	
i1l2365:	
	
i1l13069:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l13071:	
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
	goto	u597_21
	goto	u597_20
u597_21:
	goto	i1l13079
u597_20:
	
i1l13073:	
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
	
i1l13075:	
	nop
	
i1l13077:	
	fcall	i1_setLoad_JudgeValue
	movlw	(01h)
	fcall	i1_setLED3
	fcall	_Dimmer_Close
	goto	i1l13079
	
i1l2368:	
	goto	i1l13079
	
i1l2367:	
	goto	i1l13079
	
i1l2364:	
	goto	i1l13079
	
i1l2358:	
	goto	i1l13079
	
i1l2350:	
	goto	i1l13079
	
i1l2349:	
	goto	i1l13079
	
i1l2348:	
	
i1l13079:	
	movlb 0	; select bank0
	btfss	(108/8),(108)&7
	goto	u598_21
	goto	u598_20
u598_21:
	goto	i1l13089
u598_20:
	
i1l13081:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_DimmerLights3),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	
i1l13083:	
	movf	(_DimmerLights3),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u599_21
	goto	u599_20
u599_21:
	goto	i1l13089
u599_20:
	
i1l13085:	
	movf	(_DimmerLights3),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l13087:	
	bcf	(108/8),(108)&7
	goto	i1l13089
	
i1l2370:	
	goto	i1l13089
	
i1l2369:	
	goto	i1l13089
	
i1l2347:	
	
i1l13089:	
	movf	(_Timer0),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	
i1l13091:	
	movf	(_Timer0),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u600_25
	moviw	[1]fsr1
	xorlw	high(014h)
u600_25:
	skipz
	goto	u600_21
	goto	u600_20
u600_21:
	goto	i1l13095
u600_20:
	
i1l13093:	
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
	goto	i1l13095
	
i1l2371:	
	goto	i1l13095
	
i1l2289:	
	line	17
	
i1l13095:	
;MCU_16f1516_A.c: 17: _nop();
	nop
	line	21
	
i1l13097:	
;MCU_16f1516_A.c: 21: if(INTE && INTF) { INTF=0; INTE=0; RF->ReceiveGO=1; } ;;
	btfss	(92/8),(92)&7
	goto	u601_21
	goto	u601_20
u601_21:
	goto	i1l13105
u601_20:
	
i1l13099:	
	btfss	(89/8),(89)&7
	goto	u602_21
	goto	u602_20
u602_21:
	goto	i1l13105
u602_20:
	
i1l13101:	
	bcf	(89/8),(89)&7
	bcf	(92/8),(92)&7
	
i1l13103:	
	movlb 0	; select bank0
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l13105
	
i1l2372:	
	line	23
	
i1l13105:	
;MCU_16f1516_A.c: 23: _nop();
	nop
	line	25
	
i1l2373:	
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
;;		line 42 in file "G:\Program\PIC\Source_File\OverLoad_A.c"
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
	file	"G:\Program\PIC\Source_File\OverLoad_A.c"
	line	42
	global	__size_ofi1_setLoad_JudgeValue
	__size_ofi1_setLoad_JudgeValue	equ	__end_ofi1_setLoad_JudgeValue-i1_setLoad_JudgeValue
	
i1_setLoad_JudgeValue:	
	opt	stack 9
; Regs used in i1_setLoad_JudgeValue: []
	line	43
	
i1l13445:	
;OverLoad_A.c: 43: _nop();
	nop
	line	44
	
i1l1146:	
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
;;		line 22 in file "G:\Program\PIC\Source_File\LED_A1.c"
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
	file	"G:\Program\PIC\Source_File\LED_A1.c"
	line	22
	global	__size_ofi1_setLED3
	__size_ofi1_setLED3	equ	__end_ofi1_setLED3-i1_setLED3
	
i1_setLED3:	
	opt	stack 9
; Regs used in i1_setLED3: [wreg+fsr1l-status,0]
;i1setLED3@status stored from wreg
	movwf	(i1setLED3@status)
	line	23
	
i1l13483:	
;LED_A1.c: 23: if(status == 0) { RC7=!0; ;; } else if(status == 1) { RC7=!1; ;; } else if(status == 10) { _LED3->GO=0; _LED3->Time=0; RC7=!0; ;; } else if(status == 11) { _LED3->GO=1; } ;;
	movf	(i1setLED3@status),f
	skipz
	goto	u669_21
	goto	u669_20
u669_21:
	goto	i1l13487
u669_20:
	
i1l13485:	
	movlb 0	; select bank0
	bsf	(119/8),(119)&7
	goto	i1l7251
	
i1l7244:	
	
i1l13487:	
	movf	(i1setLED3@status),w
	xorlw	01h&0ffh
	skipz
	goto	u670_21
	goto	u670_20
u670_21:
	goto	i1l13491
u670_20:
	
i1l13489:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7
	goto	i1l7251
	
i1l7246:	
	
i1l13491:	
	movf	(i1setLED3@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u671_21
	goto	u671_20
u671_21:
	goto	i1l13497
u671_20:
	
i1l13493:	
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
	
i1l13495:	
	bsf	(119/8),(119)&7
	goto	i1l7251
	
i1l7248:	
	
i1l13497:	
	movf	(i1setLED3@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u672_21
	goto	u672_20
u672_21:
	goto	i1l7251
u672_20:
	
i1l13499:	
	movlb 0	; select bank0
	movf	(__LED3),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l7251
	
i1l7250:	
	goto	i1l7251
	
i1l7249:	
	goto	i1l7251
	
i1l7247:	
	goto	i1l7251
	
i1l7245:	
	line	24
	
i1l7251:	
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
;;		line 17 in file "G:\Program\PIC\Source_File\LED_A1.c"
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
	file	"G:\Program\PIC\Source_File\LED_A1.c"
	line	17
	global	__size_ofi1_setLED2
	__size_ofi1_setLED2	equ	__end_ofi1_setLED2-i1_setLED2
	
i1_setLED2:	
	opt	stack 9
; Regs used in i1_setLED2: [wreg+fsr1l-status,0]
;i1setLED2@status stored from wreg
	movwf	(i1setLED2@status)
	line	18
	
i1l13465:	
;LED_A1.c: 18: if(status == 0) { RC6=!0; ;; } else if(status == 1) { RC6=!1; ;; } else if(status == 10) { _LED2->GO=0; _LED2->Time=0; RC6=!0; ;; } else if(status == 11) { _LED2->GO=1; } ;;
	movf	(i1setLED2@status),f
	skipz
	goto	u665_21
	goto	u665_20
u665_21:
	goto	i1l13469
u665_20:
	
i1l13467:	
	movlb 0	; select bank0
	bsf	(118/8),(118)&7
	goto	i1l7241
	
i1l7234:	
	
i1l13469:	
	movf	(i1setLED2@status),w
	xorlw	01h&0ffh
	skipz
	goto	u666_21
	goto	u666_20
u666_21:
	goto	i1l13473
u666_20:
	
i1l13471:	
	movlb 0	; select bank0
	bcf	(118/8),(118)&7
	goto	i1l7241
	
i1l7236:	
	
i1l13473:	
	movf	(i1setLED2@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u667_21
	goto	u667_20
u667_21:
	goto	i1l13479
u667_20:
	
i1l13475:	
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
	
i1l13477:	
	bsf	(118/8),(118)&7
	goto	i1l7241
	
i1l7238:	
	
i1l13479:	
	movf	(i1setLED2@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u668_21
	goto	u668_20
u668_21:
	goto	i1l7241
u668_20:
	
i1l13481:	
	movlb 0	; select bank0
	movf	(__LED2),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l7241
	
i1l7240:	
	goto	i1l7241
	
i1l7239:	
	goto	i1l7241
	
i1l7237:	
	goto	i1l7241
	
i1l7235:	
	line	19
	
i1l7241:	
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
;;		line 12 in file "G:\Program\PIC\Source_File\LED_A1.c"
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
	file	"G:\Program\PIC\Source_File\LED_A1.c"
	line	12
	global	__size_ofi1_setLED1
	__size_ofi1_setLED1	equ	__end_ofi1_setLED1-i1_setLED1
	
i1_setLED1:	
	opt	stack 9
; Regs used in i1_setLED1: [wreg+fsr1l-status,0]
;i1setLED1@status stored from wreg
	movwf	(i1setLED1@status)
	line	13
	
i1l13447:	
;LED_A1.c: 13: if(status == 0) { RA3=!0; ;; } else if(status == 1) { RA3=!1; ;; } else if(status == 10) { _LED1->GO=0; _LED1->Time=0; RA3=!0; ;; } else if(status == 11) { _LED1->GO=1; } ;;
	movf	(i1setLED1@status),f
	skipz
	goto	u661_21
	goto	u661_20
u661_21:
	goto	i1l13451
u661_20:
	
i1l13449:	
	movlb 0	; select bank0
	bsf	(99/8),(99)&7
	goto	i1l7231
	
i1l7224:	
	
i1l13451:	
	movf	(i1setLED1@status),w
	xorlw	01h&0ffh
	skipz
	goto	u662_21
	goto	u662_20
u662_21:
	goto	i1l13455
u662_20:
	
i1l13453:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7
	goto	i1l7231
	
i1l7226:	
	
i1l13455:	
	movf	(i1setLED1@status),w
	xorlw	0Ah&0ffh
	skipz
	goto	u663_21
	goto	u663_20
u663_21:
	goto	i1l13461
u663_20:
	
i1l13457:	
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
	
i1l13459:	
	bsf	(99/8),(99)&7
	goto	i1l7231
	
i1l7228:	
	
i1l13461:	
	movf	(i1setLED1@status),w
	xorlw	0Bh&0ffh
	skipz
	goto	u664_21
	goto	u664_20
u664_21:
	goto	i1l7231
u664_20:
	
i1l13463:	
	movlb 0	; select bank0
	movf	(__LED1),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l7231
	
i1l7230:	
	goto	i1l7231
	
i1l7229:	
	goto	i1l7231
	
i1l7227:	
	goto	i1l7231
	
i1l7225:	
	line	14
	
i1l7231:	
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
;;		line 42 in file "G:\Program\PIC\Source_File\Dimmer_A1.c"
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
	file	"G:\Program\PIC\Source_File\Dimmer_A1.c"
	line	42
	global	__size_of_Dimmer_Close
	__size_of_Dimmer_Close	equ	__end_of_Dimmer_Close-_Dimmer_Close
	
_Dimmer_Close:	
	opt	stack 9
; Regs used in _Dimmer_Close: [wregfsr1]
	line	43
	
i1l13125:	
;Dimmer_A1.c: 43: if(DimmerLights1->Status == 0 && DimmerLights2->Status == 0 && DimmerLights3->Status == 0) { Memory->GO=1; };
	movf	(_DimmerLights1),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u607_21
	goto	u607_20
u607_21:
	goto	i1l8456
u607_20:
	
i1l13127:	
	movf	(_DimmerLights2),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u608_21
	goto	u608_20
u608_21:
	goto	i1l8456
u608_20:
	
i1l13129:	
	movlb 0	; select bank0
	movf	(_DimmerLights3),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u609_21
	goto	u609_20
u609_21:
	goto	i1l8456
u609_20:
	
i1l13131:	
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	i1l8456
	
i1l8455:	
	line	44
	
i1l8456:	
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
