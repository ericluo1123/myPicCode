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
# 7 "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	dw 0xFFFC & 0xFFE7 & 0xF9FF ;#
# 8 "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	dw 0xFFFF & 0xFFFE ;#
	FNCALL	_main,_MainT_Initialization
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_Flash_Memory_Initialization
	FNCALL	_main,_LED_Initialization
	FNCALL	_main,_Buzzer_Initialization
	FNCALL	_main,_Temp_Initialization
	FNCALL	_main,_Load_Initialization
	FNCALL	_main,_DelayOff_Initialization
	FNCALL	_main,_DimmerLights_Initialization
	FNCALL	_main,_Switch_Initialization
	FNCALL	_main,_RF_Initialization
	FNCALL	_main,_CC2500_PowerOnInitial
	FNCALL	_main,_getLoad_AD
	FNCALL	_main,_getTemp_AD
	FNCALL	_main,_MainT
	FNCALL	_main,_Flash_Memory_Main
	FNCALL	_main,_Buzzer_Main
	FNCALL	_main,_LED_Main
	FNCALL	_main,_Temp_Main
	FNCALL	_main,_Load_Main
	FNCALL	_main,_DimmerLights_Main
	FNCALL	_main,_Switch_Main
	FNCALL	_main,_RF_Main
	FNCALL	_main,_DelayOff_Main
	FNCALL	_RF_Main,_setRF_Main
	FNCALL	_setRF_Main,_RfPointSelect
	FNCALL	_setRF_Main,_RF_RxDisable
	FNCALL	_setRF_Main,_CC2500_RxData
	FNCALL	_setRF_Main,_getRxData
	FNCALL	_setRF_Main,_CC2500_TxData
	FNCALL	_setRF_Main,_CC2500_WriteCommand
	FNCALL	_setRF_Main,_setINT_GO
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
	FNCALL	_Load_Main,_setLoad_Main
	FNCALL	_Temp_Main,_setTemp_Main
	FNCALL	_setRFSW_AdjControl,_RfSWPointSelect
	FNCALL	_setRFSW_AdjControl,_setRF_DimmerValue
	FNCALL	_setRFSW_AdjControl,_setTxData
	FNCALL	_setTemp_Main,_TempPointSelect
	FNCALL	_setTemp_Main,_getLoad_Safe
	FNCALL	_setTemp_Main,_setOverTemp_ERROR
	FNCALL	_setLoad_Main,_LoadPointSelect
	FNCALL	_setLoad_Main,_setLoad_ERROR
	FNCALL	_setLoad_Main,___lwdiv
	FNCALL	_setLoad_Main,___wmul
	FNCALL	_setLoad_Main,_setDimmerLights_Open
	FNCALL	_setLoad_Main,_setLoad_AH_AL_Restore
	FNCALL	_setLoad_Main,_getTemp_Safe
	FNCALL	_DimmerLights_Main,_setDimmerLights_Main
	FNCALL	_DimmerLights_Main,_DimmerLights_Close
	FNCALL	_setRF_DimmerValue,_setDimmerLights_AdjRF
	FNCALL	_setOverTemp_ERROR,_TempPointSelect
	FNCALL	_setOverTemp_ERROR,_setDimmer_TempERROR
	FNCALL	_setOverTemp_ERROR,_DimmerLights_ERROR
	FNCALL	_setOverTemp_ERROR,_setLED
	FNCALL	_setOverTemp_ERROR,_setSw_Enable
	FNCALL	_setOverTemp_ERROR,_setRF_Enable
	FNCALL	_setLoad_ERROR,_LoadPointSelect
	FNCALL	_setLoad_ERROR,_setDimmer_LoadERROR
	FNCALL	_setLoad_ERROR,_DimmerLights_ERROR
	FNCALL	_setLoad_ERROR,_setLED
	FNCALL	_setLoad_ERROR,_setSw_Enable
	FNCALL	_setLoad_ERROR,_setRF_Enable
	FNCALL	_Switch_Main,_setSw_Main
	FNCALL	_Flash_Memory_Main,_Flash_Memory_Modify
	FNCALL	_MainT,_setTemp_Enable
	FNCALL	_MainT,_setLoad_Enable
	FNCALL	_MainT,_setBuz
	FNCALL	_MainT,_setSw_Enable
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_setDimmerLights_Main,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Main,_setDimmerLights_Open
	FNCALL	_setDimmerLights_Main,_setDimmerLights_Close
	FNCALL	_setDimmerLights_Main,_setDimmerLights
	FNCALL	_setDimmerLights_Main,_getDimmerLights_Trigger
	FNCALL	_setDimmerLights_Main,_setDimmerLights_Adj
	FNCALL	_setDimmerLights_Main,_setBuz
	FNCALL	_DimmerLights_Initialization,_setDimmerLights_Initialization
	FNCALL	_setSw_Main,_SwPointSelect
	FNCALL	_setSw_Main,_Sw_OnFunc
	FNCALL	_setSw_Main,_Sw_AdjFunc
	FNCALL	_setSw_Main,_setRF_Learn
	FNCALL	_setSw_Main,_setBuz
	FNCALL	_setSw_Main,_Sw_OffFunc
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Erasing
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Write
	FNCALL	_setRF_Enable,_RfPointSelect
	FNCALL	_setRF_Enable,_CC2500_WriteCommand
	FNCALL	_setRF_Enable,_RF_RxDisable
	FNCALL	_Switch_Initialization,_TouchPower
	FNCALL	_Switch_Initialization,_setSw_Initialization
	FNCALL	_Flash_Memory_Initialization,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Initialization,_setPercentValue
	FNCALL	_Flash_Memory_Initialization,_Flash_Memory_Write
	FNCALL	_LED_Initialization,_setLED_Initialization
	FNCALL	_setDimmerLights_AdjRF,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_AdjRF,_getPercentValue
	FNCALL	_DimmerLights_ERROR,_getDimmer_TempERROR
	FNCALL	_DimmerLights_ERROR,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_ERROR,_setBuz
	FNCALL	_DimmerLights_ERROR,_setDimmerLights_ERROR
	FNCALL	_DimmerLights_ERROR,_getDimmer_LoadERROR
	FNCALL	_DimmerLights_ERROR,_getDimmer_PFERROR
	FNCALL	_DimmerLights_ERROR,_setDimmerLights_TriggerERROR
	FNCALL	_setDimmerLights_Adj,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Adj,_setLoad_StatusOff
	FNCALL	_setDimmerLights_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights_Adj,_setTxData
	FNCALL	_setDimmerLights_Adj,_setPercentValue
	FNCALL	_setDimmerLights_Initialization,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Initialization,_getPercentValue
	FNCALL	_DelayOff_Main,_DlyOff_Main
	FNCALL	_CC2500_PowerOnInitial,_CC2500_PowerRST
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitSetREG
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitPATable
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearTXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearRXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_FrequencyCabr
	FNCALL	_CC2500_PowerOnInitial,_CC2500_SIDLEMode
	FNCALL	_Buzzer_Initialization,_setBuz_Initialization
	FNCALL	_Sw_OffFunc,_setDimmerLights_TriggerAdj
	FNCALL	_Sw_OffFunc,_setDimmerLights_AdjGo
	FNCALL	_Sw_OffFunc,_setRF_DimmerLights
	FNCALL	_Sw_OffFunc,_setTxData
	FNCALL	_Sw_OffFunc,_setDimmerLights_Trigger
	FNCALL	_Sw_OffFunc,_setDimmerLights_Switch
	FNCALL	_Sw_OffFunc,_setDelayOff_GO
	FNCALL	_Sw_AdjFunc,_setRFSW_Status
	FNCALL	_Sw_AdjFunc,_setDimmerLights_TriggerAdj
	FNCALL	_Sw_AdjFunc,_setDimmerLights_AdjGo
	FNCALL	_Sw_OnFunc,_setBuz
	FNCALL	_Sw_OnFunc,_setRFSW_Status
	FNCALL	_Sw_OnFunc,_setDimmerLights_Trigger
	FNCALL	_Sw_OnFunc,_setDimmerLights_Switch
	FNCALL	_Sw_OnFunc,_setRF_DimmerLights
	FNCALL	_Sw_OnFunc,_setTxData
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
	FNCALL	_Load_Initialization,_setLoad_Initialization
	FNCALL	_Temp_Initialization,_setTemp_Initialization
	FNCALL	_LED_Main,_setLED_Main
	FNCALL	_setLED_Initialization,_LedPointSelect
	FNCALL	_setLED_Initialization,_setLED
	FNCALL	_setPercentValue,___ftdiv
	FNCALL	_setPercentValue,___awtoft
	FNCALL	_setPercentValue,___fttol
	FNCALL	_setDimmerLights_ERROR,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_ERROR,_setLoad_StatusOff
	FNCALL	_setDimmerLights_ERROR,_setLED
	FNCALL	_setDimmerLights_ERROR,_setSw_Status
	FNCALL	_setDimmerLights_ERROR,_setRFSW_Status
	FNCALL	_setDimmerLights,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights,_setLED
	FNCALL	_setDimmerLights,_setLoad_StatusOn
	FNCALL	_setDimmerLights,_setLoad_Count
	FNCALL	_setDimmerLights,_setDimmer_Detect
	FNCALL	_setDimmerLights,_setLoad_GO
	FNCALL	_setDimmerLights,_setLoad_LightsStatus
	FNCALL	_DimmerLights_Close,_getDimmer_Detect
	FNCALL	_DimmerLights_Close,_setDimmer_Detect
	FNCALL	_DimmerLights_Close,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_Close,_setLoad_GO
	FNCALL	_getPercentValue,___ftdiv
	FNCALL	_getPercentValue,___awtoft
	FNCALL	_getPercentValue,___ftmul
	FNCALL	_getPercentValue,___ftadd
	FNCALL	_getPercentValue,___fttol
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
	FNCALL	_Buzzer_Main,_setBuz_Main
	FNCALL	_setBuz_Initialization,_setBuz_Enable
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_setRF_Learn,_RfPointSelect
	FNCALL	_setTemp_Initialization,_TempPointSelect
	FNCALL	_getLoad_Safe,_LoadPointSelect
	FNCALL	_getTemp_Safe,_TempPointSelect
	FNCALL	_setLoad_Initialization,_LoadPointSelect
	FNCALL	_setLoad_Initialization,_setLoad_AH_AL_Restore
	FNCALL	_setSw_Enable,_SwPointSelect
	FNCALL	_setLoad_Enable,_LoadPointSelect
	FNCALL	_setTemp_Enable,_TempPointSelect
	FNCALL	_getTemp_AD,_TempPointSelect
	FNCALL	_getTemp_AD,_getAD
	FNCALL	_getLoad_AD,_LoadPointSelect
	FNCALL	_getLoad_AD,_getAD
	FNCALL	_RF_Initialization,_setRF_Initialization
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR0_Set
	FNCALL	_Mcu_Initialization,_ADC_Set
	FNCALL	_Mcu_Initialization,_INT_Set
	FNCALL	_Mcu_Initialization,_IOC_Set
	FNCALL	_setLED_Main,_LedPointSelect
	FNCALL	_setDimmer_LoadERROR,_DimmerPointSelect
	FNCALL	_setDimmer_TempERROR,_DimmerPointSelect
	FNCALL	_setDimmerLights_TriggerAdj,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_AdjGo,_DimmerLightsPointSelect
	FNCALL	_setLoad_LightsStatus,_LoadPointSelect
	FNCALL	_setLoad_StatusOn,_LoadPointSelect
	FNCALL	_setLED,_LedPointSelect
	FNCALL	_setLoad_StatusOff,_LoadPointSelect
	FNCALL	_setDimmerLights_TriggerERROR,_DimmerLightsPointSelect
	FNCALL	_getDimmer_PFERROR,_DimmerPointSelect
	FNCALL	_getDimmer_LoadERROR,_DimmerPointSelect
	FNCALL	_getDimmer_TempERROR,_DimmerPointSelect
	FNCALL	_getDimmerLights_Trigger,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Close,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Open,_DimmerLightsPointSelect
	FNCALL	_setLoad_GO,_LoadPointSelect
	FNCALL	_getDimmerLights_StatusFlag,_DimmerLightsPointSelect
	FNCALL	_setDimmer_Detect,_DimmerPointSelect
	FNCALL	_getDimmer_Detect,_DimmerPointSelect
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
	FNCALL	_setBuz,_BuzPointSelect
	FNCALL	_setBuz,___awdiv
	FNCALL	_setBuz_Enable,_BuzPointSelect
	FNCALL	_setBuz_Main,_BuzPointSelect
	FNROOT	_main
	FNCALL	_ISR,_IOC_ISR
	FNCALL	_ISR,_TMR0_ISR
	FNCALL	_ISR,_INT_ISR
	FNCALL	_INT_ISR,_setRF_ReceiveGO
	FNCALL	_TMR0_ISR,i1_setLoad_StatusOff
	FNCALL	i1_setLoad_StatusOff,i1_LoadPointSelect
	FNCALL	_setRF_ReceiveGO,i1_RfPointSelect
	FNCALL	_IOC_ISR,_setDimmerReClock
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
	global	_VarMemory
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"G:\Program\PIC\8.Switch_3Key_Dimmer\Switch_3KEY_Dimmer_V3.1.2\Release\Switch_3key_Dimmer_V3.1.2.h"
	line	209

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
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataBANK4,class=CODE,space=0,delta=2
global __pidataBANK4
__pidataBANK4:
	file	"G:\Program\PIC\Header_File\MCU_16F1518_B1.h"
	line	435

;initializer for _VarMemory
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
	file	"G:\Program\PIC\Header_File\CC2500_B1.h"
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
	file	"G:\Program\PIC\Header_File\CC2500_B1.h"
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
	file	"G:\Program\PIC\Header_File\CC2500_B1.h"
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
	global	_DimmerLights11
	global	_DimmerLights22
	global	_DimmerLights33
	global	_CC2500_Enable
	global	_Receive_GO
	global	_Receive_OK
	global	_RxStatus
	global	_Transceive_GO
	global	_Transceive_OK
	global	_TxStatus
	global	_RF_Data
	global	_DelayOff
	global	_RF_Count
	global	_Buz
	global	_CRC
	global	_Dimmer
	global	_DimmerLightsIntr
	global	_LED
	global	_RF
	global	_RFSW
	global	_RSSI
	global	_Rx_Length
	global	_SPI0Buffer
	global	_Temp
	global	_Tx_Length
	global	_r_address
	global	_r_data
	global	_s_data
	global	_DimmerLights1
	global	_DimmerLights2
	global	_DimmerLights3
	global	_Sw1
	global	_Sw2
	global	_Sw3
	global	_VarTimer0
	global	_DlySw3
	global	_VarTMain
	global	_Temp1
	global	_Buz1
	global	_Load1
	global	_DlySw1
	global	_DlySw2
	global	_VarErrLED
	global	_VarLED1
	global	_VarLED2
	global	_VarLED3
	global	_Dimmer1
	global	_RF1
	global	_RFSW1
	global	_RFSW2
	global	_RFSW3
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
	global	_RC6
_RC6	set	118
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

	global	_Product
_Product:
       ds      1

	global	_TMain
_TMain:
       ds      1

	global	_Timer0
_Timer0:
       ds      1

	file	"Switch_3KEY_Dimmer_V3.1.2.as"
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
_DimmerLights11:
       ds      1

_DimmerLights22:
       ds      1

_DimmerLights33:
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

_DelayOff:
       ds      2

_RF_Count:
       ds      2

_Buz:
       ds      1

_CRC:
       ds      1

_Dimmer:
       ds      1

_DimmerLightsIntr:
       ds      1

_LED:
       ds      1

_RF:
       ds      1

_RFSW:
       ds      1

_RSSI:
       ds      1

_Rx_Length:
       ds      1

_SPI0Buffer:
       ds      1

_Temp:
       ds      1

_Tx_Length:
       ds      1

_r_address:
       ds      1

_r_data:
       ds      1

_s_data:
       ds      1

_DlySw1:
       ds      5

_DlySw2:
       ds      5

_VarErrLED:
       ds      4

_VarLED1:
       ds      4

_VarLED2:
       ds      4

_VarLED3:
       ds      4

_Dimmer1:
       ds      3

_RF1:
       ds      2

_RFSW1:
       ds      1

_RFSW2:
       ds      1

_RFSW3:
       ds      1

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_DimmerLights1:
       ds      10

_DimmerLights2:
       ds      10

_DimmerLights3:
       ds      10

_Sw1:
       ds      9

_Sw2:
       ds      9

_Sw3:
       ds      9

_VarTimer0:
       ds      7

_DlySw3:
       ds      5

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_VarTMain:
       ds      16

_Temp1:
       ds      14

_Buz1:
       ds      12

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"G:\Program\PIC\8.Switch_3Key_Dimmer\Switch_3KEY_Dimmer_V3.1.2\Release\Switch_3key_Dimmer_V3.1.2.h"
	line	209
_VarProduct:
       ds      26

psect	dataBANK4,class=BANK4,space=1
global __pdataBANK4
__pdataBANK4:
	file	"G:\Program\PIC\Header_File\MCU_16F1518_B1.h"
	line	435
_VarMemory:
       ds      37

psect	bssBANK5,class=BANK5,space=1
global __pbssBANK5
__pbssBANK5:
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
	movlw	045h
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	02Ah
	fcall	clear_ram
; Clear objects allocated to BANK5
psect cinit,class=CODE,delta=2
	global __pbssBANK5
	movlw	low(__pbssBANK5)
	movwf	fsr0l
	movlw	high(__pbssBANK5)
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
	movlw 01Ah
	fcall init_ram
; Initialize objects allocated to BANK4
	global __pidataBANK4,__pdataBANK4
psect cinit,class=CODE,delta=2
	movlw low(__pidataBANK4)
	movwf fsr0l
	movlw high(__pidataBANK4)|80h
	movwf fsr0h
	movlw low(__pdataBANK4)
	movwf fsr1l
	movlw high(__pdataBANK4)
	movwf fsr1h
	movlw 025h
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
	global	?_setBuz_Initialization
?_setBuz_Initialization:	; 0 bytes @ 0x0
	global	?_setBuz_Main
?_setBuz_Main:	; 0 bytes @ 0x0
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
	global	?_setDimmerLights_Main
?_setDimmerLights_Main:	; 0 bytes @ 0x0
	global	?_setDimmerLights_ERROR
?_setDimmerLights_ERROR:	; 0 bytes @ 0x0
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
	global	?_Switch_Initialization
?_Switch_Initialization:	; 0 bytes @ 0x0
	global	?_RF_Initialization
?_RF_Initialization:	; 0 bytes @ 0x0
	global	?_MainT
?_MainT:	; 0 bytes @ 0x0
	global	?_Flash_Memory_Main
?_Flash_Memory_Main:	; 0 bytes @ 0x0
	global	?_Temp_Main
?_Temp_Main:	; 0 bytes @ 0x0
	global	?_Load_Main
?_Load_Main:	; 0 bytes @ 0x0
	global	?_Switch_Main
?_Switch_Main:	; 0 bytes @ 0x0
	global	?_RF_Main
?_RF_Main:	; 0 bytes @ 0x0
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
	global	?_setLoad_Initialization
?_setLoad_Initialization:	; 0 bytes @ 0x0
	global	?_setLoad_Main
?_setLoad_Main:	; 0 bytes @ 0x0
	global	?_setLoad_AH_AL_Restore
?_setLoad_AH_AL_Restore:	; 0 bytes @ 0x0
	global	?_setTemp_Main
?_setTemp_Main:	; 0 bytes @ 0x0
	global	?_setTemp_Initialization
?_setTemp_Initialization:	; 0 bytes @ 0x0
	global	?_setRF_Initialization
?_setRF_Initialization:	; 0 bytes @ 0x0
	global	?_setRF_Main
?_setRF_Main:	; 0 bytes @ 0x0
	global	?_RF_RxDisable
?_RF_RxDisable:	; 0 bytes @ 0x0
	global	?_getRxData
?_getRxData:	; 0 bytes @ 0x0
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
	global	?_Sw_OnFunc
?_Sw_OnFunc:	; 0 bytes @ 0x0
	global	?_Sw_AdjFunc
?_Sw_AdjFunc:	; 0 bytes @ 0x0
	global	?_Sw_OffFunc
?_Sw_OffFunc:	; 0 bytes @ 0x0
	global	?_BuzPointSelect
?_BuzPointSelect:	; 0 bytes @ 0x0
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
	global	?_DimmerLights_ERROR
?_DimmerLights_ERROR:	; 0 bytes @ 0x0
	global	?_setDimmerLights_AdjRF
?_setDimmerLights_AdjRF:	; 0 bytes @ 0x0
	global	?_DimmerPointSelect
?_DimmerPointSelect:	; 0 bytes @ 0x0
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
	global	?_LoadPointSelect
?_LoadPointSelect:	; 0 bytes @ 0x0
	global	?_TempPointSelect
?_TempPointSelect:	; 0 bytes @ 0x0
	global	?_RfPointSelect
?_RfPointSelect:	; 0 bytes @ 0x0
	global	?_RfSWPointSelect
?_RfSWPointSelect:	; 0 bytes @ 0x0
	global	?_TouchPower
?_TouchPower:	; 0 bytes @ 0x0
	global	?_SwPointSelect
?_SwPointSelect:	; 0 bytes @ 0x0
	global	?i1_LoadPointSelect
?i1_LoadPointSelect:	; 0 bytes @ 0x0
	global	??i1_LoadPointSelect
??i1_LoadPointSelect:	; 0 bytes @ 0x0
	global	?i1_RfPointSelect
?i1_RfPointSelect:	; 0 bytes @ 0x0
	global	??i1_RfPointSelect
??i1_RfPointSelect:	; 0 bytes @ 0x0
	global	?_DelayTimejudge
?_DelayTimejudge:	; 1 bytes @ 0x0
	global	?_getPercentValue
?_getPercentValue:	; 1 bytes @ 0x0
	global	?_getDimmer_Detect
?_getDimmer_Detect:	; 1 bytes @ 0x0
	global	?_getDimmerLights_StatusFlag
?_getDimmerLights_StatusFlag:	; 1 bytes @ 0x0
	global	?_getDimmerLights_Trigger
?_getDimmerLights_Trigger:	; 1 bytes @ 0x0
	global	?_getDimmer_TempERROR
?_getDimmer_TempERROR:	; 1 bytes @ 0x0
	global	?_getDimmer_LoadERROR
?_getDimmer_LoadERROR:	; 1 bytes @ 0x0
	global	?_getDimmer_PFERROR
?_getDimmer_PFERROR:	; 1 bytes @ 0x0
	global	?_setPercentValue
?_setPercentValue:	; 1 bytes @ 0x0
	global	?_Flash_Memory_Read
?_Flash_Memory_Read:	; 1 bytes @ 0x0
	global	?_getTemp_Safe
?_getTemp_Safe:	; 1 bytes @ 0x0
	global	?_getLoad_Safe
?_getLoad_Safe:	; 1 bytes @ 0x0
	global	setBuz_Initialization@buz
setBuz_Initialization@buz:	; 1 bytes @ 0x0
	global	setLoad_Count@load
setLoad_Count@load:	; 1 bytes @ 0x0
	global	setLoad_AH_AL_Restore@load
setLoad_AH_AL_Restore@load:	; 1 bytes @ 0x0
	global	TempPointSelect@temp
TempPointSelect@temp:	; 1 bytes @ 0x0
	global	setRF_Initialization@rf
setRF_Initialization@rf:	; 1 bytes @ 0x0
	ds	1
	global	i1LoadPointSelect@load
i1LoadPointSelect@load:	; 1 bytes @ 0x1
	global	i1RfPointSelect@rf
i1RfPointSelect@rf:	; 1 bytes @ 0x1
	ds	1
	global	?_setRF_ReceiveGO
?_setRF_ReceiveGO:	; 0 bytes @ 0x2
	global	?i1_setLoad_StatusOff
?i1_setLoad_StatusOff:	; 0 bytes @ 0x2
	global	setRF_ReceiveGO@command
setRF_ReceiveGO@command:	; 1 bytes @ 0x2
	global	i1setLoad_StatusOff@lights
i1setLoad_StatusOff@lights:	; 1 bytes @ 0x2
	ds	1
	global	??_setRF_ReceiveGO
??_setRF_ReceiveGO:	; 0 bytes @ 0x3
	global	setRF_ReceiveGO@rf
setRF_ReceiveGO@rf:	; 1 bytes @ 0x3
	global	i1setLoad_StatusOff@command
i1setLoad_StatusOff@command:	; 1 bytes @ 0x3
	ds	1
	global	??_INT_ISR
??_INT_ISR:	; 0 bytes @ 0x4
	global	??i1_setLoad_StatusOff
??i1_setLoad_StatusOff:	; 0 bytes @ 0x4
	global	i1setLoad_StatusOff@load
i1setLoad_StatusOff@load:	; 1 bytes @ 0x4
	ds	1
	global	??_TMR0_ISR
??_TMR0_ISR:	; 0 bytes @ 0x5
	ds	4
	global	??_ISR
??_ISR:	; 0 bytes @ 0x9
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
	global	?_setLoad_Count
?_setLoad_Count:	; 0 bytes @ 0x0
	global	??_MainT_Initialization
??_MainT_Initialization:	; 0 bytes @ 0x0
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
	global	??_setRF_Initialization
??_setRF_Initialization:	; 0 bytes @ 0x0
	global	??_BuzPointSelect
??_BuzPointSelect:	; 0 bytes @ 0x0
	global	??_DelayOffPointSelect
??_DelayOffPointSelect:	; 0 bytes @ 0x0
	global	??_DimmerLightsPointSelect
??_DimmerLightsPointSelect:	; 0 bytes @ 0x0
	global	??_DimmerPointSelect
??_DimmerPointSelect:	; 0 bytes @ 0x0
	global	??_LedPointSelect
??_LedPointSelect:	; 0 bytes @ 0x0
	global	??_setINT_GO
??_setINT_GO:	; 0 bytes @ 0x0
	global	??_Flash_Memory_Unlock
??_Flash_Memory_Unlock:	; 0 bytes @ 0x0
	global	??_Flash_Memory_Erasing
??_Flash_Memory_Erasing:	; 0 bytes @ 0x0
	global	??_LoadPointSelect
??_LoadPointSelect:	; 0 bytes @ 0x0
	global	??_TempPointSelect
??_TempPointSelect:	; 0 bytes @ 0x0
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
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	DelayOffPointSelect@sw
DelayOffPointSelect@sw:	; 1 bytes @ 0x0
	global	setINT_GO@command
setINT_GO@command:	; 1 bytes @ 0x0
	global	getAD@adcon1
getAD@adcon1:	; 1 bytes @ 0x0
	global	setLoad_Count@command
setLoad_Count@command:	; 1 bytes @ 0x0
	global	setRF_DimmerLights@on
setRF_DimmerLights@on:	; 1 bytes @ 0x0
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_DlyOff_Initialization
??_DlyOff_Initialization:	; 0 bytes @ 0x1
	global	??_setRF_DimmerLights
??_setRF_DimmerLights:	; 0 bytes @ 0x1
	global	??_setLoad_Count
??_setLoad_Count:	; 0 bytes @ 0x1
	global	??_Mcu_Initialization
??_Mcu_Initialization:	; 0 bytes @ 0x1
	global	??_RF_Initialization
??_RF_Initialization:	; 0 bytes @ 0x1
	global	?_setTemp_Enable
?_setTemp_Enable:	; 0 bytes @ 0x1
	global	??_getTemp_Safe
??_getTemp_Safe:	; 0 bytes @ 0x1
	global	??_setTemp_Initialization
??_setTemp_Initialization:	; 0 bytes @ 0x1
	global	BuzPointSelect@buz
BuzPointSelect@buz:	; 1 bytes @ 0x1
	global	CC2500_WriteByte@loop_a
CC2500_WriteByte@loop_a:	; 1 bytes @ 0x1
	global	CC2500_ReadByte@loop_b
CC2500_ReadByte@loop_b:	; 1 bytes @ 0x1
	global	DlyOff_Initialization@sw
DlyOff_Initialization@sw:	; 1 bytes @ 0x1
	global	DelayTimejudge@i
DelayTimejudge@i:	; 1 bytes @ 0x1
	global	DimmerLightsPointSelect@lights
DimmerLightsPointSelect@lights:	; 1 bytes @ 0x1
	global	DimmerPointSelect@dimmer
DimmerPointSelect@dimmer:	; 1 bytes @ 0x1
	global	LedPointSelect@led
LedPointSelect@led:	; 1 bytes @ 0x1
	global	Flash_Memory_Read@i
Flash_Memory_Read@i:	; 1 bytes @ 0x1
	global	Flash_Memory_Write@i
Flash_Memory_Write@i:	; 1 bytes @ 0x1
	global	LoadPointSelect@load
LoadPointSelect@load:	; 1 bytes @ 0x1
	global	setLoad_AH_AL_Restore@i
setLoad_AH_AL_Restore@i:	; 1 bytes @ 0x1
	global	setTemp_Enable@command
setTemp_Enable@command:	; 1 bytes @ 0x1
	global	getTemp_Safe@temp
getTemp_Safe@temp:	; 1 bytes @ 0x1
	global	setTemp_Initialization@temp
setTemp_Initialization@temp:	; 1 bytes @ 0x1
	global	RfPointSelect@rf
RfPointSelect@rf:	; 1 bytes @ 0x1
	global	RfSWPointSelect@sw
RfSWPointSelect@sw:	; 1 bytes @ 0x1
	global	SwPointSelect@sw
SwPointSelect@sw:	; 1 bytes @ 0x1
	ds	1
	global	??_setBuz_Main
??_setBuz_Main:	; 0 bytes @ 0x2
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
	global	??_getDimmer_Detect
??_getDimmer_Detect:	; 0 bytes @ 0x2
	global	?_setDimmer_Detect
?_setDimmer_Detect:	; 0 bytes @ 0x2
	global	??_getDimmerLights_StatusFlag
??_getDimmerLights_StatusFlag:	; 0 bytes @ 0x2
	global	?_setLoad_GO
?_setLoad_GO:	; 0 bytes @ 0x2
	global	?_setDimmerLights_Open
?_setDimmerLights_Open:	; 0 bytes @ 0x2
	global	?_setDimmerLights_Close
?_setDimmerLights_Close:	; 0 bytes @ 0x2
	global	??_getDimmerLights_Trigger
??_getDimmerLights_Trigger:	; 0 bytes @ 0x2
	global	??_getDimmer_TempERROR
??_getDimmer_TempERROR:	; 0 bytes @ 0x2
	global	??_getDimmer_LoadERROR
??_getDimmer_LoadERROR:	; 0 bytes @ 0x2
	global	??_getDimmer_PFERROR
??_getDimmer_PFERROR:	; 0 bytes @ 0x2
	global	?_setDimmerLights_TriggerERROR
?_setDimmerLights_TriggerERROR:	; 0 bytes @ 0x2
	global	?_setLoad_StatusOff
?_setLoad_StatusOff:	; 0 bytes @ 0x2
	global	?_setLED
?_setLED:	; 0 bytes @ 0x2
	global	?_setLoad_StatusOn
?_setLoad_StatusOn:	; 0 bytes @ 0x2
	global	?_setLoad_LightsStatus
?_setLoad_LightsStatus:	; 0 bytes @ 0x2
	global	??_setLED_Main
??_setLED_Main:	; 0 bytes @ 0x2
	global	??_Temp_Initialization
??_Temp_Initialization:	; 0 bytes @ 0x2
	global	??_setTemp_Enable
??_setTemp_Enable:	; 0 bytes @ 0x2
	global	?_setLoad_Enable
?_setLoad_Enable:	; 0 bytes @ 0x2
	global	?_setSw_Enable
?_setSw_Enable:	; 0 bytes @ 0x2
	global	??_setLoad_Initialization
??_setLoad_Initialization:	; 0 bytes @ 0x2
	global	?_setBuz_Enable
?_setBuz_Enable:	; 0 bytes @ 0x2
	global	??_DelayOff_Initialization
??_DelayOff_Initialization:	; 0 bytes @ 0x2
	global	?_setDimmerLights_AdjGo
?_setDimmerLights_AdjGo:	; 0 bytes @ 0x2
	global	?_setDimmerLights_TriggerAdj
?_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x2
	global	?_setDimmer_TempERROR
?_setDimmer_TempERROR:	; 0 bytes @ 0x2
	global	?_setDimmer_LoadERROR
?_setDimmer_LoadERROR:	; 0 bytes @ 0x2
	global	??_getAD
??_getAD:	; 0 bytes @ 0x2
	global	??_getLoad_Safe
??_getLoad_Safe:	; 0 bytes @ 0x2
	global	?_setRF_Learn
?_setRF_Learn:	; 0 bytes @ 0x2
	global	setBuz_Enable@command
setBuz_Enable@command:	; 1 bytes @ 0x2
	global	CC2500_WriteREG@value
CC2500_WriteREG@value:	; 1 bytes @ 0x2
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
	global	setDimmerLights_Open@command
setDimmerLights_Open@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Close@command
setDimmerLights_Close@command:	; 1 bytes @ 0x2
	global	setDimmer_TempERROR@command
setDimmer_TempERROR@command:	; 1 bytes @ 0x2
	global	setDimmer_LoadERROR@command
setDimmer_LoadERROR@command:	; 1 bytes @ 0x2
	global	setDimmer_Detect@command
setDimmer_Detect@command:	; 1 bytes @ 0x2
	global	getDimmer_TempERROR@dimmer
getDimmer_TempERROR@dimmer:	; 1 bytes @ 0x2
	global	getDimmer_LoadERROR@dimmer
getDimmer_LoadERROR@dimmer:	; 1 bytes @ 0x2
	global	getDimmer_PFERROR@dimmer
getDimmer_PFERROR@dimmer:	; 1 bytes @ 0x2
	global	setLED@command
setLED@command:	; 1 bytes @ 0x2
	global	Flash_Memory_Read@address
Flash_Memory_Read@address:	; 1 bytes @ 0x2
	global	setLoad_Initialization@load
setLoad_Initialization@load:	; 1 bytes @ 0x2
	global	setLoad_LightsStatus@lights
setLoad_LightsStatus@lights:	; 1 bytes @ 0x2
	global	setLoad_Enable@command
setLoad_Enable@command:	; 1 bytes @ 0x2
	global	setLoad_GO@command
setLoad_GO@command:	; 1 bytes @ 0x2
	global	setLoad_StatusOn@command
setLoad_StatusOn@command:	; 1 bytes @ 0x2
	global	setLoad_StatusOff@lights
setLoad_StatusOff@lights:	; 1 bytes @ 0x2
	global	setTemp_Enable@temp
setTemp_Enable@temp:	; 1 bytes @ 0x2
	global	setRF_Learn@command
setRF_Learn@command:	; 1 bytes @ 0x2
	global	setRF_RxStatus@command
setRF_RxStatus@command:	; 1 bytes @ 0x2
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
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
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
	global	??_setDimmer_Detect
??_setDimmer_Detect:	; 0 bytes @ 0x3
	global	??_setLoad_GO
??_setLoad_GO:	; 0 bytes @ 0x3
	global	??_setDimmerLights_Open
??_setDimmerLights_Open:	; 0 bytes @ 0x3
	global	??_setDimmerLights_Close
??_setDimmerLights_Close:	; 0 bytes @ 0x3
	global	??_setDimmerLights_TriggerERROR
??_setDimmerLights_TriggerERROR:	; 0 bytes @ 0x3
	global	??_setLED
??_setLED:	; 0 bytes @ 0x3
	global	??_setLoad_StatusOn
??_setLoad_StatusOn:	; 0 bytes @ 0x3
	global	??_Load_Initialization
??_Load_Initialization:	; 0 bytes @ 0x3
	global	??_setLoad_Enable
??_setLoad_Enable:	; 0 bytes @ 0x3
	global	??_setSw_Enable
??_setSw_Enable:	; 0 bytes @ 0x3
	global	??_setBuz_Enable
??_setBuz_Enable:	; 0 bytes @ 0x3
	global	?_setDelayOff_GO
?_setDelayOff_GO:	; 0 bytes @ 0x3
	global	??_setDimmerLights_AdjGo
??_setDimmerLights_AdjGo:	; 0 bytes @ 0x3
	global	??_setDimmerLights_TriggerAdj
??_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x3
	global	??_setDimmer_TempERROR
??_setDimmer_TempERROR:	; 0 bytes @ 0x3
	global	??_setDimmer_LoadERROR
??_setDimmer_LoadERROR:	; 0 bytes @ 0x3
	global	??_setRF_Learn
??_setRF_Learn:	; 0 bytes @ 0x3
	global	setBuz_Enable@buz
setBuz_Enable@buz:	; 1 bytes @ 0x3
	global	CC2500_WriteCommand@command
CC2500_WriteCommand@command:	; 1 bytes @ 0x3
	global	CC2500_ReadStatus@status_addr
CC2500_ReadStatus@status_addr:	; 1 bytes @ 0x3
	global	setDelayOff_GO@command
setDelayOff_GO@command:	; 1 bytes @ 0x3
	global	getDimmerLights_StatusFlag@length
getDimmerLights_StatusFlag@length:	; 1 bytes @ 0x3
	global	getDimmerLights_Trigger@length
getDimmerLights_Trigger@length:	; 1 bytes @ 0x3
	global	setDimmerLights_Switch@lights
setDimmerLights_Switch@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_AdjGo@lights
setDimmerLights_AdjGo@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Trigger@lights
setDimmerLights_Trigger@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_TriggerAdj@lights
setDimmerLights_TriggerAdj@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Open@lights
setDimmerLights_Open@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Close@lights
setDimmerLights_Close@lights:	; 1 bytes @ 0x3
	global	setDimmer_TempERROR@dimmer
setDimmer_TempERROR@dimmer:	; 1 bytes @ 0x3
	global	setDimmer_LoadERROR@dimmer
setDimmer_LoadERROR@dimmer:	; 1 bytes @ 0x3
	global	setDimmer_Detect@dimmer
setDimmer_Detect@dimmer:	; 1 bytes @ 0x3
	global	getDimmer_Detect@dimmer
getDimmer_Detect@dimmer:	; 1 bytes @ 0x3
	global	setLED@led
setLED@led:	; 1 bytes @ 0x3
	global	Flash_Memory_Read@ret
Flash_Memory_Read@ret:	; 1 bytes @ 0x3
	global	setLoad_LightsStatus@command
setLoad_LightsStatus@command:	; 1 bytes @ 0x3
	global	setLoad_Enable@load
setLoad_Enable@load:	; 1 bytes @ 0x3
	global	setLoad_GO@load
setLoad_GO@load:	; 1 bytes @ 0x3
	global	setLoad_StatusOn@load
setLoad_StatusOn@load:	; 1 bytes @ 0x3
	global	setLoad_StatusOff@command
setLoad_StatusOff@command:	; 1 bytes @ 0x3
	global	getLoad_Safe@load
getLoad_Safe@load:	; 1 bytes @ 0x3
	global	setRF_Learn@rf
setRF_Learn@rf:	; 1 bytes @ 0x3
	global	setRF_RxStatus@rf
setRF_RxStatus@rf:	; 1 bytes @ 0x3
	global	setRFSW_Status@sw
setRFSW_Status@sw:	; 1 bytes @ 0x3
	global	setRF_DimmerLights@status
setRF_DimmerLights@status:	; 1 bytes @ 0x3
	global	setSw_Enable@sw
setSw_Enable@sw:	; 1 bytes @ 0x3
	global	setSw_Status@sw
setSw_Status@sw:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_setBuz_Initialization
??_setBuz_Initialization:	; 0 bytes @ 0x4
	global	??_CC2500_ClearTXFIFO
??_CC2500_ClearTXFIFO:	; 0 bytes @ 0x4
	global	??_CC2500_ClearRXFIFO
??_CC2500_ClearRXFIFO:	; 0 bytes @ 0x4
	global	??_CC2500_SIDLEMode
??_CC2500_SIDLEMode:	; 0 bytes @ 0x4
	global	??_setLoad_StatusOff
??_setLoad_StatusOff:	; 0 bytes @ 0x4
	global	??_setLoad_LightsStatus
??_setLoad_LightsStatus:	; 0 bytes @ 0x4
	global	??_setLED_Initialization
??_setLED_Initialization:	; 0 bytes @ 0x4
	global	??_Flash_Memory_Modify
??_Flash_Memory_Modify:	; 0 bytes @ 0x4
	global	??_RF_RxDisable
??_RF_RxDisable:	; 0 bytes @ 0x4
	global	??_setSw_Initialization
??_setSw_Initialization:	; 0 bytes @ 0x4
	global	??_Sw_AdjFunc
??_Sw_AdjFunc:	; 0 bytes @ 0x4
	global	??_Buzzer_Initialization
??_Buzzer_Initialization:	; 0 bytes @ 0x4
	global	??_CC2500_TxData
??_CC2500_TxData:	; 0 bytes @ 0x4
	global	??_CC2500_RxData
??_CC2500_RxData:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	CC2500_WriteREG@w_addr
CC2500_WriteREG@w_addr:	; 1 bytes @ 0x4
	global	setDelayOff_GO@value
setDelayOff_GO@value:	; 1 bytes @ 0x4
	global	getDimmerLights_StatusFlag@Status
getDimmerLights_StatusFlag@Status:	; 1 bytes @ 0x4
	global	getDimmerLights_Trigger@Status
getDimmerLights_Trigger@Status:	; 1 bytes @ 0x4
	global	setDimmerLights_TriggerERROR@lights
setDimmerLights_TriggerERROR@lights:	; 1 bytes @ 0x4
	global	setLED_Initialization@led
setLED_Initialization@led:	; 1 bytes @ 0x4
	global	setLED_Main@led
setLED_Main@led:	; 1 bytes @ 0x4
	global	setLoad_StatusOff@load
setLoad_StatusOff@load:	; 1 bytes @ 0x4
	global	setTxData@rf
setTxData@rf:	; 1 bytes @ 0x4
	global	RF_RxDisable@rf
RF_RxDisable@rf:	; 1 bytes @ 0x4
	global	setRF_DimmerLights@lights
setRF_DimmerLights@lights:	; 1 bytes @ 0x4
	global	setSw_Initialization@sw
setSw_Initialization@sw:	; 1 bytes @ 0x4
	global	Sw_AdjFunc@sw
Sw_AdjFunc@sw:	; 1 bytes @ 0x4
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
	global	??_setDimmerLights_ERROR
??_setDimmerLights_ERROR:	; 0 bytes @ 0x5
	global	??_Switch_Initialization
??_Switch_Initialization:	; 0 bytes @ 0x5
	global	?_setRF_Enable
?_setRF_Enable:	; 0 bytes @ 0x5
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
	global	getDimmerLights_StatusFlag@i
getDimmerLights_StatusFlag@i:	; 1 bytes @ 0x5
	global	getDimmerLights_Trigger@i
getDimmerLights_Trigger@i:	; 1 bytes @ 0x5
	global	setLoad_LightsStatus@load
setLoad_LightsStatus@load:	; 1 bytes @ 0x5
	global	setTxData@i
setTxData@i:	; 1 bytes @ 0x5
	global	setRF_Enable@command
setRF_Enable@command:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	??_CC2500_PowerRST
??_CC2500_PowerRST:	; 0 bytes @ 0x6
	global	??_CC2500_FrequencyCabr
??_CC2500_FrequencyCabr:	; 0 bytes @ 0x6
	global	?_setDimmerLights
?_setDimmerLights:	; 0 bytes @ 0x6
	global	??_setRF_Enable
??_setRF_Enable:	; 0 bytes @ 0x6
	global	??_DimmerLights_Close
??_DimmerLights_Close:	; 0 bytes @ 0x6
	global	setBuz_Main@buz
setBuz_Main@buz:	; 1 bytes @ 0x6
	global	CC2500_InitSetREG@temp1
CC2500_InitSetREG@temp1:	; 1 bytes @ 0x6
	global	CC2500_InitPATable@temp
CC2500_InitPATable@temp:	; 1 bytes @ 0x6
	global	setDimmerLights_ERROR@lights
setDimmerLights_ERROR@lights:	; 1 bytes @ 0x6
	global	setDimmerLights@status
setDimmerLights@status:	; 1 bytes @ 0x6
	global	getAD@adcon0
getAD@adcon0:	; 1 bytes @ 0x6
	global	Flash_Memory_Modify@i
Flash_Memory_Modify@i:	; 1 bytes @ 0x6
	global	setRF_Enable@rf
setRF_Enable@rf:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	??_setDimmerLights
??_setDimmerLights:	; 0 bytes @ 0x7
	global	?_getLoad_AD
?_getLoad_AD:	; 0 bytes @ 0x7
	global	?_getTemp_AD
?_getTemp_AD:	; 0 bytes @ 0x7
	global	??_Flash_Memory_Main
??_Flash_Memory_Main:	; 0 bytes @ 0x7
	global	??_Buzzer_Main
??_Buzzer_Main:	; 0 bytes @ 0x7
	global	CC2500_InitSetREG@temp2
CC2500_InitSetREG@temp2:	; 1 bytes @ 0x7
	global	CC2500_InitPATable@loop_d
CC2500_InitPATable@loop_d:	; 1 bytes @ 0x7
	global	getLoad_AD@channel
getLoad_AD@channel:	; 1 bytes @ 0x7
	global	getTemp_AD@channel
getTemp_AD@channel:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_getLoad_AD
??_getLoad_AD:	; 0 bytes @ 0x8
	global	??_getTemp_AD
??_getTemp_AD:	; 0 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	CC2500_InitSetREG@loop_c
CC2500_InitSetREG@loop_c:	; 1 bytes @ 0x8
	global	setDelayOff_GO@sw
setDelayOff_GO@sw:	; 1 bytes @ 0x8
	global	setDimmerLights@lights
setDimmerLights@lights:	; 1 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	??_Sw_OffFunc
??_Sw_OffFunc:	; 0 bytes @ 0x9
	global	?_setBuz
?_setBuz:	; 0 bytes @ 0x9
	global	??_CC2500_PowerOnInitial
??_CC2500_PowerOnInitial:	; 0 bytes @ 0x9
	global	setBuz@count
setBuz@count:	; 1 bytes @ 0x9
	ds	1
	global	setBuz@time
setBuz@time:	; 2 bytes @ 0xA
	ds	1
	global	Sw_OffFunc@sw
Sw_OffFunc@sw:	; 1 bytes @ 0xB
	ds	1
	global	??_setBuz
??_setBuz:	; 0 bytes @ 0xC
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
	global	getTemp_AD@temp
getTemp_AD@temp:	; 1 bytes @ 0xC
	ds	1
	global	setBuz@buz
setBuz@buz:	; 1 bytes @ 0xD
	global	getLoad_AD@load
getLoad_AD@load:	; 1 bytes @ 0xD
	ds	1
	global	??_DlyOff_Main
??_DlyOff_Main:	; 0 bytes @ 0xE
	global	??_MainT
??_MainT:	; 0 bytes @ 0xE
	global	??_setLog_Code
??_setLog_Code:	; 0 bytes @ 0xE
	global	??_setRFSW_Control
??_setRFSW_Control:	; 0 bytes @ 0xE
	global	??_Sw_OnFunc
??_Sw_OnFunc:	; 0 bytes @ 0xE
	global	??_DimmerLights_ERROR
??_DimmerLights_ERROR:	; 0 bytes @ 0xE
	global	getLoad_AD@j
getLoad_AD@j:	; 1 bytes @ 0xE
	global	Sw_OnFunc@sw
Sw_OnFunc@sw:	; 1 bytes @ 0xE
	ds	1
	global	?_setLoad_ERROR
?_setLoad_ERROR:	; 0 bytes @ 0xF
	global	?_setOverTemp_ERROR
?_setOverTemp_ERROR:	; 0 bytes @ 0xF
	global	??_setSw_Main
??_setSw_Main:	; 0 bytes @ 0xF
	global	getLoad_AD@i
getLoad_AD@i:	; 1 bytes @ 0xF
	global	setLoad_ERROR@command
setLoad_ERROR@command:	; 1 bytes @ 0xF
	global	setOverTemp_ERROR@command
setOverTemp_ERROR@command:	; 1 bytes @ 0xF
	global	setLog_Code@rf
setLog_Code@rf:	; 1 bytes @ 0xF
	ds	1
	global	??_setLoad_ERROR
??_setLoad_ERROR:	; 0 bytes @ 0x10
	global	??_setOverTemp_ERROR
??_setOverTemp_ERROR:	; 0 bytes @ 0x10
	global	setRFSW_Control@sw
setRFSW_Control@sw:	; 1 bytes @ 0x10
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x10
	ds	1
	global	setLoad_ERROR@load
setLoad_ERROR@load:	; 1 bytes @ 0x11
	global	setOverTemp_ERROR@temp
setOverTemp_ERROR@temp:	; 1 bytes @ 0x11
	global	setSw_Main@sw
setSw_Main@sw:	; 1 bytes @ 0x11
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x11
	ds	1
	global	??_Switch_Main
??_Switch_Main:	; 0 bytes @ 0x12
	global	??_setLoad_Main
??_setLoad_Main:	; 0 bytes @ 0x12
	global	??_setTemp_Main
??_setTemp_Main:	; 0 bytes @ 0x12
	global	DlyOff_Main@sw
DlyOff_Main@sw:	; 1 bytes @ 0x12
	ds	1
	global	??_DelayOff_Main
??_DelayOff_Main:	; 0 bytes @ 0x13
	ds	2
	global	setTemp_Main@temp
setTemp_Main@temp:	; 1 bytes @ 0x15
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x15
	ds	1
	global	??_Temp_Main
??_Temp_Main:	; 0 bytes @ 0x16
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	setLoad_Main@load
setLoad_Main@load:	; 1 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	ds	1
	global	??_Load_Main
??_Load_Main:	; 0 bytes @ 0x17
	ds	2
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
	global	?_setDimmerLights_Adj
?_setDimmerLights_Adj:	; 0 bytes @ 0x30
	global	??_Flash_Memory_Initialization
??_Flash_Memory_Initialization:	; 0 bytes @ 0x30
	global	setDimmerLights_Adj@status
setDimmerLights_Adj@status:	; 1 bytes @ 0x30
	ds	1
	global	??_setDimmerLights_Adj
??_setDimmerLights_Adj:	; 0 bytes @ 0x31
	global	Flash_Memory_Initialization@i
Flash_Memory_Initialization@i:	; 1 bytes @ 0x31
	ds	1
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x32
	ds	1
	global	setDimmerLights_Adj@lights
setDimmerLights_Adj@lights:	; 1 bytes @ 0x33
	ds	1
	global	??_setDimmerLights_Main
??_setDimmerLights_Main:	; 0 bytes @ 0x34
	global	setDimmerLights_Main@open
setDimmerLights_Main@open:	; 1 bytes @ 0x34
	ds	1
	global	setDimmerLights_Main@close
setDimmerLights_Main@close:	; 1 bytes @ 0x35
	ds	1
	global	setDimmerLights_Main@lights
setDimmerLights_Main@lights:	; 1 bytes @ 0x36
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x36
	ds	1
	global	??_DimmerLights_Main
??_DimmerLights_Main:	; 0 bytes @ 0x37
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
	global	??_setDimmerLights_Initialization
??_setDimmerLights_Initialization:	; 0 bytes @ 0x3F
	global	??_setDimmerLights_AdjRF
??_setDimmerLights_AdjRF:	; 0 bytes @ 0x3F
	ds	1
	global	setDimmerLights_AdjRF@lights
setDimmerLights_AdjRF@lights:	; 1 bytes @ 0x40
	ds	1
	global	??_setRF_DimmerValue
??_setRF_DimmerValue:	; 0 bytes @ 0x41
	global	setDimmerLights_Initialization@lights
setDimmerLights_Initialization@lights:	; 1 bytes @ 0x41
	ds	1
	global	??_DimmerLights_Initialization
??_DimmerLights_Initialization:	; 0 bytes @ 0x42
	ds	1
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
	global	_setRF_Main$16689
_setRF_Main$16689:	; 1 bytes @ 0x4B
	ds	1
	global	??_RF_Main
??_RF_Main:	; 0 bytes @ 0x4C
	global	??_main
??_main:	; 0 bytes @ 0x4C
	ds	1
;;Data sizes: Strings 0, constant 102, data 63, bss 262, persistent 4 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80     77      80
;; BANK1           80      0      78
;; BANK2           80      0      69
;; BANK3           80      0      68
;; BANK4           80      0      37
;; BANK5           80      0      71
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
;; ?___wmul	unsigned int  size(1) Largest target is 0
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
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; DimmerLightsIntr	PTR struct DimmerLights size(1) Largest target is 0
;;		 -> NULL(NULL[0]), 
;;
;; Sw	PTR struct Switch size(1) Largest target is 9
;;		 -> NULL(NULL[0]), Sw3(BANK2[9]), Sw2(BANK2[9]), Sw1(BANK2[9]), 
;;
;; RFSW	PTR struct RFSW size(1) Largest target is 1
;;		 -> NULL(NULL[0]), RFSW3(BANK1[1]), RFSW2(BANK1[1]), RFSW1(BANK1[1]), 
;;
;; RF	PTR struct RF size(1) Largest target is 2
;;		 -> NULL(NULL[0]), RF1(BANK1[2]), 
;;
;; Temp	PTR struct OverTemp size(1) Largest target is 14
;;		 -> NULL(NULL[0]), Temp1(BANK3[14]), 
;;
;; Load	PTR struct OverLoad size(1) Largest target is 71
;;		 -> NULL(NULL[0]), Load1(BANK5[71]), 
;;
;; Timer0	PTR struct Timer0 size(1) Largest target is 7
;;		 -> NULL(NULL[0]), VarTimer0(BANK2[7]), 
;;
;; LED	PTR struct LED size(1) Largest target is 4
;;		 -> NULL(NULL[0]), VarErrLED(BANK1[4]), VarLED3(BANK1[4]), VarLED2(BANK1[4]), 
;;		 -> VarLED1(BANK1[4]), 
;;
;; TMain	PTR struct TMain size(1) Largest target is 16
;;		 -> NULL(NULL[0]), VarTMain(BANK3[16]), 
;;
;; Dimmer	PTR struct Dimmer size(1) Largest target is 3
;;		 -> NULL(NULL[0]), Dimmer1(BANK1[3]), 
;;
;; Memory	PTR struct FlashMemory size(1) Largest target is 37
;;		 -> NULL(NULL[0]), VarMemory(BANK4[37]), 
;;
;; DimmerLights33	PTR struct DimmerLights size(1) Largest target is 10
;;		 -> NULL(NULL[0]), DimmerLights3(BANK2[10]), 
;;
;; DimmerLights22	PTR struct DimmerLights size(1) Largest target is 10
;;		 -> NULL(NULL[0]), DimmerLights2(BANK2[10]), 
;;
;; DimmerLights11	PTR struct DimmerLights size(1) Largest target is 10
;;		 -> NULL(NULL[0]), DimmerLights1(BANK2[10]), 
;;
;; DimmerLights	PTR struct DimmerLights size(1) Largest target is 10
;;		 -> NULL(NULL[0]), DimmerLights3(BANK2[10]), DimmerLights2(BANK2[10]), DimmerLights1(BANK2[10]), 
;;
;; Product	PTR struct Product size(1) Largest target is 26
;;		 -> NULL(NULL[0]), VarProduct(BANK3[26]), 
;;
;; DelayOff	PTR struct DelayOff size(2) Largest target is 5
;;		 -> NULL(NULL[0]), DlySw3(BANK2[5]), DlySw2(BANK1[5]), DlySw1(BANK1[5]), 
;;
;; Buz	PTR struct Buzzer size(1) Largest target is 12
;;		 -> NULL(NULL[0]), Buz1(BANK3[12]), 
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
;;   _TMR0_ISR->i1_setLoad_StatusOff
;;   i1_setLoad_StatusOff->i1_LoadPointSelect
;;   _setRF_ReceiveGO->i1_RfPointSelect
;;
;; Critical Paths under _main in BANK0
;;
;;   _RF_Main->_setRF_Main
;;   _setRF_Main->_getRxData
;;   _getRxData->_setControl_Lights_Table
;;   _setControl_Lights_Table->_setRFSW_AdjControl
;;   _Load_Main->_setLoad_Main
;;   _Temp_Main->_setTemp_Main
;;   _setRFSW_AdjControl->_setRF_DimmerValue
;;   _setTemp_Main->_setOverTemp_ERROR
;;   _setLoad_Main->_setLoad_ERROR
;;   _DimmerLights_Main->_setDimmerLights_Main
;;   _setRF_DimmerValue->_setDimmerLights_AdjRF
;;   _setOverTemp_ERROR->_DimmerLights_ERROR
;;   _setLoad_ERROR->_DimmerLights_ERROR
;;   _Switch_Main->_setSw_Main
;;   _Flash_Memory_Main->_Flash_Memory_Modify
;;   _MainT->_setBuz
;;   _setDimmerLights_Main->_setDimmerLights_Adj
;;   _DimmerLights_Initialization->_setDimmerLights_Initialization
;;   _setSw_Main->_Sw_OnFunc
;;   _Flash_Memory_Modify->_Flash_Memory_Read
;;   _setRF_Enable->_RF_RxDisable
;;   _Switch_Initialization->_setSw_Initialization
;;   _Flash_Memory_Initialization->_setPercentValue
;;   _LED_Initialization->_setLED_Initialization
;;   _setDimmerLights_AdjRF->_getPercentValue
;;   _DimmerLights_ERROR->_setBuz
;;   _setDimmerLights_Adj->_setPercentValue
;;   _setDimmerLights_Initialization->_getPercentValue
;;   _DelayOff_Main->_DlyOff_Main
;;   _CC2500_PowerOnInitial->_CC2500_InitSetREG
;;   _Sw_OffFunc->_setDelayOff_GO
;;   _Sw_AdjFunc->_setRFSW_Status
;;   _Sw_AdjFunc->_setDimmerLights_TriggerAdj
;;   _Sw_AdjFunc->_setDimmerLights_AdjGo
;;   _Sw_OnFunc->_setBuz
;;   _setSw_Initialization->_setLED
;;   _setRFSW_Control->_setBuz
;;   _setLog_Code->_setBuz
;;   _RF_RxDisable->_CC2500_WriteCommand
;;   _Load_Initialization->_setLoad_Initialization
;;   _Temp_Initialization->_setTemp_Initialization
;;   _LED_Main->_setLED_Main
;;   _setLED_Initialization->_setLED
;;   _setPercentValue->___ftdiv
;;   _setDimmerLights_ERROR->_setLoad_StatusOff
;;   _setDimmerLights->_setLoad_LightsStatus
;;   _DimmerLights_Close->_getDimmerLights_StatusFlag
;;   _getPercentValue->___ftadd
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
;;   _Buzzer_Main->_setBuz_Main
;;   _setBuz_Initialization->_setBuz_Enable
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   ___ftadd->___ftmul
;;   _setRF_Learn->_RfPointSelect
;;   _setTemp_Initialization->_TempPointSelect
;;   _getLoad_Safe->_LoadPointSelect
;;   _getTemp_Safe->_TempPointSelect
;;   _setLoad_Initialization->_LoadPointSelect
;;   _setLoad_Initialization->_setLoad_AH_AL_Restore
;;   _setSw_Enable->_SwPointSelect
;;   _setLoad_Enable->_LoadPointSelect
;;   _setTemp_Enable->_TempPointSelect
;;   _getTemp_AD->_getAD
;;   _getLoad_AD->_getAD
;;   _RF_Initialization->_setRF_Initialization
;;   _Mcu_Initialization->_TMR0_Set
;;   _setLED_Main->_LedPointSelect
;;   _setDimmer_LoadERROR->_DimmerPointSelect
;;   _setDimmer_TempERROR->_DimmerPointSelect
;;   _setDimmerLights_TriggerAdj->_DimmerLightsPointSelect
;;   _setDimmerLights_AdjGo->_DimmerLightsPointSelect
;;   _setLoad_LightsStatus->_LoadPointSelect
;;   _setLoad_StatusOn->_LoadPointSelect
;;   _setLED->_LedPointSelect
;;   _setLoad_StatusOff->_LoadPointSelect
;;   _setDimmerLights_TriggerERROR->_DimmerLightsPointSelect
;;   _getDimmer_PFERROR->_DimmerPointSelect
;;   _getDimmer_LoadERROR->_DimmerPointSelect
;;   _getDimmer_TempERROR->_DimmerPointSelect
;;   _getDimmerLights_Trigger->_DimmerLightsPointSelect
;;   _setDimmerLights_Close->_DimmerLightsPointSelect
;;   _setDimmerLights_Open->_DimmerLightsPointSelect
;;   _setLoad_GO->_LoadPointSelect
;;   _getDimmerLights_StatusFlag->_DimmerLightsPointSelect
;;   _setDimmer_Detect->_DimmerPointSelect
;;   _getDimmer_Detect->_DimmerPointSelect
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
;;   _setBuz->___awdiv
;;   _setBuz_Enable->_BuzPointSelect
;;   _setBuz_Main->_BuzPointSelect
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0   33134
;;                                             76 BANK0      1     1      0
;;               _MainT_Initialization
;;                 _Mcu_Initialization
;;        _Flash_Memory_Initialization
;;                 _LED_Initialization
;;              _Buzzer_Initialization
;;                _Temp_Initialization
;;                _Load_Initialization
;;            _DelayOff_Initialization
;;        _DimmerLights_Initialization
;;              _Switch_Initialization
;;                  _RF_Initialization
;;              _CC2500_PowerOnInitial
;;                         _getLoad_AD
;;                         _getTemp_AD
;;                              _MainT
;;                  _Flash_Memory_Main
;;                        _Buzzer_Main
;;                           _LED_Main
;;                          _Temp_Main
;;                          _Load_Main
;;                  _DimmerLights_Main
;;                        _Switch_Main
;;                            _RF_Main
;;                      _DelayOff_Main
;; ---------------------------------------------------------------------------------
;; (1) _RF_Main                                              0     0      0    8409
;;                         _setRF_Main
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Main                                           3     3      0    8409
;;                                             73 BANK0      3     3      0
;;                      _RfPointSelect
;;                       _RF_RxDisable
;;                      _CC2500_RxData
;;                          _getRxData
;;                      _CC2500_TxData
;;                _CC2500_WriteCommand
;;                          _setINT_GO
;; ---------------------------------------------------------------------------------
;; (3) _getRxData                                            2     2      0    7571
;;                                             72 BANK0      1     1      0
;;                      _RfPointSelect
;;                        _setLog_Code
;;            _setControl_Lights_Table
;; ---------------------------------------------------------------------------------
;; (4) _setControl_Lights_Table                              1     1      0    6962
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
;; (1) _Load_Main                                            0     0      0    3580
;;                       _setLoad_Main
;; ---------------------------------------------------------------------------------
;; (1) _Temp_Main                                            0     0      0    3038
;;                       _setTemp_Main
;; ---------------------------------------------------------------------------------
;; (5) _setRFSW_AdjControl                                   3     3      0    3135
;;                                             68 BANK0      3     3      0
;;                    _RfSWPointSelect
;;                  _setRF_DimmerValue
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Main                                         4     4      0    3038
;;                                             18 BANK0      4     4      0
;;                    _TempPointSelect
;;                       _getLoad_Safe
;;                  _setOverTemp_ERROR
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_Main                                         6     6      0    3580
;;                                             18 BANK0      5     5      0
;;                    _LoadPointSelect
;;                      _setLoad_ERROR
;;                            ___lwdiv
;;                             ___wmul
;;               _setDimmerLights_Open
;;              _setLoad_AH_AL_Restore
;;                       _getTemp_Safe
;; ---------------------------------------------------------------------------------
;; (1) _DimmerLights_Main                                    0     0      0    4446
;;               _setDimmerLights_Main
;;                 _DimmerLights_Close
;; ---------------------------------------------------------------------------------
;; (6) _setRF_DimmerValue                                    3     3      0    2847
;;                                             65 BANK0      3     3      0
;;              _setDimmerLights_AdjRF
;; ---------------------------------------------------------------------------------
;; (3) _setOverTemp_ERROR                                    3     2      1    2972
;;                                             15 BANK0      3     2      1
;;                    _TempPointSelect
;;                _setDimmer_TempERROR
;;                 _DimmerLights_ERROR
;;                             _setLED
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (3) _setLoad_ERROR                                        3     2      1    2994
;;                                             15 BANK0      3     2      1
;;                    _LoadPointSelect
;;                _setDimmer_LoadERROR
;;                 _DimmerLights_ERROR
;;                             _setLED
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (1) _Switch_Main                                          0     0      0    3719
;;                         _setSw_Main
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Main                                    0     0      0     227
;;                _Flash_Memory_Modify
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                1     1      0    1009
;;                                             14 BANK0      1     1      0
;;                     _setTemp_Enable
;;                     _setLoad_Enable
;;                             _setBuz
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (2) _setDimmerLights_Main                                 3     3      0    4111
;;                                             52 BANK0      3     3      0
;;            _DimmerLightsPointSelect
;;               _setDimmerLights_Open
;;              _setDimmerLights_Close
;;                    _setDimmerLights
;;            _getDimmerLights_Trigger
;;                _setDimmerLights_Adj
;;                             _setBuz
;; ---------------------------------------------------------------------------------
;; (1) _DimmerLights_Initialization                          1     1      0    2803
;;                                             66 BANK0      1     1      0
;;     _setDimmerLights_Initialization
;; ---------------------------------------------------------------------------------
;; (2) _setSw_Main                                           3     3      0    3719
;;                                             15 BANK0      3     3      0
;;                      _SwPointSelect
;;                          _Sw_OnFunc
;;                         _Sw_AdjFunc
;;                        _setRF_Learn
;;                             _setBuz
;;                         _Sw_OffFunc
;; ---------------------------------------------------------------------------------
;; (2) _Flash_Memory_Modify                                  3     3      0     227
;;                                              4 BANK0      3     3      0
;;                  _Flash_Memory_Read
;;               _Flash_Memory_Erasing
;;                 _Flash_Memory_Write
;; ---------------------------------------------------------------------------------
;; (4) _setRF_Enable                                         2     1      1     268
;;                                              5 BANK0      2     1      1
;;                      _RfPointSelect
;;                _CC2500_WriteCommand
;;                       _RF_RxDisable
;; ---------------------------------------------------------------------------------
;; (1) _Switch_Initialization                                0     0      0     484
;;                         _TouchPower
;;               _setSw_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Initialization                          2     2      0    1446
;;                                             48 BANK0      2     2      0
;;                  _Flash_Memory_Read
;;                    _setPercentValue
;;                 _Flash_Memory_Write
;; ---------------------------------------------------------------------------------
;; (1) _LED_Initialization                                   0     0      0     594
;;              _setLED_Initialization
;; ---------------------------------------------------------------------------------
;; (7) _setDimmerLights_AdjRF                                2     2      0    2781
;;                                             63 BANK0      2     2      0
;;            _DimmerLightsPointSelect
;;                    _getPercentValue
;; ---------------------------------------------------------------------------------
;; (4) _DimmerLights_ERROR                                   1     1      0    2000
;;                                             14 BANK0      1     1      0
;;                _getDimmer_TempERROR
;;         _getDimmerLights_StatusFlag
;;                             _setBuz
;;              _setDimmerLights_ERROR
;;                _getDimmer_LoadERROR
;;                  _getDimmer_PFERROR
;;       _setDimmerLights_TriggerERROR
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Adj                                  4     3      1    1685
;;                                             48 BANK0      4     3      1
;;            _DimmerLightsPointSelect
;;                  _setLoad_StatusOff
;;                 _setRF_DimmerLights
;;                          _setTxData
;;                    _setPercentValue
;; ---------------------------------------------------------------------------------
;; (2) _setDimmerLights_Initialization                       3     3      0    2803
;;                                             63 BANK0      3     3      0
;;            _DimmerLightsPointSelect
;;                    _getPercentValue
;; ---------------------------------------------------------------------------------
;; (1) _DelayOff_Main                                        0     0      0    1449
;;                        _DlyOff_Main
;; ---------------------------------------------------------------------------------
;; (1) _CC2500_PowerOnInitial                                0     0      0     909
;;                    _CC2500_PowerRST
;;                  _CC2500_InitSetREG
;;                 _CC2500_InitPATable
;;                 _CC2500_ClearTXFIFO
;;                 _CC2500_ClearRXFIFO
;;               _CC2500_FrequencyCabr
;;                   _CC2500_SIDLEMode
;; ---------------------------------------------------------------------------------
;; (1) _Buzzer_Initialization                                0     0      0      66
;;              _setBuz_Initialization
;; ---------------------------------------------------------------------------------
;; (3) _Sw_OffFunc                                           3     3      0    1265
;;                                              9 BANK0      3     3      0
;;         _setDimmerLights_TriggerAdj
;;              _setDimmerLights_AdjGo
;;                 _setRF_DimmerLights
;;                          _setTxData
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                     _setDelayOff_GO
;; ---------------------------------------------------------------------------------
;; (3) _Sw_AdjFunc                                           1     1      0     396
;;                                              4 BANK0      1     1      0
;;                     _setRFSW_Status
;;         _setDimmerLights_TriggerAdj
;;              _setDimmerLights_AdjGo
;; ---------------------------------------------------------------------------------
;; (3) _Sw_OnFunc                                            1     1      0    1251
;;                                             14 BANK0      1     1      0
;;                             _setBuz
;;                     _setRFSW_Status
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                 _setRF_DimmerLights
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (2) _setSw_Initialization                                 1     1      0     484
;;                                              4 BANK0      1     1      0
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (5) _setRFSW_Control                                      3     3      0    1852
;;                                             14 BANK0      3     3      0
;;                    _RfSWPointSelect
;;                     _setDelayOff_GO
;;                       _setSw_Status
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                 _setRF_DimmerLights
;;                             _setBuz
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (4) _setLog_Code                                          2     2      0     565
;;                                             14 BANK0      2     2      0
;;                      _RfPointSelect
;;                             _setBuz
;; ---------------------------------------------------------------------------------
;; (3) _RF_RxDisable                                         1     1      0     134
;;                                              4 BANK0      1     1      0
;;                      _RfPointSelect
;;                _CC2500_WriteCommand
;;                          _setINT_GO
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Erasing                                 0     0      0       0
;;                _Flash_Memory_Unlock
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Write                                   2     2      0      90
;;                                              0 BANK0      2     2      0
;;                _Flash_Memory_Unlock
;; ---------------------------------------------------------------------------------
;; (1) _Load_Initialization                                  0     0      0     156
;;             _setLoad_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Temp_Initialization                                  0     0      0      22
;;             _setTemp_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _LED_Main                                             0     0      0     198
;;                        _setLED_Main
;; ---------------------------------------------------------------------------------
;; (2) _setLED_Initialization                                1     1      0     594
;;                                              4 BANK0      1     1      0
;;                     _LedPointSelect
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (4) _setPercentValue                                      4     4      0    1109
;;                                             44 BANK0      4     4      0
;;                            ___ftdiv
;;                           ___awtoft
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights_ERROR                                2     2      0     990
;;                                              5 BANK0      2     2      0
;;            _DimmerLightsPointSelect
;;                  _setLoad_StatusOff
;;                             _setLED
;;                       _setSw_Status
;;                     _setRFSW_Status
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights                                      3     2      1    1056
;;                                              6 BANK0      3     2      1
;;            _DimmerLightsPointSelect
;;                             _setLED
;;                   _setLoad_StatusOn
;;                      _setLoad_Count
;;                   _setDimmer_Detect
;;                         _setLoad_GO
;;               _setLoad_LightsStatus
;; ---------------------------------------------------------------------------------
;; (2) _DimmerLights_Close                                   0     0      0     335
;;                   _getDimmer_Detect
;;                   _setDimmer_Detect
;;         _getDimmerLights_StatusFlag
;;                         _setLoad_GO
;; ---------------------------------------------------------------------------------
;; (8) _getPercentValue                                      6     6      0    2693
;;                                             57 BANK0      6     6      0
;;                            ___ftdiv
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (2) _DlyOff_Main                                          5     5      0    1449
;;                                             14 BANK0      5     5      0
;;                _DelayOffPointSelect
;;                       _setSw_Status
;;                     _setRFSW_Status
;;                 _setRF_DimmerLights
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                          _setTxData
;;                             _setBuz
;; ---------------------------------------------------------------------------------
;; (1) _DelayOff_Initialization                              0     0      0      88
;;              _DlyOff_Initialization
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_SIDLEMode                                     0     0      0      68
;;                _CC2500_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_FrequencyCabr                                 0     0      0     160
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
;; (3) _CC2500_RxData                                        2     2      0     386
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
;; (1) _Buzzer_Main                                          0     0      0      88
;;                        _setBuz_Main
;; ---------------------------------------------------------------------------------
;; (2) _setBuz_Initialization                                1     1      0      66
;;                      _setBuz_Enable
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
;; (3) _setRF_Learn                                          2     1      1      66
;;                                              2 BANK0      2     1      1
;;                      _RfPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Initialization                               1     1      0      22
;;                                              1 BANK0      1     1      0
;;                    _TempPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getLoad_Safe                                         2     2      0      44
;;                                              2 BANK0      2     2      0
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getTemp_Safe                                         1     1      0      22
;;                                              1 BANK0      1     1      0
;;                    _TempPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_Initialization                               1     1      0     156
;;                                              2 BANK0      1     1      0
;;                    _LoadPointSelect
;;              _setLoad_AH_AL_Restore
;; ---------------------------------------------------------------------------------
;; (4) _Flash_Memory_Unlock                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _setSw_Enable                                         2     1      1     110
;;                                              2 BANK0      2     1      1
;;                      _SwPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_Enable                                       2     1      1      66
;;                                              2 BANK0      2     1      1
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Enable                                       2     1      1      44
;;                                              1 BANK0      2     1      1
;;                    _TempPointSelect
;; ---------------------------------------------------------------------------------
;; (1) _getTemp_AD                                           6     5      1      88
;;                                              7 BANK0      6     5      1
;;                    _TempPointSelect
;;                              _getAD
;; ---------------------------------------------------------------------------------
;; (1) _getLoad_AD                                           9     8      1     315
;;                                              7 BANK0      9     8      1
;;                    _LoadPointSelect
;;                              _getAD
;; ---------------------------------------------------------------------------------
;; (1) _RF_Initialization                                    0     0      0       0
;;               _setRF_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Mcu_Initialization                                   1     1      0       0
;;                                              1 BANK0      1     1      0
;;                             _IO_Set
;;                           _TMR0_Set
;;                            _ADC_Set
;;                            _INT_Set
;;                            _IOC_Set
;; ---------------------------------------------------------------------------------
;; (2) _setLED_Main                                          3     3      0     198
;;                                              2 BANK0      3     3      0
;;                     _LedPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmer_LoadERROR                                  2     1      1      66
;;                                              2 BANK0      2     1      1
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmer_TempERROR                                  2     1      1      66
;;                                              2 BANK0      2     1      1
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmerLights_TriggerAdj                           2     1      1     110
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmerLights_AdjGo                                2     1      1     110
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_LightsStatus                                 4     2      2     176
;;                                              2 BANK0      4     2      2
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_StatusOn                                     2     1      1      66
;;                                              2 BANK0      2     1      1
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLED                                               2     1      1     462
;;                                              2 BANK0      2     1      1
;;                     _LedPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setLoad_StatusOff                                    3     1      2     132
;;                                              2 BANK0      3     1      2
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights_TriggerERROR                         3     2      1     198
;;                                              2 BANK0      3     2      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _getDimmer_PFERROR                                    1     1      0      44
;;                                              2 BANK0      1     1      0
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _getDimmer_LoadERROR                                  1     1      0      44
;;                                              2 BANK0      1     1      0
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _getDimmer_TempERROR                                  1     1      0      44
;;                                              2 BANK0      1     1      0
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getDimmerLights_Trigger                              4     4      0     159
;;                                              2 BANK0      4     4      0
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Close                                2     1      1     110
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Open                                 2     1      1     110
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_GO                                           2     1      1      66
;;                                              2 BANK0      2     1      1
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getDimmerLights_StatusFlag                           4     4      0     159
;;                                              2 BANK0      4     4      0
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setDimmer_Detect                                     2     1      1      66
;;                                              2 BANK0      2     1      1
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getDimmer_Detect                                     2     2      0      44
;;                                              2 BANK0      2     2      0
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setDelayOff_GO                                       6     4      2     359
;;                                              3 BANK0      6     4      2
;;                _DelayOffPointSelect
;;                     _DelayTimejudge
;; ---------------------------------------------------------------------------------
;; (3) _setTxData                                            4     4      0     134
;;                                              2 BANK0      4     4      0
;;                      _RfPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Switch                               2     1      1     110
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Trigger                              2     1      1     110
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setRFSW_Status                                       2     1      1     110
;;                                              2 BANK0      2     1      1
;;                    _RfSWPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setSw_Status                                         2     1      1     110
;;                                              2 BANK0      2     1      1
;;                      _SwPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _DlyOff_Initialization                                1     1      0      88
;;                                              1 BANK0      1     1      0
;;                _DelayOffPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_WriteREG                                      3     2      1      90
;;                                              2 BANK0      3     2      1
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (2) _CC2500_PowerRST                                      1     1      0     138
;;                                              6 BANK0      1     1      0
;;                      _DelayTime_1us
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (4) _setRF_RxStatus                                       2     1      1      66
;;                                              2 BANK0      2     1      1
;;                      _RfPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_ReadStatus                                    2     2      0     114
;;                                              2 BANK0      2     2      0
;;                   _CC2500_WriteByte
;;                    _CC2500_ReadByte
;; ---------------------------------------------------------------------------------
;; (3) _CC2500_WriteCommand                                  2     2      0      68
;;                                              2 BANK0      2     2      0
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (3) _setBuz                                               5     2      3     521
;;                                              9 BANK0      5     2      3
;;                     _BuzPointSelect
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (3) _setBuz_Enable                                        2     1      1      66
;;                                              2 BANK0      2     1      1
;;                     _BuzPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setBuz_Main                                          5     5      0      88
;;                                              2 BANK0      5     5      0
;;                     _BuzPointSelect
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              9     5      4     300
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (9) ___fttol                                             14    10      4     252
;;                                              8 BANK0     14    10      4
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (10) ___ftpack                                            8     3      5     209
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     162
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (4) _SwPointSelect                                        2     2      0      66
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _TouchPower                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _RfSWPointSelect                                      2     2      0      66
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Initialization                                 2     2      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _RfPointSelect                                        2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _TempPointSelect                                      2     2      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _setLoad_AH_AL_Restore                                3     3      0      90
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (7) _LoadPointSelect                                      2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _Flash_Memory_Read                                    4     4      0      47
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _getAD                                                7     5      2      44
;;                                              0 BANK0      7     5      2
;; ---------------------------------------------------------------------------------
;; (3) _setINT_GO                                            1     1      0      22
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
;; (1) _MainT_Initialization                                 1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (7) _LedPointSelect                                       2     2      0      88
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (7) _DimmerPointSelect                                    2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_Count                                        3     2      1      44
;;                                              0 BANK0      2     1      1
;; ---------------------------------------------------------------------------------
;; (4) _DimmerLightsPointSelect                              2     2      0      66
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (7) _DelayTimejudge                                       3     3      0     161
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _setRF_DimmerLights                                   5     4      1     156
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) _DelayOffPointSelect                                  1     1      0      66
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayTime_1us                                        6     4      2      92
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_ReadByte                                      2     2      0      46
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _CC2500_WriteByte                                     2     2      0      46
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _BuzPointSelect                                       2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 10
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (11) _ISR                                                 1     1      0     555
;;                                              9 COMMON     1     1      0
;;                            _IOC_ISR
;;                           _TMR0_ISR
;;                            _INT_ISR
;; ---------------------------------------------------------------------------------
;; (12) _INT_ISR                                             0     0      0     117
;;                    _setRF_ReceiveGO
;; ---------------------------------------------------------------------------------
;; (12) _TMR0_ISR                                            4     4      0     438
;;                                              5 COMMON     4     4      0
;;                i1_setLoad_StatusOff
;; ---------------------------------------------------------------------------------
;; (13) i1_setLoad_StatusOff                                 3     1      2     438
;;                                              2 COMMON     3     1      2
;;                  i1_LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (13) _setRF_ReceiveGO                                     2     1      1     117
;;                                              2 COMMON     2     1      1
;;                    i1_RfPointSelect
;; ---------------------------------------------------------------------------------
;; (12) _IOC_ISR                                             1     1      0       0
;;                                              0 COMMON     1     1      0
;;                   _setDimmerReClock
;; ---------------------------------------------------------------------------------
;; (14) i1_RfPointSelect                                     2     2      0      73
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (14) i1_LoadPointSelect                                   2     2      0      73
;;                                              0 COMMON     2     2      0
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
;;     _setBuz_Initialization
;;       _setBuz_Enable
;;         _BuzPointSelect
;;   _Temp_Initialization
;;     _setTemp_Initialization
;;       _TempPointSelect
;;   _Load_Initialization
;;     _setLoad_Initialization
;;       _LoadPointSelect
;;       _setLoad_AH_AL_Restore
;;   _DelayOff_Initialization
;;     _DlyOff_Initialization
;;       _DelayOffPointSelect
;;   _DimmerLights_Initialization
;;     _setDimmerLights_Initialization
;;       _DimmerLightsPointSelect
;;       _getPercentValue
;;         ___ftdiv
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___awtoft
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___ftadd
;;           ___ftpack
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___fttol
;;           ___ftpack (ARG)
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
;;     _LoadPointSelect
;;     _getAD
;;   _getTemp_AD
;;     _TempPointSelect
;;     _getAD
;;   _MainT
;;     _setTemp_Enable
;;       _TempPointSelect
;;     _setLoad_Enable
;;       _LoadPointSelect
;;     _setBuz
;;       _BuzPointSelect
;;       ___awdiv
;;     _setSw_Enable
;;       _SwPointSelect
;;     _setRF_Enable
;;       _RfPointSelect
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;       _RF_RxDisable
;;         _RfPointSelect
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;         _setINT_GO
;;   _Flash_Memory_Main
;;     _Flash_Memory_Modify
;;       _Flash_Memory_Read
;;       _Flash_Memory_Erasing
;;         _Flash_Memory_Unlock
;;       _Flash_Memory_Write
;;         _Flash_Memory_Unlock
;;   _Buzzer_Main
;;     _setBuz_Main
;;       _BuzPointSelect
;;   _LED_Main
;;     _setLED_Main
;;       _LedPointSelect
;;   _Temp_Main
;;     _setTemp_Main
;;       _TempPointSelect
;;       _getLoad_Safe
;;         _LoadPointSelect
;;       _setOverTemp_ERROR
;;         _TempPointSelect
;;         _setDimmer_TempERROR
;;           _DimmerPointSelect
;;         _DimmerLights_ERROR
;;           _getDimmer_TempERROR
;;             _DimmerPointSelect
;;           _getDimmerLights_StatusFlag
;;             _DimmerLightsPointSelect
;;           _setBuz
;;             _BuzPointSelect
;;             ___awdiv
;;           _setDimmerLights_ERROR
;;             _DimmerLightsPointSelect
;;             _setLoad_StatusOff
;;               _LoadPointSelect
;;             _setLED
;;               _LedPointSelect
;;             _setSw_Status
;;               _SwPointSelect
;;             _setRFSW_Status
;;               _RfSWPointSelect
;;           _getDimmer_LoadERROR
;;             _DimmerPointSelect
;;           _getDimmer_PFERROR
;;             _DimmerPointSelect
;;           _setDimmerLights_TriggerERROR
;;             _DimmerLightsPointSelect
;;         _setLED
;;           _LedPointSelect
;;         _setSw_Enable
;;           _SwPointSelect
;;         _setRF_Enable
;;           _RfPointSelect
;;           _CC2500_WriteCommand
;;             _CC2500_WriteByte
;;           _RF_RxDisable
;;             _RfPointSelect
;;             _CC2500_WriteCommand
;;               _CC2500_WriteByte
;;             _setINT_GO
;;   _Load_Main
;;     _setLoad_Main
;;       _LoadPointSelect
;;       _setLoad_ERROR
;;         _LoadPointSelect
;;         _setDimmer_LoadERROR
;;           _DimmerPointSelect
;;         _DimmerLights_ERROR
;;           _getDimmer_TempERROR
;;             _DimmerPointSelect
;;           _getDimmerLights_StatusFlag
;;             _DimmerLightsPointSelect
;;           _setBuz
;;             _BuzPointSelect
;;             ___awdiv
;;           _setDimmerLights_ERROR
;;             _DimmerLightsPointSelect
;;             _setLoad_StatusOff
;;               _LoadPointSelect
;;             _setLED
;;               _LedPointSelect
;;             _setSw_Status
;;               _SwPointSelect
;;             _setRFSW_Status
;;               _RfSWPointSelect
;;           _getDimmer_LoadERROR
;;             _DimmerPointSelect
;;           _getDimmer_PFERROR
;;             _DimmerPointSelect
;;           _setDimmerLights_TriggerERROR
;;             _DimmerLightsPointSelect
;;         _setLED
;;           _LedPointSelect
;;         _setSw_Enable
;;           _SwPointSelect
;;         _setRF_Enable
;;           _RfPointSelect
;;           _CC2500_WriteCommand
;;             _CC2500_WriteByte
;;           _RF_RxDisable
;;             _RfPointSelect
;;             _CC2500_WriteCommand
;;               _CC2500_WriteByte
;;             _setINT_GO
;;       ___lwdiv
;;       ___wmul
;;       _setDimmerLights_Open
;;         _DimmerLightsPointSelect
;;       _setLoad_AH_AL_Restore
;;       _getTemp_Safe
;;         _TempPointSelect
;;   _DimmerLights_Main
;;     _setDimmerLights_Main
;;       _DimmerLightsPointSelect
;;       _setDimmerLights_Open
;;         _DimmerLightsPointSelect
;;       _setDimmerLights_Close
;;         _DimmerLightsPointSelect
;;       _setDimmerLights
;;         _DimmerLightsPointSelect
;;         _setLED
;;           _LedPointSelect
;;         _setLoad_StatusOn
;;           _LoadPointSelect
;;         _setLoad_Count
;;         _setDimmer_Detect
;;           _DimmerPointSelect
;;         _setLoad_GO
;;           _LoadPointSelect
;;         _setLoad_LightsStatus
;;           _LoadPointSelect
;;       _getDimmerLights_Trigger
;;         _DimmerLightsPointSelect
;;       _setDimmerLights_Adj
;;         _DimmerLightsPointSelect
;;         _setLoad_StatusOff
;;           _LoadPointSelect
;;         _setRF_DimmerLights
;;         _setTxData
;;           _RfPointSelect
;;         _setPercentValue
;;           ___ftdiv
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;           ___awtoft
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;           ___fttol
;;             ___ftpack (ARG)
;;       _setBuz
;;         _BuzPointSelect
;;         ___awdiv
;;     _DimmerLights_Close
;;       _getDimmer_Detect
;;         _DimmerPointSelect
;;       _setDimmer_Detect
;;         _DimmerPointSelect
;;       _getDimmerLights_StatusFlag
;;         _DimmerLightsPointSelect
;;       _setLoad_GO
;;         _LoadPointSelect
;;   _Switch_Main
;;     _setSw_Main
;;       _SwPointSelect
;;       _Sw_OnFunc
;;         _setBuz
;;           _BuzPointSelect
;;           ___awdiv
;;         _setRFSW_Status
;;           _RfSWPointSelect
;;         _setDimmerLights_Trigger
;;           _DimmerLightsPointSelect
;;         _setDimmerLights_Switch
;;           _DimmerLightsPointSelect
;;         _setRF_DimmerLights
;;         _setTxData
;;           _RfPointSelect
;;       _Sw_AdjFunc
;;         _setRFSW_Status
;;           _RfSWPointSelect
;;         _setDimmerLights_TriggerAdj
;;           _DimmerLightsPointSelect
;;         _setDimmerLights_AdjGo
;;           _DimmerLightsPointSelect
;;       _setRF_Learn
;;         _RfPointSelect
;;       _setBuz
;;         _BuzPointSelect
;;         ___awdiv
;;       _Sw_OffFunc
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
;;       _getRxData
;;         _RfPointSelect
;;         _setLog_Code
;;           _RfPointSelect
;;           _setBuz
;;             _BuzPointSelect
;;             ___awdiv
;;         _setControl_Lights_Table
;;           _RfPointSelect
;;           _setDimmerLights
;;             _DimmerLightsPointSelect
;;             _setLED
;;               _LedPointSelect
;;             _setLoad_StatusOn
;;               _LoadPointSelect
;;             _setLoad_Count
;;             _setDimmer_Detect
;;               _DimmerPointSelect
;;             _setLoad_GO
;;               _LoadPointSelect
;;             _setLoad_LightsStatus
;;               _LoadPointSelect
;;           _setRFSW_Status
;;             _RfSWPointSelect
;;           _setSw_Status
;;             _SwPointSelect
;;           _setBuz
;;             _BuzPointSelect
;;             ___awdiv
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
;;               _BuzPointSelect
;;               ___awdiv
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
;;       _CC2500_TxData
;;         _CC2500_WriteByte
;;         _CC2500_WriteCommand
;;           _CC2500_WriteByte
;;       _CC2500_WriteCommand
;;         _CC2500_WriteByte
;;       _setINT_GO
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
;;         _BuzPointSelect
;;         ___awdiv
;;
;; _ISR (ROOT)
;;   _IOC_ISR
;;     _setDimmerReClock
;;   _TMR0_ISR
;;     i1_setLoad_StatusOff
;;       i1_LoadPointSelect
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
;;COMMON               E      A       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0      12       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4D      50       5      100.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BANK1               50      0      4E       7       97.5%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BITBANK2            50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BANK2               50      0      45       9       86.3%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITBANK3            50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK3               50      0      44      11       85.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BITBANK4            50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BANK4               50      0      25      13       46.3%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITBANK5            50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BANK5               50      0      47      15       88.8%
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
;;ABS                  0      0     1A1      20        0.0%
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
;;DATA                 0      0     1B3      31        0.0%
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
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:   14
;; This function calls:
;;		_MainT_Initialization
;;		_Mcu_Initialization
;;		_Flash_Memory_Initialization
;;		_LED_Initialization
;;		_Buzzer_Initialization
;;		_Temp_Initialization
;;		_Load_Initialization
;;		_DelayOff_Initialization
;;		_DimmerLights_Initialization
;;		_Switch_Initialization
;;		_RF_Initialization
;;		_CC2500_PowerOnInitial
;;		_getLoad_AD
;;		_getTemp_AD
;;		_MainT
;;		_Flash_Memory_Main
;;		_Buzzer_Main
;;		_LED_Main
;;		_Temp_Main
;;		_Load_Main
;;		_DimmerLights_Main
;;		_Switch_Main
;;		_RF_Main
;;		_DelayOff_Main
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
; Regs used in _main: [allreg]
	line	8
	
l25556:	
;main.c: 8: MainT_Initialization();
	fcall	_MainT_Initialization
	line	9
;main.c: 9: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	10
;main.c: 10: Flash_Memory_Initialization();
	fcall	_Flash_Memory_Initialization
	line	11
;main.c: 11: LED_Initialization();
	fcall	_LED_Initialization
	line	12
;main.c: 12: Buzzer_Initialization();
	fcall	_Buzzer_Initialization
	line	15
;main.c: 14: ;;
;main.c: 15: Temp_Initialization();
	fcall	_Temp_Initialization
	line	16
;main.c: 16: Load_Initialization();
	fcall	_Load_Initialization
	line	18
;main.c: 17: ;;
;main.c: 18: DelayOff_Initialization();
	fcall	_DelayOff_Initialization
	line	21
;main.c: 21: DimmerLights_Initialization();
	fcall	_DimmerLights_Initialization
	line	26
;main.c: 22: ;;
;main.c: 23: ;;
;main.c: 24: ;;
;main.c: 26: Switch_Initialization();
	fcall	_Switch_Initialization
	line	27
	
l25558:	
;main.c: 27: RF_Initialization();
	fcall	_RF_Initialization
	line	28
	
l25560:	
;main.c: 28: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l25562
	line	30
;main.c: 30: while(1)
	
l7283:	
	line	32
	
l25562:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10151
	goto	u10150
u10151:
	goto	l25566
u10150:
	line	39
	
l25564:	
;main.c: 33: {
;main.c: 35: ;;
;main.c: 39: getLoad_AD(1,0x05);
	movlw	(05h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_getLoad_AD)
	movlw	(01h)
	fcall	_getLoad_AD
	line	43
;main.c: 43: getTemp_AD(1,0x09);
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_getTemp_AD)
	movlw	(01h)
	fcall	_getTemp_AD
	goto	l25566
	line	57
;main.c: 47: ;;
	
l7284:	
	line	59
	
l25566:	
;main.c: 57: }
;main.c: 59: if(TMain->T0_Timerout)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10161
	goto	u10160
u10161:
	goto	l25562
u10160:
	line	61
	
l25568:	
;main.c: 60: {
;main.c: 61: TMain->T0_Timerout = 0;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	62
	
l25570:	
;main.c: 62: MainT();
	fcall	_MainT
	line	63
	
l25572:	
;main.c: 63: if(TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10171
	goto	u10170
u10171:
	goto	l25562
u10170:
	line	65
	
l25574:	
;main.c: 64: {
;main.c: 65: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	66
;main.c: 66: Buzzer_Main();
	fcall	_Buzzer_Main
	line	67
;main.c: 67: LED_Main();
	fcall	_LED_Main
	line	70
;main.c: 69: ;;
;main.c: 70: Temp_Main();
	fcall	_Temp_Main
	line	71
	
l25576:	
;main.c: 71: Load_Main();
	fcall	_Load_Main
	line	75
	
l25578:	
;main.c: 72: ;;
;main.c: 74: ;;
;main.c: 75: DimmerLights_Main();
	fcall	_DimmerLights_Main
	line	76
	
l25580:	
;main.c: 76: Switch_Main();
	fcall	_Switch_Main
	line	80
	
l25582:	
;main.c: 77: ;;
;main.c: 78: ;;
;main.c: 80: RF_Main();
	fcall	_RF_Main
	line	81
;main.c: 81: DelayOff_Main();
	fcall	_DelayOff_Main
	goto	l25562
	line	82
	
l7286:	
	goto	l25562
	line	83
	
l7285:	
	goto	l25562
	line	84
	
l7287:	
	line	30
	goto	l25562
	
l7288:	
	line	85
	
l7289:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RF_Main
psect	text3040,local,class=CODE,delta=2
global __ptext3040
__ptext3040:

;; *************** function _RF_Main *****************
;; Defined at:
;;		line 25 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3040
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	25
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
	opt	stack 2
; Regs used in _RF_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	27
	
l25554:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l13319:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Main
	__end_of_RF_Main:
;; =============== function _RF_Main ends ============

	signat	_RF_Main,88
	global	_setRF_Main
psect	text3041,local,class=CODE,delta=2
global __ptext3041
__ptext3041:

;; *************** function _setRF_Main *****************
;; Defined at:
;;		line 59 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;		_RF_RxDisable
;;		_CC2500_RxData
;;		_getRxData
;;		_CC2500_TxData
;;		_CC2500_WriteCommand
;;		_setINT_GO
;; This function is called by:
;;		_RF_Main
;; This function uses a non-reentrant model
;;
psect	text3041
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
l25500:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf),w
	fcall	_RfPointSelect
	line	61
	
l25502:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10041
	goto	u10040
u10041:
	goto	l13347
u10040:
	line	64
	
l25504:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 64: RF->Key=((RA0 || RA6 || RA4) && RF->Learn == 0)?1:0;
	movlb 0	; select bank0
	clrf	(_setRF_Main$16689)
	btfsc	(96/8),(96)&7
	goto	u10051
	goto	u10050
u10051:
	goto	l25510
u10050:
	
l25506:	
	btfsc	(102/8),(102)&7
	goto	u10061
	goto	u10060
u10061:
	goto	l25510
u10060:
	
l25508:	
	btfss	(100/8),(100)&7
	goto	u10071
	goto	u10070
u10071:
	goto	l25514
u10070:
	goto	l25510
	
l22864:	
	
l25510:	
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u10081
	goto	u10080
u10081:
	goto	l25514
u10080:
	
l25512:	
	movlb 0	; select bank0
	clrf	(_setRF_Main$16689)
	bsf	status,0
	rlf	(_setRF_Main$16689),f
	goto	l25514
	
l13336:	
	
l25514:	
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(_setRF_Main$16689),w
	bcf	indf1,7
	skipz
	bsf	indf1,7
	line	75
	
l25516:	
;RF_Control_B1.c: 75: if(RF->Key)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u10091
	goto	u10090
u10091:
	goto	l25520
u10090:
	line	77
	
l25518:	
;RF_Control_B1.c: 76: {
;RF_Control_B1.c: 77: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	78
;RF_Control_B1.c: 78: }
	goto	l13347
	line	79
	
l13337:	
	line	81
	
l25520:	
;RF_Control_B1.c: 79: else
;RF_Control_B1.c: 80: {
;RF_Control_B1.c: 81: if(RF->ReceiveGO)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10101
	goto	u10100
u10101:
	goto	l25528
u10100:
	line	83
	
l25522:	
;RF_Control_B1.c: 82: {
;RF_Control_B1.c: 83: RF->ReceiveGO=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	84
	
l25524:	
;RF_Control_B1.c: 84: CC2500_RxData();
	fcall	_CC2500_RxData
	line	88
	
l25526:	
;RF_Control_B1.c: 88: getRxData(1);
	movlw	(01h)
	fcall	_getRxData
	line	91
;RF_Control_B1.c: 91: }
	goto	l13347
	line	92
	
l13339:	
	line	94
	
l25528:	
;RF_Control_B1.c: 92: else
;RF_Control_B1.c: 93: {
;RF_Control_B1.c: 94: if(RF->TransceiveGO)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u10111
	goto	u10110
u10111:
	goto	l25544
u10110:
	line	96
	
l25530:	
;RF_Control_B1.c: 95: {
;RF_Control_B1.c: 96: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	97
	
l25532:	
;RF_Control_B1.c: 97: if(RF->Debounce == 0)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u10121
	goto	u10120
u10121:
	goto	l25540
u10120:
	line	99
	
l25534:	
;RF_Control_B1.c: 98: {
;RF_Control_B1.c: 99: RF->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setRF_Main+0)+0
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_Main+0)+0,w
	addwf	indf1,f
	line	100
	
l25536:	
;RF_Control_B1.c: 100: if(RF->DebounceTime == 25)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	019h&0ffh
	skipz
	goto	u10131
	goto	u10130
u10131:
	goto	l13347
u10130:
	line	102
	
l25538:	
;RF_Control_B1.c: 101: {
;RF_Control_B1.c: 102: RF->DebounceTime=0;
	movf	(_RF)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	103
;RF_Control_B1.c: 103: RF->Debounce=1;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l13347
	line	104
	
l13343:	
	line	105
;RF_Control_B1.c: 104: }
;RF_Control_B1.c: 105: }
	goto	l13347
	line	106
	
l13342:	
	line	108
	
l25540:	
;RF_Control_B1.c: 106: else
;RF_Control_B1.c: 107: {
;RF_Control_B1.c: 108: RF->Debounce=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	109
;RF_Control_B1.c: 109: RF->TransceiveGO=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	110
	
l25542:	
;RF_Control_B1.c: 110: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l13347
	line	111
	
l13344:	
	line	112
;RF_Control_B1.c: 111: }
;RF_Control_B1.c: 112: }
	goto	l13347
	line	113
	
l13341:	
	line	115
	
l25544:	
;RF_Control_B1.c: 113: else
;RF_Control_B1.c: 114: {
;RF_Control_B1.c: 115: if(RF->RxStatus == 0 && 1)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10141
	goto	u10140
u10141:
	goto	l13347
u10140:
	line	117
	
l25546:	
;RF_Control_B1.c: 116: {
;RF_Control_B1.c: 117: RF->RxStatus=1;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	118
	
l25548:	
;RF_Control_B1.c: 118: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	119
	
l25550:	
;RF_Control_B1.c: 119: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	120
	
l25552:	
;RF_Control_B1.c: 120: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l13347
	line	121
	
l13346:	
	goto	l13347
	line	122
	
l13345:	
	goto	l13347
	line	123
	
l13340:	
	goto	l13347
	line	124
	
l13338:	
	goto	l13347
	line	125
	
l13334:	
	line	126
	
l13347:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
;; =============== function _setRF_Main ends ============

	signat	_setRF_Main,4216
	global	_getRxData
psect	text3042,local,class=CODE,delta=2
global __ptext3042
__ptext3042:

;; *************** function _getRxData *****************
;; Defined at:
;;		line 205 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3042
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	205
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
	opt	stack 2
; Regs used in _getRxData: [wreg+fsr1l-status,0+pclath+cstack]
;getRxData@rf stored from wreg
	line	207
	movlb 0	; select bank0
	movwf	(getRxData@rf)
	
l25460:	
;RF_Control_B1.c: 206: unsigned char i;
;RF_Control_B1.c: 207: RfPointSelect(rf);
	movf	(getRxData@rf),w
	fcall	_RfPointSelect
	line	208
	
l25462:	
;RF_Control_B1.c: 208: if(RF->Learn)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u9931
	goto	u9930
u9931:
	goto	l25470
u9930:
	line	210
	
l25464:	
;RF_Control_B1.c: 209: {
;RF_Control_B1.c: 210: if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)
	movf	(_RF_Data)^080h,f
	skipz
	goto	u9941
	goto	u9940
u9941:
	goto	l13379
u9940:
	
l25466:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u9951
	goto	u9950
u9951:
	goto	l13379
u9950:
	line	212
	
l25468:	
;RF_Control_B1.c: 211: {
;RF_Control_B1.c: 212: setLog_Code(1);
	movlw	(01h)
	fcall	_setLog_Code
	goto	l13379
	line	213
	
l13369:	
	line	214
;RF_Control_B1.c: 213: }
;RF_Control_B1.c: 214: }
	goto	l13379
	line	215
	
l13368:	
	line	217
	
l25470:	
;RF_Control_B1.c: 215: else
;RF_Control_B1.c: 216: {
;RF_Control_B1.c: 217: if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u9961
	goto	u9960
u9961:
	goto	l13379
u9960:
	
l25472:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u9971
	goto	u9970
u9971:
	goto	l13379
u9970:
	line	219
	
l25474:	
;RF_Control_B1.c: 218: {
;RF_Control_B1.c: 219: if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
	movf	0+(_RF_Data)^080h+0Ch,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9981
	goto	u9980
u9981:
	goto	l25482
u9980:
	
l25476:	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9991
	goto	u9990
u9991:
	goto	l25482
u9990:
	
l25478:	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u10001
	goto	u10000
u10001:
	goto	l25482
u10000:
	line	221
	
l25480:	
;RF_Control_B1.c: 220: {
;RF_Control_B1.c: 221: _nop();
	nop
	line	222
;RF_Control_B1.c: 222: }
	goto	l13379
	line	223
	
l13372:	
	line	225
	
l25482:	
;RF_Control_B1.c: 223: else
;RF_Control_B1.c: 224: {
;RF_Control_B1.c: 225: if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)^080h+0Ch,w
	xorwf	indf1,w
	skipz
	goto	u10011
	goto	u10010
u10011:
	goto	l13379
u10010:
	
l25484:	
	movf	(_Product)^080h,w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorwf	indf1,w
	skipz
	goto	u10021
	goto	u10020
u10021:
	goto	l13379
u10020:
	
l25486:	
	movf	(_Product)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorwf	indf1,w
	skipz
	goto	u10031
	goto	u10030
u10031:
	goto	l13379
u10030:
	line	227
	
l25488:	
;RF_Control_B1.c: 226: {
;RF_Control_B1.c: 227: setControl_Lights_Table(1);
	movlw	(01h)
	fcall	_setControl_Lights_Table
	goto	l13379
	line	228
	
l13374:	
	goto	l13379
	line	229
	
l13373:	
	line	230
;RF_Control_B1.c: 228: }
;RF_Control_B1.c: 229: }
;RF_Control_B1.c: 230: }
	goto	l13379
	line	231
	
l13371:	
	goto	l13379
	
l25490:	
	goto	l13379
	
l25492:	
	goto	l13379
	line	234
	
l25494:	
;RF_Control_B1.c: 232: {
;RF_Control_B1.c: 233: ;
;RF_Control_B1.c: 234: }
	goto	l13379
	line	235
	
l13376:	
	goto	l13379
	
l25496:	
	goto	l13379
	
l25498:	
	goto	l13379
	line	238
;RF_Control_B1.c: 236: {
;RF_Control_B1.c: 237: ;
	
l13378:	
	goto	l13379
	line	243
	
l13377:	
	goto	l13379
	
l13375:	
	goto	l13379
	
l13370:	
	line	244
	
l13379:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
;; =============== function _getRxData ends ============

	signat	_getRxData,4216
	global	_setControl_Lights_Table
psect	text3043,local,class=CODE,delta=2
global __ptext3043
__ptext3043:

;; *************** function _setControl_Lights_Table *****************
;; Defined at:
;;		line 262 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3043
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	262
	global	__size_of_setControl_Lights_Table
	__size_of_setControl_Lights_Table	equ	__end_of_setControl_Lights_Table-_setControl_Lights_Table
	
_setControl_Lights_Table:	
	opt	stack 2
; Regs used in _setControl_Lights_Table: [wreg+fsr1l-status,0+pclath+cstack]
;setControl_Lights_Table@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setControl_Lights_Table@rf)
	line	263
	
l25416:	
;RF_Control_B1.c: 263: RfPointSelect(rf);
	movf	(setControl_Lights_Table@rf),w
	fcall	_RfPointSelect
	line	264
	
l25418:	
;RF_Control_B1.c: 264: if(RF_Data[15] == 0x00)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,f
	skipz
	goto	u9851
	goto	u9850
u9851:
	goto	l25430
u9850:
	line	267
	
l25420:	
;RF_Control_B1.c: 265: {
;RF_Control_B1.c: 267: setDimmerLights(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	movlw	(01h)
	fcall	_setDimmerLights
	line	268
;RF_Control_B1.c: 268: setRFSW_Status(1,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movlw	(01h)
	fcall	_setRFSW_Status
	line	269
;RF_Control_B1.c: 269: setSw_Status(1,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movlw	(01h)
	fcall	_setSw_Status
	line	272
;RF_Control_B1.c: 272: setDimmerLights(2,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	movlw	(02h)
	fcall	_setDimmerLights
	line	273
;RF_Control_B1.c: 273: setRFSW_Status(2,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movlw	(02h)
	fcall	_setRFSW_Status
	line	274
;RF_Control_B1.c: 274: setSw_Status(2,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movlw	(02h)
	fcall	_setSw_Status
	line	277
;RF_Control_B1.c: 277: setDimmerLights(3,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	movlw	(03h)
	fcall	_setDimmerLights
	line	278
;RF_Control_B1.c: 278: setRFSW_Status(3,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movlw	(03h)
	fcall	_setRFSW_Status
	line	279
;RF_Control_B1.c: 279: setSw_Status(3,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movlw	(03h)
	fcall	_setSw_Status
	line	282
	
l25422:	
;RF_Control_B1.c: 282: Product->Data[9]=0;
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	283
	
l25424:	
;RF_Control_B1.c: 283: Product->Data[11]=0;
	movf	(_Product)^080h,w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	284
	
l25426:	
;RF_Control_B1.c: 284: Product->Data[15]=0;
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	285
	
l25428:	
;RF_Control_B1.c: 285: Product->Data[17]=0;
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	286
;RF_Control_B1.c: 286: setBuz(1,1,100);
	movlb 0	; select bank0
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	287
;RF_Control_B1.c: 287: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	288
;RF_Control_B1.c: 288: }
	goto	l13401
	line	289
	
l13386:	
	
l25430:	
;RF_Control_B1.c: 289: else if(RF_Data[15] == 0x20)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	020h&0ffh
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l25436
u9860:
	line	291
	
l25432:	
;RF_Control_B1.c: 290: {
;RF_Control_B1.c: 291: Product->Data[9]=0;
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	292
;RF_Control_B1.c: 292: Product->Data[11]=0;
	movf	(_Product)^080h,w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	293
;RF_Control_B1.c: 293: Product->Data[17]=0;
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	294
	
l25434:	
;RF_Control_B1.c: 294: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	295
;RF_Control_B1.c: 295: }
	goto	l13401
	line	297
	
l13388:	
	
l25436:	
;RF_Control_B1.c: 297: else if(RF_Data[15] == 0x01)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u9871
	goto	u9870
u9871:
	goto	l25440
u9870:
	line	299
	
l25438:	
;RF_Control_B1.c: 298: {
;RF_Control_B1.c: 299: setRFSW_Control(1);
	movlw	(01h)
	fcall	_setRFSW_Control
	line	300
;RF_Control_B1.c: 300: }
	goto	l13401
	line	302
	
l13390:	
	
l25440:	
;RF_Control_B1.c: 302: else if(RF_Data[15] == 0x11)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u9881
	goto	u9880
u9881:
	goto	l25444
u9880:
	line	304
	
l25442:	
;RF_Control_B1.c: 303: {
;RF_Control_B1.c: 304: setRFSW_AdjControl(1);
	movlw	(01h)
	fcall	_setRFSW_AdjControl
	line	305
;RF_Control_B1.c: 305: }
	goto	l13401
	line	309
	
l13392:	
	
l25444:	
;RF_Control_B1.c: 309: else if(RF_Data[15] == 0x02)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	02h&0ffh
	skipz
	goto	u9891
	goto	u9890
u9891:
	goto	l25448
u9890:
	line	311
	
l25446:	
;RF_Control_B1.c: 310: {
;RF_Control_B1.c: 311: setRFSW_Control(2);
	movlw	(02h)
	fcall	_setRFSW_Control
	line	312
;RF_Control_B1.c: 312: }
	goto	l13401
	line	314
	
l13394:	
	
l25448:	
;RF_Control_B1.c: 314: else if(RF_Data[15] == 0x21)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	021h&0ffh
	skipz
	goto	u9901
	goto	u9900
u9901:
	goto	l25452
u9900:
	line	316
	
l25450:	
;RF_Control_B1.c: 315: {
;RF_Control_B1.c: 316: setRFSW_AdjControl(2);
	movlw	(02h)
	fcall	_setRFSW_AdjControl
	line	317
;RF_Control_B1.c: 317: }
	goto	l13401
	line	321
	
l13396:	
	
l25452:	
;RF_Control_B1.c: 321: else if(RF_Data[15] == 0x03)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	03h&0ffh
	skipz
	goto	u9911
	goto	u9910
u9911:
	goto	l25456
u9910:
	line	323
	
l25454:	
;RF_Control_B1.c: 322: {
;RF_Control_B1.c: 323: setRFSW_Control(3);
	movlw	(03h)
	fcall	_setRFSW_Control
	line	324
;RF_Control_B1.c: 324: }
	goto	l13401
	line	326
	
l13398:	
	
l25456:	
;RF_Control_B1.c: 326: else if(RF_Data[15] == 0x31)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	031h&0ffh
	skipz
	goto	u9921
	goto	u9920
u9921:
	goto	l13401
u9920:
	line	328
	
l25458:	
;RF_Control_B1.c: 327: {
;RF_Control_B1.c: 328: setRFSW_AdjControl(3);
	movlw	(03h)
	fcall	_setRFSW_AdjControl
	goto	l13401
	line	329
	
l13400:	
	goto	l13401
	line	332
	
l13399:	
	goto	l13401
	
l13397:	
	goto	l13401
	
l13395:	
	goto	l13401
	
l13393:	
	goto	l13401
	
l13391:	
	goto	l13401
	
l13389:	
	goto	l13401
	
l13387:	
	
l13401:	
	return
	opt stack 0
GLOBAL	__end_of_setControl_Lights_Table
	__end_of_setControl_Lights_Table:
;; =============== function _setControl_Lights_Table ends ============

	signat	_setControl_Lights_Table,4216
	global	_Load_Main
psect	text3044,local,class=CODE,delta=2
global __ptext3044
__ptext3044:

;; *************** function _Load_Main *****************
;; Defined at:
;;		line 25 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
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
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_setLoad_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3044
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	25
	global	__size_of_Load_Main
	__size_of_Load_Main	equ	__end_of_Load_Main-_Load_Main
	
_Load_Main:	
	opt	stack 5
; Regs used in _Load_Main: [wreg-status,0+pclath+cstack]
	line	27
	
l25414:	
;OverLoad_B1.c: 27: setLoad_Main(1);
	movlw	(01h)
	fcall	_setLoad_Main
	line	29
	
l9759:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Main
	__end_of_Load_Main:
;; =============== function _Load_Main ends ============

	signat	_Load_Main,88
	global	_Temp_Main
psect	text3045,local,class=CODE,delta=2
global __ptext3045
__ptext3045:

;; *************** function _Temp_Main *****************
;; Defined at:
;;		line 16 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
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
psect	text3045
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	16
	global	__size_of_Temp_Main
	__size_of_Temp_Main	equ	__end_of_Temp_Main-_Temp_Main
	
_Temp_Main:	
	opt	stack 5
; Regs used in _Temp_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	18
	
l25412:	
;OverTemperature_B1.c: 18: setTemp_Main(1);
	movlw	(01h)
	fcall	_setTemp_Main
	line	20
	
l10988:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Main
	__end_of_Temp_Main:
;; =============== function _Temp_Main ends ============

	signat	_Temp_Main,88
	global	_setRFSW_AdjControl
psect	text3046,local,class=CODE,delta=2
global __ptext3046
__ptext3046:

;; *************** function _setRFSW_AdjControl *****************
;; Defined at:
;;		line 396 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3046
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	396
	global	__size_of_setRFSW_AdjControl
	__size_of_setRFSW_AdjControl	equ	__end_of_setRFSW_AdjControl-_setRFSW_AdjControl
	
_setRFSW_AdjControl:	
	opt	stack 2
; Regs used in _setRFSW_AdjControl: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_AdjControl@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_AdjControl@sw)
	line	397
	
l25400:	
;RF_Control_B1.c: 397: RfSWPointSelect(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_RfSWPointSelect
	line	398
	
l25402:	
;RF_Control_B1.c: 398: if(RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9841
	goto	u9840
u9841:
	goto	l25408
u9840:
	line	400
	
l25404:	
;RF_Control_B1.c: 399: {
;RF_Control_B1.c: 400: Memory->Modify=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	401
	
l25406:	
;RF_Control_B1.c: 401: setRF_DimmerValue(sw);
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	fcall	_setRF_DimmerValue
	line	402
;RF_Control_B1.c: 402: }
	goto	l13419
	line	403
	
l13418:	
	line	405
	
l25408:	
;RF_Control_B1.c: 403: else
;RF_Control_B1.c: 404: {
;RF_Control_B1.c: 405: Product->Data[9]=Product->Data[20+sw];
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_AdjControl+0)+0
	movf	0+(??_setRFSW_AdjControl+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRFSW_AdjControl+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRFSW_AdjControl+1)+0,w
	movwf	indf1
	line	406
	
l13419:	
	line	407
;RF_Control_B1.c: 406: }
;RF_Control_B1.c: 407: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_AdjControl+0)+0
	movf	0+(??_setRFSW_AdjControl+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRFSW_AdjControl+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRFSW_AdjControl+1)+0,w
	movwf	indf1
	line	408
	
l25410:	
;RF_Control_B1.c: 408: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	409
	
l13420:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_AdjControl
	__end_of_setRFSW_AdjControl:
;; =============== function _setRFSW_AdjControl ends ============

	signat	_setRFSW_AdjControl,4216
	global	_setTemp_Main
psect	text3047,local,class=CODE,delta=2
global __ptext3047
__ptext3047:

;; *************** function _setTemp_Main *****************
;; Defined at:
;;		line 69 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1   21[BANK0 ] unsigned char 
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
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_TempPointSelect
;;		_getLoad_Safe
;;		_setOverTemp_ERROR
;; This function is called by:
;;		_Temp_Main
;; This function uses a non-reentrant model
;;
psect	text3047
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	69
	global	__size_of_setTemp_Main
	__size_of_setTemp_Main	equ	__end_of_setTemp_Main-_setTemp_Main
	
_setTemp_Main:	
	opt	stack 5
; Regs used in _setTemp_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setTemp_Main@temp stored from wreg
	movlb 0	; select bank0
	movwf	(setTemp_Main@temp)
	line	70
	
l25344:	
;OverTemperature_B1.c: 70: TempPointSelect(temp);
	movf	(setTemp_Main@temp),w
	fcall	_TempPointSelect
	line	71
	
l25346:	
;OverTemperature_B1.c: 71: if(Temp->Enable)
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9731
	goto	u9730
u9731:
	goto	l11029
u9730:
	line	73
	
l25348:	
;OverTemperature_B1.c: 72: {
;OverTemperature_B1.c: 73: if(Temp->ADtoGO == 0)
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9741
	goto	u9740
u9741:
	goto	l25360
u9740:
	line	75
	
l25350:	
;OverTemperature_B1.c: 74: {
;OverTemperature_B1.c: 75: Temp->Time++;
	movf	(_Temp)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	76
	
l25352:	
;OverTemperature_B1.c: 76: if(Temp->Time >= 500)
	movf	(_Temp)^080h,w
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
	goto	u9751
	goto	u9750
u9751:
	goto	l11029
u9750:
	line	78
	
l25354:	
;OverTemperature_B1.c: 77: {
;OverTemperature_B1.c: 78: if(getLoad_Safe(1) && 1)
	movlw	(01h)
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9761
	goto	u9760
u9761:
	goto	l25358
u9760:
	line	80
	
l25356:	
;OverTemperature_B1.c: 79: {
;OverTemperature_B1.c: 80: Temp->Time=0;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	81
;OverTemperature_B1.c: 81: Temp->ADtoGO=1;
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	82
;OverTemperature_B1.c: 82: Temp->Safe=0;
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	83
;OverTemperature_B1.c: 83: }
	goto	l11029
	line	84
	
l11016:	
	line	86
	
l25358:	
;OverTemperature_B1.c: 84: else
;OverTemperature_B1.c: 85: {
;OverTemperature_B1.c: 86: Temp->Time=1000;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(03E8h)
	movwi	[0]fsr1
	movlw	high(03E8h)
	movwi	[1]fsr1
	goto	l11029
	line	87
	
l11017:	
	goto	l11029
	line	88
	
l11015:	
	line	89
;OverTemperature_B1.c: 87: }
;OverTemperature_B1.c: 88: }
;OverTemperature_B1.c: 89: }
	goto	l11029
	line	90
	
l11014:	
	line	92
	
l25360:	
;OverTemperature_B1.c: 90: else
;OverTemperature_B1.c: 91: {
;OverTemperature_B1.c: 92: Temp->Time++;
	movf	(_Temp)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	93
	
l25362:	
;OverTemperature_B1.c: 93: if(Temp->Time >= 4)
	movf	(_Temp)^080h,w
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
	goto	u9771
	goto	u9770
u9771:
	goto	l11029
u9770:
	line	95
	
l25364:	
;OverTemperature_B1.c: 94: {
;OverTemperature_B1.c: 95: Temp->Time=0;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	96
;OverTemperature_B1.c: 96: Temp->ADtoGO=0;
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	97
;OverTemperature_B1.c: 97: Temp->AD=Temp->ADH[1];
	movf	(_Temp)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	0+(??_setTemp_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_setTemp_Main+0)+0,w
	movwi	[1]fsr1
	line	98
;OverTemperature_B1.c: 98: if(Temp->ERROR)
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9781
	goto	u9780
u9781:
	goto	l25378
u9780:
	line	100
	
l25366:	
;OverTemperature_B1.c: 99: {
;OverTemperature_B1.c: 100: if(Temp->AD >= 540)
	movf	(_Temp)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(021Ch)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(021Ch)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u9791
	goto	u9790
u9791:
	goto	l25376
u9790:
	line	102
	
l25368:	
;OverTemperature_B1.c: 101: {
;OverTemperature_B1.c: 102: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	103
	
l25370:	
;OverTemperature_B1.c: 103: if(Temp->Count >= 3)
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u9801
	goto	u9800
u9801:
	goto	l11024
u9800:
	line	105
	
l25372:	
;OverTemperature_B1.c: 104: {
;OverTemperature_B1.c: 105: Temp->Count=0;
	movf	(_Temp)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	106
	
l25374:	
;OverTemperature_B1.c: 106: setOverTemp_ERROR(1,0);
	movlb 0	; select bank0
	clrf	(?_setOverTemp_ERROR)
	movlw	(01h)
	fcall	_setOverTemp_ERROR
	goto	l11024
	line	107
	
l11022:	
	line	108
;OverTemperature_B1.c: 107: }
;OverTemperature_B1.c: 108: }
	goto	l11024
	line	109
	
l11021:	
	line	111
	
l25376:	
;OverTemperature_B1.c: 109: else
;OverTemperature_B1.c: 110: {
;OverTemperature_B1.c: 111: Temp->Count=0;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l11024
	line	112
	
l11023:	
	line	113
;OverTemperature_B1.c: 112: }
;OverTemperature_B1.c: 113: }
	goto	l11024
	line	114
	
l11020:	
	line	116
	
l25378:	
;OverTemperature_B1.c: 114: else
;OverTemperature_B1.c: 115: {
;OverTemperature_B1.c: 116: if(Temp->AD <= 475)
	movf	(_Temp)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(01DCh)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(01DCh)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipnc
	goto	u9811
	goto	u9810
u9811:
	goto	l25388
u9810:
	line	118
	
l25380:	
;OverTemperature_B1.c: 117: {
;OverTemperature_B1.c: 118: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	119
	
l25382:	
;OverTemperature_B1.c: 119: if(Temp->Count >= 3)
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u9821
	goto	u9820
u9821:
	goto	l11024
u9820:
	line	121
	
l25384:	
;OverTemperature_B1.c: 120: {
;OverTemperature_B1.c: 121: Temp->Count=0;
	movf	(_Temp)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	122
	
l25386:	
;OverTemperature_B1.c: 122: setOverTemp_ERROR(1,1);
	movlb 0	; select bank0
	clrf	(?_setOverTemp_ERROR)
	bsf	status,0
	rlf	(?_setOverTemp_ERROR),f
	movlw	(01h)
	fcall	_setOverTemp_ERROR
	goto	l11024
	line	123
	
l11026:	
	line	124
;OverTemperature_B1.c: 123: }
;OverTemperature_B1.c: 124: }
	goto	l11024
	line	125
	
l11025:	
	line	127
	
l25388:	
;OverTemperature_B1.c: 125: else
;OverTemperature_B1.c: 126: {
;OverTemperature_B1.c: 127: Temp->Count=0;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l11024
	line	128
	
l11027:	
	line	129
	
l11024:	
	line	130
;OverTemperature_B1.c: 128: }
;OverTemperature_B1.c: 129: }
;OverTemperature_B1.c: 130: if(Temp->ERROR == 0)
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u9831
	goto	u9830
u9831:
	goto	l25392
u9830:
	line	132
	
l25390:	
;OverTemperature_B1.c: 131: {
;OverTemperature_B1.c: 132: Temp->Safe=1;
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l25392
	line	133
	
l11028:	
	line	134
	
l25392:	
;OverTemperature_B1.c: 133: }
;OverTemperature_B1.c: 134: Product->Data[24]=Temp->AD >> 8;
	movf	(_Temp)^080h,w
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
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	018h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setTemp_Main+2)+0,w
	movwf	indf1
	line	135
	
l25394:	
;OverTemperature_B1.c: 135: Product->Data[25]=Temp->AD;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	019h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setTemp_Main+0)+0,w
	movwf	indf1
	line	136
	
l25396:	
;OverTemperature_B1.c: 136: Temp->ADH[0]=0;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	137
	
l25398:	
;OverTemperature_B1.c: 137: Temp->ADH[1]=0;
	movf	(_Temp)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l11029
	line	138
	
l11019:	
	goto	l11029
	line	139
	
l11018:	
	goto	l11029
	line	140
	
l11013:	
	line	141
	
l11029:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Main
	__end_of_setTemp_Main:
;; =============== function _setTemp_Main ends ============

	signat	_setTemp_Main,4216
	global	_setLoad_Main
psect	text3048,local,class=CODE,delta=2
global __ptext3048
__ptext3048:

;; *************** function _setLoad_Main *****************
;; Defined at:
;;		line 69 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1   22[BANK0 ] unsigned char 
;;  i               1    0        unsigned char 
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
;;		_LoadPointSelect
;;		_setLoad_ERROR
;;		___lwdiv
;;		___wmul
;;		_setDimmerLights_Open
;;		_setLoad_AH_AL_Restore
;;		_getTemp_Safe
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text3048
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	69
	global	__size_of_setLoad_Main
	__size_of_setLoad_Main	equ	__end_of_setLoad_Main-_setLoad_Main
	
_setLoad_Main:	
	opt	stack 5
; Regs used in _setLoad_Main: [wreg-status,0+pclath+cstack]
;setLoad_Main@load stored from wreg
	line	71
	movlb 0	; select bank0
	movwf	(setLoad_Main@load)
	
l25246:	
;OverLoad_B1.c: 70: char i;
;OverLoad_B1.c: 71: LoadPointSelect(load);
	movf	(setLoad_Main@load),w
	fcall	_LoadPointSelect
	line	72
	
l25248:	
;OverLoad_B1.c: 72: if(Load->ERROR)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u9531
	goto	u9530
u9531:
	goto	l25258
u9530:
	line	74
	
l25250:	
;OverLoad_B1.c: 73: {
;OverLoad_B1.c: 74: Load->ErrorTime++;
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
	line	75
	
l25252:	
;OverLoad_B1.c: 75: if(Load->ErrorTime >= 1000)
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movlw	high(03E8h)
	subwf	1+(??_setLoad_Main+0)+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_setLoad_Main+0)+0,w
	skipc
	goto	u9541
	goto	u9540
u9541:
	goto	l9801
u9540:
	line	77
	
l25254:	
;OverLoad_B1.c: 76: {
;OverLoad_B1.c: 77: Load->ErrorTime=0;
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	78
	
l25256:	
;OverLoad_B1.c: 78: setLoad_ERROR(load,0);
	clrf	(?_setLoad_ERROR)
	movf	(setLoad_Main@load),w
	fcall	_setLoad_ERROR
	goto	l9801
	line	79
	
l9777:	
	line	80
;OverLoad_B1.c: 79: }
;OverLoad_B1.c: 80: }
	goto	l9801
	line	81
	
l9776:	
	line	83
	
l25258:	
;OverLoad_B1.c: 81: else
;OverLoad_B1.c: 82: {
;OverLoad_B1.c: 83: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u9551
	goto	u9550
u9551:
	goto	l25322
u9550:
	line	85
	
l25260:	
;OverLoad_B1.c: 84: {
;OverLoad_B1.c: 85: Load->LightsCount=Load->Lights1Status+Load->Lights2Status+Load->Lights3Status;
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
	movwf	(??_setLoad_Main+0)+0
	movf	(_Load),w
	addlw	043h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	movf	indf0,w
	addwf	(??_setLoad_Main+0)+0,w
	addwf	indf1,w
	movwf	(??_setLoad_Main+1)+0
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Main+1)+0,w
	movwf	indf1
	line	86
	
l25262:	
;OverLoad_B1.c: 86: Load->Time++;
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
	line	87
	
l25264:	
;OverLoad_B1.c: 87: if(Load->Time >= 4)
	movf	(_Load),w
	addlw	01h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movlw	high(04h)
	subwf	1+(??_setLoad_Main+0)+0,w
	movlw	low(04h)
	skipnz
	subwf	0+(??_setLoad_Main+0)+0,w
	skipc
	goto	u9561
	goto	u9560
u9561:
	goto	l9801
u9560:
	line	89
	
l25266:	
;OverLoad_B1.c: 88: {
;OverLoad_B1.c: 89: Load->Time=0;
	movf	(_Load),w
	addlw	01h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	90
;OverLoad_B1.c: 90: Load->ADtoGO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,4
	line	91
	
l25268:	
;OverLoad_B1.c: 91: Load->ADH=((Load->AH[2]+Load->AH[3]+Load->AH[4])/3);
	movlw	low(03h)
	movwf	(?___lwdiv)
	movlw	high(03h)
	movwf	((?___lwdiv))+1
	movf	(_Load),w
	addlw	010h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	0Ch
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr0
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	0Eh
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	addwf	0+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr0
	addwfc	1+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0+1
	moviw	[0]fsr1
	addwf	0+(??_setLoad_Main+2)+0,w
	movwf	0+(?___lwdiv)+02h
	moviw	[1]fsr1
	addwfc	1+(??_setLoad_Main+2)+0,w
	movwf	0+(?___lwdiv)+02h+1
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
	line	92
	
l25270:	
;OverLoad_B1.c: 92: Load->ADL=((Load->AL[2]+Load->AL[3]+Load->AL[4])/3);
	movlw	low(03h)
	movwf	(?___lwdiv)
	movlw	high(03h)
	movwf	((?___lwdiv))+1
	movf	(_Load),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	01Eh
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr0
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	020h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	addwf	0+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr0
	addwfc	1+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0+1
	moviw	[0]fsr1
	addwf	0+(??_setLoad_Main+2)+0,w
	movwf	0+(?___lwdiv)+02h
	moviw	[1]fsr1
	addwfc	1+(??_setLoad_Main+2)+0,w
	movwf	0+(?___lwdiv)+02h+1
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
	line	93
;OverLoad_B1.c: 93: if(Load->ADH > Load->ADL)
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	030h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+2)+0+1
	movf	1+(??_setLoad_Main+0)+0,w
	subwf	1+(??_setLoad_Main+2)+0,w
	skipz
	goto	u9575
	movf	0+(??_setLoad_Main+0)+0,w
	subwf	0+(??_setLoad_Main+2)+0,w
u9575:
	skipnc
	goto	u9571
	goto	u9570
u9571:
	goto	l25320
u9570:
	line	95
	
l25272:	
;OverLoad_B1.c: 94: {
;OverLoad_B1.c: 95: Load->AD=(Load->ADH-Load->ADL);
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
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr0
	movwf	(??_setLoad_Main+0)+0+1
	comf	(??_setLoad_Main+0)+0,f
	comf	(??_setLoad_Main+0)+1,f
	incf	(??_setLoad_Main+0)+0,f
	skipnz
	incf	(??_setLoad_Main+0)+1,f
	moviw	[0]fsr1
	addwf	0+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr1
	addwfc	1+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0+1
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_setLoad_Main+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_setLoad_Main+2)+0,w
	movwi	[1]fsr1
	line	96
	
l25274:	
;OverLoad_B1.c: 96: if(Load->Count < 10)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipnc
	goto	u9581
	goto	u9580
u9581:
	goto	l25288
u9580:
	line	98
	
l25276:	
;OverLoad_B1.c: 97: {
;OverLoad_B1.c: 98: Load->Count++;
	movlw	(01h)
	movwf	(??_setLoad_Main+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Main+0)+0,w
	addwf	indf1,f
	line	99
	
l25278:	
;OverLoad_B1.c: 99: if(Load->Count == 1)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u9591
	goto	u9590
u9591:
	goto	l9783
u9590:
	line	101
	
l25280:	
;OverLoad_B1.c: 100: {
;OverLoad_B1.c: 101: Load->JudgeValue=255;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0FFh)
	movwi	[0]fsr1
	movlw	high(0FFh)
	movwi	[1]fsr1
	line	102
	
l9783:	
	line	103
;OverLoad_B1.c: 102: }
;OverLoad_B1.c: 103: if(Load->Count == 3)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u9601
	goto	u9600
u9601:
	goto	l25288
u9600:
	line	105
	
l25282:	
;OverLoad_B1.c: 104: {
;OverLoad_B1.c: 105: if(Load->LightsCount == 1)
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u9611
	goto	u9610
u9611:
	goto	l25286
u9610:
	line	107
	
l25284:	
;OverLoad_B1.c: 106: {
;OverLoad_B1.c: 107: Load->JudgeValue=0x1a;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(01Ah)
	movwi	[0]fsr1
	movlw	high(01Ah)
	movwi	[1]fsr1
	line	108
;OverLoad_B1.c: 108: }
	goto	l25288
	line	109
	
l9785:	
	line	111
	
l25286:	
;OverLoad_B1.c: 109: else
;OverLoad_B1.c: 110: {
;OverLoad_B1.c: 111: Load->JudgeValue=0x1a+Load->TotalLoad;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movf	0+(??_setLoad_Main+0)+0,w
	addlw	low(01Ah)
	movwf	(??_setLoad_Main+2)+0
	movlw	high(01Ah)
	addwfc	1+(??_setLoad_Main+0)+0,w
	movwf	1+(??_setLoad_Main+2)+0
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_setLoad_Main+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_setLoad_Main+2)+0,w
	movwi	[1]fsr1
	goto	l25288
	line	112
	
l9786:	
	goto	l25288
	line	113
	
l9784:	
	goto	l25288
	line	114
	
l9782:	
	line	115
	
l25288:	
;OverLoad_B1.c: 112: }
;OverLoad_B1.c: 113: }
;OverLoad_B1.c: 114: }
;OverLoad_B1.c: 115: if(Load->AD >= Load->JudgeValue)
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+2)+0+1
	movf	1+(??_setLoad_Main+0)+0,w
	subwf	1+(??_setLoad_Main+2)+0,w
	skipz
	goto	u9625
	movf	0+(??_setLoad_Main+0)+0,w
	subwf	0+(??_setLoad_Main+2)+0,w
u9625:
	skipc
	goto	u9621
	goto	u9620
u9621:
	goto	l25298
u9620:
	line	117
	
l25290:	
;OverLoad_B1.c: 116: {
;OverLoad_B1.c: 117: Load->ErrorCount++;
	movlw	(01h)
	movwf	(??_setLoad_Main+0)+0
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Main+0)+0,w
	addwf	indf1,f
	line	118
	
l25292:	
;OverLoad_B1.c: 118: if(Load->ErrorCount >2)
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u9631
	goto	u9630
u9631:
	goto	l25320
u9630:
	line	120
	
l25294:	
;OverLoad_B1.c: 119: {
;OverLoad_B1.c: 120: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	121
	
l25296:	
;OverLoad_B1.c: 121: setLoad_ERROR(load,1);
	clrf	(?_setLoad_ERROR)
	bsf	status,0
	rlf	(?_setLoad_ERROR),f
	movf	(setLoad_Main@load),w
	fcall	_setLoad_ERROR
	goto	l25320
	line	128
	
l9788:	
	line	129
;OverLoad_B1.c: 128: }
;OverLoad_B1.c: 129: }
	goto	l25320
	line	130
	
l9787:	
	line	132
	
l25298:	
;OverLoad_B1.c: 130: else
;OverLoad_B1.c: 131: {
;OverLoad_B1.c: 132: Load->ErrorCount=0;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	133
;OverLoad_B1.c: 133: if(Load->Count > 5)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(06h)
	subwf	indf1,w
	skipc
	goto	u9641
	goto	u9640
u9641:
	goto	l25320
u9640:
	line	135
	
l25300:	
;OverLoad_B1.c: 134: {
;OverLoad_B1.c: 135: if(Load->SafeCount < 6)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(06h)
	subwf	indf1,w
	skipnc
	goto	u9651
	goto	u9650
u9651:
	goto	l25304
u9650:
	line	137
	
l25302:	
;OverLoad_B1.c: 136: {
;OverLoad_B1.c: 137: Load->SafeCount++;
	movlw	(01h)
	movwf	(??_setLoad_Main+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Main+0)+0,w
	addwf	indf1,f
	goto	l25304
	line	138
	
l9791:	
	line	139
	
l25304:	
;OverLoad_B1.c: 138: }
;OverLoad_B1.c: 139: if(Load->SafeCount > 6-5)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u9661
	goto	u9660
u9661:
	goto	l25314
u9660:
	line	141
	
l25306:	
;OverLoad_B1.c: 140: {
;OverLoad_B1.c: 141: if(Load->StatusOn)
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9671
	goto	u9670
u9671:
	goto	l25312
u9670:
	line	143
	
l25308:	
;OverLoad_B1.c: 142: {
;OverLoad_B1.c: 143: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	144
;OverLoad_B1.c: 144: Load->TotalLoad=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_setLoad_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_setLoad_Main+0)+0,w
	movwi	[1]fsr1
	line	145
	
l25310:	
;OverLoad_B1.c: 145: Load->JudgeValue=0x1a*Load->LightsCount;
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setLoad_Main+0)+0
	clrf	(??_setLoad_Main+0)+0+1
	movf	0+(??_setLoad_Main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_setLoad_Main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(01Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(01Ah)
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
	goto	l25312
	line	146
	
l9793:	
	line	147
	
l25312:	
;OverLoad_B1.c: 146: }
;OverLoad_B1.c: 147: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	149
;OverLoad_B1.c: 149: setDimmerLights_Open(1,1);
	clrf	(?_setDimmerLights_Open)
	bsf	status,0
	rlf	(?_setDimmerLights_Open),f
	movlw	(01h)
	fcall	_setDimmerLights_Open
	line	153
;OverLoad_B1.c: 153: setDimmerLights_Open(2,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Open)
	bsf	status,0
	rlf	(?_setDimmerLights_Open),f
	movlw	(02h)
	fcall	_setDimmerLights_Open
	line	157
;OverLoad_B1.c: 157: setDimmerLights_Open(3,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Open)
	bsf	status,0
	rlf	(?_setDimmerLights_Open),f
	movlw	(03h)
	fcall	_setDimmerLights_Open
	goto	l25314
	line	159
	
l9792:	
	line	160
	
l25314:	
;OverLoad_B1.c: 159: }
;OverLoad_B1.c: 160: if(Load->StatusOff)
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9681
	goto	u9680
u9681:
	goto	l25320
u9680:
	line	162
	
l25316:	
;OverLoad_B1.c: 161: {
;OverLoad_B1.c: 162: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	163
;OverLoad_B1.c: 163: Load->TotalLoad=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_setLoad_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_setLoad_Main+0)+0,w
	movwi	[1]fsr1
	line	164
	
l25318:	
;OverLoad_B1.c: 164: Load->JudgeValue=0x1a*Load->LightsCount;
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setLoad_Main+0)+0
	clrf	(??_setLoad_Main+0)+0+1
	movf	0+(??_setLoad_Main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_setLoad_Main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(01Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(01Ah)
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
	goto	l25320
	line	165
	
l9794:	
	goto	l25320
	line	166
	
l9790:	
	goto	l25320
	line	167
	
l9789:	
	goto	l25320
	line	168
	
l9781:	
	line	169
	
l25320:	
;OverLoad_B1.c: 165: }
;OverLoad_B1.c: 166: }
;OverLoad_B1.c: 167: }
;OverLoad_B1.c: 168: }
;OverLoad_B1.c: 169: setLoad_AH_AL_Restore(load);
	movlb 0	; select bank0
	movf	(setLoad_Main@load),w
	fcall	_setLoad_AH_AL_Restore
	goto	l9801
	line	180
	
l9780:	
	line	181
;OverLoad_B1.c: 180: }
;OverLoad_B1.c: 181: }
	goto	l9801
	line	182
	
l9779:	
	line	184
	
l25322:	
;OverLoad_B1.c: 182: else
;OverLoad_B1.c: 183: {
;OverLoad_B1.c: 184: if(Load->GO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9691
	goto	u9690
u9691:
	goto	l25332
u9690:
	line	186
	
l25324:	
;OverLoad_B1.c: 185: {
;OverLoad_B1.c: 186: if(Load->LightsON == 0)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9701
	goto	u9700
u9701:
	goto	l25328
u9700:
	line	188
	
l25326:	
;OverLoad_B1.c: 187: {
;OverLoad_B1.c: 188: Load->LightsON=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	189
;OverLoad_B1.c: 189: Load->Safe=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,3
	goto	l25328
	line	190
	
l9797:	
	line	191
	
l25328:	
;OverLoad_B1.c: 190: }
;OverLoad_B1.c: 191: if(getTemp_Safe(1) && 1)
	movlw	(01h)
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9711
	goto	u9710
u9711:
	goto	l9801
u9710:
	line	193
	
l25330:	
;OverLoad_B1.c: 192: {
;OverLoad_B1.c: 193: Load->ADtoGO=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l9801
	line	194
	
l9798:	
	line	195
;OverLoad_B1.c: 194: }
;OverLoad_B1.c: 195: }
	goto	l9801
	line	196
	
l9796:	
	line	198
	
l25332:	
;OverLoad_B1.c: 196: else
;OverLoad_B1.c: 197: {
;OverLoad_B1.c: 198: if(Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9721
	goto	u9720
u9721:
	goto	l9801
u9720:
	line	200
	
l25334:	
;OverLoad_B1.c: 199: {
;OverLoad_B1.c: 200: Load->LightsON=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	201
;OverLoad_B1.c: 201: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	202
;OverLoad_B1.c: 202: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	203
;OverLoad_B1.c: 203: Load->Count=0;
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	204
;OverLoad_B1.c: 204: Load->TotalLoad=0;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	205
;OverLoad_B1.c: 205: Load->NumberCount=0;
	movf	(_Load),w
	addlw	03Fh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	206
;OverLoad_B1.c: 206: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	207
;OverLoad_B1.c: 207: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	208
	
l25336:	
;OverLoad_B1.c: 208: setLoad_AH_AL_Restore(1);
	movlw	(01h)
	fcall	_setLoad_AH_AL_Restore
	line	211
	
l25338:	
;OverLoad_B1.c: 211: setDimmerLights_Open(1,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Open)
	bsf	status,0
	rlf	(?_setDimmerLights_Open),f
	movlw	(01h)
	fcall	_setDimmerLights_Open
	line	215
	
l25340:	
;OverLoad_B1.c: 215: setDimmerLights_Open(2,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Open)
	bsf	status,0
	rlf	(?_setDimmerLights_Open),f
	movlw	(02h)
	fcall	_setDimmerLights_Open
	line	219
	
l25342:	
;OverLoad_B1.c: 219: setDimmerLights_Open(3,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Open)
	bsf	status,0
	rlf	(?_setDimmerLights_Open),f
	movlw	(03h)
	fcall	_setDimmerLights_Open
	goto	l9801
	line	235
	
l9800:	
	goto	l9801
	line	236
	
l9799:	
	goto	l9801
	line	237
	
l9795:	
	goto	l9801
	line	238
	
l9778:	
	line	239
	
l9801:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Main
	__end_of_setLoad_Main:
;; =============== function _setLoad_Main ends ============

	signat	_setLoad_Main,4216
	global	_DimmerLights_Main
psect	text3049,local,class=CODE,delta=2
global __ptext3049
__ptext3049:

;; *************** function _DimmerLights_Main *****************
;; Defined at:
;;		line 84 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_setDimmerLights_Main
;;		_DimmerLights_Close
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3049
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	84
	global	__size_of_DimmerLights_Main
	__size_of_DimmerLights_Main	equ	__end_of_DimmerLights_Main-_DimmerLights_Main
	
_DimmerLights_Main:	
	opt	stack 6
; Regs used in _DimmerLights_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	86
	
l25244:	
;Dimmer_B1.c: 86: setDimmerLights_Main(1);
	movlw	(01h)
	fcall	_setDimmerLights_Main
	line	89
;Dimmer_B1.c: 89: setDimmerLights_Main(2);
	movlw	(02h)
	fcall	_setDimmerLights_Main
	line	92
;Dimmer_B1.c: 92: setDimmerLights_Main(3);
	movlw	(03h)
	fcall	_setDimmerLights_Main
	line	95
;Dimmer_B1.c: 95: DimmerLights_Close();
	fcall	_DimmerLights_Close
	line	96
	
l4779:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Main
	__end_of_DimmerLights_Main:
;; =============== function _DimmerLights_Main ends ============

	signat	_DimmerLights_Main,88
	global	_setRF_DimmerValue
psect	text3050,local,class=CODE,delta=2
global __ptext3050
__ptext3050:

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 420 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3050
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	420
	global	__size_of_setRF_DimmerValue
	__size_of_setRF_DimmerValue	equ	__end_of_setRF_DimmerValue-_setRF_DimmerValue
	
_setRF_DimmerValue:	
	opt	stack 2
; Regs used in _setRF_DimmerValue: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_DimmerValue@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerValue@lights)
	line	421
	
l25232:	
;RF_Control_B1.c: 421: if(RF_Data[9] > 0x64)
	movlw	(065h)
	movlb 1	; select bank1
	subwf	0+(_RF_Data)^080h+09h,w
	skipc
	goto	u9521
	goto	u9520
u9521:
	goto	l25236
u9520:
	line	423
	
l25234:	
;RF_Control_B1.c: 422: {
;RF_Control_B1.c: 423: RF_Data[9]=0x64;
	movlw	(064h)
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	goto	l25236
	line	424
	
l13426:	
	line	425
	
l25236:	
;RF_Control_B1.c: 424: }
;RF_Control_B1.c: 425: Product->Data[9]=RF_Data[9];
	movf	0+(_RF_Data)^080h+09h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	426
	
l25238:	
;RF_Control_B1.c: 426: Product->Data[11]=lights;
	movf	(setRF_DimmerValue@lights),w
	movwf	(??_setRF_DimmerValue+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	427
	
l25240:	
;RF_Control_B1.c: 427: Product->Data[(20+lights)]=Product->Data[9];
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(setRF_DimmerValue@lights),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+1)+0
	movf	0+(??_setRF_DimmerValue+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	428
	
l25242:	
;RF_Control_B1.c: 428: setDimmerLights_AdjRF(lights);
	movf	(setRF_DimmerValue@lights),w
	fcall	_setDimmerLights_AdjRF
	line	429
	
l13427:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
;; =============== function _setRF_DimmerValue ends ============

	signat	_setRF_DimmerValue,4216
	global	_setOverTemp_ERROR
psect	text3051,local,class=CODE,delta=2
global __ptext3051
__ptext3051:

;; *************** function _setOverTemp_ERROR *****************
;; Defined at:
;;		line 144 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;;  command         1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1   17[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_TempPointSelect
;;		_setDimmer_TempERROR
;;		_DimmerLights_ERROR
;;		_setLED
;;		_setSw_Enable
;;		_setRF_Enable
;; This function is called by:
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text3051
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	144
	global	__size_of_setOverTemp_ERROR
	__size_of_setOverTemp_ERROR	equ	__end_of_setOverTemp_ERROR-_setOverTemp_ERROR
	
_setOverTemp_ERROR:	
	opt	stack 5
; Regs used in _setOverTemp_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setOverTemp_ERROR@temp stored from wreg
	movlb 0	; select bank0
	movwf	(setOverTemp_ERROR@temp)
	line	145
	
l25204:	
;OverTemperature_B1.c: 145: TempPointSelect(temp);
	movf	(setOverTemp_ERROR@temp),w
	fcall	_TempPointSelect
	line	146
	
l25206:	
;OverTemperature_B1.c: 146: if(command)
	movlb 0	; select bank0
	movf	(setOverTemp_ERROR@command),w
	skipz
	goto	u9500
	goto	l25224
u9500:
	line	148
	
l25208:	
;OverTemperature_B1.c: 147: {
;OverTemperature_B1.c: 148: Temp->ERROR=1;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	149
	
l25210:	
;OverTemperature_B1.c: 149: setDimmer_TempERROR(1,1);
	movlb 0	; select bank0
	clrf	(?_setDimmer_TempERROR)
	bsf	status,0
	rlf	(?_setDimmer_TempERROR),f
	movlw	(01h)
	fcall	_setDimmer_TempERROR
	line	150
	
l25212:	
;OverTemperature_B1.c: 150: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	152
	
l25214:	
;OverTemperature_B1.c: 152: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_setOverTemp_ERROR+0)+0
	movf	(??_setOverTemp_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	155
	
l25216:	
;OverTemperature_B1.c: 155: setSw_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(01h)
	fcall	_setSw_Enable
	line	158
	
l25218:	
;OverTemperature_B1.c: 158: setSw_Enable(2,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(02h)
	fcall	_setSw_Enable
	line	161
	
l25220:	
;OverTemperature_B1.c: 161: setSw_Enable(3,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(03h)
	fcall	_setSw_Enable
	line	165
	
l25222:	
;OverTemperature_B1.c: 165: setRF_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	movlw	(01h)
	fcall	_setRF_Enable
	line	167
;OverTemperature_B1.c: 167: }
	goto	l11035
	line	168
	
l11032:	
	
l25224:	
;OverTemperature_B1.c: 168: else if(command == 0)
	movlb 0	; select bank0
	movf	(setOverTemp_ERROR@command),f
	skipz
	goto	u9511
	goto	u9510
u9511:
	goto	l11035
u9510:
	line	170
	
l25226:	
;OverTemperature_B1.c: 169: {
;OverTemperature_B1.c: 170: Temp->ERROR=0;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	171
	
l25228:	
;OverTemperature_B1.c: 171: setDimmer_TempERROR(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmer_TempERROR)
	movlw	(01h)
	fcall	_setDimmer_TempERROR
	line	172
	
l25230:	
;OverTemperature_B1.c: 172: Temp->Safe=1;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	173
;OverTemperature_B1.c: 173: setLED(99,10);
	movlw	(0Ah)
	movlb 0	; select bank0
	movwf	(??_setOverTemp_ERROR+0)+0
	movf	(??_setOverTemp_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	177
;OverTemperature_B1.c: 177: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	181
;OverTemperature_B1.c: 181: setSw_Enable(2,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(02h)
	fcall	_setSw_Enable
	line	185
;OverTemperature_B1.c: 185: setSw_Enable(3,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(03h)
	fcall	_setSw_Enable
	line	189
;OverTemperature_B1.c: 189: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l11035
	line	191
	
l11034:	
	goto	l11035
	line	192
	
l11033:	
	
l11035:	
	return
	opt stack 0
GLOBAL	__end_of_setOverTemp_ERROR
	__end_of_setOverTemp_ERROR:
;; =============== function _setOverTemp_ERROR ends ============

	signat	_setOverTemp_ERROR,8312
	global	_setLoad_ERROR
psect	text3052,local,class=CODE,delta=2
global __ptext3052
__ptext3052:

;; *************** function _setLoad_ERROR *****************
;; Defined at:
;;		line 242 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1   17[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_LoadPointSelect
;;		_setDimmer_LoadERROR
;;		_DimmerLights_ERROR
;;		_setLED
;;		_setSw_Enable
;;		_setRF_Enable
;; This function is called by:
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text3052
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	242
	global	__size_of_setLoad_ERROR
	__size_of_setLoad_ERROR	equ	__end_of_setLoad_ERROR-_setLoad_ERROR
	
_setLoad_ERROR:	
	opt	stack 5
; Regs used in _setLoad_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setLoad_ERROR@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_ERROR@load)
	line	243
	
l25160:	
;OverLoad_B1.c: 243: LoadPointSelect(load);
	movf	(setLoad_ERROR@load),w
	fcall	_LoadPointSelect
	line	244
	
l25162:	
;OverLoad_B1.c: 244: if(command)
	movlb 0	; select bank0
	movf	(setLoad_ERROR@command),w
	skipz
	goto	u9480
	goto	l25184
u9480:
	line	246
	
l25164:	
;OverLoad_B1.c: 245: {
;OverLoad_B1.c: 246: setDimmer_LoadERROR(1,1);
	clrf	(?_setDimmer_LoadERROR)
	bsf	status,0
	rlf	(?_setDimmer_LoadERROR),f
	movlw	(01h)
	fcall	_setDimmer_LoadERROR
	line	247
	
l25166:	
;OverLoad_B1.c: 247: Load->ERROR=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,5
	line	248
	
l25168:	
;OverLoad_B1.c: 248: Load->ErrorStatus=1;
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	line	249
	
l25170:	
;OverLoad_B1.c: 249: Load->Safe=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,3
	line	250
	
l25172:	
;OverLoad_B1.c: 250: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	251
	
l25174:	
;OverLoad_B1.c: 251: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_setLoad_ERROR+0)+0
	movf	(??_setLoad_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	254
	
l25176:	
;OverLoad_B1.c: 254: setSw_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(01h)
	fcall	_setSw_Enable
	line	258
	
l25178:	
;OverLoad_B1.c: 258: setSw_Enable(2,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(02h)
	fcall	_setSw_Enable
	line	262
	
l25180:	
;OverLoad_B1.c: 262: setSw_Enable(3,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(03h)
	fcall	_setSw_Enable
	line	266
	
l25182:	
;OverLoad_B1.c: 266: setRF_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	movlw	(01h)
	fcall	_setRF_Enable
	line	268
;OverLoad_B1.c: 268: }
	goto	l9807
	line	269
	
l9804:	
	
l25184:	
;OverLoad_B1.c: 269: else if(command == 0)
	movlb 0	; select bank0
	movf	(setLoad_ERROR@command),f
	skipz
	goto	u9491
	goto	u9490
u9491:
	goto	l9807
u9490:
	line	271
	
l25186:	
;OverLoad_B1.c: 270: {
;OverLoad_B1.c: 271: setDimmer_LoadERROR(1,0);
	clrf	(?_setDimmer_LoadERROR)
	movlw	(01h)
	fcall	_setDimmer_LoadERROR
	line	272
	
l25188:	
;OverLoad_B1.c: 272: Load->ERROR=0;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,5
	line	273
	
l25190:	
;OverLoad_B1.c: 273: Load->ErrorStatus=0;
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	274
	
l25192:	
;OverLoad_B1.c: 274: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	275
	
l25194:	
;OverLoad_B1.c: 275: setLED(99,10);
	movlw	(0Ah)
	movwf	(??_setLoad_ERROR+0)+0
	movf	(??_setLoad_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	278
	
l25196:	
;OverLoad_B1.c: 278: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	282
	
l25198:	
;OverLoad_B1.c: 282: setSw_Enable(2,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(02h)
	fcall	_setSw_Enable
	line	286
	
l25200:	
;OverLoad_B1.c: 286: setSw_Enable(3,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(03h)
	fcall	_setSw_Enable
	line	290
	
l25202:	
;OverLoad_B1.c: 290: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l9807
	line	292
	
l9806:	
	goto	l9807
	line	293
	
l9805:	
	
l9807:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_ERROR
	__end_of_setLoad_ERROR:
;; =============== function _setLoad_ERROR ends ============

	signat	_setLoad_ERROR,8312
	global	_Switch_Main
psect	text3053,local,class=CODE,delta=2
global __ptext3053
__ptext3053:

;; *************** function _Switch_Main *****************
;; Defined at:
;;		line 57 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text3053
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	57
	global	__size_of_Switch_Main
	__size_of_Switch_Main	equ	__end_of_Switch_Main-_Switch_Main
	
_Switch_Main:	
	opt	stack 7
; Regs used in _Switch_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	59
	
l25158:	
;Switch_B1.c: 59: setSw_Main(1);
	movlw	(01h)
	fcall	_setSw_Main
	line	63
;Switch_B1.c: 63: setSw_Main(2);
	movlw	(02h)
	fcall	_setSw_Main
	line	67
;Switch_B1.c: 67: setSw_Main(3);
	movlw	(03h)
	fcall	_setSw_Main
	line	70
	
l14602:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Main
	__end_of_Switch_Main:
;; =============== function _Switch_Main ends ============

	signat	_Switch_Main,88
	global	_Flash_Memory_Main
psect	text3054,local,class=CODE,delta=2
global __ptext3054
__ptext3054:

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 408 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3054
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	408
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
	opt	stack 8
; Regs used in _Flash_Memory_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	409
	
l25144:	
;MCU_16f1518_B1.c: 409: if(Memory->GO)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9451
	goto	u9450
u9451:
	goto	l8591
u9450:
	line	411
	
l25146:	
;MCU_16f1518_B1.c: 410: {
;MCU_16f1518_B1.c: 411: if(Memory->Modify)
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9461
	goto	u9460
u9461:
	goto	l25156
u9460:
	line	413
	
l25148:	
;MCU_16f1518_B1.c: 412: {
;MCU_16f1518_B1.c: 413: Memory->Time++;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	414
	
l25150:	
;MCU_16f1518_B1.c: 414: if(Memory->Time == 50)
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(032h)
	skipz
	goto	u9475
	moviw	[1]fsr1
	xorlw	high(032h)
u9475:
	skipz
	goto	u9471
	goto	u9470
u9471:
	goto	l8591
u9470:
	line	416
	
l25152:	
;MCU_16f1518_B1.c: 415: {
;MCU_16f1518_B1.c: 416: Memory->Time=0;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	417
;MCU_16f1518_B1.c: 417: Memory->Modify=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	418
;MCU_16f1518_B1.c: 418: Memory->GO=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	419
	
l25154:	
;MCU_16f1518_B1.c: 419: Flash_Memory_Modify();
	fcall	_Flash_Memory_Modify
	goto	l8591
	line	420
	
l8589:	
	line	421
;MCU_16f1518_B1.c: 420: }
;MCU_16f1518_B1.c: 421: }
	goto	l8591
	line	422
	
l8588:	
	line	424
	
l25156:	
;MCU_16f1518_B1.c: 422: else
;MCU_16f1518_B1.c: 423: {
;MCU_16f1518_B1.c: 424: Memory->GO=0;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l8591
	line	425
	
l8590:	
	goto	l8591
	line	426
	
l8587:	
	line	427
	
l8591:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
;; =============== function _Flash_Memory_Main ends ============

	signat	_Flash_Memory_Main,88
	global	_MainT
psect	text3055,local,class=CODE,delta=2
global __ptext3055
__ptext3055:

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
;; Hardware stack levels required when called:    8
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
psect	text3055
	file	"G:\Program\PIC\Source_File\main.c"
	line	102
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 7
; Regs used in _MainT: [wreg+fsr1l-status,0+pclath+cstack]
	line	104
	
l25128:	
;main.c: 104: if(!TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9431
	goto	u9430
u9431:
	goto	l7298
u9430:
	line	106
	
l25130:	
;main.c: 105: {
;main.c: 106: TMain->PowerCount++;
	movf	(_TMain)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	107
	
l25132:	
;main.c: 107: if(TMain->PowerCount == 150)
	movf	(_TMain)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(096h)
	skipz
	goto	u9445
	moviw	[1]fsr1
	xorlw	high(096h)
u9445:
	skipz
	goto	u9441
	goto	u9440
u9441:
	goto	l7298
u9440:
	line	109
	
l25134:	
;main.c: 108: {
;main.c: 109: TMain->PowerCount=0;
	movf	(_TMain)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	110
;main.c: 110: TMain->PowerON=1;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	113
	
l25136:	
;main.c: 113: setTemp_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setTemp_Enable)
	bsf	status,0
	rlf	(?_setTemp_Enable),f
	movlw	(01h)
	fcall	_setTemp_Enable
	line	117
	
l25138:	
;main.c: 117: setLoad_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setLoad_Enable)
	bsf	status,0
	rlf	(?_setLoad_Enable),f
	movlw	(01h)
	fcall	_setLoad_Enable
	line	123
	
l25140:	
;main.c: 123: setBuz(1,3,50);
	movlw	(03h)
	movlb 0	; select bank0
	movwf	(??_MainT+0)+0
	movf	(??_MainT+0)+0,w
	movwf	(?_setBuz)
	movlw	low(032h)
	movwf	0+(?_setBuz)+01h
	movlw	high(032h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	124
	
l25142:	
;main.c: 124: TMain->SelfTest=1;
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	127
;main.c: 127: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	131
;main.c: 131: setSw_Enable(2,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(02h)
	fcall	_setSw_Enable
	line	135
;main.c: 135: setSw_Enable(3,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(03h)
	fcall	_setSw_Enable
	line	139
;main.c: 139: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l7298
	line	143
	
l7296:	
	line	144
;main.c: 143: }
;main.c: 144: }
	goto	l7298
	line	145
	
l7295:	
	goto	l7298
	line	190
;main.c: 145: else
;main.c: 146: {
	
l7297:	
	line	191
	
l7298:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_setDimmerLights_Main
psect	text3056,local,class=CODE,delta=2
global __ptext3056
__ptext3056:

;; *************** function _setDimmerLights_Main *****************
;; Defined at:
;;		line 99 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   54[BANK0 ] unsigned char 
;;  close           1   53[BANK0 ] unsigned char 
;;  open            1   52[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setDimmerLights_Open
;;		_setDimmerLights_Close
;;		_setDimmerLights
;;		_getDimmerLights_Trigger
;;		_setDimmerLights_Adj
;;		_setBuz
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text3056
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	99
	global	__size_of_setDimmerLights_Main
	__size_of_setDimmerLights_Main	equ	__end_of_setDimmerLights_Main-_setDimmerLights_Main
	
_setDimmerLights_Main:	
	opt	stack 6
; Regs used in _setDimmerLights_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Main@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Main@lights)
	line	100
	
l25050:	
;Dimmer_B1.c: 100: char open=1,close=1;
	clrf	(setDimmerLights_Main@open)
	bsf	status,0
	rlf	(setDimmerLights_Main@open),f
	clrf	(setDimmerLights_Main@close)
	bsf	status,0
	rlf	(setDimmerLights_Main@close),f
	line	101
	
l25052:	
;Dimmer_B1.c: 101: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	102
	
l25054:	
;Dimmer_B1.c: 102: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9181
	goto	u9180
u9181:
	goto	l25114
u9180:
	line	105
	
l25056:	
;Dimmer_B1.c: 103: {
;Dimmer_B1.c: 105: if(lights == 1)
	movf	(setDimmerLights_Main@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u9191
	goto	u9190
u9191:
	goto	l25062
u9190:
	line	107
	
l25058:	
;Dimmer_B1.c: 106: {
;Dimmer_B1.c: 107: if(!DimmerLights22->Open || !DimmerLights33->Open)
	movf	(_DimmerLights22),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u9201
	goto	u9200
u9201:
	goto	l4786
u9200:
	
l25060:	
	movf	(_DimmerLights33),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u9211
	goto	u9210
u9211:
	goto	l25062
u9210:
	
l4786:	
	line	109
;Dimmer_B1.c: 108: {
;Dimmer_B1.c: 109: open=0;
	clrf	(setDimmerLights_Main@open)
	goto	l25062
	line	110
	
l4784:	
	goto	l25062
	line	111
	
l4783:	
	line	112
	
l25062:	
;Dimmer_B1.c: 110: }
;Dimmer_B1.c: 111: }
;Dimmer_B1.c: 112: if(lights == 2)
	movf	(setDimmerLights_Main@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u9221
	goto	u9220
u9221:
	goto	l25068
u9220:
	line	114
	
l25064:	
;Dimmer_B1.c: 113: {
;Dimmer_B1.c: 114: if(!DimmerLights11->Open || !DimmerLights33->Open)
	movf	(_DimmerLights11),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u9231
	goto	u9230
u9231:
	goto	l4790
u9230:
	
l25066:	
	movf	(_DimmerLights33),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u9241
	goto	u9240
u9241:
	goto	l25068
u9240:
	
l4790:	
	line	116
;Dimmer_B1.c: 115: {
;Dimmer_B1.c: 116: open=0;
	clrf	(setDimmerLights_Main@open)
	goto	l25068
	line	117
	
l4788:	
	goto	l25068
	line	118
	
l4787:	
	line	119
	
l25068:	
;Dimmer_B1.c: 117: }
;Dimmer_B1.c: 118: }
;Dimmer_B1.c: 119: if(lights == 3)
	movf	(setDimmerLights_Main@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u9251
	goto	u9250
u9251:
	goto	l25074
u9250:
	line	121
	
l25070:	
;Dimmer_B1.c: 120: {
;Dimmer_B1.c: 121: if(!DimmerLights11->Open || !DimmerLights22->Open)
	movf	(_DimmerLights11),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u9261
	goto	u9260
u9261:
	goto	l4794
u9260:
	
l25072:	
	movf	(_DimmerLights22),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u9271
	goto	u9270
u9271:
	goto	l25074
u9270:
	
l4794:	
	line	123
;Dimmer_B1.c: 122: {
;Dimmer_B1.c: 123: open=0;
	clrf	(setDimmerLights_Main@open)
	goto	l25074
	line	124
	
l4792:	
	goto	l25074
	line	125
	
l4791:	
	line	145
	
l25074:	
;Dimmer_B1.c: 124: }
;Dimmer_B1.c: 125: }
;Dimmer_B1.c: 145: if(open)
	movf	(setDimmerLights_Main@open),w
	skipz
	goto	u9280
	goto	l4816
u9280:
	line	147
	
l25076:	
;Dimmer_B1.c: 146: {
;Dimmer_B1.c: 147: if(DimmerLights->Switch)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9291
	goto	u9290
u9291:
	goto	l25106
u9290:
	line	150
	
l25078:	
;Dimmer_B1.c: 148: {
;Dimmer_B1.c: 150: if(lights == 1)
	movf	(setDimmerLights_Main@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u9301
	goto	u9300
u9301:
	goto	l25084
u9300:
	line	152
	
l25080:	
;Dimmer_B1.c: 151: {
;Dimmer_B1.c: 152: if(!DimmerLights22->Close || !DimmerLights33->Close)
	movf	(_DimmerLights22),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u9311
	goto	u9310
u9311:
	goto	l4800
u9310:
	
l25082:	
	movf	(_DimmerLights33),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9321
	goto	u9320
u9321:
	goto	l25084
u9320:
	
l4800:	
	line	154
;Dimmer_B1.c: 153: {
;Dimmer_B1.c: 154: close=0;
	clrf	(setDimmerLights_Main@close)
	goto	l25084
	line	155
	
l4798:	
	goto	l25084
	line	156
	
l4797:	
	line	157
	
l25084:	
;Dimmer_B1.c: 155: }
;Dimmer_B1.c: 156: }
;Dimmer_B1.c: 157: if(lights == 2)
	movf	(setDimmerLights_Main@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u9331
	goto	u9330
u9331:
	goto	l25090
u9330:
	line	159
	
l25086:	
;Dimmer_B1.c: 158: {
;Dimmer_B1.c: 159: if(!DimmerLights11->Close || !DimmerLights33->Close)
	movf	(_DimmerLights11),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u9341
	goto	u9340
u9341:
	goto	l4804
u9340:
	
l25088:	
	movf	(_DimmerLights33),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9351
	goto	u9350
u9351:
	goto	l25090
u9350:
	
l4804:	
	line	161
;Dimmer_B1.c: 160: {
;Dimmer_B1.c: 161: close=0;
	clrf	(setDimmerLights_Main@close)
	goto	l25090
	line	162
	
l4802:	
	goto	l25090
	line	163
	
l4801:	
	line	164
	
l25090:	
;Dimmer_B1.c: 162: }
;Dimmer_B1.c: 163: }
;Dimmer_B1.c: 164: if(lights == 3)
	movf	(setDimmerLights_Main@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u9361
	goto	u9360
u9361:
	goto	l25096
u9360:
	line	166
	
l25092:	
;Dimmer_B1.c: 165: {
;Dimmer_B1.c: 166: if(!DimmerLights11->Close || !DimmerLights22->Close)
	movf	(_DimmerLights11),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u9371
	goto	u9370
u9371:
	goto	l4808
u9370:
	
l25094:	
	movf	(_DimmerLights22),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9381
	goto	u9380
u9381:
	goto	l25096
u9380:
	
l4808:	
	line	168
;Dimmer_B1.c: 167: {
;Dimmer_B1.c: 168: close=0;
	clrf	(setDimmerLights_Main@close)
	goto	l25096
	line	169
	
l4806:	
	goto	l25096
	line	170
	
l4805:	
	line	189
	
l25096:	
;Dimmer_B1.c: 169: }
;Dimmer_B1.c: 170: }
;Dimmer_B1.c: 189: if(close)
	movf	(setDimmerLights_Main@close),w
	skipz
	goto	u9390
	goto	l4816
u9390:
	line	191
	
l25098:	
;Dimmer_B1.c: 190: {
;Dimmer_B1.c: 191: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	192
	
l25100:	
;Dimmer_B1.c: 192: setDimmerLights_Open(lights,0);
	clrf	(?_setDimmerLights_Open)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Open
	line	193
	
l25102:	
;Dimmer_B1.c: 193: setDimmerLights_Close(lights,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Close)
	bsf	status,0
	rlf	(?_setDimmerLights_Close),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Close
	line	194
	
l25104:	
;Dimmer_B1.c: 194: setDimmerLights(lights,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	bsf	status,0
	rlf	(?_setDimmerLights),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	goto	l4816
	line	195
	
l4809:	
	line	196
;Dimmer_B1.c: 195: }
;Dimmer_B1.c: 196: }
	goto	l4816
	line	197
	
l4796:	
	line	199
	
l25106:	
;Dimmer_B1.c: 197: else
;Dimmer_B1.c: 198: {
;Dimmer_B1.c: 199: DimmerLights->Trigger=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	200
	
l25108:	
;Dimmer_B1.c: 200: setDimmerLights_Open(lights,0);
	clrf	(?_setDimmerLights_Open)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Open
	line	201
	
l25110:	
;Dimmer_B1.c: 201: setDimmerLights_Close(lights,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Close)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Close
	line	202
	
l25112:	
;Dimmer_B1.c: 202: setDimmerLights(lights,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	goto	l4816
	line	203
	
l4810:	
	goto	l4816
	line	204
	
l4795:	
	line	205
;Dimmer_B1.c: 203: }
;Dimmer_B1.c: 204: }
;Dimmer_B1.c: 205: }
	goto	l4816
	line	206
	
l4782:	
	line	208
	
l25114:	
;Dimmer_B1.c: 206: else
;Dimmer_B1.c: 207: {
;Dimmer_B1.c: 208: if(DimmerLights->TriggerAdj)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9401
	goto	u9400
u9401:
	goto	l4816
u9400:
	line	210
	
l25116:	
;Dimmer_B1.c: 209: {
;Dimmer_B1.c: 210: if(!getDimmerLights_Trigger())
	fcall	_getDimmerLights_Trigger
	iorlw	0
	skipz
	goto	u9411
	goto	u9410
u9411:
	goto	l4816
u9410:
	line	212
	
l25118:	
;Dimmer_B1.c: 211: {
;Dimmer_B1.c: 212: DimmerLightsPointSelect(lights);
	movlb 0	; select bank0
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	213
	
l25120:	
;Dimmer_B1.c: 213: DimmerLights->TriggerAdj=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	214
	
l25122:	
;Dimmer_B1.c: 214: if(DimmerLights->AdjGo)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9421
	goto	u9420
u9421:
	goto	l25126
u9420:
	line	216
	
l25124:	
;Dimmer_B1.c: 215: {
;Dimmer_B1.c: 216: setDimmerLights_Adj(lights,1);
	clrf	(?_setDimmerLights_Adj)
	bsf	status,0
	rlf	(?_setDimmerLights_Adj),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	line	217
;Dimmer_B1.c: 217: setBuz(1,1,100);
	movlb 0	; select bank0
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	218
;Dimmer_B1.c: 218: }
	goto	l4816
	line	219
	
l4814:	
	line	221
	
l25126:	
;Dimmer_B1.c: 219: else
;Dimmer_B1.c: 220: {
;Dimmer_B1.c: 221: setDimmerLights_Adj(lights,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Adj)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	goto	l4816
	line	222
	
l4815:	
	goto	l4816
	line	223
	
l4813:	
	goto	l4816
	line	224
	
l4812:	
	goto	l4816
	line	225
	
l4811:	
	line	226
	
l4816:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Main
	__end_of_setDimmerLights_Main:
;; =============== function _setDimmerLights_Main ends ============

	signat	_setDimmerLights_Main,4216
	global	_DimmerLights_Initialization
psect	text3057,local,class=CODE,delta=2
global __ptext3057
__ptext3057:

;; *************** function _DimmerLights_Initialization *****************
;; Defined at:
;;		line 33 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setDimmerLights_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3057
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	33
	global	__size_of_DimmerLights_Initialization
	__size_of_DimmerLights_Initialization	equ	__end_of_DimmerLights_Initialization-_DimmerLights_Initialization
	
_DimmerLights_Initialization:	
	opt	stack 7
; Regs used in _DimmerLights_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	35
	
l25040:	
;Dimmer_B1.c: 35: DimmerLights11=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights11)
	line	36
	
l25042:	
;Dimmer_B1.c: 36: setDimmerLights_Initialization(1);
	movlw	(01h)
	fcall	_setDimmerLights_Initialization
	line	40
	
l25044:	
;Dimmer_B1.c: 40: DimmerLights22=&DimmerLights2;
	movlw	(_DimmerLights2)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights22)
	line	41
;Dimmer_B1.c: 41: setDimmerLights_Initialization(2);
	movlw	(02h)
	fcall	_setDimmerLights_Initialization
	line	45
	
l25046:	
;Dimmer_B1.c: 45: DimmerLights33=&DimmerLights3;
	movlw	(_DimmerLights3)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights33)
	line	46
	
l25048:	
;Dimmer_B1.c: 46: setDimmerLights_Initialization(3);
	movlw	(03h)
	fcall	_setDimmerLights_Initialization
	line	48
	
l4768:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Initialization
	__end_of_DimmerLights_Initialization:
;; =============== function _DimmerLights_Initialization ends ============

	signat	_DimmerLights_Initialization,88
	global	_setSw_Main
psect	text3058,local,class=CODE,delta=2
global __ptext3058
__ptext3058:

;; *************** function _setSw_Main *****************
;; Defined at:
;;		line 93 in file "G:\Program\PIC\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   17[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_SwPointSelect
;;		_Sw_OnFunc
;;		_Sw_AdjFunc
;;		_setRF_Learn
;;		_setBuz
;;		_Sw_OffFunc
;; This function is called by:
;;		_Switch_Main
;; This function uses a non-reentrant model
;;
psect	text3058
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	93
	global	__size_of_setSw_Main
	__size_of_setSw_Main	equ	__end_of_setSw_Main-_setSw_Main
	
_setSw_Main:	
	opt	stack 7
; Regs used in _setSw_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Main@sw)
	line	94
	
l24966:	
;Switch_B1.c: 94: SwPointSelect(sw);
	movf	(setSw_Main@sw),w
	fcall	_SwPointSelect
	line	96
	
l24968:	
;Switch_B1.c: 96: if(sw == 1)
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u9021
	goto	u9020
u9021:
	goto	l24972
u9020:
	line	98
	
l24970:	
;Switch_B1.c: 97: {
;Switch_B1.c: 98: Sw->Touch=(RA0)?1:0;
	movlw	0
	btfsc	(96/8),(96)&7
	movlw	1
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rlf	(??_setSw_Main+0)+0,f
	movf	indf1,w
	xorwf	(??_setSw_Main+0)+0,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_setSw_Main+0)+0,w
	movwf	indf1
	line	99
;Switch_B1.c: 99: }
	goto	l24980
	line	100
	
l14614:	
	
l24972:	
;Switch_B1.c: 100: else if(sw == 2)
	movf	(setSw_Main@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u9031
	goto	u9030
u9031:
	goto	l24976
u9030:
	line	102
	
l24974:	
;Switch_B1.c: 101: {
;Switch_B1.c: 102: Sw->Touch=(RA6)?1:0;
	movlw	0
	btfsc	(102/8),(102)&7
	movlw	1
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rlf	(??_setSw_Main+0)+0,f
	movf	indf1,w
	xorwf	(??_setSw_Main+0)+0,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_setSw_Main+0)+0,w
	movwf	indf1
	line	103
;Switch_B1.c: 103: }
	goto	l24980
	line	104
	
l14616:	
	
l24976:	
;Switch_B1.c: 104: else if(sw == 3)
	movf	(setSw_Main@sw),w
	xorlw	03h&0ffh
	skipz
	goto	u9041
	goto	u9040
u9041:
	goto	l24980
u9040:
	line	106
	
l24978:	
;Switch_B1.c: 105: {
;Switch_B1.c: 106: Sw->Touch=(RA4)?1:0;
	movlw	0
	btfsc	(100/8),(100)&7
	movlw	1
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rlf	(??_setSw_Main+0)+0,f
	movf	indf1,w
	xorwf	(??_setSw_Main+0)+0,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_setSw_Main+0)+0,w
	movwf	indf1
	goto	l24980
	line	107
	
l14618:	
	goto	l24980
	line	125
	
l14617:	
	goto	l24980
	
l14615:	
	
l24980:	
;Switch_B1.c: 107: }
;Switch_B1.c: 125: if(Sw->Enable)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9051
	goto	u9050
u9051:
	goto	l14636
u9050:
	line	127
	
l24982:	
;Switch_B1.c: 126: {
;Switch_B1.c: 127: if(Sw->Touch)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9061
	goto	u9060
u9061:
	goto	l25028
u9060:
	line	129
	
l24984:	
;Switch_B1.c: 128: {
;Switch_B1.c: 129: if(!Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9071
	goto	u9070
u9071:
	goto	l24994
u9070:
	line	131
	
l24986:	
;Switch_B1.c: 130: {
;Switch_B1.c: 131: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	132
	
l24988:	
;Switch_B1.c: 132: if(Sw->DebounceTime >= 10)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipc
	goto	u9081
	goto	u9080
u9081:
	goto	l14636
u9080:
	line	134
	
l24990:	
;Switch_B1.c: 133: {
;Switch_B1.c: 134: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	135
;Switch_B1.c: 135: Sw->Debounce=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	136
	
l24992:	
;Switch_B1.c: 136: Sw_OnFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_OnFunc
	goto	l14636
	line	137
	
l14622:	
	line	138
;Switch_B1.c: 137: }
;Switch_B1.c: 138: }
	goto	l14636
	line	139
	
l14621:	
	line	141
	
l24994:	
;Switch_B1.c: 139: else
;Switch_B1.c: 140: {
;Switch_B1.c: 141: if(!Sw->Hold1)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u9091
	goto	u9090
u9091:
	goto	l25004
u9090:
	line	143
	
l24996:	
;Switch_B1.c: 142: {
;Switch_B1.c: 143: Sw->Hold1Time++;
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
	line	144
	
l24998:	
;Switch_B1.c: 144: if(Sw->Hold1Time >= 150)
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
	goto	u9101
	goto	u9100
u9101:
	goto	l14636
u9100:
	line	146
	
l25000:	
;Switch_B1.c: 145: {
;Switch_B1.c: 146: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	147
;Switch_B1.c: 147: Sw->Hold1=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	149
	
l25002:	
;Switch_B1.c: 149: Sw_AdjFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_AdjFunc
	goto	l14636
	line	151
	
l14625:	
	line	152
;Switch_B1.c: 151: }
;Switch_B1.c: 152: }
	goto	l14636
	line	153
	
l14624:	
	line	155
	
l25004:	
;Switch_B1.c: 153: else
;Switch_B1.c: 154: {
;Switch_B1.c: 155: if(!Sw->Hold2)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u9111
	goto	u9110
u9111:
	goto	l25018
u9110:
	line	157
	
l25006:	
;Switch_B1.c: 156: {
;Switch_B1.c: 157: Sw->Hold2Time++;
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
	line	158
	
l25008:	
;Switch_B1.c: 158: if(Sw->Hold2Time >= 150)
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
	goto	u9121
	goto	u9120
u9121:
	goto	l14636
u9120:
	line	160
	
l25010:	
;Switch_B1.c: 159: {
;Switch_B1.c: 160: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	161
;Switch_B1.c: 161: Sw->Hold2=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	163
	
l25012:	
;Switch_B1.c: 163: setRF_Learn(1,1);
	clrf	(?_setRF_Learn)
	bsf	status,0
	rlf	(?_setRF_Learn),f
	movlw	(01h)
	fcall	_setRF_Learn
	line	164
	
l25014:	
;Switch_B1.c: 164: if(TMain->First)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9131
	goto	u9130
u9131:
	goto	l14636
u9130:
	line	166
	
l25016:	
;Switch_B1.c: 165: {
;Switch_B1.c: 166: setBuz(1,2,100);
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setSw_Main+0)+0
	movf	(??_setSw_Main+0)+0,w
	movwf	(?_setBuz)
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	goto	l14636
	line	167
	
l14629:	
	goto	l14636
	line	169
	
l14628:	
	line	170
;Switch_B1.c: 167: }
;Switch_B1.c: 169: }
;Switch_B1.c: 170: }
	goto	l14636
	line	171
	
l14627:	
	line	173
	
l25018:	
;Switch_B1.c: 171: else
;Switch_B1.c: 172: {
;Switch_B1.c: 173: if(!Sw->Hold3)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u9141
	goto	u9140
u9141:
	goto	l14636
u9140:
	line	175
	
l25020:	
;Switch_B1.c: 174: {
;Switch_B1.c: 175: Sw->Hold3Time++;
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
	line	176
	
l25022:	
;Switch_B1.c: 176: if(Sw->Hold3Time >= 300)
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
	goto	u9151
	goto	u9150
u9151:
	goto	l14636
u9150:
	line	178
	
l25024:	
;Switch_B1.c: 177: {
;Switch_B1.c: 178: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	179
;Switch_B1.c: 179: Sw->Hold3=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	180
	
l25026:	
;Switch_B1.c: 180: setRF_Learn(1,0);
	clrf	(?_setRF_Learn)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l14636
	line	181
	
l14632:	
	goto	l14636
	line	182
	
l14631:	
	goto	l14636
	line	183
	
l14630:	
	goto	l14636
	line	184
	
l14626:	
	goto	l14636
	line	185
	
l14623:	
	line	186
;Switch_B1.c: 181: }
;Switch_B1.c: 182: }
;Switch_B1.c: 183: }
;Switch_B1.c: 184: }
;Switch_B1.c: 185: }
;Switch_B1.c: 186: }
	goto	l14636
	line	187
	
l14620:	
	line	189
	
l25028:	
;Switch_B1.c: 187: else
;Switch_B1.c: 188: {
;Switch_B1.c: 189: if(Sw->Debounce)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9161
	goto	u9160
u9161:
	goto	l14636
u9160:
	line	191
	
l25030:	
;Switch_B1.c: 190: {
;Switch_B1.c: 191: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	192
	
l25032:	
;Switch_B1.c: 192: if(Sw->DebounceTime >= 10)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipc
	goto	u9171
	goto	u9170
u9171:
	goto	l14636
u9170:
	line	194
	
l25034:	
;Switch_B1.c: 193: {
;Switch_B1.c: 194: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	195
;Switch_B1.c: 195: Sw->Debounce=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	196
;Switch_B1.c: 196: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	197
;Switch_B1.c: 197: Sw->Hold1=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	198
;Switch_B1.c: 198: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	199
;Switch_B1.c: 199: Sw->Hold2=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	200
;Switch_B1.c: 200: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	201
;Switch_B1.c: 201: Sw->Hold3=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	202
	
l25036:	
;Switch_B1.c: 202: setRF_Learn(1,0);
	clrf	(?_setRF_Learn)
	movlw	(01h)
	fcall	_setRF_Learn
	line	203
	
l25038:	
;Switch_B1.c: 203: Sw_OffFunc(sw);
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	fcall	_Sw_OffFunc
	goto	l14636
	line	204
	
l14635:	
	goto	l14636
	line	205
	
l14634:	
	goto	l14636
	line	206
	
l14633:	
	goto	l14636
	line	207
	
l14619:	
	line	208
	
l14636:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Main
	__end_of_setSw_Main:
;; =============== function _setSw_Main ends ============

	signat	_setSw_Main,4216
	global	_Flash_Memory_Modify
psect	text3059,local,class=CODE,delta=2
global __ptext3059
__ptext3059:

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 482 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3059
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	482
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
	opt	stack 8
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l-status,0+pclath+cstack]
	line	484
	
l24940:	
;MCU_16f1518_B1.c: 483: char i;
;MCU_16f1518_B1.c: 484: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Modify@i)
	
l24942:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u8991
	goto	u8990
u8991:
	goto	l24946
u8990:
	goto	l24952
	
l24944:	
	goto	l24952
	line	485
	
l8608:	
	line	486
	
l24946:	
;MCU_16f1518_B1.c: 485: {
;MCU_16f1518_B1.c: 486: Memory->Data[i]=Flash_Memory_Read(i);
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
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	484
	
l24948:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l24950:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9001
	goto	u9000
u9001:
	goto	l24946
u9000:
	goto	l24952
	
l8609:	
	line	488
	
l24952:	
;MCU_16f1518_B1.c: 487: }
;MCU_16f1518_B1.c: 488: Memory->Data[0]=Product->Data[12];
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	489
;MCU_16f1518_B1.c: 489: Memory->Data[1]=Product->Data[13];
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	490
;MCU_16f1518_B1.c: 490: Memory->Data[2]=Product->Data[14];
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	02h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	496
;MCU_16f1518_B1.c: 496: if(Memory->LoopSave)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9011
	goto	u9010
u9011:
	goto	l24958
u9010:
	line	498
	
l24954:	
;MCU_16f1518_B1.c: 497: {
;MCU_16f1518_B1.c: 498: Memory->LoopSave=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	499
;MCU_16f1518_B1.c: 499: TMain->FirstOpen=0;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	500
;MCU_16f1518_B1.c: 500: TMain->First=0;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	501
	
l24956:	
;MCU_16f1518_B1.c: 501: Memory->Data[30]=1;
	movf	(_Memory)^080h,w
	addlw	01Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	goto	l24958
	line	502
	
l8610:	
	line	503
	
l24958:	
;MCU_16f1518_B1.c: 502: }
;MCU_16f1518_B1.c: 503: GIE=0;
	bcf	(95/8),(95)&7
	line	504
	
l24960:	
;MCU_16f1518_B1.c: 504: Flash_Memory_Erasing();
	fcall	_Flash_Memory_Erasing
	line	505
	
l24962:	
;MCU_16f1518_B1.c: 505: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	506
	
l24964:	
;MCU_16f1518_B1.c: 506: GIE=1;
	bsf	(95/8),(95)&7
	line	507
	
l8611:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
;; =============== function _Flash_Memory_Modify ends ============

	signat	_Flash_Memory_Modify,88
	global	_setRF_Enable
psect	text3060,local,class=CODE,delta=2
global __ptext3060
__ptext3060:

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 172 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_RfPointSelect
;;		_CC2500_WriteCommand
;;		_RF_RxDisable
;; This function is called by:
;;		_MainT
;;		_setLoad_ERROR
;;		_setOverTemp_ERROR
;; This function uses a non-reentrant model
;;
psect	text3060
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	172
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
	opt	stack 5
; Regs used in _setRF_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	173
	
l24924:	
;RF_Control_B1.c: 173: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	174
	
l24926:	
;RF_Control_B1.c: 174: if(command)
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	skipz
	goto	u8980
	goto	l24930
u8980:
	line	176
	
l24928:	
;RF_Control_B1.c: 175: {
;RF_Control_B1.c: 176: RF->Enable=1;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	177
;RF_Control_B1.c: 177: }
	goto	l13359
	line	178
	
l13357:	
	line	180
	
l24930:	
;RF_Control_B1.c: 178: else
;RF_Control_B1.c: 179: {
;RF_Control_B1.c: 180: RF->Enable=0;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	181
;RF_Control_B1.c: 181: RF->Learn=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	182
	
l24932:	
;RF_Control_B1.c: 182: Transceive_GO=0;
	bcf	(_Transceive_GO/8),(_Transceive_GO)&7
	line	183
	
l24934:	
;RF_Control_B1.c: 183: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	184
	
l24936:	
;RF_Control_B1.c: 184: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	185
	
l24938:	
;RF_Control_B1.c: 185: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l13359
	line	186
	
l13358:	
	line	187
	
l13359:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
;; =============== function _setRF_Enable ends ============

	signat	_setRF_Enable,8312
	global	_Switch_Initialization
psect	text3061,local,class=CODE,delta=2
global __ptext3061
__ptext3061:

;; *************** function _Switch_Initialization *****************
;; Defined at:
;;		line 39 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text3061
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	39
	global	__size_of_Switch_Initialization
	__size_of_Switch_Initialization	equ	__end_of_Switch_Initialization-_Switch_Initialization
	
_Switch_Initialization:	
	opt	stack 8
; Regs used in _Switch_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	40
	
l24916:	
;Switch_B1.c: 40: TouchPower();
	fcall	_TouchPower
	line	46
	
l24918:	
;Switch_B1.c: 46: setSw_Initialization(1);
	movlw	(01h)
	fcall	_setSw_Initialization
	line	49
	
l24920:	
;Switch_B1.c: 49: setSw_Initialization(2);
	movlw	(02h)
	fcall	_setSw_Initialization
	line	52
	
l24922:	
;Switch_B1.c: 52: setSw_Initialization(3);
	movlw	(03h)
	fcall	_setSw_Initialization
	line	54
	
l14599:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Initialization
	__end_of_Switch_Initialization:
;; =============== function _Switch_Initialization ends ============

	signat	_Switch_Initialization,88
	global	_Flash_Memory_Initialization
psect	text3062,local,class=CODE,delta=2
global __ptext3062
__ptext3062:

;; *************** function _Flash_Memory_Initialization *****************
;; Defined at:
;;		line 369 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3062
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	369
	global	__size_of_Flash_Memory_Initialization
	__size_of_Flash_Memory_Initialization	equ	__end_of_Flash_Memory_Initialization-_Flash_Memory_Initialization
	
_Flash_Memory_Initialization:	
	opt	stack 8
; Regs used in _Flash_Memory_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	371
	
l24880:	
;MCU_16f1518_B1.c: 370: char i;
;MCU_16f1518_B1.c: 371: if(Flash_Memory_Read(31) == 0xaa)
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u8961
	goto	u8960
u8961:
	goto	l24896
u8960:
	line	373
	
l24882:	
;MCU_16f1518_B1.c: 372: {
;MCU_16f1518_B1.c: 373: Product->Data[12]=Flash_Memory_Read(0);
	movlw	(0)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	374
;MCU_16f1518_B1.c: 374: Product->Data[13]=Flash_Memory_Read(1);
	movlw	(01h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	375
;MCU_16f1518_B1.c: 375: Product->Data[14]=Flash_Memory_Read(2);
	movlw	(02h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	381
	
l24884:	
;MCU_16f1518_B1.c: 381: i=setPercentValue(((char)((100-60)*1.5)));
	movlw	(03Ch)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	382
	
l24886:	
;MCU_16f1518_B1.c: 382: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	383
	
l24888:	
;MCU_16f1518_B1.c: 383: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	384
	
l24890:	
;MCU_16f1518_B1.c: 384: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	386
	
l24892:	
;MCU_16f1518_B1.c: 386: if(Flash_Memory_Read(30) == 1)
	movlw	(01Eh)
	fcall	_Flash_Memory_Read
	xorlw	01h&0ffh
	skipz
	goto	u8971
	goto	u8970
u8971:
	goto	l8584
u8970:
	line	388
	
l24894:	
;MCU_16f1518_B1.c: 387: {
;MCU_16f1518_B1.c: 388: TMain->FirstOpen=0;
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	389
;MCU_16f1518_B1.c: 389: TMain->First=0;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l8584
	line	390
	
l8582:	
	line	391
;MCU_16f1518_B1.c: 390: }
;MCU_16f1518_B1.c: 391: }
	goto	l8584
	line	392
	
l8581:	
	line	394
	
l24896:	
;MCU_16f1518_B1.c: 392: else
;MCU_16f1518_B1.c: 393: {
;MCU_16f1518_B1.c: 394: i=setPercentValue(((char)((100-60)*1.5)));
	movlw	(03Ch)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	395
	
l24898:	
;MCU_16f1518_B1.c: 395: Memory->Data[3]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	396
	
l24900:	
;MCU_16f1518_B1.c: 396: Memory->Data[4]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	397
	
l24902:	
;MCU_16f1518_B1.c: 397: Memory->Data[5]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	398
	
l24904:	
;MCU_16f1518_B1.c: 398: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	399
	
l24906:	
;MCU_16f1518_B1.c: 399: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	400
	
l24908:	
;MCU_16f1518_B1.c: 400: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	401
	
l24910:	
;MCU_16f1518_B1.c: 401: GIE=0;
	bcf	(95/8),(95)&7
	line	402
	
l24912:	
;MCU_16f1518_B1.c: 402: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	403
	
l24914:	
;MCU_16f1518_B1.c: 403: GIE=1;
	bsf	(95/8),(95)&7
	goto	l8584
	line	404
	
l8583:	
	line	405
	
l8584:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initialization
	__end_of_Flash_Memory_Initialization:
;; =============== function _Flash_Memory_Initialization ends ============

	signat	_Flash_Memory_Initialization,88
	global	_LED_Initialization
psect	text3063,local,class=CODE,delta=2
global __ptext3063
__ptext3063:

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
psect	text3063
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	36
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
	opt	stack 8
; Regs used in _LED_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	38
	
l24878:	
;LED_B1.c: 38: setLED_Initialization(1);
	movlw	(01h)
	fcall	_setLED_Initialization
	line	41
;LED_B1.c: 41: setLED_Initialization(2);
	movlw	(02h)
	fcall	_setLED_Initialization
	line	44
;LED_B1.c: 44: setLED_Initialization(3);
	movlw	(03h)
	fcall	_setLED_Initialization
	line	47
;LED_B1.c: 47: setLED_Initialization(99);
	movlw	(063h)
	fcall	_setLED_Initialization
	line	49
	
l6059:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Initialization
	__end_of_LED_Initialization:
;; =============== function _LED_Initialization ends ============

	signat	_LED_Initialization,88
	global	_setDimmerLights_AdjRF
psect	text3064,local,class=CODE,delta=2
global __ptext3064
__ptext3064:

;; *************** function _setDimmerLights_AdjRF *****************
;; Defined at:
;;		line 438 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text3064
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	438
	global	__size_of_setDimmerLights_AdjRF
	__size_of_setDimmerLights_AdjRF	equ	__end_of_setDimmerLights_AdjRF-_setDimmerLights_AdjRF
	
_setDimmerLights_AdjRF:	
	opt	stack 2
; Regs used in _setDimmerLights_AdjRF: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_AdjRF@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjRF@lights)
	line	439
	
l24870:	
;Dimmer_B1.c: 439: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjRF@lights),w
	fcall	_DimmerLightsPointSelect
	line	440
	
l24872:	
;Dimmer_B1.c: 440: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	441
	
l24874:	
;Dimmer_B1.c: 441: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	442
	
l24876:	
;Dimmer_B1.c: 442: DimmerLights->MaxmumValue=getPercentValue(Product->Data[9]);
	movlb 1	; select bank1
	movf	(_Product)^080h,w
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
	line	443
	
l4865:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjRF
	__end_of_setDimmerLights_AdjRF:
;; =============== function _setDimmerLights_AdjRF ends ============

	signat	_setDimmerLights_AdjRF,4216
	global	_DimmerLights_ERROR
psect	text3065,local,class=CODE,delta=2
global __ptext3065
__ptext3065:

;; *************** function _DimmerLights_ERROR *****************
;; Defined at:
;;		line 278 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_getDimmer_TempERROR
;;		_getDimmerLights_StatusFlag
;;		_setBuz
;;		_setDimmerLights_ERROR
;;		_getDimmer_LoadERROR
;;		_getDimmer_PFERROR
;;		_setDimmerLights_TriggerERROR
;; This function is called by:
;;		_setLoad_ERROR
;;		_setOverTemp_ERROR
;; This function uses a non-reentrant model
;;
psect	text3065
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	278
	global	__size_of_DimmerLights_ERROR
	__size_of_DimmerLights_ERROR	equ	__end_of_DimmerLights_ERROR-_DimmerLights_ERROR
	
_DimmerLights_ERROR:	
	opt	stack 5
; Regs used in _DimmerLights_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
	line	279
	
l24852:	
;Dimmer_B1.c: 279: if(getDimmer_TempERROR(1))
	movlw	(01h)
	fcall	_getDimmer_TempERROR
	xorlw	0&0ffh
	skipnz
	goto	u8911
	goto	u8910
u8911:
	goto	l24858
u8910:
	line	281
	
l24854:	
;Dimmer_B1.c: 280: {
;Dimmer_B1.c: 281: if(getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	xorlw	0&0ffh
	skipnz
	goto	u8921
	goto	u8920
u8921:
	goto	l4834
u8920:
	line	283
	
l24856:	
;Dimmer_B1.c: 282: {
;Dimmer_B1.c: 283: setBuz(1,10,300);
	movlw	(0Ah)
	movlb 0	; select bank0
	movwf	(??_DimmerLights_ERROR+0)+0
	movf	(??_DimmerLights_ERROR+0)+0,w
	movwf	(?_setBuz)
	movlw	low(012Ch)
	movwf	0+(?_setBuz)+01h
	movlw	high(012Ch)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	284
	
l4834:	
	line	287
;Dimmer_B1.c: 284: }
;Dimmer_B1.c: 287: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	290
;Dimmer_B1.c: 290: setDimmerLights_ERROR(2);
	movlw	(02h)
	fcall	_setDimmerLights_ERROR
	line	293
;Dimmer_B1.c: 293: setDimmerLights_ERROR(3);
	movlw	(03h)
	fcall	_setDimmerLights_ERROR
	line	295
;Dimmer_B1.c: 295: }
	goto	l4835
	line	296
	
l4833:	
	
l24858:	
;Dimmer_B1.c: 296: else if(getDimmer_LoadERROR(1))
	movlw	(01h)
	fcall	_getDimmer_LoadERROR
	xorlw	0&0ffh
	skipnz
	goto	u8931
	goto	u8930
u8931:
	goto	l24862
u8930:
	line	298
	
l24860:	
;Dimmer_B1.c: 297: {
;Dimmer_B1.c: 298: setBuz(1,5,300);
	movlw	(05h)
	movlb 0	; select bank0
	movwf	(??_DimmerLights_ERROR+0)+0
	movf	(??_DimmerLights_ERROR+0)+0,w
	movwf	(?_setBuz)
	movlw	low(012Ch)
	movwf	0+(?_setBuz)+01h
	movlw	high(012Ch)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	299
;Dimmer_B1.c: 299: setDimmerLights_ERROR(Dimmer->Load);
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_setDimmerLights_ERROR
	line	300
;Dimmer_B1.c: 300: }
	goto	l4835
	line	301
	
l4836:	
	
l24862:	
;Dimmer_B1.c: 301: else if(getDimmer_PFERROR(1))
	movlw	(01h)
	fcall	_getDimmer_PFERROR
	xorlw	0&0ffh
	skipnz
	goto	u8941
	goto	u8940
u8941:
	goto	l4835
u8940:
	line	304
	
l24864:	
;Dimmer_B1.c: 302: {
;Dimmer_B1.c: 304: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	307
;Dimmer_B1.c: 307: setDimmerLights_ERROR(2);
	movlw	(02h)
	fcall	_setDimmerLights_ERROR
	line	310
;Dimmer_B1.c: 310: setDimmerLights_ERROR(3);
	movlw	(03h)
	fcall	_setDimmerLights_ERROR
	goto	l4835
	line	312
	
l4838:	
	goto	l4835
	line	314
	
l4837:	
	
l4835:	
;Dimmer_B1.c: 312: }
;Dimmer_B1.c: 314: setDimmerLights_TriggerERROR(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_TriggerERROR)
	movlw	(01h)
	fcall	_setDimmerLights_TriggerERROR
	line	317
;Dimmer_B1.c: 317: setDimmerLights_TriggerERROR(2,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_TriggerERROR)
	movlw	(02h)
	fcall	_setDimmerLights_TriggerERROR
	line	320
;Dimmer_B1.c: 320: setDimmerLights_TriggerERROR(3,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_TriggerERROR)
	movlw	(03h)
	fcall	_setDimmerLights_TriggerERROR
	line	323
	
l24866:	
;Dimmer_B1.c: 323: if(TMain->SelfTest == 0)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u8951
	goto	u8950
u8951:
	goto	l4840
u8950:
	line	325
	
l24868:	
;Dimmer_B1.c: 324: {
;Dimmer_B1.c: 325: TMain->i=0;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	326
;Dimmer_B1.c: 326: TMain->j=0;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	327
;Dimmer_B1.c: 327: TMain->k=1;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	328
;Dimmer_B1.c: 328: TMain->Count2=0;
	movf	(_TMain)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l4840
	line	329
	
l4839:	
	line	330
	
l4840:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_ERROR
	__end_of_DimmerLights_ERROR:
;; =============== function _DimmerLights_ERROR ends ============

	signat	_DimmerLights_ERROR,88
	global	_setDimmerLights_Adj
psect	text3066,local,class=CODE,delta=2
global __ptext3066
__ptext3066:

;; *************** function _setDimmerLights_Adj *****************
;; Defined at:
;;		line 408 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1   48[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   51[BANK0 ] unsigned char 
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
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setLoad_StatusOff
;;		_setRF_DimmerLights
;;		_setTxData
;;		_setPercentValue
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text3066
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	408
	global	__size_of_setDimmerLights_Adj
	__size_of_setDimmerLights_Adj	equ	__end_of_setDimmerLights_Adj-_setDimmerLights_Adj
	
_setDimmerLights_Adj:	
	opt	stack 6
; Regs used in _setDimmerLights_Adj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Adj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Adj@lights)
	line	409
	
l24834:	
;Dimmer_B1.c: 409: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Adj@lights),w
	fcall	_DimmerLightsPointSelect
	line	410
	
l24836:	
;Dimmer_B1.c: 410: if(status)
	movlb 0	; select bank0
	movf	(setDimmerLights_Adj@status),w
	skipz
	goto	u8890
	goto	l24840
u8890:
	line	412
	
l24838:	
;Dimmer_B1.c: 411: {
;Dimmer_B1.c: 412: DimmerLights->AdjFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	413
;Dimmer_B1.c: 413: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	414
;Dimmer_B1.c: 414: }
	goto	l4859
	line	415
	
l4856:	
	line	417
	
l24840:	
;Dimmer_B1.c: 415: else
;Dimmer_B1.c: 416: {
;Dimmer_B1.c: 417: if(DimmerLights->AdjFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8901
	goto	u8900
u8901:
	goto	l4859
u8900:
	line	419
	
l24842:	
;Dimmer_B1.c: 418: {
;Dimmer_B1.c: 419: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	420
;Dimmer_B1.c: 420: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	421
	
l24844:	
;Dimmer_B1.c: 421: setLoad_StatusOff(1,0,1);
	clrf	(?_setLoad_StatusOff)
	clrf	0+(?_setLoad_StatusOff)+01h
	bsf	status,0
	rlf	0+(?_setLoad_StatusOff)+01h,f
	movlw	(01h)
	fcall	_setLoad_StatusOff
	line	422
	
l24846:	
;Dimmer_B1.c: 422: DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
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
	line	423
;Dimmer_B1.c: 423: setRF_DimmerLights(lights,1);
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(setDimmerLights_Adj@lights),w
	fcall	_setRF_DimmerLights
	line	424
;Dimmer_B1.c: 424: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	425
	
l24848:	
;Dimmer_B1.c: 425: Memory->Modify=1;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	426
	
l24850:	
;Dimmer_B1.c: 426: Product->Data[(20+lights)]=setPercentValue(DimmerLights->MaxmumValue);
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Adj+0)+0
	movf	(setDimmerLights_Adj@lights),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Adj+1)+0
	movf	0+(??_setDimmerLights_Adj+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Adj+0)+0,w
	movwf	indf1
	goto	l4859
	line	427
	
l4858:	
	goto	l4859
	line	428
	
l4857:	
	line	429
	
l4859:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Adj
	__end_of_setDimmerLights_Adj:
;; =============== function _setDimmerLights_Adj ends ============

	signat	_setDimmerLights_Adj,8312
	global	_setDimmerLights_Initialization
psect	text3067,local,class=CODE,delta=2
global __ptext3067
__ptext3067:

;; *************** function _setDimmerLights_Initialization *****************
;; Defined at:
;;		line 50 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   65[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_getPercentValue
;; This function is called by:
;;		_DimmerLights_Initialization
;; This function uses a non-reentrant model
;;
psect	text3067
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	50
	global	__size_of_setDimmerLights_Initialization
	__size_of_setDimmerLights_Initialization	equ	__end_of_setDimmerLights_Initialization-_setDimmerLights_Initialization
	
_setDimmerLights_Initialization:	
	opt	stack 7
; Regs used in _setDimmerLights_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Initialization@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Initialization@lights)
	line	51
	
l24822:	
;Dimmer_B1.c: 51: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Initialization@lights),w
	fcall	_DimmerLightsPointSelect
	line	53
	
l24824:	
;Dimmer_B1.c: 53: DimmerLights->MinimumValue=((char)((100-20)*1.5));
	movlw	(078h)
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	54
	
l24826:	
;Dimmer_B1.c: 54: DimmerLights->Open=1;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	55
	
l24828:	
;Dimmer_B1.c: 55: DimmerLights->Close=1;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	58
	
l24830:	
;Dimmer_B1.c: 58: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	64
	
l24832:	
;Dimmer_B1.c: 64: DimmerLights->MaxmumValue=getPercentValue(Product->Data[(20+lights)]);
	movf	(setDimmerLights_Initialization@lights),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	0+(??_setDimmerLights_Initialization+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_getPercentValue
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Initialization+1)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+1)+0,w
	movwf	indf1
	line	68
	
l4771:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Initialization
	__end_of_setDimmerLights_Initialization:
;; =============== function _setDimmerLights_Initialization ends ============

	signat	_setDimmerLights_Initialization,4216
	global	_DelayOff_Main
psect	text3068,local,class=CODE,delta=2
global __ptext3068
__ptext3068:

;; *************** function _DelayOff_Main *****************
;; Defined at:
;;		line 44 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text3068
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	44
	global	__size_of_DelayOff_Main
	__size_of_DelayOff_Main	equ	__end_of_DelayOff_Main-_DelayOff_Main
	
_DelayOff_Main:	
	opt	stack 8
; Regs used in _DelayOff_Main: [wreg-status,0+pclath+cstack]
	line	46
	
l24820:	
;DelayOff_B1.c: 46: DlyOff_Main(1);
	movlw	(01h)
	fcall	_DlyOff_Main
	line	49
;DelayOff_B1.c: 49: DlyOff_Main(2);
	movlw	(02h)
	fcall	_DlyOff_Main
	line	52
;DelayOff_B1.c: 52: DlyOff_Main(3);
	movlw	(03h)
	fcall	_DlyOff_Main
	line	54
	
l3559:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Main
	__end_of_DelayOff_Main:
;; =============== function _DelayOff_Main ends ============

	signat	_DelayOff_Main,88
	global	_CC2500_PowerOnInitial
psect	text3069,local,class=CODE,delta=2
global __ptext3069
__ptext3069:

;; *************** function _CC2500_PowerOnInitial *****************
;; Defined at:
;;		line 98 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3069
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	98
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg+status,2+status,0+pclath+cstack]
	line	99
	
l24818:	
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
	
l2334:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerOnInitial
	__end_of_CC2500_PowerOnInitial:
;; =============== function _CC2500_PowerOnInitial ends ============

	signat	_CC2500_PowerOnInitial,88
	global	_Buzzer_Initialization
psect	text3070,local,class=CODE,delta=2
global __ptext3070
__ptext3070:

;; *************** function _Buzzer_Initialization *****************
;; Defined at:
;;		line 20 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
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
;;		_setBuz_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3070
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	20
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
	opt	stack 8
; Regs used in _Buzzer_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	22
	
l24816:	
;Buzzer_B1.c: 22: setBuz_Initialization(1);
	movlw	(01h)
	fcall	_setBuz_Initialization
	line	24
	
l1125:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initialization
	__end_of_Buzzer_Initialization:
;; =============== function _Buzzer_Initialization ends ============

	signat	_Buzzer_Initialization,88
	global	_Sw_OffFunc
psect	text3071,local,class=CODE,delta=2
global __ptext3071
__ptext3071:

;; *************** function _Sw_OffFunc *****************
;; Defined at:
;;		line 233 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text3071
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	233
	global	__size_of_Sw_OffFunc
	__size_of_Sw_OffFunc	equ	__end_of_Sw_OffFunc-_Sw_OffFunc
	
_Sw_OffFunc:	
	opt	stack 7
; Regs used in _Sw_OffFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_OffFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_OffFunc@sw)
	line	234
	
l24796:	
;Switch_B1.c: 234: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u8861
	goto	u8860
u8861:
	goto	l14648
u8860:
	line	236
	
l24798:	
;Switch_B1.c: 235: {
;Switch_B1.c: 236: Sw->Flag=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,7
	line	237
;Switch_B1.c: 237: if(Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u8871
	goto	u8870
u8871:
	goto	l24814
u8870:
	line	239
	
l24800:	
;Switch_B1.c: 238: {
;Switch_B1.c: 239: if(Sw->Adj)
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8881
	goto	u8880
u8881:
	goto	l14648
u8880:
	line	241
	
l24802:	
;Switch_B1.c: 240: {
;Switch_B1.c: 241: Sw->Adj=0;
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	242
	
l24804:	
;Switch_B1.c: 242: setDimmerLights_TriggerAdj(sw,1);
	clrf	(?_setDimmerLights_TriggerAdj)
	bsf	status,0
	rlf	(?_setDimmerLights_TriggerAdj),f
	movf	(Sw_OffFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	243
	
l24806:	
;Switch_B1.c: 243: setDimmerLights_AdjGo(sw,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_AdjGo)
	movf	(Sw_OffFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	line	245
	
l24808:	
;Switch_B1.c: 245: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(Sw_OffFunc@sw),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_Sw_OffFunc+0)+0
	movf	0+(??_Sw_OffFunc+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Sw_OffFunc+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Sw_OffFunc+1)+0,w
	movwf	indf1
	line	246
	
l24810:	
;Switch_B1.c: 246: setRF_DimmerLights(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(?_setRF_DimmerLights)
	movf	(Sw_OffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	247
	
l24812:	
;Switch_B1.c: 247: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l14648
	line	248
	
l14646:	
	line	249
;Switch_B1.c: 248: }
;Switch_B1.c: 249: }
	goto	l14648
	line	250
	
l14645:	
	line	252
	
l24814:	
;Switch_B1.c: 250: else
;Switch_B1.c: 251: {
;Switch_B1.c: 252: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(Sw_OffFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	253
;Switch_B1.c: 253: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	movf	(Sw_OffFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	255
;Switch_B1.c: 255: setRF_DimmerLights(sw,Sw->Status);
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(?_setRF_DimmerLights)
	movf	(Sw_OffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	256
;Switch_B1.c: 256: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(?_setDelayOff_GO)
	clrf	0+(?_setDelayOff_GO)+01h
	movf	(Sw_OffFunc@sw),w
	fcall	_setDelayOff_GO
	line	257
;Switch_B1.c: 257: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l14648
	line	258
	
l14647:	
	goto	l14648
	line	259
	
l14644:	
	line	260
	
l14648:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_OffFunc
	__end_of_Sw_OffFunc:
;; =============== function _Sw_OffFunc ends ============

	signat	_Sw_OffFunc,4216
	global	_Sw_AdjFunc
psect	text3072,local,class=CODE,delta=2
global __ptext3072
__ptext3072:

;; *************** function _Sw_AdjFunc *****************
;; Defined at:
;;		line 263 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text3072
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	263
	global	__size_of_Sw_AdjFunc
	__size_of_Sw_AdjFunc	equ	__end_of_Sw_AdjFunc-_Sw_AdjFunc
	
_Sw_AdjFunc:	
	opt	stack 7
; Regs used in _Sw_AdjFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_AdjFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_AdjFunc@sw)
	line	264
	
l24786:	
;Switch_B1.c: 264: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u8851
	goto	u8850
u8851:
	goto	l14652
u8850:
	line	266
	
l24788:	
;Switch_B1.c: 265: {
;Switch_B1.c: 266: Sw->Adj=1;
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	267
;Switch_B1.c: 267: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	268
	
l24790:	
;Switch_B1.c: 268: setRFSW_Status(sw,1);
	clrf	(?_setRFSW_Status)
	bsf	status,0
	rlf	(?_setRFSW_Status),f
	movf	(Sw_AdjFunc@sw),w
	fcall	_setRFSW_Status
	line	270
	
l24792:	
;Switch_B1.c: 270: setDimmerLights_TriggerAdj(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_TriggerAdj)
	bsf	status,0
	rlf	(?_setDimmerLights_TriggerAdj),f
	movf	(Sw_AdjFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	271
	
l24794:	
;Switch_B1.c: 271: setDimmerLights_AdjGo(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_AdjGo)
	bsf	status,0
	rlf	(?_setDimmerLights_AdjGo),f
	movf	(Sw_AdjFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	goto	l14652
	line	272
	
l14651:	
	line	273
	
l14652:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_AdjFunc
	__end_of_Sw_AdjFunc:
;; =============== function _Sw_AdjFunc ends ============

	signat	_Sw_AdjFunc,4216
	global	_Sw_OnFunc
psect	text3073,local,class=CODE,delta=2
global __ptext3073
__ptext3073:

;; *************** function _Sw_OnFunc *****************
;; Defined at:
;;		line 211 in file "G:\Program\PIC\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   14[BANK0 ] unsigned char 
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
psect	text3073
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	211
	global	__size_of_Sw_OnFunc
	__size_of_Sw_OnFunc	equ	__end_of_Sw_OnFunc-_Sw_OnFunc
	
_Sw_OnFunc:	
	opt	stack 7
; Regs used in _Sw_OnFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_OnFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_OnFunc@sw)
	line	212
	
l24764:	
;Switch_B1.c: 212: Sw->Flag=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	line	213
	
l24766:	
;Switch_B1.c: 213: setBuz(1,1,100);
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	214
	
l24768:	
;Switch_B1.c: 214: if(!Sw->Status)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u8841
	goto	u8840
u8841:
	goto	l24782
u8840:
	line	216
	
l24770:	
;Switch_B1.c: 215: {
;Switch_B1.c: 216: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	217
	
l24772:	
;Switch_B1.c: 217: setRFSW_Status(sw,1);
	clrf	(?_setRFSW_Status)
	bsf	status,0
	rlf	(?_setRFSW_Status),f
	movf	(Sw_OnFunc@sw),w
	fcall	_setRFSW_Status
	line	219
	
l24774:	
;Switch_B1.c: 219: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(Sw_OnFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	220
	
l24776:	
;Switch_B1.c: 220: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	bsf	status,0
	rlf	(?_setDimmerLights_Switch),f
	movf	(Sw_OnFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	222
	
l24778:	
;Switch_B1.c: 222: setRF_DimmerLights(sw,Sw->Status);
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(?_setRF_DimmerLights)
	movf	(Sw_OnFunc@sw),w
	fcall	_setRF_DimmerLights
	line	223
	
l24780:	
;Switch_B1.c: 223: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	224
;Switch_B1.c: 224: }
	goto	l14641
	line	225
	
l14639:	
	line	227
	
l24782:	
;Switch_B1.c: 225: else
;Switch_B1.c: 226: {
;Switch_B1.c: 227: Sw->Status=0;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	228
	
l24784:	
;Switch_B1.c: 228: setRFSW_Status(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(?_setRFSW_Status)
	movf	(Sw_OnFunc@sw),w
	fcall	_setRFSW_Status
	goto	l14641
	line	229
	
l14640:	
	line	230
	
l14641:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_OnFunc
	__end_of_Sw_OnFunc:
;; =============== function _Sw_OnFunc ends ============

	signat	_Sw_OnFunc,4216
	global	_setSw_Initialization
psect	text3074,local,class=CODE,delta=2
global __ptext3074
__ptext3074:

;; *************** function _setSw_Initialization *****************
;; Defined at:
;;		line 73 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text3074
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	73
	global	__size_of_setSw_Initialization
	__size_of_setSw_Initialization	equ	__end_of_setSw_Initialization-_setSw_Initialization
	
_setSw_Initialization:	
	opt	stack 8
; Regs used in _setSw_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Initialization@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Initialization@sw)
	line	74
	
l24762:	
;Switch_B1.c: 74: setLED(sw,1);
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movf	(setSw_Initialization@sw),w
	fcall	_setLED
	line	78
	
l14605:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Initialization
	__end_of_setSw_Initialization:
;; =============== function _setSw_Initialization ends ============

	signat	_setSw_Initialization,4216
	global	_setRFSW_Control
psect	text3075,local,class=CODE,delta=2
global __ptext3075
__ptext3075:

;; *************** function _setRFSW_Control *****************
;; Defined at:
;;		line 357 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   16[BANK0 ] unsigned char 
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
psect	text3075
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	357
	global	__size_of_setRFSW_Control
	__size_of_setRFSW_Control	equ	__end_of_setRFSW_Control-_setRFSW_Control
	
_setRFSW_Control:	
	opt	stack 5
; Regs used in _setRFSW_Control: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_Control@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Control@sw)
	line	358
	
l24722:	
;RF_Control_B1.c: 358: RfSWPointSelect(sw);
	movf	(setRFSW_Control@sw),w
	fcall	_RfSWPointSelect
	line	359
	
l24724:	
;RF_Control_B1.c: 359: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u8811
	goto	u8810
u8811:
	goto	l24730
u8810:
	line	361
	
l24726:	
;RF_Control_B1.c: 360: {
;RF_Control_B1.c: 361: setDelayOff_GO(sw,1,RF_Data[17]);
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
	line	362
	
l24728:	
;RF_Control_B1.c: 362: Product->Data[26+sw]=RF_Data[17];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+011h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+0)+0
	movf	(setRFSW_Control@sw),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+1)+0
	movf	0+(??_setRFSW_Control+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRFSW_Control+0)+0,w
	movwf	indf1
	goto	l24730
	line	363
	
l13410:	
	line	364
	
l24730:	
;RF_Control_B1.c: 363: }
;RF_Control_B1.c: 364: if(RFSW->Status == 0)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u8821
	goto	u8820
u8821:
	goto	l24742
u8820:
	line	366
	
l24732:	
;RF_Control_B1.c: 365: {
;RF_Control_B1.c: 366: RFSW->Status=1;
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	367
	
l24734:	
;RF_Control_B1.c: 367: setSw_Status(sw,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	bsf	status,0
	rlf	(?_setSw_Status),f
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	369
	
l24736:	
;RF_Control_B1.c: 369: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	370
	
l24738:	
;RF_Control_B1.c: 370: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	bsf	status,0
	rlf	(?_setDimmerLights_Switch),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	371
	
l24740:	
;RF_Control_B1.c: 371: setRF_DimmerLights(sw,RFSW->Status);
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
	line	372
;RF_Control_B1.c: 372: }
	goto	l24758
	line	373
	
l13411:	
	line	375
	
l24742:	
;RF_Control_B1.c: 373: else
;RF_Control_B1.c: 374: {
;RF_Control_B1.c: 375: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u8831
	goto	u8830
u8831:
	goto	l24746
u8830:
	line	377
	
l24744:	
;RF_Control_B1.c: 376: {
;RF_Control_B1.c: 377: setRF_DimmerLights(sw,1);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	378
;RF_Control_B1.c: 378: }
	goto	l24758
	line	379
	
l13413:	
	line	381
	
l24746:	
;RF_Control_B1.c: 379: else
;RF_Control_B1.c: 380: {
;RF_Control_B1.c: 381: RFSW->Status=0;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	382
	
l24748:	
;RF_Control_B1.c: 382: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	384
	
l24750:	
;RF_Control_B1.c: 384: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	385
	
l24752:	
;RF_Control_B1.c: 385: setDimmerLights_Switch(sw,RFSW->Status);
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
	line	387
	
l24754:	
;RF_Control_B1.c: 387: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	388
	
l24756:	
;RF_Control_B1.c: 388: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(?_setDelayOff_GO)
	clrf	0+(?_setDelayOff_GO)+01h
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	goto	l24758
	line	389
	
l13414:	
	goto	l24758
	line	390
	
l13412:	
	line	391
	
l24758:	
;RF_Control_B1.c: 389: }
;RF_Control_B1.c: 390: }
;RF_Control_B1.c: 391: setBuz(1,1,100);
	movlb 0	; select bank0
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	392
	
l24760:	
;RF_Control_B1.c: 392: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	393
	
l13415:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Control
	__end_of_setRFSW_Control:
;; =============== function _setRFSW_Control ends ============

	signat	_setRFSW_Control,4216
	global	_setLog_Code
psect	text3076,local,class=CODE,delta=2
global __ptext3076
__ptext3076:

;; *************** function _setLog_Code *****************
;; Defined at:
;;		line 247 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   15[BANK0 ] unsigned char 
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
psect	text3076
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	247
	global	__size_of_setLog_Code
	__size_of_setLog_Code	equ	__end_of_setLog_Code-_setLog_Code
	
_setLog_Code:	
	opt	stack 6
; Regs used in _setLog_Code: [wreg+fsr1l-status,0+pclath+cstack]
;setLog_Code@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setLog_Code@rf)
	line	248
	
l24706:	
;RF_Control_B1.c: 248: RfPointSelect(rf);
	movf	(setLog_Code@rf),w
	fcall	_RfPointSelect
	line	249
	
l24708:	
;RF_Control_B1.c: 249: Product->Data[12]=RF_Data[12];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Ch,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	250
	
l24710:	
;RF_Control_B1.c: 250: Product->Data[13]=RF_Data[13];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Dh,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	251
	
l24712:	
;RF_Control_B1.c: 251: Product->Data[14]=RF_Data[14];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Eh,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	252
	
l24714:	
;RF_Control_B1.c: 252: setBuz(1,1,100);
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	253
	
l24716:	
;RF_Control_B1.c: 253: RF->Learn=0;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	254
	
l24718:	
;RF_Control_B1.c: 254: if(TMain->First)
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8801
	goto	u8800
u8801:
	goto	l13382
u8800:
	line	256
	
l24720:	
;RF_Control_B1.c: 255: {
;RF_Control_B1.c: 256: Memory->LoopSave=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	257
	
l13382:	
	line	258
;RF_Control_B1.c: 257: }
;RF_Control_B1.c: 258: Memory->Modify=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	259
	
l13383:	
	return
	opt stack 0
GLOBAL	__end_of_setLog_Code
	__end_of_setLog_Code:
;; =============== function _setLog_Code ends ============

	signat	_setLog_Code,4216
	global	_RF_RxDisable
psect	text3077,local,class=CODE,delta=2
global __ptext3077
__ptext3077:

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 190 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;		_setRF_Enable
;; This function uses a non-reentrant model
;;
psect	text3077
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	190
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
	opt	stack 7
; Regs used in _RF_RxDisable: [wreg+fsr1l-status,0+pclath+cstack]
;RF_RxDisable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RF_RxDisable@rf)
	line	191
	
l24692:	
;RF_Control_B1.c: 191: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	192
	
l24694:	
;RF_Control_B1.c: 192: if(RF->RxStatus || RF->ReceiveGO)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u8781
	goto	u8780
u8781:
	goto	l24698
u8780:
	
l24696:	
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u8791
	goto	u8790
u8791:
	goto	l13365
u8790:
	goto	l24698
	
l13364:	
	line	194
	
l24698:	
;RF_Control_B1.c: 193: {
;RF_Control_B1.c: 194: RF->RxStatus=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	195
;RF_Control_B1.c: 195: RF->ReceiveGO=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	196
;RF_Control_B1.c: 196: RF->DebounceTime=0;
	movf	(_RF)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	197
;RF_Control_B1.c: 197: RF->Debounce=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	198
	
l24700:	
;RF_Control_B1.c: 198: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	199
	
l24702:	
;RF_Control_B1.c: 199: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	200
	
l24704:	
;RF_Control_B1.c: 200: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l13365
	line	201
	
l13362:	
	line	202
	
l13365:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
;; =============== function _RF_RxDisable ends ============

	signat	_RF_RxDisable,4216
	global	_Flash_Memory_Erasing
psect	text3078,local,class=CODE,delta=2
global __ptext3078
__ptext3078:

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 471 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3078
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	471
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
	opt	stack 8
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	472
	
l24678:	
;MCU_16f1518_B1.c: 472: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	line	473
	
l24680:	
;MCU_16f1518_B1.c: 473: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	474
	
l24682:	
;MCU_16f1518_B1.c: 474: PMADRL=0x00;
	clrf	(401)^0180h	;volatile
	line	475
	
l24684:	
;MCU_16f1518_B1.c: 475: FREE=1;
	bsf	(3244/8)^0180h,(3244)&7
	line	476
	
l24686:	
;MCU_16f1518_B1.c: 476: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7
	line	477
	
l24688:	
;MCU_16f1518_B1.c: 477: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	478
	
l24690:	
;MCU_16f1518_B1.c: 478: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	479
	
l8605:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
;; =============== function _Flash_Memory_Erasing ends ============

	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Write
psect	text3079,local,class=CODE,delta=2
global __ptext3079
__ptext3079:

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 451 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3079
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	451
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
	opt	stack 8
; Regs used in _Flash_Memory_Write: [wreg+fsr1l-status,0+pclath+cstack]
	line	453
	
l24646:	
;MCU_16f1518_B1.c: 452: char i;
;MCU_16f1518_B1.c: 453: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	line	454
	
l24648:	
;MCU_16f1518_B1.c: 454: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	455
	
l24650:	
;MCU_16f1518_B1.c: 455: PMDATH=0;
	clrf	(404)^0180h	;volatile
	line	456
	
l24652:	
;MCU_16f1518_B1.c: 456: FREE=0;
	bcf	(3244/8)^0180h,(3244)&7
	line	457
	
l24654:	
;MCU_16f1518_B1.c: 457: LWLO=1;
	bsf	(3245/8)^0180h,(3245)&7
	line	458
	
l24656:	
;MCU_16f1518_B1.c: 458: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7
	line	459
	
l24658:	
;MCU_16f1518_B1.c: 459: for(i=0 ; i<32 ; i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Write@i)
	
l24660:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8761
	goto	u8760
u8761:
	goto	l24664
u8760:
	goto	l8601
	
l24662:	
	goto	l8601
	line	460
	
l8600:	
	line	461
	
l24664:	
;MCU_16f1518_B1.c: 460: {
;MCU_16f1518_B1.c: 461: PMADRL=i;
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	462
	
l24666:	
;MCU_16f1518_B1.c: 462: PMDATL=Memory->Data[i];
	movlb 0	; select bank0
	movf	(Flash_Memory_Write@i),w
	movlb 1	; select bank1
	addwf	(_Memory)^080h,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	0+(??_Flash_Memory_Write+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	line	463
	
l24668:	
;MCU_16f1518_B1.c: 463: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	459
	
l24670:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l24672:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8771
	goto	u8770
u8771:
	goto	l24664
u8770:
	
l8601:	
	line	465
;MCU_16f1518_B1.c: 464: }
;MCU_16f1518_B1.c: 465: LWLO=0;
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7
	line	466
	
l24674:	
;MCU_16f1518_B1.c: 466: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	467
	
l24676:	
;MCU_16f1518_B1.c: 467: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	468
	
l8602:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
;; =============== function _Flash_Memory_Write ends ============

	signat	_Flash_Memory_Write,88
	global	_Load_Initialization
psect	text3080,local,class=CODE,delta=2
global __ptext3080
__ptext3080:

;; *************** function _Load_Initialization *****************
;; Defined at:
;;		line 18 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
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
;;		_setLoad_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3080
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	18
	global	__size_of_Load_Initialization
	__size_of_Load_Initialization	equ	__end_of_Load_Initialization-_Load_Initialization
	
_Load_Initialization:	
	opt	stack 9
; Regs used in _Load_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	20
	
l24644:	
;OverLoad_B1.c: 20: setLoad_Initialization(1);
	movlw	(01h)
	fcall	_setLoad_Initialization
	line	22
	
l9756:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Initialization
	__end_of_Load_Initialization:
;; =============== function _Load_Initialization ends ============

	signat	_Load_Initialization,88
	global	_Temp_Initialization
psect	text3081,local,class=CODE,delta=2
global __ptext3081
__ptext3081:

;; *************** function _Temp_Initialization *****************
;; Defined at:
;;		line 23 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
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
;;		_setTemp_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3081
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	23
	global	__size_of_Temp_Initialization
	__size_of_Temp_Initialization	equ	__end_of_Temp_Initialization-_Temp_Initialization
	
_Temp_Initialization:	
	opt	stack 9
; Regs used in _Temp_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	25
	
l24642:	
;OverTemperature_B1.c: 25: setTemp_Initialization(1);
	movlw	(01h)
	fcall	_setTemp_Initialization
	line	27
	
l10991:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Initialization
	__end_of_Temp_Initialization:
;; =============== function _Temp_Initialization ends ============

	signat	_Temp_Initialization,88
	global	_LED_Main
psect	text3082,local,class=CODE,delta=2
global __ptext3082
__ptext3082:

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
psect	text3082
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	52
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
	opt	stack 9
; Regs used in _LED_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	54
	
l24640:	
;LED_B1.c: 54: setLED_Main(1);
	movlw	(01h)
	fcall	_setLED_Main
	line	57
;LED_B1.c: 57: setLED_Main(2);
	movlw	(02h)
	fcall	_setLED_Main
	line	60
;LED_B1.c: 60: setLED_Main(3);
	movlw	(03h)
	fcall	_setLED_Main
	line	63
;LED_B1.c: 63: setLED_Main(99);
	movlw	(063h)
	fcall	_setLED_Main
	line	65
	
l6062:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
;; =============== function _LED_Main ends ============

	signat	_LED_Main,88
	global	_setLED_Initialization
psect	text3083,local,class=CODE,delta=2
global __ptext3083
__ptext3083:

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
psect	text3083
	file	"G:\Program\PIC\Source_File\LED_B1.c"
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
	
l24634:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l24636:	
;LED_B1.c: 70: LED->Enable=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	71
	
l24638:	
;LED_B1.c: 71: setLED(led,0);
	movlb 0	; select bank0
	clrf	(?_setLED)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l6065:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
;; =============== function _setLED_Initialization ends ============

	signat	_setLED_Initialization,4216
	global	_setPercentValue
psect	text3084,local,class=CODE,delta=2
global __ptext3084
__ptext3084:

;; *************** function _setPercentValue *****************
;; Defined at:
;;		line 498 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setDimmerLights_Adj
;;		_Flash_Memory_Initialization
;; This function uses a non-reentrant model
;;
psect	text3084
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	498
	global	__size_of_setPercentValue
	__size_of_setPercentValue	equ	__end_of_setPercentValue-_setPercentValue
	
_setPercentValue:	
	opt	stack 6
; Regs used in _setPercentValue: [wreg+status,2+status,0+pclath+cstack]
;setPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(setPercentValue@value)
	line	499
	
l24626:	
;Dimmer_B1.c: 499: float i=((char)((100-20)*1.5))-((char)((100-60)*1.5));
	movlw	0x0
	movwf	(setPercentValue@i)
	movlw	0x70
	movwf	(setPercentValue@i+1)
	movlw	0x42
	movwf	(setPercentValue@i+2)
	line	500
	
l24628:	
;Dimmer_B1.c: 500: i/=100;
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
	line	501
	
l24630:	
;Dimmer_B1.c: 501: return (100-(char)((value-((char)((100-60)*1.5)))/i));
	movf	(setPercentValue@value),w
	addlw	low(-60)
	movwf	(?___awtoft)
	movlw	high(-60)
	skipnc
	movlw	(high(-60)+1)&0ffh
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
	goto	l4898
	
l24632:	
	line	502
	
l4898:	
	return
	opt stack 0
GLOBAL	__end_of_setPercentValue
	__end_of_setPercentValue:
;; =============== function _setPercentValue ends ============

	signat	_setPercentValue,4217
	global	_setDimmerLights_ERROR
psect	text3085,local,class=CODE,delta=2
global __ptext3085
__ptext3085:

;; *************** function _setDimmerLights_ERROR *****************
;; Defined at:
;;		line 333 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
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
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text3085
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	333
	global	__size_of_setDimmerLights_ERROR
	__size_of_setDimmerLights_ERROR	equ	__end_of_setDimmerLights_ERROR-_setDimmerLights_ERROR
	
_setDimmerLights_ERROR:	
	opt	stack 5
; Regs used in _setDimmerLights_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_ERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_ERROR@lights)
	line	334
	
l24612:	
;Dimmer_B1.c: 334: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	335
	
l24614:	
;Dimmer_B1.c: 335: if(DimmerLights->Status)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u8751
	goto	u8750
u8751:
	goto	l4844
u8750:
	line	337
	
l24616:	
;Dimmer_B1.c: 336: {
;Dimmer_B1.c: 337: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	338
;Dimmer_B1.c: 338: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	339
;Dimmer_B1.c: 339: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	340
;Dimmer_B1.c: 340: DimmerLights->StatusFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	341
;Dimmer_B1.c: 341: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	indf1
	line	342
;Dimmer_B1.c: 342: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	343
	
l24618:	
;Dimmer_B1.c: 343: setLoad_StatusOff(1,lights,1);
	movf	(setDimmerLights_ERROR@lights),w
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	(?_setLoad_StatusOff)
	clrf	0+(?_setLoad_StatusOff)+01h
	bsf	status,0
	rlf	0+(?_setLoad_StatusOff)+01h,f
	movlw	(01h)
	fcall	_setLoad_StatusOff
	line	344
	
l24620:	
;Dimmer_B1.c: 344: setLED(lights,1);
	movlb 0	; select bank0
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLED
	line	345
	
l24622:	
;Dimmer_B1.c: 345: setSw_Status(lights,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setSw_Status
	line	346
	
l24624:	
;Dimmer_B1.c: 346: setRFSW_Status(lights,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setRFSW_Status
	goto	l4844
	line	347
	
l4843:	
	line	348
	
l4844:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_ERROR
	__end_of_setDimmerLights_ERROR:
;; =============== function _setDimmerLights_ERROR ends ============

	signat	_setDimmerLights_ERROR,4216
	global	_setDimmerLights
psect	text3086,local,class=CODE,delta=2
global __ptext3086
__ptext3086:

;; *************** function _setDimmerLights *****************
;; Defined at:
;;		line 361 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    8[BANK0 ] unsigned char 
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
;;		_setLoad_StatusOn
;;		_setLoad_Count
;;		_setDimmer_Detect
;;		_setLoad_GO
;;		_setLoad_LightsStatus
;; This function is called by:
;;		_setDimmerLights_Main
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text3086
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	361
	global	__size_of_setDimmerLights
	__size_of_setDimmerLights	equ	__end_of_setDimmerLights-_setDimmerLights
	
_setDimmerLights:	
	opt	stack 5
; Regs used in _setDimmerLights: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights@lights)
	line	362
	
l24580:	
;Dimmer_B1.c: 362: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights@lights),w
	fcall	_DimmerLightsPointSelect
	line	363
	
l24582:	
;Dimmer_B1.c: 363: Dimmer->Load=lights;
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
	line	364
	
l24584:	
;Dimmer_B1.c: 364: if(status)
	movf	(setDimmerLights@status),w
	skipz
	goto	u8730
	goto	l24610
u8730:
	line	366
	
l24586:	
;Dimmer_B1.c: 365: {
;Dimmer_B1.c: 366: DimmerLights->Status=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	367
	
l24588:	
;Dimmer_B1.c: 367: setLED(lights,0);
	clrf	(?_setLED)
	movf	(setDimmerLights@lights),w
	fcall	_setLED
	line	369
	
l24590:	
;Dimmer_B1.c: 369: setLoad_StatusOn(1,1);
	movlb 0	; select bank0
	clrf	(?_setLoad_StatusOn)
	bsf	status,0
	rlf	(?_setLoad_StatusOn),f
	movlw	(01h)
	fcall	_setLoad_StatusOn
	line	370
	
l24592:	
;Dimmer_B1.c: 370: setLoad_Count(1,0);
	movlb 0	; select bank0
	clrf	(?_setLoad_Count)
	movlw	(01h)
	fcall	_setLoad_Count
	line	372
	
l24594:	
;Dimmer_B1.c: 372: DimmerLights->Signal=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	373
	
l24596:	
;Dimmer_B1.c: 373: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	375
	
l24598:	
;Dimmer_B1.c: 375: if(DimmerLights->StatusFlag == 0)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u8741
	goto	u8740
u8741:
	goto	l4853
u8740:
	line	377
	
l24600:	
;Dimmer_B1.c: 376: {
;Dimmer_B1.c: 377: DimmerLights->StatusFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	378
	
l24602:	
;Dimmer_B1.c: 378: setDimmer_Detect(1,1);
	clrf	(?_setDimmer_Detect)
	bsf	status,0
	rlf	(?_setDimmer_Detect),f
	movlw	(01h)
	fcall	_setDimmer_Detect
	line	379
	
l24604:	
;Dimmer_B1.c: 379: setLoad_GO(1,1);
	movlb 0	; select bank0
	clrf	(?_setLoad_GO)
	bsf	status,0
	rlf	(?_setLoad_GO),f
	movlw	(01h)
	fcall	_setLoad_GO
	line	380
	
l24606:	
;Dimmer_B1.c: 380: setLoad_LightsStatus(1,lights,1);
	movlb 0	; select bank0
	movf	(setDimmerLights@lights),w
	movwf	(??_setDimmerLights+0)+0
	movf	(??_setDimmerLights+0)+0,w
	movwf	(?_setLoad_LightsStatus)
	clrf	0+(?_setLoad_LightsStatus)+01h
	bsf	status,0
	rlf	0+(?_setLoad_LightsStatus)+01h,f
	movlw	(01h)
	fcall	_setLoad_LightsStatus
	line	382
	
l24608:	
;Dimmer_B1.c: 382: DimmerLights->DimmingValue=DimmerLights->MaxmumValue;
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
	goto	l4853
	line	384
	
l4851:	
	line	385
;Dimmer_B1.c: 384: }
;Dimmer_B1.c: 385: }
	goto	l4853
	line	386
	
l4850:	
	line	388
	
l24610:	
;Dimmer_B1.c: 386: else
;Dimmer_B1.c: 387: {
;Dimmer_B1.c: 388: DimmerLights->Status=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	390
;Dimmer_B1.c: 390: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	393
;Dimmer_B1.c: 393: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	394
;Dimmer_B1.c: 394: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	395
;Dimmer_B1.c: 395: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	396
;Dimmer_B1.c: 396: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l4853
	line	404
	
l4852:	
	line	405
	
l4853:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights
	__end_of_setDimmerLights:
;; =============== function _setDimmerLights ends ============

	signat	_setDimmerLights,8312
	global	_DimmerLights_Close
psect	text3087,local,class=CODE,delta=2
global __ptext3087
__ptext3087:

;; *************** function _DimmerLights_Close *****************
;; Defined at:
;;		line 71 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_getDimmer_Detect
;;		_setDimmer_Detect
;;		_getDimmerLights_StatusFlag
;;		_setLoad_GO
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text3087
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	71
	global	__size_of_DimmerLights_Close
	__size_of_DimmerLights_Close	equ	__end_of_DimmerLights_Close-_DimmerLights_Close
	
_DimmerLights_Close:	
	opt	stack 8
; Regs used in _DimmerLights_Close: [wreg+fsr1l-status,0+pclath+cstack]
	line	72
	
l24572:	
;Dimmer_B1.c: 72: if(getDimmer_Detect(1))
	movlw	(01h)
	fcall	_getDimmer_Detect
	xorlw	0&0ffh
	skipnz
	goto	u8711
	goto	u8710
u8711:
	goto	l4776
u8710:
	line	74
	
l24574:	
;Dimmer_B1.c: 73: {
;Dimmer_B1.c: 74: setDimmer_Detect(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmer_Detect)
	movlw	(01h)
	fcall	_setDimmer_Detect
	line	75
;Dimmer_B1.c: 75: if(!getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	iorlw	0
	skipz
	goto	u8721
	goto	u8720
u8721:
	goto	l4776
u8720:
	line	77
	
l24576:	
;Dimmer_B1.c: 76: {
;Dimmer_B1.c: 77: setLoad_GO(1,0);
	movlb 0	; select bank0
	clrf	(?_setLoad_GO)
	movlw	(01h)
	fcall	_setLoad_GO
	line	78
	
l24578:	
;Dimmer_B1.c: 78: Memory->GO=1;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l4776
	line	79
	
l4775:	
	goto	l4776
	line	80
	
l4774:	
	line	81
	
l4776:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Close
	__end_of_DimmerLights_Close:
;; =============== function _DimmerLights_Close ends ============

	signat	_DimmerLights_Close,88
	global	_getPercentValue
psect	text3088,local,class=CODE,delta=2
global __ptext3088
__ptext3088:

;; *************** function _getPercentValue *****************
;; Defined at:
;;		line 491 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setDimmerLights_Initialization
;;		_setDimmerLights_AdjRF
;; This function uses a non-reentrant model
;;
psect	text3088
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	491
	global	__size_of_getPercentValue
	__size_of_getPercentValue	equ	__end_of_getPercentValue-_getPercentValue
	
_getPercentValue:	
	opt	stack 2
; Regs used in _getPercentValue: [wreg+status,2+status,0+pclath+cstack]
;getPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(getPercentValue@value)
	line	492
	
l24564:	
;Dimmer_B1.c: 492: float i=((char)((100-20)*1.5))-((char)((100-60)*1.5));
	movlw	0x0
	movwf	(getPercentValue@i)
	movlw	0x70
	movwf	(getPercentValue@i+1)
	movlw	0x42
	movwf	(getPercentValue@i+2)
	line	493
	
l24566:	
;Dimmer_B1.c: 493: i/=100;
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
	line	494
	
l24568:	
;Dimmer_B1.c: 494: return (char)(((100-value)*i)+((char)((100-60)*1.5)));
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
	movlw	0x70
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
	goto	l4895
	
l24570:	
	line	495
	
l4895:	
	return
	opt stack 0
GLOBAL	__end_of_getPercentValue
	__end_of_getPercentValue:
;; =============== function _getPercentValue ends ============

	signat	_getPercentValue,4217
	global	_DlyOff_Main
psect	text3089,local,class=CODE,delta=2
global __ptext3089
__ptext3089:

;; *************** function _DlyOff_Main *****************
;; Defined at:
;;		line 63 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   18[BANK0 ] unsigned char 
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
psect	text3089
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	63
	global	__size_of_DlyOff_Main
	__size_of_DlyOff_Main	equ	__end_of_DlyOff_Main-_DlyOff_Main
	
_DlyOff_Main:	
	opt	stack 8
; Regs used in _DlyOff_Main: [wreg-status,0+pclath+cstack]
;DlyOff_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(DlyOff_Main@sw)
	line	64
	
l24536:	
;DelayOff_B1.c: 64: DelayOffPointSelect(sw);
	movf	(DlyOff_Main@sw),w
	fcall	_DelayOffPointSelect
	line	65
	
l24538:	
;DelayOff_B1.c: 65: if(DelayOff->GO)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	movf	(_DelayOff+1)^080h,w
	movwf	fsr1h

	btfss	indf1,1
	goto	u8681
	goto	u8680
u8681:
	goto	l3568
u8680:
	line	67
	
l24540:	
;DelayOff_B1.c: 66: {
;DelayOff_B1.c: 67: DelayOff->SecondTime++;
	movf	(_DelayOff)^080h,w
	addlw	low(02h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	movlw	high(02h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_DlyOff_Main+0)+0
	movf	0+(??_DlyOff_Main+0)+0,w
	movwf	fsr1l
	movf	1+(??_DlyOff_Main+0)+0,w
	movwf	fsr1h

	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	68
;DelayOff_B1.c: 68: if(DelayOff->SecondTime >= 5650)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(02h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	movlw	high(02h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_DlyOff_Main+0)+0
	movf	0+(??_DlyOff_Main+0)+0,w
	movwf	fsr1l
	movf	1+(??_DlyOff_Main+0)+0,w
	movwf	fsr1h

	moviw	[0]fsr1
	movwf	(??_DlyOff_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_DlyOff_Main+2)+0+1
	movlw	high(01612h)
	subwf	1+(??_DlyOff_Main+2)+0,w
	movlw	low(01612h)
	skipnz
	subwf	0+(??_DlyOff_Main+2)+0,w
	skipc
	goto	u8691
	goto	u8690
u8691:
	goto	l3568
u8690:
	line	70
	
l24542:	
;DelayOff_B1.c: 69: {
;DelayOff_B1.c: 70: DelayOff->SecondTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(02h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	movlw	high(02h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_DlyOff_Main+0)+0
	movf	0+(??_DlyOff_Main+0)+0,w
	movwf	fsr1l
	movf	1+(??_DlyOff_Main+0)+0,w
	movwf	fsr1h

	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	71
;DelayOff_B1.c: 71: DelayOff->MinuteTime++;
	movlw	(01h)
	movwf	(??_DlyOff_Main+0)+0
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(04h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+1)+0
	movlw	high(04h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_DlyOff_Main+1)+0
	movf	0+(??_DlyOff_Main+1)+0,w
	movwf	fsr1l
	movf	1+(??_DlyOff_Main+1)+0,w
	movwf	fsr1h

	movf	(??_DlyOff_Main+0)+0,w
	addwf	indf1,f
	line	72
	
l24544:	
;DelayOff_B1.c: 72: if(DelayOff->MinuteTime >= DelayOff->Value)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(04h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	movlw	high(04h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_DlyOff_Main+0)+0
	movf	0+(??_DlyOff_Main+0)+0,w
	movwf	fsr1l
	movf	1+(??_DlyOff_Main+0)+0,w
	movwf	fsr1h

	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(01h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+2)+0
	movlw	high(01h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_DlyOff_Main+2)+0
	movf	0+(??_DlyOff_Main+2)+0,w
	movwf	fsr0l
	movf	1+(??_DlyOff_Main+2)+0,w
	movwf	fsr0h

	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u8701
	goto	u8700
u8701:
	goto	l3568
u8700:
	line	74
	
l24546:	
;DelayOff_B1.c: 73: {
;DelayOff_B1.c: 74: DelayOff->MinuteTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(04h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	movlw	high(04h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_DlyOff_Main+0)+0
	movf	0+(??_DlyOff_Main+0)+0,w
	movwf	fsr1l
	movf	1+(??_DlyOff_Main+0)+0,w
	movwf	fsr1h

	clrf	indf1
	line	75
	
l24548:	
;DelayOff_B1.c: 75: DelayOff->GO=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	movf	(_DelayOff+1)^080h,w
	movwf	fsr1h

	bcf	indf1,1
	line	76
	
l24550:	
;DelayOff_B1.c: 76: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movf	(DlyOff_Main@sw),w
	fcall	_setSw_Status
	line	77
	
l24552:	
;DelayOff_B1.c: 77: setRFSW_Status(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movf	(DlyOff_Main@sw),w
	fcall	_setRFSW_Status
	line	78
	
l24554:	
;DelayOff_B1.c: 78: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	movf	(DlyOff_Main@sw),w
	fcall	_setRF_DimmerLights
	line	79
	
l24556:	
;DelayOff_B1.c: 79: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Trigger
	line	80
	
l24558:	
;DelayOff_B1.c: 80: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Switch
	line	81
	
l24560:	
;DelayOff_B1.c: 81: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	82
	
l24562:	
;DelayOff_B1.c: 82: setBuz(1,1,100);
	movlb 0	; select bank0
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	goto	l3568
	line	83
	
l3567:	
	goto	l3568
	line	84
	
l3566:	
	goto	l3568
	line	85
	
l3565:	
	line	86
	
l3568:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Main
	__end_of_DlyOff_Main:
;; =============== function _DlyOff_Main ends ============

	signat	_DlyOff_Main,4216
	global	_DelayOff_Initialization
psect	text3090,local,class=CODE,delta=2
global __ptext3090
__ptext3090:

;; *************** function _DelayOff_Initialization *****************
;; Defined at:
;;		line 31 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text3090
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	31
	global	__size_of_DelayOff_Initialization
	__size_of_DelayOff_Initialization	equ	__end_of_DelayOff_Initialization-_DelayOff_Initialization
	
_DelayOff_Initialization:	
	opt	stack 9
; Regs used in _DelayOff_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	33
	
l24534:	
;DelayOff_B1.c: 33: DlyOff_Initialization(1);
	movlw	(01h)
	fcall	_DlyOff_Initialization
	line	36
;DelayOff_B1.c: 36: DlyOff_Initialization(2);
	movlw	(02h)
	fcall	_DlyOff_Initialization
	line	39
;DelayOff_B1.c: 39: DlyOff_Initialization(3);
	movlw	(03h)
	fcall	_DlyOff_Initialization
	line	41
	
l3556:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Initialization
	__end_of_DelayOff_Initialization:
;; =============== function _DelayOff_Initialization ends ============

	signat	_DelayOff_Initialization,88
	global	_CC2500_SIDLEMode
psect	text3091,local,class=CODE,delta=2
global __ptext3091
__ptext3091:

;; *************** function _CC2500_SIDLEMode *****************
;; Defined at:
;;		line 184 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3091
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	184
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l24532:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l2365:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_SIDLEMode
	__end_of_CC2500_SIDLEMode:
;; =============== function _CC2500_SIDLEMode ends ============

	signat	_CC2500_SIDLEMode,88
	global	_CC2500_FrequencyCabr
psect	text3092,local,class=CODE,delta=2
global __ptext3092
__ptext3092:

;; *************** function _CC2500_FrequencyCabr *****************
;; Defined at:
;;		line 176 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3092
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	176
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l24530:	
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
	
l2362:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_FrequencyCabr
	__end_of_CC2500_FrequencyCabr:
;; =============== function _CC2500_FrequencyCabr ends ============

	signat	_CC2500_FrequencyCabr,88
	global	_CC2500_ClearRXFIFO
psect	text3093,local,class=CODE,delta=2
global __ptext3093
__ptext3093:

;; *************** function _CC2500_ClearRXFIFO *****************
;; Defined at:
;;		line 169 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3093
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	169
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l24528:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l2359:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearRXFIFO
	__end_of_CC2500_ClearRXFIFO:
;; =============== function _CC2500_ClearRXFIFO ends ============

	signat	_CC2500_ClearRXFIFO,88
	global	_CC2500_ClearTXFIFO
psect	text3094,local,class=CODE,delta=2
global __ptext3094
__ptext3094:

;; *************** function _CC2500_ClearTXFIFO *****************
;; Defined at:
;;		line 162 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3094
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	162
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l24526:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l2356:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearTXFIFO
	__end_of_CC2500_ClearTXFIFO:
;; =============== function _CC2500_ClearTXFIFO ends ============

	signat	_CC2500_ClearTXFIFO,88
	global	_CC2500_InitPATable
psect	text3095,local,class=CODE,delta=2
global __ptext3095
__ptext3095:

;; *************** function _CC2500_InitPATable *****************
;; Defined at:
;;		line 148 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3095
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	148
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg+status,2+status,0+pclath+cstack]
	line	152
	
l24512:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l24514:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u8661
	goto	u8660
u8661:
	goto	l24518
u8660:
	goto	l2353
	
l24516:	
	goto	l2353
	line	153
	
l2351:	
	line	154
	
l24518:	
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
	
l24520:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l24522:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l24524:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u8671
	goto	u8670
u8671:
	goto	l24518
u8670:
	goto	l2353
	
l2352:	
	line	157
	
l2353:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitPATable
	__end_of_CC2500_InitPATable:
;; =============== function _CC2500_InitPATable ends ============

	signat	_CC2500_InitPATable,88
	global	_CC2500_InitSetREG
psect	text3096,local,class=CODE,delta=2
global __ptext3096
__ptext3096:

;; *************** function _CC2500_InitSetREG *****************
;; Defined at:
;;		line 132 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3096
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	132
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg+status,2+status,0+pclath+cstack]
	line	136
	
l24498:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l24500:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u8641
	goto	u8640
u8641:
	goto	l24504
u8640:
	goto	l2348
	
l24502:	
	goto	l2348
	line	137
	
l2346:	
	line	138
	
l24504:	
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
	
l24506:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l24508:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l24510:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u8651
	goto	u8650
u8651:
	goto	l24504
u8650:
	goto	l2348
	
l2347:	
	line	143
	
l2348:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitSetREG
	__end_of_CC2500_InitSetREG:
;; =============== function _CC2500_InitSetREG ends ============

	signat	_CC2500_InitSetREG,88
	global	_CC2500_RxData
psect	text3097,local,class=CODE,delta=2
global __ptext3097
__ptext3097:

;; *************** function _CC2500_RxData *****************
;; Defined at:
;;		line 57 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3097
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	57
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
	opt	stack 7
; Regs used in _CC2500_RxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	62
	
l24456:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u8581
	goto	u8580
u8581:
	goto	l24460
u8580:
	goto	l2320
	line	64
	
l24458:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l2320
	
l2321:	
	
l2320:	
	btfsc	(104/8),(104)&7
	goto	u8591
	goto	u8590
u8591:
	goto	l2320
u8590:
	goto	l24460
	
l2322:	
	goto	l24460
	line	65
	
l2319:	
	line	66
	
l24460:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l24462:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 1	; select bank1
	movf	(_s_data)^080h,w
	skipz
	goto	u8600
	goto	l24494
u8600:
	line	70
	
l24464:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	71
	
l24466:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	72
;CC2500_B1.c: 72: while(RC2==1);
	goto	l2324
	
l2325:	
	
l2324:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u8611
	goto	u8610
u8611:
	goto	l2324
u8610:
	goto	l24468
	
l2326:	
	line	73
	
l24468:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l24470:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_Rx_Length)^080h
	line	77
	
l24472:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	movlb 0	; select bank0
	clrf	(CC2500_RxData@loop_f)
	goto	l24480
	line	78
	
l2328:	
	line	79
	
l24474:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l24476:	
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
	
l24478:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l24480
	
l2327:	
	
l24480:	
	movlb 1	; select bank1
	movf	(_Rx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u8621
	goto	u8620
u8621:
	goto	l24474
u8620:
	goto	l24482
	
l2329:	
	line	82
	
l24482:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l24484:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RSSI)^080h
	line	84
	
l24486:	
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
	
l24488:	
;CC2500_B1.c: 86: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	87
	
l24490:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	movlb 1	; select bank1
	btfss	(_CRC)^080h,(7)&7
	goto	u8631
	goto	u8630
u8631:
	goto	l24494
u8630:
	line	88
	
l24492:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l24494
	
l2330:	
	goto	l24494
	line	89
	
l2323:	
	line	90
	
l24494:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l24496:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_RxStatus)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l2331:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_RxData
	__end_of_CC2500_RxData:
;; =============== function _CC2500_RxData ends ============

	signat	_CC2500_RxData,88
	global	_CC2500_TxData
psect	text3098,local,class=CODE,delta=2
global __ptext3098
__ptext3098:

;; *************** function _CC2500_TxData *****************
;; Defined at:
;;		line 31 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3098
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	31
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
	opt	stack 7
; Regs used in _CC2500_TxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	34
	
l24430:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	35
	
l24432:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	36
;CC2500_B1.c: 36: while(RC2==1);
	goto	l2304
	
l2305:	
	
l2304:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u8541
	goto	u8540
u8541:
	goto	l2304
u8540:
	goto	l24434
	
l2306:	
	line	37
	
l24434:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l24436:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	39
	
l24438:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l24440:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l24448
	line	41
	
l2308:	
	line	42
	
l24442:	
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
	
l24444:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l24446:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l24448
	
l2307:	
	
l24448:	
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u8551
	goto	u8550
u8551:
	goto	l24442
u8550:
	
l2309:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RC4=1;
	bsf	(116/8),(116)&7
	line	46
	
l24450:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l2310
	
l2311:	
	
l2310:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u8561
	goto	u8560
u8561:
	goto	l2310
u8560:
	goto	l2313
	
l2312:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l2313
	
l2314:	
	
l2313:	
	btfsc	(104/8),(104)&7
	goto	u8571
	goto	u8570
u8571:
	goto	l2313
u8570:
	goto	l24452
	
l2315:	
	line	49
	
l24452:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l24454:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l2316:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_TxData
	__end_of_CC2500_TxData:
;; =============== function _CC2500_TxData ends ============

	signat	_CC2500_TxData,88
	global	_Buzzer_Main
psect	text3099,local,class=CODE,delta=2
global __ptext3099
__ptext3099:

;; *************** function _Buzzer_Main *****************
;; Defined at:
;;		line 27 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
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
;;		_setBuz_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3099
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	27
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
	opt	stack 9
; Regs used in _Buzzer_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	29
	
l24428:	
;Buzzer_B1.c: 29: setBuz_Main(1);
	movlw	(01h)
	fcall	_setBuz_Main
	line	31
	
l1128:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Main
	__end_of_Buzzer_Main:
;; =============== function _Buzzer_Main ends ============

	signat	_Buzzer_Main,88
	global	_setBuz_Initialization
psect	text3100,local,class=CODE,delta=2
global __ptext3100
__ptext3100:

;; *************** function _setBuz_Initialization *****************
;; Defined at:
;;		line 40 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    0[COMMON] unsigned char 
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
;;		_setBuz_Enable
;; This function is called by:
;;		_Buzzer_Initialization
;; This function uses a non-reentrant model
;;
psect	text3100
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	40
	global	__size_of_setBuz_Initialization
	__size_of_setBuz_Initialization	equ	__end_of_setBuz_Initialization-_setBuz_Initialization
	
_setBuz_Initialization:	
	opt	stack 8
; Regs used in _setBuz_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	41
	
l24426:	
;Buzzer_B1.c: 41: setBuz_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setBuz_Enable)
	bsf	status,0
	rlf	(?_setBuz_Enable),f
	movlw	(01h)
	fcall	_setBuz_Enable
	line	42
	
l1134:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Initialization
	__end_of_setBuz_Initialization:
;; =============== function _setBuz_Initialization ends ============

	signat	_setBuz_Initialization,4216
	global	___awtoft
psect	text3101,local,class=CODE,delta=2
global __ptext3101
__ptext3101:

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
psect	text3101
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l24418:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u8531
	goto	u8530
u8531:
	goto	l24422
u8530:
	line	38
	
l24420:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l24422
	line	40
	
l19260:	
	line	41
	
l24422:	
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
	goto	l19261
	
l24424:	
	line	42
	
l19261:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text3102,local,class=CODE,delta=2
global __ptext3102
__ptext3102:

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
psect	text3102
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l24368:	
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
	goto	u8411
	goto	u8410
u8411:
	goto	l24374
u8410:
	line	57
	
l24370:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l19223
	
l24372:	
	goto	l19223
	
l19222:	
	line	58
	
l24374:	
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
	goto	u8421
	goto	u8420
u8421:
	goto	l24380
u8420:
	line	59
	
l24376:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l19223
	
l24378:	
	goto	l19223
	
l19224:	
	line	60
	
l24380:	
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
u8435:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u8430:
	decfsz	wreg,f
	goto	u8435
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
u8445:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u8440:
	decfsz	wreg,f
	goto	u8445
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
	
l24382:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l24384:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l24386:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l24388:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l24390:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l24392
	line	70
	
l19225:	
	line	71
	
l24392:	
	btfss	(___ftmul@f1),(0)&7
	goto	u8451
	goto	u8450
u8451:
	goto	l24396
u8450:
	line	72
	
l24394:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l24396
	
l19226:	
	line	73
	
l24396:	
	movlw	01h
u8465:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u8465

	line	74
	
l24398:	
	movlw	01h
u8475:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u8475
	line	75
	
l24400:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u8481
	goto	u8480
u8481:
	goto	l24392
u8480:
	goto	l24402
	
l19227:	
	line	76
	
l24402:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l24404
	line	77
	
l19228:	
	line	78
	
l24404:	
	btfss	(___ftmul@f1),(0)&7
	goto	u8491
	goto	u8490
u8491:
	goto	l24408
u8490:
	line	79
	
l24406:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l24408
	
l19229:	
	line	80
	
l24408:	
	movlw	01h
u8505:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u8505

	line	81
	
l24410:	
	movlw	01h
u8515:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u8515

	line	82
	
l24412:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u8521
	goto	u8520
u8521:
	goto	l24404
u8520:
	goto	l24414
	
l19230:	
	line	83
	
l24414:	
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
	goto	l19223
	
l24416:	
	line	84
	
l19223:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text3103,local,class=CODE,delta=2
global __ptext3103
__ptext3103:

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
psect	text3103
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l24326:	
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
	goto	u8331
	goto	u8330
u8331:
	goto	l24332
u8330:
	line	56
	
l24328:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l19213
	
l24330:	
	goto	l19213
	
l19212:	
	line	57
	
l24332:	
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
	goto	u8341
	goto	u8340
u8341:
	goto	l24338
u8340:
	line	58
	
l24334:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l19213
	
l24336:	
	goto	l19213
	
l19214:	
	line	59
	
l24338:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l24340:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l24342:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u8355:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u8350:
	decfsz	wreg,f
	goto	u8355
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l24344:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u8365:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u8360:
	decfsz	wreg,f
	goto	u8365
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l24346:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l24348:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l24350:	
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
	goto	l24352
	line	69
	
l19215:	
	line	70
	
l24352:	
	movlw	01h
u8375:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u8375
	line	71
	
l24354:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u8385
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u8385
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u8385:
	skipc
	goto	u8381
	goto	u8380
u8381:
	goto	l24360
u8380:
	line	72
	
l24356:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l24358:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l24360
	line	74
	
l19216:	
	line	75
	
l24360:	
	movlw	01h
u8395:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u8395
	line	76
	
l24362:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u8401
	goto	u8400
u8401:
	goto	l24352
u8400:
	goto	l24364
	
l19217:	
	line	77
	
l24364:	
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
	goto	l19213
	
l24366:	
	line	78
	
l19213:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text3104,local,class=CODE,delta=2
global __ptext3104
__ptext3104:

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
psect	text3104
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l24256:	
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
	
l24258:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u8100
	goto	l24264
u8100:
	
l24260:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u8111
	goto	u8110
u8111:
	goto	l24268
u8110:
	
l24262:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u8121
	goto	u8120
u8121:
	goto	l24268
u8120:
	goto	l24264
	
l19170:	
	line	93
	
l24264:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l19171
	
l24266:	
	goto	l19171
	
l19168:	
	line	94
	
l24268:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u8130
	goto	l19174
u8130:
	
l24270:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u8141
	goto	u8140
u8141:
	goto	l24274
u8140:
	
l24272:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u8151
	goto	u8150
u8151:
	goto	l24274
u8150:
	
l19174:	
	line	95
	goto	l19171
	
l19172:	
	line	96
	
l24274:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l24276:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u8161
	goto	u8160
u8161:
	goto	l19175
u8160:
	line	98
	
l24278:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l19175:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u8171
	goto	u8170
u8171:
	goto	l19176
u8170:
	line	100
	
l24280:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l19176:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l24282:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l24284:	
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
	goto	u8181
	goto	u8180
u8181:
	goto	l24296
u8180:
	goto	l24286
	line	109
	
l19178:	
	line	110
	
l24286:	
	movlw	01h
u8195:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u8195
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l24288:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u8201
	goto	u8200
u8201:
	goto	l24294
u8200:
	
l24290:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u8211
	goto	u8210
u8211:
	goto	l24286
u8210:
	goto	l24294
	
l19180:	
	goto	l24294
	
l19181:	
	line	113
	goto	l24294
	
l19183:	
	line	114
	
l24292:	
	movlw	01h
u8225:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u8225

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l24294
	line	116
	
l19182:	
	line	113
	
l24294:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u8231
	goto	u8230
u8231:
	goto	l24292
u8230:
	goto	l19185
	
l19184:	
	line	117
	goto	l19185
	
l19177:	
	
l24296:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u8241
	goto	u8240
u8241:
	goto	l19185
u8240:
	goto	l24298
	line	120
	
l19187:	
	line	121
	
l24298:	
	movlw	01h
u8255:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u8255
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l24300:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u8261
	goto	u8260
u8261:
	goto	l24306
u8260:
	
l24302:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u8271
	goto	u8270
u8271:
	goto	l24298
u8270:
	goto	l24306
	
l19189:	
	goto	l24306
	
l19190:	
	line	124
	goto	l24306
	
l19192:	
	line	125
	
l24304:	
	movlw	01h
u8285:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u8285

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l24306
	line	127
	
l19191:	
	line	124
	
l24306:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u8291
	goto	u8290
u8291:
	goto	l24304
u8290:
	goto	l19185
	
l19193:	
	goto	l19185
	line	128
	
l19186:	
	line	129
	
l19185:	
	btfss	(___ftadd@sign),(7)&7
	goto	u8301
	goto	u8300
u8301:
	goto	l24310
u8300:
	line	131
	
l24308:	
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
	goto	l24310
	line	133
	
l19194:	
	line	134
	
l24310:	
	btfss	(___ftadd@sign),(6)&7
	goto	u8311
	goto	u8310
u8311:
	goto	l24314
u8310:
	line	136
	
l24312:	
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
	goto	l24314
	line	138
	
l19195:	
	line	139
	
l24314:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l24316:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u8321
	goto	u8320
u8321:
	goto	l24322
u8320:
	line	142
	
l24318:	
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
	
l24320:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l24322
	line	145
	
l19196:	
	line	146
	
l24322:	
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
	goto	l19171
	
l24324:	
	line	148
	
l19171:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_setRF_Learn
psect	text3105,local,class=CODE,delta=2
global __ptext3105
__ptext3105:

;; *************** function _setRF_Learn *****************
;; Defined at:
;;		line 32 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3105
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
l24252:	
;RF_Control_B1.c: 33: RfPointSelect(rf);
	movf	(setRF_Learn@rf),w
	fcall	_RfPointSelect
	line	34
	
l24254:	
;RF_Control_B1.c: 34: RF->Learn=command;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_Learn@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	35
	
l13322:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Learn
	__end_of_setRF_Learn:
;; =============== function _setRF_Learn ends ============

	signat	_setRF_Learn,8312
	global	_setTemp_Initialization
psect	text3106,local,class=CODE,delta=2
global __ptext3106
__ptext3106:

;; *************** function _setTemp_Initialization *****************
;; Defined at:
;;		line 63 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    1[BANK0 ] unsigned char 
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
;;		_TempPointSelect
;; This function is called by:
;;		_Temp_Initialization
;; This function uses a non-reentrant model
;;
psect	text3106
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	63
	global	__size_of_setTemp_Initialization
	__size_of_setTemp_Initialization	equ	__end_of_setTemp_Initialization-_setTemp_Initialization
	
_setTemp_Initialization:	
	opt	stack 9
; Regs used in _setTemp_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setTemp_Initialization@temp stored from wreg
	movlb 0	; select bank0
	movwf	(setTemp_Initialization@temp)
	line	64
	
l24248:	
;OverTemperature_B1.c: 64: TempPointSelect(temp);
	movf	(setTemp_Initialization@temp),w
	fcall	_TempPointSelect
	line	65
	
l24250:	
;OverTemperature_B1.c: 65: Temp->Safe=1;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	66
	
l11010:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Initialization
	__end_of_setTemp_Initialization:
;; =============== function _setTemp_Initialization ends ============

	signat	_setTemp_Initialization,4216
	global	_getLoad_Safe
psect	text3107,local,class=CODE,delta=2
global __ptext3107
__ptext3107:

;; *************** function _getLoad_Safe *****************
;; Defined at:
;;		line 365 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text3107
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	365
	global	__size_of_getLoad_Safe
	__size_of_getLoad_Safe	equ	__end_of_getLoad_Safe-_getLoad_Safe
	
_getLoad_Safe:	
	opt	stack 8
; Regs used in _getLoad_Safe: [wreg+fsr1l-status,0+pclath+cstack]
;getLoad_Safe@load stored from wreg
	movlb 0	; select bank0
	movwf	(getLoad_Safe@load)
	line	366
	
l24242:	
;OverLoad_B1.c: 366: LoadPointSelect(load);
	movf	(getLoad_Safe@load),w
	fcall	_LoadPointSelect
	line	367
	
l24244:	
;OverLoad_B1.c: 367: return Load->Safe;
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
	goto	l9840
	
l24246:	
	line	368
	
l9840:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_Safe
	__end_of_getLoad_Safe:
;; =============== function _getLoad_Safe ends ============

	signat	_getLoad_Safe,4217
	global	_getTemp_Safe
psect	text3108,local,class=CODE,delta=2
global __ptext3108
__ptext3108:

;; *************** function _getTemp_Safe *****************
;; Defined at:
;;		line 35 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_TempPointSelect
;; This function is called by:
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text3108
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	35
	global	__size_of_getTemp_Safe
	__size_of_getTemp_Safe	equ	__end_of_getTemp_Safe-_getTemp_Safe
	
_getTemp_Safe:	
	opt	stack 8
; Regs used in _getTemp_Safe: [wreg+fsr1l-status,0+pclath+cstack]
;getTemp_Safe@temp stored from wreg
	movlb 0	; select bank0
	movwf	(getTemp_Safe@temp)
	line	36
	
l24236:	
;OverTemperature_B1.c: 36: TempPointSelect(temp);
	movf	(getTemp_Safe@temp),w
	fcall	_TempPointSelect
	line	37
	
l24238:	
;OverTemperature_B1.c: 37: return Temp->Safe;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	indf1,w
	andlw	(1<<1)-1
	goto	l10997
	
l24240:	
	line	38
	
l10997:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_Safe
	__end_of_getTemp_Safe:
;; =============== function _getTemp_Safe ends ============

	signat	_getTemp_Safe,4217
	global	_setLoad_Initialization
psect	text3109,local,class=CODE,delta=2
global __ptext3109
__ptext3109:

;; *************** function _setLoad_Initialization *****************
;; Defined at:
;;		line 32 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    2[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;;		_setLoad_AH_AL_Restore
;; This function is called by:
;;		_Load_Initialization
;; This function uses a non-reentrant model
;;
psect	text3109
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	32
	global	__size_of_setLoad_Initialization
	__size_of_setLoad_Initialization	equ	__end_of_setLoad_Initialization-_setLoad_Initialization
	
_setLoad_Initialization:	
	opt	stack 9
; Regs used in _setLoad_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setLoad_Initialization@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Initialization@load)
	line	33
	
l24230:	
;OverLoad_B1.c: 33: LoadPointSelect(load);
	movf	(setLoad_Initialization@load),w
	fcall	_LoadPointSelect
	line	34
	
l24232:	
;OverLoad_B1.c: 34: Load->Safe=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	35
	
l24234:	
;OverLoad_B1.c: 35: setLoad_AH_AL_Restore(load);
	movf	(setLoad_Initialization@load),w
	fcall	_setLoad_AH_AL_Restore
	line	36
	
l9762:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Initialization
	__end_of_setLoad_Initialization:
;; =============== function _setLoad_Initialization ends ============

	signat	_setLoad_Initialization,4216
	global	_Flash_Memory_Unlock
psect	text3110,local,class=CODE,delta=2
global __ptext3110
__ptext3110:

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 430 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3110
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	430
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
	opt	stack 8
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	431
	
l24222:	
;MCU_16f1518_B1.c: 431: PMCON2=0x55;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	432
;MCU_16f1518_B1.c: 432: PMCON2=0xaa;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	433
	
l24224:	
;MCU_16f1518_B1.c: 433: WR=1;
	bsf	(3241/8)^0180h,(3241)&7
	line	434
	
l24226:	
;MCU_16f1518_B1.c: 434: _nop();
	nop
	line	435
	
l24228:	
;MCU_16f1518_B1.c: 435: _nop();
	nop
	line	436
	
l8594:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
;; =============== function _Flash_Memory_Unlock ends ============

	signat	_Flash_Memory_Unlock,88
	global	_setSw_Enable
psect	text3111,local,class=CODE,delta=2
global __ptext3111
__ptext3111:

;; *************** function _setSw_Enable *****************
;; Defined at:
;;		line 81 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
;;		_MainT
;;		_setLoad_ERROR
;;		_setOverTemp_ERROR
;; This function uses a non-reentrant model
;;
psect	text3111
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	81
	global	__size_of_setSw_Enable
	__size_of_setSw_Enable	equ	__end_of_setSw_Enable-_setSw_Enable
	
_setSw_Enable:	
	opt	stack 7
; Regs used in _setSw_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Enable@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Enable@sw)
	line	82
	
l24218:	
;Switch_B1.c: 82: SwPointSelect(sw);
	movf	(setSw_Enable@sw),w
	fcall	_SwPointSelect
	line	83
	
l24220:	
;Switch_B1.c: 83: Sw->Enable=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	84
	
l14608:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Enable
	__end_of_setSw_Enable:
;; =============== function _setSw_Enable ends ============

	signat	_setSw_Enable,8312
	global	_setLoad_Enable
psect	text3112,local,class=CODE,delta=2
global __ptext3112
__ptext3112:

;; *************** function _setLoad_Enable *****************
;; Defined at:
;;		line 331 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    3[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text3112
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	331
	global	__size_of_setLoad_Enable
	__size_of_setLoad_Enable	equ	__end_of_setLoad_Enable-_setLoad_Enable
	
_setLoad_Enable:	
	opt	stack 9
; Regs used in _setLoad_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setLoad_Enable@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Enable@load)
	line	332
	
l24212:	
;OverLoad_B1.c: 332: LoadPointSelect(load);
	movf	(setLoad_Enable@load),w
	fcall	_LoadPointSelect
	line	333
	
l24214:	
;OverLoad_B1.c: 333: Load->Enable=command;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	334
	
l24216:	
;OverLoad_B1.c: 334: Load->GO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	335
	
l9825:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Enable
	__end_of_setLoad_Enable:
;; =============== function _setLoad_Enable ends ============

	signat	_setLoad_Enable,8312
	global	_setTemp_Enable
psect	text3113,local,class=CODE,delta=2
global __ptext3113
__ptext3113:

;; *************** function _setTemp_Enable *****************
;; Defined at:
;;		line 30 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;;  command         1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    2[BANK0 ] unsigned char 
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
;;		_TempPointSelect
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text3113
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	30
	global	__size_of_setTemp_Enable
	__size_of_setTemp_Enable	equ	__end_of_setTemp_Enable-_setTemp_Enable
	
_setTemp_Enable:	
	opt	stack 9
; Regs used in _setTemp_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setTemp_Enable@temp stored from wreg
	movlb 0	; select bank0
	movwf	(setTemp_Enable@temp)
	line	31
	
l24208:	
;OverTemperature_B1.c: 31: TempPointSelect(temp);
	movf	(setTemp_Enable@temp),w
	fcall	_TempPointSelect
	line	32
	
l24210:	
;OverTemperature_B1.c: 32: Temp->Enable=command;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setTemp_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	33
	
l10994:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Enable
	__end_of_setTemp_Enable:
;; =============== function _setTemp_Enable ends ============

	signat	_setTemp_Enable,8312
	global	_getTemp_AD
psect	text3114,local,class=CODE,delta=2
global __ptext3114
__ptext3114:

;; *************** function _getTemp_AD *****************
;; Defined at:
;;		line 46 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;;  channel         1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_TempPointSelect
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3114
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	46
	global	__size_of_getTemp_AD
	__size_of_getTemp_AD	equ	__end_of_getTemp_AD-_getTemp_AD
	
_getTemp_AD:	
	opt	stack 10
; Regs used in _getTemp_AD: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
;getTemp_AD@temp stored from wreg
	movlb 0	; select bank0
	movwf	(getTemp_AD@temp)
	line	47
	
l24194:	
;OverTemperature_B1.c: 47: TempPointSelect(temp);
	movf	(getTemp_AD@temp),w
	fcall	_TempPointSelect
	line	48
	
l24196:	
;OverTemperature_B1.c: 48: if(Temp->ADtoGO)
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u8071
	goto	u8070
u8071:
	goto	l11007
u8070:
	line	50
	
l24198:	
;OverTemperature_B1.c: 49: {
;OverTemperature_B1.c: 50: Temp->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movlb 0	; select bank0
	movwf	(??_getTemp_AD+0)+0
	movf	(??_getTemp_AD+0)+0,w
	movwf	(?_getAD)
	movf	(getTemp_AD@channel),w
	fcall	_getAD
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	51
	
l24200:	
;OverTemperature_B1.c: 51: if(Temp->ADH[0] < Temp->ADRES)
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_getTemp_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+2)+0+1
	movf	1+(??_getTemp_AD+0)+0,w
	subwf	1+(??_getTemp_AD+2)+0,w
	skipz
	goto	u8085
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u8085:
	skipnc
	goto	u8081
	goto	u8080
u8081:
	goto	l24204
u8080:
	line	53
	
l24202:	
;OverTemperature_B1.c: 52: {
;OverTemperature_B1.c: 53: Temp->ADH[0]=Temp->ADRES;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	0+(??_getTemp_AD+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_getTemp_AD+0)+0,w
	movwi	[1]fsr1
	line	54
;OverTemperature_B1.c: 54: }
	goto	l11007
	line	55
	
l11004:	
	
l24204:	
;OverTemperature_B1.c: 55: else if(Temp->ADH[1] < Temp->ADRES)
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_getTemp_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+2)+0+1
	movf	1+(??_getTemp_AD+0)+0,w
	subwf	1+(??_getTemp_AD+2)+0,w
	skipz
	goto	u8095
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u8095:
	skipnc
	goto	u8091
	goto	u8090
u8091:
	goto	l11007
u8090:
	line	57
	
l24206:	
;OverTemperature_B1.c: 56: {
;OverTemperature_B1.c: 57: Temp->ADH[1]=Temp->ADRES;
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movlb 1	; select bank1
	movf	(_Temp)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	0+(??_getTemp_AD+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_getTemp_AD+0)+0,w
	movwi	[1]fsr1
	goto	l11007
	line	58
	
l11006:	
	goto	l11007
	line	59
	
l11005:	
	goto	l11007
	
l11003:	
	line	60
	
l11007:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_AD
	__end_of_getTemp_AD:
;; =============== function _getTemp_AD ends ============

	signat	_getTemp_AD,8312
	global	_getLoad_AD
psect	text3115,local,class=CODE,delta=2
global __ptext3115
__ptext3115:

;; *************** function _getLoad_AD *****************
;; Defined at:
;;		line 39 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  channel         1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1   13[BANK0 ] unsigned char 
;;  i               1   15[BANK0 ] unsigned char 
;;  j               1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LoadPointSelect
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3115
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	39
	global	__size_of_getLoad_AD
	__size_of_getLoad_AD	equ	__end_of_getLoad_AD-_getLoad_AD
	
_getLoad_AD:	
	opt	stack 10
; Regs used in _getLoad_AD: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
;getLoad_AD@load stored from wreg
	movlb 0	; select bank0
	movwf	(getLoad_AD@load)
	line	40
	
l24154:	
;OverLoad_B1.c: 40: char i=0,j=0;
	clrf	(getLoad_AD@i)
	clrf	(getLoad_AD@j)
	line	41
	
l24156:	
;OverLoad_B1.c: 41: LoadPointSelect(load);
	movf	(getLoad_AD@load),w
	fcall	_LoadPointSelect
	line	42
	
l24158:	
;OverLoad_B1.c: 42: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u7991
	goto	u7990
u7991:
	goto	l9773
u7990:
	line	44
	
l24160:	
;OverLoad_B1.c: 43: {
;OverLoad_B1.c: 44: Load->ADRES=getAD(channel,0xc0);
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
	line	45
	
l24162:	
;OverLoad_B1.c: 45: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l24164:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u8001
	goto	u8000
u8001:
	goto	l24168
u8000:
	goto	l24178
	
l24166:	
	goto	l24178
	line	46
	
l9766:	
	line	47
	
l24168:	
;OverLoad_B1.c: 46: {
;OverLoad_B1.c: 47: if(Load->AH[i] < Load->ADRES)
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
	goto	u8015
	movf	0+(??_getLoad_AD+0)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u8015:
	skipnc
	goto	u8011
	goto	u8010
u8011:
	goto	l24174
u8010:
	line	49
	
l24170:	
;OverLoad_B1.c: 48: {
;OverLoad_B1.c: 49: Load->AH[i]=Load->ADRES;
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
	line	50
	
l24172:	
;OverLoad_B1.c: 50: j=1;
	clrf	(getLoad_AD@j)
	bsf	status,0
	rlf	(getLoad_AD@j),f
	line	51
;OverLoad_B1.c: 51: break;
	goto	l24178
	line	52
	
l9768:	
	line	45
	
l24174:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l24176:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u8021
	goto	u8020
u8021:
	goto	l24168
u8020:
	goto	l24178
	
l9767:	
	line	54
	
l24178:	
;OverLoad_B1.c: 52: }
;OverLoad_B1.c: 53: }
;OverLoad_B1.c: 54: if(j == 0)
	movf	(getLoad_AD@j),f
	skipz
	goto	u8031
	goto	u8030
u8031:
	goto	l9773
u8030:
	line	56
	
l24180:	
;OverLoad_B1.c: 55: {
;OverLoad_B1.c: 56: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l24182:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u8041
	goto	u8040
u8041:
	goto	l24186
u8040:
	goto	l9773
	
l24184:	
	goto	l9773
	line	57
	
l9770:	
	line	58
	
l24186:	
;OverLoad_B1.c: 57: {
;OverLoad_B1.c: 58: if(Load->AL[i] > Load->ADRES)
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
	goto	u8055
	movf	0+(??_getLoad_AD+1)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u8055:
	skipnc
	goto	u8051
	goto	u8050
u8051:
	goto	l24190
u8050:
	line	60
	
l24188:	
;OverLoad_B1.c: 59: {
;OverLoad_B1.c: 60: Load->AL[i]=Load->ADRES;
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
	line	61
;OverLoad_B1.c: 61: break;
	goto	l9773
	line	62
	
l9772:	
	line	56
	
l24190:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l24192:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u8061
	goto	u8060
u8061:
	goto	l24186
u8060:
	goto	l9773
	
l9771:	
	goto	l9773
	line	64
	
l9769:	
	goto	l9773
	line	65
	
l9765:	
	line	66
	
l9773:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_AD
	__end_of_getLoad_AD:
;; =============== function _getLoad_AD ends ============

	signat	_getLoad_AD,8312
	global	_RF_Initialization
psect	text3116,local,class=CODE,delta=2
global __ptext3116
__ptext3116:

;; *************** function _RF_Initialization *****************
;; Defined at:
;;		line 18 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3116
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	18
	global	__size_of_RF_Initialization
	__size_of_RF_Initialization	equ	__end_of_RF_Initialization-_RF_Initialization
	
_RF_Initialization:	
	opt	stack 10
; Regs used in _RF_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l24152:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l13316:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Initialization
	__end_of_RF_Initialization:
;; =============== function _RF_Initialization ends ============

	signat	_RF_Initialization,88
	global	_Mcu_Initialization
psect	text3117,local,class=CODE,delta=2
global __ptext3117
__ptext3117:

;; *************** function _Mcu_Initialization *****************
;; Defined at:
;;		line 12 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
;;		_IO_Set
;;		_TMR0_Set
;;		_ADC_Set
;;		_INT_Set
;;		_IOC_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3117
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	12
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	14
	
l24138:	
;MCU_16f1518_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l24140:	
;MCU_16f1518_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l24142:	
;MCU_16f1518_B1.c: 18: TMR0_Set();
	fcall	_TMR0_Set
	line	22
	
l24144:	
;MCU_16f1518_B1.c: 20: ;;
;MCU_16f1518_B1.c: 22: ADC_Set();
	fcall	_ADC_Set
	line	26
	
l24146:	
;MCU_16f1518_B1.c: 26: INT_Set();
	fcall	_INT_Set
	line	28
	
l24148:	
;MCU_16f1518_B1.c: 28: IOC_Set();
	fcall	_IOC_Set
	line	34
	
l24150:	
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
	
l8445:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
;; =============== function _Mcu_Initialization ends ============

	signat	_Mcu_Initialization,88
	global	_setLED_Main
psect	text3118,local,class=CODE,delta=2
global __ptext3118
__ptext3118:

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
psect	text3118
	file	"G:\Program\PIC\Source_File\LED_B1.c"
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
	
l24112:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l24114:	
;LED_B1.c: 217: if(LED->GO)
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u7931
	goto	u7930
u7931:
	goto	l6108
u7930:
	line	219
	
l24116:	
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
	
l24118:	
;LED_B1.c: 220: if(LED->Time >= 50)
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
	goto	u7941
	goto	u7940
u7941:
	goto	l6108
u7940:
	line	222
	
l24120:	
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
	
l24122:	
;LED_B1.c: 224: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED_Main@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7951
	goto	u7950
u7951:
	goto	l24126
u7950:
	line	226
	
l24124:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RC7=~RC7;
	movlw	1<<((119)&7)
	xorwf	((119)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l6108
	line	230
	
l6101:	
	
l24126:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7961
	goto	u7960
u7961:
	goto	l24130
u7960:
	line	232
	
l24128:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RA3=~RA3;
	movlw	1<<((99)&7)
	xorwf	((99)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l6108
	line	236
	
l6103:	
	
l24130:	
;LED_B1.c: 236: else if(led == 3)
	movf	(setLED_Main@led),w
	xorlw	03h&0ffh
	skipz
	goto	u7971
	goto	u7970
u7971:
	goto	l24134
u7970:
	line	238
	
l24132:	
;LED_B1.c: 237: {
;LED_B1.c: 238: RC6=~RC6;
	movlw	1<<((118)&7)
	xorwf	((118)/8),f
	line	239
;LED_B1.c: 239: }
	goto	l6108
	line	242
	
l6105:	
	
l24134:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7981
	goto	u7980
u7981:
	goto	l6108
u7980:
	line	244
	
l24136:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB5=~RB5;
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l6108
	line	245
	
l6107:	
	goto	l6108
	line	247
	
l6106:	
	goto	l6108
	
l6104:	
	goto	l6108
	
l6102:	
	goto	l6108
	
l6100:	
	goto	l6108
	line	248
	
l6099:	
	line	249
	
l6108:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Main
	__end_of_setLED_Main:
;; =============== function _setLED_Main ends ============

	signat	_setLED_Main,4216
	global	_setDimmer_LoadERROR
psect	text3119,local,class=CODE,delta=2
global __ptext3119
__ptext3119:

;; *************** function _setDimmer_LoadERROR *****************
;; Defined at:
;;		line 520 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_setLoad_ERROR
;; This function uses a non-reentrant model
;;
psect	text3119
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	520
	global	__size_of_setDimmer_LoadERROR
	__size_of_setDimmer_LoadERROR	equ	__end_of_setDimmer_LoadERROR-_setDimmer_LoadERROR
	
_setDimmer_LoadERROR:	
	opt	stack 7
; Regs used in _setDimmer_LoadERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmer_LoadERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_LoadERROR@dimmer)
	line	521
	
l24108:	
;Dimmer_B1.c: 521: DimmerPointSelect(dimmer);
	movf	(setDimmer_LoadERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	522
	
l24110:	
;Dimmer_B1.c: 522: Dimmer->LoadERROR=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_LoadERROR@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	523
	
l4908:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_LoadERROR
	__end_of_setDimmer_LoadERROR:
;; =============== function _setDimmer_LoadERROR ends ============

	signat	_setDimmer_LoadERROR,8312
	global	_setDimmer_TempERROR
psect	text3120,local,class=CODE,delta=2
global __ptext3120
__ptext3120:

;; *************** function _setDimmer_TempERROR *****************
;; Defined at:
;;		line 515 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_setOverTemp_ERROR
;; This function uses a non-reentrant model
;;
psect	text3120
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	515
	global	__size_of_setDimmer_TempERROR
	__size_of_setDimmer_TempERROR	equ	__end_of_setDimmer_TempERROR-_setDimmer_TempERROR
	
_setDimmer_TempERROR:	
	opt	stack 7
; Regs used in _setDimmer_TempERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmer_TempERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_TempERROR@dimmer)
	line	516
	
l24104:	
;Dimmer_B1.c: 516: DimmerPointSelect(dimmer);
	movf	(setDimmer_TempERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	517
	
l24106:	
;Dimmer_B1.c: 517: Dimmer->TempERROR=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_TempERROR@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	518
	
l4905:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_TempERROR
	__end_of_setDimmer_TempERROR:
;; =============== function _setDimmer_TempERROR ends ============

	signat	_setDimmer_TempERROR,8312
	global	_setDimmerLights_TriggerAdj
psect	text3121,local,class=CODE,delta=2
global __ptext3121
__ptext3121:

;; *************** function _setDimmerLights_TriggerAdj *****************
;; Defined at:
;;		line 465 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_Sw_OffFunc
;;		_Sw_AdjFunc
;; This function uses a non-reentrant model
;;
psect	text3121
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	465
	global	__size_of_setDimmerLights_TriggerAdj
	__size_of_setDimmerLights_TriggerAdj	equ	__end_of_setDimmerLights_TriggerAdj-_setDimmerLights_TriggerAdj
	
_setDimmerLights_TriggerAdj:	
	opt	stack 7
; Regs used in _setDimmerLights_TriggerAdj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_TriggerAdj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerAdj@lights)
	line	466
	
l24100:	
;Dimmer_B1.c: 466: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerAdj@lights),w
	fcall	_DimmerLightsPointSelect
	line	467
	
l24102:	
;Dimmer_B1.c: 467: DimmerLights->TriggerAdj=command;
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
	line	468
	
l4880:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerAdj
	__end_of_setDimmerLights_TriggerAdj:
;; =============== function _setDimmerLights_TriggerAdj ends ============

	signat	_setDimmerLights_TriggerAdj,8312
	global	_setDimmerLights_AdjGo
psect	text3122,local,class=CODE,delta=2
global __ptext3122
__ptext3122:

;; *************** function _setDimmerLights_AdjGo *****************
;; Defined at:
;;		line 455 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_Sw_OffFunc
;;		_Sw_AdjFunc
;; This function uses a non-reentrant model
;;
psect	text3122
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	455
	global	__size_of_setDimmerLights_AdjGo
	__size_of_setDimmerLights_AdjGo	equ	__end_of_setDimmerLights_AdjGo-_setDimmerLights_AdjGo
	
_setDimmerLights_AdjGo:	
	opt	stack 7
; Regs used in _setDimmerLights_AdjGo: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_AdjGo@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjGo@lights)
	line	456
	
l24096:	
;Dimmer_B1.c: 456: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjGo@lights),w
	fcall	_DimmerLightsPointSelect
	line	457
	
l24098:	
;Dimmer_B1.c: 457: DimmerLights->AdjGo=command;
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
	line	458
	
l4874:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjGo
	__end_of_setDimmerLights_AdjGo:
;; =============== function _setDimmerLights_AdjGo ends ============

	signat	_setDimmerLights_AdjGo,8312
	global	_setLoad_LightsStatus
psect	text3123,local,class=CODE,delta=2
global __ptext3123
__ptext3123:

;; *************** function _setLoad_LightsStatus *****************
;; Defined at:
;;		line 309 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  lights          1    2[BANK0 ] unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    5[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text3123
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	309
	global	__size_of_setLoad_LightsStatus
	__size_of_setLoad_LightsStatus	equ	__end_of_setLoad_LightsStatus-_setLoad_LightsStatus
	
_setLoad_LightsStatus:	
	opt	stack 5
; Regs used in _setLoad_LightsStatus: [wreg+fsr1l-status,0+pclath+cstack]
;setLoad_LightsStatus@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_LightsStatus@load)
	line	310
	
l24082:	
;OverLoad_B1.c: 310: LoadPointSelect(load);
	movf	(setLoad_LightsStatus@load),w
	fcall	_LoadPointSelect
	line	311
	
l24084:	
;OverLoad_B1.c: 311: if(lights == 1)
	movlb 0	; select bank0
	movf	(setLoad_LightsStatus@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u7901
	goto	u7900
u7901:
	goto	l24088
u7900:
	line	313
	
l24086:	
;OverLoad_B1.c: 312: {
;OverLoad_B1.c: 313: Load->Lights1Status=command;
	movf	(setLoad_LightsStatus@command),w
	movwf	(??_setLoad_LightsStatus+0)+0
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_LightsStatus+0)+0,w
	movwf	indf1
	goto	l24088
	line	314
	
l9816:	
	line	315
	
l24088:	
;OverLoad_B1.c: 314: }
;OverLoad_B1.c: 315: if(lights == 2)
	movf	(setLoad_LightsStatus@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u7911
	goto	u7910
u7911:
	goto	l24092
u7910:
	line	317
	
l24090:	
;OverLoad_B1.c: 316: {
;OverLoad_B1.c: 317: Load->Lights2Status=command;
	movf	(setLoad_LightsStatus@command),w
	movwf	(??_setLoad_LightsStatus+0)+0
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_LightsStatus+0)+0,w
	movwf	indf1
	goto	l24092
	line	318
	
l9817:	
	line	319
	
l24092:	
;OverLoad_B1.c: 318: }
;OverLoad_B1.c: 319: if(lights == 3)
	movf	(setLoad_LightsStatus@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u7921
	goto	u7920
u7921:
	goto	l9819
u7920:
	line	321
	
l24094:	
;OverLoad_B1.c: 320: {
;OverLoad_B1.c: 321: Load->Lights3Status=command;
	movf	(setLoad_LightsStatus@command),w
	movwf	(??_setLoad_LightsStatus+0)+0
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_LightsStatus+0)+0,w
	movwf	indf1
	goto	l9819
	line	322
	
l9818:	
	line	323
	
l9819:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_LightsStatus
	__end_of_setLoad_LightsStatus:
;; =============== function _setLoad_LightsStatus ends ============

	signat	_setLoad_LightsStatus,12408
	global	_setLoad_StatusOn
psect	text3124,local,class=CODE,delta=2
global __ptext3124
__ptext3124:

;; *************** function _setLoad_StatusOn *****************
;; Defined at:
;;		line 342 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    3[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text3124
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	342
	global	__size_of_setLoad_StatusOn
	__size_of_setLoad_StatusOn	equ	__end_of_setLoad_StatusOn-_setLoad_StatusOn
	
_setLoad_StatusOn:	
	opt	stack 5
; Regs used in _setLoad_StatusOn: [wreg+fsr1l-status,0+pclath+cstack]
;setLoad_StatusOn@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOn@load)
	line	343
	
l24078:	
;OverLoad_B1.c: 343: LoadPointSelect(load);
	movf	(setLoad_StatusOn@load),w
	fcall	_LoadPointSelect
	line	344
	
l24080:	
;OverLoad_B1.c: 344: Load->StatusOn=command;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOn@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	345
	
l9831:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOn
	__end_of_setLoad_StatusOn:
;; =============== function _setLoad_StatusOn ends ============

	signat	_setLoad_StatusOn,8312
	global	_setLED
psect	text3125,local,class=CODE,delta=2
global __ptext3125
__ptext3125:

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
;;		_setLoad_ERROR
;;		_setOverTemp_ERROR
;;		_setSw_Initialization
;; This function uses a non-reentrant model
;;
psect	text3125
	file	"G:\Program\PIC\Source_File\LED_B1.c"
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
	
l24016:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l24018:	
;LED_B1.c: 77: if(command == 0)
	movlb 0	; select bank0
	movf	(setLED@command),f
	skipz
	goto	u7741
	goto	u7740
u7741:
	goto	l24036
u7740:
	line	80
	
l24020:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7751
	goto	u7750
u7751:
	goto	l24024
u7750:
	line	85
	
l24022:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RC7=1;
	bsf	(119/8),(119)&7
	line	87
;LED_B1.c: 87: }
	goto	l6096
	line	90
	
l6069:	
	
l24024:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7761
	goto	u7760
u7761:
	goto	l24028
u7760:
	line	95
	
l24026:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RA3=1;
	bsf	(99/8),(99)&7
	line	97
;LED_B1.c: 97: }
	goto	l6096
	line	100
	
l6071:	
	
l24028:	
;LED_B1.c: 100: else if(led == 3)
	movf	(setLED@led),w
	xorlw	03h&0ffh
	skipz
	goto	u7771
	goto	u7770
u7771:
	goto	l24032
u7770:
	line	105
	
l24030:	
;LED_B1.c: 101: {
;LED_B1.c: 105: RC6=1;
	bsf	(118/8),(118)&7
	line	107
;LED_B1.c: 107: }
	goto	l6096
	line	110
	
l6073:	
	
l24032:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7781
	goto	u7780
u7781:
	goto	l6096
u7780:
	line	115
	
l24034:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB5=1;
	bsf	(109/8),(109)&7
	goto	l6096
	line	117
	
l6075:	
	goto	l6096
	line	119
	
l6074:	
	goto	l6096
	
l6072:	
	goto	l6096
	
l6070:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l6096
	line	120
	
l6068:	
	
l24036:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h&0ffh
	skipz
	goto	u7791
	goto	u7790
u7791:
	goto	l24054
u7790:
	line	123
	
l24038:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7801
	goto	u7800
u7801:
	goto	l24042
u7800:
	line	128
	
l24040:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RC7=0;
	bcf	(119/8),(119)&7
	line	130
;LED_B1.c: 130: }
	goto	l6096
	line	133
	
l6078:	
	
l24042:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7811
	goto	u7810
u7811:
	goto	l24046
u7810:
	line	138
	
l24044:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RA3=0;
	bcf	(99/8),(99)&7
	line	140
;LED_B1.c: 140: }
	goto	l6096
	line	143
	
l6080:	
	
l24046:	
;LED_B1.c: 143: else if(led == 3)
	movf	(setLED@led),w
	xorlw	03h&0ffh
	skipz
	goto	u7821
	goto	u7820
u7821:
	goto	l24050
u7820:
	line	148
	
l24048:	
;LED_B1.c: 144: {
;LED_B1.c: 148: RC6=0;
	bcf	(118/8),(118)&7
	line	150
;LED_B1.c: 150: }
	goto	l6096
	line	153
	
l6082:	
	
l24050:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7831
	goto	u7830
u7831:
	goto	l6096
u7830:
	line	158
	
l24052:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB5=0;
	bcf	(109/8),(109)&7
	goto	l6096
	line	160
	
l6084:	
	goto	l6096
	line	162
	
l6083:	
	goto	l6096
	
l6081:	
	goto	l6096
	
l6079:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l6096
	line	163
	
l6077:	
	
l24054:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah&0ffh
	skipz
	goto	u7841
	goto	u7840
u7841:
	goto	l24074
u7840:
	line	165
	
l24056:	
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
	
l24058:	
;LED_B1.c: 168: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7851
	goto	u7850
u7851:
	goto	l24062
u7850:
	line	173
	
l24060:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RC7=1;
	bsf	(119/8),(119)&7
	line	175
;LED_B1.c: 175: }
	goto	l6096
	line	178
	
l6087:	
	
l24062:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7861
	goto	u7860
u7861:
	goto	l24066
u7860:
	line	183
	
l24064:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RA3=1;
	bsf	(99/8),(99)&7
	line	185
;LED_B1.c: 185: }
	goto	l6096
	line	188
	
l6089:	
	
l24066:	
;LED_B1.c: 188: else if(led == 3)
	movf	(setLED@led),w
	xorlw	03h&0ffh
	skipz
	goto	u7871
	goto	u7870
u7871:
	goto	l24070
u7870:
	line	193
	
l24068:	
;LED_B1.c: 189: {
;LED_B1.c: 193: RC6=1;
	bsf	(118/8),(118)&7
	line	195
;LED_B1.c: 195: }
	goto	l6096
	line	198
	
l6091:	
	
l24070:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7881
	goto	u7880
u7881:
	goto	l6096
u7880:
	line	203
	
l24072:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB5=1;
	bsf	(109/8),(109)&7
	goto	l6096
	line	205
	
l6093:	
	goto	l6096
	line	207
	
l6092:	
	goto	l6096
	
l6090:	
	goto	l6096
	
l6088:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l6096
	line	208
	
l6086:	
	
l24074:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh&0ffh
	skipz
	goto	u7891
	goto	u7890
u7891:
	goto	l6096
u7890:
	line	210
	
l24076:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l6096
	line	211
	
l6095:	
	goto	l6096
	line	212
	
l6094:	
	goto	l6096
	
l6085:	
	goto	l6096
	
l6076:	
	
l6096:	
	return
	opt stack 0
GLOBAL	__end_of_setLED
	__end_of_setLED:
;; =============== function _setLED ends ============

	signat	_setLED,8312
	global	_setLoad_StatusOff
psect	text3126,local,class=CODE,delta=2
global __ptext3126
__ptext3126:

;; *************** function _setLoad_StatusOff *****************
;; Defined at:
;;		line 347 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  lights          1    2[BANK0 ] unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    4[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LoadPointSelect
;; This function is called by:
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_Adj
;; This function uses a non-reentrant model
;;
psect	text3126
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	347
	global	__size_of_setLoad_StatusOff
	__size_of_setLoad_StatusOff	equ	__end_of_setLoad_StatusOff-_setLoad_StatusOff
	
_setLoad_StatusOff:	
	opt	stack 7
; Regs used in _setLoad_StatusOff: [wreg+fsr1l-status,0+pclath+cstack]
;setLoad_StatusOff@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOff@load)
	line	348
	
l24000:	
;OverLoad_B1.c: 348: LoadPointSelect(load);
	movf	(setLoad_StatusOff@load),w
	fcall	_LoadPointSelect
	line	349
	
l24002:	
;OverLoad_B1.c: 349: Load->StatusOff=command;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOff@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	351
	
l24004:	
;OverLoad_B1.c: 351: if(lights == 1)
	movf	(setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u7711
	goto	u7710
u7711:
	goto	l24008
u7710:
	line	353
	
l24006:	
;OverLoad_B1.c: 352: {
;OverLoad_B1.c: 353: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l24008
	line	354
	
l9834:	
	line	355
	
l24008:	
;OverLoad_B1.c: 354: }
;OverLoad_B1.c: 355: if(lights == 2)
	movf	(setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u7721
	goto	u7720
u7721:
	goto	l24012
u7720:
	line	357
	
l24010:	
;OverLoad_B1.c: 356: {
;OverLoad_B1.c: 357: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l24012
	line	358
	
l9835:	
	line	359
	
l24012:	
;OverLoad_B1.c: 358: }
;OverLoad_B1.c: 359: if(lights == 3)
	movf	(setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u7731
	goto	u7730
u7731:
	goto	l9837
u7730:
	line	361
	
l24014:	
;OverLoad_B1.c: 360: {
;OverLoad_B1.c: 361: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l9837
	line	362
	
l9836:	
	line	363
	
l9837:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOff
	__end_of_setLoad_StatusOff:
;; =============== function _setLoad_StatusOff ends ============

	signat	_setLoad_StatusOff,12408
	global	_setDimmerLights_TriggerERROR
psect	text3127,local,class=CODE,delta=2
global __ptext3127
__ptext3127:

;; *************** function _setDimmerLights_TriggerERROR *****************
;; Defined at:
;;		line 350 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    4[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text3127
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	350
	global	__size_of_setDimmerLights_TriggerERROR
	__size_of_setDimmerLights_TriggerERROR	equ	__end_of_setDimmerLights_TriggerERROR-_setDimmerLights_TriggerERROR
	
_setDimmerLights_TriggerERROR:	
	opt	stack 6
; Regs used in _setDimmerLights_TriggerERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_TriggerERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerERROR@lights)
	line	351
	
l23988:	
;Dimmer_B1.c: 351: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	352
	
l23990:	
;Dimmer_B1.c: 352: DimmerLights->Trigger=command;
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
	line	353
	
l23992:	
;Dimmer_B1.c: 353: DimmerLights->Switch=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	354
	
l23994:	
;Dimmer_B1.c: 354: DimmerLights->TriggerAdj=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	355
	
l23996:	
;Dimmer_B1.c: 355: DimmerLights->AdjGo=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	356
	
l23998:	
;Dimmer_B1.c: 356: DimmerLights->Open=!command;
	movf	(setDimmerLights_TriggerERROR@command),w
	xorlw	0&0ffh
	movlw	0
	skipnz
	movlw	1
	movwf	(??_setDimmerLights_TriggerERROR+0)+0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	(??_setDimmerLights_TriggerERROR+0)+0,f
	rlf	(??_setDimmerLights_TriggerERROR+0)+0,f
	movf	indf1,w
	xorwf	(??_setDimmerLights_TriggerERROR+0)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_setDimmerLights_TriggerERROR+0)+0,w
	movwf	indf1
	line	357
	
l4847:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerERROR
	__end_of_setDimmerLights_TriggerERROR:
;; =============== function _setDimmerLights_TriggerERROR ends ============

	signat	_setDimmerLights_TriggerERROR,8312
	global	_getDimmer_PFERROR
psect	text3128,local,class=CODE,delta=2
global __ptext3128
__ptext3128:

;; *************** function _getDimmer_PFERROR *****************
;; Defined at:
;;		line 545 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text3128
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	545
	global	__size_of_getDimmer_PFERROR
	__size_of_getDimmer_PFERROR	equ	__end_of_getDimmer_PFERROR-_getDimmer_PFERROR
	
_getDimmer_PFERROR:	
	opt	stack 6
; Regs used in _getDimmer_PFERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getDimmer_PFERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_PFERROR@dimmer)
	line	546
	
l23982:	
;Dimmer_B1.c: 546: DimmerPointSelect(dimmer);
	movf	(getDimmer_PFERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	547
	
l23984:	
;Dimmer_B1.c: 547: return Dimmer->PFERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l4923
	
l23986:	
	line	548
	
l4923:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_PFERROR
	__end_of_getDimmer_PFERROR:
;; =============== function _getDimmer_PFERROR ends ============

	signat	_getDimmer_PFERROR,4217
	global	_getDimmer_LoadERROR
psect	text3129,local,class=CODE,delta=2
global __ptext3129
__ptext3129:

;; *************** function _getDimmer_LoadERROR *****************
;; Defined at:
;;		line 540 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text3129
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	540
	global	__size_of_getDimmer_LoadERROR
	__size_of_getDimmer_LoadERROR	equ	__end_of_getDimmer_LoadERROR-_getDimmer_LoadERROR
	
_getDimmer_LoadERROR:	
	opt	stack 6
; Regs used in _getDimmer_LoadERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getDimmer_LoadERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_LoadERROR@dimmer)
	line	541
	
l23976:	
;Dimmer_B1.c: 541: DimmerPointSelect(dimmer);
	movf	(getDimmer_LoadERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	542
	
l23978:	
;Dimmer_B1.c: 542: return Dimmer->LoadERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	andlw	(1<<1)-1
	goto	l4920
	
l23980:	
	line	543
	
l4920:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_LoadERROR
	__end_of_getDimmer_LoadERROR:
;; =============== function _getDimmer_LoadERROR ends ============

	signat	_getDimmer_LoadERROR,4217
	global	_getDimmer_TempERROR
psect	text3130,local,class=CODE,delta=2
global __ptext3130
__ptext3130:

;; *************** function _getDimmer_TempERROR *****************
;; Defined at:
;;		line 535 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text3130
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	535
	global	__size_of_getDimmer_TempERROR
	__size_of_getDimmer_TempERROR	equ	__end_of_getDimmer_TempERROR-_getDimmer_TempERROR
	
_getDimmer_TempERROR:	
	opt	stack 6
; Regs used in _getDimmer_TempERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getDimmer_TempERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_TempERROR@dimmer)
	line	536
	
l23970:	
;Dimmer_B1.c: 536: DimmerPointSelect(dimmer);
	movf	(getDimmer_TempERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	537
	
l23972:	
;Dimmer_B1.c: 537: return Dimmer->TempERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	andlw	(1<<1)-1
	goto	l4917
	
l23974:	
	line	538
	
l4917:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_TempERROR
	__end_of_getDimmer_TempERROR:
;; =============== function _getDimmer_TempERROR ends ============

	signat	_getDimmer_TempERROR,4217
	global	_getDimmerLights_Trigger
psect	text3131,local,class=CODE,delta=2
global __ptext3131
__ptext3131:

;; *************** function _getDimmerLights_Trigger *****************
;; Defined at:
;;		line 254 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
;;  Status          1    4[BANK0 ] unsigned char 
;;  length          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text3131
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	254
	global	__size_of_getDimmerLights_Trigger
	__size_of_getDimmerLights_Trigger	equ	__end_of_getDimmerLights_Trigger-_getDimmerLights_Trigger
	
_getDimmerLights_Trigger:	
	opt	stack 8
; Regs used in _getDimmerLights_Trigger: [wreg+fsr1l-status,0+pclath+cstack]
	line	255
	
l23952:	
;Dimmer_B1.c: 255: char Status=0,i,length;
	movlb 0	; select bank0
	clrf	(getDimmerLights_Trigger@Status)
	line	257
	
l23954:	
;Dimmer_B1.c: 257: length=3;
	movlw	(03h)
	movwf	(??_getDimmerLights_Trigger+0)+0
	movf	(??_getDimmerLights_Trigger+0)+0,w
	movwf	(getDimmerLights_Trigger@length)
	line	266
	
l23956:	
;Dimmer_B1.c: 266: for(i=0 ; i<length ; i++)
	clrf	(getDimmerLights_Trigger@i)
	goto	l4826
	line	267
	
l4827:	
	line	268
	
l23958:	
;Dimmer_B1.c: 267: {
;Dimmer_B1.c: 268: DimmerLightsPointSelect(i+1);
	movf	(getDimmerLights_Trigger@i),w
	addlw	01h
	fcall	_DimmerLightsPointSelect
	line	269
	
l23960:	
;Dimmer_B1.c: 269: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7691
	goto	u7690
u7691:
	goto	l23964
u7690:
	line	271
	
l23962:	
;Dimmer_B1.c: 270: {
;Dimmer_B1.c: 271: Status=1;
	clrf	(getDimmerLights_Trigger@Status)
	bsf	status,0
	rlf	(getDimmerLights_Trigger@Status),f
	goto	l23964
	line	272
	
l4828:	
	line	266
	
l23964:	
	movlw	(01h)
	movwf	(??_getDimmerLights_Trigger+0)+0
	movf	(??_getDimmerLights_Trigger+0)+0,w
	addwf	(getDimmerLights_Trigger@i),f
	
l4826:	
	movf	(getDimmerLights_Trigger@length),w
	subwf	(getDimmerLights_Trigger@i),w
	skipc
	goto	u7701
	goto	u7700
u7701:
	goto	l23958
u7700:
	goto	l23966
	
l4829:	
	line	274
	
l23966:	
;Dimmer_B1.c: 272: }
;Dimmer_B1.c: 273: }
;Dimmer_B1.c: 274: return Status;
	movf	(getDimmerLights_Trigger@Status),w
	goto	l4830
	
l23968:	
	line	275
	
l4830:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_Trigger
	__end_of_getDimmerLights_Trigger:
;; =============== function _getDimmerLights_Trigger ends ============

	signat	_getDimmerLights_Trigger,89
	global	_setDimmerLights_Close
psect	text3132,local,class=CODE,delta=2
global __ptext3132
__ptext3132:

;; *************** function _setDimmerLights_Close *****************
;; Defined at:
;;		line 480 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text3132
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	480
	global	__size_of_setDimmerLights_Close
	__size_of_setDimmerLights_Close	equ	__end_of_setDimmerLights_Close-_setDimmerLights_Close
	
_setDimmerLights_Close:	
	opt	stack 8
; Regs used in _setDimmerLights_Close: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Close@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Close@lights)
	line	481
	
l23948:	
;Dimmer_B1.c: 481: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Close@lights),w
	fcall	_DimmerLightsPointSelect
	line	482
	
l23950:	
;Dimmer_B1.c: 482: DimmerLights->Close=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_Close@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	483
	
l4889:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Close
	__end_of_setDimmerLights_Close:
;; =============== function _setDimmerLights_Close ends ============

	signat	_setDimmerLights_Close,8312
	global	_setDimmerLights_Open
psect	text3133,local,class=CODE,delta=2
global __ptext3133
__ptext3133:

;; *************** function _setDimmerLights_Open *****************
;; Defined at:
;;		line 470 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setDimmerLights_Main
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text3133
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	470
	global	__size_of_setDimmerLights_Open
	__size_of_setDimmerLights_Open	equ	__end_of_setDimmerLights_Open-_setDimmerLights_Open
	
_setDimmerLights_Open:	
	opt	stack 8
; Regs used in _setDimmerLights_Open: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Open@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Open@lights)
	line	471
	
l23944:	
;Dimmer_B1.c: 471: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Open@lights),w
	fcall	_DimmerLightsPointSelect
	line	472
	
l23946:	
;Dimmer_B1.c: 472: DimmerLights->Open=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_Open@command),w
	bcf	indf1,5
	skipz
	bsf	indf1,5
	line	473
	
l4883:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Open
	__end_of_setDimmerLights_Open:
;; =============== function _setDimmerLights_Open ends ============

	signat	_setDimmerLights_Open,8312
	global	_setLoad_GO
psect	text3134,local,class=CODE,delta=2
global __ptext3134
__ptext3134:

;; *************** function _setLoad_GO *****************
;; Defined at:
;;		line 337 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    3[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_DimmerLights_Close
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text3134
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	337
	global	__size_of_setLoad_GO
	__size_of_setLoad_GO	equ	__end_of_setLoad_GO-_setLoad_GO
	
_setLoad_GO:	
	opt	stack 5
; Regs used in _setLoad_GO: [wreg+fsr1l-status,0+pclath+cstack]
;setLoad_GO@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_GO@load)
	line	338
	
l23940:	
;OverLoad_B1.c: 338: LoadPointSelect(load);
	movf	(setLoad_GO@load),w
	fcall	_LoadPointSelect
	line	339
	
l23942:	
;OverLoad_B1.c: 339: Load->GO=command;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	340
	
l9828:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_GO
	__end_of_setLoad_GO:
;; =============== function _setLoad_GO ends ============

	signat	_setLoad_GO,8312
	global	_getDimmerLights_StatusFlag
psect	text3135,local,class=CODE,delta=2
global __ptext3135
__ptext3135:

;; *************** function _getDimmerLights_StatusFlag *****************
;; Defined at:
;;		line 229 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
;;  Status          1    4[BANK0 ] unsigned char 
;;  length          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DimmerLights_Close
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text3135
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	229
	global	__size_of_getDimmerLights_StatusFlag
	__size_of_getDimmerLights_StatusFlag	equ	__end_of_getDimmerLights_StatusFlag-_getDimmerLights_StatusFlag
	
_getDimmerLights_StatusFlag:	
	opt	stack 8
; Regs used in _getDimmerLights_StatusFlag: [wreg+fsr1l-status,0+pclath+cstack]
	line	230
	
l23922:	
;Dimmer_B1.c: 230: char Status=0,i,length;
	movlb 0	; select bank0
	clrf	(getDimmerLights_StatusFlag@Status)
	line	232
	
l23924:	
;Dimmer_B1.c: 232: length=3;
	movlw	(03h)
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	movwf	(getDimmerLights_StatusFlag@length)
	line	242
	
l23926:	
;Dimmer_B1.c: 242: for(i=0 ; i<length ; i++)
	clrf	(getDimmerLights_StatusFlag@i)
	goto	l4819
	line	243
	
l4820:	
	line	244
	
l23928:	
;Dimmer_B1.c: 243: {
;Dimmer_B1.c: 244: DimmerLightsPointSelect(i+1);
	movf	(getDimmerLights_StatusFlag@i),w
	addlw	01h
	fcall	_DimmerLightsPointSelect
	line	245
	
l23930:	
;Dimmer_B1.c: 245: if(DimmerLights->StatusFlag)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u7671
	goto	u7670
u7671:
	goto	l23934
u7670:
	line	247
	
l23932:	
;Dimmer_B1.c: 246: {
;Dimmer_B1.c: 247: Status=1;
	clrf	(getDimmerLights_StatusFlag@Status)
	bsf	status,0
	rlf	(getDimmerLights_StatusFlag@Status),f
	goto	l23934
	line	248
	
l4821:	
	line	242
	
l23934:	
	movlw	(01h)
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	addwf	(getDimmerLights_StatusFlag@i),f
	
l4819:	
	movf	(getDimmerLights_StatusFlag@length),w
	subwf	(getDimmerLights_StatusFlag@i),w
	skipc
	goto	u7681
	goto	u7680
u7681:
	goto	l23928
u7680:
	goto	l23936
	
l4822:	
	line	250
	
l23936:	
;Dimmer_B1.c: 248: }
;Dimmer_B1.c: 249: }
;Dimmer_B1.c: 250: return Status;
	movf	(getDimmerLights_StatusFlag@Status),w
	goto	l4823
	
l23938:	
	line	251
	
l4823:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_StatusFlag
	__end_of_getDimmerLights_StatusFlag:
;; =============== function _getDimmerLights_StatusFlag ends ============

	signat	_getDimmerLights_StatusFlag,89
	global	_setDimmer_Detect
psect	text3136,local,class=CODE,delta=2
global __ptext3136
__ptext3136:

;; *************** function _setDimmer_Detect *****************
;; Defined at:
;;		line 530 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_Close
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text3136
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	530
	global	__size_of_setDimmer_Detect
	__size_of_setDimmer_Detect	equ	__end_of_setDimmer_Detect-_setDimmer_Detect
	
_setDimmer_Detect:	
	opt	stack 5
; Regs used in _setDimmer_Detect: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmer_Detect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_Detect@dimmer)
	line	531
	
l23918:	
;Dimmer_B1.c: 531: DimmerPointSelect(dimmer);
	movf	(setDimmer_Detect@dimmer),w
	fcall	_DimmerPointSelect
	line	532
	
l23920:	
;Dimmer_B1.c: 532: Dimmer->Detect=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_Detect@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	533
	
l4914:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_Detect
	__end_of_setDimmer_Detect:
;; =============== function _setDimmer_Detect ends ============

	signat	_setDimmer_Detect,8312
	global	_getDimmer_Detect
psect	text3137,local,class=CODE,delta=2
global __ptext3137
__ptext3137:

;; *************** function _getDimmer_Detect *****************
;; Defined at:
;;		line 550 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_Close
;; This function uses a non-reentrant model
;;
psect	text3137
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	550
	global	__size_of_getDimmer_Detect
	__size_of_getDimmer_Detect	equ	__end_of_getDimmer_Detect-_getDimmer_Detect
	
_getDimmer_Detect:	
	opt	stack 8
; Regs used in _getDimmer_Detect: [wreg+fsr1l-status,0+pclath+cstack]
;getDimmer_Detect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_Detect@dimmer)
	line	551
	
l23912:	
;Dimmer_B1.c: 551: DimmerPointSelect(dimmer);
	movf	(getDimmer_Detect@dimmer),w
	fcall	_DimmerPointSelect
	line	552
	
l23914:	
;Dimmer_B1.c: 552: return Dimmer->Detect;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	movlb 0	; select bank0
	movwf	(??_getDimmer_Detect+0)+0
	rrf	(??_getDimmer_Detect+0)+0,f
	rrf	(??_getDimmer_Detect+0)+0,w
	andlw	(1<<1)-1
	goto	l4926
	
l23916:	
	line	553
	
l4926:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_Detect
	__end_of_getDimmer_Detect:
;; =============== function _getDimmer_Detect ends ============

	signat	_getDimmer_Detect,4217
	global	_setDelayOff_GO
psect	text3138,local,class=CODE,delta=2
global __ptext3138
__ptext3138:

;; *************** function _setDelayOff_GO *****************
;; Defined at:
;;		line 89 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;;  value           1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    8[BANK0 ] unsigned char 
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
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DelayOffPointSelect
;;		_DelayTimejudge
;; This function is called by:
;;		_setRFSW_Control
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text3138
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	89
	global	__size_of_setDelayOff_GO
	__size_of_setDelayOff_GO	equ	__end_of_setDelayOff_GO-_setDelayOff_GO
	
_setDelayOff_GO:	
	opt	stack 5
; Regs used in _setDelayOff_GO: [wreg+fsr1l-status,0+pclath+cstack]
;setDelayOff_GO@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setDelayOff_GO@sw)
	line	90
	
l23898:	
;DelayOff_B1.c: 90: DelayOffPointSelect(sw);
	movf	(setDelayOff_GO@sw),w
	fcall	_DelayOffPointSelect
	line	91
	
l23900:	
;DelayOff_B1.c: 91: if(DelayOff->Enable)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	movf	(_DelayOff+1)^080h,w
	movwf	fsr1h

	btfss	indf1,0
	goto	u7641
	goto	u7640
u7641:
	goto	l3575
u7640:
	line	93
	
l23902:	
;DelayOff_B1.c: 92: {
;DelayOff_B1.c: 93: DelayOff->GO=command;
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	movf	(_DelayOff+1)^080h,w
	movwf	fsr1h

	movlb 0	; select bank0
	movf	(setDelayOff_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	94
	
l23904:	
;DelayOff_B1.c: 94: if(command)
	movf	(setDelayOff_GO@command),w
	skipz
	goto	u7650
	goto	l23908
u7650:
	line	96
	
l23906:	
;DelayOff_B1.c: 95: {
;DelayOff_B1.c: 96: DelayOff->Value=DelayTimejudge(value);
	movf	(setDelayOff_GO@value),w
	fcall	_DelayTimejudge
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(01h)
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+1)+0
	movlw	high(01h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_setDelayOff_GO+1)+0
	movf	0+(??_setDelayOff_GO+1)+0,w
	movwf	fsr1l
	movf	1+(??_setDelayOff_GO+1)+0,w
	movwf	fsr1h

	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	line	97
;DelayOff_B1.c: 97: }
	goto	l3573
	line	98
	
l3572:	
	
l23908:	
;DelayOff_B1.c: 98: else if(command == 0)
	movf	(setDelayOff_GO@command),f
	skipz
	goto	u7661
	goto	u7660
u7661:
	goto	l3573
u7660:
	line	100
	
l23910:	
;DelayOff_B1.c: 99: {
;DelayOff_B1.c: 100: Product->Data[sw+26]=0;
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l3573
	line	101
	
l3574:	
	line	102
	
l3573:	
;DelayOff_B1.c: 101: }
;DelayOff_B1.c: 102: DelayOff->SecondTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(02h)
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	movlw	high(02h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1l
	movf	1+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1h

	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	103
;DelayOff_B1.c: 103: DelayOff->MinuteTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	low(04h)
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	movlw	high(04h)
	movlb 1	; select bank1
	addwfc	(_DelayOff+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1l
	movf	1+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1h

	clrf	indf1
	goto	l3575
	line	104
	
l3571:	
	line	105
	
l3575:	
	return
	opt stack 0
GLOBAL	__end_of_setDelayOff_GO
	__end_of_setDelayOff_GO:
;; =============== function _setDelayOff_GO ends ============

	signat	_setDelayOff_GO,12408
	global	_setTxData
psect	text3139,local,class=CODE,delta=2
global __ptext3139
__ptext3139:

;; *************** function _setTxData *****************
;; Defined at:
;;		line 129 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    4[BANK0 ] unsigned char 
;;  i               1    5[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Adj
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setRFSW_AdjControl
;;		_Sw_OnFunc
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text3139
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	129
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
	opt	stack 8
; Regs used in _setTxData: [wreg+fsr1l-status,0+pclath+cstack]
;setTxData@rf stored from wreg
	line	131
	movlb 0	; select bank0
	movwf	(setTxData@rf)
	
l23874:	
;RF_Control_B1.c: 130: char i;
;RF_Control_B1.c: 131: RfPointSelect(rf);
	movf	(setTxData@rf),w
	fcall	_RfPointSelect
	line	132
	
l23876:	
;RF_Control_B1.c: 132: if(RF->Enable)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u7601
	goto	u7600
u7601:
	goto	l13354
u7600:
	line	134
	
l23878:	
;RF_Control_B1.c: 133: {
;RF_Control_B1.c: 134: if(RF->TransceiveGO == 0 && 1)
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u7611
	goto	u7610
u7611:
	goto	l13354
u7610:
	line	137
	
l23880:	
;RF_Control_B1.c: 135: {
;RF_Control_B1.c: 137: RF->TransceiveGO=1;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	138
	
l23882:	
;RF_Control_B1.c: 138: RF_Data[0]=0x63;
	movlw	(063h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF_Data)^080h
	line	139
	
l23884:	
;RF_Control_B1.c: 139: RF_Data[1]=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+01h
	line	140
	
l23886:	
;RF_Control_B1.c: 140: for(i=2 ;i< 21 ;i++)
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	(setTxData@i)
	
l23888:	
	movlw	(015h)
	subwf	(setTxData@i),w
	skipc
	goto	u7621
	goto	u7620
u7621:
	goto	l23892
u7620:
	goto	l13354
	
l23890:	
	goto	l13354
	line	141
	
l13352:	
	line	142
	
l23892:	
;RF_Control_B1.c: 141: {
;RF_Control_B1.c: 142: RF_Data[i]=Product->Data[i];
	movf	(setTxData@i),w
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	0+(??_setTxData+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+1)+0
	movf	(setTxData@i),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setTxData+1)+0,w
	movwf	indf1
	line	140
	
l23894:	
	movlw	(01h)
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	addwf	(setTxData@i),f
	
l23896:	
	movlw	(015h)
	subwf	(setTxData@i),w
	skipc
	goto	u7631
	goto	u7630
u7631:
	goto	l23892
u7630:
	goto	l13354
	
l13353:	
	goto	l13354
	line	167
	
l13351:	
	goto	l13354
	line	168
	
l13350:	
	line	169
	
l13354:	
	return
	opt stack 0
GLOBAL	__end_of_setTxData
	__end_of_setTxData:
;; =============== function _setTxData ends ============

	signat	_setTxData,4216
	global	_setDimmerLights_Switch
psect	text3140,local,class=CODE,delta=2
global __ptext3140
__ptext3140:

;; *************** function _setDimmerLights_Switch *****************
;; Defined at:
;;		line 450 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_Sw_OnFunc
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text3140
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	450
	global	__size_of_setDimmerLights_Switch
	__size_of_setDimmerLights_Switch	equ	__end_of_setDimmerLights_Switch-_setDimmerLights_Switch
	
_setDimmerLights_Switch:	
	opt	stack 8
; Regs used in _setDimmerLights_Switch: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Switch@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Switch@lights)
	line	451
	
l23870:	
;Dimmer_B1.c: 451: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Switch@lights),w
	fcall	_DimmerLightsPointSelect
	line	452
	
l23872:	
;Dimmer_B1.c: 452: DimmerLights->Switch=command;
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
	line	453
	
l4871:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Switch
	__end_of_setDimmerLights_Switch:
;; =============== function _setDimmerLights_Switch ends ============

	signat	_setDimmerLights_Switch,8312
	global	_setDimmerLights_Trigger
psect	text3141,local,class=CODE,delta=2
global __ptext3141
__ptext3141:

;; *************** function _setDimmerLights_Trigger *****************
;; Defined at:
;;		line 460 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_Sw_OnFunc
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text3141
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	460
	global	__size_of_setDimmerLights_Trigger
	__size_of_setDimmerLights_Trigger	equ	__end_of_setDimmerLights_Trigger-_setDimmerLights_Trigger
	
_setDimmerLights_Trigger:	
	opt	stack 8
; Regs used in _setDimmerLights_Trigger: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Trigger@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Trigger@lights)
	line	461
	
l23866:	
;Dimmer_B1.c: 461: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Trigger@lights),w
	fcall	_DimmerLightsPointSelect
	line	462
	
l23868:	
;Dimmer_B1.c: 462: DimmerLights->Trigger=command;
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
	line	463
	
l4877:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Trigger
	__end_of_setDimmerLights_Trigger:
;; =============== function _setDimmerLights_Trigger ends ============

	signat	_setDimmerLights_Trigger,8312
	global	_setRFSW_Status
psect	text3142,local,class=CODE,delta=2
global __ptext3142
__ptext3142:

;; *************** function _setRFSW_Status *****************
;; Defined at:
;;		line 412 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;		_Sw_OnFunc
;;		_Sw_AdjFunc
;; This function uses a non-reentrant model
;;
psect	text3142
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	412
	global	__size_of_setRFSW_Status
	__size_of_setRFSW_Status	equ	__end_of_setRFSW_Status-_setRFSW_Status
	
_setRFSW_Status:	
	opt	stack 8
; Regs used in _setRFSW_Status: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Status@sw)
	line	413
	
l23862:	
;RF_Control_B1.c: 413: RfSWPointSelect(sw);
	movf	(setRFSW_Status@sw),w
	fcall	_RfSWPointSelect
	line	414
	
l23864:	
;RF_Control_B1.c: 414: RFSW->Status=command;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRFSW_Status@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	415
	
l13423:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Status
	__end_of_setRFSW_Status:
;; =============== function _setRFSW_Status ends ============

	signat	_setRFSW_Status,8312
	global	_setSw_Status
psect	text3143,local,class=CODE,delta=2
global __ptext3143
__ptext3143:

;; *************** function _setSw_Status *****************
;; Defined at:
;;		line 87 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text3143
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	87
	global	__size_of_setSw_Status
	__size_of_setSw_Status	equ	__end_of_setSw_Status-_setSw_Status
	
_setSw_Status:	
	opt	stack 8
; Regs used in _setSw_Status: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Status@sw)
	line	88
	
l23858:	
;Switch_B1.c: 88: SwPointSelect(sw);
	movf	(setSw_Status@sw),w
	fcall	_SwPointSelect
	line	89
	
l23860:	
;Switch_B1.c: 89: Sw->Status=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Status@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	90
	
l14611:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Status
	__end_of_setSw_Status:
;; =============== function _setSw_Status ends ============

	signat	_setSw_Status,8312
	global	_DlyOff_Initialization
psect	text3144,local,class=CODE,delta=2
global __ptext3144
__ptext3144:

;; *************** function _DlyOff_Initialization *****************
;; Defined at:
;;		line 57 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    1[BANK0 ] unsigned char 
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
psect	text3144
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	57
	global	__size_of_DlyOff_Initialization
	__size_of_DlyOff_Initialization	equ	__end_of_DlyOff_Initialization-_DlyOff_Initialization
	
_DlyOff_Initialization:	
	opt	stack 9
; Regs used in _DlyOff_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;DlyOff_Initialization@sw stored from wreg
	movlb 0	; select bank0
	movwf	(DlyOff_Initialization@sw)
	line	58
	
l23854:	
;DelayOff_B1.c: 58: DelayOffPointSelect(sw);
	movf	(DlyOff_Initialization@sw),w
	fcall	_DelayOffPointSelect
	line	59
	
l23856:	
;DelayOff_B1.c: 59: DelayOff->Enable=1;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	movf	(_DelayOff+1)^080h,w
	movwf	fsr1h

	bsf	indf1,0
	line	60
	
l3562:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Initialization
	__end_of_DlyOff_Initialization:
;; =============== function _DlyOff_Initialization ends ============

	signat	_DlyOff_Initialization,4216
	global	_CC2500_WriteREG
psect	text3145,local,class=CODE,delta=2
global __ptext3145
__ptext3145:

;; *************** function _CC2500_WriteREG *****************
;; Defined at:
;;		line 228 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3145
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
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
	
l23842:	
;CC2500_B1.c: 229: RC4=0;
	bcf	(116/8),(116)&7
	line	230
	
l23844:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	231
;CC2500_B1.c: 231: while(RC2==1);
	goto	l2382
	
l2383:	
	
l2382:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u7591
	goto	u7590
u7591:
	goto	l2382
u7590:
	goto	l23846
	
l2384:	
	line	232
	
l23846:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l23848:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	234
	
l23850:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l23852:	
;CC2500_B1.c: 235: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	236
	
l2385:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteREG
	__end_of_CC2500_WriteREG:
;; =============== function _CC2500_WriteREG ends ============

	signat	_CC2500_WriteREG,8312
	global	_CC2500_PowerRST
psect	text3146,local,class=CODE,delta=2
global __ptext3146
__ptext3146:

;; *************** function _CC2500_PowerRST *****************
;; Defined at:
;;		line 111 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3146
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	111
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l23828:	
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
	
l23830:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	116
	
l23832:	
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
	
l23834:	
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
	
l23836:	
;CC2500_B1.c: 120: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	121
	
l23838:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	122
;CC2500_B1.c: 122: while(RC2==1);
	goto	l2337
	
l2338:	
	
l2337:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u7571
	goto	u7570
u7571:
	goto	l2337
u7570:
	goto	l23840
	
l2339:	
	line	123
	
l23840:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RC2==1);
	goto	l2340
	
l2341:	
	
l2340:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u7581
	goto	u7580
u7581:
	goto	l2340
u7580:
	
l2342:	
	line	125
;CC2500_B1.c: 125: RC0=0;
	bcf	(112/8),(112)&7
	line	126
;CC2500_B1.c: 126: RC4=1;
	bsf	(116/8),(116)&7
	line	127
	
l2343:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerRST
	__end_of_CC2500_PowerRST:
;; =============== function _CC2500_PowerRST ends ============

	signat	_CC2500_PowerRST,88
	global	_setRF_RxStatus
psect	text3147,local,class=CODE,delta=2
global __ptext3147
__ptext3147:

;; *************** function _setRF_RxStatus *****************
;; Defined at:
;;		line 44 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3147
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
l23824:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l23826:	
;RF_Control_B1.c: 46: RF->RxStatus=command;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_RxStatus@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	47
	
l13328:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_RxStatus
	__end_of_setRF_RxStatus:
;; =============== function _setRF_RxStatus ends ============

	signat	_setRF_RxStatus,8312
	global	_CC2500_ReadStatus
psect	text3148,local,class=CODE,delta=2
global __ptext3148
__ptext3148:

;; *************** function _CC2500_ReadStatus *****************
;; Defined at:
;;		line 268 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3148
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
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
	
l23814:	
;CC2500_B1.c: 269: RC4=0;
	bcf	(116/8),(116)&7
	line	270
	
l23816:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	272
;CC2500_B1.c: 272: while(RC2==1);
	goto	l2400
	
l2401:	
	
l2400:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u7561
	goto	u7560
u7561:
	goto	l2400
u7560:
	goto	l23818
	
l2402:	
	line	274
	
l23818:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l23820:	
;CC2500_B1.c: 276: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	278
	
l23822:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_s_data)^080h
	line	279
	
l2403:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadStatus
	__end_of_CC2500_ReadStatus:
;; =============== function _CC2500_ReadStatus ends ============

	signat	_CC2500_ReadStatus,4216
	global	_CC2500_WriteCommand
psect	text3149,local,class=CODE,delta=2
global __ptext3149
__ptext3149:

;; *************** function _CC2500_WriteCommand *****************
;; Defined at:
;;		line 254 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
;;		_setRF_Enable
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text3149
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
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
	
l23806:	
;CC2500_B1.c: 255: RC4=0;
	bcf	(116/8),(116)&7
	line	256
	
l23808:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	258
;CC2500_B1.c: 258: while(RC2==1);
	goto	l2394
	
l2395:	
	
l2394:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u7551
	goto	u7550
u7551:
	goto	l2394
u7550:
	goto	l23810
	
l2396:	
	line	260
	
l23810:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l23812:	
;CC2500_B1.c: 261: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	263
	
l2397:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteCommand
	__end_of_CC2500_WriteCommand:
;; =============== function _CC2500_WriteCommand ends ============

	signat	_CC2500_WriteCommand,4216
	global	_setBuz
psect	text3150,local,class=CODE,delta=2
global __ptext3150
__ptext3150:

;; *************** function _setBuz *****************
;; Defined at:
;;		line 45 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;;  count           1    9[BANK0 ] unsigned char 
;;  time            2   10[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  buz             1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BuzPointSelect
;;		___awdiv
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Main
;;		_DimmerLights_ERROR
;;		_MainT
;;		_setLog_Code
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setSw_Main
;;		_Sw_OnFunc
;; This function uses a non-reentrant model
;;
psect	text3150
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	45
	global	__size_of_setBuz
	__size_of_setBuz	equ	__end_of_setBuz-_setBuz
	
_setBuz:	
	opt	stack 8
; Regs used in _setBuz: [wreg+fsr1l-status,0+pclath+cstack]
;setBuz@buz stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz@buz)
	line	46
	
l23786:	
;Buzzer_B1.c: 46: BuzPointSelect(buz);
	movf	(setBuz@buz),w
	fcall	_BuzPointSelect
	line	47
;Buzzer_B1.c: 47: time/=10;
	movlw	low(0Ah)
	movlb 0	; select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(setBuz@time+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(setBuz@time),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movlb 0	; select bank0
	movf	(1+(?___awdiv)),w
	clrf	(setBuz@time+1)
	addwf	(setBuz@time+1)
	movf	(0+(?___awdiv)),w
	clrf	(setBuz@time)
	addwf	(setBuz@time)

	line	48
	
l23788:	
;Buzzer_B1.c: 48: if(Buz->Enable)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u7501
	goto	u7500
u7501:
	goto	l1144
u7500:
	line	50
	
l23790:	
;Buzzer_B1.c: 49: {
;Buzzer_B1.c: 50: if(!Buz->GO)
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u7511
	goto	u7510
u7511:
	goto	l23798
u7510:
	line	52
	
l23792:	
;Buzzer_B1.c: 51: {
;Buzzer_B1.c: 52: Buz->GO=1;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	53
;Buzzer_B1.c: 53: Buz->Count=count;
	movlb 0	; select bank0
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	54
;Buzzer_B1.c: 54: Buz->TimeValue=time;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	56
	
l23794:	
;Buzzer_B1.c: 56: if(buz == 1)
	movf	(setBuz@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u7521
	goto	u7520
u7521:
	goto	l1144
u7520:
	line	58
	
l23796:	
;Buzzer_B1.c: 57: {
;Buzzer_B1.c: 58: RB3=1;
	bsf	(107/8),(107)&7
	goto	l1144
	line	59
	
l1139:	
	line	61
;Buzzer_B1.c: 59: }
;Buzzer_B1.c: 61: }
	goto	l1144
	line	62
	
l1138:	
	line	64
	
l23798:	
;Buzzer_B1.c: 62: else
;Buzzer_B1.c: 63: {
;Buzzer_B1.c: 64: if(!Buz->BufferStatus1)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u7531
	goto	u7530
u7531:
	goto	l23802
u7530:
	line	66
	
l23800:	
;Buzzer_B1.c: 65: {
;Buzzer_B1.c: 66: Buz->BufferStatus1=1;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	67
;Buzzer_B1.c: 67: Buz->CountBuffer1=count;
	movlb 0	; select bank0
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	68
;Buzzer_B1.c: 68: Buz->TimeValueBuffer1=time;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	69
;Buzzer_B1.c: 69: }
	goto	l1144
	line	70
	
l1141:	
	
l23802:	
;Buzzer_B1.c: 70: else if(!Buz->BufferStatus2)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u7541
	goto	u7540
u7541:
	goto	l1144
u7540:
	line	72
	
l23804:	
;Buzzer_B1.c: 71: {
;Buzzer_B1.c: 72: Buz->BufferStatus2=1;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	73
;Buzzer_B1.c: 73: Buz->CountBuffer2=count;
	movlb 0	; select bank0
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	74
;Buzzer_B1.c: 74: Buz->TimeValueBuffer2=time;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	goto	l1144
	line	75
	
l1143:	
	goto	l1144
	line	76
	
l1142:	
	goto	l1144
	
l1140:	
	goto	l1144
	line	77
	
l1137:	
	line	78
	
l1144:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz
	__end_of_setBuz:
;; =============== function _setBuz ends ============

	signat	_setBuz,12408
	global	_setBuz_Enable
psect	text3151,local,class=CODE,delta=2
global __ptext3151
__ptext3151:

;; *************** function _setBuz_Enable *****************
;; Defined at:
;;		line 34 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    3[BANK0 ] unsigned char 
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
;;		_BuzPointSelect
;; This function is called by:
;;		_setBuz_Initialization
;; This function uses a non-reentrant model
;;
psect	text3151
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	34
	global	__size_of_setBuz_Enable
	__size_of_setBuz_Enable	equ	__end_of_setBuz_Enable-_setBuz_Enable
	
_setBuz_Enable:	
	opt	stack 8
; Regs used in _setBuz_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setBuz_Enable@buz stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz_Enable@buz)
	line	35
	
l23782:	
;Buzzer_B1.c: 35: BuzPointSelect(buz);
	movf	(setBuz_Enable@buz),w
	fcall	_BuzPointSelect
	line	36
	
l23784:	
;Buzzer_B1.c: 36: Buz->Enable=command;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	37
	
l1131:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Enable
	__end_of_setBuz_Enable:
;; =============== function _setBuz_Enable ends ============

	signat	_setBuz_Enable,8312
	global	_setBuz_Main
psect	text3152,local,class=CODE,delta=2
global __ptext3152
__ptext3152:

;; *************** function _setBuz_Main *****************
;; Defined at:
;;		line 81 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    6[BANK0 ] unsigned char 
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
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BuzPointSelect
;; This function is called by:
;;		_Buzzer_Main
;; This function uses a non-reentrant model
;;
psect	text3152
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	81
	global	__size_of_setBuz_Main
	__size_of_setBuz_Main	equ	__end_of_setBuz_Main-_setBuz_Main
	
_setBuz_Main:	
	opt	stack 9
; Regs used in _setBuz_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setBuz_Main@buz stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz_Main@buz)
	line	82
	
l23744:	
;Buzzer_B1.c: 82: BuzPointSelect(buz);
	movf	(setBuz_Main@buz),w
	fcall	_BuzPointSelect
	line	84
	
l23746:	
;Buzzer_B1.c: 84: if(buz == 1)
	movlb 0	; select bank0
	movf	(setBuz_Main@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u7421
	goto	u7420
u7421:
	goto	l23750
u7420:
	line	86
	
l23748:	
;Buzzer_B1.c: 85: {
;Buzzer_B1.c: 86: Buz->Switch=(RB3)?1:0;
	movlw	0
	btfsc	(107/8),(107)&7
	movlw	1
	movwf	(??_setBuz_Main+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	swapf	(??_setBuz_Main+0)+0,f
	rlf	(??_setBuz_Main+0)+0,f
	movf	indf1,w
	xorwf	(??_setBuz_Main+0)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_setBuz_Main+0)+0,w
	movwf	indf1
	goto	l23750
	line	87
	
l1147:	
	line	89
	
l23750:	
;Buzzer_B1.c: 87: }
;Buzzer_B1.c: 89: if(Buz->GO)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7431
	goto	u7430
u7431:
	goto	l1159
u7430:
	line	91
	
l23752:	
;Buzzer_B1.c: 90: {
;Buzzer_B1.c: 91: Buz->Time++;
	movf	(_Buz)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	92
	
l23754:	
;Buzzer_B1.c: 92: if(Buz->Time >= Buz->TimeValue)
	movf	(_Buz)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+0)+0+1
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+2)+0+1
	movf	1+(??_setBuz_Main+0)+0,w
	subwf	1+(??_setBuz_Main+2)+0,w
	skipz
	goto	u7445
	movf	0+(??_setBuz_Main+0)+0,w
	subwf	0+(??_setBuz_Main+2)+0,w
u7445:
	skipc
	goto	u7441
	goto	u7440
u7441:
	goto	l1159
u7440:
	line	94
	
l23756:	
;Buzzer_B1.c: 93: {
;Buzzer_B1.c: 94: Buz->Time=0;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	95
;Buzzer_B1.c: 95: if(!Buz->Switch)
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u7451
	goto	u7450
u7451:
	goto	l23774
u7450:
	line	97
	
l23758:	
;Buzzer_B1.c: 96: {
;Buzzer_B1.c: 97: if(Buz->Count == 0)
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u7461
	goto	u7460
u7461:
	goto	l23770
u7460:
	line	99
	
l23760:	
;Buzzer_B1.c: 98: {
;Buzzer_B1.c: 99: if(Buz->BufferStatus1)
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u7471
	goto	u7470
u7471:
	goto	l23764
u7470:
	line	101
	
l23762:	
;Buzzer_B1.c: 100: {
;Buzzer_B1.c: 101: Buz->BufferStatus1=0;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	102
;Buzzer_B1.c: 102: Buz->Count=Buz->CountBuffer1;
	movf	(_Buz)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz_Main+0)+0,w
	movwf	indf1
	line	103
;Buzzer_B1.c: 103: Buz->TimeValue=Buz->TimeValueBuffer1;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+0)+0+1
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	0+(??_setBuz_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_setBuz_Main+0)+0,w
	movwi	[1]fsr1
	line	104
;Buzzer_B1.c: 104: }
	goto	l1159
	line	105
	
l1152:	
	
l23764:	
;Buzzer_B1.c: 105: else if(Buz->BufferStatus2)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u7481
	goto	u7480
u7481:
	goto	l23768
u7480:
	line	107
	
l23766:	
;Buzzer_B1.c: 106: {
;Buzzer_B1.c: 107: Buz->BufferStatus2=0;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	108
;Buzzer_B1.c: 108: Buz->Count=Buz->CountBuffer2;
	movf	(_Buz)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz_Main+0)+0,w
	movwf	indf1
	line	109
;Buzzer_B1.c: 109: Buz->TimeValue=Buz->TimeValueBuffer2;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+0)+0+1
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	0+(??_setBuz_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_setBuz_Main+0)+0,w
	movwi	[1]fsr1
	line	110
;Buzzer_B1.c: 110: }
	goto	l1159
	line	111
	
l1154:	
	line	113
	
l23768:	
;Buzzer_B1.c: 111: else
;Buzzer_B1.c: 112: {
;Buzzer_B1.c: 113: Buz->GO=0;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1159
	line	114
	
l1155:	
	goto	l1159
	
l1153:	
	line	115
;Buzzer_B1.c: 114: }
;Buzzer_B1.c: 115: }
	goto	l1159
	line	116
	
l1151:	
	line	118
	
l23770:	
;Buzzer_B1.c: 116: else
;Buzzer_B1.c: 117: {
;Buzzer_B1.c: 118: Buz->Switch=1;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	120
	
l23772:	
;Buzzer_B1.c: 120: RB3=1;
	movlb 0	; select bank0
	bsf	(107/8),(107)&7
	goto	l1159
	line	122
	
l1156:	
	line	123
;Buzzer_B1.c: 122: }
;Buzzer_B1.c: 123: }
	goto	l1159
	line	124
	
l1150:	
	line	126
	
l23774:	
;Buzzer_B1.c: 124: else
;Buzzer_B1.c: 125: {
;Buzzer_B1.c: 126: Buz->Switch=0;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	128
	
l23776:	
;Buzzer_B1.c: 128: if(buz == 1)
	movlb 0	; select bank0
	movf	(setBuz_Main@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u7491
	goto	u7490
u7491:
	goto	l23780
u7490:
	line	130
	
l23778:	
;Buzzer_B1.c: 129: {
;Buzzer_B1.c: 130: RB3=0;
	bcf	(107/8),(107)&7
	goto	l23780
	line	131
	
l1158:	
	line	133
	
l23780:	
;Buzzer_B1.c: 131: }
;Buzzer_B1.c: 133: Buz->Count--;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l1159
	line	134
	
l1157:	
	goto	l1159
	line	135
	
l1149:	
	goto	l1159
	line	136
	
l1148:	
	line	137
	
l1159:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Main
	__end_of_setBuz_Main:
;; =============== function _setBuz_Main ends ============

	signat	_setBuz_Main,4216
	global	___awdiv
psect	text3153,local,class=CODE,delta=2
global __ptext3153
__ptext3153:

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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setBuz
;; This function uses a non-reentrant model
;;
psect	text3153
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 8
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l23634:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u7211
	goto	u7210
u7211:
	goto	l23638
u7210:
	line	11
	
l23636:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l23638
	line	13
	
l19264:	
	line	14
	
l23638:	
	btfss	(___awdiv@dividend+1),7
	goto	u7221
	goto	u7220
u7221:
	goto	l23644
u7220:
	line	15
	
l23640:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l23642:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l23644
	line	17
	
l19265:	
	line	18
	
l23644:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l23646:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u7231
	goto	u7230
u7231:
	goto	l23666
u7230:
	line	20
	
l23648:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l23654
	
l19268:	
	line	22
	
l23650:	
	movlw	01h
	
u7245:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u7245
	line	23
	
l23652:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l23654
	line	24
	
l19267:	
	line	21
	
l23654:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u7251
	goto	u7250
u7251:
	goto	l23650
u7250:
	goto	l23656
	
l19269:	
	goto	l23656
	line	25
	
l19270:	
	line	26
	
l23656:	
	movlw	01h
	
u7265:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u7265
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u7275
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u7275:
	skipc
	goto	u7271
	goto	u7270
u7271:
	goto	l23662
u7270:
	line	28
	
l23658:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	29
	
l23660:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l23662
	line	30
	
l19271:	
	line	31
	
l23662:	
	movlw	01h
	
u7285:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u7285
	line	32
	
l23664:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u7291
	goto	u7290
u7291:
	goto	l23656
u7290:
	goto	l23666
	
l19272:	
	goto	l23666
	line	33
	
l19266:	
	line	34
	
l23666:	
	movf	(___awdiv@sign),w
	skipz
	goto	u7300
	goto	l23670
u7300:
	line	35
	
l23668:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l23670
	
l19273:	
	line	36
	
l23670:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l19274
	
l23672:	
	line	37
	
l19274:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text3154,local,class=CODE,delta=2
global __ptext3154
__ptext3154:

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
psect	text3154
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l23574:	
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
	goto	u7101
	goto	u7100
u7101:
	goto	l23580
u7100:
	line	50
	
l23576:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l19234
	
l23578:	
	goto	l19234
	
l19233:	
	line	51
	
l23580:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u7115:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u7110:
	decfsz	wreg,f
	goto	u7115
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l23582:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l23584:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l23586:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l23588:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l23590:	
	btfss	(___fttol@exp1),7
	goto	u7121
	goto	u7120
u7121:
	goto	l23600
u7120:
	line	57
	
l23592:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u7131
	goto	u7130
u7131:
	goto	l23598
u7130:
	line	58
	
l23594:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l19234
	
l23596:	
	goto	l19234
	
l19236:	
	goto	l23598
	line	59
	
l19237:	
	line	60
	
l23598:	
	movlw	01h
u7145:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u7145

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u7151
	goto	u7150
u7151:
	goto	l23598
u7150:
	goto	l23610
	
l19238:	
	line	62
	goto	l23610
	
l19235:	
	line	63
	
l23600:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u7161
	goto	u7160
u7161:
	goto	l23608
u7160:
	line	64
	
l23602:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l19234
	
l23604:	
	goto	l19234
	
l19240:	
	line	65
	goto	l23608
	
l19242:	
	line	66
	
l23606:	
	movlw	01h
u7175:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u7175
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l23608
	line	68
	
l19241:	
	line	65
	
l23608:	
	movf	(___fttol@exp1),f
	skipz
	goto	u7181
	goto	u7180
u7181:
	goto	l23606
u7180:
	goto	l23610
	
l19243:	
	goto	l23610
	line	69
	
l19239:	
	line	70
	
l23610:	
	movf	(___fttol@sign1),w
	skipz
	goto	u7190
	goto	l23614
u7190:
	line	71
	
l23612:	
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
	goto	l23614
	
l19244:	
	line	72
	
l23614:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l19234
	
l23616:	
	line	73
	
l19234:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text3155,local,class=CODE,delta=2
global __ptext3155
__ptext3155:

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
psect	text3155
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l23538:	
	movlb 0	; select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u6990
	goto	l23542
u6990:
	
l23540:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u7001
	goto	u7000
u7001:
	goto	l23548
u7000:
	goto	l23542
	
l19458:	
	line	65
	
l23542:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l19459
	
l23544:	
	goto	l19459
	
l19456:	
	line	66
	goto	l23548
	
l19461:	
	line	67
	
l23546:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u7015:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u7015

	goto	l23548
	line	69
	
l19460:	
	line	66
	
l23548:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u7021
	goto	u7020
u7021:
	goto	l23546
u7020:
	goto	l19463
	
l19462:	
	line	70
	goto	l19463
	
l19464:	
	line	71
	
l23550:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l23552:	
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
	
l23554:	
	movlw	01h
u7035:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u7035

	line	74
	
l19463:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u7041
	goto	u7040
u7041:
	goto	l23550
u7040:
	goto	l23558
	
l19465:	
	line	75
	goto	l23558
	
l19467:	
	line	76
	
l23556:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u7055:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u7055
	goto	l23558
	line	78
	
l19466:	
	line	75
	
l23558:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u7061
	goto	u7060
u7061:
	goto	l23556
u7060:
	
l19468:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u7071
	goto	u7070
u7071:
	goto	l19469
u7070:
	line	80
	
l23560:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l19469:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l23562:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u7085:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u7080:
	decfsz	wreg,f
	goto	u7085
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l23564:	
	movf	(___ftpack@sign),w
	skipz
	goto	u7090
	goto	l19470
u7090:
	line	84
	
l23566:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l19470:	
	line	85
	line	86
	
l19459:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwdiv
psect	text3156,local,class=CODE,delta=2
global __ptext3156
__ptext3156:

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
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text3156
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 9
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l23512:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l23514:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u6921
	goto	u6920
u6921:
	goto	l23534
u6920:
	line	11
	
l23516:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l23522
	
l19132:	
	line	13
	
l23518:	
	movlw	01h
	
u6935:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u6935
	line	14
	
l23520:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l23522
	line	15
	
l19131:	
	line	12
	
l23522:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u6941
	goto	u6940
u6941:
	goto	l23518
u6940:
	goto	l23524
	
l19133:	
	goto	l23524
	line	16
	
l19134:	
	line	17
	
l23524:	
	movlw	01h
	
u6955:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u6955
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u6965
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u6965:
	skipc
	goto	u6961
	goto	u6960
u6961:
	goto	l23530
u6960:
	line	19
	
l23526:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l23528:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l23530
	line	21
	
l19135:	
	line	22
	
l23530:	
	movlw	01h
	
u6975:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u6975
	line	23
	
l23532:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u6981
	goto	u6980
u6981:
	goto	l23524
u6980:
	goto	l23534
	
l19136:	
	goto	l23534
	line	24
	
l19130:	
	line	25
	
l23534:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l19137
	
l23536:	
	line	26
	
l19137:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text3157,local,class=CODE,delta=2
global __ptext3157
__ptext3157:

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
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text3157
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 9
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l23500:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l23502
	line	6
	
l19124:	
	line	7
	
l23502:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u6881
	goto	u6880
u6881:
	goto	l19125
u6880:
	line	8
	
l23504:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l19125:	
	line	9
	movlw	01h
	
u6895:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u6895
	line	10
	
l23506:	
	movlw	01h
	
u6905:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u6905
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l23502
u6910:
	goto	l23508
	
l19126:	
	line	12
	
l23508:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l19127
	
l23510:	
	line	13
	
l19127:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_SwPointSelect
psect	text3158,local,class=CODE,delta=2
global __ptext3158
__ptext3158:

;; *************** function _SwPointSelect *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text3158
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
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
	
l23464:	
;Switch_B1.c: 19: if(sw == 1)
	movf	(SwPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u6791
	goto	u6790
u6791:
	goto	l23468
u6790:
	line	21
	
l23466:	
;Switch_B1.c: 20: {
;Switch_B1.c: 21: Sw=&Sw1;
	movlw	(_Sw1)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	line	22
;Switch_B1.c: 22: }
	goto	l14596
	line	25
	
l14591:	
	
l23468:	
;Switch_B1.c: 25: else if(sw == 2)
	movf	(SwPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u6801
	goto	u6800
u6801:
	goto	l23472
u6800:
	line	27
	
l23470:	
;Switch_B1.c: 26: {
;Switch_B1.c: 27: Sw=&Sw2;
	movlw	(_Sw2)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	line	28
;Switch_B1.c: 28: }
	goto	l14596
	line	31
	
l14593:	
	
l23472:	
;Switch_B1.c: 31: else if(sw == 3)
	movf	(SwPointSelect@sw),w
	xorlw	03h&0ffh
	skipz
	goto	u6811
	goto	u6810
u6811:
	goto	l14596
u6810:
	line	33
	
l23474:	
;Switch_B1.c: 32: {
;Switch_B1.c: 33: Sw=&Sw3;
	movlw	(_Sw3)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	goto	l14596
	line	34
	
l14595:	
	goto	l14596
	line	36
	
l14594:	
	goto	l14596
	
l14592:	
	
l14596:	
	return
	opt stack 0
GLOBAL	__end_of_SwPointSelect
	__end_of_SwPointSelect:
;; =============== function _SwPointSelect ends ============

	signat	_SwPointSelect,4216
	global	_TouchPower
psect	text3159,local,class=CODE,delta=2
global __ptext3159
__ptext3159:

;; *************** function _TouchPower *****************
;; Defined at:
;;		line 10 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text3159
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	10
	global	__size_of_TouchPower
	__size_of_TouchPower	equ	__end_of_TouchPower-_TouchPower
	
_TouchPower:	
	opt	stack 10
; Regs used in _TouchPower: []
	line	11
	
l23462:	
;Switch_B1.c: 11: while(RC5 == 0)
	goto	l14585
	
l14586:	
	line	12
;Switch_B1.c: 12: RC5=1;
	bsf	(117/8),(117)&7
	
l14585:	
	line	11
	movlb 0	; select bank0
	btfss	(117/8),(117)&7
	goto	u6781
	goto	u6780
u6781:
	goto	l14586
u6780:
	goto	l14588
	
l14587:	
	line	13
	
l14588:	
	return
	opt stack 0
GLOBAL	__end_of_TouchPower
	__end_of_TouchPower:
;; =============== function _TouchPower ends ============

	signat	_TouchPower,88
	global	_RfSWPointSelect
psect	text3160,local,class=CODE,delta=2
global __ptext3160
__ptext3160:

;; *************** function _RfSWPointSelect *****************
;; Defined at:
;;		line 335 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3160
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	335
	global	__size_of_RfSWPointSelect
	__size_of_RfSWPointSelect	equ	__end_of_RfSWPointSelect-_RfSWPointSelect
	
_RfSWPointSelect:	
	opt	stack 8
; Regs used in _RfSWPointSelect: [wreg]
;RfSWPointSelect@sw stored from wreg
	line	337
	movlb 0	; select bank0
	movwf	(RfSWPointSelect@sw)
	
l23454:	
;RF_Control_B1.c: 337: if(sw == 1)
	movf	(RfSWPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u6751
	goto	u6750
u6751:
	goto	l13404
u6750:
	line	339
	
l23456:	
;RF_Control_B1.c: 338: {
;RF_Control_B1.c: 339: RFSW=&RFSW1;
	movlw	(_RFSW1)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	line	340
	
l13404:	
	line	343
;RF_Control_B1.c: 340: }
;RF_Control_B1.c: 343: if(sw == 2)
	movlb 0	; select bank0
	movf	(RfSWPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u6761
	goto	u6760
u6761:
	goto	l13405
u6760:
	line	345
	
l23458:	
;RF_Control_B1.c: 344: {
;RF_Control_B1.c: 345: RFSW=&RFSW2;
	movlw	(_RFSW2)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	line	346
	
l13405:	
	line	349
;RF_Control_B1.c: 346: }
;RF_Control_B1.c: 349: if(sw == 3)
	movlb 0	; select bank0
	movf	(RfSWPointSelect@sw),w
	xorlw	03h&0ffh
	skipz
	goto	u6771
	goto	u6770
u6771:
	goto	l13407
u6770:
	line	351
	
l23460:	
;RF_Control_B1.c: 350: {
;RF_Control_B1.c: 351: RFSW=&RFSW3;
	movlw	(_RFSW3)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	goto	l13407
	line	352
	
l13406:	
	line	354
	
l13407:	
	return
	opt stack 0
GLOBAL	__end_of_RfSWPointSelect
	__end_of_RfSWPointSelect:
;; =============== function _RfSWPointSelect ends ============

	signat	_RfSWPointSelect,4216
	global	_setRF_Initialization
psect	text3161,local,class=CODE,delta=2
global __ptext3161
__ptext3161:

;; *************** function _setRF_Initialization *****************
;; Defined at:
;;		line 51 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3161
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	51
	global	__size_of_setRF_Initialization
	__size_of_setRF_Initialization	equ	__end_of_setRF_Initialization-_setRF_Initialization
	
_setRF_Initialization:	
	opt	stack 10
; Regs used in _setRF_Initialization: [wreg]
	line	54
	
l23452:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Tx_Length)^080h
	line	56
	
l13331:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Initialization
	__end_of_setRF_Initialization:
;; =============== function _setRF_Initialization ends ============

	signat	_setRF_Initialization,4216
	global	_RfPointSelect
psect	text3162,local,class=CODE,delta=2
global __ptext3162
__ptext3162:

;; *************** function _RfPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3162
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
l23448:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u6741
	goto	u6740
u6741:
	goto	l13313
u6740:
	line	12
	
l23450:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF)^080h
	goto	l13313
	line	13
	
l13312:	
	line	15
	
l13313:	
	return
	opt stack 0
GLOBAL	__end_of_RfPointSelect
	__end_of_RfPointSelect:
;; =============== function _RfPointSelect ends ============

	signat	_RfPointSelect,4216
	global	_TempPointSelect
psect	text3163,local,class=CODE,delta=2
global __ptext3163
__ptext3163:

;; *************** function _TempPointSelect *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    0[COMMON] unsigned char 
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
;;		_setTemp_Enable
;;		_getTemp_Safe
;;		_getTemp_AD
;;		_setTemp_Initialization
;;		_setTemp_Main
;;		_setOverTemp_ERROR
;;		_getTemp_ERROR
;; This function uses a non-reentrant model
;;
psect	text3163
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	9
	global	__size_of_TempPointSelect
	__size_of_TempPointSelect	equ	__end_of_TempPointSelect-_TempPointSelect
	
_TempPointSelect:	
	opt	stack 8
; Regs used in _TempPointSelect: [wreg]
	line	11
	
l23440:	
;OverTemperature_B1.c: 11: Temp=&Temp1;
	movlw	(_Temp1)&0ffh
	movlb 0	; select bank0
	movwf	(??_TempPointSelect+0)+0
	movf	(??_TempPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_Temp)^080h
	line	13
	
l10985:	
	return
	opt stack 0
GLOBAL	__end_of_TempPointSelect
	__end_of_TempPointSelect:
;; =============== function _TempPointSelect ends ============

	signat	_TempPointSelect,4216
	global	_setLoad_AH_AL_Restore
psect	text3164,local,class=CODE,delta=2
global __ptext3164
__ptext3164:

;; *************** function _setLoad_AH_AL_Restore *****************
;; Defined at:
;;		line 376 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    0[COMMON] unsigned char 
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
;;		_setLoad_Initialization
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text3164
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	376
	global	__size_of_setLoad_AH_AL_Restore
	__size_of_setLoad_AH_AL_Restore	equ	__end_of_setLoad_AH_AL_Restore-_setLoad_AH_AL_Restore
	
_setLoad_AH_AL_Restore:	
	opt	stack 9
; Regs used in _setLoad_AH_AL_Restore: [wreg+fsr1l-status,0]
	line	379
	
l23410:	
;OverLoad_B1.c: 378: char i;
;OverLoad_B1.c: 379: for(i=0 ; i<5 ;i++)
	movlb 0	; select bank0
	clrf	(setLoad_AH_AL_Restore@i)
	
l23412:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u6701
	goto	u6700
u6701:
	goto	l23416
u6700:
	goto	l9848
	
l23414:	
	goto	l9848
	line	380
	
l9846:	
	line	381
	
l23416:	
;OverLoad_B1.c: 380: {
;OverLoad_B1.c: 381: Load->AH[i]=0;
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
	line	382
;OverLoad_B1.c: 382: Load->AL[i]=0xffff;
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
	line	379
	
l23418:	
	movlw	(01h)
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	(??_setLoad_AH_AL_Restore+0)+0,w
	addwf	(setLoad_AH_AL_Restore@i),f
	
l23420:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u6711
	goto	u6710
u6711:
	goto	l23416
u6710:
	goto	l9848
	
l9847:	
	line	384
	
l9848:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_AH_AL_Restore
	__end_of_setLoad_AH_AL_Restore:
;; =============== function _setLoad_AH_AL_Restore ends ============

	signat	_setLoad_AH_AL_Restore,4216
	global	_LoadPointSelect
psect	text3165,local,class=CODE,delta=2
global __ptext3165
__ptext3165:

;; *************** function _LoadPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    1[BANK0 ] unsigned char 
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
;;		_setLoad_Initialization
;;		_getLoad_AD
;;		_setLoad_Main
;;		_setLoad_ERROR
;;		_setLoad_LightsStatus
;;		_setLoad_Enable
;;		_setLoad_GO
;;		_setLoad_StatusOn
;;		_setLoad_StatusOff
;;		_getLoad_Safe
;;		_setLoad_LightsCount
;;		_getLoad_ERROR
;; This function uses a non-reentrant model
;;
psect	text3165
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	8
	global	__size_of_LoadPointSelect
	__size_of_LoadPointSelect	equ	__end_of_LoadPointSelect-_LoadPointSelect
	
_LoadPointSelect:	
	opt	stack 5
; Regs used in _LoadPointSelect: [wreg]
;LoadPointSelect@load stored from wreg
	line	10
	movlb 0	; select bank0
	movwf	(LoadPointSelect@load)
	
l23406:	
;OverLoad_B1.c: 10: if(load == 1)
	movf	(LoadPointSelect@load),w
	xorlw	01h&0ffh
	skipz
	goto	u6691
	goto	u6690
u6691:
	goto	l9753
u6690:
	line	12
	
l23408:	
;OverLoad_B1.c: 11: {
;OverLoad_B1.c: 12: Load=&Load1;
	movlw	(_Load1)&0ffh
	movwf	(??_LoadPointSelect+0)+0
	movf	(??_LoadPointSelect+0)+0,w
	movwf	(_Load)
	goto	l9753
	line	13
	
l9752:	
	line	15
	
l9753:	
	return
	opt stack 0
GLOBAL	__end_of_LoadPointSelect
	__end_of_LoadPointSelect:
;; =============== function _LoadPointSelect ends ============

	signat	_LoadPointSelect,4216
	global	_Flash_Memory_Read
psect	text3166,local,class=CODE,delta=2
global __ptext3166
__ptext3166:

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 439 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3166
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	439
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
	opt	stack 9
; Regs used in _Flash_Memory_Read: [wreg]
;Flash_Memory_Read@address stored from wreg
	movlb 0	; select bank0
	movwf	(Flash_Memory_Read@address)
	line	440
	
l23396:	
;MCU_16f1518_B1.c: 440: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	441
	
l23398:	
;MCU_16f1518_B1.c: 441: PMADRH=0x30;
	movlw	(030h)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	442
;MCU_16f1518_B1.c: 442: PMADRL=address;
	movlb 0	; select bank0
	movf	(Flash_Memory_Read@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	443
	
l23400:	
;MCU_16f1518_B1.c: 443: CFGS=0;
	bcf	(3246/8)^0180h,(3246)&7
	line	444
	
l23402:	
;MCU_16f1518_B1.c: 444: RD=1;
	bsf	(3240/8)^0180h,(3240)&7
	line	445
;MCU_16f1518_B1.c: 445: i=PMDATH;
	movf	(404)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	line	446
;MCU_16f1518_B1.c: 446: ret=PMDATL;
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	447
;MCU_16f1518_B1.c: 447: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l8597
	
l23404:	
	line	448
	
l8597:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
;; =============== function _Flash_Memory_Read ends ============

	signat	_Flash_Memory_Read,4217
	global	_getAD
psect	text3167,local,class=CODE,delta=2
global __ptext3167
__ptext3167:

;; *************** function _getAD *****************
;; Defined at:
;;		line 249 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
;; This function uses a non-reentrant model
;;
psect	text3167
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	249
	global	__size_of_getAD
	__size_of_getAD	equ	__end_of_getAD-_getAD
	
_getAD:	
	opt	stack 10
; Regs used in _getAD: [wreg+status,2+status,0+btemp+1]
;getAD@adcon0 stored from wreg
	movlb 0	; select bank0
	movwf	(getAD@adcon0)
	line	250
	
l23388:	
;MCU_16f1518_B1.c: 250: ADCON0=adcon0;
	movf	(getAD@adcon0),w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	251
;MCU_16f1518_B1.c: 251: ADCON1=adcon1;
	movlb 0	; select bank0
	movf	(getAD@adcon1),w
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	252
	
l23390:	
;MCU_16f1518_B1.c: 252: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7
	line	253
;MCU_16f1518_B1.c: 253: while(GO_nDONE);
	goto	l8569
	
l8570:	
	
l8569:	
	btfsc	(1257/8)^080h,(1257)&7
	goto	u6681
	goto	u6680
u6681:
	goto	l8569
u6680:
	goto	l23392
	
l8571:	
	line	254
	
l23392:	
;MCU_16f1518_B1.c: 254: return ((ADRESH*256)+ADRESL);
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
	goto	l8572
	
l23394:	
	line	255
	
l8572:	
	return
	opt stack 0
GLOBAL	__end_of_getAD
	__end_of_getAD:
;; =============== function _getAD ends ============

	signat	_getAD,8314
	global	_setINT_GO
psect	text3168,local,class=CODE,delta=2
global __ptext3168
__ptext3168:

;; *************** function _setINT_GO *****************
;; Defined at:
;;		line 192 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text3168
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	192
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
	opt	stack 9
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	193
	
l23384:	
;MCU_16f1518_B1.c: 193: INTF=0;
	bcf	(89/8),(89)&7
	line	194
	
l23386:	
;MCU_16f1518_B1.c: 194: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u6661
	goto	u6660
	
u6661:
	bsf	(92/8),(92)&7
	goto	u6674
u6660:
	bcf	(92/8),(92)&7
u6674:
	line	195
	
l8553:	
	return
	opt stack 0
GLOBAL	__end_of_setINT_GO
	__end_of_setINT_GO:
;; =============== function _setINT_GO ends ============

	signat	_setINT_GO,4216
	global	_IOC_Set
psect	text3169,local,class=CODE,delta=2
global __ptext3169
__ptext3169:

;; *************** function _IOC_Set *****************
;; Defined at:
;;		line 203 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3169
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	203
	global	__size_of_IOC_Set
	__size_of_IOC_Set	equ	__end_of_IOC_Set-_IOC_Set
	
_IOC_Set:	
	opt	stack 10
; Regs used in _IOC_Set: [wreg+status,2]
	line	204
	
l23096:	
;MCU_16f1518_B1.c: 204: WPUB2=0;
	movlb 4	; select bank4
	bcf	(4202/8)^0200h,(4202)&7
	line	205
	
l23098:	
;MCU_16f1518_B1.c: 205: IOCBP=0b00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	206
;MCU_16f1518_B1.c: 206: IOCBN=0b00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	207
	
l23100:	
;MCU_16f1518_B1.c: 207: IOCBF=0b00000000;
	clrf	(918)^0380h	;volatile
	line	208
	
l23102:	
;MCU_16f1518_B1.c: 208: IOCIE=1;
	bsf	(91/8),(91)&7
	line	209
	
l23104:	
;MCU_16f1518_B1.c: 209: IOCIF=0;
	bcf	(88/8),(88)&7
	line	210
	
l23106:	
;MCU_16f1518_B1.c: 210: GIE=1;
	bsf	(95/8),(95)&7
	line	211
	
l8556:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_Set
	__end_of_IOC_Set:
;; =============== function _IOC_Set ends ============

	signat	_IOC_Set,88
	global	_INT_Set
psect	text3170,local,class=CODE,delta=2
global __ptext3170
__ptext3170:

;; *************** function _INT_Set *****************
;; Defined at:
;;		line 174 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3170
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	174
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
	opt	stack 10
; Regs used in _INT_Set: []
	line	175
	
l23094:	
;MCU_16f1518_B1.c: 175: WPUB0=0;
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7
	line	177
;MCU_16f1518_B1.c: 177: PEIE=1;
	bsf	(94/8),(94)&7
	line	178
;MCU_16f1518_B1.c: 178: GIE=1;
	bsf	(95/8),(95)&7
	line	179
	
l8546:	
	return
	opt stack 0
GLOBAL	__end_of_INT_Set
	__end_of_INT_Set:
;; =============== function _INT_Set ends ============

	signat	_INT_Set,88
	global	_ADC_Set
psect	text3171,local,class=CODE,delta=2
global __ptext3171
__ptext3171:

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 243 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3171
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	243
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
	opt	stack 10
; Regs used in _ADC_Set: [wreg]
	line	244
	
l23092:	
;MCU_16f1518_B1.c: 244: ADCON1=0xf2;
	movlw	(0F2h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	245
;MCU_16f1518_B1.c: 245: FVRCON=0xc0;
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	246
	
l8566:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Set
	__end_of_ADC_Set:
;; =============== function _ADC_Set ends ============

	signat	_ADC_Set,88
	global	_TMR0_Set
psect	text3172,local,class=CODE,delta=2
global __ptext3172
__ptext3172:

;; *************** function _TMR0_Set *****************
;; Defined at:
;;		line 74 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2
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
psect	text3172
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	74
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
	opt	stack 10
; Regs used in _TMR0_Set: [wreg+fsr1l-status,2]
	line	75
	
l23080:	
;MCU_16f1518_B1.c: 75: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_Timer0)^080h
	line	76
	
l23082:	
;MCU_16f1518_B1.c: 76: Timer0->DimmerCountValue=158;
	movf	(_Timer0)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(09Eh)
	movwi	[0]fsr1
	movlw	high(09Eh)
	movwi	[1]fsr1
	line	77
	
l23084:	
;MCU_16f1518_B1.c: 77: OPTION_REG=0x00;
	clrf	(149)^080h	;volatile
	line	78
	
l23086:	
;MCU_16f1518_B1.c: 78: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	79
	
l23088:	
;MCU_16f1518_B1.c: 79: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	80
	
l23090:	
;MCU_16f1518_B1.c: 80: GIE=1;
	bsf	(95/8),(95)&7
	line	81
	
l8454:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_Set
	__end_of_TMR0_Set:
;; =============== function _TMR0_Set ends ============

	signat	_TMR0_Set,88
	global	_IO_Set
psect	text3173,local,class=CODE,delta=2
global __ptext3173
__ptext3173:

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3173
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	38
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l23064:	
;MCU_16f1518_B1.c: 39: TRISA=0b01110111;;
	movlw	(077h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	40
;MCU_16f1518_B1.c: 40: TRISB=0b00000101;;
	movlw	(05h)
	movwf	(141)^080h	;volatile
	line	41
;MCU_16f1518_B1.c: 41: TRISC=0b00001100;;
	movlw	(0Ch)
	movwf	(142)^080h	;volatile
	line	42
	
l23066:	
;MCU_16f1518_B1.c: 42: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	43
	
l23068:	
;MCU_16f1518_B1.c: 43: LATB=0b00000000;;
	clrf	(269)^0100h	;volatile
	line	44
	
l23070:	
;MCU_16f1518_B1.c: 44: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	45
	
l23072:	
;MCU_16f1518_B1.c: 45: ANSELA=0b00000010;;
	movlw	(02h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
;MCU_16f1518_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
;MCU_16f1518_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l23074:	
;MCU_16f1518_B1.c: 48: PORTA=0b01110111;;
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
	
l23076:	
;MCU_16f1518_B1.c: 49: PORTB=0b00000101;;
	movlw	(05h)
	movwf	(13)	;volatile
	line	50
	
l23078:	
;MCU_16f1518_B1.c: 50: PORTC=0b00001100;;
	movlw	(0Ch)
	movwf	(14)	;volatile
	line	51
	
l8448:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
;; =============== function _IO_Set ends ============

	signat	_IO_Set,88
	global	_MainT_Initialization
psect	text3174,local,class=CODE,delta=2
global __ptext3174
__ptext3174:

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
psect	text3174
	file	"G:\Program\PIC\Source_File\main.c"
	line	89
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
	opt	stack 11
; Regs used in _MainT_Initialization: [wregfsr1]
	line	93
	
l23058:	
;main.c: 93: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Product)^080h
	line	96
;main.c: 96: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_TMain)^080h
	line	97
	
l23060:	
;main.c: 97: TMain->FirstOpen=1;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	98
	
l23062:	
;main.c: 98: TMain->First=1;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	99
	
l7292:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initialization
	__end_of_MainT_Initialization:
;; =============== function _MainT_Initialization ends ============

	signat	_MainT_Initialization,88
	global	_LedPointSelect
psect	text3175,local,class=CODE,delta=2
global __ptext3175
__ptext3175:

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
psect	text3175
	file	"G:\Program\PIC\Source_File\LED_B1.c"
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
	
l23042:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h&0ffh
	skipz
	goto	u5951
	goto	u5950
u5951:
	goto	l23046
u5950:
	line	12
	
l23044:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	13
;LED_B1.c: 13: }
	goto	l6056
	line	16
	
l6049:	
	
l23046:	
;LED_B1.c: 16: else if(led == 2)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	02h&0ffh
	skipz
	goto	u5961
	goto	u5960
u5961:
	goto	l23050
u5960:
	line	18
	
l23048:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	19
;LED_B1.c: 19: }
	goto	l6056
	line	22
	
l6051:	
	
l23050:	
;LED_B1.c: 22: else if(led == 3)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	03h&0ffh
	skipz
	goto	u5971
	goto	u5970
u5971:
	goto	l23054
u5970:
	line	24
	
l23052:	
;LED_B1.c: 23: {
;LED_B1.c: 24: LED=&VarLED3;
	movlw	(_VarLED3)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	25
;LED_B1.c: 25: }
	goto	l6056
	line	28
	
l6053:	
	
l23054:	
;LED_B1.c: 28: else if(led == 99)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	063h&0ffh
	skipz
	goto	u5981
	goto	u5980
u5981:
	goto	l6056
u5980:
	line	30
	
l23056:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	goto	l6056
	line	31
	
l6055:	
	goto	l6056
	line	33
	
l6054:	
	goto	l6056
	
l6052:	
	goto	l6056
	
l6050:	
	
l6056:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
;; =============== function _LedPointSelect ends ============

	signat	_LedPointSelect,4216
	global	_DimmerPointSelect
psect	text3176,local,class=CODE,delta=2
global __ptext3176
__ptext3176:

;; *************** function _DimmerPointSelect *****************
;; Defined at:
;;		line 505 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    1[BANK0 ] unsigned char 
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
;;		_setDimmer_TempERROR
;;		_setDimmer_LoadERROR
;;		_setDimmer_Detect
;;		_getDimmer_TempERROR
;;		_getDimmer_LoadERROR
;;		_getDimmer_PFERROR
;;		_getDimmer_Detect
;;		_setDimmer_PFERROR
;; This function uses a non-reentrant model
;;
psect	text3176
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	505
	global	__size_of_DimmerPointSelect
	__size_of_DimmerPointSelect	equ	__end_of_DimmerPointSelect-_DimmerPointSelect
	
_DimmerPointSelect:	
	opt	stack 5
; Regs used in _DimmerPointSelect: [wreg]
;DimmerPointSelect@dimmer stored from wreg
	line	508
	movlb 0	; select bank0
	movwf	(DimmerPointSelect@dimmer)
	
l23034:	
;Dimmer_B1.c: 508: if(dimmer == 1)
	movf	(DimmerPointSelect@dimmer),w
	xorlw	01h&0ffh
	skipz
	goto	u5941
	goto	u5940
u5941:
	goto	l4902
u5940:
	line	510
	
l23036:	
;Dimmer_B1.c: 509: {
;Dimmer_B1.c: 510: Dimmer=&Dimmer1;
	movlw	(_Dimmer1)&0ffh
	movwf	(??_DimmerPointSelect+0)+0
	movf	(??_DimmerPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_Dimmer)^080h
	goto	l4902
	line	511
	
l4901:	
	line	513
	
l4902:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerPointSelect
	__end_of_DimmerPointSelect:
;; =============== function _DimmerPointSelect ends ============

	signat	_DimmerPointSelect,4216
	global	_setLoad_Count
psect	text3177,local,class=CODE,delta=2
global __ptext3177
__ptext3177:

;; *************** function _setLoad_Count *****************
;; Defined at:
;;		line 325 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text3177
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	325
	global	__size_of_setLoad_Count
	__size_of_setLoad_Count	equ	__end_of_setLoad_Count-_setLoad_Count
	
_setLoad_Count:	
	opt	stack 6
; Regs used in _setLoad_Count: [wregfsr1]
	line	326
	
l23016:	
;OverLoad_B1.c: 326: Load->Count=command;
	movlb 0	; select bank0
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	327
;OverLoad_B1.c: 327: Load->SafeCount=command;
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	328
	
l9822:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Count
	__end_of_setLoad_Count:
;; =============== function _setLoad_Count ends ============

	signat	_setLoad_Count,8312
	global	_DimmerLightsPointSelect
psect	text3178,local,class=CODE,delta=2
global __ptext3178
__ptext3178:

;; *************** function _DimmerLightsPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_getDimmerLights_StatusFlag
;;		_getDimmerLights_Trigger
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_TriggerERROR
;;		_setDimmerLights
;;		_setDimmerLights_Adj
;;		_setDimmerLights_AdjRF
;;		_setDimmerLights_Switch
;;		_setDimmerLights_AdjGo
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_TriggerAdj
;;		_setDimmerLights_Open
;;		_setDimmerLights_Close
;;		_setDimmerLights_GO
;;		_setDimmerLights_MaxmumValue
;;		_getDimmerLights_Open
;;		_getDimmerLights_Close
;; This function uses a non-reentrant model
;;
psect	text3178
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
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
	
l23008:	
;Dimmer_B1.c: 10: if(lights == 1)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u5911
	goto	u5910
u5911:
	goto	l4762
u5910:
	line	12
	
l23010:	
;Dimmer_B1.c: 11: {
;Dimmer_B1.c: 12: DimmerLights=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	line	13
	
l4762:	
	line	17
;Dimmer_B1.c: 13: }
;Dimmer_B1.c: 17: if(lights == 2)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u5921
	goto	u5920
u5921:
	goto	l4763
u5920:
	line	19
	
l23012:	
;Dimmer_B1.c: 18: {
;Dimmer_B1.c: 19: DimmerLights=&DimmerLights2;
	movlw	(_DimmerLights2)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	line	20
	
l4763:	
	line	24
;Dimmer_B1.c: 20: }
;Dimmer_B1.c: 24: if(lights == 3)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u5931
	goto	u5930
u5931:
	goto	l4765
u5930:
	line	26
	
l23014:	
;Dimmer_B1.c: 25: {
;Dimmer_B1.c: 26: DimmerLights=&DimmerLights3;
	movlw	(_DimmerLights3)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	goto	l4765
	line	27
	
l4764:	
	line	29
	
l4765:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLightsPointSelect
	__end_of_DimmerLightsPointSelect:
;; =============== function _DimmerLightsPointSelect ends ============

	signat	_DimmerLightsPointSelect,4216
	global	_DelayTimejudge
psect	text3179,local,class=CODE,delta=2
global __ptext3179
__ptext3179:

;; *************** function _DelayTimejudge *****************
;; Defined at:
;;		line 108 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text3179
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	108
	global	__size_of_DelayTimejudge
	__size_of_DelayTimejudge	equ	__end_of_DelayTimejudge-_DelayTimejudge
	
_DelayTimejudge:	
	opt	stack 5
; Regs used in _DelayTimejudge: [wreg]
;DelayTimejudge@value stored from wreg
	movlb 0	; select bank0
	movwf	(DelayTimejudge@value)
	line	109
	
l22982:	
;DelayOff_B1.c: 109: char i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	110
;DelayOff_B1.c: 110: if(value == 0x05)
	movf	(DelayTimejudge@value),w
	xorlw	05h&0ffh
	skipz
	goto	u5851
	goto	u5850
u5851:
	goto	l22986
u5850:
	line	112
	
l22984:	
;DelayOff_B1.c: 111: {
;DelayOff_B1.c: 112: i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	113
;DelayOff_B1.c: 113: }
	goto	l3579
	line	114
	
l3578:	
	
l22986:	
;DelayOff_B1.c: 114: else if(value == 0x10)
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u5861
	goto	u5860
u5861:
	goto	l22990
u5860:
	line	116
	
l22988:	
;DelayOff_B1.c: 115: {
;DelayOff_B1.c: 116: i=10;
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	117
;DelayOff_B1.c: 117: }
	goto	l3579
	line	118
	
l3580:	
	
l22990:	
;DelayOff_B1.c: 118: else if(value == 0x15)
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u5871
	goto	u5870
u5871:
	goto	l22994
u5870:
	line	120
	
l22992:	
;DelayOff_B1.c: 119: {
;DelayOff_B1.c: 120: i=15;
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	121
;DelayOff_B1.c: 121: }
	goto	l3579
	line	122
	
l3582:	
	
l22994:	
;DelayOff_B1.c: 122: else if(value == 0x20)
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u5881
	goto	u5880
u5881:
	goto	l22998
u5880:
	line	124
	
l22996:	
;DelayOff_B1.c: 123: {
;DelayOff_B1.c: 124: i=20;
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	125
;DelayOff_B1.c: 125: }
	goto	l3579
	line	126
	
l3584:	
	
l22998:	
;DelayOff_B1.c: 126: else if(value == 0x25)
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u5891
	goto	u5890
u5891:
	goto	l23002
u5890:
	line	128
	
l23000:	
;DelayOff_B1.c: 127: {
;DelayOff_B1.c: 128: i=25;
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	129
;DelayOff_B1.c: 129: }
	goto	l3579
	line	130
	
l3586:	
	
l23002:	
;DelayOff_B1.c: 130: else if(value == 0x30)
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u5901
	goto	u5900
u5901:
	goto	l3579
u5900:
	line	132
	
l23004:	
;DelayOff_B1.c: 131: {
;DelayOff_B1.c: 132: i=30;
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l3579
	line	133
	
l3588:	
	goto	l3579
	line	134
	
l3587:	
	goto	l3579
	
l3585:	
	goto	l3579
	
l3583:	
	goto	l3579
	
l3581:	
	
l3579:	
;DelayOff_B1.c: 133: }
;DelayOff_B1.c: 134: return i;
	movf	(DelayTimejudge@i),w
	goto	l3589
	
l23006:	
	line	135
	
l3589:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
;; =============== function _DelayTimejudge ends ============

	signat	_DelayTimejudge,4217
	global	_setRF_DimmerLights
psect	text3180,local,class=CODE,delta=2
global __ptext3180
__ptext3180:

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 432 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;		_Sw_OnFunc
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text3180
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	432
	global	__size_of_setRF_DimmerLights
	__size_of_setRF_DimmerLights	equ	__end_of_setRF_DimmerLights-_setRF_DimmerLights
	
_setRF_DimmerLights:	
	opt	stack 9
; Regs used in _setRF_DimmerLights: [wreg+fsr1l-status,0]
;setRF_DimmerLights@lights stored from wreg
	line	434
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@lights)
	
l22966:	
;RF_Control_B1.c: 433: char status;
;RF_Control_B1.c: 434: status=1;
	clrf	(setRF_DimmerLights@status)
	bsf	status,0
	rlf	(setRF_DimmerLights@status),f
	line	435
	
l22968:	
;RF_Control_B1.c: 435: status<<=(lights-1);
	movf	(setRF_DimmerLights@lights),w
	addlw	-1
	incf	wreg,f
	
	goto	u5830
u5835:
	clrc
	rlf	(setRF_DimmerLights@status),f
u5830:
	addlw	-1
	skipz
	goto	u5835
	line	436
	
l22970:	
;RF_Control_B1.c: 436: Product->Data[11]=lights;
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	437
	
l22972:	
;RF_Control_B1.c: 437: Product->Data[9]=Product->Data[20+lights];
	movf	(setRF_DimmerLights@lights),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerLights+0)+0
	movf	0+(??_setRF_DimmerLights+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerLights+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+1)+0,w
	movwf	indf1
	line	438
	
l22974:	
;RF_Control_B1.c: 438: Product->Data[17]=Product->Data[26+lights];
	movf	(setRF_DimmerLights@lights),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerLights+0)+0
	movf	0+(??_setRF_DimmerLights+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerLights+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+1)+0,w
	movwf	indf1
	line	439
	
l22976:	
;RF_Control_B1.c: 439: if(on)
	movf	(setRF_DimmerLights@on),w
	skipz
	goto	u5840
	goto	l22980
u5840:
	line	441
	
l22978:	
;RF_Control_B1.c: 440: {
;RF_Control_B1.c: 441: Product->Data[15]=(Product->Data[15]|status);
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	iorwf	(setRF_DimmerLights@status),w
	movwf	(??_setRF_DimmerLights+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	442
;RF_Control_B1.c: 442: }
	goto	l13432
	line	443
	
l13430:	
	line	445
	
l22980:	
;RF_Control_B1.c: 443: else
;RF_Control_B1.c: 444: {
;RF_Control_B1.c: 445: Product->Data[15]=(Product->Data[15]&(~status));
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	comf	(setRF_DimmerLights@status),w
	andwf	indf1,w
	movwf	(??_setRF_DimmerLights+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l13432
	line	446
	
l13431:	
	line	447
	
l13432:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
;; =============== function _setRF_DimmerLights ends ============

	signat	_setRF_DimmerLights,8312
	global	_DelayOffPointSelect
psect	text3181,local,class=CODE,delta=2
global __ptext3181
__ptext3181:

;; *************** function _DelayOffPointSelect *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    0[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
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
psect	text3181
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	9
	global	__size_of_DelayOffPointSelect
	__size_of_DelayOffPointSelect	equ	__end_of_DelayOffPointSelect-_DelayOffPointSelect
	
_DelayOffPointSelect:	
	opt	stack 9
; Regs used in _DelayOffPointSelect: [wreg+status,2+status,0]
;DelayOffPointSelect@sw stored from wreg
	line	11
	movlb 0	; select bank0
	movwf	(DelayOffPointSelect@sw)
	
l22954:	
;DelayOff_B1.c: 11: if(sw == 1)
	movf	(DelayOffPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5801
	goto	u5800
u5801:
	goto	l22958
u5800:
	line	13
	
l22956:	
;DelayOff_B1.c: 12: {
;DelayOff_B1.c: 13: DelayOff=&DlySw1;
	movlw	(_DlySw1&0ffh)
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	movlw	0x1/2
	movwf	(_DelayOff+1)^080h
	line	14
;DelayOff_B1.c: 14: }
	goto	l3553
	line	17
	
l3548:	
	
l22958:	
;DelayOff_B1.c: 17: else if(sw == 2)
	movlb 0	; select bank0
	movf	(DelayOffPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u5811
	goto	u5810
u5811:
	goto	l22962
u5810:
	line	19
	
l22960:	
;DelayOff_B1.c: 18: {
;DelayOff_B1.c: 19: DelayOff=&DlySw2;
	movlw	(_DlySw2&0ffh)
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	movlw	0x1/2
	movwf	(_DelayOff+1)^080h
	line	20
;DelayOff_B1.c: 20: }
	goto	l3553
	line	23
	
l3550:	
	
l22962:	
;DelayOff_B1.c: 23: else if(sw == 3)
	movlb 0	; select bank0
	movf	(DelayOffPointSelect@sw),w
	xorlw	03h&0ffh
	skipz
	goto	u5821
	goto	u5820
u5821:
	goto	l3553
u5820:
	line	25
	
l22964:	
;DelayOff_B1.c: 24: {
;DelayOff_B1.c: 25: DelayOff=&DlySw3;
	movlw	(_DlySw3&0ffh)
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	movlw	0x2/2
	movwf	(_DelayOff+1)^080h
	goto	l3553
	line	26
	
l3552:	
	goto	l3553
	line	28
	
l3551:	
	goto	l3553
	
l3549:	
	
l3553:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOffPointSelect
	__end_of_DelayOffPointSelect:
;; =============== function _DelayOffPointSelect ends ============

	signat	_DelayOffPointSelect,4216
	global	_DelayTime_1us
psect	text3182,local,class=CODE,delta=2
global __ptext3182
__ptext3182:

;; *************** function _DelayTime_1us *****************
;; Defined at:
;;		line 284 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3182
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	284
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l22932:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l2406
	line	287
	
l2407:	
	
l22934:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l22936:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u5761
	goto	u5760
u5761:
	goto	l22940
u5760:
	goto	l22942
	
l22938:	
	goto	l22942
	
l2408:	
	
l22940:	
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
	goto	u5771
	goto	u5770
u5771:
	goto	l22940
u5770:
	goto	l22942
	
l2409:	
	line	286
	
l22942:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l2406:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u5785
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u5785:
	skipc
	goto	u5781
	goto	u5780
u5781:
	goto	l22934
u5780:
	goto	l2411
	
l2410:	
	line	288
	
l2411:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTime_1us
	__end_of_DelayTime_1us:
;; =============== function _DelayTime_1us ends ============

	signat	_DelayTime_1us,4216
	global	_CC2500_ReadByte
psect	text3183,local,class=CODE,delta=2
global __ptext3183
__ptext3183:

;; *************** function _CC2500_ReadByte *****************
;; Defined at:
;;		line 211 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3183
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	211
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
	opt	stack 8
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	213
	
l22914:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l22916:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5731
	goto	u5730
u5731:
	goto	l2375
u5730:
	goto	l2379
	
l22918:	
	goto	l2379
	line	214
	
l2375:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RC1=1;
	bsf	(113/8),(113)&7
	line	216
	
l22920:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	217
	
l22922:	
;CC2500_B1.c: 217: if(RC2 == 1)
	movlb 0	; select bank0
	btfss	(114/8),(114)&7
	goto	u5741
	goto	u5740
u5741:
	goto	l22926
u5740:
	line	218
	
l22924:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	movlb 1	; select bank1
	bsf	(_SPI0Buffer)^080h+(0/8),(0)&7
	goto	l22928
	line	219
	
l2377:	
	line	220
	
l22926:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	movlb 1	; select bank1
	andwf	(_SPI0Buffer)^080h,f
	goto	l22928
	
l2378:	
	line	221
	
l22928:	
;CC2500_B1.c: 221: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l22930:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5751
	goto	u5750
u5751:
	goto	l2375
u5750:
	goto	l2379
	
l2376:	
	line	223
	
l2379:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadByte
	__end_of_CC2500_ReadByte:
;; =============== function _CC2500_ReadByte ends ============

	signat	_CC2500_ReadByte,88
	global	_CC2500_WriteByte
psect	text3184,local,class=CODE,delta=2
global __ptext3184
__ptext3184:

;; *************** function _CC2500_WriteByte *****************
;; Defined at:
;;		line 194 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text3184
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	194
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
	opt	stack 8
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l22898:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l22900:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u5701
	goto	u5700
u5701:
	goto	l2368
u5700:
	goto	l2372
	
l22902:	
	goto	l2372
	line	197
	
l2368:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	movlb 1	; select bank1
	btfss	(_SPI0Buffer)^080h,(7)&7
	goto	u5711
	goto	u5710
u5711:
	goto	l2370
u5710:
	line	199
	
l22904:	
;CC2500_B1.c: 199: RC0=1;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7
	goto	l2371
	line	200
	
l2370:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RC0=0;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7
	
l2371:	
	line	202
;CC2500_B1.c: 202: RC1=1;
	bsf	(113/8),(113)&7
	line	203
	
l22906:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	204
	
l22908:	
;CC2500_B1.c: 204: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	line	196
	
l22910:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l22912:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u5721
	goto	u5720
u5721:
	goto	l2368
u5720:
	goto	l2372
	
l2369:	
	line	206
	
l2372:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteByte
	__end_of_CC2500_WriteByte:
;; =============== function _CC2500_WriteByte ends ============

	signat	_CC2500_WriteByte,88
	global	_BuzPointSelect
psect	text3185,local,class=CODE,delta=2
global __ptext3185
__ptext3185:

;; *************** function _BuzPointSelect *****************
;; Defined at:
;;		line 10 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    1[BANK0 ] unsigned char 
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
;;		_setBuz_Enable
;;		_setBuz
;;		_setBuz_Main
;; This function uses a non-reentrant model
;;
psect	text3185
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	10
	global	__size_of_BuzPointSelect
	__size_of_BuzPointSelect	equ	__end_of_BuzPointSelect-_BuzPointSelect
	
_BuzPointSelect:	
	opt	stack 8
; Regs used in _BuzPointSelect: [wreg]
;BuzPointSelect@buz stored from wreg
	line	12
	movlb 0	; select bank0
	movwf	(BuzPointSelect@buz)
	
l22894:	
;Buzzer_B1.c: 12: if(buz == 1)
	movf	(BuzPointSelect@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u5691
	goto	u5690
u5691:
	goto	l1122
u5690:
	line	14
	
l22896:	
;Buzzer_B1.c: 13: {
;Buzzer_B1.c: 14: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movwf	(??_BuzPointSelect+0)+0
	movf	(??_BuzPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_Buz)^080h
	goto	l1122
	line	15
	
l1121:	
	line	17
	
l1122:	
	return
	opt stack 0
GLOBAL	__end_of_BuzPointSelect
	__end_of_BuzPointSelect:
;; =============== function _BuzPointSelect ends ============

	signat	_BuzPointSelect,4216
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 57 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
	
i1l23108:	
;MCU_16f1518_B1.c: 58: IOC_ISR();
	fcall	_IOC_ISR
	line	60
	
i1l23110:	
;MCU_16f1518_B1.c: 60: TMR0_ISR();
	fcall	_TMR0_ISR
	line	66
	
i1l23112:	
;MCU_16f1518_B1.c: 62: ;;
;MCU_16f1518_B1.c: 66: INT_ISR();
	fcall	_INT_ISR
	line	69
	
i1l8451:	
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
psect	text3187,local,class=CODE,delta=2
global __ptext3187
__ptext3187:

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 182 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3187
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	182
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
	opt	stack 2
; Regs used in _INT_ISR: [wreg+fsr1l-status,0+pclath+cstack]
	line	183
	
i1l23364:	
;MCU_16f1518_B1.c: 183: if(INTE && INTF)
	btfss	(92/8),(92)&7
	goto	u664_21
	goto	u664_20
u664_21:
	goto	i1l8550
u664_20:
	
i1l23366:	
	btfss	(89/8),(89)&7
	goto	u665_21
	goto	u665_20
u665_21:
	goto	i1l8550
u665_20:
	line	185
	
i1l23368:	
;MCU_16f1518_B1.c: 184: {
;MCU_16f1518_B1.c: 185: INTF=0;
	bcf	(89/8),(89)&7
	line	186
;MCU_16f1518_B1.c: 186: INTE=0;
	bcf	(92/8),(92)&7
	line	187
	
i1l23370:	
;MCU_16f1518_B1.c: 187: setRF_ReceiveGO(1,1);
	clrf	(?_setRF_ReceiveGO)
	bsf	status,0
	rlf	(?_setRF_ReceiveGO),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l8550
	line	188
	
i1l8549:	
	line	189
	
i1l8550:	
	return
	opt stack 0
GLOBAL	__end_of_INT_ISR
	__end_of_INT_ISR:
;; =============== function _INT_ISR ends ============

	signat	_INT_ISR,88
	global	_TMR0_ISR
psect	text3188,local,class=CODE,delta=2
global __ptext3188
__ptext3188:

;; *************** function _TMR0_ISR *****************
;; Defined at:
;;		line 84 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_setLoad_StatusOff
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text3188
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	84
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
	opt	stack 2
; Regs used in _TMR0_ISR: [wreg-status,0+pclath+cstack]
	line	85
	
i1l23132:	
;MCU_16f1518_B1.c: 85: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7
	goto	u604_21
	goto	u604_20
u604_21:
	goto	i1l8540
u604_20:
	
i1l23134:	
	btfss	(90/8),(90)&7
	goto	u605_21
	goto	u605_20
u605_21:
	goto	i1l8540
u605_20:
	line	87
	
i1l23136:	
;MCU_16f1518_B1.c: 86: {
;MCU_16f1518_B1.c: 87: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	88
	
i1l23138:	
;MCU_16f1518_B1.c: 88: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	93
	
i1l23140:	
;MCU_16f1518_B1.c: 93: if(DimmerLights11->GO) { DimmerLights11->Count++; if(DimmerLights11->Count >= (DimmerLights11->DimmingValue-Dimmer->Correction)) { DimmerLights11->Count=0; DimmerLights11->GO=0; DimmerLights11->Flag=1; if(DimmerLights11->StatusFlag) { RB4=1; ;; } } }
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u606_21
	goto	u606_20
u606_21:
	goto	i1l23148
u606_20:
	
i1l23142:	
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
	goto	u607_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u607_25:

	skipc
	goto	u607_21
	goto	u607_20
u607_21:
	goto	i1l8461
u607_20:
	
i1l23144:	
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
	goto	u608_21
	goto	u608_20
u608_21:
	goto	i1l8461
u608_20:
	
i1l23146:	
	movlb 0	; select bank0
	bsf	(108/8),(108)&7
	goto	i1l8461
	
i1l8460:	
	goto	i1l8461
	
i1l8459:	
	goto	i1l8461
	
i1l8458:	
	
i1l23148:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u609_21
	goto	u609_20
u609_21:
	goto	i1l23204
u609_20:
	
i1l23150:	
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
	goto	u610_21
	goto	u610_20
u610_21:
	goto	i1l23204
u610_20:
	
i1l23152:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23154:	
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
	goto	u611_21
	goto	u611_20
u611_21:
	goto	i1l23204
u611_20:
	
i1l23156:	
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
	goto	u612_21
	goto	u612_20
u612_21:
	goto	i1l23172
u612_20:
	
i1l23158:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u613_21
	goto	u613_20
u613_21:
	goto	i1l23166
u613_20:
	
i1l23160:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03Dh)
	subwf	indf1,w
	skipc
	goto	u614_21
	goto	u614_20
u614_21:
	goto	i1l23164
u614_20:
	
i1l23162:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l23204
	
i1l8467:	
	
i1l23164:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l23204
	
i1l8468:	
	goto	i1l23204
	
i1l8466:	
	
i1l23166:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u615_21
	goto	u615_20
u615_21:
	goto	i1l23170
u615_20:
	
i1l23168:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l23204
	
i1l8470:	
	
i1l23170:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l23204
	
i1l8471:	
	goto	i1l23204
	
i1l8469:	
	goto	i1l23204
	
i1l8465:	
	
i1l23172:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u616_21
	goto	u616_20
u616_21:
	goto	i1l23186
u616_20:
	
i1l23174:	
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
	goto	u617_21
	goto	u617_20
u617_21:
	goto	i1l23178
u617_20:
	
i1l23176:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l23182
	
i1l8474:	
	
i1l23178:	
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
	goto	u618_21
	goto	u618_20
u618_21:
	goto	i1l23182
u618_20:
	
i1l23180:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l23182
	
i1l8476:	
	goto	i1l23182
	
i1l8475:	
	
i1l23182:	
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
	goto	u619_21
	goto	u619_20
u619_21:
	goto	i1l23204
u619_20:
	
i1l23184:	
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
	goto	i1l23204
	
i1l8477:	
	goto	i1l23204
	
i1l8473:	
	
i1l23186:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u620_21
	goto	u620_20
u620_21:
	goto	i1l23194
u620_20:
	
i1l23188:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l23190:	
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
	goto	u621_21
	goto	u621_20
u621_21:
	goto	i1l23204
u621_20:
	
i1l23192:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l23204
	
i1l8480:	
	goto	i1l23204
	
i1l8479:	
	
i1l23194:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23196:	
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
	goto	u622_21
	goto	u622_20
u622_21:
	goto	i1l23204
u622_20:
	
i1l23198:	
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
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	
i1l23200:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7
	
i1l23202:	
	clrf	(?i1_setLoad_StatusOff)
	bsf	status,0
	rlf	(?i1_setLoad_StatusOff),f
	clrf	0+(?i1_setLoad_StatusOff)+01h
	bsf	status,0
	rlf	0+(?i1_setLoad_StatusOff)+01h,f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l23204
	
i1l8482:	
	goto	i1l23204
	
i1l8481:	
	goto	i1l23204
	
i1l8478:	
	goto	i1l23204
	
i1l8472:	
	goto	i1l23204
	
i1l8464:	
	goto	i1l23204
	
i1l8463:	
	goto	i1l23204
	
i1l8462:	
	
i1l23204:	
	movlb 0	; select bank0
	btfss	(108/8),(108)&7
	goto	u623_21
	goto	u623_20
u623_21:
	goto	i1l8461
u623_20:
	
i1l23206:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23208:	
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u624_21
	goto	u624_20
u624_21:
	goto	i1l8461
u624_20:
	
i1l23210:	
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l23212:	
	bcf	(108/8),(108)&7
	goto	i1l8461
	
i1l8484:	
	goto	i1l8461
	
i1l8483:	
	
i1l8461:	
	line	97
;MCU_16f1518_B1.c: 97: if(DimmerLights22->GO) { DimmerLights22->Count++; if(DimmerLights22->Count >= (DimmerLights22->DimmingValue-Dimmer->Correction)) { DimmerLights22->Count=0; DimmerLights22->GO=0; DimmerLights22->Flag=1; if(DimmerLights22->StatusFlag) { RA7=1; } } } el
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u625_21
	goto	u625_20
u625_21:
	goto	i1l23220
u625_20:
	
i1l23214:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
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
	movf	(_DimmerLights22),w
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
	movf	(_DimmerLights22),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	1+(??_TMR0_ISR+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u626_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u626_25:

	skipc
	goto	u626_21
	goto	u626_20
u626_21:
	goto	i1l8488
u626_20:
	
i1l23216:	
	movf	(_DimmerLights22),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u627_21
	goto	u627_20
u627_21:
	goto	i1l8488
u627_20:
	
i1l23218:	
	movlb 0	; select bank0
	bsf	(103/8),(103)&7
	goto	i1l8488
	
i1l8487:	
	goto	i1l8488
	
i1l8486:	
	goto	i1l8488
	
i1l8485:	
	
i1l23220:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u628_21
	goto	u628_20
u628_21:
	goto	i1l23276
u628_20:
	
i1l23222:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u629_21
	goto	u629_20
u629_21:
	goto	i1l23276
u629_20:
	
i1l23224:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23226:	
	movf	(_DimmerLights22),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	02h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u630_21
	goto	u630_20
u630_21:
	goto	i1l23276
u630_20:
	
i1l23228:	
	movf	(_DimmerLights22),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u631_21
	goto	u631_20
u631_21:
	goto	i1l23244
u631_20:
	
i1l23230:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u632_21
	goto	u632_20
u632_21:
	goto	i1l23238
u632_20:
	
i1l23232:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03Dh)
	subwf	indf1,w
	skipc
	goto	u633_21
	goto	u633_20
u633_21:
	goto	i1l23236
u633_20:
	
i1l23234:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l23276
	
i1l8494:	
	
i1l23236:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l23276
	
i1l8495:	
	goto	i1l23276
	
i1l8493:	
	
i1l23238:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u634_21
	goto	u634_20
u634_21:
	goto	i1l23242
u634_20:
	
i1l23240:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l23276
	
i1l8497:	
	
i1l23242:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l23276
	
i1l8498:	
	goto	i1l23276
	
i1l8496:	
	goto	i1l23276
	
i1l8492:	
	
i1l23244:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u635_21
	goto	u635_20
u635_21:
	goto	i1l23258
u635_20:
	
i1l23246:	
	movf	(_DimmerLights22),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u636_21
	goto	u636_20
u636_21:
	goto	i1l23250
u636_20:
	
i1l23248:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l23254
	
i1l8501:	
	
i1l23250:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u637_21
	goto	u637_20
u637_21:
	goto	i1l23254
u637_20:
	
i1l23252:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l23254
	
i1l8503:	
	goto	i1l23254
	
i1l8502:	
	
i1l23254:	
	movf	(_DimmerLights22),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	xorwf	indf1,w
	skipz
	goto	u638_21
	goto	u638_20
u638_21:
	goto	i1l23276
u638_20:
	
i1l23256:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l23276
	
i1l8504:	
	goto	i1l23276
	
i1l8500:	
	
i1l23258:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u639_21
	goto	u639_20
u639_21:
	goto	i1l23266
u639_20:
	
i1l23260:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l23262:	
	movf	(_DimmerLights22),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u640_21
	goto	u640_20
u640_21:
	goto	i1l23276
u640_20:
	
i1l23264:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l23276
	
i1l8507:	
	goto	i1l23276
	
i1l8506:	
	
i1l23266:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23268:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u641_21
	goto	u641_20
u641_21:
	goto	i1l23276
u641_20:
	
i1l23270:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	movf	(_DimmerLights22),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	
i1l23272:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7
	
i1l23274:	
	movlw	(02h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(??_TMR0_ISR+0)+0,w
	movwf	(?i1_setLoad_StatusOff)
	clrf	0+(?i1_setLoad_StatusOff)+01h
	bsf	status,0
	rlf	0+(?i1_setLoad_StatusOff)+01h,f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l23276
	
i1l8509:	
	goto	i1l23276
	
i1l8508:	
	goto	i1l23276
	
i1l8505:	
	goto	i1l23276
	
i1l8499:	
	goto	i1l23276
	
i1l8491:	
	goto	i1l23276
	
i1l8490:	
	goto	i1l23276
	
i1l8489:	
	
i1l23276:	
	movlb 0	; select bank0
	btfss	(103/8),(103)&7
	goto	u642_21
	goto	u642_20
u642_21:
	goto	i1l8488
u642_20:
	
i1l23278:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23280:	
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u643_21
	goto	u643_20
u643_21:
	goto	i1l8488
u643_20:
	
i1l23282:	
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l23284:	
	bcf	(103/8),(103)&7
	goto	i1l8488
	
i1l8511:	
	goto	i1l8488
	
i1l8510:	
	
i1l8488:	
	line	101
;MCU_16f1518_B1.c: 101: if(DimmerLights33->GO) { DimmerLights33->Count++; if(DimmerLights33->Count >= (DimmerLights33->DimmingValue-Dimmer->Correction)) { DimmerLights33->Count=0; DimmerLights33->GO=0; DimmerLights33->Flag=1; if(DimmerLights33->StatusFlag) { RB1=1; } } } el
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u644_21
	goto	u644_20
u644_21:
	goto	i1l23292
u644_20:
	
i1l23286:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights33),w
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
	movf	(_DimmerLights33),w
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
	movf	(_DimmerLights33),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	1+(??_TMR0_ISR+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u645_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u645_25:

	skipc
	goto	u645_21
	goto	u645_20
u645_21:
	goto	i1l23358
u645_20:
	
i1l23288:	
	movf	(_DimmerLights33),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights33),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u646_21
	goto	u646_20
u646_21:
	goto	i1l23358
u646_20:
	
i1l23290:	
	movlb 0	; select bank0
	bsf	(105/8),(105)&7
	goto	i1l23358
	
i1l8514:	
	goto	i1l23358
	
i1l8513:	
	goto	i1l23358
	
i1l8512:	
	
i1l23292:	
	movf	(_DimmerLights33),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u647_21
	goto	u647_20
u647_21:
	goto	i1l23348
u647_20:
	
i1l23294:	
	movf	(_DimmerLights33),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u648_21
	goto	u648_20
u648_21:
	goto	i1l23348
u648_20:
	
i1l23296:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights33),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23298:	
	movf	(_DimmerLights33),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights33),w
	addlw	02h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u649_21
	goto	u649_20
u649_21:
	goto	i1l23348
u649_20:
	
i1l23300:	
	movf	(_DimmerLights33),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u650_21
	goto	u650_20
u650_21:
	goto	i1l23316
u650_20:
	
i1l23302:	
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u651_21
	goto	u651_20
u651_21:
	goto	i1l23310
u651_20:
	
i1l23304:	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03Dh)
	subwf	indf1,w
	skipc
	goto	u652_21
	goto	u652_20
u652_21:
	goto	i1l23308
u652_20:
	
i1l23306:	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l23348
	
i1l8521:	
	
i1l23308:	
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l23348
	
i1l8522:	
	goto	i1l23348
	
i1l8520:	
	
i1l23310:	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u653_21
	goto	u653_20
u653_21:
	goto	i1l23314
u653_20:
	
i1l23312:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l23348
	
i1l8524:	
	
i1l23314:	
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l23348
	
i1l8525:	
	goto	i1l23348
	
i1l8523:	
	goto	i1l23348
	
i1l8519:	
	
i1l23316:	
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u654_21
	goto	u654_20
u654_21:
	goto	i1l23330
u654_20:
	
i1l23318:	
	movf	(_DimmerLights33),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u655_21
	goto	u655_20
u655_21:
	goto	i1l23322
u655_20:
	
i1l23320:	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l23326
	
i1l8528:	
	
i1l23322:	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights33),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u656_21
	goto	u656_20
u656_21:
	goto	i1l23326
u656_20:
	
i1l23324:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l23326
	
i1l8530:	
	goto	i1l23326
	
i1l8529:	
	
i1l23326:	
	movf	(_DimmerLights33),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	xorwf	indf1,w
	skipz
	goto	u657_21
	goto	u657_20
u657_21:
	goto	i1l23348
u657_20:
	
i1l23328:	
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l23348
	
i1l8531:	
	goto	i1l23348
	
i1l8527:	
	
i1l23330:	
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u658_21
	goto	u658_20
u658_21:
	goto	i1l23338
u658_20:
	
i1l23332:	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l23334:	
	movf	(_DimmerLights33),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u659_21
	goto	u659_20
u659_21:
	goto	i1l23348
u659_20:
	
i1l23336:	
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l23348
	
i1l8534:	
	goto	i1l23348
	
i1l8533:	
	
i1l23338:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23340:	
	movf	(_DimmerLights33),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights33),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u660_21
	goto	u660_20
u660_21:
	goto	i1l23348
u660_20:
	
i1l23342:	
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	movf	(_DimmerLights33),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	
i1l23344:	
	movlb 0	; select bank0
	bcf	(118/8),(118)&7
	
i1l23346:	
	movlw	(03h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(??_TMR0_ISR+0)+0,w
	movwf	(?i1_setLoad_StatusOff)
	clrf	0+(?i1_setLoad_StatusOff)+01h
	bsf	status,0
	rlf	0+(?i1_setLoad_StatusOff)+01h,f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l23348
	
i1l8536:	
	goto	i1l23348
	
i1l8535:	
	goto	i1l23348
	
i1l8532:	
	goto	i1l23348
	
i1l8526:	
	goto	i1l23348
	
i1l8518:	
	goto	i1l23348
	
i1l8517:	
	goto	i1l23348
	
i1l8516:	
	
i1l23348:	
	movlb 0	; select bank0
	btfss	(105/8),(105)&7
	goto	u661_21
	goto	u661_20
u661_21:
	goto	i1l23358
u661_20:
	
i1l23350:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights33),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l23352:	
	movf	(_DimmerLights33),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u662_21
	goto	u662_20
u662_21:
	goto	i1l23358
u662_20:
	
i1l23354:	
	movf	(_DimmerLights33),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l23356:	
	bcf	(105/8),(105)&7
	goto	i1l23358
	
i1l8538:	
	goto	i1l23358
	
i1l8537:	
	goto	i1l23358
	
i1l8515:	
	line	106
	
i1l23358:	
;MCU_16f1518_B1.c: 106: Timer0->Count++;
	movlb 1	; select bank1
	movf	(_Timer0)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	107
	
i1l23360:	
;MCU_16f1518_B1.c: 107: if(Timer0->Count == 200)
	movf	(_Timer0)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0C8h)
	skipz
	goto	u663_25
	moviw	[1]fsr1
	xorlw	high(0C8h)
u663_25:
	skipz
	goto	u663_21
	goto	u663_20
u663_21:
	goto	i1l8540
u663_20:
	line	109
	
i1l23362:	
;MCU_16f1518_B1.c: 108: {
;MCU_16f1518_B1.c: 109: Timer0->Count=0;
	movf	(_Timer0)^080h,w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	110
;MCU_16f1518_B1.c: 110: TMain->T0_Timerout=1;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	i1l8540
	line	111
	
i1l8539:	
	goto	i1l8540
	line	112
	
i1l8457:	
	line	113
	
i1l8540:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
;; =============== function _TMR0_ISR ends ============

	signat	_TMR0_ISR,88
	global	i1_setLoad_StatusOff
psect	text3189,local,class=CODE,delta=2
global __ptext3189
__ptext3189:

;; *************** function i1_setLoad_StatusOff *****************
;; Defined at:
;;		line 347 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  setLoad_Stat    1    wreg     unsigned char 
;;  setLoad_Stat    1    2[COMMON] unsigned char 
;;  setLoad_Stat    1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  setLoad_Stat    1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_LoadPointSelect
;; This function is called by:
;;		_TMR0_ISR
;; This function uses a non-reentrant model
;;
psect	text3189
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	347
	global	__size_ofi1_setLoad_StatusOff
	__size_ofi1_setLoad_StatusOff	equ	__end_ofi1_setLoad_StatusOff-i1_setLoad_StatusOff
	
i1_setLoad_StatusOff:	
	opt	stack 2
; Regs used in i1_setLoad_StatusOff: [wreg+fsr1l-status,0+pclath+cstack]
;i1setLoad_StatusOff@load stored from wreg
	movwf	(i1setLoad_StatusOff@load)
	line	348
	
i1l23724:	
;OverLoad_B1.c: 348: LoadPointSelect(load);
	movf	(i1setLoad_StatusOff@load),w
	fcall	i1_LoadPointSelect
	line	349
	
i1l23726:	
;OverLoad_B1.c: 349: Load->StatusOff=command;
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
	line	351
	
i1l23728:	
;OverLoad_B1.c: 351: if(lights == 1)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u738_21
	goto	u738_20
u738_21:
	goto	i1l23732
u738_20:
	line	353
	
i1l23730:	
;OverLoad_B1.c: 352: {
;OverLoad_B1.c: 353: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l23732
	line	354
	
i1l9834:	
	line	355
	
i1l23732:	
;OverLoad_B1.c: 354: }
;OverLoad_B1.c: 355: if(lights == 2)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u739_21
	goto	u739_20
u739_21:
	goto	i1l23736
u739_20:
	line	357
	
i1l23734:	
;OverLoad_B1.c: 356: {
;OverLoad_B1.c: 357: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l23736
	line	358
	
i1l9835:	
	line	359
	
i1l23736:	
;OverLoad_B1.c: 358: }
;OverLoad_B1.c: 359: if(lights == 3)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u740_21
	goto	u740_20
u740_21:
	goto	i1l9837
u740_20:
	line	361
	
i1l23738:	
;OverLoad_B1.c: 360: {
;OverLoad_B1.c: 361: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l9837
	line	362
	
i1l9836:	
	line	363
	
i1l9837:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLoad_StatusOff
	__end_ofi1_setLoad_StatusOff:
;; =============== function i1_setLoad_StatusOff ends ============

	signat	i1_setLoad_StatusOff,88
	global	_setRF_ReceiveGO
psect	text3190,local,class=CODE,delta=2
global __ptext3190
__ptext3190:

;; *************** function _setRF_ReceiveGO *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3190
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	38
	global	__size_of_setRF_ReceiveGO
	__size_of_setRF_ReceiveGO	equ	__end_of_setRF_ReceiveGO-_setRF_ReceiveGO
	
_setRF_ReceiveGO:	
	opt	stack 2
; Regs used in _setRF_ReceiveGO: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_ReceiveGO@rf stored from wreg
	movwf	(setRF_ReceiveGO@rf)
	line	39
	
i1l23380:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l23382:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l13325:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_ReceiveGO
	__end_of_setRF_ReceiveGO:
;; =============== function _setRF_ReceiveGO ends ============

	signat	_setRF_ReceiveGO,8312
	global	_IOC_ISR
psect	text3191,local,class=CODE,delta=2
global __ptext3191
__ptext3191:

;; *************** function _IOC_ISR *****************
;; Defined at:
;;		line 214 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3191
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	214
	global	__size_of_IOC_ISR
	__size_of_IOC_ISR	equ	__end_of_IOC_ISR-_IOC_ISR
	
_IOC_ISR:	
	opt	stack 3
; Regs used in _IOC_ISR: [wreg+fsr1l-status,0+pclath+cstack]
	line	215
	
i1l23114:	
;MCU_16f1518_B1.c: 215: if(IOCIE && IOCIF && IOCBF2)
	btfss	(91/8),(91)&7
	goto	u599_21
	goto	u599_20
u599_21:
	goto	i1l8563
u599_20:
	
i1l23116:	
	btfss	(88/8),(88)&7
	goto	u600_21
	goto	u600_20
u600_21:
	goto	i1l8563
u600_20:
	
i1l23118:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7
	goto	u601_21
	goto	u601_20
u601_21:
	goto	i1l8563
u601_20:
	line	217
	
i1l23120:	
;MCU_16f1518_B1.c: 216: {
;MCU_16f1518_B1.c: 217: IOCBF2=0;
	bcf	(7346/8)^0380h,(7346)&7
	line	218
;MCU_16f1518_B1.c: 218: IOCIF=0;
	bcf	(88/8),(88)&7
	line	219
	
i1l23122:	
;MCU_16f1518_B1.c: 219: if(TMain->PowerON == 1)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u602_21
	goto	u602_20
u602_21:
	goto	i1l8563
u602_20:
	line	222
	
i1l23124:	
;MCU_16f1518_B1.c: 220: {
;MCU_16f1518_B1.c: 222: setDimmerReClock();
	fcall	_setDimmerReClock
	line	223
	
i1l23126:	
;MCU_16f1518_B1.c: 223: if(RB2)
	movlb 0	; select bank0
	btfss	(106/8),(106)&7
	goto	u603_21
	goto	u603_20
u603_21:
	goto	i1l23130
u603_20:
	line	225
	
i1l23128:	
;MCU_16f1518_B1.c: 224: {
;MCU_16f1518_B1.c: 225: Dimmer->Correction=0;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	226
;MCU_16f1518_B1.c: 226: }
	goto	i1l8563
	line	227
	
i1l8561:	
	line	229
	
i1l23130:	
;MCU_16f1518_B1.c: 227: else
;MCU_16f1518_B1.c: 228: {
;MCU_16f1518_B1.c: 229: Dimmer->Correction=14;
	movlw	(0Eh)
	movwf	(??_IOC_ISR+0)+0
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_IOC_ISR+0)+0,w
	movwf	indf1
	goto	i1l8563
	line	230
	
i1l8562:	
	goto	i1l8563
	line	232
	
i1l8560:	
	goto	i1l8563
	line	233
	
i1l8559:	
	line	234
	
i1l8563:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_ISR
	__end_of_IOC_ISR:
;; =============== function _IOC_ISR ends ============

	signat	_IOC_ISR,88
	global	i1_RfPointSelect
psect	text3192,local,class=CODE,delta=2
global __ptext3192
__ptext3192:

;; *************** function i1_RfPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text3192
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	8
	global	__size_ofi1_RfPointSelect
	__size_ofi1_RfPointSelect	equ	__end_ofi1_RfPointSelect-i1_RfPointSelect
	
i1_RfPointSelect:	
	opt	stack 2
; Regs used in i1_RfPointSelect: [wreg]
;i1RfPointSelect@rf stored from wreg
	line	10
	movwf	(i1RfPointSelect@rf)
	
i1l23740:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u741_21
	goto	u741_20
u741_21:
	goto	i1l13313
u741_20:
	line	12
	
i1l23742:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF)^080h
	goto	i1l13313
	line	13
	
i1l13312:	
	line	15
	
i1l13313:	
	return
	opt stack 0
GLOBAL	__end_ofi1_RfPointSelect
	__end_ofi1_RfPointSelect:
;; =============== function i1_RfPointSelect ends ============

	signat	i1_RfPointSelect,88
	global	i1_LoadPointSelect
psect	text3193,local,class=CODE,delta=2
global __ptext3193
__ptext3193:

;; *************** function i1_LoadPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  LoadPointSel    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LoadPointSel    1    1[COMMON] unsigned char 
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
;;		i1_setLoad_StatusOff
;; This function uses a non-reentrant model
;;
psect	text3193
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	8
	global	__size_ofi1_LoadPointSelect
	__size_ofi1_LoadPointSelect	equ	__end_ofi1_LoadPointSelect-i1_LoadPointSelect
	
i1_LoadPointSelect:	
	opt	stack 2
; Regs used in i1_LoadPointSelect: [wreg]
;i1LoadPointSelect@load stored from wreg
	line	10
	movwf	(i1LoadPointSelect@load)
	
i1l23720:	
;OverLoad_B1.c: 10: if(load == 1)
	movf	(i1LoadPointSelect@load),w
	xorlw	01h&0ffh
	skipz
	goto	u737_21
	goto	u737_20
u737_21:
	goto	i1l9753
u737_20:
	line	12
	
i1l23722:	
;OverLoad_B1.c: 11: {
;OverLoad_B1.c: 12: Load=&Load1;
	movlw	(_Load1)&0ffh
	movwf	(??i1_LoadPointSelect+0)+0
	movf	(??i1_LoadPointSelect+0)+0,w
	movlb 0	; select bank0
	movwf	(_Load)
	goto	i1l9753
	line	13
	
i1l9752:	
	line	15
	
i1l9753:	
	return
	opt stack 0
GLOBAL	__end_ofi1_LoadPointSelect
	__end_ofi1_LoadPointSelect:
;; =============== function i1_LoadPointSelect ends ============

	signat	i1_LoadPointSelect,88
	global	_setDimmerReClock
psect	text3194,local,class=CODE,delta=2
global __ptext3194
__ptext3194:

;; *************** function _setDimmerReClock *****************
;; Defined at:
;;		line 116 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text3194
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	116
	global	__size_of_setDimmerReClock
	__size_of_setDimmerReClock	equ	__end_of_setDimmerReClock-_setDimmerReClock
	
_setDimmerReClock:	
	opt	stack 3
; Regs used in _setDimmerReClock: [wregfsr1]
	line	117
	
i1l23372:	
;MCU_16f1518_B1.c: 117: TMR0=255;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	120
	
i1l23374:	
;MCU_16f1518_B1.c: 120: DimmerLights11->GO=1;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	123
	
i1l23376:	
;MCU_16f1518_B1.c: 123: DimmerLights22->GO=1;
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	126
	
i1l23378:	
;MCU_16f1518_B1.c: 126: DimmerLights33->GO=1;
	movf	(_DimmerLights33),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	130
	
i1l8543:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerReClock
	__end_of_setDimmerReClock:
;; =============== function _setDimmerReClock ends ============

	signat	_setDimmerReClock,88
psect	text3195,local,class=CODE,delta=2
global __ptext3195
__ptext3195:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
