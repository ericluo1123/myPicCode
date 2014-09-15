opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F1518
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
# 7 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	dw 0xFFFC & 0xFFE7 & 0xF9FF ;#
# 8 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	dw 0xFFFF & 0xFFFD ;#
	FNCALL	_main,_MainT_Initialization
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_Flash_Memory_Initialization
	FNCALL	_main,_LED_Initialization
	FNCALL	_main,_Buzzer_Initialization
	FNCALL	_main,_Temp_Initialization
	FNCALL	_main,_Load_Initialization
	FNCALL	_main,_PowerFault_Initialization
	FNCALL	_main,_DelayOff_Initialization
	FNCALL	_main,_DimmerLights_Initialization
	FNCALL	_main,_Switch_Initialization
	FNCALL	_main,_RF_Initialization
	FNCALL	_main,_CC2500_PowerOnInitial
	FNCALL	_main,_getLoad_AD
	FNCALL	_main,_getTemp_AD
	FNCALL	_main,_getPowerFault_AD
	FNCALL	_main,_Buzzer_Main
	FNCALL	_main,_MainT
	FNCALL	_main,_Flash_Memory_Main
	FNCALL	_main,_LED_Main
	FNCALL	_main,_Temp_Main
	FNCALL	_main,_Load_Main
	FNCALL	_main,_PowerFault_Main
	FNCALL	_main,_DimmerLights_Main
	FNCALL	_main,_Switch_Main
	FNCALL	_main,_RF_Main
	FNCALL	_main,_DelayOff_Main
	FNCALL	_RF_Main,_setRF_Main
	FNCALL	_setRF_Main,_RfPointSelect
	FNCALL	_setRF_Main,_CC2500_RxData
	FNCALL	_setRF_Main,_getRxData
	FNCALL	_setRF_Main,_CC2500_WriteCommand
	FNCALL	_setRF_Main,_setINT_GO
	FNCALL	_setRF_Main,_RF_RxDisable
	FNCALL	_setRF_Main,_CC2500_TxData
	FNCALL	_getRxData,_RfPointSelect
	FNCALL	_getRxData,_setLog_Code
	FNCALL	_getRxData,_setControl_Lights_Table
	FNCALL	_setControl_Lights_Table,_RfPointSelect
	FNCALL	_setControl_Lights_Table,_setDimmerLights
	FNCALL	_setControl_Lights_Table,_setRFSW_Status
	FNCALL	_setControl_Lights_Table,_setSw_Status
	FNCALL	_setControl_Lights_Table,_setBuz
	FNCALL	_setControl_Lights_Table,_setTxData
	FNCALL	_setControl_Lights_Table,_setRFSW_Control
	FNCALL	_setControl_Lights_Table,_setRFSW_AdjControl
	FNCALL	_PowerFault_Main,_setPowerFault_Main
	FNCALL	_Temp_Main,_setTemp_Main
	FNCALL	_setRFSW_AdjControl,_RfSWPointSelect
	FNCALL	_setRFSW_AdjControl,_setRF_DimmerValue
	FNCALL	_setRFSW_AdjControl,_setTxData
	FNCALL	_setPowerFault_Main,_getLoad_Safe
	FNCALL	_setPowerFault_Main,_getTemp_Safe
	FNCALL	_setPowerFault_Main,_setPowerFault_Exceptions
	FNCALL	_setTemp_Main,_getLoad_Safe
	FNCALL	_setTemp_Main,_getPF_Safe
	FNCALL	_setTemp_Main,_setOverTemp_Exceptions
	FNCALL	_Load_Main,_setLoad_Exceptions
	FNCALL	_Load_Main,___lwdiv
	FNCALL	_Load_Main,_setDimmerLights_Clear
	FNCALL	_Load_Main,___wmul
	FNCALL	_Load_Main,_setLoad_AH_AL_Restore
	FNCALL	_Load_Main,_getTemp_Safe
	FNCALL	_Load_Main,_getPF_Safe
	FNCALL	_setRF_DimmerValue,_setDimmerLights_AdjRF
	FNCALL	_setPowerFault_Exceptions,_DimmerLights_Exceptions
	FNCALL	_setPowerFault_Exceptions,_setLED
	FNCALL	_setPowerFault_Exceptions,_setSw_Enable
	FNCALL	_setPowerFault_Exceptions,_setRF_Enable
	FNCALL	_setOverTemp_Exceptions,_DimmerLights_Exceptions
	FNCALL	_setOverTemp_Exceptions,_setBuz
	FNCALL	_setOverTemp_Exceptions,_setLED
	FNCALL	_setOverTemp_Exceptions,_setSw_Enable
	FNCALL	_setOverTemp_Exceptions,_setRF_Enable
	FNCALL	_setLoad_Exceptions,_DimmerLights_Exceptions
	FNCALL	_setLoad_Exceptions,_setLED
	FNCALL	_setLoad_Exceptions,_setSw_Enable
	FNCALL	_setLoad_Exceptions,_setRF_Enable
	FNCALL	_Switch_Main,_setSw_Main
	FNCALL	_Flash_Memory_Main,_Flash_Memory_Modify
	FNCALL	_DimmerLights_Main,_setDimmerLights_Main
	FNCALL	_DimmerLights_Main,_DimmerLights_Close
	FNCALL	_setSw_Main,_SwPointSelect
	FNCALL	_setSw_Main,_Sw_DimmerOnFunc
	FNCALL	_setSw_Main,_Sw_DimmerAdjFunc
	FNCALL	_setSw_Main,_setRF_Learn
	FNCALL	_setSw_Main,_setBuz
	FNCALL	_setSw_Main,_Sw_DimmerOffFunc
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Erasing
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Write
	FNCALL	_Switch_Initialization,_TouchPower
	FNCALL	_Switch_Initialization,_setSw_Initialization
	FNCALL	_Flash_Memory_Initialization,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Initialization,_setPercentValue
	FNCALL	_Flash_Memory_Initialization,_Flash_Memory_Write
	FNCALL	_LED_Initialization,_setLED_Initialization
	FNCALL	_setDimmerLights_AdjRF,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_AdjRF,_getPercentValue
	FNCALL	_DimmerLights_Exceptions,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_Exceptions,_setBuz
	FNCALL	_DimmerLights_Exceptions,_setDimmerLights_ERROR
	FNCALL	_DimmerLights_Exceptions,_setDimmerLights_TriggerERROR
	FNCALL	_setDimmerLights_Main,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Main,_setDimmerLights
	FNCALL	_setDimmerLights_Main,_setDimmerLights_Adj
	FNCALL	_setDimmerLights_Main,_setBuz
	FNCALL	_DelayOff_Main,_DlyOff_Main
	FNCALL	_CC2500_PowerOnInitial,_CC2500_PowerRST
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitSetREG
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitPATable
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearTXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearRXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_FrequencyCabr
	FNCALL	_CC2500_PowerOnInitial,_CC2500_SIDLEMode
	FNCALL	_Sw_DimmerOffFunc,_setDimmerLights_TriggerAdj
	FNCALL	_Sw_DimmerOffFunc,_setDimmerLights_AdjGo
	FNCALL	_Sw_DimmerOffFunc,_setRF_DimmerLights
	FNCALL	_Sw_DimmerOffFunc,_setTxData
	FNCALL	_Sw_DimmerOffFunc,_setDimmerLights_Trigger
	FNCALL	_Sw_DimmerOffFunc,_setDimmerLights_Switch
	FNCALL	_Sw_DimmerOffFunc,_setDelayOff_GO
	FNCALL	_Sw_DimmerAdjFunc,_setRFSW_Status
	FNCALL	_Sw_DimmerAdjFunc,_setDimmerLights_TriggerAdj
	FNCALL	_Sw_DimmerAdjFunc,_setDimmerLights_AdjGo
	FNCALL	_Sw_DimmerOnFunc,_setBuz
	FNCALL	_Sw_DimmerOnFunc,_setRFSW_Status
	FNCALL	_Sw_DimmerOnFunc,_setDimmerLights_Trigger
	FNCALL	_Sw_DimmerOnFunc,_setDimmerLights_Switch
	FNCALL	_Sw_DimmerOnFunc,_setRF_DimmerLights
	FNCALL	_Sw_DimmerOnFunc,_setTxData
	FNCALL	_setSw_Initialization,_setLED
	FNCALL	_setRFSW_Control,_RfSWPointSelect
	FNCALL	_setRFSW_Control,_setDelayOff_GO
	FNCALL	_setRFSW_Control,_setSw_Status
	FNCALL	_setRFSW_Control,_setDimmerLights_Trigger
	FNCALL	_setRFSW_Control,_setDimmerLights_Switch
	FNCALL	_setRFSW_Control,_setRF_DimmerLights
	FNCALL	_setRFSW_Control,_setBuz
	FNCALL	_setRFSW_Control,_setTxData
	FNCALL	_setLog_Code,_RfPointSelect
	FNCALL	_setLog_Code,_setBuz
	FNCALL	_RF_RxDisable,_RfPointSelect
	FNCALL	_RF_RxDisable,_CC2500_WriteCommand
	FNCALL	_RF_RxDisable,_setINT_GO
	FNCALL	_Flash_Memory_Erasing,_Flash_Memory_Unlock
	FNCALL	_Flash_Memory_Write,_Flash_Memory_Unlock
	FNCALL	_MainT,_setTemp_Enable
	FNCALL	_MainT,_setLoad_Enable
	FNCALL	_MainT,_setBuz
	FNCALL	_MainT,_setSw_Enable
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_LED_Main,_setLED_Main
	FNCALL	_setLED_Initialization,_LedPointSelect
	FNCALL	_setLED_Initialization,_setLED
	FNCALL	_setPercentValue,___ftdiv
	FNCALL	_setPercentValue,___awtoft
	FNCALL	_setPercentValue,___fttol
	FNCALL	_getPercentValue,___ftdiv
	FNCALL	_getPercentValue,___awtoft
	FNCALL	_getPercentValue,___ftmul
	FNCALL	_getPercentValue,___ftadd
	FNCALL	_getPercentValue,___fttol
	FNCALL	_setDimmerLights_ERROR,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_ERROR,_setLoad_StatusOff
	FNCALL	_setDimmerLights_ERROR,_setLED
	FNCALL	_setDimmerLights_ERROR,_setSw_Status
	FNCALL	_setDimmerLights_ERROR,_setRFSW_Status
	FNCALL	_setDimmerLights_Adj,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Adj,_setLoad_StatusOff
	FNCALL	_setDimmerLights_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights_Adj,_setTxData
	FNCALL	_setDimmerLights,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights,_setLED
	FNCALL	_setDimmerLights,_setLoad_Count
	FNCALL	_setDimmerLights,_setLoad_StatusOn
	FNCALL	_DimmerLights_Initialization,_setDimmerLights_Initialization
	FNCALL	_DimmerLights_Initialization,_Dimmer_Initialization
	FNCALL	_DlyOff_Main,_DelayOffPointSelect
	FNCALL	_DlyOff_Main,_setSw_Status
	FNCALL	_DlyOff_Main,_setRFSW_Status
	FNCALL	_DlyOff_Main,_setRF_DimmerLights
	FNCALL	_DlyOff_Main,_setDimmerLights_Trigger
	FNCALL	_DlyOff_Main,_setDimmerLights_Switch
	FNCALL	_DlyOff_Main,_setTxData
	FNCALL	_DlyOff_Main,_setBuz
	FNCALL	_DelayOff_Initialization,_DlyOff_Initialization
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
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_setRF_Learn,_RfPointSelect
	FNCALL	_setRF_Enable,_RfPointSelect
	FNCALL	_setRF_Enable,_setINT_GO
	FNCALL	_setSw_Enable,_SwPointSelect
	FNCALL	_getPowerFault_AD,_getAD
	FNCALL	_getTemp_AD,_getAD
	FNCALL	_getLoad_AD,_getAD
	FNCALL	_RF_Initialization,_setRF_Initialization
	FNCALL	_PowerFault_Initialization,_setPowerFault_Initialization
	FNCALL	_Load_Initialization,_setLoad_AH_AL_Restore
	FNCALL	_Temp_Initialization,_setTemp_Initialization
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR0_Set
	FNCALL	_Mcu_Initialization,_ADC_Set
	FNCALL	_Mcu_Initialization,_INT_Set
	FNCALL	_Mcu_Initialization,_IOC_Set
	FNCALL	_setLED_Main,_LedPointSelect
	FNCALL	_setDimmerLights_Clear,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_TriggerAdj,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_AdjGo,_DimmerLightsPointSelect
	FNCALL	_setLED,_LedPointSelect
	FNCALL	_setDimmerLights_TriggerERROR,_DimmerLightsPointSelect
	FNCALL	_DimmerLights_Close,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_Close,_setLoad_GO
	FNCALL	_setDimmerLights_Initialization,_DimmerLightsPointSelect
	FNCALL	_setDelayOff_GO,_DelayOffPointSelect
	FNCALL	_setDelayOff_GO,_DelayTimejudge
	FNCALL	_setTxData,_RfPointSelect
	FNCALL	_setDimmerLights_Switch,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Trigger,_DimmerLightsPointSelect
	FNCALL	_setRFSW_Status,_RfSWPointSelect
	FNCALL	_setSw_Status,_SwPointSelect
	FNCALL	_DlyOff_Initialization,_DelayOffPointSelect
	FNCALL	_CC2500_WriteREG,_CC2500_WriteByte
	FNCALL	_CC2500_PowerRST,_DelayTime_1us
	FNCALL	_CC2500_PowerRST,_CC2500_WriteByte
	FNCALL	_setRF_RxStatus,_RfPointSelect
	FNCALL	_CC2500_ReadStatus,_CC2500_WriteByte
	FNCALL	_CC2500_ReadStatus,_CC2500_ReadByte
	FNCALL	_CC2500_WriteCommand,_CC2500_WriteByte
	FNCALL	_setBuz,___wmul
	FNROOT	_main
	FNCALL	_ISR,_IOC_ISR
	FNCALL	_ISR,_TMR0_ISR
	FNCALL	_ISR,_INT_ISR
	FNCALL	_INT_ISR,_setRF_ReceiveGO
	FNCALL	_setRF_ReceiveGO,i1_RfPointSelect
	FNCALL	_TMR0_ISR,i1_setLoad_StatusOff
	FNCALL	_IOC_ISR,_setDimmerReClock
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\10.Switch_1Key_Dimmer\Switch_1Key_Dimmer_V1.1.2\Release\Switch_1key_Dimmer_V1.2.1.1.1.h"
	line	297

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
	retlw	01h
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\CC2500_B1.h"
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\CC2500_B1.h"
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\CC2500_B1.h"
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
	global	_DimmerLights
	global	_Load
	global	_Sw
	global	_Buz
	global	_DimmerLights11
	global	_PF
	global	_RF
	global	_Temp
	global	_CC2500_Enable
	global	_Receive_GO
	global	_Receive_OK
	global	_RxStatus
	global	_Transceive_GO
	global	_Transceive_OK
	global	_TxStatus
	global	_RF_Data
	global	_RF_Count
	global	_CRC
	global	_DelayOff
	global	_Dimmer
	global	_DimmerLightsIntr
	global	_LED
	global	_RFSW
	global	_RSSI
	global	_Rx_Length
	global	_SPI0Buffer
	global	_Tx_Length
	global	_r_address
	global	_r_data
	global	_s_data
	global	_VarTMain
	global	_Temp1
	global	_DimmerLights1
	global	_Buz1
	global	_Sw1
	global	_VarMemory
	global	_Load1
	global	_PF1
	global	_VarTimer0
	global	_DlySw1
	global	_VarErrLED
	global	_VarLED1
	global	_VarLED2
	global	_Dimmer1
	global	_RF1
	global	_RFSW1
	global	_Product
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_Product:
       ds      1

	global	_TMain
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_TMain:
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
	global	_RB2
_RB2	set	106
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
	global	_RC7
_RC7	set	119
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	158
	global	_ADRESH
_ADRESH	set	156
	global	_ADRESL
_ADRESL	set	155
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
	global	_GO_nDONE
_GO_nDONE	set	1257
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
	global	_WPUB1
_WPUB1	set	4201
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
	global	_Memory
psect	nvBANK1,class=BANK1,space=1
global __pnvBANK1
__pnvBANK1:
_Memory:
       ds      1

	global	_Timer0
_Timer0:
       ds      1

	file	"Switch_1Key_Dimmer_V1.1.2.as"
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
_Buz:
       ds      1

_DimmerLights11:
       ds      1

_PF:
       ds      1

_RF:
       ds      1

_Temp:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_DimmerLights:
       ds      1

_Load:
       ds      1

_Sw:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_RF_Data:
       ds      21

_RF_Count:
       ds      2

_CRC:
       ds      1

_DelayOff:
       ds      1

_Dimmer:
       ds      1

_DimmerLightsIntr:
       ds      1

_LED:
       ds      1

_RFSW:
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

_PF1:
       ds      8

_VarTimer0:
       ds      7

_DlySw1:
       ds      5

_VarErrLED:
       ds      4

_VarLED1:
       ds      4

_VarLED2:
       ds      4

_Dimmer1:
       ds      3

_RF1:
       ds      2

_RFSW1:
       ds      1

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_VarTMain:
       ds      16

_Temp1:
       ds      14

_DimmerLights1:
       ds      13

_Buz1:
       ds      12

_Sw1:
       ds      9

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_VarMemory:
       ds      37

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\10.Switch_1Key_Dimmer\Switch_1Key_Dimmer_V1.1.2\Release\Switch_1key_Dimmer_V1.2.1.1.1.h"
	line	297
_VarProduct:
       ds      32

psect	bssBANK4,class=BANK4,space=1
global __pbssBANK4
__pbssBANK4:
_Load1:
       ds      71

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
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	04Ah
	fcall	clear_ram
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	040h
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	025h
	fcall	clear_ram
; Clear objects allocated to BANK4
psect cinit,class=CODE,delta=2
	global __pbssBANK4
	movlw	low(__pbssBANK4)
	movwf	fsr0l
	movlw	high(__pbssBANK4)
	movwf	fsr0h
	movlw	047h
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
	global	?_DlyOff_Initialization
?_DlyOff_Initialization:	; 0 bytes @ 0x0
	global	?_DlyOff_Main
?_DlyOff_Main:	; 0 bytes @ 0x0
	global	?_setTxData
?_setTxData:	; 0 bytes @ 0x0
	global	?_setDimmerLights_Initialization
?_setDimmerLights_Initialization:	; 0 bytes @ 0x0
	global	?_Dimmer_Initialization
?_Dimmer_Initialization:	; 0 bytes @ 0x0
	global	?_setLoad_GO
?_setLoad_GO:	; 0 bytes @ 0x0
	global	?_setDimmerLights_Main
?_setDimmerLights_Main:	; 0 bytes @ 0x0
	global	?_setDimmerLights_ERROR
?_setDimmerLights_ERROR:	; 0 bytes @ 0x0
	global	?_setLoad_Count
?_setLoad_Count:	; 0 bytes @ 0x0
	global	?_setLED_Initialization
?_setLED_Initialization:	; 0 bytes @ 0x0
	global	?_setLED_Main
?_setLED_Main:	; 0 bytes @ 0x0
	global	?_MainT_Initialization
?_MainT_Initialization:	; 0 bytes @ 0x0
	global	?_Mcu_Initialization
?_Mcu_Initialization:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Initialization
?_Flash_Memory_Initialization:	; 0 bytes @ 0x0
	global	?_Temp_Initialization
?_Temp_Initialization:	; 0 bytes @ 0x0
	global	?_Load_Initialization
?_Load_Initialization:	; 0 bytes @ 0x0
	global	?_PowerFault_Initialization
?_PowerFault_Initialization:	; 0 bytes @ 0x0
	global	?_Switch_Initialization
?_Switch_Initialization:	; 0 bytes @ 0x0
	global	?_RF_Initialization
?_RF_Initialization:	; 0 bytes @ 0x0
	global	?_getLoad_AD
?_getLoad_AD:	; 0 bytes @ 0x0
	global	?_getTemp_AD
?_getTemp_AD:	; 0 bytes @ 0x0
	global	?_getPowerFault_AD
?_getPowerFault_AD:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Main
?_Flash_Memory_Main:	; 0 bytes @ 0x0
	global	?_Temp_Main
?_Temp_Main:	; 0 bytes @ 0x0
	global	?_Load_Main
?_Load_Main:	; 0 bytes @ 0x0
	global	?_PowerFault_Main
?_PowerFault_Main:	; 0 bytes @ 0x0
	global	?_Switch_Main
?_Switch_Main:	; 0 bytes @ 0x0
	global	?_RF_Main
?_RF_Main:	; 0 bytes @ 0x0
	global	?_setTemp_Enable
?_setTemp_Enable:	; 0 bytes @ 0x0
	global	?_setLoad_Enable
?_setLoad_Enable:	; 0 bytes @ 0x0
	global	?_setSw_Enable
?_setSw_Enable:	; 0 bytes @ 0x0
	global	?_IO_Set
?_IO_Set:	; 0 bytes @ 0x0
	global	?_TMR0_Set
?_TMR0_Set:	; 0 bytes @ 0x0
	global	?_ADC_Set
?_ADC_Set:	; 0 bytes @ 0x0
	global	?_INT_Set
?_INT_Set:	; 0 bytes @ 0x0
	global	?_IOC_Set
?_IOC_Set:	; 0 bytes @ 0x0
	global	?_IOC_ISR
?_IOC_ISR:	; 0 bytes @ 0x0
	global	??_IOC_ISR
??_IOC_ISR:	; 0 bytes @ 0x0
	global	?_TMR0_ISR
?_TMR0_ISR:	; 0 bytes @ 0x0
	global	?_INT_ISR
?_INT_ISR:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Write
?_Flash_Memory_Write:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Modify
?_Flash_Memory_Modify:	; 0 bytes @ 0x0
	global	?_setLoad_AH_AL_Restore
?_setLoad_AH_AL_Restore:	; 0 bytes @ 0x0
	global	?_setLoad_Exceptions
?_setLoad_Exceptions:	; 0 bytes @ 0x0
	global	?_setTemp_Initialization
?_setTemp_Initialization:	; 0 bytes @ 0x0
	global	?_setTemp_Main
?_setTemp_Main:	; 0 bytes @ 0x0
	global	?_setOverTemp_Exceptions
?_setOverTemp_Exceptions:	; 0 bytes @ 0x0
	global	?_setPowerFault_Initialization
?_setPowerFault_Initialization:	; 0 bytes @ 0x0
	global	?_setPowerFault_Main
?_setPowerFault_Main:	; 0 bytes @ 0x0
	global	?_setPowerFault_Exceptions
?_setPowerFault_Exceptions:	; 0 bytes @ 0x0
	global	?_setRF_Initialization
?_setRF_Initialization:	; 0 bytes @ 0x0
	global	?_setRF_Main
?_setRF_Main:	; 0 bytes @ 0x0
	global	?_getRxData
?_getRxData:	; 0 bytes @ 0x0
	global	?_RF_RxDisable
?_RF_RxDisable:	; 0 bytes @ 0x0
	global	?_setLog_Code
?_setLog_Code:	; 0 bytes @ 0x0
	global	?_setControl_Lights_Table
?_setControl_Lights_Table:	; 0 bytes @ 0x0
	global	?_setRFSW_Control
?_setRFSW_Control:	; 0 bytes @ 0x0
	global	?_setRFSW_AdjControl
?_setRFSW_AdjControl:	; 0 bytes @ 0x0
	global	?_setRF_DimmerValue
?_setRF_DimmerValue:	; 0 bytes @ 0x0
	global	?_setSw_Initialization
?_setSw_Initialization:	; 0 bytes @ 0x0
	global	?_setSw_Main
?_setSw_Main:	; 0 bytes @ 0x0
	global	?_Sw_DimmerOnFunc
?_Sw_DimmerOnFunc:	; 0 bytes @ 0x0
	global	?_Sw_DimmerAdjFunc
?_Sw_DimmerAdjFunc:	; 0 bytes @ 0x0
	global	?_Sw_DimmerOffFunc
?_Sw_DimmerOffFunc:	; 0 bytes @ 0x0
	global	?_Buzzer_Initialization
?_Buzzer_Initialization:	; 0 bytes @ 0x0
	global	?_Buzzer_Main
?_Buzzer_Main:	; 0 bytes @ 0x0
	global	?_CC2500_TxData
?_CC2500_TxData:	; 0 bytes @ 0x0
	global	?_CC2500_RxData
?_CC2500_RxData:	; 0 bytes @ 0x0
	global	?_CC2500_PowerOnInitial
?_CC2500_PowerOnInitial:	; 0 bytes @ 0x0
	global	?_DelayOffPointSelect
?_DelayOffPointSelect:	; 0 bytes @ 0x0
	global	?_DelayOff_Initialization
?_DelayOff_Initialization:	; 0 bytes @ 0x0
	global	?_DelayOff_Main
?_DelayOff_Main:	; 0 bytes @ 0x0
	global	?_DimmerLightsPointSelect
?_DimmerLightsPointSelect:	; 0 bytes @ 0x0
	global	?_DimmerLights_Initialization
?_DimmerLights_Initialization:	; 0 bytes @ 0x0
	global	?_DimmerLights_Close
?_DimmerLights_Close:	; 0 bytes @ 0x0
	global	?_DimmerLights_Main
?_DimmerLights_Main:	; 0 bytes @ 0x0
	global	?_DimmerLights_Exceptions
?_DimmerLights_Exceptions:	; 0 bytes @ 0x0
	global	?_setDimmerLights_AdjRF
?_setDimmerLights_AdjRF:	; 0 bytes @ 0x0
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
	global	?_setDimmerReClock
?_setDimmerReClock:	; 0 bytes @ 0x0
	global	??_setDimmerReClock
??_setDimmerReClock:	; 0 bytes @ 0x0
	global	?_setINT_GO
?_setINT_GO:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Unlock
?_Flash_Memory_Unlock:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Erasing
?_Flash_Memory_Erasing:	; 0 bytes @ 0x0
	global	?_RfPointSelect
?_RfPointSelect:	; 0 bytes @ 0x0
	global	?_RfSWPointSelect
?_RfSWPointSelect:	; 0 bytes @ 0x0
	global	?_TouchPower
?_TouchPower:	; 0 bytes @ 0x0
	global	?_SwPointSelect
?_SwPointSelect:	; 0 bytes @ 0x0
	global	?i1_setLoad_StatusOff
?i1_setLoad_StatusOff:	; 0 bytes @ 0x0
	global	?i1_RfPointSelect
?i1_RfPointSelect:	; 0 bytes @ 0x0
	global	??i1_RfPointSelect
??i1_RfPointSelect:	; 0 bytes @ 0x0
	global	?_DelayTimejudge
?_DelayTimejudge:	; 1 bytes @ 0x0
	global	?_getDimmerLights_StatusFlag
?_getDimmerLights_StatusFlag:	; 1 bytes @ 0x0
	global	?_getPercentValue
?_getPercentValue:	; 1 bytes @ 0x0
	global	?_Flash_Memory_Read
?_Flash_Memory_Read:	; 1 bytes @ 0x0
	global	?_getTemp_Safe
?_getTemp_Safe:	; 1 bytes @ 0x0
	global	?_getPF_Safe
?_getPF_Safe:	; 1 bytes @ 0x0
	global	?_setPercentValue
?_setPercentValue:	; 1 bytes @ 0x0
	global	?_getLoad_Safe
?_getLoad_Safe:	; 1 bytes @ 0x0
	global	setRF_Initialization@rf
setRF_Initialization@rf:	; 1 bytes @ 0x0
	global	i1setLoad_StatusOff@command
i1setLoad_StatusOff@command:	; 1 bytes @ 0x0
	ds	1
	global	??i1_setLoad_StatusOff
??i1_setLoad_StatusOff:	; 0 bytes @ 0x1
	global	i1setLoad_StatusOff@lights
i1setLoad_StatusOff@lights:	; 1 bytes @ 0x1
	global	i1RfPointSelect@rf
i1RfPointSelect@rf:	; 1 bytes @ 0x1
	ds	1
	global	??_TMR0_ISR
??_TMR0_ISR:	; 0 bytes @ 0x2
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
	ds	2
	global	??_ISR
??_ISR:	; 0 bytes @ 0x6
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_CC2500_WriteByte
??_CC2500_WriteByte:	; 0 bytes @ 0x0
	global	??_CC2500_ReadByte
??_CC2500_ReadByte:	; 0 bytes @ 0x0
	global	?_DelayTime_1us
?_DelayTime_1us:	; 0 bytes @ 0x0
	global	?_setRF_DimmerLights
?_setRF_DimmerLights:	; 0 bytes @ 0x0
	global	??_DelayTimejudge
??_DelayTimejudge:	; 0 bytes @ 0x0
	global	??_Dimmer_Initialization
??_Dimmer_Initialization:	; 0 bytes @ 0x0
	global	??_getDimmerLights_StatusFlag
??_getDimmerLights_StatusFlag:	; 0 bytes @ 0x0
	global	??_setLoad_GO
??_setLoad_GO:	; 0 bytes @ 0x0
	global	?_setLoad_StatusOff
?_setLoad_StatusOff:	; 0 bytes @ 0x0
	global	??_setLoad_Count
??_setLoad_Count:	; 0 bytes @ 0x0
	global	?_setLoad_StatusOn
?_setLoad_StatusOn:	; 0 bytes @ 0x0
	global	??_MainT_Initialization
??_MainT_Initialization:	; 0 bytes @ 0x0
	global	??_setTemp_Enable
??_setTemp_Enable:	; 0 bytes @ 0x0
	global	??_setLoad_Enable
??_setLoad_Enable:	; 0 bytes @ 0x0
	global	??_IO_Set
??_IO_Set:	; 0 bytes @ 0x0
	global	??_TMR0_Set
??_TMR0_Set:	; 0 bytes @ 0x0
	global	??_ADC_Set
??_ADC_Set:	; 0 bytes @ 0x0
	global	??_INT_Set
??_INT_Set:	; 0 bytes @ 0x0
	global	??_IOC_Set
??_IOC_Set:	; 0 bytes @ 0x0
	global	??_Flash_Memory_Read
??_Flash_Memory_Read:	; 0 bytes @ 0x0
	global	??_Flash_Memory_Write
??_Flash_Memory_Write:	; 0 bytes @ 0x0
	global	??_setLoad_AH_AL_Restore
??_setLoad_AH_AL_Restore:	; 0 bytes @ 0x0
	global	??_getTemp_Safe
??_getTemp_Safe:	; 0 bytes @ 0x0
	global	??_getPF_Safe
??_getPF_Safe:	; 0 bytes @ 0x0
	global	??_setTemp_Initialization
??_setTemp_Initialization:	; 0 bytes @ 0x0
	global	??_setPowerFault_Initialization
??_setPowerFault_Initialization:	; 0 bytes @ 0x0
	global	??_setRF_Initialization
??_setRF_Initialization:	; 0 bytes @ 0x0
	global	??_Buzzer_Initialization
??_Buzzer_Initialization:	; 0 bytes @ 0x0
	global	??_Buzzer_Main
??_Buzzer_Main:	; 0 bytes @ 0x0
	global	??_DelayOffPointSelect
??_DelayOffPointSelect:	; 0 bytes @ 0x0
	global	??_DimmerLightsPointSelect
??_DimmerLightsPointSelect:	; 0 bytes @ 0x0
	global	??_LedPointSelect
??_LedPointSelect:	; 0 bytes @ 0x0
	global	??_setINT_GO
??_setINT_GO:	; 0 bytes @ 0x0
	global	??_Flash_Memory_Unlock
??_Flash_Memory_Unlock:	; 0 bytes @ 0x0
	global	??_Flash_Memory_Erasing
??_Flash_Memory_Erasing:	; 0 bytes @ 0x0
	global	??_getLoad_Safe
??_getLoad_Safe:	; 0 bytes @ 0x0
	global	??_RfPointSelect
??_RfPointSelect:	; 0 bytes @ 0x0
	global	??_RfSWPointSelect
??_RfSWPointSelect:	; 0 bytes @ 0x0
	global	??_TouchPower
??_TouchPower:	; 0 bytes @ 0x0
	global	??_SwPointSelect
??_SwPointSelect:	; 0 bytes @ 0x0
	global	?_getAD
?_getAD:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	setINT_GO@command
setINT_GO@command:	; 1 bytes @ 0x0
	global	getAD@adcon1
getAD@adcon1:	; 1 bytes @ 0x0
	global	setLoad_Enable@command
setLoad_Enable@command:	; 1 bytes @ 0x0
	global	setLoad_GO@command
setLoad_GO@command:	; 1 bytes @ 0x0
	global	setLoad_StatusOn@command
setLoad_StatusOn@command:	; 1 bytes @ 0x0
	global	setLoad_StatusOff@command
setLoad_StatusOff@command:	; 1 bytes @ 0x0
	global	setTemp_Enable@command
setTemp_Enable@command:	; 1 bytes @ 0x0
	global	setRF_DimmerLights@on
setRF_DimmerLights@on:	; 1 bytes @ 0x0
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_setRF_DimmerLights
??_setRF_DimmerLights:	; 0 bytes @ 0x1
	global	??_setLoad_StatusOff
??_setLoad_StatusOff:	; 0 bytes @ 0x1
	global	??_setLoad_StatusOn
??_setLoad_StatusOn:	; 0 bytes @ 0x1
	global	??_Mcu_Initialization
??_Mcu_Initialization:	; 0 bytes @ 0x1
	global	??_Temp_Initialization
??_Temp_Initialization:	; 0 bytes @ 0x1
	global	??_PowerFault_Initialization
??_PowerFault_Initialization:	; 0 bytes @ 0x1
	global	??_RF_Initialization
??_RF_Initialization:	; 0 bytes @ 0x1
	global	CC2500_WriteByte@loop_a
CC2500_WriteByte@loop_a:	; 1 bytes @ 0x1
	global	CC2500_ReadByte@loop_b
CC2500_ReadByte@loop_b:	; 1 bytes @ 0x1
	global	DelayOffPointSelect@sw
DelayOffPointSelect@sw:	; 1 bytes @ 0x1
	global	DelayTimejudge@i
DelayTimejudge@i:	; 1 bytes @ 0x1
	global	DimmerLightsPointSelect@lights
DimmerLightsPointSelect@lights:	; 1 bytes @ 0x1
	global	getDimmerLights_StatusFlag@Status
getDimmerLights_StatusFlag@Status:	; 1 bytes @ 0x1
	global	LedPointSelect@led
LedPointSelect@led:	; 1 bytes @ 0x1
	global	Flash_Memory_Read@i
Flash_Memory_Read@i:	; 1 bytes @ 0x1
	global	Flash_Memory_Write@i
Flash_Memory_Write@i:	; 1 bytes @ 0x1
	global	setLoad_Count@command
setLoad_Count@command:	; 1 bytes @ 0x1
	global	setLoad_StatusOn@lights
setLoad_StatusOn@lights:	; 1 bytes @ 0x1
	global	setLoad_StatusOff@lights
setLoad_StatusOff@lights:	; 1 bytes @ 0x1
	global	setLoad_AH_AL_Restore@i
setLoad_AH_AL_Restore@i:	; 1 bytes @ 0x1
	global	RfPointSelect@rf
RfPointSelect@rf:	; 1 bytes @ 0x1
	global	RfSWPointSelect@sw
RfSWPointSelect@sw:	; 1 bytes @ 0x1
	global	SwPointSelect@sw
SwPointSelect@sw:	; 1 bytes @ 0x1
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
	global	??_DlyOff_Initialization
??_DlyOff_Initialization:	; 0 bytes @ 0x2
	global	?_setSw_Status
?_setSw_Status:	; 0 bytes @ 0x2
	global	?_setRFSW_Status
?_setRFSW_Status:	; 0 bytes @ 0x2
	global	?_setDimmerLights_Trigger
?_setDimmerLights_Trigger:	; 0 bytes @ 0x2
	global	?_setDimmerLights_Switch
?_setDimmerLights_Switch:	; 0 bytes @ 0x2
	global	??_setTxData
??_setTxData:	; 0 bytes @ 0x2
	global	??_setDimmerLights_Initialization
??_setDimmerLights_Initialization:	; 0 bytes @ 0x2
	global	?_setDimmerLights_TriggerERROR
?_setDimmerLights_TriggerERROR:	; 0 bytes @ 0x2
	global	?_setLED
?_setLED:	; 0 bytes @ 0x2
	global	??_setLED_Main
??_setLED_Main:	; 0 bytes @ 0x2
	global	??_Load_Initialization
??_Load_Initialization:	; 0 bytes @ 0x2
	global	??_setSw_Enable
??_setSw_Enable:	; 0 bytes @ 0x2
	global	?_setRF_Enable
?_setRF_Enable:	; 0 bytes @ 0x2
	global	??_DimmerLights_Close
??_DimmerLights_Close:	; 0 bytes @ 0x2
	global	?_setDimmerLights_AdjGo
?_setDimmerLights_AdjGo:	; 0 bytes @ 0x2
	global	?_setDimmerLights_TriggerAdj
?_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x2
	global	?_setDimmerLights_Clear
?_setDimmerLights_Clear:	; 0 bytes @ 0x2
	global	??_getAD
??_getAD:	; 0 bytes @ 0x2
	global	?_setRF_Learn
?_setRF_Learn:	; 0 bytes @ 0x2
	global	CC2500_WriteREG@value
CC2500_WriteREG@value:	; 1 bytes @ 0x2
	global	DlyOff_Initialization@sw
DlyOff_Initialization@sw:	; 1 bytes @ 0x2
	global	DelayTimejudge@value
DelayTimejudge@value:	; 1 bytes @ 0x2
	global	setDimmerLights_TriggerERROR@command
setDimmerLights_TriggerERROR@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Switch@command
setDimmerLights_Switch@command:	; 1 bytes @ 0x2
	global	setDimmerLights_AdjGo@command
setDimmerLights_AdjGo@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Trigger@command
setDimmerLights_Trigger@command:	; 1 bytes @ 0x2
	global	setDimmerLights_TriggerAdj@command
setDimmerLights_TriggerAdj@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Clear@command
setDimmerLights_Clear@command:	; 1 bytes @ 0x2
	global	setLED@command
setLED@command:	; 1 bytes @ 0x2
	global	Flash_Memory_Read@address
Flash_Memory_Read@address:	; 1 bytes @ 0x2
	global	setRF_Learn@command
setRF_Learn@command:	; 1 bytes @ 0x2
	global	setRF_RxStatus@command
setRF_RxStatus@command:	; 1 bytes @ 0x2
	global	setRF_Enable@command
setRF_Enable@command:	; 1 bytes @ 0x2
	global	setRFSW_Status@command
setRFSW_Status@command:	; 1 bytes @ 0x2
	global	setSw_Enable@command
setSw_Enable@command:	; 1 bytes @ 0x2
	global	setSw_Status@command
setSw_Status@command:	; 1 bytes @ 0x2
	global	DelayTime_1us@i
DelayTime_1us@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_setRF_RxStatus
??_setRF_RxStatus:	; 0 bytes @ 0x3
	global	??_CC2500_WriteREG
??_CC2500_WriteREG:	; 0 bytes @ 0x3
	global	??_setSw_Status
??_setSw_Status:	; 0 bytes @ 0x3
	global	??_setRFSW_Status
??_setRFSW_Status:	; 0 bytes @ 0x3
	global	??_setDimmerLights_Trigger
??_setDimmerLights_Trigger:	; 0 bytes @ 0x3
	global	??_setDimmerLights_Switch
??_setDimmerLights_Switch:	; 0 bytes @ 0x3
	global	??_setDimmerLights_TriggerERROR
??_setDimmerLights_TriggerERROR:	; 0 bytes @ 0x3
	global	??_setLED
??_setLED:	; 0 bytes @ 0x3
	global	??_setRF_Enable
??_setRF_Enable:	; 0 bytes @ 0x3
	global	??_DelayOff_Initialization
??_DelayOff_Initialization:	; 0 bytes @ 0x3
	global	?_setDelayOff_GO
?_setDelayOff_GO:	; 0 bytes @ 0x3
	global	??_setDimmerLights_AdjGo
??_setDimmerLights_AdjGo:	; 0 bytes @ 0x3
	global	??_setDimmerLights_TriggerAdj
??_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x3
	global	??_setDimmerLights_Clear
??_setDimmerLights_Clear:	; 0 bytes @ 0x3
	global	??_setRF_Learn
??_setRF_Learn:	; 0 bytes @ 0x3
	global	CC2500_WriteCommand@command
CC2500_WriteCommand@command:	; 1 bytes @ 0x3
	global	CC2500_ReadStatus@status_addr
CC2500_ReadStatus@status_addr:	; 1 bytes @ 0x3
	global	setDelayOff_GO@command
setDelayOff_GO@command:	; 1 bytes @ 0x3
	global	setDimmerLights_Initialization@lights
setDimmerLights_Initialization@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_TriggerERROR@lights
setDimmerLights_TriggerERROR@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Switch@lights
setDimmerLights_Switch@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_AdjGo@lights
setDimmerLights_AdjGo@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Trigger@lights
setDimmerLights_Trigger@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_TriggerAdj@lights
setDimmerLights_TriggerAdj@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Clear@lights
setDimmerLights_Clear@lights:	; 1 bytes @ 0x3
	global	setLED@led
setLED@led:	; 1 bytes @ 0x3
	global	Flash_Memory_Read@ret
Flash_Memory_Read@ret:	; 1 bytes @ 0x3
	global	setRF_Learn@rf
setRF_Learn@rf:	; 1 bytes @ 0x3
	global	setRF_RxStatus@rf
setRF_RxStatus@rf:	; 1 bytes @ 0x3
	global	setTxData@rf
setTxData@rf:	; 1 bytes @ 0x3
	global	setRF_Enable@rf
setRF_Enable@rf:	; 1 bytes @ 0x3
	global	setRFSW_Status@sw
setRFSW_Status@sw:	; 1 bytes @ 0x3
	global	setRF_DimmerLights@status
setRF_DimmerLights@status:	; 1 bytes @ 0x3
	global	setSw_Status@sw
setSw_Status@sw:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_CC2500_ClearTXFIFO
??_CC2500_ClearTXFIFO:	; 0 bytes @ 0x4
	global	??_CC2500_ClearRXFIFO
??_CC2500_ClearRXFIFO:	; 0 bytes @ 0x4
	global	??_CC2500_SIDLEMode
??_CC2500_SIDLEMode:	; 0 bytes @ 0x4
	global	?_setDimmerLights
?_setDimmerLights:	; 0 bytes @ 0x4
	global	??_setDimmerLights_ERROR
??_setDimmerLights_ERROR:	; 0 bytes @ 0x4
	global	??_setLED_Initialization
??_setLED_Initialization:	; 0 bytes @ 0x4
	global	??_Flash_Memory_Modify
??_Flash_Memory_Modify:	; 0 bytes @ 0x4
	global	??_RF_RxDisable
??_RF_RxDisable:	; 0 bytes @ 0x4
	global	??_setSw_Initialization
??_setSw_Initialization:	; 0 bytes @ 0x4
	global	??_Sw_DimmerAdjFunc
??_Sw_DimmerAdjFunc:	; 0 bytes @ 0x4
	global	??_CC2500_TxData
??_CC2500_TxData:	; 0 bytes @ 0x4
	global	??_CC2500_RxData
??_CC2500_RxData:	; 0 bytes @ 0x4
	global	??_DimmerLights_Initialization
??_DimmerLights_Initialization:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	CC2500_WriteREG@w_addr
CC2500_WriteREG@w_addr:	; 1 bytes @ 0x4
	global	setDelayOff_GO@value
setDelayOff_GO@value:	; 1 bytes @ 0x4
	global	setDimmerLights@status
setDimmerLights@status:	; 1 bytes @ 0x4
	global	setLED_Initialization@led
setLED_Initialization@led:	; 1 bytes @ 0x4
	global	setLED_Main@led
setLED_Main@led:	; 1 bytes @ 0x4
	global	RF_RxDisable@rf
RF_RxDisable@rf:	; 1 bytes @ 0x4
	global	setRF_DimmerLights@lights
setRF_DimmerLights@lights:	; 1 bytes @ 0x4
	global	setSw_Initialization@sw
setSw_Initialization@sw:	; 1 bytes @ 0x4
	global	Sw_DimmerAdjFunc@sw
Sw_DimmerAdjFunc@sw:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	DelayTime_1us@j
DelayTime_1us@j:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??_CC2500_InitSetREG
??_CC2500_InitSetREG:	; 0 bytes @ 0x5
	global	??_CC2500_InitPATable
??_CC2500_InitPATable:	; 0 bytes @ 0x5
	global	??_setDimmerLights
??_setDimmerLights:	; 0 bytes @ 0x5
	global	?_setDimmerLights_Adj
?_setDimmerLights_Adj:	; 0 bytes @ 0x5
	global	??_Switch_Initialization
??_Switch_Initialization:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_setDelayOff_GO
??_setDelayOff_GO:	; 0 bytes @ 0x5
	global	??_LED_Initialization
??_LED_Initialization:	; 0 bytes @ 0x5
	global	??_LED_Main
??_LED_Main:	; 0 bytes @ 0x5
	global	CC2500_TxData@loop_e
CC2500_TxData@loop_e:	; 1 bytes @ 0x5
	global	CC2500_RxData@loop_f
CC2500_RxData@loop_f:	; 1 bytes @ 0x5
	global	setDimmerLights_ERROR@lights
setDimmerLights_ERROR@lights:	; 1 bytes @ 0x5
	global	setDimmerLights_Adj@status
setDimmerLights_Adj@status:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	??_CC2500_PowerRST
??_CC2500_PowerRST:	; 0 bytes @ 0x6
	global	??_CC2500_FrequencyCabr
??_CC2500_FrequencyCabr:	; 0 bytes @ 0x6
	global	??_setDimmerLights_Adj
??_setDimmerLights_Adj:	; 0 bytes @ 0x6
	global	?_setBuz
?_setBuz:	; 0 bytes @ 0x6
	global	CC2500_InitSetREG@temp1
CC2500_InitSetREG@temp1:	; 1 bytes @ 0x6
	global	CC2500_InitPATable@temp
CC2500_InitPATable@temp:	; 1 bytes @ 0x6
	global	setDimmerLights@lights
setDimmerLights@lights:	; 1 bytes @ 0x6
	global	getAD@adcon0
getAD@adcon0:	; 1 bytes @ 0x6
	global	Flash_Memory_Modify@i
Flash_Memory_Modify@i:	; 1 bytes @ 0x6
	global	setBuz@time
setBuz@time:	; 2 bytes @ 0x6
	ds	1
	global	??_getLoad_AD
??_getLoad_AD:	; 0 bytes @ 0x7
	global	??_getTemp_AD
??_getTemp_AD:	; 0 bytes @ 0x7
	global	??_getPowerFault_AD
??_getPowerFault_AD:	; 0 bytes @ 0x7
	global	??_Flash_Memory_Main
??_Flash_Memory_Main:	; 0 bytes @ 0x7
	global	CC2500_InitSetREG@temp2
CC2500_InitSetREG@temp2:	; 1 bytes @ 0x7
	global	CC2500_InitPATable@loop_d
CC2500_InitPATable@loop_d:	; 1 bytes @ 0x7
	global	setDelayOff_GO@sw
setDelayOff_GO@sw:	; 1 bytes @ 0x7
	global	setDimmerLights_Adj@lights
setDimmerLights_Adj@lights:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_Sw_DimmerOffFunc
??_Sw_DimmerOffFunc:	; 0 bytes @ 0x8
	global	??_setBuz
??_setBuz:	; 0 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	CC2500_InitSetREG@loop_c
CC2500_InitSetREG@loop_c:	; 1 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	??_CC2500_PowerOnInitial
??_CC2500_PowerOnInitial:	; 0 bytes @ 0x9
	global	setBuz@count
setBuz@count:	; 1 bytes @ 0x9
	ds	1
	global	??_DlyOff_Main
??_DlyOff_Main:	; 0 bytes @ 0xA
	global	??_setDimmerLights_Main
??_setDimmerLights_Main:	; 0 bytes @ 0xA
	global	??_MainT
??_MainT:	; 0 bytes @ 0xA
	global	??_setLog_Code
??_setLog_Code:	; 0 bytes @ 0xA
	global	??_setRFSW_Control
??_setRFSW_Control:	; 0 bytes @ 0xA
	global	??_Sw_DimmerOnFunc
??_Sw_DimmerOnFunc:	; 0 bytes @ 0xA
	global	??_DimmerLights_Exceptions
??_DimmerLights_Exceptions:	; 0 bytes @ 0xA
	global	setDimmerLights_Main@clear
setDimmerLights_Main@clear:	; 1 bytes @ 0xA
	global	DimmerLights_Exceptions@status
DimmerLights_Exceptions@status:	; 1 bytes @ 0xA
	global	Sw_DimmerOnFunc@Idle
Sw_DimmerOnFunc@Idle:	; 1 bytes @ 0xA
	global	Sw_DimmerOffFunc@sw
Sw_DimmerOffFunc@sw:	; 1 bytes @ 0xA
	ds	1
	global	??_setLoad_Exceptions
??_setLoad_Exceptions:	; 0 bytes @ 0xB
	global	??_setOverTemp_Exceptions
??_setOverTemp_Exceptions:	; 0 bytes @ 0xB
	global	??_setPowerFault_Exceptions
??_setPowerFault_Exceptions:	; 0 bytes @ 0xB
	global	setDimmerLights_Main@lights
setDimmerLights_Main@lights:	; 1 bytes @ 0xB
	global	getTemp_AD@channel
getTemp_AD@channel:	; 1 bytes @ 0xB
	global	getPowerFault_AD@channel
getPowerFault_AD@channel:	; 1 bytes @ 0xB
	global	setLog_Code@rf
setLog_Code@rf:	; 1 bytes @ 0xB
	global	setRFSW_Control@sw
setRFSW_Control@sw:	; 1 bytes @ 0xB
	global	Sw_DimmerOnFunc@sw
Sw_DimmerOnFunc@sw:	; 1 bytes @ 0xB
	ds	1
	global	??_setSw_Main
??_setSw_Main:	; 0 bytes @ 0xC
	global	??_DimmerLights_Main
??_DimmerLights_Main:	; 0 bytes @ 0xC
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
	global	DlyOff_Main@sw
DlyOff_Main@sw:	; 1 bytes @ 0xC
	global	getLoad_AD@channel
getLoad_AD@channel:	; 1 bytes @ 0xC
	global	setLoad_Exceptions@command
setLoad_Exceptions@command:	; 1 bytes @ 0xC
	global	setOverTemp_Exceptions@command
setOverTemp_Exceptions@command:	; 1 bytes @ 0xC
	global	setPowerFault_Exceptions@command
setPowerFault_Exceptions@command:	; 1 bytes @ 0xC
	ds	1
	global	??_Load_Main
??_Load_Main:	; 0 bytes @ 0xD
	global	??_setTemp_Main
??_setTemp_Main:	; 0 bytes @ 0xD
	global	??_setPowerFault_Main
??_setPowerFault_Main:	; 0 bytes @ 0xD
	global	??_DelayOff_Main
??_DelayOff_Main:	; 0 bytes @ 0xD
	global	getLoad_AD@j
getLoad_AD@j:	; 1 bytes @ 0xD
	ds	1
	global	getLoad_AD@i
getLoad_AD@i:	; 1 bytes @ 0xE
	global	_setSw_Main$20644
_setSw_Main$20644:	; 1 bytes @ 0xE
	ds	1
	global	??_PowerFault_Main
??_PowerFault_Main:	; 0 bytes @ 0xF
	global	setSw_Main@sw
setSw_Main@sw:	; 1 bytes @ 0xF
	ds	1
	global	??_Temp_Main
??_Temp_Main:	; 0 bytes @ 0x10
	global	??_Switch_Main
??_Switch_Main:	; 0 bytes @ 0x10
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x10
	ds	1
	global	Load_Main@i
Load_Main@i:	; 1 bytes @ 0x11
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x11
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x15
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	ds	3
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x19
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x1B
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1C
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1C
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1C
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1C
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1F
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1F
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x22
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x22
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x26
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x26
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x27
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x27
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x2A
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2A
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x2B
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2B
	ds	1
	global	??_setPercentValue
??_setPercentValue:	; 0 bytes @ 0x2C
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x2C
	global	setPercentValue@value
setPercentValue@value:	; 1 bytes @ 0x2C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x2C
	ds	1
	global	setPercentValue@i
setPercentValue@i:	; 3 bytes @ 0x2D
	ds	2
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2F
	ds	1
	global	??_Flash_Memory_Initialization
??_Flash_Memory_Initialization:	; 0 bytes @ 0x30
	ds	1
	global	Flash_Memory_Initialization@i
Flash_Memory_Initialization@i:	; 1 bytes @ 0x31
	ds	1
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x32
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x36
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x37
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x38
	ds	1
	global	??_getPercentValue
??_getPercentValue:	; 0 bytes @ 0x39
	ds	2
	global	getPercentValue@value
getPercentValue@value:	; 1 bytes @ 0x3B
	ds	1
	global	getPercentValue@i
getPercentValue@i:	; 3 bytes @ 0x3C
	ds	3
	global	??_setDimmerLights_AdjRF
??_setDimmerLights_AdjRF:	; 0 bytes @ 0x3F
	ds	1
	global	setDimmerLights_AdjRF@lights
setDimmerLights_AdjRF@lights:	; 1 bytes @ 0x40
	ds	1
	global	??_setRF_DimmerValue
??_setRF_DimmerValue:	; 0 bytes @ 0x41
	ds	2
	global	setRF_DimmerValue@lights
setRF_DimmerValue@lights:	; 1 bytes @ 0x43
	ds	1
	global	??_setRFSW_AdjControl
??_setRFSW_AdjControl:	; 0 bytes @ 0x44
	ds	2
	global	setRFSW_AdjControl@sw
setRFSW_AdjControl@sw:	; 1 bytes @ 0x46
	ds	1
	global	??_setControl_Lights_Table
??_setControl_Lights_Table:	; 0 bytes @ 0x47
	global	setControl_Lights_Table@rf
setControl_Lights_Table@rf:	; 1 bytes @ 0x47
	ds	1
	global	??_getRxData
??_getRxData:	; 0 bytes @ 0x48
	global	getRxData@rf
getRxData@rf:	; 1 bytes @ 0x48
	ds	1
	global	??_setRF_Main
??_setRF_Main:	; 0 bytes @ 0x49
	ds	1
	global	setRF_Main@rf
setRF_Main@rf:	; 1 bytes @ 0x4A
	ds	1
	global	_setRF_Main$19191
_setRF_Main$19191:	; 1 bytes @ 0x4B
	ds	1
	global	??_RF_Main
??_RF_Main:	; 0 bytes @ 0x4C
	global	??_main
??_main:	; 0 bytes @ 0x4C
;;Data sizes: Strings 0, constant 102, data 32, bss 254, persistent 4 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7      14
;; BANK0           80     76      80
;; BANK1           80      0      76
;; BANK2           80      0      64
;; BANK3           80      0      69
;; BANK4           80      0      71
;; BANK5           80      0       0
;; BANK6           80      0       0
;; BANK7           80      0       0
;; BANK8           80      0       0
;; BANK9           80      0       0
;; BANK10          80      0       0
;; BANK11          80      0       0
;; BANK12          48      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_getAD	int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; DimmerLightsIntr	PTR struct DimmerLights size(1) Largest target is 0
;;		 -> NULL(NULL[0]), 
;;
;; Sw	PTR struct Switch size(1) Largest target is 9
;;		 -> NULL(NULL[0]), Sw1(BANK2[9]), 
;;
;; RFSW	PTR struct RFSW size(1) Largest target is 1
;;		 -> NULL(NULL[0]), RFSW1(BANK1[1]), 
;;
;; RF	PTR struct RF size(1) Largest target is 2
;;		 -> NULL(NULL[0]), RF1(BANK1[2]), 
;;
;; PF	PTR struct PF size(1) Largest target is 8
;;		 -> NULL(NULL[0]), PF1(BANK1[8]), 
;;
;; Temp	PTR struct OverTemp size(1) Largest target is 14
;;		 -> NULL(NULL[0]), Temp1(BANK2[14]), 
;;
;; Load	PTR struct OverLoad size(1) Largest target is 71
;;		 -> NULL(NULL[0]), Load1(BANK4[71]), 
;;
;; Timer0	PTR struct Timer0 size(1) Largest target is 7
;;		 -> NULL(NULL[0]), VarTimer0(BANK1[7]), 
;;
;; LED	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarErrLED(BANK1[4]), VarLED2(BANK1[4]), VarLED1(BANK1[4]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 16
;;		 -> NULL(NULL[0]), VarTMain(BANK2[16]), 
;;
;; Memory	PTR struct FlashMemory size(1) Largest target is 37
;;		 -> NULL(NULL[0]), VarMemory(BANK3[37]), 
;;
;; Dimmer	PTR struct Dimmer size(1) Largest target is 3
;;		 -> NULL(NULL[0]), Dimmer1(BANK1[3]), 
;;
;; DimmerLights11	PTR struct DimmerLights size(1) Largest target is 13
;;		 -> NULL(NULL[0]), DimmerLights1(BANK2[13]), 
;;
;; DimmerLights	PTR struct DimmerLights size(1) Largest target is 13
;;		 -> NULL(NULL[0]), DimmerLights1(BANK2[13]), 
;;
;; Product	PTR struct Product size(1) Largest target is 32
;;		 -> NULL(NULL[0]), VarProduct(BANK3[32]), 
;;
;; DelayOff	PTR struct DelayOff size(1) Largest target is 5
;;		 -> NULL(NULL[0]), DlySw1(BANK1[5]), 
;;
;; Buz	PTR struct Buzzer size(1) Largest target is 12
;;		 -> NULL(NULL[0]), Buz1(BANK2[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_TMR0_ISR
;;   _INT_ISR->_setRF_ReceiveGO
;;   _setRF_ReceiveGO->i1_RfPointSelect
;;   _TMR0_ISR->i1_setLoad_StatusOff
;;
;; Critical Paths under _main in BANK0
;;
;;   _RF_Main->_setRF_Main
;;   _setRF_Main->_getRxData
;;   _getRxData->_setControl_Lights_Table
;;   _setControl_Lights_Table->_setRFSW_AdjControl
;;   _PowerFault_Main->_setPowerFault_Main
;;   _Temp_Main->_setTemp_Main
;;   _setRFSW_AdjControl->_setRF_DimmerValue
;;   _setPowerFault_Main->_setPowerFault_Exceptions
;;   _setTemp_Main->_setOverTemp_Exceptions
;;   _Load_Main->_setLoad_Exceptions
;;   _setRF_DimmerValue->_setDimmerLights_AdjRF
;;   _setPowerFault_Exceptions->_DimmerLights_Exceptions
;;   _setOverTemp_Exceptions->_DimmerLights_Exceptions
;;   _setLoad_Exceptions->_DimmerLights_Exceptions
;;   _Switch_Main->_setSw_Main
;;   _Flash_Memory_Main->_Flash_Memory_Modify
;;   _DimmerLights_Main->_setDimmerLights_Main
;;   _setSw_Main->_Sw_DimmerOnFunc
;;   _Flash_Memory_Modify->_Flash_Memory_Read
;;   _Switch_Initialization->_setSw_Initialization
;;   _Flash_Memory_Initialization->_setPercentValue
;;   _LED_Initialization->_setLED_Initialization
;;   _setDimmerLights_AdjRF->_getPercentValue
;;   _DimmerLights_Exceptions->_setBuz
;;   _setDimmerLights_Main->_setBuz
;;   _DelayOff_Main->_DlyOff_Main
;;   _CC2500_PowerOnInitial->_CC2500_InitSetREG
;;   _Sw_DimmerOffFunc->_setDelayOff_GO
;;   _Sw_DimmerAdjFunc->_setRFSW_Status
;;   _Sw_DimmerAdjFunc->_setDimmerLights_TriggerAdj
;;   _Sw_DimmerAdjFunc->_setDimmerLights_AdjGo
;;   _Sw_DimmerOnFunc->_setBuz
;;   _setSw_Initialization->_setLED
;;   _setRFSW_Control->_setBuz
;;   _setLog_Code->_setBuz
;;   _RF_RxDisable->_CC2500_WriteCommand
;;   _MainT->_setBuz
;;   _LED_Main->_setLED_Main
;;   _setLED_Initialization->_setLED
;;   _setPercentValue->___ftdiv
;;   _getPercentValue->___ftadd
;;   _setDimmerLights_ERROR->_setLED
;;   _setDimmerLights_ERROR->_setSw_Status
;;   _setDimmerLights_ERROR->_setRFSW_Status
;;   _setDimmerLights_Adj->_setRF_DimmerLights
;;   _setDimmerLights->_setLED
;;   _DimmerLights_Initialization->_setDimmerLights_Initialization
;;   _DlyOff_Main->_setBuz
;;   _DelayOff_Initialization->_DlyOff_Initialization
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
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   ___ftadd->___ftmul
;;   _setRF_Learn->_RfPointSelect
;;   _setRF_Enable->_RfPointSelect
;;   _setSw_Enable->_SwPointSelect
;;   _getPowerFault_AD->_getAD
;;   _getTemp_AD->_getAD
;;   _getLoad_AD->_getAD
;;   _RF_Initialization->_setRF_Initialization
;;   _PowerFault_Initialization->_setPowerFault_Initialization
;;   _Load_Initialization->_setLoad_AH_AL_Restore
;;   _Temp_Initialization->_setTemp_Initialization
;;   _Mcu_Initialization->_TMR0_Set
;;   _setLED_Main->_LedPointSelect
;;   _setDimmerLights_Clear->_DimmerLightsPointSelect
;;   _setDimmerLights_TriggerAdj->_DimmerLightsPointSelect
;;   _setDimmerLights_AdjGo->_DimmerLightsPointSelect
;;   _setLED->_LedPointSelect
;;   _setDimmerLights_TriggerERROR->_DimmerLightsPointSelect
;;   _DimmerLights_Close->_getDimmerLights_StatusFlag
;;   _setDimmerLights_Initialization->_DimmerLightsPointSelect
;;   _setDelayOff_GO->_DelayTimejudge
;;   _setTxData->_RfPointSelect
;;   _setDimmerLights_Switch->_DimmerLightsPointSelect
;;   _setDimmerLights_Trigger->_DimmerLightsPointSelect
;;   _setRFSW_Status->_RfSWPointSelect
;;   _setSw_Status->_SwPointSelect
;;   _DlyOff_Initialization->_DelayOffPointSelect
;;   _CC2500_WriteREG->_CC2500_WriteByte
;;   _CC2500_PowerRST->_DelayTime_1us
;;   _setRF_RxStatus->_RfPointSelect
;;   _CC2500_ReadStatus->_CC2500_WriteByte
;;   _CC2500_ReadStatus->_CC2500_ReadByte
;;   _CC2500_WriteCommand->_CC2500_WriteByte
;;   _setBuz->___wmul
;;   ___fttol->___ftpack
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
;; Critical Paths under _main in BANK7
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK7
;;
;;   None.
;;
;; Critical Paths under _main in BANK8
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK8
;;
;;   None.
;;
;; Critical Paths under _main in BANK9
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK9
;;
;;   None.
;;
;; Critical Paths under _main in BANK10
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK10
;;
;;   None.
;;
;; Critical Paths under _main in BANK11
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK11
;;
;;   None.
;;
;; Critical Paths under _main in BANK12
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK12
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
;; (0) _main                                                 0     0      0   27497
;;               _MainT_Initialization
;;                 _Mcu_Initialization
;;        _Flash_Memory_Initialization
;;                 _LED_Initialization
;;              _Buzzer_Initialization
;;                _Temp_Initialization
;;                _Load_Initialization
;;          _PowerFault_Initialization
;;            _DelayOff_Initialization
;;        _DimmerLights_Initialization
;;              _Switch_Initialization
;;                  _RF_Initialization
;;              _CC2500_PowerOnInitial
;;                         _getLoad_AD
;;                         _getTemp_AD
;;                   _getPowerFault_AD
;;                        _Buzzer_Main
;;                              _MainT
;;                  _Flash_Memory_Main
;;                           _LED_Main
;;                          _Temp_Main
;;                          _Load_Main
;;                    _PowerFault_Main
;;                  _DimmerLights_Main
;;                        _Switch_Main
;;                            _RF_Main
;;                      _DelayOff_Main
;; ---------------------------------------------------------------------------------
;; (1) _RF_Main                                              0     0      0    7492
;;                         _setRF_Main
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Main                                           3     3      0    7492
;;                                             73 BANK0      3     3      0
;;                      _RfPointSelect
;;                      _CC2500_RxData
;;                          _getRxData
;;                _CC2500_WriteCommand
;;                          _setINT_GO
;;                       _RF_RxDisable
;;                      _CC2500_TxData
;; ---------------------------------------------------------------------------------
;; (3) _getRxData                                            2     2      0    6565
;;                                             72 BANK0      1     1      0
;;                      _RfPointSelect
;;                        _setLog_Code
;;            _setControl_Lights_Table
;; ---------------------------------------------------------------------------------
;; (4) _setControl_Lights_Table                              1     1      0    6103
;;                                             71 BANK0      1     1      0
;;                      _RfPointSelect
;;                    _setDimmerLights
;;                     _setRFSW_Status
;;                       _setSw_Status
;;                             _setBuz
;;                          _setTxData
;;                    _setRFSW_Control
;;                 _setRFSW_AdjControl
;; ---------------------------------------------------------------------------------
;; (1) _PowerFault_Main                                      0     0      0    2473
;;                 _setPowerFault_Main
;; ---------------------------------------------------------------------------------
;; (1) _Temp_Main                                            0     0      0    2829
;;                       _setTemp_Main
;; ---------------------------------------------------------------------------------
;; (5) _setRFSW_AdjControl                                   3     3      0    2957
;;                                             68 BANK0      3     3      0
;;                    _RfSWPointSelect
;;                  _setRF_DimmerValue
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (2) _setPowerFault_Main                                   2     2      0    2473
;;                                             13 BANK0      2     2      0
;;                       _getLoad_Safe
;;                       _getTemp_Safe
;;           _setPowerFault_Exceptions
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Main                                         3     3      0    2829
;;                                             13 BANK0      3     3      0
;;                       _getLoad_Safe
;;                         _getPF_Safe
;;             _setOverTemp_Exceptions
;; ---------------------------------------------------------------------------------
;; (1) _Load_Main                                            5     5      0    3106
;;                                             13 BANK0      5     5      0
;;                 _setLoad_Exceptions
;;                            ___lwdiv
;;              _setDimmerLights_Clear
;;                             ___wmul
;;              _setLoad_AH_AL_Restore
;;                       _getTemp_Safe
;;                         _getPF_Safe
;; ---------------------------------------------------------------------------------
;; (6) _setRF_DimmerValue                                    3     3      0    2803
;;                                             65 BANK0      3     3      0
;;              _setDimmerLights_AdjRF
;; ---------------------------------------------------------------------------------
;; (3) _setPowerFault_Exceptions                             2     2      0    2473
;;                                             11 BANK0      2     2      0
;;            _DimmerLights_Exceptions
;;                             _setLED
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (3) _setOverTemp_Exceptions                               2     2      0    2829
;;                                             11 BANK0      2     2      0
;;            _DimmerLights_Exceptions
;;                             _setBuz
;;                             _setLED
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_Exceptions                                   2     2      0    2504
;;                                             11 BANK0      2     2      0
;;            _DimmerLights_Exceptions
;;                             _setLED
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (1) _Switch_Main                                          0     0      0    3196
;;                         _setSw_Main
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Main                                    0     0      0     307
;;                _Flash_Memory_Modify
;; ---------------------------------------------------------------------------------
;; (1) _DimmerLights_Main                                    0     0      0    1968
;;               _setDimmerLights_Main
;;                 _DimmerLights_Close
;; ---------------------------------------------------------------------------------
;; (2) _setSw_Main                                           4     4      0    3196
;;                                             12 BANK0      4     4      0
;;                      _SwPointSelect
;;                    _Sw_DimmerOnFunc
;;                   _Sw_DimmerAdjFunc
;;                        _setRF_Learn
;;                             _setBuz
;;                   _Sw_DimmerOffFunc
;; ---------------------------------------------------------------------------------
;; (2) _Flash_Memory_Modify                                  3     3      0     307
;;                                              4 BANK0      3     3      0
;;                  _Flash_Memory_Read
;;               _Flash_Memory_Erasing
;;                 _Flash_Memory_Write
;; ---------------------------------------------------------------------------------
;; (1) _Switch_Initialization                                0     0      0     562
;;                         _TouchPower
;;               _setSw_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Initialization                          2     2      0    1509
;;                                             48 BANK0      2     2      0
;;                  _Flash_Memory_Read
;;                    _setPercentValue
;;                 _Flash_Memory_Write
;; ---------------------------------------------------------------------------------
;; (1) _LED_Initialization                                   0     0      0     628
;;              _setLED_Initialization
;; ---------------------------------------------------------------------------------
;; (7) _setDimmerLights_AdjRF                                2     2      0    2737
;;                                             63 BANK0      2     2      0
;;            _DimmerLightsPointSelect
;;                    _getPercentValue
;; ---------------------------------------------------------------------------------
;; (4) _DimmerLights_Exceptions                              1     1      0    1619
;;                                             10 BANK0      1     1      0
;;         _getDimmerLights_StatusFlag
;;                             _setBuz
;;              _setDimmerLights_ERROR
;;       _setDimmerLights_TriggerERROR
;; ---------------------------------------------------------------------------------
;; (2) _setDimmerLights_Main                                 2     2      0    1913
;;                                             10 BANK0      2     2      0
;;            _DimmerLightsPointSelect
;;                    _setDimmerLights
;;                _setDimmerLights_Adj
;;                             _setBuz
;; ---------------------------------------------------------------------------------
;; (1) _DelayOff_Main                                        0     0      0    1100
;;                        _DlyOff_Main
;; ---------------------------------------------------------------------------------
;; (1) _CC2500_PowerOnInitial                                0     0      0     997
;;                    _CC2500_PowerRST
;;                  _CC2500_InitSetREG
;;                 _CC2500_InitPATable
;;                 _CC2500_ClearTXFIFO
;;                 _CC2500_ClearRXFIFO
;;               _CC2500_FrequencyCabr
;;                   _CC2500_SIDLEMode
;; ---------------------------------------------------------------------------------
;; (3) _Sw_DimmerOffFunc                                     3     3      0    1231
;;                                              8 BANK0      3     3      0
;;         _setDimmerLights_TriggerAdj
;;              _setDimmerLights_AdjGo
;;                 _setRF_DimmerLights
;;                          _setTxData
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                     _setDelayOff_GO
;; ---------------------------------------------------------------------------------
;; (3) _Sw_DimmerAdjFunc                                     1     1      0     345
;;                                              4 BANK0      1     1      0
;;                     _setRFSW_Status
;;         _setDimmerLights_TriggerAdj
;;              _setDimmerLights_AdjGo
;; ---------------------------------------------------------------------------------
;; (3) _Sw_DimmerOnFunc                                      2     2      0     997
;;                                             10 BANK0      2     2      0
;;                             _setBuz
;;                     _setRFSW_Status
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                 _setRF_DimmerLights
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (2) _setSw_Initialization                                 1     1      0     562
;;                                              4 BANK0      1     1      0
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (5) _setRFSW_Control                                      2     2      0    1680
;;                                             10 BANK0      2     2      0
;;                    _RfSWPointSelect
;;                     _setDelayOff_GO
;;                       _setSw_Status
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                 _setRF_DimmerLights
;;                             _setBuz
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (4) _setLog_Code                                          2     2      0     409
;;                                             10 BANK0      2     2      0
;;                      _RfPointSelect
;;                             _setBuz
;; ---------------------------------------------------------------------------------
;; (3) _RF_RxDisable                                         1     1      0     152
;;                                              4 BANK0      1     1      0
;;                      _RfPointSelect
;;                _CC2500_WriteCommand
;;                          _setINT_GO
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Erasing                                 0     0      0       0
;;                _Flash_Memory_Unlock
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Write                                   2     2      0     130
;;                                              0 BANK0      2     2      0
;;                _Flash_Memory_Unlock
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                0     0      0     586
;;                     _setTemp_Enable
;;                     _setLoad_Enable
;;                             _setBuz
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (1) _LED_Main                                             0     0      0     154
;;                        _setLED_Main
;; ---------------------------------------------------------------------------------
;; (2) _setLED_Initialization                                1     1      0     628
;;                                              4 BANK0      1     1      0
;;                     _LedPointSelect
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (2) _setPercentValue                                      4     4      0    1140
;;                                             44 BANK0      4     4      0
;;                            ___ftdiv
;;                           ___awtoft
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (8) _getPercentValue                                      6     6      0    2693
;;                                             57 BANK0      6     6      0
;;                            ___ftdiv
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights_ERROR                                2     2      0     969
;;                                              4 BANK0      2     2      0
;;            _DimmerLightsPointSelect
;;                  _setLoad_StatusOff
;;                             _setLED
;;                       _setSw_Status
;;                     _setRFSW_Status
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Adj                                  3     2      1     439
;;                                              5 BANK0      3     2      1
;;            _DimmerLightsPointSelect
;;                  _setLoad_StatusOff
;;                 _setRF_DimmerLights
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights                                      3     2      1     845
;;                                              4 BANK0      3     2      1
;;            _DimmerLightsPointSelect
;;                             _setLED
;;                      _setLoad_Count
;;                   _setLoad_StatusOn
;; ---------------------------------------------------------------------------------
;; (1) _DimmerLights_Initialization                          1     1      0      44
;;                                              4 BANK0      1     1      0
;;     _setDimmerLights_Initialization
;;              _Dimmer_Initialization
;; ---------------------------------------------------------------------------------
;; (2) _DlyOff_Main                                          3     3      0    1100
;;                                             10 BANK0      3     3      0
;;                _DelayOffPointSelect
;;                       _setSw_Status
;;                     _setRFSW_Status
;;                 _setRF_DimmerLights
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                          _setTxData
;;                             _setBuz
;; ---------------------------------------------------------------------------------
;; (1) _DelayOff_Initialization                              0     0      0      53
;;              _DlyOff_Initialization
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_SIDLEMode                                     0     0      0      68
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_FrequencyCabr                                 0     0      0     204
;;                _CC2500_WriteCommand
;;                      _DelayTime_1us
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_ClearRXFIFO                                   0     0      0      68
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_ClearTXFIFO                                   0     0      0      68
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_InitPATable                                   3     3      0     181
;;                                              5 BANK0      3     3      0
;;                    _CC2500_WriteREG
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_InitSetREG                                    4     4      0     226
;;                                              5 BANK0      4     4      0
;;                    _CC2500_WriteREG
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_RxData                                        2     2      0     426
;;                                              4 BANK0      2     2      0
;;                  _CC2500_ReadStatus
;;                   _CC2500_WriteByte
;;                    _CC2500_ReadByte
;;                _CC2500_WriteCommand
;;                     _setRF_RxStatus
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_TxData                                        2     2      0     160
;;                                              4 BANK0      2     2      0
;;                   _CC2500_WriteByte
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (9) ___awtoft                                             6     3      3     300
;;                                             22 BANK0      6     3      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (9) ___ftmul                                             16    10      6     535
;;                                             28 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (9) ___ftdiv                                             16    10      6     489
;;                                             28 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (9) ___ftadd                                             13     7      6    1049
;;                                             44 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _setRF_Learn                                          2     1      1      84
;;                                              2 BANK0      2     1      1
;;                      _RfPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _Flash_Memory_Unlock                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _setRF_Enable                                         2     1      1     115
;;                                              2 BANK0      2     1      1
;;                      _RfPointSelect
;;                          _setINT_GO
;; ---------------------------------------------------------------------------------
;; (4) _setSw_Enable                                         1     1      0      53
;;                                              2 BANK0      1     1      0
;;                      _SwPointSelect
;; ---------------------------------------------------------------------------------
;; (1) _getPowerFault_AD                                     5     5      0      66
;;                                              7 BANK0      5     5      0
;;                              _getAD
;; ---------------------------------------------------------------------------------
;; (1) _getTemp_AD                                           5     5      0      66
;;                                              7 BANK0      5     5      0
;;                              _getAD
;; ---------------------------------------------------------------------------------
;; (1) _getLoad_AD                                           8     8      0     271
;;                                              7 BANK0      8     8      0
;;                              _getAD
;; ---------------------------------------------------------------------------------
;; (1) _RF_Initialization                                    0     0      0       0
;;               _setRF_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _PowerFault_Initialization                            0     0      0       0
;;       _setPowerFault_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Load_Initialization                                  1     1      0      90
;;                                              2 BANK0      1     1      0
;;              _setLoad_AH_AL_Restore
;; ---------------------------------------------------------------------------------
;; (1) _Temp_Initialization                                  0     0      0       0
;;             _setTemp_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initialization                                   1     1      0       0
;;                                              1 BANK0      1     1      0
;;                             _IO_Set
;;                           _TMR0_Set
;;                            _ADC_Set
;;                            _INT_Set
;;                            _IOC_Set
;; ---------------------------------------------------------------------------------
;; (2) _setLED_Main                                          3     3      0     154
;;                                              2 BANK0      3     3      0
;;                     _LedPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setDimmerLights_Clear                                2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmerLights_TriggerAdj                           2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmerLights_AdjGo                                2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLED                                               2     1      1     500
;;                                              2 BANK0      2     1      1
;;                     _LedPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights_TriggerERROR                         2     1      1     177
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _DimmerLights_Close                                   0     0      0      55
;;         _getDimmerLights_StatusFlag
;;                         _setLoad_GO
;; ---------------------------------------------------------------------------------
;; (2) _setDimmerLights_Initialization                       2     2      0      44
;;                                              2 BANK0      2     2      0
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setDelayOff_GO                                       5     3      2     447
;;                                              3 BANK0      5     3      2
;;                _DelayOffPointSelect
;;                     _DelayTimejudge
;; ---------------------------------------------------------------------------------
;; (3) _setTxData                                            3     3      0      44
;;                                              2 BANK0      2     2      0
;;                      _RfPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Switch                               2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Trigger                              2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setRFSW_Status                                       2     1      1      84
;;                                              2 BANK0      2     1      1
;;                    _RfSWPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setSw_Status                                         2     1      1      84
;;                                              2 BANK0      2     1      1
;;                      _SwPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _DlyOff_Initialization                                1     1      0      53
;;                                              2 BANK0      1     1      0
;;                _DelayOffPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_WriteREG                                      3     2      1      90
;;                                              2 BANK0      3     2      1
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_PowerRST                                      1     1      0     182
;;                                              6 BANK0      1     1      0
;;                      _DelayTime_1us
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (4) _setRF_RxStatus                                       2     1      1      84
;;                                              2 BANK0      2     1      1
;;                      _RfPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_ReadStatus                                    2     2      0     114
;;                                              2 BANK0      2     2      0
;;                   _CC2500_WriteByte
;;                    _CC2500_ReadByte
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_WriteCommand                                  2     2      0      68
;;                                              2 BANK0      2     2      0
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (3) _setBuz                                               4     2      2     356
;;                                              6 BANK0      4     2      2
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (9) ___fttol                                             14    10      4     252
;;                                              8 BANK0     14    10      4
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (10) ___ftpack                                            8     3      5     209
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (4) ___wmul                                               6     2      4     136
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (4) _SwPointSelect                                        2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _TouchPower                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _RfSWPointSelect                                      2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Initialization                                 2     2      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _RfPointSelect                                        2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _setPowerFault_Initialization                         1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Initialization                               1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _getLoad_Safe                                         1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _getPF_Safe                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _getTemp_Safe                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_AH_AL_Restore                                2     2      0      90
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Read                                    4     4      0      47
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _getAD                                                7     5      2      44
;;                                              0 BANK0      7     5      2
;; ---------------------------------------------------------------------------------
;; (4) _setINT_GO                                            1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _IOC_Set                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _INT_Set                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _ADC_Set                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _TMR0_Set                                             1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _IO_Set                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_Enable                                       1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Enable                                       1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _MainT_Initialization                                 1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (7) _LedPointSelect                                       2     2      0      66
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_StatusOn                                     2     1      1     124
;;                                              0 BANK0      2     1      1
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_Count                                        2     2      0      44
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _setLoad_StatusOff                                    2     1      1     124
;;                                              0 BANK0      2     1      1
;; ---------------------------------------------------------------------------------
;; (3) _setLoad_GO                                           1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _getDimmerLights_StatusFlag                           2     2      0      24
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _Dimmer_Initialization                                1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _DimmerLightsPointSelect                              2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (7) _DelayTimejudge                                       3     3      0     161
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _setRF_DimmerLights                                   5     4      1     156
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) _DelayOffPointSelect                                  2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayTime_1us                                        6     4      2     136
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_ReadByte                                      2     2      0      46
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _CC2500_WriteByte                                     2     2      0      46
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Buzzer_Main                                          4     4      0       0
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _Buzzer_Initialization                                1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 10
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (11) _ISR                                                 1     1      0     409
;;                                              6 COMMON     1     1      0
;;                            _IOC_ISR
;;                           _TMR0_ISR
;;                            _INT_ISR
;; ---------------------------------------------------------------------------------
;; (12) _INT_ISR                                             0     0      0     117
;;                    _setRF_ReceiveGO
;; ---------------------------------------------------------------------------------
;; (13) _setRF_ReceiveGO                                     2     1      1     117
;;                                              2 COMMON     2     1      1
;;                    i1_RfPointSelect
;; ---------------------------------------------------------------------------------
;; (12) _TMR0_ISR                                            4     4      0     292
;;                                              2 COMMON     4     4      0
;;                i1_setLoad_StatusOff
;; ---------------------------------------------------------------------------------
;; (12) _IOC_ISR                                             1     1      0       0
;;                                              0 COMMON     1     1      0
;;                   _setDimmerReClock
;; ---------------------------------------------------------------------------------
;; (14) i1_RfPointSelect                                     2     2      0      73
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (13) i1_setLoad_StatusOff                                 2     1      1     292
;;                                              0 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (13) _setDimmerReClock                                    0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 14
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainT_Initialization
;;   _Mcu_Initialization
;;     _IO_Set
;;     _TMR0_Set
;;     _ADC_Set
;;     _INT_Set
;;     _IOC_Set
;;   _Flash_Memory_Initialization
;;     _Flash_Memory_Read
;;     _setPercentValue
;;       ___ftdiv
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;     _Flash_Memory_Write
;;       _Flash_Memory_Unlock
;;   _LED_Initialization
;;     _setLED_Initialization
;;       _LedPointSelect
;;       _setLED
;;         _LedPointSelect
;;   _Buzzer_Initialization
;;   _Temp_Initialization
;;     _setTemp_Initialization
;;   _Load_Initialization
;;     _setLoad_AH_AL_Restore
;;   _PowerFault_Initialization
;;     _setPowerFault_Initialization
;;   _DelayOff_Initialization
;;     _DlyOff_Initialization
;;       _DelayOffPointSelect
;;   _DimmerLights_Initialization
;;     _setDimmerLights_Initialization
;;       _DimmerLightsPointSelect
;;     _Dimmer_Initialization
;;   _Switch_Initialization
;;     _TouchPower
;;     _setSw_Initialization
;;       _setLED
;;         _LedPointSelect
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
;;   _getLoad_AD
;;     _getAD
;;   _getTemp_AD
;;     _getAD
;;   _getPowerFault_AD
;;     _getAD
;;   _Buzzer_Main
;;   _MainT
;;     _setTemp_Enable
;;     _setLoad_Enable
;;     _setBuz
;;       ___wmul
;;     _setSw_Enable
;;       _SwPointSelect
;;     _setRF_Enable
;;       _RfPointSelect
;;       _setINT_GO
;;   _Flash_Memory_Main
;;     _Flash_Memory_Modify
;;       _Flash_Memory_Read
;;       _Flash_Memory_Erasing
;;         _Flash_Memory_Unlock
;;       _Flash_Memory_Write
;;         _Flash_Memory_Unlock
;;   _LED_Main
;;     _setLED_Main
;;       _LedPointSelect
;;   _Temp_Main
;;     _setTemp_Main
;;       _getLoad_Safe
;;       _getPF_Safe
;;       _setOverTemp_Exceptions
;;         _DimmerLights_Exceptions
;;           _getDimmerLights_StatusFlag
;;           _setBuz
;;             ___wmul
;;           _setDimmerLights_ERROR
;;             _DimmerLightsPointSelect
;;             _setLoad_StatusOff
;;             _setLED
;;               _LedPointSelect
;;             _setSw_Status
;;               _SwPointSelect
;;             _setRFSW_Status
;;               _RfSWPointSelect
;;           _setDimmerLights_TriggerERROR
;;             _DimmerLightsPointSelect
;;         _setBuz
;;           ___wmul
;;         _setLED
;;           _LedPointSelect
;;         _setSw_Enable
;;           _SwPointSelect
;;         _setRF_Enable
;;           _RfPointSelect
;;           _setINT_GO
;;   _Load_Main
;;     _setLoad_Exceptions
;;       _DimmerLights_Exceptions
;;         _getDimmerLights_StatusFlag
;;         _setBuz
;;           ___wmul
;;         _setDimmerLights_ERROR
;;           _DimmerLightsPointSelect
;;           _setLoad_StatusOff
;;           _setLED
;;             _LedPointSelect
;;           _setSw_Status
;;             _SwPointSelect
;;           _setRFSW_Status
;;             _RfSWPointSelect
;;         _setDimmerLights_TriggerERROR
;;           _DimmerLightsPointSelect
;;       _setLED
;;         _LedPointSelect
;;       _setSw_Enable
;;         _SwPointSelect
;;       _setRF_Enable
;;         _RfPointSelect
;;         _setINT_GO
;;     ___lwdiv
;;     _setDimmerLights_Clear
;;       _DimmerLightsPointSelect
;;     ___wmul
;;     _setLoad_AH_AL_Restore
;;     _getTemp_Safe
;;     _getPF_Safe
;;   _PowerFault_Main
;;     _setPowerFault_Main
;;       _getLoad_Safe
;;       _getTemp_Safe
;;       _setPowerFault_Exceptions
;;         _DimmerLights_Exceptions
;;           _getDimmerLights_StatusFlag
;;           _setBuz
;;             ___wmul
;;           _setDimmerLights_ERROR
;;             _DimmerLightsPointSelect
;;             _setLoad_StatusOff
;;             _setLED
;;               _LedPointSelect
;;             _setSw_Status
;;               _SwPointSelect
;;             _setRFSW_Status
;;               _RfSWPointSelect
;;           _setDimmerLights_TriggerERROR
;;             _DimmerLightsPointSelect
;;         _setLED
;;           _LedPointSelect
;;         _setSw_Enable
;;           _SwPointSelect
;;         _setRF_Enable
;;           _RfPointSelect
;;           _setINT_GO
;;   _DimmerLights_Main
;;     _setDimmerLights_Main
;;       _DimmerLightsPointSelect
;;       _setDimmerLights
;;         _DimmerLightsPointSelect
;;         _setLED
;;           _LedPointSelect
;;         _setLoad_Count
;;         _setLoad_StatusOn
;;       _setDimmerLights_Adj
;;         _DimmerLightsPointSelect
;;         _setLoad_StatusOff
;;         _setRF_DimmerLights
;;         _setTxData
;;           _RfPointSelect
;;       _setBuz
;;         ___wmul
;;     _DimmerLights_Close
;;       _getDimmerLights_StatusFlag
;;       _setLoad_GO
;;   _Switch_Main
;;     _setSw_Main
;;       _SwPointSelect
;;       _Sw_DimmerOnFunc
;;         _setBuz
;;           ___wmul
;;         _setRFSW_Status
;;           _RfSWPointSelect
;;         _setDimmerLights_Trigger
;;           _DimmerLightsPointSelect
;;         _setDimmerLights_Switch
;;           _DimmerLightsPointSelect
;;         _setRF_DimmerLights
;;         _setTxData
;;           _RfPointSelect
;;       _Sw_DimmerAdjFunc
;;         _setRFSW_Status
;;           _RfSWPointSelect
;;         _setDimmerLights_TriggerAdj
;;           _DimmerLightsPointSelect
;;         _setDimmerLights_AdjGo
;;           _DimmerLightsPointSelect
;;       _setRF_Learn
;;         _RfPointSelect
;;       _setBuz
;;         ___wmul
;;       _Sw_DimmerOffFunc
;;         _setDimmerLights_TriggerAdj
;;           _DimmerLightsPointSelect
;;         _setDimmerLights_AdjGo
;;           _DimmerLightsPointSelect
;;         _setRF_DimmerLights
;;         _setTxData
;;           _RfPointSelect
;;         _setDimmerLights_Trigger
;;           _DimmerLightsPointSelect
;;         _setDimmerLights_Switch
;;           _DimmerLightsPointSelect
;;         _setDelayOff_GO
;;           _DelayOffPointSelect
;;           _DelayTimejudge
;;   _RF_Main
;;     _setRF_Main
;;       _RfPointSelect
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
;;       _getRxData
;;         _RfPointSelect
;;         _setLog_Code
;;           _RfPointSelect
;;           _setBuz
;;             ___wmul
;;         _setControl_Lights_Table
;;           _RfPointSelect
;;           _setDimmerLights
;;             _DimmerLightsPointSelect
;;             _setLED
;;               _LedPointSelect
;;             _setLoad_Count
;;             _setLoad_StatusOn
;;           _setRFSW_Status
;;             _RfSWPointSelect
;;           _setSw_Status
;;             _SwPointSelect
;;           _setBuz
;;             ___wmul
;;           _setTxData
;;             _RfPointSelect
;;           _setRFSW_Control
;;             _RfSWPointSelect
;;             _setDelayOff_GO
;;               _DelayOffPointSelect
;;               _DelayTimejudge
;;             _setSw_Status
;;               _SwPointSelect
;;             _setDimmerLights_Trigger
;;               _DimmerLightsPointSelect
;;             _setDimmerLights_Switch
;;               _DimmerLightsPointSelect
;;             _setRF_DimmerLights
;;             _setBuz
;;               ___wmul
;;             _setTxData
;;               _RfPointSelect
;;           _setRFSW_AdjControl
;;             _RfSWPointSelect
;;             _setRF_DimmerValue
;;               _setDimmerLights_AdjRF
;;                 _DimmerLightsPointSelect
;;                 _getPercentValue
;;                   ___ftdiv
;;                     ___ftpack
;;                     ___awtoft (ARG)
;;                       ___ftpack
;;                       ___fttol (ARG)
;;                         ___ftpack (ARG)
;;                     ___fttol (ARG)
;;                       ___ftpack (ARG)
;;                   ___awtoft
;;                     ___ftpack
;;                     ___fttol (ARG)
;;                       ___ftpack (ARG)
;;                   ___ftmul
;;                     ___ftpack
;;                     ___awtoft (ARG)
;;                       ___ftpack
;;                       ___fttol (ARG)
;;                         ___ftpack (ARG)
;;                     ___fttol (ARG)
;;                       ___ftpack (ARG)
;;                   ___ftadd
;;                     ___ftpack
;;                     ___ftmul (ARG)
;;                       ___ftpack
;;                       ___awtoft (ARG)
;;                         ___ftpack
;;                         ___fttol (ARG)
;;                           ___ftpack (ARG)
;;                       ___fttol (ARG)
;;                         ___ftpack (ARG)
;;                     ___awtoft (ARG)
;;                       ___ftpack
;;                       ___fttol (ARG)
;;                         ___ftpack (ARG)
;;                     ___fttol (ARG)
;;                       ___ftpack (ARG)
;;                   ___fttol
;;                     ___ftpack (ARG)
;;             _setTxData
;;               _RfPointSelect
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;       _setINT_GO
;;       _RF_RxDisable
;;         _RfPointSelect
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;         _setINT_GO
;;       _CC2500_TxData
;;         _CC2500_WriteByte
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;   _DelayOff_Main
;;     _DlyOff_Main
;;       _DelayOffPointSelect
;;       _setSw_Status
;;         _SwPointSelect
;;       _setRFSW_Status
;;         _RfSWPointSelect
;;       _setRF_DimmerLights
;;       _setDimmerLights_Trigger
;;         _DimmerLightsPointSelect
;;       _setDimmerLights_Switch
;;         _DimmerLightsPointSelect
;;       _setTxData
;;         _RfPointSelect
;;       _setBuz
;;         ___wmul
;;
;; _ISR (ROOT)
;;   _IOC_ISR
;;     _setDimmerReClock
;;   _TMR0_ISR
;;     i1_setLoad_StatusOff
;;   _INT_ISR
;;     _setRF_ReceiveGO
;;       i1_RfPointSelect
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             3F0      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      7       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0      12       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4C      50       5      100.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BANK1               50      0      4C       7       95.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BITBANK2            50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BANK2               50      0      40       9       80.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITBANK3            50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK3               50      0      45      11       86.3%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BITBANK4            50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BANK4               50      0      47      13       88.8%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITBANK5            50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BANK5               50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BITBANK6            50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BANK6               50      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BITBANK7            50      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BANK7               50      0       0      19        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;ABS                  0      0     176      20        0.0%
;;BITBANK8            50      0       0      21        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BANK8               50      0       0      22        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITBANK9            50      0       0      23        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BANK9               50      0       0      24        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITBANK10           50      0       0      25        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BANK10              50      0       0      26        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITBANK11           50      0       0      27        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BANK11              50      0       0      28        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITBANK12           30      0       0      29        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BANK12              30      0       0      30        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;DATA                 0      0     188      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 8 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:   14
;; This function calls:
;;		_MainT_Initialization
;;		_Mcu_Initialization
;;		_Flash_Memory_Initialization
;;		_LED_Initialization
;;		_Buzzer_Initialization
;;		_Temp_Initialization
;;		_Load_Initialization
;;		_PowerFault_Initialization
;;		_DelayOff_Initialization
;;		_DimmerLights_Initialization
;;		_Switch_Initialization
;;		_RF_Initialization
;;		_CC2500_PowerOnInitial
;;		_getLoad_AD
;;		_getTemp_AD
;;		_getPowerFault_AD
;;		_Buzzer_Main
;;		_MainT
;;		_Flash_Memory_Main
;;		_LED_Main
;;		_Temp_Main
;;		_Load_Main
;;		_PowerFault_Main
;;		_DimmerLights_Main
;;		_Switch_Main
;;		_RF_Main
;;		_DelayOff_Main
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [allreg]
	line	9
	
l25728:	
;main.c: 9: MainT_Initialization();
	fcall	_MainT_Initialization
	line	10
;main.c: 10: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	11
	
l25730:	
;main.c: 11: Flash_Memory_Initialization();
	fcall	_Flash_Memory_Initialization
	line	12
	
l25732:	
;main.c: 12: LED_Initialization();
	fcall	_LED_Initialization
	line	13
	
l25734:	
;main.c: 13: Buzzer_Initialization();
	fcall	_Buzzer_Initialization
	line	16
	
l25736:	
;main.c: 15: ;;
;main.c: 16: Temp_Initialization();
	fcall	_Temp_Initialization
	line	17
	
l25738:	
;main.c: 17: Load_Initialization();
	fcall	_Load_Initialization
	line	18
	
l25740:	
;main.c: 18: PowerFault_Initialization();
	fcall	_PowerFault_Initialization
	line	19
	
l25742:	
;main.c: 19: DelayOff_Initialization();
	fcall	_DelayOff_Initialization
	line	21
	
l25744:	
;main.c: 21: DimmerLights_Initialization();
	fcall	_DimmerLights_Initialization
	line	26
	
l25746:	
;main.c: 22: ;;
;main.c: 23: ;;
;main.c: 24: ;;
;main.c: 26: Switch_Initialization();
	fcall	_Switch_Initialization
	line	27
	
l25748:	
;main.c: 27: RF_Initialization();
	fcall	_RF_Initialization
	line	28
	
l25750:	
;main.c: 28: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l25752
	line	30
;main.c: 30: while(1)
	
l8165:	
	line	32
	
l25752:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10671
	goto	u10670
u10671:
	goto	l25758
u10670:
	line	39
	
l25754:	
;main.c: 33: {
;main.c: 35: ;;
;main.c: 39: getLoad_AD(0x05);
	movlw	(05h)
	fcall	_getLoad_AD
	line	43
;main.c: 43: getTemp_AD(0x09);
	movlw	(09h)
	fcall	_getTemp_AD
	line	47
;main.c: 47: getPowerFault_AD(0x11);
	movlw	(011h)
	fcall	_getPowerFault_AD
	line	59
	
l25756:	
;main.c: 59: Buzzer_Main();
	fcall	_Buzzer_Main
	goto	l25758
	line	61
	
l8166:	
	line	63
	
l25758:	
;main.c: 61: }
;main.c: 63: if(TMain->T0_Timerout)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10681
	goto	u10680
u10681:
	goto	l25752
u10680:
	line	65
	
l25760:	
;main.c: 64: {
;main.c: 65: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	66
	
l25762:	
;main.c: 66: MainT();
	fcall	_MainT
	line	67
	
l25764:	
;main.c: 67: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10691
	goto	u10690
u10691:
	goto	l25752
u10690:
	line	69
	
l25766:	
;main.c: 68: {
;main.c: 69: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	71
;main.c: 71: LED_Main();
	fcall	_LED_Main
	line	74
;main.c: 73: ;;
;main.c: 74: Temp_Main();
	fcall	_Temp_Main
	line	75
	
l25768:	
;main.c: 75: Load_Main();
	fcall	_Load_Main
	line	76
	
l25770:	
;main.c: 76: PowerFault_Main();
	fcall	_PowerFault_Main
	line	79
	
l25772:	
;main.c: 78: ;;
;main.c: 79: DimmerLights_Main();
	fcall	_DimmerLights_Main
	line	80
	
l25774:	
;main.c: 80: Switch_Main();
	fcall	_Switch_Main
	line	84
	
l25776:	
;main.c: 81: ;;
;main.c: 82: ;;
;main.c: 84: RF_Main();
	fcall	_RF_Main
	line	85
	
l25778:	
;main.c: 85: DelayOff_Main();
	fcall	_DelayOff_Main
	goto	l25752
	line	86
	
l8168:	
	goto	l25752
	line	87
	
l8167:	
	goto	l25752
	line	88
	
l8169:	
	line	30
	goto	l25752
	
l8170:	
	line	89
	
l8171:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RF_Main
psect	text4084,local,class=CODE,delta=2
global __ptext4084
__ptext4084:

;; *************** function _RF_Main *****************
;; Defined at:
;;		line 25 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   13
;; This function calls:
;;		_setRF_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4084
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	25
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
	opt	stack 2
; Regs used in _RF_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	27
	
l25726:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l15195:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Main
	__end_of_RF_Main:
;; =============== function _RF_Main ends ============

	signat	_RF_Main,88
	global	_setRF_Main
psect	text4085,local,class=CODE,delta=2
global __ptext4085
__ptext4085:

;; *************** function _setRF_Main *****************
;; Defined at:
;;		line 59 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   74[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_RfPointSelect
;;		_CC2500_RxData
;;		_getRxData
;;		_CC2500_WriteCommand
;;		_setINT_GO
;;		_RF_RxDisable
;;		_CC2500_TxData
;; This function is called by:
;;		_RF_Main
;; This function uses a non-reentrant model
;;
psect	text4085
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	59
	global	__size_of_setRF_Main
	__size_of_setRF_Main	equ	__end_of_setRF_Main-_setRF_Main
	
_setRF_Main:	
	opt	stack 2
; Regs used in _setRF_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Main@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Main@rf)
	line	60
	
l25668:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf),w
	fcall	_RfPointSelect
	line	61
	
l25670:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10541
	goto	u10540
u10541:
	goto	l15223
u10540:
	line	72
	
l25672:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 72: RF->Key=((RA6 || RA4 || RA0 || RB1) && !RF->Learn)?1:0;
	movlb 0	; select bank0
	clrf	(_setRF_Main$19191)
	btfsc	(102/8),(102)&7
	goto	u10551
	goto	u10550
u10551:
	goto	l25680
u10550:
	
l25674:	
	btfsc	(100/8),(100)&7
	goto	u10561
	goto	u10560
u10561:
	goto	l25680
u10560:
	
l25676:	
	btfsc	(96/8),(96)&7
	goto	u10571
	goto	u10570
u10571:
	goto	l25680
u10570:
	
l25678:	
	btfss	(105/8),(105)&7
	goto	u10581
	goto	u10580
u10581:
	goto	l25684
u10580:
	goto	l25680
	
l24458:	
	
l25680:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u10591
	goto	u10590
u10591:
	goto	l25684
u10590:
	
l25682:	
	clrf	(_setRF_Main$19191)
	bsf	status,0
	rlf	(_setRF_Main$19191),f
	goto	l25684
	
l15212:	
	
l25684:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_setRF_Main$19191),w
	bcf	indf1,7
	skipz
	bsf	indf1,7
	line	76
	
l25686:	
;RF_Control_B1.c: 76: if(!RF->Key)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,7
	goto	u10601
	goto	u10600
u10601:
	goto	l25708
u10600:
	line	78
	
l25688:	
;RF_Control_B1.c: 77: {
;RF_Control_B1.c: 78: if(RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10611
	goto	u10610
u10611:
	goto	l25696
u10610:
	line	80
	
l25690:	
;RF_Control_B1.c: 79: {
;RF_Control_B1.c: 80: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	81
	
l25692:	
;RF_Control_B1.c: 81: CC2500_RxData();
	fcall	_CC2500_RxData
	line	87
	
l25694:	
;RF_Control_B1.c: 87: getRxData(1);
	movlw	(01h)
	fcall	_getRxData
	line	90
;RF_Control_B1.c: 90: }
	goto	l25710
	line	91
	
l15214:	
	line	93
	
l25696:	
;RF_Control_B1.c: 91: else
;RF_Control_B1.c: 92: {
;RF_Control_B1.c: 93: if(!RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u10621
	goto	u10620
u10621:
	goto	l25710
u10620:
	line	96
	
l25698:	
;RF_Control_B1.c: 94: {
;RF_Control_B1.c: 96: if(!RF->RxStatus)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10631
	goto	u10630
u10631:
	goto	l25710
u10630:
	line	98
	
l25700:	
;RF_Control_B1.c: 97: {
;RF_Control_B1.c: 98: RF->RxStatus=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	99
	
l25702:	
;RF_Control_B1.c: 99: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	100
	
l25704:	
;RF_Control_B1.c: 100: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	101
	
l25706:	
;RF_Control_B1.c: 101: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l25710
	line	102
	
l15217:	
	goto	l25710
	line	104
	
l15216:	
	goto	l25710
	line	105
	
l15215:	
	line	106
;RF_Control_B1.c: 102: }
;RF_Control_B1.c: 104: }
;RF_Control_B1.c: 105: }
;RF_Control_B1.c: 106: }
	goto	l25710
	line	107
	
l15213:	
	line	109
	
l25708:	
;RF_Control_B1.c: 107: else
;RF_Control_B1.c: 108: {
;RF_Control_B1.c: 109: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l25710
	line	110
	
l15218:	
	line	111
	
l25710:	
;RF_Control_B1.c: 110: }
;RF_Control_B1.c: 111: if(RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u10641
	goto	u10640
u10641:
	goto	l15223
u10640:
	line	113
	
l25712:	
;RF_Control_B1.c: 112: {
;RF_Control_B1.c: 113: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	114
	
l25714:	
;RF_Control_B1.c: 114: if(!RF->Debounce)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u10651
	goto	u10650
u10651:
	goto	l25722
u10650:
	line	116
	
l25716:	
;RF_Control_B1.c: 115: {
;RF_Control_B1.c: 116: RF->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setRF_Main+0)+0
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_Main+0)+0,w
	addwf	indf1,f
	line	117
	
l25718:	
;RF_Control_B1.c: 117: if(RF->DebounceTime == 25)
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	019h&0ffh
	skipz
	goto	u10661
	goto	u10660
u10661:
	goto	l15223
u10660:
	line	119
	
l25720:	
;RF_Control_B1.c: 118: {
;RF_Control_B1.c: 119: RF->DebounceTime=0;
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	120
;RF_Control_B1.c: 120: RF->Debounce=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l15223
	line	121
	
l15221:	
	line	122
;RF_Control_B1.c: 121: }
;RF_Control_B1.c: 122: }
	goto	l15223
	line	123
	
l15220:	
	line	125
	
l25722:	
;RF_Control_B1.c: 123: else
;RF_Control_B1.c: 124: {
;RF_Control_B1.c: 125: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	126
;RF_Control_B1.c: 126: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	127
	
l25724:	
;RF_Control_B1.c: 127: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l15223
	line	128
	
l15222:	
	goto	l15223
	line	129
	
l15219:	
	goto	l15223
	line	130
	
l15210:	
	line	131
	
l15223:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
;; =============== function _setRF_Main ends ============

	signat	_setRF_Main,4216
	global	_getRxData
psect	text4086,local,class=CODE,delta=2
global __ptext4086
__ptext4086:

;; *************** function _getRxData *****************
;; Defined at:
;;		line 208 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   72[BANK0 ] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_RfPointSelect
;;		_setLog_Code
;;		_setControl_Lights_Table
;; This function is called by:
;;		_setRF_Main
;; This function uses a non-reentrant model
;;
psect	text4086
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	208
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
	opt	stack 2
; Regs used in _getRxData: [wreg+fsr1l-status,0+pclath+cstack]
;getRxData@rf stored from wreg
	line	210
	movlb 0	; select bank0
	movwf	(getRxData@rf)
	
l25628:	
;RF_Control_B1.c: 209: unsigned char i;
;RF_Control_B1.c: 210: RfPointSelect(rf);
	movf	(getRxData@rf),w
	fcall	_RfPointSelect
	line	211
	
l25630:	
;RF_Control_B1.c: 211: if(RF->Learn)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u10431
	goto	u10430
u10431:
	goto	l25638
u10430:
	line	213
	
l25632:	
;RF_Control_B1.c: 212: {
;RF_Control_B1.c: 213: if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u10441
	goto	u10440
u10441:
	goto	l15249
u10440:
	
l25634:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u10451
	goto	u10450
u10451:
	goto	l15249
u10450:
	line	215
	
l25636:	
;RF_Control_B1.c: 214: {
;RF_Control_B1.c: 215: setLog_Code(1);
	movlw	(01h)
	fcall	_setLog_Code
	goto	l15249
	line	216
	
l15239:	
	line	217
;RF_Control_B1.c: 216: }
;RF_Control_B1.c: 217: }
	goto	l15249
	line	218
	
l15238:	
	line	220
	
l25638:	
;RF_Control_B1.c: 218: else
;RF_Control_B1.c: 219: {
;RF_Control_B1.c: 220: if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u10461
	goto	u10460
u10461:
	goto	l15249
u10460:
	
l25640:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u10471
	goto	u10470
u10471:
	goto	l15249
u10470:
	line	222
	
l25642:	
;RF_Control_B1.c: 221: {
;RF_Control_B1.c: 222: if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
	movf	0+(_RF_Data)^080h+0Ch,w
	xorlw	0FFh&0ffh
	skipz
	goto	u10481
	goto	u10480
u10481:
	goto	l25650
u10480:
	
l25644:	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u10491
	goto	u10490
u10491:
	goto	l25650
u10490:
	
l25646:	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u10501
	goto	u10500
u10501:
	goto	l25650
u10500:
	line	224
	
l25648:	
;RF_Control_B1.c: 223: {
;RF_Control_B1.c: 224: _nop();
	nop
	line	225
;RF_Control_B1.c: 225: }
	goto	l15249
	line	226
	
l15242:	
	line	228
	
l25650:	
;RF_Control_B1.c: 226: else
;RF_Control_B1.c: 227: {
;RF_Control_B1.c: 228: if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Ch,w
	xorwf	indf1,w
	skipz
	goto	u10511
	goto	u10510
u10511:
	goto	l15249
u10510:
	
l25652:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Dh,w
	xorwf	indf1,w
	skipz
	goto	u10521
	goto	u10520
u10521:
	goto	l15249
u10520:
	
l25654:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Eh,w
	xorwf	indf1,w
	skipz
	goto	u10531
	goto	u10530
u10531:
	goto	l15249
u10530:
	line	230
	
l25656:	
;RF_Control_B1.c: 229: {
;RF_Control_B1.c: 230: setControl_Lights_Table(1);
	movlw	(01h)
	fcall	_setControl_Lights_Table
	goto	l15249
	line	231
	
l15244:	
	goto	l15249
	line	232
	
l15243:	
	line	233
;RF_Control_B1.c: 231: }
;RF_Control_B1.c: 232: }
;RF_Control_B1.c: 233: }
	goto	l15249
	line	234
	
l15241:	
	goto	l15249
	
l25658:	
	goto	l15249
	
l25660:	
	goto	l15249
	line	237
	
l25662:	
;RF_Control_B1.c: 235: {
;RF_Control_B1.c: 236: ;
;RF_Control_B1.c: 237: }
	goto	l15249
	line	238
	
l15246:	
	goto	l15249
	
l25664:	
	goto	l15249
	
l25666:	
	goto	l15249
	line	241
;RF_Control_B1.c: 239: {
;RF_Control_B1.c: 240: ;
	
l15248:	
	goto	l15249
	line	246
	
l15247:	
	goto	l15249
	
l15245:	
	goto	l15249
	
l15240:	
	line	247
	
l15249:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
;; =============== function _getRxData ends ============

	signat	_getRxData,4216
	global	_setControl_Lights_Table
psect	text4087,local,class=CODE,delta=2
global __ptext4087
__ptext4087:

;; *************** function _setControl_Lights_Table *****************
;; Defined at:
;;		line 265 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   71[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_RfPointSelect
;;		_setDimmerLights
;;		_setRFSW_Status
;;		_setSw_Status
;;		_setBuz
;;		_setTxData
;;		_setRFSW_Control
;;		_setRFSW_AdjControl
;; This function is called by:
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text4087
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	265
	global	__size_of_setControl_Lights_Table
	__size_of_setControl_Lights_Table	equ	__end_of_setControl_Lights_Table-_setControl_Lights_Table
	
_setControl_Lights_Table:	
	opt	stack 2
; Regs used in _setControl_Lights_Table: [wreg+fsr1l-status,0+pclath+cstack]
;setControl_Lights_Table@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setControl_Lights_Table@rf)
	line	266
	
l25600:	
;RF_Control_B1.c: 266: RfPointSelect(rf);
	movf	(setControl_Lights_Table@rf),w
	fcall	_RfPointSelect
	line	267
	
l25602:	
;RF_Control_B1.c: 267: if(RF_Data[15] == 0x00)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,f
	skipz
	goto	u10391
	goto	u10390
u10391:
	goto	l25614
u10390:
	line	270
	
l25604:	
;RF_Control_B1.c: 268: {
;RF_Control_B1.c: 270: setDimmerLights(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	movlw	(01h)
	fcall	_setDimmerLights
	line	271
;RF_Control_B1.c: 271: setRFSW_Status(1,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movlw	(01h)
	fcall	_setRFSW_Status
	line	272
;RF_Control_B1.c: 272: setSw_Status(1,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movlw	(01h)
	fcall	_setSw_Status
	line	285
	
l25606:	
;RF_Control_B1.c: 285: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	286
	
l25608:	
;RF_Control_B1.c: 286: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	287
	
l25610:	
;RF_Control_B1.c: 287: Product->Data[15]=0;
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	288
	
l25612:	
;RF_Control_B1.c: 288: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	289
;RF_Control_B1.c: 289: setBuz(1,100);
	movlw	low(064h)
	movwf	(?_setBuz)
	movlw	high(064h)
	movwf	((?_setBuz))+1
	movlw	(01h)
	fcall	_setBuz
	line	290
;RF_Control_B1.c: 290: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	291
;RF_Control_B1.c: 291: }
	goto	l15263
	line	292
	
l15256:	
	
l25614:	
;RF_Control_B1.c: 292: else if(RF_Data[15] == 0x20)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	020h&0ffh
	skipz
	goto	u10401
	goto	u10400
u10401:
	goto	l25620
u10400:
	line	294
	
l25616:	
;RF_Control_B1.c: 293: {
;RF_Control_B1.c: 294: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	295
;RF_Control_B1.c: 295: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	296
;RF_Control_B1.c: 296: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	297
	
l25618:	
;RF_Control_B1.c: 297: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	298
;RF_Control_B1.c: 298: }
	goto	l15263
	line	300
	
l15258:	
	
l25620:	
;RF_Control_B1.c: 300: else if(RF_Data[15] == 0x01)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u10411
	goto	u10410
u10411:
	goto	l25624
u10410:
	line	302
	
l25622:	
;RF_Control_B1.c: 301: {
;RF_Control_B1.c: 302: setRFSW_Control(1);
	movlw	(01h)
	fcall	_setRFSW_Control
	line	303
;RF_Control_B1.c: 303: }
	goto	l15263
	line	305
	
l15260:	
	
l25624:	
;RF_Control_B1.c: 305: else if(RF_Data[15] == 0x11)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u10421
	goto	u10420
u10421:
	goto	l15263
u10420:
	line	307
	
l25626:	
;RF_Control_B1.c: 306: {
;RF_Control_B1.c: 307: setRFSW_AdjControl(1);
	movlw	(01h)
	fcall	_setRFSW_AdjControl
	goto	l15263
	line	308
	
l15262:	
	goto	l15263
	line	337
	
l15261:	
	goto	l15263
	
l15259:	
	goto	l15263
	
l15257:	
	
l15263:	
	return
	opt stack 0
GLOBAL	__end_of_setControl_Lights_Table
	__end_of_setControl_Lights_Table:
;; =============== function _setControl_Lights_Table ends ============

	signat	_setControl_Lights_Table,4216
	global	_PowerFault_Main
psect	text4088,local,class=CODE,delta=2
global __ptext4088
__ptext4088:

;; *************** function _PowerFault_Main *****************
;; Defined at:
;;		line 23 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_setPowerFault_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4088
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	23
	global	__size_of_PowerFault_Main
	__size_of_PowerFault_Main	equ	__end_of_PowerFault_Main-_PowerFault_Main
	
_PowerFault_Main:	
	opt	stack 5
; Regs used in _PowerFault_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	25
	
l25598:	
;PowerFault_B1.c: 25: setPowerFault_Main();
	fcall	_setPowerFault_Main
	line	27
	
l14001:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFault_Main
	__end_of_PowerFault_Main:
;; =============== function _PowerFault_Main ends ============

	signat	_PowerFault_Main,88
	global	_Temp_Main
psect	text4089,local,class=CODE,delta=2
global __ptext4089
__ptext4089:

;; *************** function _Temp_Main *****************
;; Defined at:
;;		line 58 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_setTemp_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4089
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	58
	global	__size_of_Temp_Main
	__size_of_Temp_Main	equ	__end_of_Temp_Main-_Temp_Main
	
_Temp_Main:	
	opt	stack 5
; Regs used in _Temp_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	60
	
l25596:	
;OverTemperature_B1.c: 60: setTemp_Main();
	fcall	_setTemp_Main
	line	62
	
l11759:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Main
	__end_of_Temp_Main:
;; =============== function _Temp_Main ends ============

	signat	_Temp_Main,88
	global	_setRFSW_AdjControl
psect	text4090,local,class=CODE,delta=2
global __ptext4090
__ptext4090:

;; *************** function _setRFSW_AdjControl *****************
;; Defined at:
;;		line 402 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   70[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_RfSWPointSelect
;;		_setRF_DimmerValue
;;		_setTxData
;; This function is called by:
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text4090
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	402
	global	__size_of_setRFSW_AdjControl
	__size_of_setRFSW_AdjControl	equ	__end_of_setRFSW_AdjControl-_setRFSW_AdjControl
	
_setRFSW_AdjControl:	
	opt	stack 2
; Regs used in _setRFSW_AdjControl: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_AdjControl@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_AdjControl@sw)
	line	403
	
l24256:	
;RF_Control_B1.c: 403: RfSWPointSelect(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_RfSWPointSelect
	line	404
	
l24258:	
;RF_Control_B1.c: 404: if(RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u8501
	goto	u8500
u8501:
	goto	l24264
u8500:
	line	406
	
l24260:	
;RF_Control_B1.c: 405: {
;RF_Control_B1.c: 406: Memory->Modify=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	407
	
l24262:	
;RF_Control_B1.c: 407: setRF_DimmerValue(sw);
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	fcall	_setRF_DimmerValue
	line	408
;RF_Control_B1.c: 408: }
	goto	l15279
	line	409
	
l15278:	
	line	411
	
l24264:	
;RF_Control_B1.c: 409: else
;RF_Control_B1.c: 410: {
;RF_Control_B1.c: 411: Product->Data[9]=Product->Data[20+sw];
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	addlw	014h
	addwf	(_Product),w
	movwf	(??_setRFSW_AdjControl+0)+0
	movf	0+(??_setRFSW_AdjControl+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRFSW_AdjControl+1)+0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRFSW_AdjControl+1)+0,w
	movwf	indf1
	line	412
	
l15279:	
	line	413
;RF_Control_B1.c: 412: }
;RF_Control_B1.c: 413: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setRFSW_AdjControl+0)+0
	movf	0+(??_setRFSW_AdjControl+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRFSW_AdjControl+1)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRFSW_AdjControl+1)+0,w
	movwf	indf1
	line	414
	
l24266:	
;RF_Control_B1.c: 414: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	415
	
l15280:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_AdjControl
	__end_of_setRFSW_AdjControl:
;; =============== function _setRFSW_AdjControl ends ============

	signat	_setRFSW_AdjControl,4216
	global	_setPowerFault_Main
psect	text4091,local,class=CODE,delta=2
global __ptext4091
__ptext4091:

;; *************** function _setPowerFault_Main *****************
;; Defined at:
;;		line 62 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_getLoad_Safe
;;		_getTemp_Safe
;;		_setPowerFault_Exceptions
;; This function is called by:
;;		_PowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text4091
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	62
	global	__size_of_setPowerFault_Main
	__size_of_setPowerFault_Main	equ	__end_of_setPowerFault_Main-_setPowerFault_Main
	
_setPowerFault_Main:	
	opt	stack 5
; Regs used in _setPowerFault_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	63
	
l25544:	
;PowerFault_B1.c: 63: if(PF->Enable)
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10251
	goto	u10250
u10251:
	goto	l14039
u10250:
	line	65
	
l25546:	
;PowerFault_B1.c: 64: {
;PowerFault_B1.c: 65: if(PF->ADtoGO == 0)
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10261
	goto	u10260
u10261:
	goto	l25560
u10260:
	line	67
	
l25548:	
;PowerFault_B1.c: 66: {
;PowerFault_B1.c: 67: PF->Time++;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	68
	
l25550:	
;PowerFault_B1.c: 68: if(PF->Time >= 700)
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(02BCh)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(02BCh)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u10271
	goto	u10270
u10271:
	goto	l14039
u10270:
	line	70
	
l25552:	
;PowerFault_B1.c: 69: {
;PowerFault_B1.c: 70: if(getLoad_Safe() && getTemp_Safe())
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10281
	goto	u10280
u10281:
	goto	l25558
u10280:
	
l25554:	
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10291
	goto	u10290
u10291:
	goto	l25558
u10290:
	line	72
	
l25556:	
;PowerFault_B1.c: 71: {
;PowerFault_B1.c: 72: PF->Time=0;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	73
;PowerFault_B1.c: 73: PF->ADtoGO=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	74
;PowerFault_B1.c: 74: PF->Safe=0;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	75
;PowerFault_B1.c: 75: }
	goto	l14039
	line	76
	
l14024:	
	line	78
	
l25558:	
;PowerFault_B1.c: 76: else
;PowerFault_B1.c: 77: {
;PowerFault_B1.c: 78: PF->Time=700;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(02BCh)
	movwi	[0]fsr1
	movlw	high(02BCh)
	movwi	[1]fsr1
	goto	l14039
	line	79
	
l14025:	
	goto	l14039
	line	80
	
l14023:	
	line	81
;PowerFault_B1.c: 79: }
;PowerFault_B1.c: 80: }
;PowerFault_B1.c: 81: }
	goto	l14039
	line	82
	
l14022:	
	line	84
	
l25560:	
;PowerFault_B1.c: 82: else
;PowerFault_B1.c: 83: {
;PowerFault_B1.c: 84: PF->Time++;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	85
	
l25562:	
;PowerFault_B1.c: 85: if(PF->Time >= 2)
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(02h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(02h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u10301
	goto	u10300
u10301:
	goto	l14039
u10300:
	line	87
	
l25564:	
;PowerFault_B1.c: 86: {
;PowerFault_B1.c: 87: PF->Time=0;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	88
;PowerFault_B1.c: 88: PF->ADtoGO=0;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	90
;PowerFault_B1.c: 90: if(PF->ERROR)
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10311
	goto	u10310
u10311:
	goto	l25580
u10310:
	line	92
	
l25566:	
;PowerFault_B1.c: 91: {
;PowerFault_B1.c: 92: if(PF->AD <= (300+100) && PF->AD >= (300-100))
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0191h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0191h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u10321
	goto	u10320
u10321:
	goto	l25578
u10320:
	
l25568:	
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0C8h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0C8h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u10331
	goto	u10330
u10331:
	goto	l25578
u10330:
	line	94
	
l25570:	
;PowerFault_B1.c: 93: {
;PowerFault_B1.c: 94: PF->Count++;
	movlw	(01h)
	movwf	(??_setPowerFault_Main+0)+0
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setPowerFault_Main+0)+0,w
	addwf	indf1,f
	line	95
	
l25572:	
;PowerFault_B1.c: 95: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u10341
	goto	u10340
u10341:
	goto	l14032
u10340:
	line	97
	
l25574:	
;PowerFault_B1.c: 96: {
;PowerFault_B1.c: 97: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	98
	
l25576:	
;PowerFault_B1.c: 98: setPowerFault_Exceptions(0);
	movlw	(0)
	fcall	_setPowerFault_Exceptions
	goto	l14032
	line	99
	
l14030:	
	line	100
;PowerFault_B1.c: 99: }
;PowerFault_B1.c: 100: }
	goto	l14032
	line	101
	
l14029:	
	line	103
	
l25578:	
;PowerFault_B1.c: 101: else
;PowerFault_B1.c: 102: {
;PowerFault_B1.c: 103: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l14032
	line	104
	
l14031:	
	line	105
;PowerFault_B1.c: 104: }
;PowerFault_B1.c: 105: }
	goto	l14032
	line	106
	
l14028:	
	line	108
	
l25580:	
;PowerFault_B1.c: 106: else
;PowerFault_B1.c: 107: {
;PowerFault_B1.c: 108: if(PF->AD >= (300+100) || PF->AD <= (310-100))
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0190h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0190h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u10351
	goto	u10350
u10351:
	goto	l25584
u10350:
	
l25582:	
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0D3h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0D3h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u10361
	goto	u10360
u10361:
	goto	l25592
u10360:
	goto	l25584
	
l14035:	
	line	110
	
l25584:	
;PowerFault_B1.c: 109: {
;PowerFault_B1.c: 110: PF->Count++;
	movlw	(01h)
	movwf	(??_setPowerFault_Main+0)+0
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setPowerFault_Main+0)+0,w
	addwf	indf1,f
	line	111
	
l25586:	
;PowerFault_B1.c: 111: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u10371
	goto	u10370
u10371:
	goto	l14032
u10370:
	line	113
	
l25588:	
;PowerFault_B1.c: 112: {
;PowerFault_B1.c: 113: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	114
	
l25590:	
;PowerFault_B1.c: 114: setPowerFault_Exceptions(1);
	movlw	(01h)
	fcall	_setPowerFault_Exceptions
	goto	l14032
	line	115
	
l14036:	
	line	116
;PowerFault_B1.c: 115: }
;PowerFault_B1.c: 116: }
	goto	l14032
	line	117
	
l14033:	
	line	119
	
l25592:	
;PowerFault_B1.c: 117: else
;PowerFault_B1.c: 118: {
;PowerFault_B1.c: 119: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l14032
	line	120
	
l14037:	
	line	122
	
l14032:	
	line	123
;PowerFault_B1.c: 120: }
;PowerFault_B1.c: 122: }
;PowerFault_B1.c: 123: if(PF->ERROR == 0)
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u10381
	goto	u10380
u10381:
	goto	l14038
u10380:
	line	125
	
l25594:	
;PowerFault_B1.c: 124: {
;PowerFault_B1.c: 125: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	126
	
l14038:	
	line	127
;PowerFault_B1.c: 126: }
;PowerFault_B1.c: 127: PF->AD=0;
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l14039
	line	128
	
l14027:	
	goto	l14039
	line	129
	
l14026:	
	goto	l14039
	line	130
	
l14021:	
	line	131
	
l14039:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Main
	__end_of_setPowerFault_Main:
;; =============== function _setPowerFault_Main ends ============

	signat	_setPowerFault_Main,88
	global	_setTemp_Main
psect	text4092,local,class=CODE,delta=2
global __ptext4092
__ptext4092:

;; *************** function _setTemp_Main *****************
;; Defined at:
;;		line 65 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_getLoad_Safe
;;		_getPF_Safe
;;		_setOverTemp_Exceptions
;; This function is called by:
;;		_Temp_Main
;; This function uses a non-reentrant model
;;
psect	text4092
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	65
	global	__size_of_setTemp_Main
	__size_of_setTemp_Main	equ	__end_of_setTemp_Main-_setTemp_Main
	
_setTemp_Main:	
	opt	stack 5
; Regs used in _setTemp_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	66
	
l25486:	
;OverTemperature_B1.c: 66: if(Temp->Enable)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10131
	goto	u10130
u10131:
	goto	l11778
u10130:
	line	68
	
l25488:	
;OverTemperature_B1.c: 67: {
;OverTemperature_B1.c: 68: if(Temp->ADtoGO == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u10141
	goto	u10140
u10141:
	goto	l25502
u10140:
	line	70
	
l25490:	
;OverTemperature_B1.c: 69: {
;OverTemperature_B1.c: 70: Temp->Time++;
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	71
	
l25492:	
;OverTemperature_B1.c: 71: if(Temp->Time >= 500)
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(01F4h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(01F4h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u10151
	goto	u10150
u10151:
	goto	l11778
u10150:
	line	73
	
l25494:	
;OverTemperature_B1.c: 72: {
;OverTemperature_B1.c: 73: if(getLoad_Safe() && getPF_Safe())
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10161
	goto	u10160
u10161:
	goto	l25500
u10160:
	
l25496:	
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10171
	goto	u10170
u10171:
	goto	l25500
u10170:
	line	75
	
l25498:	
;OverTemperature_B1.c: 74: {
;OverTemperature_B1.c: 75: Temp->Time=0;
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	76
;OverTemperature_B1.c: 76: Temp->ADtoGO=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	77
;OverTemperature_B1.c: 77: Temp->Safe=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	78
;OverTemperature_B1.c: 78: }
	goto	l11778
	line	79
	
l11765:	
	line	81
	
l25500:	
;OverTemperature_B1.c: 79: else
;OverTemperature_B1.c: 80: {
;OverTemperature_B1.c: 81: Temp->Time=1000;
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(03E8h)
	movwi	[0]fsr1
	movlw	high(03E8h)
	movwi	[1]fsr1
	goto	l11778
	line	82
	
l11766:	
	goto	l11778
	line	83
	
l11764:	
	line	84
;OverTemperature_B1.c: 82: }
;OverTemperature_B1.c: 83: }
;OverTemperature_B1.c: 84: }
	goto	l11778
	line	85
	
l11763:	
	line	87
	
l25502:	
;OverTemperature_B1.c: 85: else
;OverTemperature_B1.c: 86: {
;OverTemperature_B1.c: 87: Temp->Time++;
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	88
	
l25504:	
;OverTemperature_B1.c: 88: if(Temp->Time >= 4)
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(04h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(04h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u10181
	goto	u10180
u10181:
	goto	l11778
u10180:
	line	90
	
l25506:	
;OverTemperature_B1.c: 89: {
;OverTemperature_B1.c: 90: Temp->Time=0;
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	91
;OverTemperature_B1.c: 91: Temp->ADtoGO=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	92
;OverTemperature_B1.c: 92: Temp->AD=Temp->ADH[1];
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(??_setTemp_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_setTemp_Main+0)+0,w
	movwi	[1]fsr1
	line	93
;OverTemperature_B1.c: 93: if(Temp->ERROR)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10191
	goto	u10190
u10191:
	goto	l25520
u10190:
	line	95
	
l25508:	
;OverTemperature_B1.c: 94: {
;OverTemperature_B1.c: 95: if(Temp->AD >= 600)
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(0258h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(0258h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u10201
	goto	u10200
u10201:
	goto	l25518
u10200:
	line	97
	
l25510:	
;OverTemperature_B1.c: 96: {
;OverTemperature_B1.c: 97: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	98
	
l25512:	
;OverTemperature_B1.c: 98: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u10211
	goto	u10210
u10211:
	goto	l11773
u10210:
	line	100
	
l25514:	
;OverTemperature_B1.c: 99: {
;OverTemperature_B1.c: 100: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	101
	
l25516:	
;OverTemperature_B1.c: 101: setOverTemp_Exceptions(0);
	movlw	(0)
	fcall	_setOverTemp_Exceptions
	goto	l11773
	line	102
	
l11771:	
	line	103
;OverTemperature_B1.c: 102: }
;OverTemperature_B1.c: 103: }
	goto	l11773
	line	104
	
l11770:	
	line	106
	
l25518:	
;OverTemperature_B1.c: 104: else
;OverTemperature_B1.c: 105: {
;OverTemperature_B1.c: 106: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l11773
	line	107
	
l11772:	
	line	108
;OverTemperature_B1.c: 107: }
;OverTemperature_B1.c: 108: }
	goto	l11773
	line	109
	
l11769:	
	line	111
	
l25520:	
;OverTemperature_B1.c: 109: else
;OverTemperature_B1.c: 110: {
;OverTemperature_B1.c: 111: if(Temp->AD <= 550)
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(0227h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(0227h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipnc
	goto	u10221
	goto	u10220
u10221:
	goto	l25530
u10220:
	line	113
	
l25522:	
;OverTemperature_B1.c: 112: {
;OverTemperature_B1.c: 113: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	114
	
l25524:	
;OverTemperature_B1.c: 114: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u10231
	goto	u10230
u10231:
	goto	l11773
u10230:
	line	116
	
l25526:	
;OverTemperature_B1.c: 115: {
;OverTemperature_B1.c: 116: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	117
	
l25528:	
;OverTemperature_B1.c: 117: setOverTemp_Exceptions(1);
	movlw	(01h)
	fcall	_setOverTemp_Exceptions
	goto	l11773
	line	118
	
l11775:	
	line	119
;OverTemperature_B1.c: 118: }
;OverTemperature_B1.c: 119: }
	goto	l11773
	line	120
	
l11774:	
	line	122
	
l25530:	
;OverTemperature_B1.c: 120: else
;OverTemperature_B1.c: 121: {
;OverTemperature_B1.c: 122: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l11773
	line	123
	
l11776:	
	line	124
	
l11773:	
	line	125
;OverTemperature_B1.c: 123: }
;OverTemperature_B1.c: 124: }
;OverTemperature_B1.c: 125: if(Temp->ERROR == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u10241
	goto	u10240
u10241:
	goto	l25534
u10240:
	line	127
	
l25532:	
;OverTemperature_B1.c: 126: {
;OverTemperature_B1.c: 127: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l25534
	line	128
	
l11777:	
	line	129
	
l25534:	
;OverTemperature_B1.c: 128: }
;OverTemperature_B1.c: 129: Product->Data[24]=Temp->AD >> 8;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movf	1+(??_setTemp_Main+0)+0,w
	movwf	(??_setTemp_Main+2)+0
	movf	(_Product),w
	addlw	018h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+2)+0,w
	movwf	indf1
	line	130
	
l25536:	
;OverTemperature_B1.c: 130: Product->Data[25]=Temp->AD;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTemp_Main+0)+0
	movf	(_Product),w
	addlw	019h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	movwf	indf1
	line	131
;OverTemperature_B1.c: 131: Product->Data[3]=Temp->AD >> 8;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movf	1+(??_setTemp_Main+0)+0,w
	movwf	(??_setTemp_Main+2)+0
	movf	(_Product),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+2)+0,w
	movwf	indf1
	line	132
	
l25538:	
;OverTemperature_B1.c: 132: Product->Data[4]=Temp->AD;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTemp_Main+0)+0
	movf	(_Product),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	movwf	indf1
	line	133
	
l25540:	
;OverTemperature_B1.c: 133: Temp->ADH[0]=0;
	movf	(_Temp),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	134
	
l25542:	
;OverTemperature_B1.c: 134: Temp->ADH[1]=0;
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l11778
	line	135
	
l11768:	
	goto	l11778
	line	136
	
l11767:	
	goto	l11778
	line	137
	
l11762:	
	line	138
	
l11778:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Main
	__end_of_setTemp_Main:
;; =============== function _setTemp_Main ends ============

	signat	_setTemp_Main,88
	global	_Load_Main
psect	text4093,local,class=CODE,delta=2
global __ptext4093
__ptext4093:

;; *************** function _Load_Main *****************
;; Defined at:
;;		line 46 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_setLoad_Exceptions
;;		___lwdiv
;;		_setDimmerLights_Clear
;;		___wmul
;;		_setLoad_AH_AL_Restore
;;		_getTemp_Safe
;;		_getPF_Safe
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4093
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	46
	global	__size_of_Load_Main
	__size_of_Load_Main	equ	__end_of_Load_Main-_Load_Main
	
_Load_Main:	
	opt	stack 6
; Regs used in _Load_Main: [wreg-status,0+pclath+cstack]
	line	48
	
l25382:	
;OverLoad_B1.c: 47: char i;
;OverLoad_B1.c: 48: if(Load->ERROR)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u9911
	goto	u9910
u9911:
	goto	l25392
u9910:
	line	50
	
l25384:	
;OverLoad_B1.c: 49: {
;OverLoad_B1.c: 50: Load->ErrorTime++;
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	51
	
l25386:	
;OverLoad_B1.c: 51: if(Load->ErrorTime >= 1000)
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movlw	high(03E8h)
	subwf	1+(??_Load_Main+0)+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_Load_Main+0)+0,w
	skipc
	goto	u9921
	goto	u9920
u9921:
	goto	l10580
u9920:
	line	53
	
l25388:	
;OverLoad_B1.c: 52: {
;OverLoad_B1.c: 53: Load->ErrorTime=0;
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	54
	
l25390:	
;OverLoad_B1.c: 54: setLoad_Exceptions(0);
	movlw	(0)
	fcall	_setLoad_Exceptions
	goto	l10580
	line	55
	
l10554:	
	line	56
;OverLoad_B1.c: 55: }
;OverLoad_B1.c: 56: }
	goto	l10580
	line	57
	
l10553:	
	line	59
	
l25392:	
;OverLoad_B1.c: 57: else
;OverLoad_B1.c: 58: {
;OverLoad_B1.c: 59: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u9931
	goto	u9930
u9931:
	goto	l25466
u9930:
	line	61
	
l25394:	
;OverLoad_B1.c: 60: {
;OverLoad_B1.c: 61: Load->Time++;
	movf	(_Load),w
	addlw	01h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	62
	
l25396:	
;OverLoad_B1.c: 62: if(Load->Time >= 5)
	movf	(_Load),w
	addlw	01h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movlw	high(05h)
	subwf	1+(??_Load_Main+0)+0,w
	movlw	low(05h)
	skipnz
	subwf	0+(??_Load_Main+0)+0,w
	skipc
	goto	u9941
	goto	u9940
u9941:
	goto	l10580
u9940:
	line	64
	
l25398:	
;OverLoad_B1.c: 63: {
;OverLoad_B1.c: 64: Load->Time=0;
	movf	(_Load),w
	addlw	01h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	65
;OverLoad_B1.c: 65: Load->ADtoGO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,4
	line	66
	
l25400:	
;OverLoad_B1.c: 66: Load->LightsCount=Load->Lights1Status+Load->Lights2Status+Load->Lights3Status;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	044h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	movf	indf0,w
	movwf	(??_Load_Main+0)+0
	movf	(_Load),w
	addlw	043h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	movf	indf0,w
	addwf	(??_Load_Main+0)+0,w
	addwf	indf1,w
	movwf	(??_Load_Main+1)+0
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Load_Main+1)+0,w
	movwf	indf1
	line	67
	
l25402:	
;OverLoad_B1.c: 67: for(i=1 ; i<4 ; i++)
	clrf	(Load_Main@i)
	bsf	status,0
	rlf	(Load_Main@i),f
	
l25404:	
	movlw	(04h)
	subwf	(Load_Main@i),w
	skipc
	goto	u9951
	goto	u9950
u9951:
	goto	l25408
u9950:
	goto	l25414
	
l25406:	
	goto	l25414
	line	68
	
l10558:	
	line	69
	
l25408:	
;OverLoad_B1.c: 68: {
;OverLoad_B1.c: 69: Load->ADH+=Load->AH[i];
	movf	(Load_Main@i),w
	addwf	wreg,w
	addlw	08h
	addwf	(_Load),w
	movwf	(??_Load_Main+0)+0
	movf	0+(??_Load_Main+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr1
	addwf	indf0,f
	addfsr	fsr0,1
	moviw	[1]fsr1
	addwfc	indf0,f
	addfsr	fsr0,-1
	line	70
;OverLoad_B1.c: 70: Load->ADL+=Load->AL[i];
	movf	(Load_Main@i),w
	addwf	wreg,w
	addlw	01Ah
	addwf	(_Load),w
	movwf	(??_Load_Main+0)+0
	movf	0+(??_Load_Main+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	030h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr1
	addwf	indf0,f
	addfsr	fsr0,1
	moviw	[1]fsr1
	addwfc	indf0,f
	addfsr	fsr0,-1
	line	67
	
l25410:	
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(??_Load_Main+0)+0,w
	addwf	(Load_Main@i),f
	
l25412:	
	movlw	(04h)
	subwf	(Load_Main@i),w
	skipc
	goto	u9961
	goto	u9960
u9961:
	goto	l25408
u9960:
	goto	l25414
	
l10559:	
	line	72
	
l25414:	
;OverLoad_B1.c: 71: }
;OverLoad_B1.c: 72: Load->ADH/=3;
	movlw	low(03h)
	movwf	(?___lwdiv)
	movlw	high(03h)
	movwf	((?___lwdiv))+1
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___lwdiv)+02h
	moviw	[1]fsr1
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(0+(?___lwdiv)),w
	movwi	[0]fsr1
	movf	(1+(?___lwdiv)),w
	movwi	[1]fsr1
	line	73
;OverLoad_B1.c: 73: Load->ADL/=3;
	movlw	low(03h)
	movwf	(?___lwdiv)
	movlw	high(03h)
	movwf	((?___lwdiv))+1
	movf	(_Load),w
	addlw	030h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___lwdiv)+02h
	moviw	[1]fsr1
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	030h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(0+(?___lwdiv)),w
	movwi	[0]fsr1
	movf	(1+(?___lwdiv)),w
	movwi	[1]fsr1
	line	74
	
l25416:	
;OverLoad_B1.c: 74: if(Load->ADH > Load->ADL)
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	(_Load),w
	addlw	030h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+2)+0+1
	movf	1+(??_Load_Main+0)+0,w
	subwf	1+(??_Load_Main+2)+0,w
	skipz
	goto	u9975
	movf	0+(??_Load_Main+0)+0,w
	subwf	0+(??_Load_Main+2)+0,w
u9975:
	skipnc
	goto	u9971
	goto	u9970
u9971:
	goto	l25464
u9970:
	line	76
	
l25418:	
;OverLoad_B1.c: 75: {
;OverLoad_B1.c: 76: Load->AD=(Load->ADH-Load->ADL);
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	030h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr0
	movwf	(??_Load_Main+0)+0+1
	comf	(??_Load_Main+0)+0,f
	comf	(??_Load_Main+0)+1,f
	incf	(??_Load_Main+0)+0,f
	skipnz
	incf	(??_Load_Main+0)+1,f
	moviw	[0]fsr1
	addwf	0+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0
	moviw	[1]fsr1
	addwfc	1+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0+1
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_Load_Main+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_Load_Main+2)+0,w
	movwi	[1]fsr1
	line	78
	
l25420:	
;OverLoad_B1.c: 78: if(Load->Count < 2)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipnc
	goto	u9981
	goto	u9980
u9981:
	goto	l25436
u9980:
	line	80
	
l25422:	
;OverLoad_B1.c: 79: {
;OverLoad_B1.c: 80: Load->Count++;
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	addwf	indf1,f
	line	81
	
l25424:	
;OverLoad_B1.c: 81: if(Load->Count == 1)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u9991
	goto	u9990
u9991:
	goto	l25428
u9990:
	line	83
	
l25426:	
;OverLoad_B1.c: 82: {
;OverLoad_B1.c: 83: Load->JudgeValue=500;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(01F4h)
	movwi	[0]fsr1
	movlw	high(01F4h)
	movwi	[1]fsr1
	line	84
;OverLoad_B1.c: 84: }
	goto	l25436
	line	85
	
l10562:	
	
l25428:	
;OverLoad_B1.c: 85: else if(Load->Count == 2)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u10001
	goto	u10000
u10001:
	goto	l25436
u10000:
	line	87
	
l25430:	
;OverLoad_B1.c: 86: {
;OverLoad_B1.c: 87: if(Load->LightsCount == 1)
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u10011
	goto	u10010
u10011:
	goto	l25434
u10010:
	line	89
	
l25432:	
;OverLoad_B1.c: 88: {
;OverLoad_B1.c: 89: Load->JudgeValue=0x32;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(032h)
	movwi	[0]fsr1
	movlw	high(032h)
	movwi	[1]fsr1
	line	90
;OverLoad_B1.c: 90: }
	goto	l25436
	line	91
	
l10565:	
	line	93
	
l25434:	
;OverLoad_B1.c: 91: else
;OverLoad_B1.c: 92: {
;OverLoad_B1.c: 93: Load->JudgeValue=(0x32+Load->TotalLoad)-0x08;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	0+(??_Load_Main+0)+0,w
	addlw	low(02Ah)
	movwf	(??_Load_Main+2)+0
	movlw	high(02Ah)
	addwfc	1+(??_Load_Main+0)+0,w
	movwf	1+(??_Load_Main+2)+0
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_Load_Main+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_Load_Main+2)+0,w
	movwi	[1]fsr1
	goto	l25436
	line	94
	
l10566:	
	goto	l25436
	line	95
	
l10564:	
	goto	l25436
	line	96
	
l10563:	
	goto	l25436
	
l10561:	
	line	98
	
l25436:	
;OverLoad_B1.c: 94: }
;OverLoad_B1.c: 95: }
;OverLoad_B1.c: 96: }
;OverLoad_B1.c: 98: if(Load->AD >= Load->JudgeValue)
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+2)+0+1
	movf	1+(??_Load_Main+0)+0,w
	subwf	1+(??_Load_Main+2)+0,w
	skipz
	goto	u10025
	movf	0+(??_Load_Main+0)+0,w
	subwf	0+(??_Load_Main+2)+0,w
u10025:
	skipc
	goto	u10021
	goto	u10020
u10021:
	goto	l25446
u10020:
	line	100
	
l25438:	
;OverLoad_B1.c: 99: {
;OverLoad_B1.c: 100: Load->ErrorCount++;
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	addwf	indf1,f
	line	101
	
l25440:	
;OverLoad_B1.c: 101: if(Load->ErrorCount >2)
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u10031
	goto	u10030
u10031:
	goto	l25464
u10030:
	line	103
	
l25442:	
;OverLoad_B1.c: 102: {
;OverLoad_B1.c: 103: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	104
	
l25444:	
;OverLoad_B1.c: 104: setLoad_Exceptions(1);
	movlw	(01h)
	fcall	_setLoad_Exceptions
	goto	l25464
	line	113
	
l10568:	
	line	114
;OverLoad_B1.c: 113: }
;OverLoad_B1.c: 114: }
	goto	l25464
	line	115
	
l10567:	
	line	117
	
l25446:	
;OverLoad_B1.c: 115: else
;OverLoad_B1.c: 116: {
;OverLoad_B1.c: 117: Load->ErrorCount=0;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	118
;OverLoad_B1.c: 118: if(Load->SafeCount < 10)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipnc
	goto	u10041
	goto	u10040
u10041:
	goto	l25450
u10040:
	line	120
	
l25448:	
;OverLoad_B1.c: 119: {
;OverLoad_B1.c: 120: Load->SafeCount++;
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	addwf	indf1,f
	goto	l25450
	line	121
	
l10570:	
	line	122
	
l25450:	
;OverLoad_B1.c: 121: }
;OverLoad_B1.c: 122: if(Load->SafeCount >= 10)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipc
	goto	u10051
	goto	u10050
u10051:
	goto	l25464
u10050:
	line	124
	
l25452:	
;OverLoad_B1.c: 123: {
;OverLoad_B1.c: 124: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	127
	
l25454:	
;OverLoad_B1.c: 127: setDimmerLights_Clear(1,1);
	clrf	(?_setDimmerLights_Clear)
	bsf	status,0
	rlf	(?_setDimmerLights_Clear),f
	movlw	(01h)
	fcall	_setDimmerLights_Clear
	line	138
	
l25456:	
;OverLoad_B1.c: 138: if(Load->StatusOn)
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10061
	goto	u10060
u10061:
	goto	l10572
u10060:
	line	140
	
l25458:	
;OverLoad_B1.c: 139: {
;OverLoad_B1.c: 140: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	141
;OverLoad_B1.c: 141: Load->TotalLoad=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_Load_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_Load_Main+0)+0,w
	movwi	[1]fsr1
	line	143
	
l10572:	
	line	145
;OverLoad_B1.c: 143: }
;OverLoad_B1.c: 145: if(Load->StatusOff)
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10071
	goto	u10070
u10071:
	goto	l25464
u10070:
	line	147
	
l25460:	
;OverLoad_B1.c: 146: {
;OverLoad_B1.c: 147: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	148
;OverLoad_B1.c: 148: Load->TotalLoad=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_Load_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_Load_Main+0)+0,w
	movwi	[1]fsr1
	line	149
	
l25462:	
;OverLoad_B1.c: 149: Load->JudgeValue=0x32*Load->LightsCount;
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	clrf	(??_Load_Main+0)+0+1
	movf	0+(??_Load_Main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_Load_Main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(032h)
	movwf	0+(?___wmul)+02h
	movlw	high(032h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(0+(?___wmul)),w
	movwi	[0]fsr1
	movf	(1+(?___wmul)),w
	movwi	[1]fsr1
	goto	l25464
	line	150
	
l10573:	
	goto	l25464
	line	151
	
l10571:	
	goto	l25464
	line	152
	
l10569:	
	goto	l25464
	line	153
	
l10560:	
	line	154
	
l25464:	
;OverLoad_B1.c: 150: }
;OverLoad_B1.c: 151: }
;OverLoad_B1.c: 152: }
;OverLoad_B1.c: 153: }
;OverLoad_B1.c: 154: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	goto	l10580
	line	166
	
l10557:	
	line	167
;OverLoad_B1.c: 166: }
;OverLoad_B1.c: 167: }
	goto	l10580
	line	168
	
l10556:	
	line	170
	
l25466:	
;OverLoad_B1.c: 168: else
;OverLoad_B1.c: 169: {
;OverLoad_B1.c: 170: if(Load->GO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10081
	goto	u10080
u10081:
	goto	l25478
u10080:
	line	172
	
l25468:	
;OverLoad_B1.c: 171: {
;OverLoad_B1.c: 172: if(!Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u10091
	goto	u10090
u10091:
	goto	l25472
u10090:
	line	174
	
l25470:	
;OverLoad_B1.c: 173: {
;OverLoad_B1.c: 174: Load->LightsON=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	175
;OverLoad_B1.c: 175: Load->Safe=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,3
	goto	l25472
	line	176
	
l10576:	
	line	177
	
l25472:	
;OverLoad_B1.c: 176: }
;OverLoad_B1.c: 177: if(getTemp_Safe() && getPF_Safe())
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10101
	goto	u10100
u10101:
	goto	l10580
u10100:
	
l25474:	
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10111
	goto	u10110
u10111:
	goto	l10580
u10110:
	line	179
	
l25476:	
;OverLoad_B1.c: 178: {
;OverLoad_B1.c: 179: Load->ADtoGO=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l10580
	line	180
	
l10577:	
	line	181
;OverLoad_B1.c: 180: }
;OverLoad_B1.c: 181: }
	goto	l10580
	line	182
	
l10575:	
	line	184
	
l25478:	
;OverLoad_B1.c: 182: else
;OverLoad_B1.c: 183: {
;OverLoad_B1.c: 184: if(Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u10121
	goto	u10120
u10121:
	goto	l10580
u10120:
	line	186
	
l25480:	
;OverLoad_B1.c: 185: {
;OverLoad_B1.c: 186: Load->LightsON=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	187
;OverLoad_B1.c: 187: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	188
;OverLoad_B1.c: 188: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	189
;OverLoad_B1.c: 189: Load->Count=0;
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	190
;OverLoad_B1.c: 190: Load->TotalLoad=0;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	191
;OverLoad_B1.c: 191: Load->NumberCount=0;
	movf	(_Load),w
	addlw	03Fh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	192
;OverLoad_B1.c: 192: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	193
;OverLoad_B1.c: 193: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	194
;OverLoad_B1.c: 194: Load->AD=0;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	195
	
l25482:	
;OverLoad_B1.c: 195: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	line	198
	
l25484:	
;OverLoad_B1.c: 198: setDimmerLights_Clear(1,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Clear)
	bsf	status,0
	rlf	(?_setDimmerLights_Clear),f
	movlw	(01h)
	fcall	_setDimmerLights_Clear
	goto	l10580
	line	223
	
l10579:	
	goto	l10580
	line	224
	
l10578:	
	goto	l10580
	line	225
	
l10574:	
	goto	l10580
	line	226
	
l10555:	
	line	227
	
l10580:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Main
	__end_of_Load_Main:
;; =============== function _Load_Main ends ============

	signat	_Load_Main,88
	global	_setRF_DimmerValue
psect	text4094,local,class=CODE,delta=2
global __ptext4094
__ptext4094:

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 426 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   67[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setDimmerLights_AdjRF
;; This function is called by:
;;		_setRFSW_AdjControl
;; This function uses a non-reentrant model
;;
psect	text4094
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	426
	global	__size_of_setRF_DimmerValue
	__size_of_setRF_DimmerValue	equ	__end_of_setRF_DimmerValue-_setRF_DimmerValue
	
_setRF_DimmerValue:	
	opt	stack 2
; Regs used in _setRF_DimmerValue: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_DimmerValue@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerValue@lights)
	line	427
	
l24030:	
;RF_Control_B1.c: 427: if(RF_Data[9] > 0x64)
	movlw	(065h)
	movlb 1	; select bank1
	subwf	0+(_RF_Data)^080h+09h,w
	skipc
	goto	u8011
	goto	u8010
u8011:
	goto	l24034
u8010:
	line	429
	
l24032:	
;RF_Control_B1.c: 428: {
;RF_Control_B1.c: 429: RF_Data[9]=0x64;
	movlw	(064h)
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	goto	l24034
	line	430
	
l15286:	
	line	431
	
l24034:	
;RF_Control_B1.c: 430: }
;RF_Control_B1.c: 431: Product->Data[9]=RF_Data[9];
	movf	0+(_RF_Data)^080h+09h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	432
	
l24036:	
;RF_Control_B1.c: 432: Product->Data[11]=lights;
	movf	(setRF_DimmerValue@lights),w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	433
	
l24038:	
;RF_Control_B1.c: 433: Product->Data[(20+lights)]=Product->Data[9];
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(setRF_DimmerValue@lights),w
	addlw	014h
	addwf	(_Product),w
	movwf	(??_setRF_DimmerValue+1)+0
	movf	0+(??_setRF_DimmerValue+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	434
	
l24040:	
;RF_Control_B1.c: 434: setDimmerLights_AdjRF(lights);
	movf	(setRF_DimmerValue@lights),w
	fcall	_setDimmerLights_AdjRF
	line	435
	
l15287:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
;; =============== function _setRF_DimmerValue ends ============

	signat	_setRF_DimmerValue,4216
	global	_setPowerFault_Exceptions
psect	text4095,local,class=CODE,delta=2
global __ptext4095
__ptext4095:

;; *************** function _setPowerFault_Exceptions *****************
;; Defined at:
;;		line 134 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLights_Exceptions
;;		_setLED
;;		_setSw_Enable
;;		_setRF_Enable
;; This function is called by:
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text4095
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	134
	global	__size_of_setPowerFault_Exceptions
	__size_of_setPowerFault_Exceptions	equ	__end_of_setPowerFault_Exceptions-_setPowerFault_Exceptions
	
_setPowerFault_Exceptions:	
	opt	stack 5
; Regs used in _setPowerFault_Exceptions: [wreg+fsr1l-status,0+pclath+cstack]
;setPowerFault_Exceptions@command stored from wreg
	movlb 0	; select bank0
	movwf	(setPowerFault_Exceptions@command)
	line	135
	
l25374:	
;PowerFault_B1.c: 135: PF->ERROR=command;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setPowerFault_Exceptions@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	136
	
l25376:	
;PowerFault_B1.c: 136: PF->Safe=(~command) & 0x01;
	comf	(setPowerFault_Exceptions@command),w
	andlw	01h
	movwf	(??_setPowerFault_Exceptions+0)+0
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	rlf	(??_setPowerFault_Exceptions+0)+0,f
	rlf	(??_setPowerFault_Exceptions+0)+0,f
	movf	indf1,w
	xorwf	(??_setPowerFault_Exceptions+0)+0,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_setPowerFault_Exceptions+0)+0,w
	movwf	indf1
	line	137
	
l25378:	
;PowerFault_B1.c: 137: if(command == 1)
	movf	(setPowerFault_Exceptions@command),w
	xorlw	01h&0ffh
	skipz
	goto	u9901
	goto	u9900
u9901:
	goto	l14042
u9900:
	line	139
	
l25380:	
;PowerFault_B1.c: 138: {
;PowerFault_B1.c: 139: DimmerLights_Exceptions(3);
	movlw	(03h)
	fcall	_DimmerLights_Exceptions
	line	140
	
l14042:	
	line	141
;PowerFault_B1.c: 140: }
;PowerFault_B1.c: 141: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setPowerFault_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setPowerFault_Exceptions+0)+0
	movf	(??_setPowerFault_Exceptions+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	143
;PowerFault_B1.c: 143: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setPowerFault_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	145
;PowerFault_B1.c: 145: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setPowerFault_Exceptions@command),w
	andlw	01h
	movwf	(??_setPowerFault_Exceptions+0)+0
	movf	(??_setPowerFault_Exceptions+0)+0,w
	movwf	(?_setRF_Enable)
	movlw	(01h)
	fcall	_setRF_Enable
	line	149
;PowerFault_B1.c: 149: setLED(2,1);
	movlb 0	; select bank0
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movlw	(02h)
	fcall	_setLED
	line	151
	
l14043:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Exceptions
	__end_of_setPowerFault_Exceptions:
;; =============== function _setPowerFault_Exceptions ends ============

	signat	_setPowerFault_Exceptions,4216
	global	_setOverTemp_Exceptions
psect	text4096,local,class=CODE,delta=2
global __ptext4096
__ptext4096:

;; *************** function _setOverTemp_Exceptions *****************
;; Defined at:
;;		line 141 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLights_Exceptions
;;		_setBuz
;;		_setLED
;;		_setSw_Enable
;;		_setRF_Enable
;; This function is called by:
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text4096
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	141
	global	__size_of_setOverTemp_Exceptions
	__size_of_setOverTemp_Exceptions	equ	__end_of_setOverTemp_Exceptions-_setOverTemp_Exceptions
	
_setOverTemp_Exceptions:	
	opt	stack 5
; Regs used in _setOverTemp_Exceptions: [wreg+fsr1l-status,0+pclath+cstack]
;setOverTemp_Exceptions@command stored from wreg
	movlb 0	; select bank0
	movwf	(setOverTemp_Exceptions@command)
	line	142
	
l25364:	
;OverTemperature_B1.c: 142: Temp->ERROR=command;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setOverTemp_Exceptions@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	143
	
l25366:	
;OverTemperature_B1.c: 143: Temp->Safe=(~command) & 0x01;
	comf	(setOverTemp_Exceptions@command),w
	andlw	01h
	movwf	(??_setOverTemp_Exceptions+0)+0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	(??_setOverTemp_Exceptions+0)+0,f
	movf	indf1,w
	xorwf	(??_setOverTemp_Exceptions+0)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_setOverTemp_Exceptions+0)+0,w
	movwf	indf1
	line	144
	
l25368:	
;OverTemperature_B1.c: 144: if(command)
	movf	(setOverTemp_Exceptions@command),w
	skipz
	goto	u9890
	goto	l25372
u9890:
	line	146
	
l25370:	
;OverTemperature_B1.c: 145: {
;OverTemperature_B1.c: 146: DimmerLights_Exceptions(1);
	movlw	(01h)
	fcall	_DimmerLights_Exceptions
	line	147
;OverTemperature_B1.c: 147: }
	goto	l11782
	line	148
	
l11781:	
	line	150
	
l25372:	
;OverTemperature_B1.c: 148: else
;OverTemperature_B1.c: 149: {
;OverTemperature_B1.c: 150: setBuz(2,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(?_setBuz)
	movlw	high(064h)
	movwf	((?_setBuz))+1
	movlw	(02h)
	fcall	_setBuz
	line	151
	
l11782:	
	line	154
;OverTemperature_B1.c: 151: }
;OverTemperature_B1.c: 154: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setOverTemp_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setOverTemp_Exceptions+0)+0
	movf	(??_setOverTemp_Exceptions+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	156
;OverTemperature_B1.c: 156: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setOverTemp_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	158
;OverTemperature_B1.c: 158: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setOverTemp_Exceptions@command),w
	andlw	01h
	movwf	(??_setOverTemp_Exceptions+0)+0
	movf	(??_setOverTemp_Exceptions+0)+0,w
	movwf	(?_setRF_Enable)
	movlw	(01h)
	fcall	_setRF_Enable
	line	162
;OverTemperature_B1.c: 162: setLED(2,1);
	movlb 0	; select bank0
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movlw	(02h)
	fcall	_setLED
	line	165
	
l11783:	
	return
	opt stack 0
GLOBAL	__end_of_setOverTemp_Exceptions
	__end_of_setOverTemp_Exceptions:
;; =============== function _setOverTemp_Exceptions ends ============

	signat	_setOverTemp_Exceptions,4216
	global	_setLoad_Exceptions
psect	text4097,local,class=CODE,delta=2
global __ptext4097
__ptext4097:

;; *************** function _setLoad_Exceptions *****************
;; Defined at:
;;		line 230 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLights_Exceptions
;;		_setLED
;;		_setSw_Enable
;;		_setRF_Enable
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text4097
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	230
	global	__size_of_setLoad_Exceptions
	__size_of_setLoad_Exceptions	equ	__end_of_setLoad_Exceptions-_setLoad_Exceptions
	
_setLoad_Exceptions:	
	opt	stack 6
; Regs used in _setLoad_Exceptions: [wreg+fsr1l-status,0+pclath+cstack]
;setLoad_Exceptions@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Exceptions@command)
	line	231
	
l25354:	
;OverLoad_B1.c: 231: Load->ERROR=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_Exceptions@command),w
	bcf	indf1,5
	skipz
	bsf	indf1,5
	line	232
	
l25356:	
;OverLoad_B1.c: 232: Load->Safe=(~command) & 0x01;
	comf	(setLoad_Exceptions@command),w
	andlw	01h
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	rlf	(??_setLoad_Exceptions+0)+0,f
	rlf	(??_setLoad_Exceptions+0)+0,f
	rlf	(??_setLoad_Exceptions+0)+0,f
	movf	indf1,w
	xorwf	(??_setLoad_Exceptions+0)+0,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_setLoad_Exceptions+0)+0,w
	movwf	indf1
	line	233
	
l25358:	
;OverLoad_B1.c: 233: Load->ErrorStatus=command;
	movf	(setLoad_Exceptions@command),w
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	indf1
	line	235
	
l25360:	
;OverLoad_B1.c: 235: if(command)
	movf	(setLoad_Exceptions@command),w
	skipz
	goto	u9880
	goto	l10583
u9880:
	line	237
	
l25362:	
;OverLoad_B1.c: 236: {
;OverLoad_B1.c: 237: DimmerLights_Exceptions(2);
	movlw	(02h)
	fcall	_DimmerLights_Exceptions
	line	238
	
l10583:	
	line	239
;OverLoad_B1.c: 238: }
;OverLoad_B1.c: 239: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setLoad_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	241
;OverLoad_B1.c: 241: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setLoad_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	243
;OverLoad_B1.c: 243: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setLoad_Exceptions@command),w
	andlw	01h
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	(?_setRF_Enable)
	movlw	(01h)
	fcall	_setRF_Enable
	line	247
;OverLoad_B1.c: 247: setLED(2,1);
	movlb 0	; select bank0
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movlw	(02h)
	fcall	_setLED
	line	249
	
l10584:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Exceptions
	__end_of_setLoad_Exceptions:
;; =============== function _setLoad_Exceptions ends ============

	signat	_setLoad_Exceptions,4216
	global	_Switch_Main
psect	text4098,local,class=CODE,delta=2
global __ptext4098
__ptext4098:

;; *************** function _Switch_Main *****************
;; Defined at:
;;		line 63 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setSw_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4098
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	63
	global	__size_of_Switch_Main
	__size_of_Switch_Main	equ	__end_of_Switch_Main-_Switch_Main
	
_Switch_Main:	
	opt	stack 7
; Regs used in _Switch_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	65
	
l25352:	
;Switch_B1.c: 65: setSw_Main(1);
	movlw	(01h)
	fcall	_setSw_Main
	line	76
	
l16442:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Main
	__end_of_Switch_Main:
;; =============== function _Switch_Main ends ============

	signat	_Switch_Main,88
	global	_Flash_Memory_Main
psect	text4099,local,class=CODE,delta=2
global __ptext4099
__ptext4099:

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 475 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Flash_Memory_Modify
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4099
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	475
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
	opt	stack 8
; Regs used in _Flash_Memory_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	476
	
l25338:	
;MCU_16f1518_B1.c: 476: if(Memory->GO)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9851
	goto	u9850
u9851:
	goto	l9400
u9850:
	line	478
	
l25340:	
;MCU_16f1518_B1.c: 477: {
;MCU_16f1518_B1.c: 478: if(Memory->Modify)
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9861
	goto	u9860
u9861:
	goto	l25350
u9860:
	line	480
	
l25342:	
;MCU_16f1518_B1.c: 479: {
;MCU_16f1518_B1.c: 480: Memory->Time++;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	481
	
l25344:	
;MCU_16f1518_B1.c: 481: if(Memory->Time == 25)
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(019h)
	skipz
	goto	u9875
	moviw	[1]fsr1
	xorlw	high(019h)
u9875:
	skipz
	goto	u9871
	goto	u9870
u9871:
	goto	l9400
u9870:
	line	483
	
l25346:	
;MCU_16f1518_B1.c: 482: {
;MCU_16f1518_B1.c: 483: Memory->Time=0;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	484
;MCU_16f1518_B1.c: 484: Memory->Modify=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	485
;MCU_16f1518_B1.c: 485: Memory->GO=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	486
	
l25348:	
;MCU_16f1518_B1.c: 486: Flash_Memory_Modify();
	fcall	_Flash_Memory_Modify
	goto	l9400
	line	488
	
l9398:	
	line	489
;MCU_16f1518_B1.c: 488: }
;MCU_16f1518_B1.c: 489: }
	goto	l9400
	line	490
	
l9397:	
	line	492
	
l25350:	
;MCU_16f1518_B1.c: 490: else
;MCU_16f1518_B1.c: 491: {
;MCU_16f1518_B1.c: 492: Memory->GO=0;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l9400
	line	493
	
l9399:	
	goto	l9400
	line	494
	
l9396:	
	line	495
	
l9400:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
;; =============== function _Flash_Memory_Main ends ============

	signat	_Flash_Memory_Main,88
	global	_DimmerLights_Main
psect	text4100,local,class=CODE,delta=2
global __ptext4100
__ptext4100:

;; *************** function _DimmerLights_Main *****************
;; Defined at:
;;		line 106 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setDimmerLights_Main
;;		_DimmerLights_Close
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4100
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	106
	global	__size_of_DimmerLights_Main
	__size_of_DimmerLights_Main	equ	__end_of_DimmerLights_Main-_DimmerLights_Main
	
_DimmerLights_Main:	
	opt	stack 7
; Regs used in _DimmerLights_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	108
	
l25336:	
;Dimmer_B1.c: 108: setDimmerLights_Main(1);
	movlw	(01h)
	fcall	_setDimmerLights_Main
	line	119
;Dimmer_B1.c: 119: DimmerLights_Close();
	fcall	_DimmerLights_Close
	line	120
	
l5767:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Main
	__end_of_DimmerLights_Main:
;; =============== function _DimmerLights_Main ends ============

	signat	_DimmerLights_Main,88
	global	_setSw_Main
psect	text4101,local,class=CODE,delta=2
global __ptext4101
__ptext4101:

;; *************** function _setSw_Main *****************
;; Defined at:
;;		line 113 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_SwPointSelect
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerAdjFunc
;;		_setRF_Learn
;;		_setBuz
;;		_Sw_DimmerOffFunc
;; This function is called by:
;;		_Switch_Main
;; This function uses a non-reentrant model
;;
psect	text4101
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	113
	global	__size_of_setSw_Main
	__size_of_setSw_Main	equ	__end_of_setSw_Main-_setSw_Main
	
_setSw_Main:	
	opt	stack 7
; Regs used in _setSw_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Main@sw)
	line	114
	
l25262:	
;Switch_B1.c: 114: if(Sw->Enable)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9681
	goto	u9680
u9681:
	goto	l16473
u9680:
	line	116
	
l25264:	
;Switch_B1.c: 115: {
;Switch_B1.c: 116: SwPointSelect(sw);
	movf	(setSw_Main@sw),w
	fcall	_SwPointSelect
	line	144
	
l25266:	
;Switch_B1.c: 144: Sw->Touch=(RA6 || RA4 || RA0 || RB1)?1:0;
	movlb 0	; select bank0
	clrf	(_setSw_Main$20644)
	bsf	status,0
	rlf	(_setSw_Main$20644),f
	
l25268:	
	btfsc	(102/8),(102)&7
	goto	u9691
	goto	u9690
u9691:
	goto	l25278
u9690:
	
l25270:	
	btfsc	(100/8),(100)&7
	goto	u9701
	goto	u9700
u9701:
	goto	l25278
u9700:
	
l25272:	
	btfsc	(96/8),(96)&7
	goto	u9711
	goto	u9710
u9711:
	goto	l25278
u9710:
	
l25274:	
	btfsc	(105/8),(105)&7
	goto	u9721
	goto	u9720
u9721:
	goto	l25278
u9720:
	
l25276:	
	clrf	(_setSw_Main$20644)
	goto	l25278
	
l16456:	
	
l25278:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_setSw_Main$20644),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	148
;Switch_B1.c: 148: if(Sw->Touch)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9731
	goto	u9730
u9731:
	goto	l25324
u9730:
	line	150
	
l25280:	
;Switch_B1.c: 149: {
;Switch_B1.c: 150: if(!Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9741
	goto	u9740
u9741:
	goto	l25290
u9740:
	line	152
	
l25282:	
;Switch_B1.c: 151: {
;Switch_B1.c: 152: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	153
	
l25284:	
;Switch_B1.c: 153: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u9751
	goto	u9750
u9751:
	goto	l16473
u9750:
	line	155
	
l25286:	
;Switch_B1.c: 154: {
;Switch_B1.c: 155: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	156
;Switch_B1.c: 156: Sw->Debounce=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	159
	
l25288:	
;Switch_B1.c: 159: Sw_DimmerOnFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOnFunc
	goto	l16473
	line	162
	
l16459:	
	line	163
;Switch_B1.c: 162: }
;Switch_B1.c: 163: }
	goto	l16473
	line	164
	
l16458:	
	line	166
	
l25290:	
;Switch_B1.c: 164: else
;Switch_B1.c: 165: {
;Switch_B1.c: 166: if(!Sw->Hold1)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u9761
	goto	u9760
u9761:
	goto	l25300
u9760:
	line	168
	
l25292:	
;Switch_B1.c: 167: {
;Switch_B1.c: 168: Sw->Hold1Time++;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	169
	
l25294:	
;Switch_B1.c: 169: if(Sw->Hold1Time >= 150)
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(096h)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(096h)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u9771
	goto	u9770
u9771:
	goto	l16473
u9770:
	line	171
	
l25296:	
;Switch_B1.c: 170: {
;Switch_B1.c: 171: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	172
;Switch_B1.c: 172: Sw->Hold1=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	175
	
l25298:	
;Switch_B1.c: 175: Sw_DimmerAdjFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerAdjFunc
	goto	l16473
	line	178
	
l16462:	
	line	179
;Switch_B1.c: 178: }
;Switch_B1.c: 179: }
	goto	l16473
	line	180
	
l16461:	
	line	182
	
l25300:	
;Switch_B1.c: 180: else
;Switch_B1.c: 181: {
;Switch_B1.c: 182: if(!Sw->Hold2)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u9781
	goto	u9780
u9781:
	goto	l25314
u9780:
	line	184
	
l25302:	
;Switch_B1.c: 183: {
;Switch_B1.c: 184: Sw->Hold2Time++;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	185
	
l25304:	
;Switch_B1.c: 185: if(Sw->Hold2Time >= 150)
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(096h)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(096h)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u9791
	goto	u9790
u9791:
	goto	l16473
u9790:
	line	187
	
l25306:	
;Switch_B1.c: 186: {
;Switch_B1.c: 187: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	188
;Switch_B1.c: 188: Sw->Hold2=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	192
	
l25308:	
;Switch_B1.c: 192: setRF_Learn(1,1);
	clrf	(?_setRF_Learn)
	bsf	status,0
	rlf	(?_setRF_Learn),f
	movlw	(01h)
	fcall	_setRF_Learn
	line	194
	
l25310:	
;Switch_B1.c: 194: if(TMain->First)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9801
	goto	u9800
u9801:
	goto	l16473
u9800:
	line	196
	
l25312:	
;Switch_B1.c: 195: {
;Switch_B1.c: 196: setBuz(2,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(?_setBuz)
	movlw	high(064h)
	movwf	((?_setBuz))+1
	movlw	(02h)
	fcall	_setBuz
	goto	l16473
	line	197
	
l16466:	
	goto	l16473
	line	199
	
l16465:	
	line	200
;Switch_B1.c: 197: }
;Switch_B1.c: 199: }
;Switch_B1.c: 200: }
	goto	l16473
	line	201
	
l16464:	
	line	203
	
l25314:	
;Switch_B1.c: 201: else
;Switch_B1.c: 202: {
;Switch_B1.c: 203: if(!Sw->Hold3)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u9811
	goto	u9810
u9811:
	goto	l16473
u9810:
	line	205
	
l25316:	
;Switch_B1.c: 204: {
;Switch_B1.c: 205: Sw->Hold3Time++;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	206
	
l25318:	
;Switch_B1.c: 206: if(Sw->Hold3Time >= 300)
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(012Ch)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(012Ch)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u9821
	goto	u9820
u9821:
	goto	l16473
u9820:
	line	208
	
l25320:	
;Switch_B1.c: 207: {
;Switch_B1.c: 208: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	209
;Switch_B1.c: 209: Sw->Hold3=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	212
	
l25322:	
;Switch_B1.c: 212: setRF_Learn(1,0);
	clrf	(?_setRF_Learn)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l16473
	line	215
	
l16469:	
	goto	l16473
	line	216
	
l16468:	
	goto	l16473
	line	217
	
l16467:	
	goto	l16473
	line	218
	
l16463:	
	goto	l16473
	line	219
	
l16460:	
	line	220
;Switch_B1.c: 215: }
;Switch_B1.c: 216: }
;Switch_B1.c: 217: }
;Switch_B1.c: 218: }
;Switch_B1.c: 219: }
;Switch_B1.c: 220: }
	goto	l16473
	line	221
	
l16457:	
	line	223
	
l25324:	
;Switch_B1.c: 221: else
;Switch_B1.c: 222: {
;Switch_B1.c: 223: if(Sw->Debounce)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9831
	goto	u9830
u9831:
	goto	l16473
u9830:
	line	225
	
l25326:	
;Switch_B1.c: 224: {
;Switch_B1.c: 225: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	226
	
l25328:	
;Switch_B1.c: 226: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u9841
	goto	u9840
u9841:
	goto	l16473
u9840:
	line	228
	
l25330:	
;Switch_B1.c: 227: {
;Switch_B1.c: 228: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	229
;Switch_B1.c: 229: Sw->Debounce=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	230
;Switch_B1.c: 230: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	231
;Switch_B1.c: 231: Sw->Hold1=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	232
;Switch_B1.c: 232: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	233
;Switch_B1.c: 233: Sw->Hold2=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	234
;Switch_B1.c: 234: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	235
;Switch_B1.c: 235: Sw->Hold3=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	238
	
l25332:	
;Switch_B1.c: 238: Sw_DimmerOffFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOffFunc
	line	243
	
l25334:	
;Switch_B1.c: 243: setRF_Learn(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_Learn)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l16473
	line	245
	
l16472:	
	goto	l16473
	line	246
	
l16471:	
	goto	l16473
	line	247
	
l16470:	
	goto	l16473
	line	248
	
l16454:	
	line	249
	
l16473:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Main
	__end_of_setSw_Main:
;; =============== function _setSw_Main ends ============

	signat	_setSw_Main,4216
	global	_Flash_Memory_Modify
psect	text4102,local,class=CODE,delta=2
global __ptext4102
__ptext4102:

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 550 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Flash_Memory_Read
;;		_Flash_Memory_Erasing
;;		_Flash_Memory_Write
;; This function is called by:
;;		_Flash_Memory_Main
;; This function uses a non-reentrant model
;;
psect	text4102
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	550
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
	opt	stack 8
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l-status,0+pclath+cstack]
	line	552
	
l25238:	
;MCU_16f1518_B1.c: 551: char i;
;MCU_16f1518_B1.c: 552: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Modify@i)
	
l25240:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9651
	goto	u9650
u9651:
	goto	l25244
u9650:
	goto	l25250
	
l25242:	
	goto	l25250
	line	553
	
l9417:	
	line	554
	
l25244:	
;MCU_16f1518_B1.c: 553: {
;MCU_16f1518_B1.c: 554: Memory->Data[i]=Flash_Memory_Read(i);
	movf	(Flash_Memory_Modify@i),w
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(Flash_Memory_Modify@i),w
	movlb 1	; select bank1
	addwf	(_Memory)^080h,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+1)+0
	movf	0+(??_Flash_Memory_Modify+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	552
	
l25246:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l25248:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9661
	goto	u9660
u9661:
	goto	l25244
u9660:
	goto	l25250
	
l9418:	
	line	556
	
l25250:	
;MCU_16f1518_B1.c: 555: }
;MCU_16f1518_B1.c: 556: Memory->Data[0]=Product->Data[12];
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	557
;MCU_16f1518_B1.c: 557: Memory->Data[1]=Product->Data[13];
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	558
;MCU_16f1518_B1.c: 558: Memory->Data[2]=Product->Data[14];
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	564
;MCU_16f1518_B1.c: 564: if(Memory->LoopSave)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9671
	goto	u9670
u9671:
	goto	l25254
u9670:
	line	566
	
l25252:	
;MCU_16f1518_B1.c: 565: {
;MCU_16f1518_B1.c: 566: Memory->LoopSave=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	567
;MCU_16f1518_B1.c: 567: TMain->FirstOpen=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	568
;MCU_16f1518_B1.c: 568: TMain->First=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l25254
	line	570
	
l9419:	
	line	571
	
l25254:	
;MCU_16f1518_B1.c: 570: }
;MCU_16f1518_B1.c: 571: GIE=0;
	bcf	(95/8),(95)&7
	line	572
	
l25256:	
;MCU_16f1518_B1.c: 572: Flash_Memory_Erasing();
	fcall	_Flash_Memory_Erasing
	line	573
	
l25258:	
;MCU_16f1518_B1.c: 573: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	574
	
l25260:	
;MCU_16f1518_B1.c: 574: GIE=1;
	bsf	(95/8),(95)&7
	line	575
	
l9420:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
;; =============== function _Flash_Memory_Modify ends ============

	signat	_Flash_Memory_Modify,88
	global	_Switch_Initialization
psect	text4103,local,class=CODE,delta=2
global __ptext4103
__ptext4103:

;; *************** function _Switch_Initialization *****************
;; Defined at:
;;		line 39 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_TouchPower
;;		_setSw_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4103
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	39
	global	__size_of_Switch_Initialization
	__size_of_Switch_Initialization	equ	__end_of_Switch_Initialization-_Switch_Initialization
	
_Switch_Initialization:	
	opt	stack 8
; Regs used in _Switch_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	40
	
l25232:	
;Switch_B1.c: 40: TouchPower();
	fcall	_TouchPower
	line	42
	
l25234:	
;Switch_B1.c: 42: WPUB1=0;
	movlb 4	; select bank4
	bcf	(4201/8)^0200h,(4201)&7
	line	51
	
l25236:	
;Switch_B1.c: 51: setSw_Initialization(1);
	movlw	(01h)
	fcall	_setSw_Initialization
	line	60
	
l16439:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Initialization
	__end_of_Switch_Initialization:
;; =============== function _Switch_Initialization ends ============

	signat	_Switch_Initialization,88
	global	_Flash_Memory_Initialization
psect	text4104,local,class=CODE,delta=2
global __ptext4104
__ptext4104:

;; *************** function _Flash_Memory_Initialization *****************
;; Defined at:
;;		line 430 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Flash_Memory_Read
;;		_setPercentValue
;;		_Flash_Memory_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4104
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	430
	global	__size_of_Flash_Memory_Initialization
	__size_of_Flash_Memory_Initialization	equ	__end_of_Flash_Memory_Initialization-_Flash_Memory_Initialization
	
_Flash_Memory_Initialization:	
	opt	stack 8
; Regs used in _Flash_Memory_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	432
	
l25180:	
;MCU_16f1518_B1.c: 431: char i;
;MCU_16f1518_B1.c: 432: if(Flash_Memory_Read(31) == 0xaa)
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u9611
	goto	u9610
u9611:
	goto	l25200
u9610:
	line	434
	
l25182:	
;MCU_16f1518_B1.c: 433: {
;MCU_16f1518_B1.c: 434: Product->Data[12]=Flash_Memory_Read(0);
	movlw	(0)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	435
;MCU_16f1518_B1.c: 435: Product->Data[13]=Flash_Memory_Read(1);
	movlw	(01h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	436
;MCU_16f1518_B1.c: 436: Product->Data[14]=Flash_Memory_Read(2);
	movlw	(02h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	442
	
l25184:	
;MCU_16f1518_B1.c: 442: i=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	443
	
l25186:	
;MCU_16f1518_B1.c: 443: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	444
	
l25188:	
;MCU_16f1518_B1.c: 444: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	445
	
l25190:	
;MCU_16f1518_B1.c: 445: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	447
	
l25192:	
;MCU_16f1518_B1.c: 447: if(Product->Data[12]==0xff && Product->Data[13]==0xff && Product->Data[14]==0xff)
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9621
	goto	u9620
u9621:
	goto	l9393
u9620:
	
l25194:	
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9631
	goto	u9630
u9631:
	goto	l9393
u9630:
	
l25196:	
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9641
	goto	u9640
u9641:
	goto	l9393
u9640:
	line	449
	
l25198:	
;MCU_16f1518_B1.c: 448: {
;MCU_16f1518_B1.c: 449: TMain->FirstOpen=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	450
;MCU_16f1518_B1.c: 450: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l9393
	line	451
	
l9391:	
	line	452
;MCU_16f1518_B1.c: 451: }
;MCU_16f1518_B1.c: 452: }
	goto	l9393
	line	453
	
l9390:	
	line	455
	
l25200:	
;MCU_16f1518_B1.c: 453: else
;MCU_16f1518_B1.c: 454: {
;MCU_16f1518_B1.c: 455: i=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	456
	
l25202:	
;MCU_16f1518_B1.c: 456: Memory->Data[0]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	457
	
l25204:	
;MCU_16f1518_B1.c: 457: Memory->Data[1]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	458
	
l25206:	
;MCU_16f1518_B1.c: 458: Memory->Data[2]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	459
	
l25208:	
;MCU_16f1518_B1.c: 459: Memory->Data[3]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	460
	
l25210:	
;MCU_16f1518_B1.c: 460: Memory->Data[4]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	461
	
l25212:	
;MCU_16f1518_B1.c: 461: Memory->Data[5]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	462
	
l25214:	
;MCU_16f1518_B1.c: 462: Memory->Data[31]=0xaa;
	movlw	(0AAh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	01Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	463
	
l25216:	
;MCU_16f1518_B1.c: 463: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	464
	
l25218:	
;MCU_16f1518_B1.c: 464: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	465
	
l25220:	
;MCU_16f1518_B1.c: 465: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	466
	
l25222:	
;MCU_16f1518_B1.c: 466: GIE=0;
	bcf	(95/8),(95)&7
	line	467
	
l25224:	
;MCU_16f1518_B1.c: 467: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	468
	
l25226:	
;MCU_16f1518_B1.c: 468: GIE=1;
	bsf	(95/8),(95)&7
	line	469
	
l25228:	
;MCU_16f1518_B1.c: 469: TMain->FirstOpen=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	470
	
l25230:	
;MCU_16f1518_B1.c: 470: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l9393
	line	471
	
l9392:	
	line	472
	
l9393:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initialization
	__end_of_Flash_Memory_Initialization:
;; =============== function _Flash_Memory_Initialization ends ============

	signat	_Flash_Memory_Initialization,88
	global	_LED_Initialization
psect	text4105,local,class=CODE,delta=2
global __ptext4105
__ptext4105:

;; *************** function _LED_Initialization *****************
;; Defined at:
;;		line 36 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_setLED_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4105
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	36
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
	opt	stack 8
; Regs used in _LED_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	38
	
l25178:	
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
	
l6961:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Initialization
	__end_of_LED_Initialization:
;; =============== function _LED_Initialization ends ============

	signat	_LED_Initialization,88
	global	_setDimmerLights_AdjRF
psect	text4106,local,class=CODE,delta=2
global __ptext4106
__ptext4106:

;; *************** function _setDimmerLights_AdjRF *****************
;; Defined at:
;;		line 413 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   64[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_getPercentValue
;; This function is called by:
;;		_setRF_DimmerValue
;; This function uses a non-reentrant model
;;
psect	text4106
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	413
	global	__size_of_setDimmerLights_AdjRF
	__size_of_setDimmerLights_AdjRF	equ	__end_of_setDimmerLights_AdjRF-_setDimmerLights_AdjRF
	
_setDimmerLights_AdjRF:	
	opt	stack 2
; Regs used in _setDimmerLights_AdjRF: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_AdjRF@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjRF@lights)
	line	414
	
l23818:	
;Dimmer_B1.c: 414: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjRF@lights),w
	fcall	_DimmerLightsPointSelect
	line	415
	
l23820:	
;Dimmer_B1.c: 415: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	416
	
l23822:	
;Dimmer_B1.c: 416: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	417
	
l23824:	
;Dimmer_B1.c: 417: DimmerLights->MaxmumValue=getPercentValue(Product->Data[9]);
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_getPercentValue
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_AdjRF+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_AdjRF+0)+0,w
	movwf	indf1
	line	418
	
l5821:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjRF
	__end_of_setDimmerLights_AdjRF:
;; =============== function _setDimmerLights_AdjRF ends ============

	signat	_setDimmerLights_AdjRF,4216
	global	_DimmerLights_Exceptions
psect	text4107,local,class=CODE,delta=2
global __ptext4107
__ptext4107:

;; *************** function _DimmerLights_Exceptions *****************
;; Defined at:
;;		line 238 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_getDimmerLights_StatusFlag
;;		_setBuz
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_TriggerERROR
;; This function is called by:
;;		_setLoad_Exceptions
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text4107
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	238
	global	__size_of_DimmerLights_Exceptions
	__size_of_DimmerLights_Exceptions	equ	__end_of_DimmerLights_Exceptions-_DimmerLights_Exceptions
	
_DimmerLights_Exceptions:	
	opt	stack 5
; Regs used in _DimmerLights_Exceptions: [wreg+fsr1l-status,0+pclath+cstack]
;DimmerLights_Exceptions@status stored from wreg
	movlb 0	; select bank0
	movwf	(DimmerLights_Exceptions@status)
	line	239
	
l25160:	
;Dimmer_B1.c: 239: if(status == 1)
	movf	(DimmerLights_Exceptions@status),w
	xorlw	01h&0ffh
	skipz
	goto	u9561
	goto	u9560
u9561:
	goto	l25166
u9560:
	line	241
	
l25162:	
;Dimmer_B1.c: 240: {
;Dimmer_B1.c: 241: if(getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	xorlw	0&0ffh
	skipnz
	goto	u9571
	goto	u9570
u9571:
	goto	l5789
u9570:
	line	243
	
l25164:	
;Dimmer_B1.c: 242: {
;Dimmer_B1.c: 243: setBuz(10,300);
	movlw	low(012Ch)
	movlb 0	; select bank0
	movwf	(?_setBuz)
	movlw	high(012Ch)
	movwf	((?_setBuz))+1
	movlw	(0Ah)
	fcall	_setBuz
	line	244
	
l5789:	
	line	247
;Dimmer_B1.c: 244: }
;Dimmer_B1.c: 247: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	255
;Dimmer_B1.c: 255: }
	goto	l5790
	line	256
	
l5788:	
	
l25166:	
;Dimmer_B1.c: 256: else if(status == 2)
	movlb 0	; select bank0
	movf	(DimmerLights_Exceptions@status),w
	xorlw	02h&0ffh
	skipz
	goto	u9581
	goto	u9580
u9581:
	goto	l25170
u9580:
	line	258
	
l25168:	
;Dimmer_B1.c: 257: {
;Dimmer_B1.c: 258: setBuz(5,300);
	movlw	low(012Ch)
	movwf	(?_setBuz)
	movlw	high(012Ch)
	movwf	((?_setBuz))+1
	movlw	(05h)
	fcall	_setBuz
	line	259
;Dimmer_B1.c: 259: setDimmerLights_ERROR(Dimmer->Load);
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_setDimmerLights_ERROR
	line	260
;Dimmer_B1.c: 260: }
	goto	l5790
	line	261
	
l5791:	
	
l25170:	
;Dimmer_B1.c: 261: else if(status == 3)
	movlb 0	; select bank0
	movf	(DimmerLights_Exceptions@status),w
	xorlw	03h&0ffh
	skipz
	goto	u9591
	goto	u9590
u9591:
	goto	l5790
u9590:
	line	264
	
l25172:	
;Dimmer_B1.c: 262: {
;Dimmer_B1.c: 264: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	goto	l5790
	line	272
	
l5793:	
	goto	l5790
	line	275
	
l5792:	
	
l5790:	
;Dimmer_B1.c: 272: }
;Dimmer_B1.c: 275: setDimmerLights_TriggerERROR(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_TriggerERROR)
	movlw	(01h)
	fcall	_setDimmerLights_TriggerERROR
	line	284
	
l25174:	
;Dimmer_B1.c: 284: if(TMain->SelfTest == 0)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9601
	goto	u9600
u9601:
	goto	l5795
u9600:
	line	286
	
l25176:	
;Dimmer_B1.c: 285: {
;Dimmer_B1.c: 286: TMain->i=0;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	287
;Dimmer_B1.c: 287: TMain->j=0;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	288
;Dimmer_B1.c: 288: TMain->k=1;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	289
;Dimmer_B1.c: 289: TMain->Count2=0;
	movf	(_TMain),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l5795
	line	290
	
l5794:	
	line	291
	
l5795:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Exceptions
	__end_of_DimmerLights_Exceptions:
;; =============== function _DimmerLights_Exceptions ends ============

	signat	_DimmerLights_Exceptions,4216
	global	_setDimmerLights_Main
psect	text4108,local,class=CODE,delta=2
global __ptext4108
__ptext4108:

;; *************** function _setDimmerLights_Main *****************
;; Defined at:
;;		line 123 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   11[BANK0 ] unsigned char 
;;  clear           1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setDimmerLights
;;		_setDimmerLights_Adj
;;		_setBuz
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text4108
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	123
	global	__size_of_setDimmerLights_Main
	__size_of_setDimmerLights_Main	equ	__end_of_setDimmerLights_Main-_setDimmerLights_Main
	
_setDimmerLights_Main:	
	opt	stack 7
; Regs used in _setDimmerLights_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Main@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Main@lights)
	line	124
	
l25124:	
;Dimmer_B1.c: 124: char clear=1;
	clrf	(setDimmerLights_Main@clear)
	bsf	status,0
	rlf	(setDimmerLights_Main@clear),f
	line	125
	
l25126:	
;Dimmer_B1.c: 125: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	153
	
l25128:	
;Dimmer_B1.c: 153: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9501
	goto	u9500
u9501:
	goto	l25146
u9500:
	line	155
	
l25130:	
;Dimmer_B1.c: 154: {
;Dimmer_B1.c: 155: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u9510
	goto	l5779
u9510:
	line	157
	
l25132:	
;Dimmer_B1.c: 156: {
;Dimmer_B1.c: 157: if(DimmerLights->Switch)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9521
	goto	u9520
u9521:
	goto	l25140
u9520:
	line	159
	
l25134:	
;Dimmer_B1.c: 158: {
;Dimmer_B1.c: 159: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	160
	
l25136:	
;Dimmer_B1.c: 160: setDimmerLights(lights,1);
	clrf	(?_setDimmerLights)
	bsf	status,0
	rlf	(?_setDimmerLights),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	163
	
l25138:	
;Dimmer_B1.c: 163: DimmerLights->Clear=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	165
;Dimmer_B1.c: 165: }
	goto	l5779
	line	166
	
l5772:	
	line	168
	
l25140:	
;Dimmer_B1.c: 166: else
;Dimmer_B1.c: 167: {
;Dimmer_B1.c: 168: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	169
	
l25142:	
;Dimmer_B1.c: 169: setDimmerLights(lights,0);
	clrf	(?_setDimmerLights)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	172
	
l25144:	
;Dimmer_B1.c: 172: DimmerLights->Clear=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	goto	l5779
	line	174
	
l5773:	
	goto	l5779
	line	175
	
l5771:	
	line	176
;Dimmer_B1.c: 174: }
;Dimmer_B1.c: 175: }
;Dimmer_B1.c: 176: }
	goto	l5779
	line	177
	
l5770:	
	line	179
	
l25146:	
;Dimmer_B1.c: 177: else
;Dimmer_B1.c: 178: {
;Dimmer_B1.c: 179: if(DimmerLights->TriggerAdj)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9531
	goto	u9530
u9531:
	goto	l5779
u9530:
	line	181
	
l25148:	
;Dimmer_B1.c: 180: {
;Dimmer_B1.c: 181: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u9540
	goto	l5779
u9540:
	line	183
	
l25150:	
;Dimmer_B1.c: 182: {
;Dimmer_B1.c: 183: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	184
	
l25152:	
;Dimmer_B1.c: 184: DimmerLights->TriggerAdj=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	185
	
l25154:	
;Dimmer_B1.c: 185: if(DimmerLights->AdjGo)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9551
	goto	u9550
u9551:
	goto	l25158
u9550:
	line	187
	
l25156:	
;Dimmer_B1.c: 186: {
;Dimmer_B1.c: 187: setDimmerLights_Adj(lights,1);
	clrf	(?_setDimmerLights_Adj)
	bsf	status,0
	rlf	(?_setDimmerLights_Adj),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	line	188
;Dimmer_B1.c: 188: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(?_setBuz)
	movlw	high(064h)
	movwf	((?_setBuz))+1
	movlw	(01h)
	fcall	_setBuz
	line	189
;Dimmer_B1.c: 189: }
	goto	l5779
	line	190
	
l5777:	
	line	192
	
l25158:	
;Dimmer_B1.c: 190: else
;Dimmer_B1.c: 191: {
;Dimmer_B1.c: 192: setDimmerLights_Adj(lights,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Adj)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	goto	l5779
	line	193
	
l5778:	
	goto	l5779
	line	194
	
l5776:	
	goto	l5779
	line	195
	
l5775:	
	goto	l5779
	line	196
	
l5774:	
	line	197
	
l5779:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Main
	__end_of_setDimmerLights_Main:
;; =============== function _setDimmerLights_Main ends ============

	signat	_setDimmerLights_Main,4216
	global	_DelayOff_Main
psect	text4109,local,class=CODE,delta=2
global __ptext4109
__ptext4109:

;; *************** function _DelayOff_Main *****************
;; Defined at:
;;		line 46 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DlyOff_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4109
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	46
	global	__size_of_DelayOff_Main
	__size_of_DelayOff_Main	equ	__end_of_DelayOff_Main-_DelayOff_Main
	
_DelayOff_Main:	
	opt	stack 8
; Regs used in _DelayOff_Main: [wreg-status,0+pclath+cstack]
	line	48
	
l25122:	
;DelayOff_B1.c: 48: DlyOff_Main(1);
	movlw	(01h)
	fcall	_DlyOff_Main
	line	58
	
l4580:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Main
	__end_of_DelayOff_Main:
;; =============== function _DelayOff_Main ends ============

	signat	_DelayOff_Main,88
	global	_CC2500_PowerOnInitial
psect	text4110,local,class=CODE,delta=2
global __ptext4110
__ptext4110:

;; *************** function _CC2500_PowerOnInitial *****************
;; Defined at:
;;		line 98 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4110
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	98
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg+status,2+status,0+pclath+cstack]
	line	99
	
l25120:	
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
	
l2281:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerOnInitial
	__end_of_CC2500_PowerOnInitial:
;; =============== function _CC2500_PowerOnInitial ends ============

	signat	_CC2500_PowerOnInitial,88
	global	_Sw_DimmerOffFunc
psect	text4111,local,class=CODE,delta=2
global __ptext4111
__ptext4111:

;; *************** function _Sw_DimmerOffFunc *****************
;; Defined at:
;;		line 304 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setDimmerLights_TriggerAdj
;;		_setDimmerLights_AdjGo
;;		_setRF_DimmerLights
;;		_setTxData
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_Switch
;;		_setDelayOff_GO
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text4111
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	304
	global	__size_of_Sw_DimmerOffFunc
	__size_of_Sw_DimmerOffFunc	equ	__end_of_Sw_DimmerOffFunc-_Sw_DimmerOffFunc
	
_Sw_DimmerOffFunc:	
	opt	stack 7
; Regs used in _Sw_DimmerOffFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_DimmerOffFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOffFunc@sw)
	line	305
	
l25100:	
;Switch_B1.c: 305: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9471
	goto	u9470
u9471:
	goto	l16486
u9470:
	line	307
	
l25102:	
;Switch_B1.c: 306: {
;Switch_B1.c: 307: Sw->Flag=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,7
	line	308
;Switch_B1.c: 308: if(Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u9481
	goto	u9480
u9481:
	goto	l25118
u9480:
	line	310
	
l25104:	
;Switch_B1.c: 309: {
;Switch_B1.c: 310: if(Sw->Adj)
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9491
	goto	u9490
u9491:
	goto	l16486
u9490:
	line	312
	
l25106:	
;Switch_B1.c: 311: {
;Switch_B1.c: 312: Sw->Adj=0;
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	313
	
l25108:	
;Switch_B1.c: 313: setDimmerLights_TriggerAdj(sw,1);
	clrf	(?_setDimmerLights_TriggerAdj)
	bsf	status,0
	rlf	(?_setDimmerLights_TriggerAdj),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	314
	
l25110:	
;Switch_B1.c: 314: setDimmerLights_AdjGo(sw,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_AdjGo)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	line	316
	
l25112:	
;Switch_B1.c: 316: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(Sw_DimmerOffFunc@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_Sw_DimmerOffFunc+0)+0
	movf	0+(??_Sw_DimmerOffFunc+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Sw_DimmerOffFunc+1)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Sw_DimmerOffFunc+1)+0,w
	movwf	indf1
	line	317
	
l25114:	
;Switch_B1.c: 317: setRF_DimmerLights(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(?_setRF_DimmerLights)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	318
	
l25116:	
;Switch_B1.c: 318: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l16486
	line	320
	
l16484:	
	line	321
;Switch_B1.c: 320: }
;Switch_B1.c: 321: }
	goto	l16486
	line	322
	
l16483:	
	line	324
	
l25118:	
;Switch_B1.c: 322: else
;Switch_B1.c: 323: {
;Switch_B1.c: 324: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	325
;Switch_B1.c: 325: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	327
;Switch_B1.c: 327: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(?_setDelayOff_GO)
	clrf	0+(?_setDelayOff_GO)+01h
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDelayOff_GO
	line	328
;Switch_B1.c: 328: setRF_DimmerLights(sw,Sw->Status);
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(?_setRF_DimmerLights)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	329
;Switch_B1.c: 329: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l16486
	line	330
	
l16485:	
	goto	l16486
	line	331
	
l16482:	
	line	332
	
l16486:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOffFunc
	__end_of_Sw_DimmerOffFunc:
;; =============== function _Sw_DimmerOffFunc ends ============

	signat	_Sw_DimmerOffFunc,4216
	global	_Sw_DimmerAdjFunc
psect	text4112,local,class=CODE,delta=2
global __ptext4112
__ptext4112:

;; *************** function _Sw_DimmerAdjFunc *****************
;; Defined at:
;;		line 335 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setRFSW_Status
;;		_setDimmerLights_TriggerAdj
;;		_setDimmerLights_AdjGo
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text4112
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	335
	global	__size_of_Sw_DimmerAdjFunc
	__size_of_Sw_DimmerAdjFunc	equ	__end_of_Sw_DimmerAdjFunc-_Sw_DimmerAdjFunc
	
_Sw_DimmerAdjFunc:	
	opt	stack 7
; Regs used in _Sw_DimmerAdjFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_DimmerAdjFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerAdjFunc@sw)
	line	336
	
l25090:	
;Switch_B1.c: 336: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9461
	goto	u9460
u9461:
	goto	l16490
u9460:
	line	338
	
l25092:	
;Switch_B1.c: 337: {
;Switch_B1.c: 338: Sw->Adj=1;
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	339
;Switch_B1.c: 339: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	340
	
l25094:	
;Switch_B1.c: 340: setRFSW_Status(sw,1);
	clrf	(?_setRFSW_Status)
	bsf	status,0
	rlf	(?_setRFSW_Status),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setRFSW_Status
	line	342
	
l25096:	
;Switch_B1.c: 342: setDimmerLights_TriggerAdj(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_TriggerAdj)
	bsf	status,0
	rlf	(?_setDimmerLights_TriggerAdj),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	343
	
l25098:	
;Switch_B1.c: 343: setDimmerLights_AdjGo(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_AdjGo)
	bsf	status,0
	rlf	(?_setDimmerLights_AdjGo),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	goto	l16490
	line	345
	
l16489:	
	line	346
	
l16490:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerAdjFunc
	__end_of_Sw_DimmerAdjFunc:
;; =============== function _Sw_DimmerAdjFunc ends ============

	signat	_Sw_DimmerAdjFunc,4216
	global	_Sw_DimmerOnFunc
psect	text4113,local,class=CODE,delta=2
global __ptext4113
__ptext4113:

;; *************** function _Sw_DimmerOnFunc *****************
;; Defined at:
;;		line 252 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   11[BANK0 ] unsigned char 
;;  Idle            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setBuz
;;		_setRFSW_Status
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_Switch
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text4113
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	252
	global	__size_of_Sw_DimmerOnFunc
	__size_of_Sw_DimmerOnFunc	equ	__end_of_Sw_DimmerOnFunc-_Sw_DimmerOnFunc
	
_Sw_DimmerOnFunc:	
	opt	stack 7
; Regs used in _Sw_DimmerOnFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_DimmerOnFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOnFunc@sw)
	line	253
	
l25064:	
;Switch_B1.c: 253: char Idle=1;
	clrf	(Sw_DimmerOnFunc@Idle)
	bsf	status,0
	rlf	(Sw_DimmerOnFunc@Idle),f
	line	280
	
l25066:	
;Switch_B1.c: 280: if(Idle)
	movf	(Sw_DimmerOnFunc@Idle),w
	skipz
	goto	u9440
	goto	l16479
u9440:
	line	282
	
l25068:	
;Switch_B1.c: 281: {
;Switch_B1.c: 282: Sw->Flag=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	line	283
	
l25070:	
;Switch_B1.c: 283: setBuz(1,100);
	movlw	low(064h)
	movwf	(?_setBuz)
	movlw	high(064h)
	movwf	((?_setBuz))+1
	movlw	(01h)
	fcall	_setBuz
	line	284
	
l25072:	
;Switch_B1.c: 284: if(!Sw->Status)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9451
	goto	u9450
u9451:
	goto	l25086
u9450:
	line	286
	
l25074:	
;Switch_B1.c: 285: {
;Switch_B1.c: 286: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	287
	
l25076:	
;Switch_B1.c: 287: setRFSW_Status(sw,1);
	clrf	(?_setRFSW_Status)
	bsf	status,0
	rlf	(?_setRFSW_Status),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	line	289
	
l25078:	
;Switch_B1.c: 289: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	290
	
l25080:	
;Switch_B1.c: 290: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	bsf	status,0
	rlf	(?_setDimmerLights_Switch),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	292
	
l25082:	
;Switch_B1.c: 292: setRF_DimmerLights(sw,Sw->Status);
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(?_setRF_DimmerLights)
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRF_DimmerLights
	line	293
	
l25084:	
;Switch_B1.c: 293: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	294
;Switch_B1.c: 294: }
	goto	l16479
	line	295
	
l16477:	
	line	297
	
l25086:	
;Switch_B1.c: 295: else
;Switch_B1.c: 296: {
;Switch_B1.c: 297: Sw->Status=0;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	298
	
l25088:	
;Switch_B1.c: 298: setRFSW_Status(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(?_setRFSW_Status)
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	goto	l16479
	line	299
	
l16478:	
	goto	l16479
	line	300
	
l16476:	
	line	301
	
l16479:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOnFunc
	__end_of_Sw_DimmerOnFunc:
;; =============== function _Sw_DimmerOnFunc ends ============

	signat	_Sw_DimmerOnFunc,4216
	global	_setSw_Initialization
psect	text4114,local,class=CODE,delta=2
global __ptext4114
__ptext4114:

;; *************** function _setSw_Initialization *****************
;; Defined at:
;;		line 79 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setLED
;; This function is called by:
;;		_Switch_Initialization
;; This function uses a non-reentrant model
;;
psect	text4114
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	79
	global	__size_of_setSw_Initialization
	__size_of_setSw_Initialization	equ	__end_of_setSw_Initialization-_setSw_Initialization
	
_setSw_Initialization:	
	opt	stack 8
; Regs used in _setSw_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Initialization@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Initialization@sw)
	line	80
	
l25062:	
;Switch_B1.c: 80: setLED(sw,1);
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movf	(setSw_Initialization@sw),w
	fcall	_setLED
	line	82
;Switch_B1.c: 82: setLED(sw+1,1);
	movlb 0	; select bank0
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movf	(setSw_Initialization@sw),w
	addlw	01h
	fcall	_setLED
	line	84
	
l16445:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Initialization
	__end_of_setSw_Initialization:
;; =============== function _setSw_Initialization ends ============

	signat	_setSw_Initialization,4216
	global	_setRFSW_Control
psect	text4115,local,class=CODE,delta=2
global __ptext4115
__ptext4115:

;; *************** function _setRFSW_Control *****************
;; Defined at:
;;		line 362 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_RfSWPointSelect
;;		_setDelayOff_GO
;;		_setSw_Status
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_Switch
;;		_setRF_DimmerLights
;;		_setBuz
;;		_setTxData
;; This function is called by:
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text4115
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	362
	global	__size_of_setRFSW_Control
	__size_of_setRFSW_Control	equ	__end_of_setRFSW_Control-_setRFSW_Control
	
_setRFSW_Control:	
	opt	stack 5
; Regs used in _setRFSW_Control: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_Control@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Control@sw)
	line	363
	
l25024:	
;RF_Control_B1.c: 363: RfSWPointSelect(sw);
	movf	(setRFSW_Control@sw),w
	fcall	_RfSWPointSelect
	line	364
	
l25026:	
;RF_Control_B1.c: 364: if(!RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9411
	goto	u9410
u9411:
	goto	l25042
u9410:
	line	366
	
l25028:	
;RF_Control_B1.c: 365: {
;RF_Control_B1.c: 366: if(RF_Data[16] == 0x80)
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9421
	goto	u9420
u9421:
	goto	l25032
u9420:
	line	368
	
l25030:	
;RF_Control_B1.c: 367: {
;RF_Control_B1.c: 368: setDelayOff_GO(sw,1,RF_Data[17]);
	movlb 0	; select bank0
	clrf	(?_setDelayOff_GO)
	bsf	status,0
	rlf	(?_setDelayOff_GO),f
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+011h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+0)+0
	movf	(??_setRFSW_Control+0)+0,w
	movwf	0+(?_setDelayOff_GO)+01h
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	goto	l25032
	line	369
	
l15271:	
	line	370
	
l25032:	
;RF_Control_B1.c: 369: }
;RF_Control_B1.c: 370: RFSW->Status=1;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	371
	
l25034:	
;RF_Control_B1.c: 371: setSw_Status(sw,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	bsf	status,0
	rlf	(?_setSw_Status),f
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	373
	
l25036:	
;RF_Control_B1.c: 373: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	374
	
l25038:	
;RF_Control_B1.c: 374: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	bsf	status,0
	rlf	(?_setDimmerLights_Switch),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	376
	
l25040:	
;RF_Control_B1.c: 376: setRF_DimmerLights(sw,RFSW->Status);
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	btfsc	indf1,0
	movlw	1
	movlb 0	; select bank0
	movwf	(?_setRF_DimmerLights)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	377
;RF_Control_B1.c: 377: }
	goto	l25058
	line	378
	
l15270:	
	line	380
	
l25042:	
;RF_Control_B1.c: 378: else
;RF_Control_B1.c: 379: {
;RF_Control_B1.c: 380: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9431
	goto	u9430
u9431:
	goto	l25046
u9430:
	line	382
	
l25044:	
;RF_Control_B1.c: 381: {
;RF_Control_B1.c: 382: setDelayOff_GO(sw,1,RF_Data[17]);
	movlb 0	; select bank0
	clrf	(?_setDelayOff_GO)
	bsf	status,0
	rlf	(?_setDelayOff_GO),f
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+011h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+0)+0
	movf	(??_setRFSW_Control+0)+0,w
	movwf	0+(?_setDelayOff_GO)+01h
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	line	383
;RF_Control_B1.c: 383: setRF_DimmerLights(sw,1);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	384
;RF_Control_B1.c: 384: }
	goto	l25058
	line	385
	
l15273:	
	line	387
	
l25046:	
;RF_Control_B1.c: 385: else
;RF_Control_B1.c: 386: {
;RF_Control_B1.c: 387: RFSW->Status=0;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	388
	
l25048:	
;RF_Control_B1.c: 388: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	390
	
l25050:	
;RF_Control_B1.c: 390: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	391
	
l25052:	
;RF_Control_B1.c: 391: setDimmerLights_Switch(sw,RFSW->Status);
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	btfsc	indf1,0
	movlw	1
	movlb 0	; select bank0
	movwf	(?_setDimmerLights_Switch)
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	393
	
l25054:	
;RF_Control_B1.c: 393: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(?_setDelayOff_GO)
	clrf	0+(?_setDelayOff_GO)+01h
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	line	394
	
l25056:	
;RF_Control_B1.c: 394: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	goto	l25058
	line	395
	
l15274:	
	goto	l25058
	line	396
	
l15272:	
	line	397
	
l25058:	
;RF_Control_B1.c: 395: }
;RF_Control_B1.c: 396: }
;RF_Control_B1.c: 397: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(?_setBuz)
	movlw	high(064h)
	movwf	((?_setBuz))+1
	movlw	(01h)
	fcall	_setBuz
	line	398
	
l25060:	
;RF_Control_B1.c: 398: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	399
	
l15275:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Control
	__end_of_setRFSW_Control:
;; =============== function _setRFSW_Control ends ============

	signat	_setRFSW_Control,4216
	global	_setLog_Code
psect	text4116,local,class=CODE,delta=2
global __ptext4116
__ptext4116:

;; *************** function _setLog_Code *****************
;; Defined at:
;;		line 250 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_RfPointSelect
;;		_setBuz
;; This function is called by:
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text4116
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	250
	global	__size_of_setLog_Code
	__size_of_setLog_Code	equ	__end_of_setLog_Code-_setLog_Code
	
_setLog_Code:	
	opt	stack 6
; Regs used in _setLog_Code: [wreg+fsr1l-status,0+pclath+cstack]
;setLog_Code@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setLog_Code@rf)
	line	251
	
l25008:	
;RF_Control_B1.c: 251: RfPointSelect(rf);
	movf	(setLog_Code@rf),w
	fcall	_RfPointSelect
	line	252
	
l25010:	
;RF_Control_B1.c: 252: Product->Data[12]=RF_Data[12];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Ch,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	253
	
l25012:	
;RF_Control_B1.c: 253: Product->Data[13]=RF_Data[13];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Dh,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	254
	
l25014:	
;RF_Control_B1.c: 254: Product->Data[14]=RF_Data[14];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Eh,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	255
	
l25016:	
;RF_Control_B1.c: 255: setBuz(1,100);
	movlw	low(064h)
	movwf	(?_setBuz)
	movlw	high(064h)
	movwf	((?_setBuz))+1
	movlw	(01h)
	fcall	_setBuz
	line	256
	
l25018:	
;RF_Control_B1.c: 256: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	257
	
l25020:	
;RF_Control_B1.c: 257: if(TMain->First)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9401
	goto	u9400
u9401:
	goto	l15252
u9400:
	line	259
	
l25022:	
;RF_Control_B1.c: 258: {
;RF_Control_B1.c: 259: Memory->LoopSave=1;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	260
	
l15252:	
	line	261
;RF_Control_B1.c: 260: }
;RF_Control_B1.c: 261: Memory->Modify=1;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	262
	
l15253:	
	return
	opt stack 0
GLOBAL	__end_of_setLog_Code
	__end_of_setLog_Code:
;; =============== function _setLog_Code ends ============

	signat	_setLog_Code,4216
	global	_RF_RxDisable
psect	text4117,local,class=CODE,delta=2
global __ptext4117
__ptext4117:

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 192 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_RfPointSelect
;;		_CC2500_WriteCommand
;;		_setINT_GO
;; This function is called by:
;;		_setRF_Main
;; This function uses a non-reentrant model
;;
psect	text4117
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	192
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
	opt	stack 7
; Regs used in _RF_RxDisable: [wreg+fsr1l-status,0+pclath+cstack]
;RF_RxDisable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RF_RxDisable@rf)
	line	193
	
l24996:	
;RF_Control_B1.c: 193: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	195
	
l24998:	
;RF_Control_B1.c: 195: if(RF->RxStatus)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u9391
	goto	u9390
u9391:
	goto	l15235
u9390:
	line	197
	
l25000:	
;RF_Control_B1.c: 196: {
;RF_Control_B1.c: 197: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	198
;RF_Control_B1.c: 198: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	199
;RF_Control_B1.c: 199: RF->DebounceTime=0;
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	200
;RF_Control_B1.c: 200: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	201
	
l25002:	
;RF_Control_B1.c: 201: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	202
	
l25004:	
;RF_Control_B1.c: 202: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	203
	
l25006:	
;RF_Control_B1.c: 203: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l15235
	line	204
	
l15234:	
	line	205
	
l15235:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
;; =============== function _RF_RxDisable ends ============

	signat	_RF_RxDisable,4216
	global	_Flash_Memory_Erasing
psect	text4118,local,class=CODE,delta=2
global __ptext4118
__ptext4118:

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 539 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Flash_Memory_Unlock
;; This function is called by:
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text4118
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	539
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
	opt	stack 8
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	540
	
l24982:	
;MCU_16f1518_B1.c: 540: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	line	541
	
l24984:	
;MCU_16f1518_B1.c: 541: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	542
	
l24986:	
;MCU_16f1518_B1.c: 542: PMADRL=0x00;
	clrf	(401)^0180h	;volatile
	line	543
	
l24988:	
;MCU_16f1518_B1.c: 543: FREE=1;
	bsf	(3244/8)^0180h,(3244)&7
	line	544
	
l24990:	
;MCU_16f1518_B1.c: 544: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7
	line	545
	
l24992:	
;MCU_16f1518_B1.c: 545: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	546
	
l24994:	
;MCU_16f1518_B1.c: 546: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	547
	
l9414:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
;; =============== function _Flash_Memory_Erasing ends ============

	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Write
psect	text4119,local,class=CODE,delta=2
global __ptext4119
__ptext4119:

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 519 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Flash_Memory_Unlock
;; This function is called by:
;;		_Flash_Memory_Initialization
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text4119
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	519
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
	opt	stack 8
; Regs used in _Flash_Memory_Write: [wreg+fsr1l-status,0+pclath+cstack]
	line	521
	
l24950:	
;MCU_16f1518_B1.c: 520: char i;
;MCU_16f1518_B1.c: 521: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	line	522
	
l24952:	
;MCU_16f1518_B1.c: 522: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	523
	
l24954:	
;MCU_16f1518_B1.c: 523: PMDATH=0;
	clrf	(404)^0180h	;volatile
	line	524
	
l24956:	
;MCU_16f1518_B1.c: 524: FREE=0;
	bcf	(3244/8)^0180h,(3244)&7
	line	525
	
l24958:	
;MCU_16f1518_B1.c: 525: LWLO=1;
	bsf	(3245/8)^0180h,(3245)&7
	line	526
	
l24960:	
;MCU_16f1518_B1.c: 526: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7
	line	527
	
l24962:	
;MCU_16f1518_B1.c: 527: for(i=0 ; i<32 ; i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Write@i)
	
l24964:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u9371
	goto	u9370
u9371:
	goto	l24968
u9370:
	goto	l9410
	
l24966:	
	goto	l9410
	line	528
	
l9409:	
	line	529
	
l24968:	
;MCU_16f1518_B1.c: 528: {
;MCU_16f1518_B1.c: 529: PMADRL=i;
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	530
	
l24970:	
;MCU_16f1518_B1.c: 530: PMDATL=Memory->Data[i];
	movlb 0	; select bank0
	movf	(Flash_Memory_Write@i),w
	movlb 1	; select bank1
	addwf	(_Memory)^080h,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	0+(??_Flash_Memory_Write+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	line	531
	
l24972:	
;MCU_16f1518_B1.c: 531: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	527
	
l24974:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l24976:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u9381
	goto	u9380
u9381:
	goto	l24968
u9380:
	
l9410:	
	line	533
;MCU_16f1518_B1.c: 532: }
;MCU_16f1518_B1.c: 533: LWLO=0;
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7
	line	534
	
l24978:	
;MCU_16f1518_B1.c: 534: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	535
	
l24980:	
;MCU_16f1518_B1.c: 535: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	536
	
l9411:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
;; =============== function _Flash_Memory_Write ends ============

	signat	_Flash_Memory_Write,88
	global	_MainT
psect	text4120,local,class=CODE,delta=2
global __ptext4120
__ptext4120:

;; *************** function _MainT *****************
;; Defined at:
;;		line 104 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setTemp_Enable
;;		_setLoad_Enable
;;		_setBuz
;;		_setSw_Enable
;;		_setRF_Enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4120
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	104
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 9
; Regs used in _MainT: [wreg+fsr1l-status,0+pclath+cstack]
	line	106
	
l24924:	
;main.c: 106: if(!TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9331
	goto	u9330
u9331:
	goto	l24940
u9330:
	line	108
	
l24926:	
;main.c: 107: {
;main.c: 108: TMain->PowerCount++;
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
	line	109
	
l24928:	
;main.c: 109: if(TMain->PowerCount == 150)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(096h)
	skipz
	goto	u9345
	moviw	[1]fsr1
	xorlw	high(096h)
u9345:
	skipz
	goto	u9341
	goto	u9340
u9341:
	goto	l8183
u9340:
	line	111
	
l24930:	
;main.c: 110: {
;main.c: 111: TMain->PowerCount=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	112
;main.c: 112: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	115
	
l24932:	
;main.c: 115: setTemp_Enable(1);
	movlw	(01h)
	fcall	_setTemp_Enable
	line	119
	
l24934:	
;main.c: 119: setLoad_Enable(1);
	movlw	(01h)
	fcall	_setLoad_Enable
	line	125
	
l24936:	
;main.c: 125: setBuz(3,50);
	movlw	low(032h)
	movlb 0	; select bank0
	movwf	(?_setBuz)
	movlw	high(032h)
	movwf	((?_setBuz))+1
	movlw	(03h)
	fcall	_setBuz
	line	126
	
l24938:	
;main.c: 126: TMain->SelfTest=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	128
;main.c: 128: setSw_Enable(1);
	movlw	(01h)
	fcall	_setSw_Enable
	line	131
;main.c: 131: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l8183
	line	135
	
l8178:	
	line	136
;main.c: 135: }
;main.c: 136: }
	goto	l8183
	line	137
	
l8177:	
	line	146
	
l24940:	
;main.c: 137: else
;main.c: 138: {
;main.c: 146: TMain->Count1++;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	147
	
l24942:	
;main.c: 147: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u9355
	moviw	[1]fsr1
	xorlw	high(03E8h)
u9355:
	skipz
	goto	u9351
	goto	u9350
u9351:
	goto	l8183
u9350:
	line	149
	
l24944:	
;main.c: 148: {
;main.c: 149: TMain->Count1=0;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	160
;main.c: 160: if(TMain->Flag)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9361
	goto	u9360
u9361:
	goto	l24948
u9360:
	goto	l8183
	line	169
	
l24946:	
;main.c: 161: {
;main.c: 169: }
	goto	l8183
	line	170
	
l8181:	
	line	172
	
l24948:	
;main.c: 170: else
;main.c: 171: {
;main.c: 172: TMain->Flag=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	goto	l8183
	line	180
	
l8182:	
	goto	l8183
	line	181
	
l8180:	
	goto	l8183
	line	183
	
l8179:	
	line	184
	
l8183:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_LED_Main
psect	text4121,local,class=CODE,delta=2
global __ptext4121
__ptext4121:

;; *************** function _LED_Main *****************
;; Defined at:
;;		line 52 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setLED_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4121
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	52
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
	opt	stack 9
; Regs used in _LED_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	54
	
l24922:	
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
	
l6964:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
;; =============== function _LED_Main ends ============

	signat	_LED_Main,88
	global	_setLED_Initialization
psect	text4122,local,class=CODE,delta=2
global __ptext4122
__ptext4122:

;; *************** function _setLED_Initialization *****************
;; Defined at:
;;		line 68 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LedPointSelect
;;		_setLED
;; This function is called by:
;;		_LED_Initialization
;; This function uses a non-reentrant model
;;
psect	text4122
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	68
	global	__size_of_setLED_Initialization
	__size_of_setLED_Initialization	equ	__end_of_setLED_Initialization-_setLED_Initialization
	
_setLED_Initialization:	
	opt	stack 8
; Regs used in _setLED_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setLED_Initialization@led stored from wreg
	movlb 0	; select bank0
	movwf	(setLED_Initialization@led)
	line	69
	
l24916:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l24918:	
;LED_B1.c: 70: LED->Enable=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	71
	
l24920:	
;LED_B1.c: 71: setLED(led,0);
	movlb 0	; select bank0
	clrf	(?_setLED)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l6967:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
;; =============== function _setLED_Initialization ends ============

	signat	_setLED_Initialization,4216
	global	_setPercentValue
psect	text4123,local,class=CODE,delta=2
global __ptext4123
__ptext4123:

;; *************** function _setPercentValue *****************
;; Defined at:
;;		line 495 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   44[BANK0 ] unsigned char 
;;  i               3   45[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftdiv
;;		___awtoft
;;		___fttol
;; This function is called by:
;;		_Flash_Memory_Initialization
;; This function uses a non-reentrant model
;;
psect	text4123
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	495
	global	__size_of_setPercentValue
	__size_of_setPercentValue	equ	__end_of_setPercentValue-_setPercentValue
	
_setPercentValue:	
	opt	stack 8
; Regs used in _setPercentValue: [wreg+status,2+status,0+pclath+cstack]
;setPercentValue@value stored from wreg
	line	497
	movlb 0	; select bank0
	movwf	(setPercentValue@value)
	
l24908:	
;Dimmer_B1.c: 497: float i=((char)((100-20)*1.5))-((char)((100-55)*1.5));
	movlw	0x0
	movwf	(setPercentValue@i)
	movlw	0x54
	movwf	(setPercentValue@i+1)
	movlw	0x42
	movwf	(setPercentValue@i+2)
	line	498
	
l24910:	
;Dimmer_B1.c: 498: i/=100;
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0xc8
	movwf	(?___ftdiv+1)
	movlw	0x42
	movwf	(?___ftdiv+2)
	movf	(setPercentValue@i),w
	movwf	0+(?___ftdiv)+03h
	movf	(setPercentValue@i+1),w
	movwf	1+(?___ftdiv)+03h
	movf	(setPercentValue@i+2),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movlb 0	; select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(setPercentValue@i)
	movf	(1+(?___ftdiv)),w
	movwf	(setPercentValue@i+1)
	movf	(2+(?___ftdiv)),w
	movwf	(setPercentValue@i+2)
	line	499
	
l24912:	
;Dimmer_B1.c: 499: return (100-(char)((value-((char)((100-55)*1.5)))/i));
	movf	(setPercentValue@value),w
	addlw	low(-67)
	movwf	(?___awtoft)
	movlw	high(-67)
	skipnc
	movlw	(high(-67)+1)&0ffh
	movwf	((?___awtoft))+1
	fcall	___awtoft
	movlb 0	; select bank0
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftdiv)+03h
	movf	(setPercentValue@i),w
	movwf	(?___ftdiv)
	movf	(setPercentValue@i+1),w
	movwf	(?___ftdiv+1)
	movf	(setPercentValue@i+2),w
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	movlb 0	; select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?___fttol)
	movf	(1+(?___ftdiv)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movlb 0	; select bank0
	decf	0+(((0+(?___fttol)))),w
	xorlw	0ffh
	addlw	064h
	goto	l5845
	
l24914:	
	line	507
	
l5845:	
	return
	opt stack 0
GLOBAL	__end_of_setPercentValue
	__end_of_setPercentValue:
;; =============== function _setPercentValue ends ============

	signat	_setPercentValue,4217
	global	_getPercentValue
psect	text4124,local,class=CODE,delta=2
global __ptext4124
__ptext4124:

;; *************** function _getPercentValue *****************
;; Defined at:
;;		line 480 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   59[BANK0 ] unsigned char 
;;  i               3   60[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftdiv
;;		___awtoft
;;		___ftmul
;;		___ftadd
;;		___fttol
;; This function is called by:
;;		_setDimmerLights_AdjRF
;; This function uses a non-reentrant model
;;
psect	text4124
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	480
	global	__size_of_getPercentValue
	__size_of_getPercentValue	equ	__end_of_getPercentValue-_getPercentValue
	
_getPercentValue:	
	opt	stack 2
; Regs used in _getPercentValue: [wreg+status,2+status,0+pclath+cstack]
;getPercentValue@value stored from wreg
	line	482
	movlb 0	; select bank0
	movwf	(getPercentValue@value)
	
l23540:	
;Dimmer_B1.c: 482: float i=((char)((100-20)*1.5))-((char)((100-55)*1.5));
	movlw	0x0
	movwf	(getPercentValue@i)
	movlw	0x54
	movwf	(getPercentValue@i+1)
	movlw	0x42
	movwf	(getPercentValue@i+2)
	line	483
	
l23542:	
;Dimmer_B1.c: 483: i/=100;
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0xc8
	movwf	(?___ftdiv+1)
	movlw	0x42
	movwf	(?___ftdiv+2)
	movf	(getPercentValue@i),w
	movwf	0+(?___ftdiv)+03h
	movf	(getPercentValue@i+1),w
	movwf	1+(?___ftdiv)+03h
	movf	(getPercentValue@i+2),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movlb 0	; select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(getPercentValue@i)
	movf	(1+(?___ftdiv)),w
	movwf	(getPercentValue@i+1)
	movf	(2+(?___ftdiv)),w
	movwf	(getPercentValue@i+2)
	line	484
	
l23544:	
;Dimmer_B1.c: 484: return (char)(((100-value)*i)+((char)((100-55)*1.5)));
	movf	(getPercentValue@value),w
	movwf	(??_getPercentValue+0)+0
	clrf	(??_getPercentValue+0)+0+1
	comf	(??_getPercentValue+0)+0,f
	comf	(??_getPercentValue+0)+1,f
	incf	(??_getPercentValue+0)+0,f
	skipnz
	incf	(??_getPercentValue+0)+1,f
	movf	0+(??_getPercentValue+0)+0,w
	addlw	low(064h)
	movwf	(?___awtoft)
	movlw	high(064h)
	addwfc	1+(??_getPercentValue+0)+0,w
	movwf	1+(?___awtoft)
	fcall	___awtoft
	movlb 0	; select bank0
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	movf	(getPercentValue@i),w
	movwf	(?___ftmul)
	movf	(getPercentValue@i+1),w
	movwf	(?___ftmul+1)
	movf	(getPercentValue@i+2),w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movlb 0	; select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x86
	movwf	(?___ftadd+1)
	movlw	0x42
	movwf	(?___ftadd+2)
	fcall	___ftadd
	movlb 0	; select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movlb 0	; select bank0
	movf	0+(((0+(?___fttol)))),w
	goto	l5842
	
l23546:	
	line	492
	
l5842:	
	return
	opt stack 0
GLOBAL	__end_of_getPercentValue
	__end_of_getPercentValue:
;; =============== function _getPercentValue ends ============

	signat	_getPercentValue,4217
	global	_setDimmerLights_ERROR
psect	text4125,local,class=CODE,delta=2
global __ptext4125
__ptext4125:

;; *************** function _setDimmerLights_ERROR *****************
;; Defined at:
;;		line 294 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setLoad_StatusOff
;;		_setLED
;;		_setSw_Status
;;		_setRFSW_Status
;; This function is called by:
;;		_DimmerLights_Exceptions
;; This function uses a non-reentrant model
;;
psect	text4125
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	294
	global	__size_of_setDimmerLights_ERROR
	__size_of_setDimmerLights_ERROR	equ	__end_of_setDimmerLights_ERROR-_setDimmerLights_ERROR
	
_setDimmerLights_ERROR:	
	opt	stack 5
; Regs used in _setDimmerLights_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_ERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_ERROR@lights)
	line	295
	
l24894:	
;Dimmer_B1.c: 295: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	296
	
l24896:	
;Dimmer_B1.c: 296: if(DimmerLights->Status)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u9321
	goto	u9320
u9321:
	goto	l5799
u9320:
	line	298
	
l24898:	
;Dimmer_B1.c: 297: {
;Dimmer_B1.c: 298: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	299
;Dimmer_B1.c: 299: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	300
;Dimmer_B1.c: 300: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	301
;Dimmer_B1.c: 301: DimmerLights->StatusFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	302
;Dimmer_B1.c: 302: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	indf1
	line	303
;Dimmer_B1.c: 303: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	indf1
	line	304
;Dimmer_B1.c: 304: Dimmer->Detect=1;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	305
	
l24900:	
;Dimmer_B1.c: 305: setLoad_StatusOff(lights,1);
	movlb 0	; select bank0
	clrf	(?_setLoad_StatusOff)
	bsf	status,0
	rlf	(?_setLoad_StatusOff),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLoad_StatusOff
	line	306
	
l24902:	
;Dimmer_B1.c: 306: setLED(lights,1);
	movlb 0	; select bank0
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLED
	line	307
	
l24904:	
;Dimmer_B1.c: 307: setSw_Status(lights,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setSw_Status
	line	308
	
l24906:	
;Dimmer_B1.c: 308: setRFSW_Status(lights,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setRFSW_Status
	goto	l5799
	line	309
	
l5798:	
	line	310
	
l5799:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_ERROR
	__end_of_setDimmerLights_ERROR:
;; =============== function _setDimmerLights_ERROR ends ============

	signat	_setDimmerLights_ERROR,4216
	global	_setDimmerLights_Adj
psect	text4126,local,class=CODE,delta=2
global __ptext4126
__ptext4126:

;; *************** function _setDimmerLights_Adj *****************
;; Defined at:
;;		line 380 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setLoad_StatusOff
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text4126
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	380
	global	__size_of_setDimmerLights_Adj
	__size_of_setDimmerLights_Adj	equ	__end_of_setDimmerLights_Adj-_setDimmerLights_Adj
	
_setDimmerLights_Adj:	
	opt	stack 7
; Regs used in _setDimmerLights_Adj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Adj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Adj@lights)
	line	381
	
l24880:	
;Dimmer_B1.c: 381: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Adj@lights),w
	fcall	_DimmerLightsPointSelect
	line	382
	
l24882:	
;Dimmer_B1.c: 382: if(status)
	movlb 0	; select bank0
	movf	(setDimmerLights_Adj@status),w
	skipz
	goto	u9300
	goto	l24886
u9300:
	line	384
	
l24884:	
;Dimmer_B1.c: 383: {
;Dimmer_B1.c: 384: DimmerLights->AdjFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	385
;Dimmer_B1.c: 385: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	386
;Dimmer_B1.c: 386: }
	goto	l5815
	line	387
	
l5812:	
	line	389
	
l24886:	
;Dimmer_B1.c: 387: else
;Dimmer_B1.c: 388: {
;Dimmer_B1.c: 389: if(DimmerLights->AdjFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9311
	goto	u9310
u9311:
	goto	l5815
u9310:
	line	391
	
l24888:	
;Dimmer_B1.c: 390: {
;Dimmer_B1.c: 391: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	392
;Dimmer_B1.c: 392: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	393
	
l24890:	
;Dimmer_B1.c: 393: setLoad_StatusOff(0,1);
	clrf	(?_setLoad_StatusOff)
	bsf	status,0
	rlf	(?_setLoad_StatusOff),f
	movlw	(0)
	fcall	_setLoad_StatusOff
	line	394
	
l24892:	
;Dimmer_B1.c: 394: DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights_Adj+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Adj+0)+0,w
	movwf	indf1
	line	400
;Dimmer_B1.c: 400: setRF_DimmerLights(lights,1);
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(setDimmerLights_Adj@lights),w
	fcall	_setRF_DimmerLights
	line	401
;Dimmer_B1.c: 401: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l5815
	line	402
	
l5814:	
	goto	l5815
	line	403
	
l5813:	
	line	404
	
l5815:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Adj
	__end_of_setDimmerLights_Adj:
;; =============== function _setDimmerLights_Adj ends ============

	signat	_setDimmerLights_Adj,8312
	global	_setDimmerLights
psect	text4127,local,class=CODE,delta=2
global __ptext4127
__ptext4127:

;; *************** function _setDimmerLights *****************
;; Defined at:
;;		line 322 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setLED
;;		_setLoad_Count
;;		_setLoad_StatusOn
;; This function is called by:
;;		_setDimmerLights_Main
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text4127
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	322
	global	__size_of_setDimmerLights
	__size_of_setDimmerLights	equ	__end_of_setDimmerLights-_setDimmerLights
	
_setDimmerLights:	
	opt	stack 5
; Regs used in _setDimmerLights: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights@lights)
	line	323
	
l24852:	
;Dimmer_B1.c: 323: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights@lights),w
	fcall	_DimmerLightsPointSelect
	line	324
	
l24854:	
;Dimmer_B1.c: 324: Dimmer->Load=lights;
	movlb 0	; select bank0
	movf	(setDimmerLights@lights),w
	movwf	(??_setDimmerLights+0)+0
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	325
	
l24856:	
;Dimmer_B1.c: 325: if(status)
	movf	(setDimmerLights@status),w
	skipz
	goto	u9280
	goto	l24878
u9280:
	line	327
	
l24858:	
;Dimmer_B1.c: 326: {
;Dimmer_B1.c: 327: DimmerLights->Status=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	328
	
l24860:	
;Dimmer_B1.c: 328: setLED(lights,0);
	clrf	(?_setLED)
	movf	(setDimmerLights@lights),w
	fcall	_setLED
	line	329
	
l24862:	
;Dimmer_B1.c: 329: RC7=!0;
	movlb 0	; select bank0
	bsf	(119/8),(119)&7
	line	330
	
l24864:	
;Dimmer_B1.c: 330: setLoad_Count(0);
	movlw	(0)
	fcall	_setLoad_Count
	line	332
;Dimmer_B1.c: 332: DimmerLights->Signal=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	333
;Dimmer_B1.c: 333: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	335
;Dimmer_B1.c: 335: if(!DimmerLights->StatusFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9291
	goto	u9290
u9291:
	goto	l5809
u9290:
	line	337
	
l24866:	
;Dimmer_B1.c: 336: {
;Dimmer_B1.c: 337: DimmerLights->StatusFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	338
	
l24868:	
;Dimmer_B1.c: 338: setLoad_StatusOn(lights,1);
	clrf	(?_setLoad_StatusOn)
	bsf	status,0
	rlf	(?_setLoad_StatusOn),f
	movf	(setDimmerLights@lights),w
	fcall	_setLoad_StatusOn
	line	339
	
l24870:	
;Dimmer_B1.c: 339: Memory->GO=0; if(!0) { Memory->Time=0; } ;;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	
l24872:	
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l24874
	
l5807:	
	line	342
	
l24874:	
;Dimmer_B1.c: 342: DimmerLights->DimmingValue=DimmerLights->MaxmumValue;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	346
	
l24876:	
;Dimmer_B1.c: 346: DimmerLights->DimmingValue=((char)((100-55)*1.5));
	movlw	(043h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l5809
	line	348
	
l5806:	
	line	349
;Dimmer_B1.c: 348: }
;Dimmer_B1.c: 349: }
	goto	l5809
	line	350
	
l5805:	
	line	352
	
l24878:	
;Dimmer_B1.c: 350: else
;Dimmer_B1.c: 351: {
;Dimmer_B1.c: 352: DimmerLights->Status=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	354
;Dimmer_B1.c: 354: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	361
;Dimmer_B1.c: 361: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	362
;Dimmer_B1.c: 362: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	363
;Dimmer_B1.c: 363: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	364
;Dimmer_B1.c: 364: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l5809
	line	376
	
l5808:	
	line	377
	
l5809:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights
	__end_of_setDimmerLights:
;; =============== function _setDimmerLights ends ============

	signat	_setDimmerLights,8312
	global	_DimmerLights_Initialization
psect	text4128,local,class=CODE,delta=2
global __ptext4128
__ptext4128:

;; *************** function _DimmerLights_Initialization *****************
;; Defined at:
;;		line 33 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setDimmerLights_Initialization
;;		_Dimmer_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4128
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	33
	global	__size_of_DimmerLights_Initialization
	__size_of_DimmerLights_Initialization	equ	__end_of_DimmerLights_Initialization-_DimmerLights_Initialization
	
_DimmerLights_Initialization:	
	opt	stack 9
; Regs used in _DimmerLights_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	35
	
l23478:	
;Dimmer_B1.c: 35: DimmerLights11=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights11)
	line	36
	
l23480:	
;Dimmer_B1.c: 36: setDimmerLights_Initialization(1);
	movlw	(01h)
	fcall	_setDimmerLights_Initialization
	line	50
	
l23482:	
;Dimmer_B1.c: 50: Dimmer_Initialization();
	fcall	_Dimmer_Initialization
	line	53
	
l5755:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Initialization
	__end_of_DimmerLights_Initialization:
;; =============== function _DimmerLights_Initialization ends ============

	signat	_DimmerLights_Initialization,88
	global	_DlyOff_Main
psect	text4129,local,class=CODE,delta=2
global __ptext4129
__ptext4129:

;; *************** function _DlyOff_Main *****************
;; Defined at:
;;		line 67 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DelayOffPointSelect
;;		_setSw_Status
;;		_setRFSW_Status
;;		_setRF_DimmerLights
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_Switch
;;		_setTxData
;;		_setBuz
;; This function is called by:
;;		_DelayOff_Main
;; This function uses a non-reentrant model
;;
psect	text4129
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	67
	global	__size_of_DlyOff_Main
	__size_of_DlyOff_Main	equ	__end_of_DlyOff_Main-_DlyOff_Main
	
_DlyOff_Main:	
	opt	stack 8
; Regs used in _DlyOff_Main: [wreg-status,0+pclath+cstack]
;DlyOff_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(DlyOff_Main@sw)
	line	68
	
l24822:	
;DelayOff_B1.c: 68: DelayOffPointSelect(sw);
	movf	(DlyOff_Main@sw),w
	fcall	_DelayOffPointSelect
	line	69
	
l24824:	
;DelayOff_B1.c: 69: if(DelayOff->GO)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9251
	goto	u9250
u9251:
	goto	l4589
u9250:
	line	71
	
l24826:	
;DelayOff_B1.c: 70: {
;DelayOff_B1.c: 71: DelayOff->SecondTime++;
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	72
	
l24828:	
;DelayOff_B1.c: 72: if(DelayOff->SecondTime >= 5600)
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_DlyOff_Main+0)+0+1
	movlw	high(015E0h)
	subwf	1+(??_DlyOff_Main+0)+0,w
	movlw	low(015E0h)
	skipnz
	subwf	0+(??_DlyOff_Main+0)+0,w
	skipc
	goto	u9261
	goto	u9260
u9261:
	goto	l4589
u9260:
	line	74
	
l24830:	
;DelayOff_B1.c: 73: {
;DelayOff_B1.c: 74: DelayOff->SecondTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	75
	
l24832:	
;DelayOff_B1.c: 75: DelayOff->MinuteTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_DlyOff_Main+0)+0,w
	addwf	indf1,f
	line	76
	
l24834:	
;DelayOff_B1.c: 76: if(DelayOff->MinuteTime >= DelayOff->Value)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DelayOff)^080h,w
	addlw	01h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u9271
	goto	u9270
u9271:
	goto	l4589
u9270:
	line	78
	
l24836:	
;DelayOff_B1.c: 77: {
;DelayOff_B1.c: 78: DelayOff->MinuteTime=0;
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	79
;DelayOff_B1.c: 79: DelayOff->GO=0;
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	80
	
l24838:	
;DelayOff_B1.c: 80: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movf	(DlyOff_Main@sw),w
	fcall	_setSw_Status
	line	81
	
l24840:	
;DelayOff_B1.c: 81: setRFSW_Status(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movf	(DlyOff_Main@sw),w
	fcall	_setRFSW_Status
	line	82
	
l24842:	
;DelayOff_B1.c: 82: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	movf	(DlyOff_Main@sw),w
	fcall	_setRF_DimmerLights
	line	83
	
l24844:	
;DelayOff_B1.c: 83: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Trigger
	line	84
	
l24846:	
;DelayOff_B1.c: 84: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Switch
	line	85
	
l24848:	
;DelayOff_B1.c: 85: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	86
	
l24850:	
;DelayOff_B1.c: 86: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(?_setBuz)
	movlw	high(064h)
	movwf	((?_setBuz))+1
	movlw	(01h)
	fcall	_setBuz
	goto	l4589
	line	87
	
l4588:	
	goto	l4589
	line	88
	
l4587:	
	goto	l4589
	line	89
	
l4586:	
	line	90
	
l4589:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Main
	__end_of_DlyOff_Main:
;; =============== function _DlyOff_Main ends ============

	signat	_DlyOff_Main,4216
	global	_DelayOff_Initialization
psect	text4130,local,class=CODE,delta=2
global __ptext4130
__ptext4130:

;; *************** function _DelayOff_Initialization *****************
;; Defined at:
;;		line 31 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DlyOff_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4130
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	31
	global	__size_of_DelayOff_Initialization
	__size_of_DelayOff_Initialization	equ	__end_of_DelayOff_Initialization-_DelayOff_Initialization
	
_DelayOff_Initialization:	
	opt	stack 9
; Regs used in _DelayOff_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	33
	
l24820:	
;DelayOff_B1.c: 33: DlyOff_Initialization(1);
	movlw	(01h)
	fcall	_DlyOff_Initialization
	line	43
	
l4577:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Initialization
	__end_of_DelayOff_Initialization:
;; =============== function _DelayOff_Initialization ends ============

	signat	_DelayOff_Initialization,88
	global	_CC2500_SIDLEMode
psect	text4131,local,class=CODE,delta=2
global __ptext4131
__ptext4131:

;; *************** function _CC2500_SIDLEMode *****************
;; Defined at:
;;		line 184 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text4131
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	184
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l24818:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l2312:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_SIDLEMode
	__end_of_CC2500_SIDLEMode:
;; =============== function _CC2500_SIDLEMode ends ============

	signat	_CC2500_SIDLEMode,88
	global	_CC2500_FrequencyCabr
psect	text4132,local,class=CODE,delta=2
global __ptext4132
__ptext4132:

;; *************** function _CC2500_FrequencyCabr *****************
;; Defined at:
;;		line 176 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4132
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	176
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l24816:	
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
	
l2309:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_FrequencyCabr
	__end_of_CC2500_FrequencyCabr:
;; =============== function _CC2500_FrequencyCabr ends ============

	signat	_CC2500_FrequencyCabr,88
	global	_CC2500_ClearRXFIFO
psect	text4133,local,class=CODE,delta=2
global __ptext4133
__ptext4133:

;; *************** function _CC2500_ClearRXFIFO *****************
;; Defined at:
;;		line 169 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text4133
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	169
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l24814:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l2306:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearRXFIFO
	__end_of_CC2500_ClearRXFIFO:
;; =============== function _CC2500_ClearRXFIFO ends ============

	signat	_CC2500_ClearRXFIFO,88
	global	_CC2500_ClearTXFIFO
psect	text4134,local,class=CODE,delta=2
global __ptext4134
__ptext4134:

;; *************** function _CC2500_ClearTXFIFO *****************
;; Defined at:
;;		line 162 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text4134
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	162
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l24812:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l2303:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearTXFIFO
	__end_of_CC2500_ClearTXFIFO:
;; =============== function _CC2500_ClearTXFIFO ends ============

	signat	_CC2500_ClearTXFIFO,88
	global	_CC2500_InitPATable
psect	text4135,local,class=CODE,delta=2
global __ptext4135
__ptext4135:

;; *************** function _CC2500_InitPATable *****************
;; Defined at:
;;		line 148 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteREG
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text4135
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	148
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg+status,2+status,0+pclath+cstack]
	line	152
	
l23424:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l23426:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u7331
	goto	u7330
u7331:
	goto	l23430
u7330:
	goto	l2300
	
l23428:	
	goto	l2300
	line	153
	
l2298:	
	line	154
	
l23430:	
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
	
l23432:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l23434:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l23436:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u7341
	goto	u7340
u7341:
	goto	l23430
u7340:
	goto	l2300
	
l2299:	
	line	157
	
l2300:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitPATable
	__end_of_CC2500_InitPATable:
;; =============== function _CC2500_InitPATable ends ============

	signat	_CC2500_InitPATable,88
	global	_CC2500_InitSetREG
psect	text4136,local,class=CODE,delta=2
global __ptext4136
__ptext4136:

;; *************** function _CC2500_InitSetREG *****************
;; Defined at:
;;		line 132 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteREG
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text4136
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	132
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg+status,2+status,0+pclath+cstack]
	line	136
	
l23410:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l23412:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u7311
	goto	u7310
u7311:
	goto	l23416
u7310:
	goto	l2295
	
l23414:	
	goto	l2295
	line	137
	
l2293:	
	line	138
	
l23416:	
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
	
l23418:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l23420:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l23422:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u7321
	goto	u7320
u7321:
	goto	l23416
u7320:
	goto	l2295
	
l2294:	
	line	143
	
l2295:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitSetREG
	__end_of_CC2500_InitSetREG:
;; =============== function _CC2500_InitSetREG ends ============

	signat	_CC2500_InitSetREG,88
	global	_CC2500_RxData
psect	text4137,local,class=CODE,delta=2
global __ptext4137
__ptext4137:

;; *************** function _CC2500_RxData *****************
;; Defined at:
;;		line 57 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4137
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	57
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
	opt	stack 7
; Regs used in _CC2500_RxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	62
	
l24770:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u9191
	goto	u9190
u9191:
	goto	l24774
u9190:
	goto	l2267
	line	64
	
l24772:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l2267
	
l2268:	
	
l2267:	
	btfsc	(104/8),(104)&7
	goto	u9201
	goto	u9200
u9201:
	goto	l2267
u9200:
	goto	l24774
	
l2269:	
	goto	l24774
	line	65
	
l2266:	
	line	66
	
l24774:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l24776:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 1	; select bank1
	movf	(_s_data)^080h,w
	skipz
	goto	u9210
	goto	l24808
u9210:
	line	70
	
l24778:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	71
	
l24780:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	72
;CC2500_B1.c: 72: while(RC2==1);
	goto	l2271
	
l2272:	
	
l2271:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u9221
	goto	u9220
u9221:
	goto	l2271
u9220:
	goto	l24782
	
l2273:	
	line	73
	
l24782:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l24784:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_Rx_Length)^080h
	line	77
	
l24786:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	movlb 0	; select bank0
	clrf	(CC2500_RxData@loop_f)
	goto	l24794
	line	78
	
l2275:	
	line	79
	
l24788:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l24790:	
;CC2500_B1.c: 80: RF_Data[loop_f]=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(CC2500_RxData@loop_f),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_CC2500_RxData+0)+0,w
	movwf	indf1
	line	77
	
l24792:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l24794
	
l2274:	
	
l24794:	
	movlb 1	; select bank1
	movf	(_Rx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u9231
	goto	u9230
u9231:
	goto	l24788
u9230:
	goto	l24796
	
l2276:	
	line	82
	
l24796:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l24798:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RSSI)^080h
	line	84
	
l24800:	
;CC2500_B1.c: 84: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	85
;CC2500_B1.c: 85: CRC=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_CRC)^080h
	line	86
	
l24802:	
;CC2500_B1.c: 86: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	87
	
l24804:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	movlb 1	; select bank1
	btfss	(_CRC)^080h,(7)&7
	goto	u9241
	goto	u9240
u9241:
	goto	l24808
u9240:
	line	88
	
l24806:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l24808
	
l2277:	
	goto	l24808
	line	89
	
l2270:	
	line	90
	
l24808:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l24810:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_RxStatus)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l2278:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_RxData
	__end_of_CC2500_RxData:
;; =============== function _CC2500_RxData ends ============

	signat	_CC2500_RxData,88
	global	_CC2500_TxData
psect	text4138,local,class=CODE,delta=2
global __ptext4138
__ptext4138:

;; *************** function _CC2500_TxData *****************
;; Defined at:
;;		line 31 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4138
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	31
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
	opt	stack 7
; Regs used in _CC2500_TxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	34
	
l23342:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	35
	
l23344:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	36
;CC2500_B1.c: 36: while(RC2==1);
	goto	l2251
	
l2252:	
	
l2251:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u7211
	goto	u7210
u7211:
	goto	l2251
u7210:
	goto	l23346
	
l2253:	
	line	37
	
l23346:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l23348:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	39
	
l23350:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l23352:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l23360
	line	41
	
l2255:	
	line	42
	
l23354:	
;CC2500_B1.c: 41: {
;CC2500_B1.c: 42: SPI0Buffer=RF_Data[loop_e];
	movf	(CC2500_TxData@loop_e),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	43
	
l23356:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l23358:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l23360
	
l2254:	
	
l23360:	
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u7221
	goto	u7220
u7221:
	goto	l23354
u7220:
	
l2256:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RC4=1;
	bsf	(116/8),(116)&7
	line	46
	
l23362:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l2257
	
l2258:	
	
l2257:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u7231
	goto	u7230
u7231:
	goto	l2257
u7230:
	goto	l2260
	
l2259:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l2260
	
l2261:	
	
l2260:	
	btfsc	(104/8),(104)&7
	goto	u7241
	goto	u7240
u7241:
	goto	l2260
u7240:
	goto	l23364
	
l2262:	
	line	49
	
l23364:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l23366:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l2263:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_TxData
	__end_of_CC2500_TxData:
;; =============== function _CC2500_TxData ends ============

	signat	_CC2500_TxData,88
	global	___awtoft
psect	text4139,local,class=CODE,delta=2
global __ptext4139
__ptext4139:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_getPercentValue
;;		_setPercentValue
;; This function uses a non-reentrant model
;;
psect	text4139
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l23334:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u7201
	goto	u7200
u7201:
	goto	l23338
u7200:
	line	38
	
l23336:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l23338
	line	40
	
l18832:	
	line	41
	
l23338:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movlb 0	; select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l18833
	
l23340:	
	line	42
	
l18833:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text4140,local,class=CODE,delta=2
global __ptext4140
__ptext4140:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   28[BANK0 ] float 
;;  f2              3   31[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   39[BANK0 ] unsigned um
;;  sign            1   43[BANK0 ] unsigned char 
;;  cntr            1   42[BANK0 ] unsigned char 
;;  exp             1   38[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   28[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      16       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_getPercentValue
;; This function uses a non-reentrant model
;;
psect	text4140
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l23284:	
	movlb 0	; select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u7081
	goto	u7080
u7081:
	goto	l23290
u7080:
	line	57
	
l23286:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l18795
	
l23288:	
	goto	l18795
	
l18794:	
	line	58
	
l23290:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u7091
	goto	u7090
u7091:
	goto	l23296
u7090:
	line	59
	
l23292:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l18795
	
l23294:	
	goto	l18795
	
l18796:	
	line	60
	
l23296:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u7105:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u7100:
	decfsz	wreg,f
	goto	u7105
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u7115:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u7110:
	decfsz	wreg,f
	goto	u7115
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l23298:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l23300:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l23302:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l23304:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l23306:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l23308
	line	70
	
l18797:	
	line	71
	
l23308:	
	btfss	(___ftmul@f1),(0)&7
	goto	u7121
	goto	u7120
u7121:
	goto	l23312
u7120:
	line	72
	
l23310:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l23312
	
l18798:	
	line	73
	
l23312:	
	movlw	01h
u7135:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u7135

	line	74
	
l23314:	
	movlw	01h
u7145:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u7145
	line	75
	
l23316:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u7151
	goto	u7150
u7151:
	goto	l23308
u7150:
	goto	l23318
	
l18799:	
	line	76
	
l23318:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l23320
	line	77
	
l18800:	
	line	78
	
l23320:	
	btfss	(___ftmul@f1),(0)&7
	goto	u7161
	goto	u7160
u7161:
	goto	l23324
u7160:
	line	79
	
l23322:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l23324
	
l18801:	
	line	80
	
l23324:	
	movlw	01h
u7175:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u7175

	line	81
	
l23326:	
	movlw	01h
u7185:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u7185

	line	82
	
l23328:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u7191
	goto	u7190
u7191:
	goto	l23320
u7190:
	goto	l23330
	
l18802:	
	line	83
	
l23330:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movlb 0	; select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l18795
	
l23332:	
	line	84
	
l18795:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text4141,local,class=CODE,delta=2
global __ptext4141
__ptext4141:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   28[BANK0 ] float 
;;  f1              3   31[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   39[BANK0 ] float 
;;  sign            1   43[BANK0 ] unsigned char 
;;  exp             1   42[BANK0 ] unsigned char 
;;  cntr            1   38[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   28[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      16       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_getPercentValue
;;		_setPercentValue
;; This function uses a non-reentrant model
;;
psect	text4141
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l23242:	
	movlb 0	; select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u7001
	goto	u7000
u7001:
	goto	l23248
u7000:
	line	56
	
l23244:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l18785
	
l23246:	
	goto	l18785
	
l18784:	
	line	57
	
l23248:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u7011
	goto	u7010
u7011:
	goto	l23254
u7010:
	line	58
	
l23250:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l18785
	
l23252:	
	goto	l18785
	
l18786:	
	line	59
	
l23254:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l23256:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l23258:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u7025:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u7020:
	decfsz	wreg,f
	goto	u7025
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l23260:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u7035:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u7030:
	decfsz	wreg,f
	goto	u7035
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l23262:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l23264:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l23266:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l23268
	line	69
	
l18787:	
	line	70
	
l23268:	
	movlw	01h
u7045:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u7045
	line	71
	
l23270:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u7055
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u7055
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u7055:
	skipc
	goto	u7051
	goto	u7050
u7051:
	goto	l23276
u7050:
	line	72
	
l23272:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l23274:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l23276
	line	74
	
l18788:	
	line	75
	
l23276:	
	movlw	01h
u7065:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u7065
	line	76
	
l23278:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u7071
	goto	u7070
u7071:
	goto	l23268
u7070:
	goto	l23280
	
l18789:	
	line	77
	
l23280:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movlb 0	; select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l18785
	
l23282:	
	line	78
	
l18785:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text4142,local,class=CODE,delta=2
global __ptext4142
__ptext4142:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   44[BANK0 ] float 
;;  f2              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   56[BANK0 ] unsigned char 
;;  exp2            1   55[BANK0 ] unsigned char 
;;  sign            1   54[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_getPercentValue
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text4142
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l23172:	
	movlb 0	; select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l23174:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u6770
	goto	l23180
u6770:
	
l23176:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u6781
	goto	u6780
u6781:
	goto	l23184
u6780:
	
l23178:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u6791
	goto	u6790
u6791:
	goto	l23184
u6790:
	goto	l23180
	
l18742:	
	line	93
	
l23180:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l18743
	
l23182:	
	goto	l18743
	
l18740:	
	line	94
	
l23184:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u6800
	goto	l18746
u6800:
	
l23186:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u6811
	goto	u6810
u6811:
	goto	l23190
u6810:
	
l23188:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u6821
	goto	u6820
u6821:
	goto	l23190
u6820:
	
l18746:	
	line	95
	goto	l18743
	
l18744:	
	line	96
	
l23190:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l23192:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u6831
	goto	u6830
u6831:
	goto	l18747
u6830:
	line	98
	
l23194:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l18747:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u6841
	goto	u6840
u6841:
	goto	l18748
u6840:
	line	100
	
l23196:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l18748:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l23198:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l23200:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u6851
	goto	u6850
u6851:
	goto	l23212
u6850:
	goto	l23202
	line	109
	
l18750:	
	line	110
	
l23202:	
	movlw	01h
u6865:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u6865
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l23204:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u6871
	goto	u6870
u6871:
	goto	l23210
u6870:
	
l23206:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u6881
	goto	u6880
u6881:
	goto	l23202
u6880:
	goto	l23210
	
l18752:	
	goto	l23210
	
l18753:	
	line	113
	goto	l23210
	
l18755:	
	line	114
	
l23208:	
	movlw	01h
u6895:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u6895

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l23210
	line	116
	
l18754:	
	line	113
	
l23210:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u6901
	goto	u6900
u6901:
	goto	l23208
u6900:
	goto	l18757
	
l18756:	
	line	117
	goto	l18757
	
l18749:	
	
l23212:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u6911
	goto	u6910
u6911:
	goto	l18757
u6910:
	goto	l23214
	line	120
	
l18759:	
	line	121
	
l23214:	
	movlw	01h
u6925:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u6925
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l23216:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u6931
	goto	u6930
u6931:
	goto	l23222
u6930:
	
l23218:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u6941
	goto	u6940
u6941:
	goto	l23214
u6940:
	goto	l23222
	
l18761:	
	goto	l23222
	
l18762:	
	line	124
	goto	l23222
	
l18764:	
	line	125
	
l23220:	
	movlw	01h
u6955:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u6955

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l23222
	line	127
	
l18763:	
	line	124
	
l23222:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u6961
	goto	u6960
u6961:
	goto	l23220
u6960:
	goto	l18757
	
l18765:	
	goto	l18757
	line	128
	
l18758:	
	line	129
	
l18757:	
	btfss	(___ftadd@sign),(7)&7
	goto	u6971
	goto	u6970
u6971:
	goto	l23226
u6970:
	line	131
	
l23224:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l23226
	line	133
	
l18766:	
	line	134
	
l23226:	
	btfss	(___ftadd@sign),(6)&7
	goto	u6981
	goto	u6980
u6981:
	goto	l23230
u6980:
	line	136
	
l23228:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l23230
	line	138
	
l18767:	
	line	139
	
l23230:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l23232:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u6991
	goto	u6990
u6991:
	goto	l23238
u6990:
	line	142
	
l23234:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l23236:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l23238
	line	145
	
l18768:	
	line	146
	
l23238:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movlb 0	; select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l18743
	
l23240:	
	line	148
	
l18743:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_setRF_Learn
psect	text4143,local,class=CODE,delta=2
global __ptext4143
__ptext4143:

;; *************** function _setRF_Learn *****************
;; Defined at:
;;		line 32 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text4143
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	32
	global	__size_of_setRF_Learn
	__size_of_setRF_Learn	equ	__end_of_setRF_Learn-_setRF_Learn
	
_setRF_Learn:	
	opt	stack 8
; Regs used in _setRF_Learn: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Learn@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Learn@rf)
	line	33
	
l24766:	
;RF_Control_B1.c: 33: RfPointSelect(rf);
	movf	(setRF_Learn@rf),w
	fcall	_RfPointSelect
	line	34
	
l24768:	
;RF_Control_B1.c: 34: RF->Learn=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_Learn@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	35
	
l15198:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Learn
	__end_of_setRF_Learn:
;; =============== function _setRF_Learn ends ============

	signat	_setRF_Learn,8312
	global	_Flash_Memory_Unlock
psect	text4144,local,class=CODE,delta=2
global __ptext4144
__ptext4144:

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 498 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Flash_Memory_Write
;;		_Flash_Memory_Erasing
;; This function uses a non-reentrant model
;;
psect	text4144
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	498
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
	opt	stack 8
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	499
	
l24758:	
;MCU_16f1518_B1.c: 499: PMCON2=0x55;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	500
;MCU_16f1518_B1.c: 500: PMCON2=0xaa;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	501
	
l24760:	
;MCU_16f1518_B1.c: 501: WR=1;
	bsf	(3241/8)^0180h,(3241)&7
	line	502
	
l24762:	
;MCU_16f1518_B1.c: 502: _nop();
	nop
	line	503
	
l24764:	
;MCU_16f1518_B1.c: 503: _nop();
	nop
	line	504
	
l9403:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
;; =============== function _Flash_Memory_Unlock ends ============

	signat	_Flash_Memory_Unlock,88
	global	_setRF_Enable
psect	text4145,local,class=CODE,delta=2
global __ptext4145
__ptext4145:

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 179 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;;		_setINT_GO
;; This function is called by:
;;		_MainT
;;		_setLoad_Exceptions
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text4145
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	179
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
	opt	stack 7
; Regs used in _setRF_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	180
	
l24740:	
;RF_Control_B1.c: 180: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	181
	
l24742:	
;RF_Control_B1.c: 181: RF->Enable=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	182
	
l24744:	
;RF_Control_B1.c: 182: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	183
	
l24746:	
;RF_Control_B1.c: 183: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	184
	
l24748:	
;RF_Control_B1.c: 184: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	185
	
l24750:	
;RF_Control_B1.c: 185: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	186
	
l24752:	
;RF_Control_B1.c: 186: RF->DebounceTime=0;
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	187
	
l24754:	
;RF_Control_B1.c: 187: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	188
	
l24756:	
;RF_Control_B1.c: 188: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	line	189
	
l15231:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
;; =============== function _setRF_Enable ends ============

	signat	_setRF_Enable,8312
	global	_setSw_Enable
psect	text4146,local,class=CODE,delta=2
global __ptext4146
__ptext4146:

;; *************** function _setSw_Enable *****************
;; Defined at:
;;		line 87 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SwPointSelect
;; This function is called by:
;;		_MainT
;;		_setLoad_Exceptions
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text4146
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	87
	global	__size_of_setSw_Enable
	__size_of_setSw_Enable	equ	__end_of_setSw_Enable-_setSw_Enable
	
_setSw_Enable:	
	opt	stack 7
; Regs used in _setSw_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Enable@command stored from wreg
	line	90
	movlb 0	; select bank0
	movwf	(setSw_Enable@command)
	
l24736:	
;Switch_B1.c: 90: SwPointSelect(1);
	movlw	(01h)
	fcall	_SwPointSelect
	line	91
	
l24738:	
;Switch_B1.c: 91: Sw->Enable=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	104
	
l16448:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Enable
	__end_of_setSw_Enable:
;; =============== function _setSw_Enable ends ============

	signat	_setSw_Enable,4216
	global	_getPowerFault_AD
psect	text4147,local,class=CODE,delta=2
global __ptext4147
__ptext4147:

;; *************** function _getPowerFault_AD *****************
;; Defined at:
;;		line 50 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4147
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	50
	global	__size_of_getPowerFault_AD
	__size_of_getPowerFault_AD	equ	__end_of_getPowerFault_AD-_getPowerFault_AD
	
_getPowerFault_AD:	
	opt	stack 10
; Regs used in _getPowerFault_AD: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
;getPowerFault_AD@channel stored from wreg
	movlb 0	; select bank0
	movwf	(getPowerFault_AD@channel)
	line	51
	
l23130:	
;PowerFault_B1.c: 51: if(PF->ADtoGO)
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u6751
	goto	u6750
u6751:
	goto	l14018
u6750:
	line	53
	
l23132:	
;PowerFault_B1.c: 52: {
;PowerFault_B1.c: 53: PF->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movwf	(??_getPowerFault_AD+0)+0
	movf	(??_getPowerFault_AD+0)+0,w
	movwf	(?_getAD)
	movf	(getPowerFault_AD@channel),w
	fcall	_getAD
	movf	(_PF),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	54
	
l23134:	
;PowerFault_B1.c: 54: if(PF->AD < PF->ADRES)
	movf	(_PF),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getPowerFault_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getPowerFault_AD+0)+0+1
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getPowerFault_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getPowerFault_AD+2)+0+1
	movf	1+(??_getPowerFault_AD+0)+0,w
	subwf	1+(??_getPowerFault_AD+2)+0,w
	skipz
	goto	u6765
	movf	0+(??_getPowerFault_AD+0)+0,w
	subwf	0+(??_getPowerFault_AD+2)+0,w
u6765:
	skipnc
	goto	u6761
	goto	u6760
u6761:
	goto	l14018
u6760:
	line	56
	
l23136:	
;PowerFault_B1.c: 55: {
;PowerFault_B1.c: 56: PF->AD=PF->ADRES;
	movf	(_PF),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getPowerFault_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getPowerFault_AD+0)+0+1
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_getPowerFault_AD+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_getPowerFault_AD+0)+0,w
	movwi	[1]fsr1
	goto	l14018
	line	57
	
l14017:	
	goto	l14018
	line	58
	
l14016:	
	line	59
	
l14018:	
	return
	opt stack 0
GLOBAL	__end_of_getPowerFault_AD
	__end_of_getPowerFault_AD:
;; =============== function _getPowerFault_AD ends ============

	signat	_getPowerFault_AD,4216
	global	_getTemp_AD
psect	text4148,local,class=CODE,delta=2
global __ptext4148
__ptext4148:

;; *************** function _getTemp_AD *****************
;; Defined at:
;;		line 36 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4148
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	36
	global	__size_of_getTemp_AD
	__size_of_getTemp_AD	equ	__end_of_getTemp_AD-_getTemp_AD
	
_getTemp_AD:	
	opt	stack 10
; Regs used in _getTemp_AD: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
;getTemp_AD@channel stored from wreg
	movlb 0	; select bank0
	movwf	(getTemp_AD@channel)
	line	37
	
l23118:	
;OverTemperature_B1.c: 37: if(Temp->ADtoGO)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u6721
	goto	u6720
u6721:
	goto	l11753
u6720:
	line	39
	
l23120:	
;OverTemperature_B1.c: 38: {
;OverTemperature_B1.c: 39: Temp->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movwf	(??_getTemp_AD+0)+0
	movf	(??_getTemp_AD+0)+0,w
	movwf	(?_getAD)
	movf	(getTemp_AD@channel),w
	fcall	_getAD
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	40
	
l23122:	
;OverTemperature_B1.c: 40: if(Temp->ADH[0] < Temp->ADRES)
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movf	(_Temp),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+2)+0+1
	movf	1+(??_getTemp_AD+0)+0,w
	subwf	1+(??_getTemp_AD+2)+0,w
	skipz
	goto	u6735
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u6735:
	skipnc
	goto	u6731
	goto	u6730
u6731:
	goto	l23126
u6730:
	line	42
	
l23124:	
;OverTemperature_B1.c: 41: {
;OverTemperature_B1.c: 42: Temp->ADH[0]=Temp->ADRES;
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movf	(_Temp),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(??_getTemp_AD+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_getTemp_AD+0)+0,w
	movwi	[1]fsr1
	line	43
;OverTemperature_B1.c: 43: }
	goto	l11753
	line	44
	
l11750:	
	
l23126:	
;OverTemperature_B1.c: 44: else if(Temp->ADH[1] < Temp->ADRES)
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+2)+0+1
	movf	1+(??_getTemp_AD+0)+0,w
	subwf	1+(??_getTemp_AD+2)+0,w
	skipz
	goto	u6745
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u6745:
	skipnc
	goto	u6741
	goto	u6740
u6741:
	goto	l11753
u6740:
	line	46
	
l23128:	
;OverTemperature_B1.c: 45: {
;OverTemperature_B1.c: 46: Temp->ADH[1]=Temp->ADRES;
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(??_getTemp_AD+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_getTemp_AD+0)+0,w
	movwi	[1]fsr1
	goto	l11753
	line	47
	
l11752:	
	goto	l11753
	line	48
	
l11751:	
	goto	l11753
	
l11749:	
	line	49
	
l11753:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_AD
	__end_of_getTemp_AD:
;; =============== function _getTemp_AD ends ============

	signat	_getTemp_AD,4216
	global	_getLoad_AD
psect	text4149,local,class=CODE,delta=2
global __ptext4149
__ptext4149:

;; *************** function _getLoad_AD *****************
;; Defined at:
;;		line 16 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   12[BANK0 ] unsigned char 
;;  i               1   14[BANK0 ] unsigned char 
;;  j               1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4149
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	16
	global	__size_of_getLoad_AD
	__size_of_getLoad_AD	equ	__end_of_getLoad_AD-_getLoad_AD
	
_getLoad_AD:	
	opt	stack 10
; Regs used in _getLoad_AD: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
;getLoad_AD@channel stored from wreg
	movlb 0	; select bank0
	movwf	(getLoad_AD@channel)
	line	17
	
l23080:	
;OverLoad_B1.c: 17: char i=0,j=0;
	clrf	(getLoad_AD@i)
	clrf	(getLoad_AD@j)
	line	19
	
l23082:	
;OverLoad_B1.c: 19: if(Load->ADtoGO)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u6641
	goto	u6640
u6641:
	goto	l10550
u6640:
	line	21
	
l23084:	
;OverLoad_B1.c: 20: {
;OverLoad_B1.c: 21: Load->ADRES=getAD(channel,0xc0);
	movlw	(0C0h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	movwf	(?_getAD)
	movf	(getLoad_AD@channel),w
	fcall	_getAD
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	22
	
l23086:	
;OverLoad_B1.c: 22: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l23088:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u6651
	goto	u6650
u6651:
	goto	l23092
u6650:
	goto	l23102
	
l23090:	
	goto	l23102
	line	23
	
l10543:	
	line	24
	
l23092:	
;OverLoad_B1.c: 23: {
;OverLoad_B1.c: 24: if(Load->AH[i] < Load->ADRES)
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+0)+0+1
	movf	(getLoad_AD@i),w
	addwf	wreg,w
	addlw	08h
	addwf	(_Load),w
	movwf	(??_getLoad_AD+2)+0
	movf	0+(??_getLoad_AD+2)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+3)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+3)+0+1
	movf	1+(??_getLoad_AD+0)+0,w
	subwf	1+(??_getLoad_AD+3)+0,w
	skipz
	goto	u6665
	movf	0+(??_getLoad_AD+0)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u6665:
	skipnc
	goto	u6661
	goto	u6660
u6661:
	goto	l23098
u6660:
	line	26
	
l23094:	
;OverLoad_B1.c: 25: {
;OverLoad_B1.c: 26: Load->AH[i]=Load->ADRES;
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+0)+0+1
	movf	(getLoad_AD@i),w
	addwf	wreg,w
	addlw	08h
	addwf	(_Load),w
	movwf	(??_getLoad_AD+2)+0
	movf	0+(??_getLoad_AD+2)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_getLoad_AD+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_getLoad_AD+0)+0,w
	movwi	[1]fsr1
	line	27
	
l23096:	
;OverLoad_B1.c: 27: j=1;
	clrf	(getLoad_AD@j)
	bsf	status,0
	rlf	(getLoad_AD@j),f
	line	28
;OverLoad_B1.c: 28: break;
	goto	l23102
	line	29
	
l10545:	
	line	22
	
l23098:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l23100:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u6671
	goto	u6670
u6671:
	goto	l23092
u6670:
	goto	l23102
	
l10544:	
	line	31
	
l23102:	
;OverLoad_B1.c: 29: }
;OverLoad_B1.c: 30: }
;OverLoad_B1.c: 31: if(!j)
	movf	(getLoad_AD@j),f
	skipz
	goto	u6681
	goto	u6680
u6681:
	goto	l10550
u6680:
	line	33
	
l23104:	
;OverLoad_B1.c: 32: {
;OverLoad_B1.c: 33: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l23106:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u6691
	goto	u6690
u6691:
	goto	l23110
u6690:
	goto	l10550
	
l23108:	
	goto	l10550
	line	34
	
l10547:	
	line	35
	
l23110:	
;OverLoad_B1.c: 34: {
;OverLoad_B1.c: 35: if(Load->AL[i] > Load->ADRES)
	movf	(getLoad_AD@i),w
	addwf	wreg,w
	addlw	01Ah
	addwf	(_Load),w
	movwf	(??_getLoad_AD+0)+0
	movf	0+(??_getLoad_AD+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+1)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+1)+0+1
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+3)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+3)+0+1
	movf	1+(??_getLoad_AD+1)+0,w
	subwf	1+(??_getLoad_AD+3)+0,w
	skipz
	goto	u6705
	movf	0+(??_getLoad_AD+1)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u6705:
	skipnc
	goto	u6701
	goto	u6700
u6701:
	goto	l23114
u6700:
	line	37
	
l23112:	
;OverLoad_B1.c: 36: {
;OverLoad_B1.c: 37: Load->AL[i]=Load->ADRES;
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+0)+0+1
	movf	(getLoad_AD@i),w
	addwf	wreg,w
	addlw	01Ah
	addwf	(_Load),w
	movwf	(??_getLoad_AD+2)+0
	movf	0+(??_getLoad_AD+2)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_getLoad_AD+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_getLoad_AD+0)+0,w
	movwi	[1]fsr1
	line	38
;OverLoad_B1.c: 38: break;
	goto	l10550
	line	39
	
l10549:	
	line	33
	
l23114:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l23116:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u6711
	goto	u6710
u6711:
	goto	l23110
u6710:
	goto	l10550
	
l10548:	
	goto	l10550
	line	41
	
l10546:	
	goto	l10550
	line	42
	
l10542:	
	line	43
	
l10550:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_AD
	__end_of_getLoad_AD:
;; =============== function _getLoad_AD ends ============

	signat	_getLoad_AD,4216
	global	_RF_Initialization
psect	text4150,local,class=CODE,delta=2
global __ptext4150
__ptext4150:

;; *************** function _RF_Initialization *****************
;; Defined at:
;;		line 18 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setRF_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4150
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	18
	global	__size_of_RF_Initialization
	__size_of_RF_Initialization	equ	__end_of_RF_Initialization-_RF_Initialization
	
_RF_Initialization:	
	opt	stack 10
; Regs used in _RF_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l24734:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l15192:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Initialization
	__end_of_RF_Initialization:
;; =============== function _RF_Initialization ends ============

	signat	_RF_Initialization,88
	global	_PowerFault_Initialization
psect	text4151,local,class=CODE,delta=2
global __ptext4151
__ptext4151:

;; *************** function _PowerFault_Initialization *****************
;; Defined at:
;;		line 16 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setPowerFault_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4151
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	16
	global	__size_of_PowerFault_Initialization
	__size_of_PowerFault_Initialization	equ	__end_of_PowerFault_Initialization-_PowerFault_Initialization
	
_PowerFault_Initialization:	
	opt	stack 10
; Regs used in _PowerFault_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	18
	
l24732:	
;PowerFault_B1.c: 18: setPowerFault_Initialization();
	fcall	_setPowerFault_Initialization
	line	20
	
l13998:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFault_Initialization
	__end_of_PowerFault_Initialization:
;; =============== function _PowerFault_Initialization ends ============

	signat	_PowerFault_Initialization,88
	global	_Load_Initialization
psect	text4152,local,class=CODE,delta=2
global __ptext4152
__ptext4152:

;; *************** function _Load_Initialization *****************
;; Defined at:
;;		line 9 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setLoad_AH_AL_Restore
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4152
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	9
	global	__size_of_Load_Initialization
	__size_of_Load_Initialization	equ	__end_of_Load_Initialization-_Load_Initialization
	
_Load_Initialization:	
	opt	stack 10
; Regs used in _Load_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	10
	
l23070:	
;OverLoad_B1.c: 10: Load=&Load1;
	movlw	(_Load1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Load_Initialization+0)+0
	movf	(??_Load_Initialization+0)+0,w
	movwf	(_Load)
	line	11
	
l23072:	
;OverLoad_B1.c: 11: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	12
	
l23074:	
;OverLoad_B1.c: 12: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	line	13
	
l10539:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Initialization
	__end_of_Load_Initialization:
;; =============== function _Load_Initialization ends ============

	signat	_Load_Initialization,88
	global	_Temp_Initialization
psect	text4153,local,class=CODE,delta=2
global __ptext4153
__ptext4153:

;; *************** function _Temp_Initialization *****************
;; Defined at:
;;		line 16 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setTemp_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4153
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	16
	global	__size_of_Temp_Initialization
	__size_of_Temp_Initialization	equ	__end_of_Temp_Initialization-_Temp_Initialization
	
_Temp_Initialization:	
	opt	stack 10
; Regs used in _Temp_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	18
	
l24730:	
;OverTemperature_B1.c: 18: setTemp_Initialization();
	fcall	_setTemp_Initialization
	line	20
	
l11737:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Initialization
	__end_of_Temp_Initialization:
;; =============== function _Temp_Initialization ends ============

	signat	_Temp_Initialization,88
	global	_Mcu_Initialization
psect	text4154,local,class=CODE,delta=2
global __ptext4154
__ptext4154:

;; *************** function _Mcu_Initialization *****************
;; Defined at:
;;		line 12 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_IO_Set
;;		_TMR0_Set
;;		_ADC_Set
;;		_INT_Set
;;		_IOC_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4154
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	12
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l24720:	
;MCU_16f1518_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l24722:	
;MCU_16f1518_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l24724:	
;MCU_16f1518_B1.c: 18: TMR0_Set();
	fcall	_TMR0_Set
	line	22
	
l24726:	
;MCU_16f1518_B1.c: 20: ;;
;MCU_16f1518_B1.c: 22: ADC_Set();
	fcall	_ADC_Set
	line	26
;MCU_16f1518_B1.c: 26: INT_Set();
	fcall	_INT_Set
	line	28
	
l24728:	
;MCU_16f1518_B1.c: 28: IOC_Set();
	fcall	_IOC_Set
	line	34
;MCU_16f1518_B1.c: 30: ;;
;MCU_16f1518_B1.c: 32: ;;
;MCU_16f1518_B1.c: 34: Memory=&VarMemory;
	movlw	(_VarMemory)&0ffh
	movlb 0	; select bank0
	movwf	(??_Mcu_Initialization+0)+0
	movf	(??_Mcu_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Memory)^080h
	line	35
	
l9312:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
;; =============== function _Mcu_Initialization ends ============

	signat	_Mcu_Initialization,88
	global	_setLED_Main
psect	text4155,local,class=CODE,delta=2
global __ptext4155
__ptext4155:

;; *************** function _setLED_Main *****************
;; Defined at:
;;		line 215 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LedPointSelect
;; This function is called by:
;;		_LED_Main
;; This function uses a non-reentrant model
;;
psect	text4155
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	215
	global	__size_of_setLED_Main
	__size_of_setLED_Main	equ	__end_of_setLED_Main-_setLED_Main
	
_setLED_Main:	
	opt	stack 9
; Regs used in _setLED_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setLED_Main@led stored from wreg
	movlb 0	; select bank0
	movwf	(setLED_Main@led)
	line	216
	
l23036:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l23038:	
;LED_B1.c: 217: if(LED->GO)
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u6591
	goto	u6590
u6591:
	goto	l7002
u6590:
	line	219
	
l23040:	
;LED_B1.c: 218: {
;LED_B1.c: 219: LED->Time++;
	movf	(_LED)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	220
	
l23042:	
;LED_B1.c: 220: if(LED->Time >= 500/10)
	movf	(_LED)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setLED_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLED_Main+0)+0+1
	movlw	high(032h)
	subwf	1+(??_setLED_Main+0)+0,w
	movlw	low(032h)
	skipnz
	subwf	0+(??_setLED_Main+0)+0,w
	skipc
	goto	u6601
	goto	u6600
u6601:
	goto	l7002
u6600:
	line	222
	
l23044:	
;LED_B1.c: 221: {
;LED_B1.c: 222: LED->Time=0;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	224
	
l23046:	
;LED_B1.c: 224: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED_Main@led),w
	xorlw	01h&0ffh
	skipz
	goto	u6611
	goto	u6610
u6611:
	goto	l23050
u6610:
	line	226
	
l23048:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RA3=~RA3;
	movlw	1<<((99)&7)
	xorwf	((99)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l7002
	line	230
	
l6997:	
	
l23050:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h&0ffh
	skipz
	goto	u6621
	goto	u6620
u6621:
	goto	l23054
u6620:
	line	232
	
l23052:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RC7=~RC7;
	movlw	1<<((119)&7)
	xorwf	((119)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l7002
	line	242
	
l6999:	
	
l23054:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h&0ffh
	skipz
	goto	u6631
	goto	u6630
u6631:
	goto	l7002
u6630:
	line	244
	
l23056:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB5=~RB5;
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l7002
	line	245
	
l7001:	
	goto	l7002
	line	247
	
l7000:	
	goto	l7002
	
l6998:	
	goto	l7002
	
l6996:	
	goto	l7002
	line	248
	
l6995:	
	line	249
	
l7002:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Main
	__end_of_setLED_Main:
;; =============== function _setLED_Main ends ============

	signat	_setLED_Main,4216
	global	_setDimmerLights_Clear
psect	text4156,local,class=CODE,delta=2
global __ptext4156
__ptext4156:

;; *************** function _setDimmerLights_Clear *****************
;; Defined at:
;;		line 446 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text4156
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	446
	global	__size_of_setDimmerLights_Clear
	__size_of_setDimmerLights_Clear	equ	__end_of_setDimmerLights_Clear-_setDimmerLights_Clear
	
_setDimmerLights_Clear:	
	opt	stack 9
; Regs used in _setDimmerLights_Clear: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Clear@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Clear@lights)
	line	447
	
l24716:	
;Dimmer_B1.c: 447: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Clear@lights),w
	fcall	_DimmerLightsPointSelect
	line	448
	
l24718:	
;Dimmer_B1.c: 448: DimmerLights->Clear=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_Clear@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	449
	
l5839:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Clear
	__end_of_setDimmerLights_Clear:
;; =============== function _setDimmerLights_Clear ends ============

	signat	_setDimmerLights_Clear,8312
	global	_setDimmerLights_TriggerAdj
psect	text4157,local,class=CODE,delta=2
global __ptext4157
__ptext4157:

;; *************** function _setDimmerLights_TriggerAdj *****************
;; Defined at:
;;		line 440 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_Sw_DimmerOffFunc
;;		_Sw_DimmerAdjFunc
;; This function uses a non-reentrant model
;;
psect	text4157
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	440
	global	__size_of_setDimmerLights_TriggerAdj
	__size_of_setDimmerLights_TriggerAdj	equ	__end_of_setDimmerLights_TriggerAdj-_setDimmerLights_TriggerAdj
	
_setDimmerLights_TriggerAdj:	
	opt	stack 7
; Regs used in _setDimmerLights_TriggerAdj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_TriggerAdj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerAdj@lights)
	line	441
	
l24712:	
;Dimmer_B1.c: 441: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerAdj@lights),w
	fcall	_DimmerLightsPointSelect
	line	442
	
l24714:	
;Dimmer_B1.c: 442: DimmerLights->TriggerAdj=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerAdj@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	443
	
l5836:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerAdj
	__end_of_setDimmerLights_TriggerAdj:
;; =============== function _setDimmerLights_TriggerAdj ends ============

	signat	_setDimmerLights_TriggerAdj,8312
	global	_setDimmerLights_AdjGo
psect	text4158,local,class=CODE,delta=2
global __ptext4158
__ptext4158:

;; *************** function _setDimmerLights_AdjGo *****************
;; Defined at:
;;		line 430 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_Sw_DimmerOffFunc
;;		_Sw_DimmerAdjFunc
;; This function uses a non-reentrant model
;;
psect	text4158
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	430
	global	__size_of_setDimmerLights_AdjGo
	__size_of_setDimmerLights_AdjGo	equ	__end_of_setDimmerLights_AdjGo-_setDimmerLights_AdjGo
	
_setDimmerLights_AdjGo:	
	opt	stack 7
; Regs used in _setDimmerLights_AdjGo: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_AdjGo@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjGo@lights)
	line	431
	
l24708:	
;Dimmer_B1.c: 431: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjGo@lights),w
	fcall	_DimmerLightsPointSelect
	line	432
	
l24710:	
;Dimmer_B1.c: 432: DimmerLights->AdjGo=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_AdjGo@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	433
	
l5830:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjGo
	__end_of_setDimmerLights_AdjGo:
;; =============== function _setDimmerLights_AdjGo ends ============

	signat	_setDimmerLights_AdjGo,8312
	global	_setLED
psect	text4159,local,class=CODE,delta=2
global __ptext4159
__ptext4159:

;; *************** function _setLED *****************
;; Defined at:
;;		line 75 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LedPointSelect
;; This function is called by:
;;		_setDimmerLights_ERROR
;;		_setDimmerLights
;;		_setLED_Initialization
;;		_setLoad_Exceptions
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;;		_setSw_Initialization
;; This function uses a non-reentrant model
;;
psect	text4159
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	75
	global	__size_of_setLED
	__size_of_setLED	equ	__end_of_setLED-_setLED
	
_setLED:	
	opt	stack 5
; Regs used in _setLED: [wreg+fsr1l-status,0+pclath+cstack]
;setLED@led stored from wreg
	movlb 0	; select bank0
	movwf	(setLED@led)
	line	76
	
l24658:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l24660:	
;LED_B1.c: 77: if(command == 0)
	movlb 0	; select bank0
	movf	(setLED@command),f
	skipz
	goto	u9061
	goto	u9060
u9061:
	goto	l24674
u9060:
	line	80
	
l24662:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u9071
	goto	u9070
u9071:
	goto	l24666
u9070:
	line	85
	
l24664:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RA3=1;
	bsf	(99/8),(99)&7
	line	87
;LED_B1.c: 87: }
	goto	l6992
	line	90
	
l6971:	
	
l24666:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u9081
	goto	u9080
u9081:
	goto	l24670
u9080:
	line	95
	
l24668:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RC7=1;
	bsf	(119/8),(119)&7
	line	97
;LED_B1.c: 97: }
	goto	l6992
	line	110
	
l6973:	
	
l24670:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u9091
	goto	u9090
u9091:
	goto	l6992
u9090:
	line	115
	
l24672:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB5=1;
	bsf	(109/8),(109)&7
	goto	l6992
	line	117
	
l6975:	
	goto	l6992
	line	119
	
l6974:	
	goto	l6992
	
l6972:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l6992
	line	120
	
l6970:	
	
l24674:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h&0ffh
	skipz
	goto	u9101
	goto	u9100
u9101:
	goto	l24688
u9100:
	line	123
	
l24676:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u9111
	goto	u9110
u9111:
	goto	l24680
u9110:
	line	128
	
l24678:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RA3=0;
	bcf	(99/8),(99)&7
	line	130
;LED_B1.c: 130: }
	goto	l6992
	line	133
	
l6978:	
	
l24680:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u9121
	goto	u9120
u9121:
	goto	l24684
u9120:
	line	138
	
l24682:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RC7=0;
	bcf	(119/8),(119)&7
	line	140
;LED_B1.c: 140: }
	goto	l6992
	line	153
	
l6980:	
	
l24684:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u9131
	goto	u9130
u9131:
	goto	l6992
u9130:
	line	158
	
l24686:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB5=0;
	bcf	(109/8),(109)&7
	goto	l6992
	line	160
	
l6982:	
	goto	l6992
	line	162
	
l6981:	
	goto	l6992
	
l6979:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l6992
	line	163
	
l6977:	
	
l24688:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah&0ffh
	skipz
	goto	u9141
	goto	u9140
u9141:
	goto	l24704
u9140:
	line	165
	
l24690:	
;LED_B1.c: 164: {
;LED_B1.c: 165: LED->GO=0;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	166
;LED_B1.c: 166: LED->Time=0;
	movf	(_LED)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	168
	
l24692:	
;LED_B1.c: 168: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u9151
	goto	u9150
u9151:
	goto	l24696
u9150:
	line	173
	
l24694:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RA3=1;
	bsf	(99/8),(99)&7
	line	175
;LED_B1.c: 175: }
	goto	l6992
	line	178
	
l6985:	
	
l24696:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u9161
	goto	u9160
u9161:
	goto	l24700
u9160:
	line	183
	
l24698:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RC7=1;
	bsf	(119/8),(119)&7
	line	185
;LED_B1.c: 185: }
	goto	l6992
	line	198
	
l6987:	
	
l24700:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u9171
	goto	u9170
u9171:
	goto	l6992
u9170:
	line	203
	
l24702:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB5=1;
	bsf	(109/8),(109)&7
	goto	l6992
	line	205
	
l6989:	
	goto	l6992
	line	207
	
l6988:	
	goto	l6992
	
l6986:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l6992
	line	208
	
l6984:	
	
l24704:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh&0ffh
	skipz
	goto	u9181
	goto	u9180
u9181:
	goto	l6992
u9180:
	line	210
	
l24706:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l6992
	line	211
	
l6991:	
	goto	l6992
	line	212
	
l6990:	
	goto	l6992
	
l6983:	
	goto	l6992
	
l6976:	
	
l6992:	
	return
	opt stack 0
GLOBAL	__end_of_setLED
	__end_of_setLED:
;; =============== function _setLED ends ============

	signat	_setLED,8312
	global	_setDimmerLights_TriggerERROR
psect	text4160,local,class=CODE,delta=2
global __ptext4160
__ptext4160:

;; *************** function _setDimmerLights_TriggerERROR *****************
;; Defined at:
;;		line 312 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DimmerLights_Exceptions
;; This function uses a non-reentrant model
;;
psect	text4160
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	312
	global	__size_of_setDimmerLights_TriggerERROR
	__size_of_setDimmerLights_TriggerERROR	equ	__end_of_setDimmerLights_TriggerERROR-_setDimmerLights_TriggerERROR
	
_setDimmerLights_TriggerERROR:	
	opt	stack 6
; Regs used in _setDimmerLights_TriggerERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_TriggerERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerERROR@lights)
	line	313
	
l24648:	
;Dimmer_B1.c: 313: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	314
	
l24650:	
;Dimmer_B1.c: 314: DimmerLights->Trigger=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	315
	
l24652:	
;Dimmer_B1.c: 315: DimmerLights->Switch=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	316
	
l24654:	
;Dimmer_B1.c: 316: DimmerLights->TriggerAdj=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	317
	
l24656:	
;Dimmer_B1.c: 317: DimmerLights->AdjGo=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	318
	
l5802:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerERROR
	__end_of_setDimmerLights_TriggerERROR:
;; =============== function _setDimmerLights_TriggerERROR ends ============

	signat	_setDimmerLights_TriggerERROR,8312
	global	_DimmerLights_Close
psect	text4161,local,class=CODE,delta=2
global __ptext4161
__ptext4161:

;; *************** function _DimmerLights_Close *****************
;; Defined at:
;;		line 93 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_getDimmerLights_StatusFlag
;;		_setLoad_GO
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text4161
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	93
	global	__size_of_DimmerLights_Close
	__size_of_DimmerLights_Close	equ	__end_of_DimmerLights_Close-_DimmerLights_Close
	
_DimmerLights_Close:	
	opt	stack 9
; Regs used in _DimmerLights_Close: [wreg+fsr1l-status,0+pclath+cstack]
	line	94
	
l24636:	
;Dimmer_B1.c: 94: if(Dimmer->Detect)
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9041
	goto	u9040
u9041:
	goto	l5764
u9040:
	line	96
	
l24638:	
;Dimmer_B1.c: 95: {
;Dimmer_B1.c: 96: Dimmer->Detect=0;
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	97
	
l24640:	
;Dimmer_B1.c: 97: if(!getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	iorlw	0
	skipz
	goto	u9051
	goto	u9050
u9051:
	goto	l5764
u9050:
	line	99
	
l24642:	
;Dimmer_B1.c: 98: {
;Dimmer_B1.c: 99: setLoad_GO(0);
	movlw	(0)
	fcall	_setLoad_GO
	line	100
	
l24644:	
;Dimmer_B1.c: 100: Memory->GO=1; if(!1) { Memory->Time=1; } ;;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l5764
	
l24646:	
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	movwi	[0]fsr1
	movlw	high(01h)
	movwi	[1]fsr1
	goto	l5764
	
l5763:	
	goto	l5764
	line	101
	
l5762:	
	goto	l5764
	line	102
	
l5761:	
	line	103
	
l5764:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Close
	__end_of_DimmerLights_Close:
;; =============== function _DimmerLights_Close ends ============

	signat	_DimmerLights_Close,88
	global	_setDimmerLights_Initialization
psect	text4162,local,class=CODE,delta=2
global __ptext4162
__ptext4162:

;; *************** function _setDimmerLights_Initialization *****************
;; Defined at:
;;		line 55 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DimmerLights_Initialization
;; This function uses a non-reentrant model
;;
psect	text4162
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	55
	global	__size_of_setDimmerLights_Initialization
	__size_of_setDimmerLights_Initialization	equ	__end_of_setDimmerLights_Initialization-_setDimmerLights_Initialization
	
_setDimmerLights_Initialization:	
	opt	stack 9
; Regs used in _setDimmerLights_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Initialization@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Initialization@lights)
	line	56
	
l22942:	
;Dimmer_B1.c: 56: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Initialization@lights),w
	fcall	_DimmerLightsPointSelect
	line	57
	
l22944:	
;Dimmer_B1.c: 57: DimmerLights->Clear=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	63
	
l22946:	
;Dimmer_B1.c: 63: DimmerLights->MaxmumValue=((char)((100-55)*1.5));
	movlw	(043h)
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	64
	
l22948:	
;Dimmer_B1.c: 64: DimmerLights->MinimumValue=((char)((100-20)*1.5));
	movlw	(078h)
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	74
	
l22950:	
;Dimmer_B1.c: 74: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	90
	
l5758:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Initialization
	__end_of_setDimmerLights_Initialization:
;; =============== function _setDimmerLights_Initialization ends ============

	signat	_setDimmerLights_Initialization,4216
	global	_setDelayOff_GO
psect	text4163,local,class=CODE,delta=2
global __ptext4163
__ptext4163:

;; *************** function _setDelayOff_GO *****************
;; Defined at:
;;		line 93 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;;  value           1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DelayOffPointSelect
;;		_DelayTimejudge
;; This function is called by:
;;		_setRFSW_Control
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text4163
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	93
	global	__size_of_setDelayOff_GO
	__size_of_setDelayOff_GO	equ	__end_of_setDelayOff_GO-_setDelayOff_GO
	
_setDelayOff_GO:	
	opt	stack 5
; Regs used in _setDelayOff_GO: [wreg+fsr1l-status,0+pclath+cstack]
;setDelayOff_GO@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setDelayOff_GO@sw)
	line	94
	
l22914:	
;DelayOff_B1.c: 94: DelayOffPointSelect(sw);
	movf	(setDelayOff_GO@sw),w
	fcall	_DelayOffPointSelect
	line	95
	
l22916:	
;DelayOff_B1.c: 95: if(DelayOff->Enable)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u6381
	goto	u6380
u6381:
	goto	l4600
u6380:
	line	97
	
l22918:	
;DelayOff_B1.c: 96: {
;DelayOff_B1.c: 97: DelayOff->GO=command;
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDelayOff_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	98
	
l22920:	
;DelayOff_B1.c: 98: if(command)
	movf	(setDelayOff_GO@command),w
	skipz
	goto	u6390
	goto	l22934
u6390:
	line	100
	
l22922:	
;DelayOff_B1.c: 99: {
;DelayOff_B1.c: 100: DelayOff->Value=DelayTimejudge(value);
	movf	(setDelayOff_GO@value),w
	fcall	_DelayTimejudge
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	line	101
	
l22924:	
;DelayOff_B1.c: 101: if(((value%16)==5 || !(value%16)) && value <= 0x25)
	movlw	(0Fh)
	andwf	(setDelayOff_GO@value),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	xorlw	05h&0ffh
	skipnz
	goto	u6401
	goto	u6400
u6401:
	goto	l22928
u6400:
	
l22926:	
	movf	(setDelayOff_GO@value),w
	andlw	0Fh
	btfss	status,2
	goto	u6411
	goto	u6410
u6411:
	goto	l22932
u6410:
	goto	l22928
	
l4596:	
	
l22928:	
	movlw	(026h)
	subwf	(setDelayOff_GO@value),w
	skipnc
	goto	u6421
	goto	u6420
u6421:
	goto	l22932
u6420:
	line	103
	
l22930:	
;DelayOff_B1.c: 102: {
;DelayOff_B1.c: 103: Product->Data[26+sw]=value;
	movf	(setDelayOff_GO@value),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setDelayOff_GO+1)+0
	movf	0+(??_setDelayOff_GO+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	line	104
;DelayOff_B1.c: 104: }
	goto	l22938
	line	105
	
l4594:	
	line	107
	
l22932:	
;DelayOff_B1.c: 105: else
;DelayOff_B1.c: 106: {
;DelayOff_B1.c: 107: Product->Data[26+sw]=0x05;
	movlw	(05h)
	movwf	(??_setDelayOff_GO+0)+0
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setDelayOff_GO+1)+0
	movf	0+(??_setDelayOff_GO+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	goto	l22938
	line	108
	
l4597:	
	line	109
;DelayOff_B1.c: 108: }
;DelayOff_B1.c: 109: }
	goto	l22938
	line	110
	
l4593:	
	
l22934:	
;DelayOff_B1.c: 110: else if(!command)
	movf	(setDelayOff_GO@command),f
	skipz
	goto	u6431
	goto	u6430
u6431:
	goto	l22938
u6430:
	line	112
	
l22936:	
;DelayOff_B1.c: 111: {
;DelayOff_B1.c: 112: Product->Data[sw+26]=0;
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l22938
	line	113
	
l4599:	
	goto	l22938
	line	114
	
l4598:	
	
l22938:	
;DelayOff_B1.c: 113: }
;DelayOff_B1.c: 114: DelayOff->SecondTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	115
	
l22940:	
;DelayOff_B1.c: 115: DelayOff->MinuteTime=0;
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l4600
	line	116
	
l4592:	
	line	117
	
l4600:	
	return
	opt stack 0
GLOBAL	__end_of_setDelayOff_GO
	__end_of_setDelayOff_GO:
;; =============== function _setDelayOff_GO ends ============

	signat	_setDelayOff_GO,12408
	global	_setTxData
psect	text4164,local,class=CODE,delta=2
global __ptext4164
__ptext4164:

;; *************** function _setTxData *****************
;; Defined at:
;;		line 134 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    3[BANK0 ] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Adj
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setRFSW_AdjControl
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text4164
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	134
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
	opt	stack 8
; Regs used in _setTxData: [wreg+fsr1l-status,0+pclath+cstack]
;setTxData@rf stored from wreg
	line	136
	movlb 0	; select bank0
	movwf	(setTxData@rf)
	
l22900:	
;RF_Control_B1.c: 135: char i;
;RF_Control_B1.c: 136: RfPointSelect(rf);
	movf	(setTxData@rf),w
	fcall	_RfPointSelect
	line	137
	
l22902:	
;RF_Control_B1.c: 137: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u6361
	goto	u6360
u6361:
	goto	l15228
u6360:
	line	140
	
l22904:	
;RF_Control_B1.c: 138: {
;RF_Control_B1.c: 140: if(!RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u6371
	goto	u6370
u6371:
	goto	l15228
u6370:
	line	142
	
l22906:	
;RF_Control_B1.c: 141: {
;RF_Control_B1.c: 142: RF->TransceiveGO=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	151
	
l22908:	
;RF_Control_B1.c: 151: RF_Data[0]=0x63;
	movlw	(063h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF_Data)^080h
	line	152
	
l22910:	
;RF_Control_B1.c: 152: RF_Data[1]=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+01h
	line	153
;RF_Control_B1.c: 153: RF_Data[2]=Product->Data[2];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+02h
	line	154
;RF_Control_B1.c: 154: RF_Data[3]=Product->Data[3];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+03h
	line	155
;RF_Control_B1.c: 155: RF_Data[4]=Product->Data[4];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+04h
	line	156
;RF_Control_B1.c: 156: RF_Data[5]=Product->Data[5];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+05h
	line	157
;RF_Control_B1.c: 157: RF_Data[6]=Product->Data[6];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+06h
	line	158
;RF_Control_B1.c: 158: RF_Data[7]=Product->Data[7];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+07h
	line	159
;RF_Control_B1.c: 159: RF_Data[8]=Product->Data[8];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+08h
	line	160
;RF_Control_B1.c: 160: RF_Data[9]=Product->Data[9];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	line	161
;RF_Control_B1.c: 161: RF_Data[10]=Product->Data[10];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Ah
	line	162
;RF_Control_B1.c: 162: RF_Data[11]=Product->Data[11];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Bh
	line	163
;RF_Control_B1.c: 163: RF_Data[12]=Product->Data[12];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Ch
	line	164
;RF_Control_B1.c: 164: RF_Data[13]=Product->Data[13];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Dh
	line	165
;RF_Control_B1.c: 165: RF_Data[14]=Product->Data[14];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Eh
	line	166
;RF_Control_B1.c: 166: RF_Data[15]=Product->Data[15];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Fh
	line	167
;RF_Control_B1.c: 167: RF_Data[16]=Product->Data[16];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	010h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+010h
	line	168
;RF_Control_B1.c: 168: RF_Data[17]=Product->Data[17];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+011h
	line	169
;RF_Control_B1.c: 169: RF_Data[18]=Product->Data[18];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	012h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+012h
	line	170
;RF_Control_B1.c: 170: RF_Data[19]=Product->Data[19];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	013h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+013h
	line	171
	
l22912:	
;RF_Control_B1.c: 171: RF_Data[20]=1;
	clrf	0+(_RF_Data)^080h+014h
	bsf	status,0
	rlf	0+(_RF_Data)^080h+014h,f
	goto	l15228
	line	173
	
l15227:	
	goto	l15228
	line	175
	
l15226:	
	line	176
	
l15228:	
	return
	opt stack 0
GLOBAL	__end_of_setTxData
	__end_of_setTxData:
;; =============== function _setTxData ends ============

	signat	_setTxData,4216
	global	_setDimmerLights_Switch
psect	text4165,local,class=CODE,delta=2
global __ptext4165
__ptext4165:

;; *************** function _setDimmerLights_Switch *****************
;; Defined at:
;;		line 425 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setRFSW_Control
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text4165
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	425
	global	__size_of_setDimmerLights_Switch
	__size_of_setDimmerLights_Switch	equ	__end_of_setDimmerLights_Switch-_setDimmerLights_Switch
	
_setDimmerLights_Switch:	
	opt	stack 8
; Regs used in _setDimmerLights_Switch: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Switch@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Switch@lights)
	line	426
	
l24632:	
;Dimmer_B1.c: 426: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Switch@lights),w
	fcall	_DimmerLightsPointSelect
	line	427
	
l24634:	
;Dimmer_B1.c: 427: DimmerLights->Switch=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_Switch@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	428
	
l5827:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Switch
	__end_of_setDimmerLights_Switch:
;; =============== function _setDimmerLights_Switch ends ============

	signat	_setDimmerLights_Switch,8312
	global	_setDimmerLights_Trigger
psect	text4166,local,class=CODE,delta=2
global __ptext4166
__ptext4166:

;; *************** function _setDimmerLights_Trigger *****************
;; Defined at:
;;		line 435 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setRFSW_Control
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text4166
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	435
	global	__size_of_setDimmerLights_Trigger
	__size_of_setDimmerLights_Trigger	equ	__end_of_setDimmerLights_Trigger-_setDimmerLights_Trigger
	
_setDimmerLights_Trigger:	
	opt	stack 8
; Regs used in _setDimmerLights_Trigger: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Trigger@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Trigger@lights)
	line	436
	
l24628:	
;Dimmer_B1.c: 436: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Trigger@lights),w
	fcall	_DimmerLightsPointSelect
	line	437
	
l24630:	
;Dimmer_B1.c: 437: DimmerLights->Trigger=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_Trigger@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	438
	
l5833:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Trigger
	__end_of_setDimmerLights_Trigger:
;; =============== function _setDimmerLights_Trigger ends ============

	signat	_setDimmerLights_Trigger,8312
	global	_setRFSW_Status
psect	text4167,local,class=CODE,delta=2
global __ptext4167
__ptext4167:

;; *************** function _setRFSW_Status *****************
;; Defined at:
;;		line 418 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfSWPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_ERROR
;;		_setControl_Lights_Table
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerAdjFunc
;; This function uses a non-reentrant model
;;
psect	text4167
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	418
	global	__size_of_setRFSW_Status
	__size_of_setRFSW_Status	equ	__end_of_setRFSW_Status-_setRFSW_Status
	
_setRFSW_Status:	
	opt	stack 8
; Regs used in _setRFSW_Status: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Status@sw)
	line	419
	
l24624:	
;RF_Control_B1.c: 419: RfSWPointSelect(sw);
	movf	(setRFSW_Status@sw),w
	fcall	_RfSWPointSelect
	line	420
	
l24626:	
;RF_Control_B1.c: 420: RFSW->Status=command;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRFSW_Status@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	421
	
l15283:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Status
	__end_of_setRFSW_Status:
;; =============== function _setRFSW_Status ends ============

	signat	_setRFSW_Status,8312
	global	_setSw_Status
psect	text4168,local,class=CODE,delta=2
global __ptext4168
__ptext4168:

;; *************** function _setSw_Status *****************
;; Defined at:
;;		line 107 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SwPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_ERROR
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;; This function uses a non-reentrant model
;;
psect	text4168
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	107
	global	__size_of_setSw_Status
	__size_of_setSw_Status	equ	__end_of_setSw_Status-_setSw_Status
	
_setSw_Status:	
	opt	stack 8
; Regs used in _setSw_Status: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Status@sw)
	line	108
	
l24620:	
;Switch_B1.c: 108: SwPointSelect(sw);
	movf	(setSw_Status@sw),w
	fcall	_SwPointSelect
	line	109
	
l24622:	
;Switch_B1.c: 109: Sw->Status=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Status@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	110
	
l16451:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Status
	__end_of_setSw_Status:
;; =============== function _setSw_Status ends ============

	signat	_setSw_Status,8312
	global	_DlyOff_Initialization
psect	text4169,local,class=CODE,delta=2
global __ptext4169
__ptext4169:

;; *************** function _DlyOff_Initialization *****************
;; Defined at:
;;		line 61 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DelayOffPointSelect
;; This function is called by:
;;		_DelayOff_Initialization
;; This function uses a non-reentrant model
;;
psect	text4169
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	61
	global	__size_of_DlyOff_Initialization
	__size_of_DlyOff_Initialization	equ	__end_of_DlyOff_Initialization-_DlyOff_Initialization
	
_DlyOff_Initialization:	
	opt	stack 9
; Regs used in _DlyOff_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;DlyOff_Initialization@sw stored from wreg
	movlb 0	; select bank0
	movwf	(DlyOff_Initialization@sw)
	line	62
	
l24616:	
;DelayOff_B1.c: 62: DelayOffPointSelect(sw);
	movf	(DlyOff_Initialization@sw),w
	fcall	_DelayOffPointSelect
	line	63
	
l24618:	
;DelayOff_B1.c: 63: DelayOff->Enable=1;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	64
	
l4583:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Initialization
	__end_of_DlyOff_Initialization:
;; =============== function _DlyOff_Initialization ends ============

	signat	_DlyOff_Initialization,4216
	global	_CC2500_WriteREG
psect	text4170,local,class=CODE,delta=2
global __ptext4170
__ptext4170:

;; *************** function _CC2500_WriteREG *****************
;; Defined at:
;;		line 228 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4170
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
	
l22868:	
;CC2500_B1.c: 229: RC4=0;
	bcf	(116/8),(116)&7
	line	230
	
l22870:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	231
;CC2500_B1.c: 231: while(RC2==1);
	goto	l2329
	
l2330:	
	
l2329:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u6351
	goto	u6350
u6351:
	goto	l2329
u6350:
	goto	l22872
	
l2331:	
	line	232
	
l22872:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l22874:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	234
	
l22876:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l22878:	
;CC2500_B1.c: 235: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	236
	
l2332:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteREG
	__end_of_CC2500_WriteREG:
;; =============== function _CC2500_WriteREG ends ============

	signat	_CC2500_WriteREG,8312
	global	_CC2500_PowerRST
psect	text4171,local,class=CODE,delta=2
global __ptext4171
__ptext4171:

;; *************** function _CC2500_PowerRST *****************
;; Defined at:
;;		line 111 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4171
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	111
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l24602:	
;CC2500_B1.c: 112: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	line	113
;CC2500_B1.c: 113: RC0=0;
	bcf	(112/8),(112)&7
	line	114
;CC2500_B1.c: 114: RC4=1;
	bsf	(116/8),(116)&7
	line	115
	
l24604:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	116
	
l24606:	
;CC2500_B1.c: 116: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	117
;CC2500_B1.c: 117: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	118
	
l24608:	
;CC2500_B1.c: 118: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	119
;CC2500_B1.c: 119: DelayTime_1us(40);
	movlw	low(028h)
	movwf	(?_DelayTime_1us)
	movlw	high(028h)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	120
	
l24610:	
;CC2500_B1.c: 120: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	121
	
l24612:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	122
;CC2500_B1.c: 122: while(RC2==1);
	goto	l2284
	
l2285:	
	
l2284:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u9021
	goto	u9020
u9021:
	goto	l2284
u9020:
	goto	l24614
	
l2286:	
	line	123
	
l24614:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RC2==1);
	goto	l2287
	
l2288:	
	
l2287:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u9031
	goto	u9030
u9031:
	goto	l2287
u9030:
	
l2289:	
	line	125
;CC2500_B1.c: 125: RC0=0;
	bcf	(112/8),(112)&7
	line	126
;CC2500_B1.c: 126: RC4=1;
	bsf	(116/8),(116)&7
	line	127
	
l2290:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerRST
	__end_of_CC2500_PowerRST:
;; =============== function _CC2500_PowerRST ends ============

	signat	_CC2500_PowerRST,88
	global	_setRF_RxStatus
psect	text4172,local,class=CODE,delta=2
global __ptext4172
__ptext4172:

;; *************** function _setRF_RxStatus *****************
;; Defined at:
;;		line 44 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;; This function is called by:
;;		_CC2500_RxData
;; This function uses a non-reentrant model
;;
psect	text4172
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	
l24598:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l24600:	
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
	
l15204:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_RxStatus
	__end_of_setRF_RxStatus:
;; =============== function _setRF_RxStatus ends ============

	signat	_setRF_RxStatus,8312
	global	_CC2500_ReadStatus
psect	text4173,local,class=CODE,delta=2
global __ptext4173
__ptext4173:

;; *************** function _CC2500_ReadStatus *****************
;; Defined at:
;;		line 268 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4173
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
	
l22840:	
;CC2500_B1.c: 269: RC4=0;
	bcf	(116/8),(116)&7
	line	270
	
l22842:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	272
;CC2500_B1.c: 272: while(RC2==1);
	goto	l2347
	
l2348:	
	
l2347:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u6321
	goto	u6320
u6321:
	goto	l2347
u6320:
	goto	l22844
	
l2349:	
	line	274
	
l22844:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l22846:	
;CC2500_B1.c: 276: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	278
	
l22848:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_s_data)^080h
	line	279
	
l2350:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadStatus
	__end_of_CC2500_ReadStatus:
;; =============== function _CC2500_ReadStatus ends ============

	signat	_CC2500_ReadStatus,4216
	global	_CC2500_WriteCommand
psect	text4174,local,class=CODE,delta=2
global __ptext4174
__ptext4174:

;; *************** function _CC2500_WriteCommand *****************
;; Defined at:
;;		line 254 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
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
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text4174
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	254
	global	__size_of_CC2500_WriteCommand
	__size_of_CC2500_WriteCommand	equ	__end_of_CC2500_WriteCommand-_CC2500_WriteCommand
	
_CC2500_WriteCommand:	
	opt	stack 7
; Regs used in _CC2500_WriteCommand: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteCommand@command stored from wreg
	movlb 0	; select bank0
	movwf	(CC2500_WriteCommand@command)
	line	255
	
l22832:	
;CC2500_B1.c: 255: RC4=0;
	bcf	(116/8),(116)&7
	line	256
	
l22834:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	258
;CC2500_B1.c: 258: while(RC2==1);
	goto	l2341
	
l2342:	
	
l2341:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u6311
	goto	u6310
u6311:
	goto	l2341
u6310:
	goto	l22836
	
l2343:	
	line	260
	
l22836:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l22838:	
;CC2500_B1.c: 261: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	263
	
l2344:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteCommand
	__end_of_CC2500_WriteCommand:
;; =============== function _CC2500_WriteCommand ends ============

	signat	_CC2500_WriteCommand,4216
	global	_setBuz
psect	text4175,local,class=CODE,delta=2
global __ptext4175
__ptext4175:

;; *************** function _setBuz *****************
;; Defined at:
;;		line 23 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  count           1    wreg     unsigned char 
;;  time            2    6[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  count           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Main
;;		_DimmerLights_Exceptions
;;		_MainT
;;		_setOverTemp_Exceptions
;;		_setLog_Code
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setSw_Main
;;		_Sw_DimmerOnFunc
;; This function uses a non-reentrant model
;;
psect	text4175
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	23
	global	__size_of_setBuz
	__size_of_setBuz	equ	__end_of_setBuz-_setBuz
	
_setBuz:	
	opt	stack 8
; Regs used in _setBuz: [wreg+fsr1l-status,0+pclath+cstack]
;setBuz@count stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz@count)
	line	24
	
l24580:	
;Buzzer_B1.c: 24: time*=20;
	movlw	low(014h)
	movwf	(?___wmul)
	movlw	high(014h)
	movwf	((?___wmul))+1
	movf	(setBuz@time+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(setBuz@time),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movlb 0	; select bank0
	movf	(1+(?___wmul)),w
	clrf	(setBuz@time+1)
	addwf	(setBuz@time+1)
	movf	(0+(?___wmul)),w
	clrf	(setBuz@time)
	addwf	(setBuz@time)

	line	25
	
l24582:	
;Buzzer_B1.c: 25: if(Buz->Enable)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8981
	goto	u8980
u8981:
	goto	l1111
u8980:
	line	27
	
l24584:	
;Buzzer_B1.c: 26: {
;Buzzer_B1.c: 27: if(!Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u8991
	goto	u8990
u8991:
	goto	l24590
u8990:
	line	29
	
l24586:	
;Buzzer_B1.c: 28: {
;Buzzer_B1.c: 29: Buz->GO=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	30
;Buzzer_B1.c: 30: Buz->Count=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	31
;Buzzer_B1.c: 31: Buz->TimeValue=time;
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	33
	
l24588:	
;Buzzer_B1.c: 33: RB3=1;
	bsf	(107/8),(107)&7
	line	34
;Buzzer_B1.c: 34: }
	goto	l1111
	line	35
	
l1106:	
	line	37
	
l24590:	
;Buzzer_B1.c: 35: else
;Buzzer_B1.c: 36: {
;Buzzer_B1.c: 37: if(!Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u9001
	goto	u9000
u9001:
	goto	l24594
u9000:
	line	39
	
l24592:	
;Buzzer_B1.c: 38: {
;Buzzer_B1.c: 39: Buz->BufferStatus1=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	40
;Buzzer_B1.c: 40: Buz->CountBuffer1=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	41
;Buzzer_B1.c: 41: Buz->TimeValueBuffer1=time;
	movf	(_Buz),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	42
;Buzzer_B1.c: 42: }
	goto	l1111
	line	43
	
l1108:	
	
l24594:	
;Buzzer_B1.c: 43: else if(!Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u9011
	goto	u9010
u9011:
	goto	l1111
u9010:
	line	45
	
l24596:	
;Buzzer_B1.c: 44: {
;Buzzer_B1.c: 45: Buz->BufferStatus2=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	46
;Buzzer_B1.c: 46: Buz->CountBuffer2=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	47
;Buzzer_B1.c: 47: Buz->TimeValueBuffer2=time;
	movf	(_Buz),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	goto	l1111
	line	48
	
l1110:	
	goto	l1111
	line	49
	
l1109:	
	goto	l1111
	
l1107:	
	goto	l1111
	line	50
	
l1105:	
	line	51
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz
	__end_of_setBuz:
;; =============== function _setBuz ends ============

	signat	_setBuz,8312
	global	___fttol
psect	text4176,local,class=CODE,delta=2
global __ptext4176
__ptext4176:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   17[BANK0 ] unsigned long 
;;  exp1            1   21[BANK0 ] unsigned char 
;;  sign1           1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      14       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getPercentValue
;;		_setPercentValue
;; This function uses a non-reentrant model
;;
psect	text4176
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l22688:	
	movlb 0	; select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u6061
	goto	u6060
u6061:
	goto	l22694
u6060:
	line	50
	
l22690:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l18806
	
l22692:	
	goto	l18806
	
l18805:	
	line	51
	
l22694:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u6075:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u6070:
	decfsz	wreg,f
	goto	u6075
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l22696:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l22698:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l22700:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l22702:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l22704:	
	btfss	(___fttol@exp1),7
	goto	u6081
	goto	u6080
u6081:
	goto	l22714
u6080:
	line	57
	
l22706:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u6091
	goto	u6090
u6091:
	goto	l22712
u6090:
	line	58
	
l22708:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l18806
	
l22710:	
	goto	l18806
	
l18808:	
	goto	l22712
	line	59
	
l18809:	
	line	60
	
l22712:	
	movlw	01h
u6105:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u6105

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u6111
	goto	u6110
u6111:
	goto	l22712
u6110:
	goto	l22724
	
l18810:	
	line	62
	goto	l22724
	
l18807:	
	line	63
	
l22714:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u6121
	goto	u6120
u6121:
	goto	l22722
u6120:
	line	64
	
l22716:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l18806
	
l22718:	
	goto	l18806
	
l18812:	
	line	65
	goto	l22722
	
l18814:	
	line	66
	
l22720:	
	movlw	01h
u6135:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u6135
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l22722
	line	68
	
l18813:	
	line	65
	
l22722:	
	movf	(___fttol@exp1),f
	skipz
	goto	u6141
	goto	u6140
u6141:
	goto	l22720
u6140:
	goto	l22724
	
l18815:	
	goto	l22724
	line	69
	
l18811:	
	line	70
	
l22724:	
	movf	(___fttol@sign1),w
	skipz
	goto	u6150
	goto	l22728
u6150:
	line	71
	
l22726:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l22728
	
l18816:	
	line	72
	
l22728:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l18806
	
l22730:	
	line	73
	
l18806:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text4177,local,class=CODE,delta=2
global __ptext4177
__ptext4177:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text4177
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l22652:	
	movlb 0	; select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u5950
	goto	l22656
u5950:
	
l22654:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u5961
	goto	u5960
u5961:
	goto	l22662
u5960:
	goto	l22656
	
l19030:	
	line	65
	
l22656:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l19031
	
l22658:	
	goto	l19031
	
l19028:	
	line	66
	goto	l22662
	
l19033:	
	line	67
	
l22660:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u5975:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u5975

	goto	l22662
	line	69
	
l19032:	
	line	66
	
l22662:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5981
	goto	u5980
u5981:
	goto	l22660
u5980:
	goto	l19035
	
l19034:	
	line	70
	goto	l19035
	
l19036:	
	line	71
	
l22664:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l22666:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l22668:	
	movlw	01h
u5995:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u5995

	line	74
	
l19035:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u6001
	goto	u6000
u6001:
	goto	l22664
u6000:
	goto	l22672
	
l19037:	
	line	75
	goto	l22672
	
l19039:	
	line	76
	
l22670:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u6015:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u6015
	goto	l22672
	line	78
	
l19038:	
	line	75
	
l22672:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u6021
	goto	u6020
u6021:
	goto	l22670
u6020:
	
l19040:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u6031
	goto	u6030
u6031:
	goto	l19041
u6030:
	line	80
	
l22674:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l19041:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l22676:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u6045:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u6040:
	decfsz	wreg,f
	goto	u6045
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l22678:	
	movf	(___ftpack@sign),w
	skipz
	goto	u6050
	goto	l19042
u6050:
	line	84
	
l22680:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l19042:	
	line	85
	line	86
	
l19031:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwdiv
psect	text4178,local,class=CODE,delta=2
global __ptext4178
__ptext4178:

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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text4178
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 10
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l22626:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l22628:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u5881
	goto	u5880
u5881:
	goto	l22648
u5880:
	line	11
	
l22630:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l22636
	
l18704:	
	line	13
	
l22632:	
	movlw	01h
	
u5895:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u5895
	line	14
	
l22634:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l22636
	line	15
	
l18703:	
	line	12
	
l22636:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u5901
	goto	u5900
u5901:
	goto	l22632
u5900:
	goto	l22638
	
l18705:	
	goto	l22638
	line	16
	
l18706:	
	line	17
	
l22638:	
	movlw	01h
	
u5915:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u5915
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u5925
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u5925:
	skipc
	goto	u5921
	goto	u5920
u5921:
	goto	l22644
u5920:
	line	19
	
l22640:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l22642:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l22644
	line	21
	
l18707:	
	line	22
	
l22644:	
	movlw	01h
	
u5935:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u5935
	line	23
	
l22646:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u5941
	goto	u5940
u5941:
	goto	l22638
u5940:
	goto	l22648
	
l18708:	
	goto	l22648
	line	24
	
l18702:	
	line	25
	
l22648:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l18709
	
l22650:	
	line	26
	
l18709:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text4179,local,class=CODE,delta=2
global __ptext4179
__ptext4179:

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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setBuz
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text4179
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 8
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l24568:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l24570
	line	6
	
l18696:	
	line	7
	
l24570:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u8941
	goto	u8940
u8941:
	goto	l18697
u8940:
	line	8
	
l24572:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l18697:	
	line	9
	movlw	01h
	
u8955:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u8955
	line	10
	
l24574:	
	movlw	01h
	
u8965:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u8965
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u8971
	goto	u8970
u8971:
	goto	l24570
u8970:
	goto	l24576
	
l18698:	
	line	12
	
l24576:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l18699
	
l24578:	
	line	13
	
l18699:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_SwPointSelect
psect	text4180,local,class=CODE,delta=2
global __ptext4180
__ptext4180:

;; *************** function _SwPointSelect *****************
;; Defined at:
;;		line 17 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSw_Enable
;;		_setSw_Status
;;		_setSw_Main
;;		_Sw_Detect
;; This function uses a non-reentrant model
;;
psect	text4180
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	17
	global	__size_of_SwPointSelect
	__size_of_SwPointSelect	equ	__end_of_SwPointSelect-_SwPointSelect
	
_SwPointSelect:	
	opt	stack 8
; Regs used in _SwPointSelect: [wreg]
;SwPointSelect@sw stored from wreg
	line	19
	movlb 0	; select bank0
	movwf	(SwPointSelect@sw)
	
l22596:	
;Switch_B1.c: 19: if(sw == 1)
	movf	(SwPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5781
	goto	u5780
u5781:
	goto	l16436
u5780:
	line	21
	
l22598:	
;Switch_B1.c: 20: {
;Switch_B1.c: 21: Sw=&Sw1;
	movlw	(_Sw1)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	goto	l16436
	line	22
	
l16435:	
	line	36
	
l16436:	
	return
	opt stack 0
GLOBAL	__end_of_SwPointSelect
	__end_of_SwPointSelect:
;; =============== function _SwPointSelect ends ============

	signat	_SwPointSelect,4216
	global	_TouchPower
psect	text4181,local,class=CODE,delta=2
global __ptext4181
__ptext4181:

;; *************** function _TouchPower *****************
;; Defined at:
;;		line 10 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Switch_Initialization
;; This function uses a non-reentrant model
;;
psect	text4181
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	10
	global	__size_of_TouchPower
	__size_of_TouchPower	equ	__end_of_TouchPower-_TouchPower
	
_TouchPower:	
	opt	stack 10
; Regs used in _TouchPower: []
	line	11
	
l24566:	
;Switch_B1.c: 11: while(!RC5)
	goto	l16429
	
l16430:	
	line	12
;Switch_B1.c: 12: RC5=1;
	bsf	(117/8),(117)&7
	
l16429:	
	line	11
	movlb 0	; select bank0
	btfss	(117/8),(117)&7
	goto	u8931
	goto	u8930
u8931:
	goto	l16430
u8930:
	goto	l16432
	
l16431:	
	line	13
	
l16432:	
	return
	opt stack 0
GLOBAL	__end_of_TouchPower
	__end_of_TouchPower:
;; =============== function _TouchPower ends ============

	signat	_TouchPower,88
	global	_RfSWPointSelect
psect	text4182,local,class=CODE,delta=2
global __ptext4182
__ptext4182:

;; *************** function _RfSWPointSelect *****************
;; Defined at:
;;		line 340 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRFSW_Control
;;		_setRFSW_AdjControl
;;		_setRFSW_Status
;; This function uses a non-reentrant model
;;
psect	text4182
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	340
	global	__size_of_RfSWPointSelect
	__size_of_RfSWPointSelect	equ	__end_of_RfSWPointSelect-_RfSWPointSelect
	
_RfSWPointSelect:	
	opt	stack 8
; Regs used in _RfSWPointSelect: [wreg]
;RfSWPointSelect@sw stored from wreg
	line	342
	movlb 0	; select bank0
	movwf	(RfSWPointSelect@sw)
	
l22590:	
;RF_Control_B1.c: 342: if(sw == 1)
	movf	(RfSWPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5761
	goto	u5760
u5761:
	goto	l15267
u5760:
	line	344
	
l22592:	
;RF_Control_B1.c: 343: {
;RF_Control_B1.c: 344: RFSW=&RFSW1;
	movlw	(_RFSW1)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	goto	l15267
	line	345
	
l15266:	
	line	359
	
l15267:	
	return
	opt stack 0
GLOBAL	__end_of_RfSWPointSelect
	__end_of_RfSWPointSelect:
;; =============== function _RfSWPointSelect ends ============

	signat	_RfSWPointSelect,4216
	global	_setRF_Initialization
psect	text4183,local,class=CODE,delta=2
global __ptext4183
__ptext4183:

;; *************** function _setRF_Initialization *****************
;; Defined at:
;;		line 51 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RF_Initialization
;; This function uses a non-reentrant model
;;
psect	text4183
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	51
	global	__size_of_setRF_Initialization
	__size_of_setRF_Initialization	equ	__end_of_setRF_Initialization-_setRF_Initialization
	
_setRF_Initialization:	
	opt	stack 10
; Regs used in _setRF_Initialization: [wreg]
	line	54
	
l22588:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Tx_Length)^080h
	line	56
	
l15207:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Initialization
	__end_of_setRF_Initialization:
;; =============== function _setRF_Initialization ends ============

	signat	_setRF_Initialization,4216
	global	_RfPointSelect
psect	text4184,local,class=CODE,delta=2
global __ptext4184
__ptext4184:

;; *************** function _RfPointSelect *****************
;; Defined at:
;;		line 8 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_Learn
;;		_setRF_RxStatus
;;		_setRF_Main
;;		_setTxData
;;		_setRF_Enable
;;		_RF_RxDisable
;;		_getRxData
;;		_setLog_Code
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text4184
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	8
	global	__size_of_RfPointSelect
	__size_of_RfPointSelect	equ	__end_of_RfPointSelect-_RfPointSelect
	
_RfPointSelect:	
	opt	stack 8
; Regs used in _RfPointSelect: [wreg]
;RfPointSelect@rf stored from wreg
	line	10
	movlb 0	; select bank0
	movwf	(RfPointSelect@rf)
	
l22584:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u5751
	goto	u5750
u5751:
	goto	l15189
u5750:
	line	12
	
l22586:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	l15189
	line	13
	
l15188:	
	line	15
	
l15189:	
	return
	opt stack 0
GLOBAL	__end_of_RfPointSelect
	__end_of_RfPointSelect:
;; =============== function _RfPointSelect ends ============

	signat	_RfPointSelect,4216
	global	_setPowerFault_Initialization
psect	text4185,local,class=CODE,delta=2
global __ptext4185
__ptext4185:

;; *************** function _setPowerFault_Initialization *****************
;; Defined at:
;;		line 30 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PowerFault_Initialization
;; This function uses a non-reentrant model
;;
psect	text4185
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	30
	global	__size_of_setPowerFault_Initialization
	__size_of_setPowerFault_Initialization	equ	__end_of_setPowerFault_Initialization-_setPowerFault_Initialization
	
_setPowerFault_Initialization:	
	opt	stack 10
; Regs used in _setPowerFault_Initialization: [wregfsr1]
	line	31
	
l22572:	
;PowerFault_B1.c: 31: PF=&PF1;
	movlw	(_PF1)&0ffh
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Initialization+0)+0
	movf	(??_setPowerFault_Initialization+0)+0,w
	movwf	(_PF)
	line	32
	
l22574:	
;PowerFault_B1.c: 32: PF->Enable=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	33
	
l22576:	
;PowerFault_B1.c: 33: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	34
	
l14004:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Initialization
	__end_of_setPowerFault_Initialization:
;; =============== function _setPowerFault_Initialization ends ============

	signat	_setPowerFault_Initialization,88
	global	_setTemp_Initialization
psect	text4186,local,class=CODE,delta=2
global __ptext4186
__ptext4186:

;; *************** function _setTemp_Initialization *****************
;; Defined at:
;;		line 52 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Temp_Initialization
;; This function uses a non-reentrant model
;;
psect	text4186
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	52
	global	__size_of_setTemp_Initialization
	__size_of_setTemp_Initialization	equ	__end_of_setTemp_Initialization-_setTemp_Initialization
	
_setTemp_Initialization:	
	opt	stack 10
; Regs used in _setTemp_Initialization: [wregfsr1]
	line	53
	
l22564:	
;OverTemperature_B1.c: 53: Temp=&Temp1;
	movlw	(_Temp1)&0ffh
	movlb 0	; select bank0
	movwf	(??_setTemp_Initialization+0)+0
	movf	(??_setTemp_Initialization+0)+0,w
	movwf	(_Temp)
	line	54
	
l22566:	
;OverTemperature_B1.c: 54: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	55
	
l11756:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Initialization
	__end_of_setTemp_Initialization:
;; =============== function _setTemp_Initialization ends ============

	signat	_setTemp_Initialization,88
	global	_getLoad_Safe
psect	text4187,local,class=CODE,delta=2
global __ptext4187
__ptext4187:

;; *************** function _getLoad_Safe *****************
;; Defined at:
;;		line 302 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setTemp_Main
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text4187
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	302
	global	__size_of_getLoad_Safe
	__size_of_getLoad_Safe	equ	__end_of_getLoad_Safe-_getLoad_Safe
	
_getLoad_Safe:	
	opt	stack 9
; Regs used in _getLoad_Safe: [wreg+fsr1l-status,0]
	line	303
	
l22556:	
;OverLoad_B1.c: 303: return Load->Safe;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	rrf	indf1,w
	movwf	(??_getLoad_Safe+0)+0
	rrf	(??_getLoad_Safe+0)+0,f
	rrf	(??_getLoad_Safe+0)+0,w
	andlw	(1<<1)-1
	goto	l10608
	
l22558:	
	line	304
	
l10608:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_Safe
	__end_of_getLoad_Safe:
;; =============== function _getLoad_Safe ends ============

	signat	_getLoad_Safe,89
	global	_getPF_Safe
psect	text4188,local,class=CODE,delta=2
global __ptext4188
__ptext4188:

;; *************** function _getPF_Safe *****************
;; Defined at:
;;		line 41 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Load_Main
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text4188
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	41
	global	__size_of_getPF_Safe
	__size_of_getPF_Safe	equ	__end_of_getPF_Safe-_getPF_Safe
	
_getPF_Safe:	
	opt	stack 10
; Regs used in _getPF_Safe: [wreg+fsr1l-status,0]
	line	42
	
l24562:	
;PowerFault_B1.c: 42: return PF->Safe;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l14010
	
l24564:	
	line	43
	
l14010:	
	return
	opt stack 0
GLOBAL	__end_of_getPF_Safe
	__end_of_getPF_Safe:
;; =============== function _getPF_Safe ends ============

	signat	_getPF_Safe,89
	global	_getTemp_Safe
psect	text4189,local,class=CODE,delta=2
global __ptext4189
__ptext4189:

;; *************** function _getTemp_Safe *****************
;; Defined at:
;;		line 27 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Load_Main
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text4189
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	27
	global	__size_of_getTemp_Safe
	__size_of_getTemp_Safe	equ	__end_of_getTemp_Safe-_getTemp_Safe
	
_getTemp_Safe:	
	opt	stack 9
; Regs used in _getTemp_Safe: [wreg+fsr1l-status,0]
	line	28
	
l24558:	
;OverTemperature_B1.c: 28: return Temp->Safe;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	indf1,w
	andlw	(1<<1)-1
	goto	l11743
	
l24560:	
	line	29
	
l11743:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_Safe
	__end_of_getTemp_Safe:
;; =============== function _getTemp_Safe ends ============

	signat	_getTemp_Safe,89
	global	_setLoad_AH_AL_Restore
psect	text4190,local,class=CODE,delta=2
global __ptext4190
__ptext4190:

;; *************** function _setLoad_AH_AL_Restore *****************
;; Defined at:
;;		line 311 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Load_Initialization
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text4190
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	311
	global	__size_of_setLoad_AH_AL_Restore
	__size_of_setLoad_AH_AL_Restore	equ	__end_of_setLoad_AH_AL_Restore-_setLoad_AH_AL_Restore
	
_setLoad_AH_AL_Restore:	
	opt	stack 10
; Regs used in _setLoad_AH_AL_Restore: [wreg+fsr1l-status,0]
	line	313
	
l22536:	
;OverLoad_B1.c: 312: char i;
;OverLoad_B1.c: 313: for(i=0 ; i<5 ;i++)
	movlb 0	; select bank0
	clrf	(setLoad_AH_AL_Restore@i)
	
l22538:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u5731
	goto	u5730
u5731:
	goto	l22542
u5730:
	goto	l10616
	
l22540:	
	goto	l10616
	line	314
	
l10614:	
	line	315
	
l22542:	
;OverLoad_B1.c: 314: {
;OverLoad_B1.c: 315: Load->AH[i]=0;
	movf	(setLoad_AH_AL_Restore@i),w
	addwf	wreg,w
	addlw	08h
	addwf	(_Load),w
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	0+(??_setLoad_AH_AL_Restore+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	316
;OverLoad_B1.c: 316: Load->AL[i]=0xffff;
	movf	(setLoad_AH_AL_Restore@i),w
	addwf	wreg,w
	addlw	01Ah
	addwf	(_Load),w
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	0+(??_setLoad_AH_AL_Restore+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0FFFFh)
	movwi	[0]fsr1
	movlw	high(0FFFFh)
	movwi	[1]fsr1
	line	313
	
l22544:	
	movlw	(01h)
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	(??_setLoad_AH_AL_Restore+0)+0,w
	addwf	(setLoad_AH_AL_Restore@i),f
	
l22546:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u5741
	goto	u5740
u5741:
	goto	l22542
u5740:
	goto	l10616
	
l10615:	
	line	318
	
l10616:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_AH_AL_Restore
	__end_of_setLoad_AH_AL_Restore:
;; =============== function _setLoad_AH_AL_Restore ends ============

	signat	_setLoad_AH_AL_Restore,88
	global	_Flash_Memory_Read
psect	text4191,local,class=CODE,delta=2
global __ptext4191
__ptext4191:

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 507 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[BANK0 ] unsigned char 
;;  ret             1    3[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Flash_Memory_Initialization
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text4191
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	507
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
	opt	stack 9
; Regs used in _Flash_Memory_Read: [wreg]
;Flash_Memory_Read@address stored from wreg
	movlb 0	; select bank0
	movwf	(Flash_Memory_Read@address)
	line	508
	
l22526:	
;MCU_16f1518_B1.c: 508: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	509
	
l22528:	
;MCU_16f1518_B1.c: 509: PMADRH=0x30;
	movlw	(030h)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	510
;MCU_16f1518_B1.c: 510: PMADRL=address;
	movlb 0	; select bank0
	movf	(Flash_Memory_Read@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	511
	
l22530:	
;MCU_16f1518_B1.c: 511: CFGS=0;
	bcf	(3246/8)^0180h,(3246)&7
	line	512
	
l22532:	
;MCU_16f1518_B1.c: 512: RD=1;
	bsf	(3240/8)^0180h,(3240)&7
	line	513
;MCU_16f1518_B1.c: 513: i=PMDATH;
	movf	(404)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	line	514
;MCU_16f1518_B1.c: 514: ret=PMDATL;
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	515
;MCU_16f1518_B1.c: 515: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l9406
	
l22534:	
	line	516
	
l9406:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
;; =============== function _Flash_Memory_Read ends ============

	signat	_Flash_Memory_Read,4217
	global	_getAD
psect	text4192,local,class=CODE,delta=2
global __ptext4192
__ptext4192:

;; *************** function _getAD *****************
;; Defined at:
;;		line 310 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
;; Parameters:    Size  Location     Type
;;  adcon0          1    wreg     unsigned char 
;;  adcon1          1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adcon0          1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getLoad_AD
;;		_getTemp_AD
;;		_getPowerFault_AD
;; This function uses a non-reentrant model
;;
psect	text4192
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	310
	global	__size_of_getAD
	__size_of_getAD	equ	__end_of_getAD-_getAD
	
_getAD:	
	opt	stack 10
; Regs used in _getAD: [wreg+status,2+status,0+btemp+1]
;getAD@adcon0 stored from wreg
	movlb 0	; select bank0
	movwf	(getAD@adcon0)
	line	311
	
l22518:	
;MCU_16f1518_B1.c: 311: ADCON0=adcon0;
	movf	(getAD@adcon0),w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	312
;MCU_16f1518_B1.c: 312: ADCON1=adcon1;
	movlb 0	; select bank0
	movf	(getAD@adcon1),w
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	313
	
l22520:	
;MCU_16f1518_B1.c: 313: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7
	line	314
;MCU_16f1518_B1.c: 314: while(GO_nDONE);
	goto	l9384
	
l9385:	
	
l9384:	
	btfsc	(1257/8)^080h,(1257)&7
	goto	u5721
	goto	u5720
u5721:
	goto	l9384
u5720:
	goto	l22522
	
l9386:	
	line	315
	
l22522:	
;MCU_16f1518_B1.c: 315: return ((ADRESH*256)+ADRESL);
	movf	(155)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_getAD+0)+0
	clrf	(??_getAD+0)+0+1
	movlb 1	; select bank1
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_getAD+2)+0
	clrf	(??_getAD+2)+0+1
	movf	(??_getAD+2)+0,w
	movwf	(??_getAD+2)+1
	clrf	(??_getAD+2)+0
	movf	0+(??_getAD+0)+0,w
	addwf	0+(??_getAD+2)+0,w
	movwf	(?_getAD)
	movf	1+(??_getAD+0)+0,w
	addwfc	1+(??_getAD+2)+0,w
	movwf	1+(?_getAD)
	goto	l9387
	
l22524:	
	line	316
	
l9387:	
	return
	opt stack 0
GLOBAL	__end_of_getAD
	__end_of_getAD:
;; =============== function _getAD ends ============

	signat	_getAD,8314
	global	_setINT_GO
psect	text4193,local,class=CODE,delta=2
global __ptext4193
__ptext4193:

;; *************** function _setINT_GO *****************
;; Defined at:
;;		line 236 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_Main
;;		_setRF_Enable
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text4193
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	236
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
	opt	stack 8
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	237
	
l24554:	
;MCU_16f1518_B1.c: 237: INTF=0;
	bcf	(89/8),(89)&7
	line	238
	
l24556:	
;MCU_16f1518_B1.c: 238: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u8911
	goto	u8910
	
u8911:
	bsf	(92/8),(92)&7
	goto	u8924
u8910:
	bcf	(92/8),(92)&7
u8924:
	line	239
	
l9368:	
	return
	opt stack 0
GLOBAL	__end_of_setINT_GO
	__end_of_setINT_GO:
;; =============== function _setINT_GO ends ============

	signat	_setINT_GO,4216
	global	_IOC_Set
psect	text4194,local,class=CODE,delta=2
global __ptext4194
__ptext4194:

;; *************** function _IOC_Set *****************
;; Defined at:
;;		line 247 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text4194
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	247
	global	__size_of_IOC_Set
	__size_of_IOC_Set	equ	__end_of_IOC_Set-_IOC_Set
	
_IOC_Set:	
	opt	stack 10
; Regs used in _IOC_Set: [wreg+status,2]
	line	248
	
l24540:	
;MCU_16f1518_B1.c: 248: WPUB2=0;
	movlb 4	; select bank4
	bcf	(4202/8)^0200h,(4202)&7
	line	250
	
l24542:	
;MCU_16f1518_B1.c: 250: IOCBP=0b00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	251
;MCU_16f1518_B1.c: 251: IOCBN=0b00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	259
	
l24544:	
;MCU_16f1518_B1.c: 259: IOCBF=0b00000000;
	clrf	(918)^0380h	;volatile
	line	261
	
l24546:	
;MCU_16f1518_B1.c: 261: IOCIE=1;
	bsf	(91/8),(91)&7
	line	262
	
l24548:	
;MCU_16f1518_B1.c: 262: IOCIF=0;
	bcf	(88/8),(88)&7
	line	263
	
l24550:	
;MCU_16f1518_B1.c: 263: PEIE=1;
	bsf	(94/8),(94)&7
	line	264
	
l24552:	
;MCU_16f1518_B1.c: 264: GIE=1;
	bsf	(95/8),(95)&7
	line	265
	
l9371:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_Set
	__end_of_IOC_Set:
;; =============== function _IOC_Set ends ============

	signat	_IOC_Set,88
	global	_INT_Set
psect	text4195,local,class=CODE,delta=2
global __ptext4195
__ptext4195:

;; *************** function _INT_Set *****************
;; Defined at:
;;		line 218 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text4195
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	218
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
	opt	stack 10
; Regs used in _INT_Set: []
	line	219
	
l24538:	
;MCU_16f1518_B1.c: 219: WPUB0=0;
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7
	line	220
;MCU_16f1518_B1.c: 220: INTE=1;
	bsf	(92/8),(92)&7
	line	221
;MCU_16f1518_B1.c: 221: PEIE=1;
	bsf	(94/8),(94)&7
	line	222
;MCU_16f1518_B1.c: 222: GIE=1;
	bsf	(95/8),(95)&7
	line	223
	
l9361:	
	return
	opt stack 0
GLOBAL	__end_of_INT_Set
	__end_of_INT_Set:
;; =============== function _INT_Set ends ============

	signat	_INT_Set,88
	global	_ADC_Set
psect	text4196,local,class=CODE,delta=2
global __ptext4196
__ptext4196:

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 304 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text4196
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	304
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
	opt	stack 10
; Regs used in _ADC_Set: [wreg]
	line	305
	
l24536:	
;MCU_16f1518_B1.c: 305: ADCON1=0xf2;
	movlw	(0F2h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	306
;MCU_16f1518_B1.c: 306: FVRCON=0xc0;
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	307
	
l9381:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Set
	__end_of_ADC_Set:
;; =============== function _ADC_Set ends ============

	signat	_ADC_Set,88
	global	_TMR0_Set
psect	text4197,local,class=CODE,delta=2
global __ptext4197
__ptext4197:

;; *************** function _TMR0_Set *****************
;; Defined at:
;;		line 74 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text4197
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	74
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
	opt	stack 10
; Regs used in _TMR0_Set: [wreg+status,2]
	line	75
	
l22354:	
;MCU_16f1518_B1.c: 75: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_Timer0)^080h
	line	76
	
l22356:	
;MCU_16f1518_B1.c: 76: OPTION_REG=0x00;
	clrf	(149)^080h	;volatile
	line	77
	
l22358:	
;MCU_16f1518_B1.c: 77: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	78
	
l22360:	
;MCU_16f1518_B1.c: 78: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	79
	
l22362:	
;MCU_16f1518_B1.c: 79: GIE=1;
	bsf	(95/8),(95)&7
	line	80
	
l9321:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_Set
	__end_of_TMR0_Set:
;; =============== function _TMR0_Set ends ============

	signat	_TMR0_Set,88
	global	_IO_Set
psect	text4198,local,class=CODE,delta=2
global __ptext4198
__ptext4198:

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 38 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text4198
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	38
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l24518:	
;MCU_16f1518_B1.c: 39: TRISA=0b01110111;;
	movlw	(077h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	40
;MCU_16f1518_B1.c: 40: TRISB=0b00000111;;
	movlw	(07h)
	movwf	(141)^080h	;volatile
	line	41
;MCU_16f1518_B1.c: 41: TRISC=0b00001100;;
	movlw	(0Ch)
	movwf	(142)^080h	;volatile
	line	42
	
l24520:	
;MCU_16f1518_B1.c: 42: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	43
	
l24522:	
;MCU_16f1518_B1.c: 43: LATB=0b00000010;;
	movlw	(02h)
	movwf	(269)^0100h	;volatile
	line	44
;MCU_16f1518_B1.c: 44: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	45
	
l24524:	
;MCU_16f1518_B1.c: 45: ANSELA=0b00100010;;
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l24526:	
;MCU_16f1518_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l24528:	
;MCU_16f1518_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l24530:	
;MCU_16f1518_B1.c: 48: PORTA=0b01110111;;
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
	
l24532:	
;MCU_16f1518_B1.c: 49: PORTB=0b00000111;;
	movlw	(07h)
	movwf	(13)	;volatile
	line	50
	
l24534:	
;MCU_16f1518_B1.c: 50: PORTC=0b00001100;;
	movlw	(0Ch)
	movwf	(14)	;volatile
	line	51
	
l9315:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
;; =============== function _IO_Set ends ============

	signat	_IO_Set,88
	global	_setLoad_Enable
psect	text4199,local,class=CODE,delta=2
global __ptext4199
__ptext4199:

;; *************** function _setLoad_Enable *****************
;; Defined at:
;;		line 258 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text4199
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	258
	global	__size_of_setLoad_Enable
	__size_of_setLoad_Enable	equ	__end_of_setLoad_Enable-_setLoad_Enable
	
_setLoad_Enable:	
	opt	stack 10
; Regs used in _setLoad_Enable: [wregfsr1]
;setLoad_Enable@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Enable@command)
	line	259
	
l24516:	
;OverLoad_B1.c: 259: Load->Enable=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	260
;OverLoad_B1.c: 260: Load->GO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	261
	
l10590:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Enable
	__end_of_setLoad_Enable:
;; =============== function _setLoad_Enable ends ============

	signat	_setLoad_Enable,4216
	global	_setTemp_Enable
psect	text4200,local,class=CODE,delta=2
global __ptext4200
__ptext4200:

;; *************** function _setTemp_Enable *****************
;; Defined at:
;;		line 23 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text4200
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	23
	global	__size_of_setTemp_Enable
	__size_of_setTemp_Enable	equ	__end_of_setTemp_Enable-_setTemp_Enable
	
_setTemp_Enable:	
	opt	stack 10
; Regs used in _setTemp_Enable: [wregfsr1]
;setTemp_Enable@command stored from wreg
	movlb 0	; select bank0
	movwf	(setTemp_Enable@command)
	line	24
	
l24514:	
;OverTemperature_B1.c: 24: Temp->Enable=command;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setTemp_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	25
	
l11740:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Enable
	__end_of_setTemp_Enable:
;; =============== function _setTemp_Enable ends ============

	signat	_setTemp_Enable,4216
	global	_MainT_Initialization
psect	text4201,local,class=CODE,delta=2
global __ptext4201
__ptext4201:

;; *************** function _MainT_Initialization *****************
;; Defined at:
;;		line 93 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4201
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	93
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
	opt	stack 11
; Regs used in _MainT_Initialization: [wreg]
	line	95
	
l22330:	
;main.c: 95: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_Product)
	line	98
;main.c: 98: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_TMain)
	line	101
	
l8174:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initialization
	__end_of_MainT_Initialization:
;; =============== function _MainT_Initialization ends ============

	signat	_MainT_Initialization,88
	global	_LedPointSelect
psect	text4202,local,class=CODE,delta=2
global __ptext4202
__ptext4202:

;; *************** function _LedPointSelect *****************
;; Defined at:
;;		line 8 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setLED_Initialization
;;		_setLED
;;		_setLED_Main
;; This function uses a non-reentrant model
;;
psect	text4202
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	8
	global	__size_of_LedPointSelect
	__size_of_LedPointSelect	equ	__end_of_LedPointSelect-_LedPointSelect
	
_LedPointSelect:	
	opt	stack 5
; Regs used in _LedPointSelect: [wreg]
;LedPointSelect@led stored from wreg
	line	10
	movlb 0	; select bank0
	movwf	(LedPointSelect@led)
	
l22318:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h&0ffh
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l22322
u5370:
	line	12
	
l22320:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	13
;LED_B1.c: 13: }
	goto	l6958
	line	16
	
l6953:	
	
l22322:	
;LED_B1.c: 16: else if(led == 2)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	02h&0ffh
	skipz
	goto	u5381
	goto	u5380
u5381:
	goto	l22326
u5380:
	line	18
	
l22324:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	19
;LED_B1.c: 19: }
	goto	l6958
	line	28
	
l6955:	
	
l22326:	
;LED_B1.c: 28: else if(led == 99)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	063h&0ffh
	skipz
	goto	u5391
	goto	u5390
u5391:
	goto	l6958
u5390:
	line	30
	
l22328:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	goto	l6958
	line	31
	
l6957:	
	goto	l6958
	line	33
	
l6956:	
	goto	l6958
	
l6954:	
	
l6958:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
;; =============== function _LedPointSelect ends ============

	signat	_LedPointSelect,4216
	global	_setLoad_StatusOn
psect	text4203,local,class=CODE,delta=2
global __ptext4203
__ptext4203:

;; *************** function _setLoad_StatusOn *****************
;; Defined at:
;;		line 267 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text4203
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	267
	global	__size_of_setLoad_StatusOn
	__size_of_setLoad_StatusOn	equ	__end_of_setLoad_StatusOn-_setLoad_StatusOn
	
_setLoad_StatusOn:	
	opt	stack 6
; Regs used in _setLoad_StatusOn: [wreg+fsr1l-status,0]
;setLoad_StatusOn@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOn@lights)
	line	268
	
l24500:	
;OverLoad_B1.c: 268: Load->GO=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,1
	line	269
;OverLoad_B1.c: 269: Load->StatusOn=command;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOn@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	271
	
l24502:	
;OverLoad_B1.c: 271: if(lights == 1)
	movf	(setLoad_StatusOn@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u8881
	goto	u8880
u8881:
	goto	l24506
u8880:
	line	273
	
l24504:	
;OverLoad_B1.c: 272: {
;OverLoad_B1.c: 273: Load->Lights1Status=1;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	goto	l24506
	line	274
	
l10596:	
	line	275
	
l24506:	
;OverLoad_B1.c: 274: }
;OverLoad_B1.c: 275: if(lights == 2)
	movf	(setLoad_StatusOn@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u8891
	goto	u8890
u8891:
	goto	l24510
u8890:
	line	277
	
l24508:	
;OverLoad_B1.c: 276: {
;OverLoad_B1.c: 277: Load->Lights2Status=1;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	goto	l24510
	line	278
	
l10597:	
	line	279
	
l24510:	
;OverLoad_B1.c: 278: }
;OverLoad_B1.c: 279: if(lights == 3)
	movf	(setLoad_StatusOn@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u8901
	goto	u8900
u8901:
	goto	l10599
u8900:
	line	281
	
l24512:	
;OverLoad_B1.c: 280: {
;OverLoad_B1.c: 281: Load->Lights3Status=1;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	goto	l10599
	line	282
	
l10598:	
	line	283
	
l10599:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOn
	__end_of_setLoad_StatusOn:
;; =============== function _setLoad_StatusOn ends ============

	signat	_setLoad_StatusOn,8312
	global	_setLoad_Count
psect	text4204,local,class=CODE,delta=2
global __ptext4204
__ptext4204:

;; *************** function _setLoad_Count *****************
;; Defined at:
;;		line 252 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text4204
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	252
	global	__size_of_setLoad_Count
	__size_of_setLoad_Count	equ	__end_of_setLoad_Count-_setLoad_Count
	
_setLoad_Count:	
	opt	stack 6
; Regs used in _setLoad_Count: [wregfsr1]
;setLoad_Count@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Count@command)
	line	253
	
l22294:	
;OverLoad_B1.c: 253: Load->Count=command;
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	254
;OverLoad_B1.c: 254: Load->SafeCount=command;
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	255
	
l10587:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Count
	__end_of_setLoad_Count:
;; =============== function _setLoad_Count ends ============

	signat	_setLoad_Count,4216
	global	_setLoad_StatusOff
psect	text4205,local,class=CODE,delta=2
global __ptext4205
__ptext4205:

;; *************** function _setLoad_StatusOff *****************
;; Defined at:
;;		line 285 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_Adj
;; This function uses a non-reentrant model
;;
psect	text4205
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	285
	global	__size_of_setLoad_StatusOff
	__size_of_setLoad_StatusOff	equ	__end_of_setLoad_StatusOff-_setLoad_StatusOff
	
_setLoad_StatusOff:	
	opt	stack 8
; Regs used in _setLoad_StatusOff: [wreg+fsr1l-status,0]
;setLoad_StatusOff@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOff@lights)
	line	286
	
l24484:	
;OverLoad_B1.c: 286: Load->StatusOff=command;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOff@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	287
	
l24486:	
;OverLoad_B1.c: 287: Load->SafeCount-=2;
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(02h)
	subwf	indf1,f
	line	288
	
l24488:	
;OverLoad_B1.c: 288: if(lights == 1)
	movf	(setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u8851
	goto	u8850
u8851:
	goto	l24492
u8850:
	line	290
	
l24490:	
;OverLoad_B1.c: 289: {
;OverLoad_B1.c: 290: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l24492
	line	291
	
l10602:	
	line	292
	
l24492:	
;OverLoad_B1.c: 291: }
;OverLoad_B1.c: 292: if(lights == 2)
	movf	(setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u8861
	goto	u8860
u8861:
	goto	l24496
u8860:
	line	294
	
l24494:	
;OverLoad_B1.c: 293: {
;OverLoad_B1.c: 294: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l24496
	line	295
	
l10603:	
	line	296
	
l24496:	
;OverLoad_B1.c: 295: }
;OverLoad_B1.c: 296: if(lights == 3)
	movf	(setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u8871
	goto	u8870
u8871:
	goto	l10605
u8870:
	line	298
	
l24498:	
;OverLoad_B1.c: 297: {
;OverLoad_B1.c: 298: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l10605
	line	299
	
l10604:	
	line	300
	
l10605:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOff
	__end_of_setLoad_StatusOff:
;; =============== function _setLoad_StatusOff ends ============

	signat	_setLoad_StatusOff,8312
	global	_setLoad_GO
psect	text4206,local,class=CODE,delta=2
global __ptext4206
__ptext4206:

;; *************** function _setLoad_GO *****************
;; Defined at:
;;		line 263 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DimmerLights_Close
;; This function uses a non-reentrant model
;;
psect	text4206
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	263
	global	__size_of_setLoad_GO
	__size_of_setLoad_GO	equ	__end_of_setLoad_GO-_setLoad_GO
	
_setLoad_GO:	
	opt	stack 9
; Regs used in _setLoad_GO: [wregfsr1]
;setLoad_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_GO@command)
	line	264
	
l24482:	
;OverLoad_B1.c: 264: Load->GO=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	265
	
l10593:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_GO
	__end_of_setLoad_GO:
;; =============== function _setLoad_GO ends ============

	signat	_setLoad_GO,4216
	global	_getDimmerLights_StatusFlag
psect	text4207,local,class=CODE,delta=2
global __ptext4207
__ptext4207:

;; *************** function _getDimmerLights_StatusFlag *****************
;; Defined at:
;;		line 200 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Status          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DimmerLights_Close
;;		_DimmerLights_Exceptions
;; This function uses a non-reentrant model
;;
psect	text4207
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	200
	global	__size_of_getDimmerLights_StatusFlag
	__size_of_getDimmerLights_StatusFlag	equ	__end_of_getDimmerLights_StatusFlag-_getDimmerLights_StatusFlag
	
_getDimmerLights_StatusFlag:	
	opt	stack 9
; Regs used in _getDimmerLights_StatusFlag: [wregfsr1]
	line	201
	
l22262:	
;Dimmer_B1.c: 201: char Status=0;
	movlb 0	; select bank0
	clrf	(getDimmerLights_StatusFlag@Status)
	line	212
	
l22264:	
;Dimmer_B1.c: 212: Status=(DimmerLights11->StatusFlag)?1:0;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	movwf	(getDimmerLights_StatusFlag@Status)
	line	215
	
l22266:	
;Dimmer_B1.c: 215: return Status;
	movf	(getDimmerLights_StatusFlag@Status),w
	goto	l5782
	
l22268:	
	line	216
	
l5782:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_StatusFlag
	__end_of_getDimmerLights_StatusFlag:
;; =============== function _getDimmerLights_StatusFlag ends ============

	signat	_getDimmerLights_StatusFlag,89
	global	_Dimmer_Initialization
psect	text4208,local,class=CODE,delta=2
global __ptext4208
__ptext4208:

;; *************** function _Dimmer_Initialization *****************
;; Defined at:
;;		line 510 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DimmerLights_Initialization
;; This function uses a non-reentrant model
;;
psect	text4208
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	510
	global	__size_of_Dimmer_Initialization
	__size_of_Dimmer_Initialization	equ	__end_of_Dimmer_Initialization-_Dimmer_Initialization
	
_Dimmer_Initialization:	
	opt	stack 10
; Regs used in _Dimmer_Initialization: [wreg]
	line	511
	
l22260:	
;Dimmer_B1.c: 511: Dimmer=&Dimmer1;
	movlw	(_Dimmer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Dimmer_Initialization+0)+0
	movf	(??_Dimmer_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Dimmer)^080h
	line	512
	
l5848:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_Initialization
	__end_of_Dimmer_Initialization:
;; =============== function _Dimmer_Initialization ends ============

	signat	_Dimmer_Initialization,88
	global	_DimmerLightsPointSelect
psect	text4209,local,class=CODE,delta=2
global __ptext4209
__ptext4209:

;; *************** function _DimmerLightsPointSelect *****************
;; Defined at:
;;		line 8 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights_Initialization
;;		_setDimmerLights_Main
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_TriggerERROR
;;		_setDimmerLights
;;		_setDimmerLights_Adj
;;		_setDimmerLights_AdjRF
;;		_setDimmerLights_Switch
;;		_setDimmerLights_AdjGo
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_TriggerAdj
;;		_setDimmerLights_Clear
;;		_setDimmerLights_GO
;;		_setDimmerLights_MaxmumValue
;; This function uses a non-reentrant model
;;
psect	text4209
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	8
	global	__size_of_DimmerLightsPointSelect
	__size_of_DimmerLightsPointSelect	equ	__end_of_DimmerLightsPointSelect-_DimmerLightsPointSelect
	
_DimmerLightsPointSelect:	
	opt	stack 8
; Regs used in _DimmerLightsPointSelect: [wreg]
;DimmerLightsPointSelect@lights stored from wreg
	line	10
	movlb 0	; select bank0
	movwf	(DimmerLightsPointSelect@lights)
	
l22256:	
;Dimmer_B1.c: 10: if(lights == 1)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u5301
	goto	u5300
u5301:
	goto	l5752
u5300:
	line	12
	
l22258:	
;Dimmer_B1.c: 11: {
;Dimmer_B1.c: 12: DimmerLights=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	goto	l5752
	line	13
	
l5751:	
	line	29
	
l5752:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLightsPointSelect
	__end_of_DimmerLightsPointSelect:
;; =============== function _DimmerLightsPointSelect ends ============

	signat	_DimmerLightsPointSelect,4216
	global	_DelayTimejudge
psect	text4210,local,class=CODE,delta=2
global __ptext4210
__ptext4210:

;; *************** function _DelayTimejudge *****************
;; Defined at:
;;		line 120 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    2[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDelayOff_GO
;; This function uses a non-reentrant model
;;
psect	text4210
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	120
	global	__size_of_DelayTimejudge
	__size_of_DelayTimejudge	equ	__end_of_DelayTimejudge-_DelayTimejudge
	
_DelayTimejudge:	
	opt	stack 5
; Regs used in _DelayTimejudge: [wreg]
;DelayTimejudge@value stored from wreg
	movlb 0	; select bank0
	movwf	(DelayTimejudge@value)
	line	121
	
l22230:	
;DelayOff_B1.c: 121: char i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	122
;DelayOff_B1.c: 122: if(value == 0x05)
	movf	(DelayTimejudge@value),w
	xorlw	05h&0ffh
	skipz
	goto	u5241
	goto	u5240
u5241:
	goto	l22234
u5240:
	line	124
	
l22232:	
;DelayOff_B1.c: 123: {
;DelayOff_B1.c: 124: i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	125
;DelayOff_B1.c: 125: }
	goto	l4604
	line	126
	
l4603:	
	
l22234:	
;DelayOff_B1.c: 126: else if(value == 0x10)
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l22238
u5250:
	line	128
	
l22236:	
;DelayOff_B1.c: 127: {
;DelayOff_B1.c: 128: i=10;
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	129
;DelayOff_B1.c: 129: }
	goto	l4604
	line	130
	
l4605:	
	
l22238:	
;DelayOff_B1.c: 130: else if(value == 0x15)
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u5261
	goto	u5260
u5261:
	goto	l22242
u5260:
	line	132
	
l22240:	
;DelayOff_B1.c: 131: {
;DelayOff_B1.c: 132: i=15;
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	133
;DelayOff_B1.c: 133: }
	goto	l4604
	line	134
	
l4607:	
	
l22242:	
;DelayOff_B1.c: 134: else if(value == 0x20)
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u5271
	goto	u5270
u5271:
	goto	l22246
u5270:
	line	136
	
l22244:	
;DelayOff_B1.c: 135: {
;DelayOff_B1.c: 136: i=20;
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	137
;DelayOff_B1.c: 137: }
	goto	l4604
	line	138
	
l4609:	
	
l22246:	
;DelayOff_B1.c: 138: else if(value == 0x25)
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u5281
	goto	u5280
u5281:
	goto	l22250
u5280:
	line	140
	
l22248:	
;DelayOff_B1.c: 139: {
;DelayOff_B1.c: 140: i=25;
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	141
;DelayOff_B1.c: 141: }
	goto	l4604
	line	142
	
l4611:	
	
l22250:	
;DelayOff_B1.c: 142: else if(value == 0x30)
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u5291
	goto	u5290
u5291:
	goto	l4604
u5290:
	line	144
	
l22252:	
;DelayOff_B1.c: 143: {
;DelayOff_B1.c: 144: i=30;
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l4604
	line	145
	
l4613:	
	goto	l4604
	line	146
	
l4612:	
	goto	l4604
	
l4610:	
	goto	l4604
	
l4608:	
	goto	l4604
	
l4606:	
	
l4604:	
;DelayOff_B1.c: 145: }
;DelayOff_B1.c: 146: return i;
	movf	(DelayTimejudge@i),w
	goto	l4614
	
l22254:	
	line	147
	
l4614:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
;; =============== function _DelayTimejudge ends ============

	signat	_DelayTimejudge,4217
	global	_setRF_DimmerLights
psect	text4211,local,class=CODE,delta=2
global __ptext4211
__ptext4211:

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 438 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  on              1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    4[BANK0 ] unsigned char 
;;  status          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Adj
;;		_setRFSW_Control
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text4211
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	438
	global	__size_of_setRF_DimmerLights
	__size_of_setRF_DimmerLights	equ	__end_of_setRF_DimmerLights-_setRF_DimmerLights
	
_setRF_DimmerLights:	
	opt	stack 9
; Regs used in _setRF_DimmerLights: [wreg+fsr1l-status,0]
;setRF_DimmerLights@lights stored from wreg
	line	440
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@lights)
	
l22214:	
;RF_Control_B1.c: 439: char status;
;RF_Control_B1.c: 440: status=1;
	clrf	(setRF_DimmerLights@status)
	bsf	status,0
	rlf	(setRF_DimmerLights@status),f
	line	441
	
l22216:	
;RF_Control_B1.c: 441: status<<=(lights-1);
	movf	(setRF_DimmerLights@lights),w
	addlw	-1
	incf	wreg,f
	
	goto	u5220
u5225:
	clrc
	rlf	(setRF_DimmerLights@status),f
u5220:
	addlw	-1
	skipz
	goto	u5225
	line	442
	
l22218:	
;RF_Control_B1.c: 442: Product->Data[11]=lights;
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	443
	
l22220:	
;RF_Control_B1.c: 443: Product->Data[9]=Product->Data[20+lights];
	movf	(setRF_DimmerLights@lights),w
	addlw	014h
	addwf	(_Product),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	0+(??_setRF_DimmerLights+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerLights+1)+0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+1)+0,w
	movwf	indf1
	line	444
	
l22222:	
;RF_Control_B1.c: 444: Product->Data[17]=Product->Data[26+lights];
	movf	(setRF_DimmerLights@lights),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	0+(??_setRF_DimmerLights+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerLights+1)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+1)+0,w
	movwf	indf1
	line	445
	
l22224:	
;RF_Control_B1.c: 445: if(on)
	movf	(setRF_DimmerLights@on),w
	skipz
	goto	u5230
	goto	l22228
u5230:
	line	447
	
l22226:	
;RF_Control_B1.c: 446: {
;RF_Control_B1.c: 447: Product->Data[15]=(Product->Data[15]|status);
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	iorwf	(setRF_DimmerLights@status),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	448
;RF_Control_B1.c: 448: }
	goto	l15292
	line	449
	
l15290:	
	line	451
	
l22228:	
;RF_Control_B1.c: 449: else
;RF_Control_B1.c: 450: {
;RF_Control_B1.c: 451: Product->Data[15]=(Product->Data[15]&(~status));
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	comf	(setRF_DimmerLights@status),w
	andwf	indf1,w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l15292
	line	452
	
l15291:	
	line	453
	
l15292:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
;; =============== function _setRF_DimmerLights ends ============

	signat	_setRF_DimmerLights,8312
	global	_DelayOffPointSelect
psect	text4212,local,class=CODE,delta=2
global __ptext4212
__ptext4212:

;; *************** function _DelayOffPointSelect *****************
;; Defined at:
;;		line 9 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DlyOff_Initialization
;;		_DlyOff_Main
;;		_setDelayOff_GO
;; This function uses a non-reentrant model
;;
psect	text4212
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	9
	global	__size_of_DelayOffPointSelect
	__size_of_DelayOffPointSelect	equ	__end_of_DelayOffPointSelect-_DelayOffPointSelect
	
_DelayOffPointSelect:	
	opt	stack 9
; Regs used in _DelayOffPointSelect: [wreg]
;DelayOffPointSelect@sw stored from wreg
	line	11
	movlb 0	; select bank0
	movwf	(DelayOffPointSelect@sw)
	
l22210:	
;DelayOff_B1.c: 11: if(sw == 1)
	movf	(DelayOffPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5211
	goto	u5210
u5211:
	goto	l4574
u5210:
	line	13
	
l22212:	
;DelayOff_B1.c: 12: {
;DelayOff_B1.c: 13: DelayOff=&DlySw1;
	movlw	(_DlySw1)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	goto	l4574
	line	14
	
l4573:	
	line	28
	
l4574:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOffPointSelect
	__end_of_DelayOffPointSelect:
;; =============== function _DelayOffPointSelect ends ============

	signat	_DelayOffPointSelect,4216
	global	_DelayTime_1us
psect	text4213,local,class=CODE,delta=2
global __ptext4213
__ptext4213:

;; *************** function _DelayTime_1us *****************
;; Defined at:
;;		line 284 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4213
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	284
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l24470:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l2353
	line	287
	
l2354:	
	
l24472:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l24474:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u8821
	goto	u8820
u8821:
	goto	l24478
u8820:
	goto	l24480
	
l24476:	
	goto	l24480
	
l2355:	
	
l24478:	
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
	goto	u8831
	goto	u8830
u8831:
	goto	l24478
u8830:
	goto	l24480
	
l2356:	
	line	286
	
l24480:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l2353:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u8845
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u8845:
	skipc
	goto	u8841
	goto	u8840
u8841:
	goto	l24472
u8840:
	goto	l2358
	
l2357:	
	line	288
	
l2358:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTime_1us
	__end_of_DelayTime_1us:
;; =============== function _DelayTime_1us ends ============

	signat	_DelayTime_1us,4216
	global	_CC2500_ReadByte
psect	text4214,local,class=CODE,delta=2
global __ptext4214
__ptext4214:

;; *************** function _CC2500_ReadByte *****************
;; Defined at:
;;		line 211 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4214
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	211
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
	opt	stack 8
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	213
	
l22170:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l22172:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5141
	goto	u5140
u5141:
	goto	l2322
u5140:
	goto	l2326
	
l22174:	
	goto	l2326
	line	214
	
l2322:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RC1=1;
	bsf	(113/8),(113)&7
	line	216
	
l22176:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	217
	
l22178:	
;CC2500_B1.c: 217: if(RC2 == 1)
	movlb 0	; select bank0
	btfss	(114/8),(114)&7
	goto	u5151
	goto	u5150
u5151:
	goto	l22182
u5150:
	line	218
	
l22180:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	movlb 1	; select bank1
	bsf	(_SPI0Buffer)^080h+(0/8),(0)&7
	goto	l22184
	line	219
	
l2324:	
	line	220
	
l22182:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	movlb 1	; select bank1
	andwf	(_SPI0Buffer)^080h,f
	goto	l22184
	
l2325:	
	line	221
	
l22184:	
;CC2500_B1.c: 221: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l22186:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5161
	goto	u5160
u5161:
	goto	l2322
u5160:
	goto	l2326
	
l2323:	
	line	223
	
l2326:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadByte
	__end_of_CC2500_ReadByte:
;; =============== function _CC2500_ReadByte ends ============

	signat	_CC2500_ReadByte,88
	global	_CC2500_WriteByte
psect	text4215,local,class=CODE,delta=2
global __ptext4215
__ptext4215:

;; *************** function _CC2500_WriteByte *****************
;; Defined at:
;;		line 194 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text4215
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	194
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
	opt	stack 7
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l22154:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l22156:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u5111
	goto	u5110
u5111:
	goto	l2315
u5110:
	goto	l2319
	
l22158:	
	goto	l2319
	line	197
	
l2315:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	movlb 1	; select bank1
	btfss	(_SPI0Buffer)^080h,(7)&7
	goto	u5121
	goto	u5120
u5121:
	goto	l2317
u5120:
	line	199
	
l22160:	
;CC2500_B1.c: 199: RC0=1;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7
	goto	l2318
	line	200
	
l2317:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RC0=0;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7
	
l2318:	
	line	202
;CC2500_B1.c: 202: RC1=1;
	bsf	(113/8),(113)&7
	line	203
	
l22162:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	204
	
l22164:	
;CC2500_B1.c: 204: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	line	196
	
l22166:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l22168:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u5131
	goto	u5130
u5131:
	goto	l2315
u5130:
	goto	l2319
	
l2316:	
	line	206
	
l2319:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteByte
	__end_of_CC2500_WriteByte:
;; =============== function _CC2500_WriteByte ends ============

	signat	_CC2500_WriteByte,88
	global	_Buzzer_Main
psect	text4216,local,class=CODE,delta=2
global __ptext4216
__ptext4216:

;; *************** function _Buzzer_Main *****************
;; Defined at:
;;		line 54 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4216
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	54
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
	opt	stack 11
; Regs used in _Buzzer_Main: [wreg+fsr1l-status,0]
	line	55
	
l22124:	
;Buzzer_B1.c: 55: Buz->Switch=(RB3)?1:0;
	movlw	0
	movlb 0	; select bank0
	btfsc	(107/8),(107)&7
	movlw	1
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	(??_Buzzer_Main+0)+0,f
	rlf	(??_Buzzer_Main+0)+0,f
	movf	indf1,w
	xorwf	(??_Buzzer_Main+0)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_Buzzer_Main+0)+0,w
	movwf	indf1
	line	57
	
l22126:	
;Buzzer_B1.c: 57: if(Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u5051
	goto	u5050
u5051:
	goto	l1124
u5050:
	line	60
	
l22128:	
;Buzzer_B1.c: 58: {
;Buzzer_B1.c: 60: if(Buz->Time >= Buz->TimeValue)
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Buzzer_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Buzzer_Main+0)+0+1
	movf	(_Buz),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Buzzer_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_Buzzer_Main+2)+0+1
	movf	1+(??_Buzzer_Main+0)+0,w
	subwf	1+(??_Buzzer_Main+2)+0,w
	skipz
	goto	u5065
	movf	0+(??_Buzzer_Main+0)+0,w
	subwf	0+(??_Buzzer_Main+2)+0,w
u5065:
	skipc
	goto	u5061
	goto	u5060
u5061:
	goto	l1124
u5060:
	line	62
	
l22130:	
;Buzzer_B1.c: 61: {
;Buzzer_B1.c: 62: Buz->Time=0;
	movf	(_Buz),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	63
;Buzzer_B1.c: 63: if(!Buz->Switch)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u5071
	goto	u5070
u5071:
	goto	l22148
u5070:
	line	65
	
l22132:	
;Buzzer_B1.c: 64: {
;Buzzer_B1.c: 65: if(Buz->Count == 0)
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l22144
u5080:
	line	67
	
l22134:	
;Buzzer_B1.c: 66: {
;Buzzer_B1.c: 67: if(Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u5091
	goto	u5090
u5091:
	goto	l22138
u5090:
	line	69
	
l22136:	
;Buzzer_B1.c: 68: {
;Buzzer_B1.c: 69: Buz->BufferStatus1=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	70
;Buzzer_B1.c: 70: Buz->Count=Buz->CountBuffer1;
	movf	(_Buz),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Buzzer_Main+0)+0,w
	movwf	indf1
	line	71
;Buzzer_B1.c: 71: Buz->TimeValue=Buz->TimeValueBuffer1;
	movf	(_Buz),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Buzzer_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Buzzer_Main+0)+0+1
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(??_Buzzer_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_Buzzer_Main+0)+0,w
	movwi	[1]fsr1
	line	72
;Buzzer_B1.c: 72: }
	goto	l1124
	line	73
	
l1118:	
	
l22138:	
;Buzzer_B1.c: 73: else if(Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u5101
	goto	u5100
u5101:
	goto	l22142
u5100:
	line	75
	
l22140:	
;Buzzer_B1.c: 74: {
;Buzzer_B1.c: 75: Buz->BufferStatus2=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	76
;Buzzer_B1.c: 76: Buz->Count=Buz->CountBuffer2;
	movf	(_Buz),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Buzzer_Main+0)+0,w
	movwf	indf1
	line	77
;Buzzer_B1.c: 77: Buz->TimeValue=Buz->TimeValueBuffer2;
	movf	(_Buz),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Buzzer_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Buzzer_Main+0)+0+1
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(??_Buzzer_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_Buzzer_Main+0)+0,w
	movwi	[1]fsr1
	line	78
;Buzzer_B1.c: 78: }
	goto	l1124
	line	79
	
l1120:	
	line	81
	
l22142:	
;Buzzer_B1.c: 79: else
;Buzzer_B1.c: 80: {
;Buzzer_B1.c: 81: Buz->GO=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1124
	line	82
	
l1121:	
	goto	l1124
	
l1119:	
	line	83
;Buzzer_B1.c: 82: }
;Buzzer_B1.c: 83: }
	goto	l1124
	line	84
	
l1117:	
	line	86
	
l22144:	
;Buzzer_B1.c: 84: else
;Buzzer_B1.c: 85: {
;Buzzer_B1.c: 86: Buz->Switch=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	88
	
l22146:	
;Buzzer_B1.c: 88: RB3=1;
	bsf	(107/8),(107)&7
	goto	l1124
	line	89
	
l1122:	
	line	90
;Buzzer_B1.c: 89: }
;Buzzer_B1.c: 90: }
	goto	l1124
	line	91
	
l1116:	
	line	93
	
l22148:	
;Buzzer_B1.c: 91: else
;Buzzer_B1.c: 92: {
;Buzzer_B1.c: 93: Buz->Switch=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	95
	
l22150:	
;Buzzer_B1.c: 95: RB3=0;
	bcf	(107/8),(107)&7
	line	97
	
l22152:	
;Buzzer_B1.c: 97: Buz->Count--;
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l1124
	line	98
	
l1123:	
	goto	l1124
	line	99
	
l1115:	
	goto	l1124
	line	100
	
l1114:	
	line	101
	
l1124:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Main
	__end_of_Buzzer_Main:
;; =============== function _Buzzer_Main ends ============

	signat	_Buzzer_Main,88
	global	_Buzzer_Initialization
psect	text4217,local,class=CODE,delta=2
global __ptext4217
__ptext4217:

;; *************** function _Buzzer_Initialization *****************
;; Defined at:
;;		line 11 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4217
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	11
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
	opt	stack 11
; Regs used in _Buzzer_Initialization: [wregfsr1]
	line	12
	
l22118:	
;Buzzer_B1.c: 12: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Buzzer_Initialization+0)+0
	movf	(??_Buzzer_Initialization+0)+0,w
	movwf	(_Buz)
	line	13
	
l22120:	
;Buzzer_B1.c: 13: Buz->Enable=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	14
	
l1099:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initialization
	__end_of_Buzzer_Initialization:
;; =============== function _Buzzer_Initialization ends ============

	signat	_Buzzer_Initialization,88
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 57 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_IOC_ISR
;;		_TMR0_ISR
;;		_INT_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	57
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 2
; Regs used in _ISR: [allreg]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	58
	
i1l22382:	
;MCU_16f1518_B1.c: 58: IOC_ISR();
	fcall	_IOC_ISR
	line	60
	
i1l22384:	
;MCU_16f1518_B1.c: 60: TMR0_ISR();
	fcall	_TMR0_ISR
	line	66
	
i1l22386:	
;MCU_16f1518_B1.c: 62: ;;
;MCU_16f1518_B1.c: 66: INT_ISR();
	fcall	_INT_ISR
	line	69
	
i1l9318:	
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
psect	text4219,local,class=CODE,delta=2
global __ptext4219
__ptext4219:

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 226 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_setRF_ReceiveGO
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text4219
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	226
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
	opt	stack 2
; Regs used in _INT_ISR: [wreg+fsr1l-status,0+pclath+cstack]
	line	227
	
i1l22496:	
;MCU_16f1518_B1.c: 227: if(INTE && INTF)
	btfss	(92/8),(92)&7
	goto	u567_21
	goto	u567_20
u567_21:
	goto	i1l9365
u567_20:
	
i1l22498:	
	btfss	(89/8),(89)&7
	goto	u568_21
	goto	u568_20
u568_21:
	goto	i1l9365
u568_20:
	line	229
	
i1l22500:	
;MCU_16f1518_B1.c: 228: {
;MCU_16f1518_B1.c: 229: INTF=0;
	bcf	(89/8),(89)&7
	line	230
;MCU_16f1518_B1.c: 230: INTE=0;
	bcf	(92/8),(92)&7
	line	231
	
i1l22502:	
;MCU_16f1518_B1.c: 231: setRF_ReceiveGO(1,1);
	clrf	(?_setRF_ReceiveGO)
	bsf	status,0
	rlf	(?_setRF_ReceiveGO),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l9365
	line	232
	
i1l9364:	
	line	233
	
i1l9365:	
	return
	opt stack 0
GLOBAL	__end_of_INT_ISR
	__end_of_INT_ISR:
;; =============== function _INT_ISR ends ============

	signat	_INT_ISR,88
	global	_setRF_ReceiveGO
psect	text4220,local,class=CODE,delta=2
global __ptext4220
__ptext4220:

;; *************** function _setRF_ReceiveGO *****************
;; Defined at:
;;		line 38 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_RfPointSelect
;; This function is called by:
;;		_INT_ISR
;; This function uses a non-reentrant model
;;
psect	text4220
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	38
	global	__size_of_setRF_ReceiveGO
	__size_of_setRF_ReceiveGO	equ	__end_of_setRF_ReceiveGO-_setRF_ReceiveGO
	
_setRF_ReceiveGO:	
	opt	stack 2
; Regs used in _setRF_ReceiveGO: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_ReceiveGO@rf stored from wreg
	movwf	(setRF_ReceiveGO@rf)
	line	39
	
i1l22510:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l22512:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l15201:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_ReceiveGO
	__end_of_setRF_ReceiveGO:
;; =============== function _setRF_ReceiveGO ends ============

	signat	_setRF_ReceiveGO,8312
	global	_TMR0_ISR
psect	text4221,local,class=CODE,delta=2
global __ptext4221
__ptext4221:

;; *************** function _TMR0_ISR *****************
;; Defined at:
;;		line 83 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_setLoad_StatusOff
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text4221
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	83
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
	opt	stack 3
; Regs used in _TMR0_ISR: [wreg-status,0+pclath+cstack]
	line	84
	
i1l22404:	
;MCU_16f1518_B1.c: 84: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7
	goto	u544_21
	goto	u544_20
u544_21:
	goto	i1l9354
u544_20:
	
i1l22406:	
	btfss	(90/8),(90)&7
	goto	u545_21
	goto	u545_20
u545_21:
	goto	i1l9354
u545_20:
	line	86
	
i1l22408:	
;MCU_16f1518_B1.c: 85: {
;MCU_16f1518_B1.c: 86: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	87
	
i1l22410:	
;MCU_16f1518_B1.c: 87: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	100
	
i1l22412:	
;MCU_16f1518_B1.c: 100: if(DimmerLights11->GO) { DimmerLights11->Count++; if(DimmerLights11->Count >= (DimmerLights11->DimmingValue-Dimmer->Correction)) { DimmerLights11->Count=0; DimmerLights11->GO=0; DimmerLights11->Flag=1; if(DimmerLights11->StatusFlag) { RA7=1; RB4=1; }
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u546_21
	goto	u546_20
u546_21:
	goto	i1l22420
u546_20:
	
i1l22414:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_TMR0_ISR+0)+0
	clrf	(??_TMR0_ISR+0)+0+1
	comf	(??_TMR0_ISR+0)+0,f
	comf	(??_TMR0_ISR+0)+1,f
	incf	(??_TMR0_ISR+0)+0,f
	skipnz
	incf	(??_TMR0_ISR+0)+1,f
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	addwf	0+(??_TMR0_ISR+0)+0,w
	movwf	(??_TMR0_ISR+2)+0
	movf	1+(??_TMR0_ISR+0)+0,w
	skipnc
	incf	1+(??_TMR0_ISR+0)+0,w
	movwf	((??_TMR0_ISR+2)+0)+1
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	1+(??_TMR0_ISR+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u547_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u547_25:

	skipc
	goto	u547_21
	goto	u547_20
u547_21:
	goto	i1l22488
u547_20:
	
i1l22416:	
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u548_21
	goto	u548_20
u548_21:
	goto	i1l22488
u548_20:
	
i1l22418:	
	movlb 0	; select bank0
	bsf	(103/8),(103)&7
	bsf	(108/8),(108)&7
	goto	i1l22488
	
i1l9327:	
	goto	i1l22488
	
i1l9326:	
	goto	i1l22488
	
i1l9325:	
	
i1l22420:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u549_21
	goto	u549_20
u549_21:
	goto	i1l22478
u549_20:
	
i1l22422:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u550_21
	goto	u550_20
u550_21:
	goto	i1l22478
u550_20:
	
i1l22424:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l22426:	
	movf	(_DimmerLights11),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	02h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u551_21
	goto	u551_20
u551_21:
	goto	i1l22478
u551_20:
	
i1l22428:	
	movf	(_DimmerLights11),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u552_21
	goto	u552_20
u552_21:
	goto	i1l22444
u552_20:
	
i1l22430:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u553_21
	goto	u553_20
u553_21:
	goto	i1l22438
u553_20:
	
i1l22432:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(044h)
	subwf	indf1,w
	skipc
	goto	u554_21
	goto	u554_20
u554_21:
	goto	i1l22436
u554_20:
	
i1l22434:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l22478
	
i1l9334:	
	
i1l22436:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l22478
	
i1l9335:	
	goto	i1l22478
	
i1l9333:	
	
i1l22438:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u555_21
	goto	u555_20
u555_21:
	goto	i1l22442
u555_20:
	
i1l22440:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l22478
	
i1l9337:	
	
i1l22442:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l22478
	
i1l9338:	
	goto	i1l22478
	
i1l9336:	
	goto	i1l22478
	
i1l9332:	
	
i1l22444:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u556_21
	goto	u556_20
u556_21:
	goto	i1l22458
u556_20:
	
i1l22446:	
	movf	(_DimmerLights11),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u557_21
	goto	u557_20
u557_21:
	goto	i1l22450
u557_20:
	
i1l22448:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l22454
	
i1l9341:	
	
i1l22450:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u558_21
	goto	u558_20
u558_21:
	goto	i1l22454
u558_20:
	
i1l22452:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l22454
	
i1l9343:	
	goto	i1l22454
	
i1l9342:	
	
i1l22454:	
	movf	(_DimmerLights11),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	xorwf	indf1,w
	skipz
	goto	u559_21
	goto	u559_20
u559_21:
	goto	i1l22478
u559_20:
	
i1l22456:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l22478
	
i1l9344:	
	goto	i1l22478
	
i1l9340:	
	
i1l22458:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u560_21
	goto	u560_20
u560_21:
	goto	i1l22466
u560_20:
	
i1l22460:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l22462:	
	movf	(_DimmerLights11),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u561_21
	goto	u561_20
u561_21:
	goto	i1l22478
u561_20:
	
i1l22464:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l22478
	
i1l9347:	
	goto	i1l22478
	
i1l9346:	
	
i1l22466:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l22468:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u562_21
	goto	u562_20
u562_21:
	goto	i1l22478
u562_20:
	
i1l22470:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	movf	(_DimmerLights11),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
i1l22472:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7
	
i1l22474:	
	bcf	(119/8),(119)&7
	
i1l22476:	
	clrf	(?i1_setLoad_StatusOff)
	bsf	status,0
	rlf	(?i1_setLoad_StatusOff),f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l22478
	
i1l9349:	
	goto	i1l22478
	
i1l9348:	
	goto	i1l22478
	
i1l9345:	
	goto	i1l22478
	
i1l9339:	
	goto	i1l22478
	
i1l9331:	
	goto	i1l22478
	
i1l9330:	
	goto	i1l22478
	
i1l9329:	
	
i1l22478:	
	movlb 0	; select bank0
	btfss	(103/8),(103)&7
	goto	u563_21
	goto	u563_20
u563_21:
	goto	i1l22488
u563_20:
	
i1l22480:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_TMR0_ISR+0)+0
	clrf	(??_TMR0_ISR+0)+0+1
	comf	(??_TMR0_ISR+0)+0,f
	comf	(??_TMR0_ISR+0)+1,f
	incf	(??_TMR0_ISR+0)+0,f
	skipnz
	incf	(??_TMR0_ISR+0)+1,f
	movf	0+(??_TMR0_ISR+0)+0,w
	addlw	low(078h)
	movwf	(??_TMR0_ISR+2)+0
	movlw	high(078h)
	addwfc	1+(??_TMR0_ISR+0)+0,w
	movwf	1+(??_TMR0_ISR+2)+0
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	1+(??_TMR0_ISR+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u564_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u564_25:

	skipc
	goto	u564_21
	goto	u564_20
u564_21:
	goto	i1l22488
u564_20:
	
i1l22482:	
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l22484:	
	movlb 0	; select bank0
	bcf	(103/8),(103)&7
	
i1l22486:	
	bcf	(108/8),(108)&7
	goto	i1l22488
	
i1l9351:	
	goto	i1l22488
	
i1l9350:	
	goto	i1l22488
	
i1l9328:	
	line	113
	
i1l22488:	
;MCU_16f1518_B1.c: 113: Timer0->Count++;
	movlb 1	; select bank1
	movf	(_Timer0)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	114
	
i1l22490:	
;MCU_16f1518_B1.c: 114: if(Timer0->Count == 200)
	movf	(_Timer0)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0C8h)
	skipz
	goto	u565_25
	moviw	[1]fsr1
	xorlw	high(0C8h)
u565_25:
	skipz
	goto	u565_21
	goto	u565_20
u565_21:
	goto	i1l9352
u565_20:
	line	116
	
i1l22492:	
;MCU_16f1518_B1.c: 115: {
;MCU_16f1518_B1.c: 116: Timer0->Count=0;
	movf	(_Timer0)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	117
;MCU_16f1518_B1.c: 117: TMain->T0_Timerout=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	118
	
i1l9352:	
	line	121
;MCU_16f1518_B1.c: 118: }
;MCU_16f1518_B1.c: 121: if(Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u566_21
	goto	u566_20
u566_21:
	goto	i1l9354
u566_20:
	line	123
	
i1l22494:	
;MCU_16f1518_B1.c: 122: {
;MCU_16f1518_B1.c: 123: Buz->Time++;
	movf	(_Buz),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	goto	i1l9354
	line	124
	
i1l9353:	
	goto	i1l9354
	line	126
	
i1l9324:	
	line	127
	
i1l9354:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
;; =============== function _TMR0_ISR ends ============

	signat	_TMR0_ISR,88
	global	_IOC_ISR
psect	text4222,local,class=CODE,delta=2
global __ptext4222
__ptext4222:

;; *************** function _IOC_ISR *****************
;; Defined at:
;;		line 268 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_setDimmerReClock
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text4222
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	268
	global	__size_of_IOC_ISR
	__size_of_IOC_ISR	equ	__end_of_IOC_ISR-_IOC_ISR
	
_IOC_ISR:	
	opt	stack 3
; Regs used in _IOC_ISR: [wreg+fsr1l-status,0+pclath+cstack]
	line	269
	
i1l22388:	
;MCU_16f1518_B1.c: 269: if(IOCIE && IOCBF2)
	btfss	(91/8),(91)&7
	goto	u540_21
	goto	u540_20
u540_21:
	goto	i1l9378
u540_20:
	
i1l22390:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7
	goto	u541_21
	goto	u541_20
u541_21:
	goto	i1l9378
u541_20:
	line	271
	
i1l22392:	
;MCU_16f1518_B1.c: 270: {
;MCU_16f1518_B1.c: 271: IOCBF2=0;
	bcf	(7346/8)^0380h,(7346)&7
	line	272
;MCU_16f1518_B1.c: 272: IOCIF=0;
	bcf	(88/8),(88)&7
	line	273
	
i1l22394:	
;MCU_16f1518_B1.c: 273: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u542_21
	goto	u542_20
u542_21:
	goto	i1l9378
u542_20:
	line	278
	
i1l22396:	
;MCU_16f1518_B1.c: 274: {
;MCU_16f1518_B1.c: 278: setDimmerReClock();
	fcall	_setDimmerReClock
	line	279
	
i1l22398:	
;MCU_16f1518_B1.c: 279: if(RB2)
	movlb 0	; select bank0
	btfss	(106/8),(106)&7
	goto	u543_21
	goto	u543_20
u543_21:
	goto	i1l22402
u543_20:
	line	281
	
i1l22400:	
;MCU_16f1518_B1.c: 280: {
;MCU_16f1518_B1.c: 281: Dimmer->Correction=0;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	282
;MCU_16f1518_B1.c: 282: }
	goto	i1l9378
	line	283
	
i1l9376:	
	line	285
	
i1l22402:	
;MCU_16f1518_B1.c: 283: else
;MCU_16f1518_B1.c: 284: {
;MCU_16f1518_B1.c: 285: Dimmer->Correction=8;
	movlw	(08h)
	movwf	(??_IOC_ISR+0)+0
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_IOC_ISR+0)+0,w
	movwf	indf1
	goto	i1l9378
	line	286
	
i1l9377:	
	goto	i1l9378
	line	293
	
i1l9375:	
	goto	i1l9378
	line	294
	
i1l9374:	
	line	295
	
i1l9378:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_ISR
	__end_of_IOC_ISR:
;; =============== function _IOC_ISR ends ============

	signat	_IOC_ISR,88
	global	i1_RfPointSelect
psect	text4223,local,class=CODE,delta=2
global __ptext4223
__ptext4223:

;; *************** function i1_RfPointSelect *****************
;; Defined at:
;;		line 8 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_ReceiveGO
;; This function uses a non-reentrant model
;;
psect	text4223
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	8
	global	__size_ofi1_RfPointSelect
	__size_ofi1_RfPointSelect	equ	__end_ofi1_RfPointSelect-i1_RfPointSelect
	
i1_RfPointSelect:	
	opt	stack 2
; Regs used in i1_RfPointSelect: [wreg]
;i1RfPointSelect@rf stored from wreg
	line	10
	movwf	(i1RfPointSelect@rf)
	
i1l22810:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u626_21
	goto	u626_20
u626_21:
	goto	i1l15189
u626_20:
	line	12
	
i1l22812:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	i1l15189
	line	13
	
i1l15188:	
	line	15
	
i1l15189:	
	return
	opt stack 0
GLOBAL	__end_ofi1_RfPointSelect
	__end_ofi1_RfPointSelect:
;; =============== function i1_RfPointSelect ends ============

	signat	i1_RfPointSelect,88
	global	i1_setLoad_StatusOff
psect	text4224,local,class=CODE,delta=2
global __ptext4224
__ptext4224:

;; *************** function i1_setLoad_StatusOff *****************
;; Defined at:
;;		line 285 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  setLoad_Stat    1    wreg     unsigned char 
;;  setLoad_Stat    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  setLoad_Stat    1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR0_ISR
;; This function uses a non-reentrant model
;;
psect	text4224
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	285
	global	__size_ofi1_setLoad_StatusOff
	__size_ofi1_setLoad_StatusOff	equ	__end_ofi1_setLoad_StatusOff-i1_setLoad_StatusOff
	
i1_setLoad_StatusOff:	
	opt	stack 3
; Regs used in i1_setLoad_StatusOff: [wreg+fsr1l-status,0]
;i1setLoad_StatusOff@lights stored from wreg
	movwf	(i1setLoad_StatusOff@lights)
	line	286
	
i1l22794:	
;OverLoad_B1.c: 286: Load->StatusOff=command;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(i1setLoad_StatusOff@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	287
	
i1l22796:	
;OverLoad_B1.c: 287: Load->SafeCount-=2;
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(02h)
	subwf	indf1,f
	line	288
	
i1l22798:	
;OverLoad_B1.c: 288: if(lights == 1)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u623_21
	goto	u623_20
u623_21:
	goto	i1l22802
u623_20:
	line	290
	
i1l22800:	
;OverLoad_B1.c: 289: {
;OverLoad_B1.c: 290: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l22802
	line	291
	
i1l10602:	
	line	292
	
i1l22802:	
;OverLoad_B1.c: 291: }
;OverLoad_B1.c: 292: if(lights == 2)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u624_21
	goto	u624_20
u624_21:
	goto	i1l22806
u624_20:
	line	294
	
i1l22804:	
;OverLoad_B1.c: 293: {
;OverLoad_B1.c: 294: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l22806
	line	295
	
i1l10603:	
	line	296
	
i1l22806:	
;OverLoad_B1.c: 295: }
;OverLoad_B1.c: 296: if(lights == 3)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u625_21
	goto	u625_20
u625_21:
	goto	i1l10605
u625_20:
	line	298
	
i1l22808:	
;OverLoad_B1.c: 297: {
;OverLoad_B1.c: 298: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l10605
	line	299
	
i1l10604:	
	line	300
	
i1l10605:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLoad_StatusOff
	__end_ofi1_setLoad_StatusOff:
;; =============== function i1_setLoad_StatusOff ends ============

	signat	i1_setLoad_StatusOff,88
	global	_setDimmerReClock
psect	text4225,local,class=CODE,delta=2
global __ptext4225
__ptext4225:

;; *************** function _setDimmerReClock *****************
;; Defined at:
;;		line 130 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IOC_ISR
;; This function uses a non-reentrant model
;;
psect	text4225
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	130
	global	__size_of_setDimmerReClock
	__size_of_setDimmerReClock	equ	__end_of_setDimmerReClock-_setDimmerReClock
	
_setDimmerReClock:	
	opt	stack 3
; Regs used in _setDimmerReClock: [wregfsr1]
	line	131
	
i1l22504:	
;MCU_16f1518_B1.c: 131: TMR0=255;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	136
	
i1l22506:	
;MCU_16f1518_B1.c: 136: if(!DimmerLights11->GO)
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u569_21
	goto	u569_20
u569_21:
	goto	i1l9358
u569_20:
	line	138
	
i1l22508:	
;MCU_16f1518_B1.c: 137: {
;MCU_16f1518_B1.c: 138: DimmerLights11->GO=1;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l9358
	line	139
	
i1l9357:	
	line	174
	
i1l9358:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerReClock
	__end_of_setDimmerReClock:
;; =============== function _setDimmerReClock ends ============

	signat	_setDimmerReClock,88
psect	text4226,local,class=CODE,delta=2
global __ptext4226
__ptext4226:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
