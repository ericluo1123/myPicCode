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
	FNCALL	_main,_DimmerLights_Initialization
	FNCALL	_main,_Temp_Initialization
	FNCALL	_main,_Load_Initialization
	FNCALL	_main,_PowerFault_Initialization
	FNCALL	_main,_DelayOff_Initialization
	FNCALL	_main,_Switch_Initialization
	FNCALL	_main,_RF_Initialization
	FNCALL	_main,_CC2500_PowerOnInitial
	FNCALL	_main,_getLoad_AD
	FNCALL	_main,_getTemp_AD
	FNCALL	_main,_getPowerFault_AD
	FNCALL	_main,_MainT
	FNCALL	_main,_Flash_Memory_Main
	FNCALL	_main,_Buzzer_Main
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
	FNCALL	_PowerFault_Main,_setPowerFault_Main
	FNCALL	_Load_Main,_setLoad_Main
	FNCALL	_Temp_Main,_setTemp_Main
	FNCALL	_setRFSW_AdjControl,_RfSWPointSelect
	FNCALL	_setRFSW_AdjControl,_setRF_DimmerValue
	FNCALL	_setRFSW_AdjControl,_setTxData
	FNCALL	_setPowerFault_Main,_PowerFaultPointSelect
	FNCALL	_setPowerFault_Main,_getLoad_Safe
	FNCALL	_setPowerFault_Main,_getTemp_Safe
	FNCALL	_setPowerFault_Main,_setPowerFault_ERROR
	FNCALL	_setTemp_Main,_TempPointSelect
	FNCALL	_setTemp_Main,_getLoad_Safe
	FNCALL	_setTemp_Main,_getPF_Safe
	FNCALL	_setTemp_Main,_setOverTemp_ERROR
	FNCALL	_setLoad_Main,_LoadPointSelect
	FNCALL	_setLoad_Main,_setLoad_ERROR
	FNCALL	_setLoad_Main,___lwdiv
	FNCALL	_setLoad_Main,___wmul
	FNCALL	_setLoad_Main,_setDimmerLights_Open
	FNCALL	_setLoad_Main,_setLoad_AH_AL_Restore
	FNCALL	_setLoad_Main,_getTemp_Safe
	FNCALL	_setLoad_Main,_getPF_Safe
	FNCALL	_DimmerLights_Main,_setDimmerLights_Main
	FNCALL	_DimmerLights_Main,_DimmerLights_Close
	FNCALL	_setRF_DimmerValue,_setDimmerLights_AdjRF
	FNCALL	_setPowerFault_ERROR,_PowerFaultPointSelect
	FNCALL	_setPowerFault_ERROR,_setDimmer_PFERROR
	FNCALL	_setPowerFault_ERROR,_DimmerLights_ERROR
	FNCALL	_setPowerFault_ERROR,_setLED
	FNCALL	_setPowerFault_ERROR,_setSw_Enable
	FNCALL	_setPowerFault_ERROR,_setRF_Enable
	FNCALL	_setOverTemp_ERROR,_TempPointSelect
	FNCALL	_setOverTemp_ERROR,_setDimmer_TempERROR
	FNCALL	_setOverTemp_ERROR,_DimmerLights_ERROR
	FNCALL	_setOverTemp_ERROR,_setLED
	FNCALL	_setOverTemp_ERROR,_setSw_Enable
	FNCALL	_setOverTemp_ERROR,_setRF_Enable
	FNCALL	_setOverTemp_ERROR,_setBuz
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
	FNCALL	_MainT,_getTemp_ERROR
	FNCALL	_MainT,_getPF_ERROR
	FNCALL	_MainT,_getLoad_ERROR
	FNCALL	_MainT,_DimmerLightsPointSelect
	FNCALL	_MainT,_setDimmerLights_Trigger
	FNCALL	_MainT,_setDimmerLights_Switch
	FNCALL	_MainT,_setBuz
	FNCALL	_MainT,_getTemp_Safe
	FNCALL	_MainT,_getPF_Safe
	FNCALL	_MainT,_getLoad_Safe
	FNCALL	_MainT,_getPercentValue
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
	FNCALL	_Switch_Initialization,_setLED
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
	FNCALL	_Sw_OffFunc,_setDelayOff_GO
	FNCALL	_Sw_OffFunc,_setDimmerLights_Trigger
	FNCALL	_Sw_OffFunc,_setDimmerLights_Switch
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
	FNCALL	_setRFSW_Control,_setRF_DimmerLights
	FNCALL	_setRFSW_Control,_setDimmerLights_Trigger
	FNCALL	_setRFSW_Control,_setDimmerLights_Switch
	FNCALL	_setRFSW_Control,_setBuz
	FNCALL	_setRFSW_Control,_setTxData
	FNCALL	_setLog_Code,_RfPointSelect
	FNCALL	_setLog_Code,_setBuz
	FNCALL	_RF_RxDisable,_RfPointSelect
	FNCALL	_RF_RxDisable,_CC2500_WriteCommand
	FNCALL	_RF_RxDisable,_setINT_GO
	FNCALL	_Flash_Memory_Erasing,_Flash_Memory_Unlock
	FNCALL	_Flash_Memory_Write,_Flash_Memory_Unlock
	FNCALL	_PowerFault_Initialization,_setPowerFault_Initialization
	FNCALL	_Load_Initialization,_setLoad_Initialization
	FNCALL	_Temp_Initialization,_setTemp_Initialization
	FNCALL	_LED_Main,_setLED_Main
	FNCALL	_setLED_Initialization,_LedPointSelect
	FNCALL	_setLED_Initialization,_setLED
	FNCALL	_setPercentValue,___awtoft
	FNCALL	_setPercentValue,___ftdiv
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
	FNCALL	_setPowerFault_Initialization,_PowerFaultPointSelect
	FNCALL	_setTemp_Initialization,_TempPointSelect
	FNCALL	_setLoad_Initialization,_LoadPointSelect
	FNCALL	_setLoad_Initialization,_setLoad_AH_AL_Restore
	FNCALL	_setSw_Enable,_SwPointSelect
	FNCALL	_getLoad_Safe,_LoadPointSelect
	FNCALL	_getPF_Safe,_PowerFaultPointSelect
	FNCALL	_getTemp_Safe,_TempPointSelect
	FNCALL	_getLoad_ERROR,_LoadPointSelect
	FNCALL	_getPF_ERROR,_PowerFaultPointSelect
	FNCALL	_getTemp_ERROR,_TempPointSelect
	FNCALL	_setLoad_Enable,_LoadPointSelect
	FNCALL	_setTemp_Enable,_TempPointSelect
	FNCALL	_getPowerFault_AD,_PowerFaultPointSelect
	FNCALL	_getPowerFault_AD,_getAD
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
	FNCALL	_setDimmer_PFERROR,_DimmerPointSelect
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
	global	_VarMemory
	global	_VarProduct
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"G:\Program\PIC\Header_File\../Header_File/MCU_16F1518_B1.h"
	line	434

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
	file	"G:\Program\PIC\10.Switch_1Key_Dimmer\Switch_1Key_Dimmer_V1.1.0\Release\../Release/Switch_1key_Dimmer_V1.1.0.h"
	line	211

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
	global	_CC2500_registers_address
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
	global    __stringtab
__stringtab:
	retlw	0
psect	strings
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500_B1.h"
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
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500_B1.h"
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
	file	"G:\Program\PIC\Header_File\../Header_File/CC2500_B1.h"
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
	global	_PF
	global	_Sw
	global	_Temp
	global	_Buz
	global	_DelayOff
	global	_DimmerLights11
	global	_RF
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
	global	_Buz1
	global	_DimmerLights1
	global	_Sw1
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

	global	_Memory
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_Memory:
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
	global	_Timer0
psect	nvBANK1,class=BANK1,space=1
global __pnvBANK1
__pnvBANK1:
_Timer0:
       ds      1

	file	"Switch_1Key_Dimmer_V1.1.0.as"
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

_DelayOff:
       ds      1

_DimmerLights11:
       ds      1

_RF:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_DimmerLights:
       ds      1

_Load:
       ds      1

_PF:
       ds      1

_Sw:
       ds      1

_Temp:
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
       ds      2

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

_Buz1:
       ds      12

_DimmerLights1:
       ds      10

_Sw1:
       ds      9

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"G:\Program\PIC\Header_File\../Header_File/MCU_16F1518_B1.h"
	line	434
_VarMemory:
       ds      37

psect	dataBANK3
	file	"G:\Program\PIC\10.Switch_1Key_Dimmer\Switch_1Key_Dimmer_V1.1.0\Release\../Release/Switch_1key_Dimmer_V1.1.0.h"
	line	211
_VarProduct:
       ds      30

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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	048h
	fcall	clear_ram
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	03Dh
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
	movlw 043h
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
	global	?_PowerFault_Initialization
?_PowerFault_Initialization:	; 0 bytes @ 0x0
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
	global	?_PowerFault_Main
?_PowerFault_Main:	; 0 bytes @ 0x0
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
	global	?_setPowerFault_Initialization
?_setPowerFault_Initialization:	; 0 bytes @ 0x0
	global	?_setPowerFault_Main
?_setPowerFault_Main:	; 0 bytes @ 0x0
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
	global	?_PowerFaultPointSelect
?_PowerFaultPointSelect:	; 0 bytes @ 0x0
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
	global	?_getTemp_ERROR
?_getTemp_ERROR:	; 1 bytes @ 0x0
	global	?_getPF_ERROR
?_getPF_ERROR:	; 1 bytes @ 0x0
	global	?_getLoad_ERROR
?_getLoad_ERROR:	; 1 bytes @ 0x0
	global	?_getTemp_Safe
?_getTemp_Safe:	; 1 bytes @ 0x0
	global	?_getPF_Safe
?_getPF_Safe:	; 1 bytes @ 0x0
	global	?_getLoad_Safe
?_getLoad_Safe:	; 1 bytes @ 0x0
	global	?_Flash_Memory_Read
?_Flash_Memory_Read:	; 1 bytes @ 0x0
	global	setBuz_Initialization@buz
setBuz_Initialization@buz:	; 1 bytes @ 0x0
	global	setLoad_Count@load
setLoad_Count@load:	; 1 bytes @ 0x0
	global	setLoad_AH_AL_Restore@load
setLoad_AH_AL_Restore@load:	; 1 bytes @ 0x0
	global	TempPointSelect@temp
TempPointSelect@temp:	; 1 bytes @ 0x0
	global	PowerFaultPointSelect@pf
PowerFaultPointSelect@pf:	; 1 bytes @ 0x0
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
	ds	1
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
	global	??_PowerFaultPointSelect
??_PowerFaultPointSelect:	; 0 bytes @ 0x0
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
	global	??_getTemp_ERROR
??_getTemp_ERROR:	; 0 bytes @ 0x1
	global	??_getPF_ERROR
??_getPF_ERROR:	; 0 bytes @ 0x1
	global	??_getTemp_Safe
??_getTemp_Safe:	; 0 bytes @ 0x1
	global	??_getPF_Safe
??_getPF_Safe:	; 0 bytes @ 0x1
	global	??_setTemp_Initialization
??_setTemp_Initialization:	; 0 bytes @ 0x1
	global	??_setPowerFault_Initialization
??_setPowerFault_Initialization:	; 0 bytes @ 0x1
	global	BuzPointSelect@buz
BuzPointSelect@buz:	; 1 bytes @ 0x1
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
	global	getTemp_ERROR@temp
getTemp_ERROR@temp:	; 1 bytes @ 0x1
	global	setTemp_Initialization@temp
setTemp_Initialization@temp:	; 1 bytes @ 0x1
	global	setPowerFault_Initialization@pf
setPowerFault_Initialization@pf:	; 1 bytes @ 0x1
	global	getPF_Safe@pf
getPF_Safe@pf:	; 1 bytes @ 0x1
	global	getPF_ERROR@pf
getPF_ERROR@pf:	; 1 bytes @ 0x1
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
	global	??_PowerFault_Initialization
??_PowerFault_Initialization:	; 0 bytes @ 0x2
	global	??_setTemp_Enable
??_setTemp_Enable:	; 0 bytes @ 0x2
	global	?_setLoad_Enable
?_setLoad_Enable:	; 0 bytes @ 0x2
	global	??_getLoad_ERROR
??_getLoad_ERROR:	; 0 bytes @ 0x2
	global	??_getLoad_Safe
??_getLoad_Safe:	; 0 bytes @ 0x2
	global	?_setSw_Enable
?_setSw_Enable:	; 0 bytes @ 0x2
	global	??_setLoad_Initialization
??_setLoad_Initialization:	; 0 bytes @ 0x2
	global	?_setBuz_Enable
?_setBuz_Enable:	; 0 bytes @ 0x2
	global	?_setDimmerLights_AdjGo
?_setDimmerLights_AdjGo:	; 0 bytes @ 0x2
	global	?_setDimmerLights_TriggerAdj
?_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x2
	global	?_setDimmer_TempERROR
?_setDimmer_TempERROR:	; 0 bytes @ 0x2
	global	?_setDimmer_LoadERROR
?_setDimmer_LoadERROR:	; 0 bytes @ 0x2
	global	?_setDimmer_PFERROR
?_setDimmer_PFERROR:	; 0 bytes @ 0x2
	global	??_getAD
??_getAD:	; 0 bytes @ 0x2
	global	?_setRF_Learn
?_setRF_Learn:	; 0 bytes @ 0x2
	global	setBuz_Enable@command
setBuz_Enable@command:	; 1 bytes @ 0x2
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
	global	setDimmerLights_Open@command
setDimmerLights_Open@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Close@command
setDimmerLights_Close@command:	; 1 bytes @ 0x2
	global	setDimmer_TempERROR@command
setDimmer_TempERROR@command:	; 1 bytes @ 0x2
	global	setDimmer_LoadERROR@command
setDimmer_LoadERROR@command:	; 1 bytes @ 0x2
	global	setDimmer_PFERROR@command
setDimmer_PFERROR@command:	; 1 bytes @ 0x2
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
	global	setLED_Main@led
setLED_Main@led:	; 1 bytes @ 0x2
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
	global	getLoad_ERROR@load
getLoad_ERROR@load:	; 1 bytes @ 0x2
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
	global	??_DelayOff_Initialization
??_DelayOff_Initialization:	; 0 bytes @ 0x3
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
	global	??_setDimmer_PFERROR
??_setDimmer_PFERROR:	; 0 bytes @ 0x3
	global	??_LED_Main
??_LED_Main:	; 0 bytes @ 0x3
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
	global	setDimmer_PFERROR@dimmer
setDimmer_PFERROR@dimmer:	; 1 bytes @ 0x3
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
	global	setTxData@rf
setTxData@rf:	; 1 bytes @ 0x3
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
	global	setBuz_Main@buz
setBuz_Main@buz:	; 1 bytes @ 0x4
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
	global	setLoad_StatusOff@load
setLoad_StatusOff@load:	; 1 bytes @ 0x4
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
	global	??_Buzzer_Main
??_Buzzer_Main:	; 0 bytes @ 0x5
	global	??_setDelayOff_GO
??_setDelayOff_GO:	; 0 bytes @ 0x5
	global	??_LED_Initialization
??_LED_Initialization:	; 0 bytes @ 0x5
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
	global	CC2500_InitSetREG@temp1
CC2500_InitSetREG@temp1:	; 1 bytes @ 0x6
	global	CC2500_InitPATable@temp
CC2500_InitPATable@temp:	; 1 bytes @ 0x6
	global	setDelayOff_GO@sw
setDelayOff_GO@sw:	; 1 bytes @ 0x6
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
	global	?_getPowerFault_AD
?_getPowerFault_AD:	; 0 bytes @ 0x7
	global	??_Flash_Memory_Main
??_Flash_Memory_Main:	; 0 bytes @ 0x7
	global	??_Sw_OffFunc
??_Sw_OffFunc:	; 0 bytes @ 0x7
	global	CC2500_InitSetREG@temp2
CC2500_InitSetREG@temp2:	; 1 bytes @ 0x7
	global	CC2500_InitPATable@loop_d
CC2500_InitPATable@loop_d:	; 1 bytes @ 0x7
	global	getLoad_AD@channel
getLoad_AD@channel:	; 1 bytes @ 0x7
	global	getTemp_AD@channel
getTemp_AD@channel:	; 1 bytes @ 0x7
	global	getPowerFault_AD@channel
getPowerFault_AD@channel:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_getLoad_AD
??_getLoad_AD:	; 0 bytes @ 0x8
	global	??_getTemp_AD
??_getTemp_AD:	; 0 bytes @ 0x8
	global	??_getPowerFault_AD
??_getPowerFault_AD:	; 0 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	CC2500_InitSetREG@loop_c
CC2500_InitSetREG@loop_c:	; 1 bytes @ 0x8
	global	setDimmerLights@lights
setDimmerLights@lights:	; 1 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	?_setBuz
?_setBuz:	; 0 bytes @ 0x9
	global	??_CC2500_PowerOnInitial
??_CC2500_PowerOnInitial:	; 0 bytes @ 0x9
	global	setBuz@count
setBuz@count:	; 1 bytes @ 0x9
	global	Sw_OffFunc@sw
Sw_OffFunc@sw:	; 1 bytes @ 0x9
	ds	1
	global	setBuz@time
setBuz@time:	; 2 bytes @ 0xA
	ds	2
	global	??_setBuz
??_setBuz:	; 0 bytes @ 0xC
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
	global	getTemp_AD@temp
getTemp_AD@temp:	; 1 bytes @ 0xC
	global	getPowerFault_AD@pf
getPowerFault_AD@pf:	; 1 bytes @ 0xC
	ds	1
	global	setBuz@buz
setBuz@buz:	; 1 bytes @ 0xD
	global	getLoad_AD@load
getLoad_AD@load:	; 1 bytes @ 0xD
	ds	1
	global	??_DlyOff_Main
??_DlyOff_Main:	; 0 bytes @ 0xE
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
	global	?_setPowerFault_ERROR
?_setPowerFault_ERROR:	; 0 bytes @ 0xF
	global	??_setSw_Main
??_setSw_Main:	; 0 bytes @ 0xF
	global	getLoad_AD@i
getLoad_AD@i:	; 1 bytes @ 0xF
	global	setLoad_ERROR@command
setLoad_ERROR@command:	; 1 bytes @ 0xF
	global	setOverTemp_ERROR@command
setOverTemp_ERROR@command:	; 1 bytes @ 0xF
	global	setPowerFault_ERROR@command
setPowerFault_ERROR@command:	; 1 bytes @ 0xF
	global	setLog_Code@rf
setLog_Code@rf:	; 1 bytes @ 0xF
	ds	1
	global	??_setLoad_ERROR
??_setLoad_ERROR:	; 0 bytes @ 0x10
	global	??_setOverTemp_ERROR
??_setOverTemp_ERROR:	; 0 bytes @ 0x10
	global	??_setPowerFault_ERROR
??_setPowerFault_ERROR:	; 0 bytes @ 0x10
	global	DlyOff_Main@sw
DlyOff_Main@sw:	; 1 bytes @ 0x10
	global	setRFSW_Control@sw
setRFSW_Control@sw:	; 1 bytes @ 0x10
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x10
	ds	1
	global	??_DelayOff_Main
??_DelayOff_Main:	; 0 bytes @ 0x11
	global	setLoad_ERROR@load
setLoad_ERROR@load:	; 1 bytes @ 0x11
	global	setOverTemp_ERROR@temp
setOverTemp_ERROR@temp:	; 1 bytes @ 0x11
	global	setPowerFault_ERROR@pf
setPowerFault_ERROR@pf:	; 1 bytes @ 0x11
	global	_setSw_Main$18099
_setSw_Main$18099:	; 1 bytes @ 0x11
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x11
	ds	1
	global	??_setLoad_Main
??_setLoad_Main:	; 0 bytes @ 0x12
	global	??_setTemp_Main
??_setTemp_Main:	; 0 bytes @ 0x12
	global	??_setPowerFault_Main
??_setPowerFault_Main:	; 0 bytes @ 0x12
	global	setSw_Main@sw
setSw_Main@sw:	; 1 bytes @ 0x12
	ds	1
	global	??_Switch_Main
??_Switch_Main:	; 0 bytes @ 0x13
	ds	1
	global	setPowerFault_Main@pf
setPowerFault_Main@pf:	; 1 bytes @ 0x14
	ds	1
	global	??_PowerFault_Main
??_PowerFault_Main:	; 0 bytes @ 0x15
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
	global	?_setDimmerLights_Adj
?_setDimmerLights_Adj:	; 0 bytes @ 0x2D
	global	??_Flash_Memory_Initialization
??_Flash_Memory_Initialization:	; 0 bytes @ 0x2D
	global	setDimmerLights_Adj@status
setDimmerLights_Adj@status:	; 1 bytes @ 0x2D
	ds	1
	global	??_setDimmerLights_Adj
??_setDimmerLights_Adj:	; 0 bytes @ 0x2E
	global	Flash_Memory_Initialization@i
Flash_Memory_Initialization@i:	; 1 bytes @ 0x2E
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2F
	ds	1
	global	setDimmerLights_Adj@lights
setDimmerLights_Adj@lights:	; 1 bytes @ 0x30
	ds	1
	global	??_setDimmerLights_Main
??_setDimmerLights_Main:	; 0 bytes @ 0x31
	global	setDimmerLights_Main@open
setDimmerLights_Main@open:	; 1 bytes @ 0x31
	ds	1
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x32
	global	setDimmerLights_Main@close
setDimmerLights_Main@close:	; 1 bytes @ 0x32
	ds	1
	global	setDimmerLights_Main@lights
setDimmerLights_Main@lights:	; 1 bytes @ 0x33
	ds	1
	global	??_DimmerLights_Main
??_DimmerLights_Main:	; 0 bytes @ 0x34
	ds	2
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
	global	??_setDimmerLights_Initialization
??_setDimmerLights_Initialization:	; 0 bytes @ 0x3C
	global	??_MainT
??_MainT:	; 0 bytes @ 0x3C
	global	??_setDimmerLights_AdjRF
??_setDimmerLights_AdjRF:	; 0 bytes @ 0x3C
	ds	1
	global	setDimmerLights_AdjRF@lights
setDimmerLights_AdjRF@lights:	; 1 bytes @ 0x3D
	ds	1
	global	??_setRF_DimmerValue
??_setRF_DimmerValue:	; 0 bytes @ 0x3E
	global	setDimmerLights_Initialization@lights
setDimmerLights_Initialization@lights:	; 1 bytes @ 0x3E
	ds	1
	global	??_DimmerLights_Initialization
??_DimmerLights_Initialization:	; 0 bytes @ 0x3F
	ds	1
	global	setRF_DimmerValue@lights
setRF_DimmerValue@lights:	; 1 bytes @ 0x40
	ds	1
	global	??_setRFSW_AdjControl
??_setRFSW_AdjControl:	; 0 bytes @ 0x41
	ds	2
	global	setRFSW_AdjControl@sw
setRFSW_AdjControl@sw:	; 1 bytes @ 0x43
	ds	1
	global	??_setControl_Lights_Table
??_setControl_Lights_Table:	; 0 bytes @ 0x44
	global	setControl_Lights_Table@rf
setControl_Lights_Table@rf:	; 1 bytes @ 0x44
	ds	1
	global	??_getRxData
??_getRxData:	; 0 bytes @ 0x45
	global	getRxData@rf
getRxData@rf:	; 1 bytes @ 0x45
	ds	1
	global	??_setRF_Main
??_setRF_Main:	; 0 bytes @ 0x46
	ds	1
	global	setRF_Main@rf
setRF_Main@rf:	; 1 bytes @ 0x47
	ds	1
	global	_setRF_Main$16648
_setRF_Main$16648:	; 1 bytes @ 0x48
	ds	1
	global	??_RF_Main
??_RF_Main:	; 0 bytes @ 0x49
	global	??_main
??_main:	; 0 bytes @ 0x49
	ds	1
;;Data sizes: Strings 0, constant 102, data 67, bss 213, persistent 4 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7      14
;; BANK0           80     74      80
;; BANK1           80      0      73
;; BANK2           80      0      61
;; BANK3           80      0      67
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
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_getAD	int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
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
;; Dimmer	PTR struct Dimmer size(1) Largest target is 2
;;		 -> NULL(NULL[0]), Dimmer1(BANK1[2]), 
;;
;; Memory	PTR struct FlashMemory size(1) Largest target is 37
;;		 -> NULL(NULL[0]), VarMemory(BANK3[37]), 
;;
;; DimmerLights11	PTR struct DimmerLights size(1) Largest target is 10
;;		 -> NULL(NULL[0]), DimmerLights1(BANK2[10]), 
;;
;; DimmerLights	PTR struct DimmerLights size(1) Largest target is 10
;;		 -> NULL(NULL[0]), DimmerLights1(BANK2[10]), 
;;
;; Product	PTR struct Product size(1) Largest target is 30
;;		 -> NULL(NULL[0]), VarProduct(BANK3[30]), 
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
;;   _PowerFault_Main->_setPowerFault_Main
;;   _Load_Main->_setLoad_Main
;;   _Temp_Main->_setTemp_Main
;;   _setRFSW_AdjControl->_setRF_DimmerValue
;;   _setPowerFault_Main->_setPowerFault_ERROR
;;   _setTemp_Main->_setOverTemp_ERROR
;;   _setLoad_Main->_setLoad_ERROR
;;   _DimmerLights_Main->_setDimmerLights_Main
;;   _setRF_DimmerValue->_setDimmerLights_AdjRF
;;   _setPowerFault_ERROR->_DimmerLights_ERROR
;;   _setOverTemp_ERROR->_DimmerLights_ERROR
;;   _setLoad_ERROR->_DimmerLights_ERROR
;;   _Switch_Main->_setSw_Main
;;   _Flash_Memory_Main->_Flash_Memory_Modify
;;   _MainT->_getPercentValue
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
;;   _PowerFault_Initialization->_setPowerFault_Initialization
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
;;   _setPowerFault_Initialization->_PowerFaultPointSelect
;;   _setTemp_Initialization->_TempPointSelect
;;   _setLoad_Initialization->_LoadPointSelect
;;   _setLoad_Initialization->_setLoad_AH_AL_Restore
;;   _setSw_Enable->_SwPointSelect
;;   _getLoad_Safe->_LoadPointSelect
;;   _getPF_Safe->_PowerFaultPointSelect
;;   _getTemp_Safe->_TempPointSelect
;;   _getLoad_ERROR->_LoadPointSelect
;;   _getPF_ERROR->_PowerFaultPointSelect
;;   _getTemp_ERROR->_TempPointSelect
;;   _setLoad_Enable->_LoadPointSelect
;;   _setTemp_Enable->_TempPointSelect
;;   _getPowerFault_AD->_getAD
;;   _getTemp_AD->_getAD
;;   _getLoad_AD->_getAD
;;   _RF_Initialization->_setRF_Initialization
;;   _Mcu_Initialization->_TMR0_Set
;;   _setLED_Main->_LedPointSelect
;;   _setDimmer_PFERROR->_DimmerPointSelect
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
;; (0) _main                                                 1     1      0   38396
;;                                             73 BANK0      1     1      0
;;               _MainT_Initialization
;;                 _Mcu_Initialization
;;        _Flash_Memory_Initialization
;;                 _LED_Initialization
;;              _Buzzer_Initialization
;;        _DimmerLights_Initialization
;;                _Temp_Initialization
;;                _Load_Initialization
;;          _PowerFault_Initialization
;;            _DelayOff_Initialization
;;              _Switch_Initialization
;;                  _RF_Initialization
;;              _CC2500_PowerOnInitial
;;                         _getLoad_AD
;;                         _getTemp_AD
;;                   _getPowerFault_AD
;;                              _MainT
;;                  _Flash_Memory_Main
;;                        _Buzzer_Main
;;                           _LED_Main
;;                          _Temp_Main
;;                          _Load_Main
;;                    _PowerFault_Main
;;                  _DimmerLights_Main
;;                        _Switch_Main
;;                            _RF_Main
;;                      _DelayOff_Main
;; ---------------------------------------------------------------------------------
;; (1) _RF_Main                                              0     0      0    7615
;;                         _setRF_Main
;; ---------------------------------------------------------------------------------
;; (2) _setRF_Main                                           3     3      0    7615
;;                                             70 BANK0      3     3      0
;;                      _RfPointSelect
;;                       _RF_RxDisable
;;                      _CC2500_RxData
;;                          _getRxData
;;                      _CC2500_TxData
;;                _CC2500_WriteCommand
;;                          _setINT_GO
;; ---------------------------------------------------------------------------------
;; (3) _getRxData                                            2     2      0    6688
;;                                             69 BANK0      1     1      0
;;                      _RfPointSelect
;;                        _setLog_Code
;;            _setControl_Lights_Table
;; ---------------------------------------------------------------------------------
;; (4) _setControl_Lights_Table                              1     1      0    6070
;;                                             68 BANK0      1     1      0
;;                      _RfPointSelect
;;                    _setDimmerLights
;;                     _setRFSW_Status
;;                       _setSw_Status
;;                             _setBuz
;;                          _setTxData
;;                    _setRFSW_Control
;;                 _setRFSW_AdjControl
;; ---------------------------------------------------------------------------------
;; (1) _PowerFault_Main                                      0     0      0    3111
;;                 _setPowerFault_Main
;; ---------------------------------------------------------------------------------
;; (1) _Load_Main                                            0     0      0    3738
;;                       _setLoad_Main
;; ---------------------------------------------------------------------------------
;; (1) _Temp_Main                                            0     0      0    3663
;;                       _setTemp_Main
;; ---------------------------------------------------------------------------------
;; (5) _setRFSW_AdjControl                                   3     3      0    2422
;;                                             65 BANK0      3     3      0
;;                    _RfSWPointSelect
;;                  _setRF_DimmerValue
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (2) _setPowerFault_Main                                   3     3      0    3111
;;                                             18 BANK0      3     3      0
;;              _PowerFaultPointSelect
;;                       _getLoad_Safe
;;                       _getTemp_Safe
;;                _setPowerFault_ERROR
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Main                                         4     4      0    3663
;;                                             18 BANK0      4     4      0
;;                    _TempPointSelect
;;                       _getLoad_Safe
;;                         _getPF_Safe
;;                  _setOverTemp_ERROR
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_Main                                         6     6      0    3738
;;                                             18 BANK0      5     5      0
;;                    _LoadPointSelect
;;                      _setLoad_ERROR
;;                            ___lwdiv
;;                             ___wmul
;;               _setDimmerLights_Open
;;              _setLoad_AH_AL_Restore
;;                       _getTemp_Safe
;;                         _getPF_Safe
;; ---------------------------------------------------------------------------------
;; (1) _DimmerLights_Main                                    0     0      0    4275
;;               _setDimmerLights_Main
;;                 _DimmerLights_Close
;; ---------------------------------------------------------------------------------
;; (6) _setRF_DimmerValue                                    3     3      0    2268
;;                                             62 BANK0      3     3      0
;;              _setDimmerLights_AdjRF
;; ---------------------------------------------------------------------------------
;; (3) _setPowerFault_ERROR                                  3     2      1    3005
;;                                             15 BANK0      3     2      1
;;              _PowerFaultPointSelect
;;                  _setDimmer_PFERROR
;;                 _DimmerLights_ERROR
;;                             _setLED
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (3) _setOverTemp_ERROR                                    3     2      1    3557
;;                                             15 BANK0      3     2      1
;;                    _TempPointSelect
;;                _setDimmer_TempERROR
;;                 _DimmerLights_ERROR
;;                             _setLED
;;                       _setSw_Enable
;;                       _setRF_Enable
;;                             _setBuz
;; ---------------------------------------------------------------------------------
;; (3) _setLoad_ERROR                                        3     2      1    3058
;;                                             15 BANK0      3     2      1
;;                    _LoadPointSelect
;;                _setDimmer_LoadERROR
;;                 _DimmerLights_ERROR
;;                             _setLED
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (1) _Switch_Main                                          0     0      0    3360
;;                         _setSw_Main
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Main                                    0     0      0     307
;;                _Flash_Memory_Modify
;; ---------------------------------------------------------------------------------
;; (1) _MainT                                                1     1      0    3624
;;                                             60 BANK0      1     1      0
;;                     _setTemp_Enable
;;                     _setLoad_Enable
;;                      _getTemp_ERROR
;;                        _getPF_ERROR
;;                      _getLoad_ERROR
;;            _DimmerLightsPointSelect
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                             _setBuz
;;                       _getTemp_Safe
;;                         _getPF_Safe
;;                       _getLoad_Safe
;;                    _getPercentValue
;;                       _setSw_Enable
;;                       _setRF_Enable
;; ---------------------------------------------------------------------------------
;; (2) _setDimmerLights_Main                                 3     3      0    3948
;;                                             49 BANK0      3     3      0
;;            _DimmerLightsPointSelect
;;               _setDimmerLights_Open
;;              _setDimmerLights_Close
;;                    _setDimmerLights
;;            _getDimmerLights_Trigger
;;                _setDimmerLights_Adj
;;                             _setBuz
;; ---------------------------------------------------------------------------------
;; (1) _DimmerLights_Initialization                          1     1      0    2224
;;                                             63 BANK0      1     1      0
;;     _setDimmerLights_Initialization
;; ---------------------------------------------------------------------------------
;; (2) _setSw_Main                                           4     4      0    3360
;;                                             15 BANK0      4     4      0
;;                      _SwPointSelect
;;                          _Sw_OnFunc
;;                         _Sw_AdjFunc
;;                        _setRF_Learn
;;                             _setBuz
;;                         _Sw_OffFunc
;; ---------------------------------------------------------------------------------
;; (2) _Flash_Memory_Modify                                  3     3      0     307
;;                                              4 BANK0      3     3      0
;;                  _Flash_Memory_Read
;;               _Flash_Memory_Erasing
;;                 _Flash_Memory_Write
;; ---------------------------------------------------------------------------------
;; (4) _setRF_Enable                                         2     1      1     304
;;                                              5 BANK0      2     1      1
;;                      _RfPointSelect
;;                _CC2500_WriteCommand
;;                       _RF_RxDisable
;; ---------------------------------------------------------------------------------
;; (1) _Switch_Initialization                                0     0      0    1031
;;                         _TouchPower
;;               _setSw_Initialization
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (1) _Flash_Memory_Initialization                          2     2      0    1438
;;                                             45 BANK0      2     2      0
;;                  _Flash_Memory_Read
;;                    _setPercentValue
;;                 _Flash_Memory_Write
;; ---------------------------------------------------------------------------------
;; (1) _LED_Initialization                                   0     0      0     628
;;              _setLED_Initialization
;; ---------------------------------------------------------------------------------
;; (7) _setDimmerLights_AdjRF                                2     2      0    2202
;;                                             60 BANK0      2     2      0
;;            _DimmerLightsPointSelect
;;                    _getPercentValue
;; ---------------------------------------------------------------------------------
;; (4) _DimmerLights_ERROR                                   1     1      0    1971
;;                                             14 BANK0      1     1      0
;;                _getDimmer_TempERROR
;;         _getDimmerLights_StatusFlag
;;                             _setBuz
;;              _setDimmerLights_ERROR
;;                _getDimmer_LoadERROR
;;                  _getDimmer_PFERROR
;;       _setDimmerLights_TriggerERROR
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Adj                                  4     3      1    1595
;;                                             45 BANK0      4     3      1
;;            _DimmerLightsPointSelect
;;                  _setLoad_StatusOff
;;                 _setRF_DimmerLights
;;                          _setTxData
;;                    _setPercentValue
;; ---------------------------------------------------------------------------------
;; (2) _setDimmerLights_Initialization                       3     3      0    2224
;;                                             60 BANK0      3     3      0
;;            _DimmerLightsPointSelect
;;                    _getPercentValue
;; ---------------------------------------------------------------------------------
;; (1) _DelayOff_Main                                        0     0      0    1265
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
;; (1) _Buzzer_Initialization                                0     0      0      84
;;              _setBuz_Initialization
;; ---------------------------------------------------------------------------------
;; (3) _Sw_OffFunc                                           3     3      0    1099
;;                                              7 BANK0      3     3      0
;;         _setDimmerLights_TriggerAdj
;;              _setDimmerLights_AdjGo
;;                 _setRF_DimmerLights
;;                          _setTxData
;;                     _setDelayOff_GO
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;; ---------------------------------------------------------------------------------
;; (3) _Sw_AdjFunc                                           1     1      0     345
;;                                              4 BANK0      1     1      0
;;                     _setRFSW_Status
;;         _setDimmerLights_TriggerAdj
;;              _setDimmerLights_AdjGo
;; ---------------------------------------------------------------------------------
;; (3) _Sw_OnFunc                                            1     1      0    1128
;;                                             14 BANK0      1     1      0
;;                             _setBuz
;;                     _setRFSW_Status
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                 _setRF_DimmerLights
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (2) _setSw_Initialization                                 1     1      0     531
;;                                              4 BANK0      1     1      0
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (5) _setRFSW_Control                                      3     3      0    1713
;;                                             14 BANK0      3     3      0
;;                    _RfSWPointSelect
;;                     _setDelayOff_GO
;;                       _setSw_Status
;;                 _setRF_DimmerLights
;;            _setDimmerLights_Trigger
;;             _setDimmerLights_Switch
;;                             _setBuz
;;                          _setTxData
;; ---------------------------------------------------------------------------------
;; (4) _setLog_Code                                          2     2      0     565
;;                                             14 BANK0      2     2      0
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
;; (1) _PowerFault_Initialization                            0     0      0      31
;;       _setPowerFault_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Load_Initialization                                  0     0      0     174
;;             _setLoad_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _Temp_Initialization                                  0     0      0      31
;;             _setTemp_Initialization
;; ---------------------------------------------------------------------------------
;; (1) _LED_Main                                             0     0      0     190
;;                        _setLED_Main
;; ---------------------------------------------------------------------------------
;; (2) _setLED_Initialization                                1     1      0     628
;;                                              4 BANK0      1     1      0
;;                     _LedPointSelect
;;                             _setLED
;; ---------------------------------------------------------------------------------
;; (4) _setPercentValue                                      1     1      0    1072
;;                                             44 BANK0      1     1      0
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights_ERROR                                2     2      0    1022
;;                                              5 BANK0      2     2      0
;;            _DimmerLightsPointSelect
;;                  _setLoad_StatusOff
;;                             _setLED
;;                       _setSw_Status
;;                     _setRFSW_Status
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights                                      3     2      1    1149
;;                                              6 BANK0      3     2      1
;;            _DimmerLightsPointSelect
;;                             _setLED
;;                   _setLoad_StatusOn
;;                      _setLoad_Count
;;                   _setDimmer_Detect
;;                         _setLoad_GO
;;               _setLoad_LightsStatus
;; ---------------------------------------------------------------------------------
;; (2) _DimmerLights_Close                                   0     0      0     327
;;                   _getDimmer_Detect
;;                   _setDimmer_Detect
;;         _getDimmerLights_StatusFlag
;;                         _setLoad_GO
;; ---------------------------------------------------------------------------------
;; (8) _getPercentValue                                      3     3      0    2158
;;                                             57 BANK0      3     3      0
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (2) _DlyOff_Main                                          3     3      0    1265
;;                                             14 BANK0      3     3      0
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
;; (1) _Buzzer_Main                                          0     0      0      66
;;                        _setBuz_Main
;; ---------------------------------------------------------------------------------
;; (2) _setBuz_Initialization                                1     1      0      84
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
;; (5) ___ftdiv                                             16    10      6     489
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
;; (2) _setPowerFault_Initialization                         1     1      0      31
;;                                              1 BANK0      1     1      0
;;              _PowerFaultPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Initialization                               1     1      0      31
;;                                              1 BANK0      1     1      0
;;                    _TempPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_Initialization                               1     1      0     174
;;                                              2 BANK0      1     1      0
;;                    _LoadPointSelect
;;              _setLoad_AH_AL_Restore
;; ---------------------------------------------------------------------------------
;; (4) _Flash_Memory_Unlock                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _setSw_Enable                                         2     1      1      84
;;                                              2 BANK0      2     1      1
;;                      _SwPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getLoad_Safe                                         2     2      0      44
;;                                              2 BANK0      2     2      0
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getPF_Safe                                           1     1      0      31
;;                                              1 BANK0      1     1      0
;;              _PowerFaultPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getTemp_Safe                                         1     1      0      31
;;                                              1 BANK0      1     1      0
;;                    _TempPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _getLoad_ERROR                                        1     1      0      53
;;                                              2 BANK0      1     1      0
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _getPF_ERROR                                          1     1      0      31
;;                                              1 BANK0      1     1      0
;;              _PowerFaultPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _getTemp_ERROR                                        1     1      0      31
;;                                              1 BANK0      1     1      0
;;                    _TempPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setLoad_Enable                                       2     1      1      84
;;                                              2 BANK0      2     1      1
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setTemp_Enable                                       2     1      1      62
;;                                              1 BANK0      2     1      1
;;                    _TempPointSelect
;; ---------------------------------------------------------------------------------
;; (1) _getPowerFault_AD                                     6     5      1      88
;;                                              7 BANK0      6     5      1
;;              _PowerFaultPointSelect
;;                              _getAD
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
;; (2) _setLED_Main                                          1     1      0     190
;;                                              2 BANK0      1     1      0
;;                     _LedPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmer_PFERROR                                    2     1      1      84
;;                                              2 BANK0      2     1      1
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmer_LoadERROR                                  2     1      1      84
;;                                              2 BANK0      2     1      1
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmer_TempERROR                                  2     1      1      84
;;                                              2 BANK0      2     1      1
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmerLights_TriggerAdj                           2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setDimmerLights_AdjGo                                2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_LightsStatus                                 4     2      2     176
;;                                              2 BANK0      4     2      2
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_StatusOn                                     2     1      1      84
;;                                              2 BANK0      2     1      1
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLED                                               2     1      1     500
;;                                              2 BANK0      2     1      1
;;                     _LedPointSelect
;; ---------------------------------------------------------------------------------
;; (4) _setLoad_StatusOff                                    3     1      2     177
;;                                              2 BANK0      3     1      2
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _setDimmerLights_TriggerERROR                         3     2      1     154
;;                                              2 BANK0      3     2      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _getDimmer_PFERROR                                    1     1      0      53
;;                                              2 BANK0      1     1      0
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _getDimmer_LoadERROR                                  1     1      0      53
;;                                              2 BANK0      1     1      0
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (5) _getDimmer_TempERROR                                  1     1      0      53
;;                                              2 BANK0      1     1      0
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getDimmerLights_Trigger                              4     4      0     115
;;                                              2 BANK0      4     4      0
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Close                                2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _setDimmerLights_Open                                 2     1      1      84
;;                                              2 BANK0      2     1      1
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_GO                                           2     1      1      84
;;                                              2 BANK0      2     1      1
;;                    _LoadPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getDimmerLights_StatusFlag                           4     4      0     115
;;                                              2 BANK0      4     4      0
;;            _DimmerLightsPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setDimmer_Detect                                     2     1      1      84
;;                                              2 BANK0      2     1      1
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (3) _getDimmer_Detect                                     2     2      0      44
;;                                              2 BANK0      2     2      0
;;                  _DimmerPointSelect
;; ---------------------------------------------------------------------------------
;; (6) _setDelayOff_GO                                       4     2      2     315
;;                                              3 BANK0      4     2      2
;;                _DelayOffPointSelect
;;                     _DelayTimejudge
;; ---------------------------------------------------------------------------------
;; (3) _setTxData                                            2     2      0      44
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
;; (3) _CC2500_WriteCommand                                  2     2      0      68
;;                                              2 BANK0      2     2      0
;;                   _CC2500_WriteByte
;; ---------------------------------------------------------------------------------
;; (3) _setBuz                                               5     2      3     521
;;                                              9 BANK0      5     2      3
;;                     _BuzPointSelect
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (3) _setBuz_Enable                                        2     1      1      84
;;                                              2 BANK0      2     1      1
;;                     _BuzPointSelect
;; ---------------------------------------------------------------------------------
;; (2) _setBuz_Main                                          3     3      0      66
;;                                              2 BANK0      3     3      0
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
;; (3) ___wmul                                               6     2      4     136
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
;; (4) _PowerFaultPointSelect                                2     2      0       0
;;                                              0 BANK0      1     1      0
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
;; (3) _setINT_GO                                            1     1      0      31
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
;; (7) _LedPointSelect                                       2     2      0      66
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (7) _DimmerPointSelect                                    2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (6) _setLoad_Count                                        3     2      1      44
;;                                              0 BANK0      2     1      1
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
;;                                              6 COMMON     1     1      0
;;                            _IOC_ISR
;;                           _TMR0_ISR
;;                            _INT_ISR
;; ---------------------------------------------------------------------------------
;; (12) _INT_ISR                                             0     0      0     117
;;                    _setRF_ReceiveGO
;; ---------------------------------------------------------------------------------
;; (12) _TMR0_ISR                                            1     1      0     438
;;                                              5 COMMON     1     1      0
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
;; (12) _IOC_ISR                                             0     0      0       0
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
;;       ___awtoft
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___ftdiv
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
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
;;   _DimmerLights_Initialization
;;     _setDimmerLights_Initialization
;;       _DimmerLightsPointSelect
;;       _getPercentValue
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
;;   _Temp_Initialization
;;     _setTemp_Initialization
;;       _TempPointSelect
;;   _Load_Initialization
;;     _setLoad_Initialization
;;       _LoadPointSelect
;;       _setLoad_AH_AL_Restore
;;   _PowerFault_Initialization
;;     _setPowerFault_Initialization
;;       _PowerFaultPointSelect
;;   _DelayOff_Initialization
;;     _DlyOff_Initialization
;;       _DelayOffPointSelect
;;   _Switch_Initialization
;;     _TouchPower
;;     _setSw_Initialization
;;       _setLED
;;         _LedPointSelect
;;     _setLED
;;       _LedPointSelect
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
;;   _getPowerFault_AD
;;     _PowerFaultPointSelect
;;     _getAD
;;   _MainT
;;     _setTemp_Enable
;;       _TempPointSelect
;;     _setLoad_Enable
;;       _LoadPointSelect
;;     _getTemp_ERROR
;;       _TempPointSelect
;;     _getPF_ERROR
;;       _PowerFaultPointSelect
;;     _getLoad_ERROR
;;       _LoadPointSelect
;;     _DimmerLightsPointSelect
;;     _setDimmerLights_Trigger
;;       _DimmerLightsPointSelect
;;     _setDimmerLights_Switch
;;       _DimmerLightsPointSelect
;;     _setBuz
;;       _BuzPointSelect
;;       ___awdiv
;;     _getTemp_Safe
;;       _TempPointSelect
;;     _getPF_Safe
;;       _PowerFaultPointSelect
;;     _getLoad_Safe
;;       _LoadPointSelect
;;     _getPercentValue
;;       ___awtoft
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
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
;;       _getPF_Safe
;;         _PowerFaultPointSelect
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
;;         _setBuz
;;           _BuzPointSelect
;;           ___awdiv
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
;;       _getPF_Safe
;;         _PowerFaultPointSelect
;;   _PowerFault_Main
;;     _setPowerFault_Main
;;       _PowerFaultPointSelect
;;       _getLoad_Safe
;;         _LoadPointSelect
;;       _getTemp_Safe
;;         _TempPointSelect
;;       _setPowerFault_ERROR
;;         _PowerFaultPointSelect
;;         _setDimmer_PFERROR
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
;;           ___awtoft
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;           ___ftdiv
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
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
;;         _setDelayOff_GO
;;           _DelayOffPointSelect
;;           _DelayTimejudge
;;         _setDimmerLights_Trigger
;;           _DimmerLightsPointSelect
;;         _setDimmerLights_Switch
;;           _DimmerLightsPointSelect
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
;;             _setRF_DimmerLights
;;             _setDimmerLights_Trigger
;;               _DimmerLightsPointSelect
;;             _setDimmerLights_Switch
;;               _DimmerLightsPointSelect
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
;;COMMON               E      7       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0      12       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4A      50       5      100.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BANK1               50      0      49       7       91.3%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BITBANK2            50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BANK2               50      0      3D       9       76.3%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITBANK3            50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK3               50      0      43      11       83.8%
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
;;ABS                  0      0     16E      20        0.0%
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
;;DATA                 0      0     180      31        0.0%
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
;;		_DimmerLights_Initialization
;;		_Temp_Initialization
;;		_Load_Initialization
;;		_PowerFault_Initialization
;;		_DelayOff_Initialization
;;		_Switch_Initialization
;;		_RF_Initialization
;;		_CC2500_PowerOnInitial
;;		_getLoad_AD
;;		_getTemp_AD
;;		_getPowerFault_AD
;;		_MainT
;;		_Flash_Memory_Main
;;		_Buzzer_Main
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
	file	"G:\Program\PIC\Source_File\main.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [allreg]
	line	8
	
l22152:	
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
;main.c: 15: DimmerLights_Initialization();
	fcall	_DimmerLights_Initialization
	line	18
;main.c: 18: Temp_Initialization();
	fcall	_Temp_Initialization
	line	19
;main.c: 19: Load_Initialization();
	fcall	_Load_Initialization
	line	20
;main.c: 20: PowerFault_Initialization();
	fcall	_PowerFault_Initialization
	line	21
;main.c: 21: DelayOff_Initialization();
	fcall	_DelayOff_Initialization
	line	23
;main.c: 23: Switch_Initialization();
	fcall	_Switch_Initialization
	line	24
	
l22154:	
;main.c: 24: RF_Initialization();
	fcall	_RF_Initialization
	line	25
	
l22156:	
;main.c: 25: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l22158
	line	27
;main.c: 27: while(1)
	
l7161:	
	line	29
	
l22158:	
;main.c: 28: {
;main.c: 29: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u11241
	goto	u11240
u11241:
	goto	l22162
u11240:
	line	33
	
l22160:	
;main.c: 30: {
;main.c: 33: getLoad_AD(1,0x05);
	movlw	(05h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_getLoad_AD)
	movlw	(01h)
	fcall	_getLoad_AD
	line	36
;main.c: 36: getTemp_AD(1,0x09);
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_getTemp_AD)
	movlw	(01h)
	fcall	_getTemp_AD
	line	39
;main.c: 39: getPowerFault_AD(1,0x11);
	movlw	(011h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_getPowerFault_AD)
	movlw	(01h)
	fcall	_getPowerFault_AD
	goto	l22162
	line	41
	
l7162:	
	line	43
	
l22162:	
;main.c: 41: }
;main.c: 43: if(TMain->T0_Timerout)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u11251
	goto	u11250
u11251:
	goto	l22158
u11250:
	line	45
	
l22164:	
;main.c: 44: {
;main.c: 45: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	46
	
l22166:	
;main.c: 46: MainT();
	fcall	_MainT
	line	47
	
l22168:	
;main.c: 47: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u11261
	goto	u11260
u11261:
	goto	l22158
u11260:
	line	49
	
l22170:	
;main.c: 48: {
;main.c: 49: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	50
;main.c: 50: Buzzer_Main();
	fcall	_Buzzer_Main
	line	51
;main.c: 51: LED_Main();
	fcall	_LED_Main
	line	54
;main.c: 54: Temp_Main();
	fcall	_Temp_Main
	line	55
	
l22172:	
;main.c: 55: Load_Main();
	fcall	_Load_Main
	line	56
	
l22174:	
;main.c: 56: PowerFault_Main();
	fcall	_PowerFault_Main
	line	58
	
l22176:	
;main.c: 58: DimmerLights_Main();
	fcall	_DimmerLights_Main
	line	59
	
l22178:	
;main.c: 59: Switch_Main();
	fcall	_Switch_Main
	line	60
	
l22180:	
;main.c: 60: RF_Main();
	fcall	_RF_Main
	line	61
	
l22182:	
;main.c: 61: DelayOff_Main();
	fcall	_DelayOff_Main
	goto	l22158
	line	63
	
l7164:	
	goto	l22158
	line	64
	
l7163:	
	goto	l22158
	line	65
	
l7165:	
	line	27
	goto	l22158
	
l7166:	
	line	66
	
l7167:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RF_Main
psect	text4869,local,class=CODE,delta=2
global __ptext4869
__ptext4869:

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
psect	text4869
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	25
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
	opt	stack 2
; Regs used in _RF_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	27
	
l22150:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l13140:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Main
	__end_of_RF_Main:
;; =============== function _RF_Main ends ============

	signat	_RF_Main,88
	global	_setRF_Main
psect	text4870,local,class=CODE,delta=2
global __ptext4870
__ptext4870:

;; *************** function _setRF_Main *****************
;; Defined at:
;;		line 59 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text4870
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
	
l22094:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf),w
	fcall	_RfPointSelect
	line	61
	
l22096:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u11121
	goto	u11120
u11121:
	goto	l13168
u11120:
	line	72
	
l22098:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 72: RF->Key=((RA0 || RB1 || RA6 || RA4) && RF->Learn == 0)?1:0;
	movlb 0	; select bank0
	clrf	(_setRF_Main$16648)
	btfsc	(96/8),(96)&7
	goto	u11131
	goto	u11130
u11131:
	goto	l22106
u11130:
	
l22100:	
	btfsc	(105/8),(105)&7
	goto	u11141
	goto	u11140
u11141:
	goto	l22106
u11140:
	
l22102:	
	btfsc	(102/8),(102)&7
	goto	u11151
	goto	u11150
u11151:
	goto	l22106
u11150:
	
l22104:	
	btfss	(100/8),(100)&7
	goto	u11161
	goto	u11160
u11161:
	goto	l22110
u11160:
	goto	l22106
	
l20700:	
	
l22106:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u11171
	goto	u11170
u11171:
	goto	l22110
u11170:
	
l22108:	
	clrf	(_setRF_Main$16648)
	bsf	status,0
	rlf	(_setRF_Main$16648),f
	goto	l22110
	
l13157:	
	
l22110:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_setRF_Main$16648),w
	bcf	indf1,7
	skipz
	bsf	indf1,7
	line	75
	
l22112:	
;RF_Control_B1.c: 75: if(RF->Key)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u11181
	goto	u11180
u11181:
	goto	l22116
u11180:
	line	77
	
l22114:	
;RF_Control_B1.c: 76: {
;RF_Control_B1.c: 77: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	78
;RF_Control_B1.c: 78: }
	goto	l13168
	line	79
	
l13158:	
	line	81
	
l22116:	
;RF_Control_B1.c: 79: else
;RF_Control_B1.c: 80: {
;RF_Control_B1.c: 81: if(RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u11191
	goto	u11190
u11191:
	goto	l22124
u11190:
	line	83
	
l22118:	
;RF_Control_B1.c: 82: {
;RF_Control_B1.c: 83: CC2500_RxData();
	fcall	_CC2500_RxData
	line	84
	
l22120:	
;RF_Control_B1.c: 84: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	85
	
l22122:	
;RF_Control_B1.c: 85: getRxData(1);
	movlw	(01h)
	fcall	_getRxData
	line	87
;RF_Control_B1.c: 87: }
	goto	l13168
	line	88
	
l13160:	
	line	90
	
l22124:	
;RF_Control_B1.c: 88: else
;RF_Control_B1.c: 89: {
;RF_Control_B1.c: 90: if(RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u11201
	goto	u11200
u11201:
	goto	l22140
u11200:
	line	92
	
l22126:	
;RF_Control_B1.c: 91: {
;RF_Control_B1.c: 92: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	93
	
l22128:	
;RF_Control_B1.c: 93: if(RF->Debounce == 0)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u11211
	goto	u11210
u11211:
	goto	l22136
u11210:
	line	95
	
l22130:	
;RF_Control_B1.c: 94: {
;RF_Control_B1.c: 95: RF->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setRF_Main+0)+0
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_Main+0)+0,w
	addwf	indf1,f
	line	96
	
l22132:	
;RF_Control_B1.c: 96: if(RF->DebounceTime == 50)
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	032h&0ffh
	skipz
	goto	u11221
	goto	u11220
u11221:
	goto	l13168
u11220:
	line	98
	
l22134:	
;RF_Control_B1.c: 97: {
;RF_Control_B1.c: 98: RF->DebounceTime=0;
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	99
;RF_Control_B1.c: 99: RF->Debounce=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l13168
	line	100
	
l13164:	
	line	101
;RF_Control_B1.c: 100: }
;RF_Control_B1.c: 101: }
	goto	l13168
	line	102
	
l13163:	
	line	104
	
l22136:	
;RF_Control_B1.c: 102: else
;RF_Control_B1.c: 103: {
;RF_Control_B1.c: 104: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	105
;RF_Control_B1.c: 105: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	106
	
l22138:	
;RF_Control_B1.c: 106: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l13168
	line	107
	
l13165:	
	line	108
;RF_Control_B1.c: 107: }
;RF_Control_B1.c: 108: }
	goto	l13168
	line	109
	
l13162:	
	line	111
	
l22140:	
;RF_Control_B1.c: 109: else
;RF_Control_B1.c: 110: {
;RF_Control_B1.c: 111: if(RF->RxStatus == 0 && 1)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u11231
	goto	u11230
u11231:
	goto	l13168
u11230:
	line	113
	
l22142:	
;RF_Control_B1.c: 112: {
;RF_Control_B1.c: 113: RF->RxStatus=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	114
	
l22144:	
;RF_Control_B1.c: 114: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	115
	
l22146:	
;RF_Control_B1.c: 115: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	116
	
l22148:	
;RF_Control_B1.c: 116: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l13168
	line	117
	
l13167:	
	goto	l13168
	line	118
	
l13166:	
	goto	l13168
	line	119
	
l13161:	
	goto	l13168
	line	120
	
l13159:	
	goto	l13168
	line	121
	
l13155:	
	line	122
	
l13168:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
;; =============== function _setRF_Main ends ============

	signat	_setRF_Main,4216
	global	_getRxData
psect	text4871,local,class=CODE,delta=2
global __ptext4871
__ptext4871:

;; *************** function _getRxData *****************
;; Defined at:
;;		line 158 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   69[BANK0 ] unsigned char 
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
psect	text4871
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	158
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
	opt	stack 2
; Regs used in _getRxData: [wreg+fsr1l-status,0+pclath+cstack]
;getRxData@rf stored from wreg
	line	160
	movlb 0	; select bank0
	movwf	(getRxData@rf)
	
l22048:	
;RF_Control_B1.c: 159: unsigned char i;
;RF_Control_B1.c: 160: RfPointSelect(rf);
	movf	(getRxData@rf),w
	fcall	_RfPointSelect
	line	161
	
l22050:	
;RF_Control_B1.c: 161: if(RF->Learn)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u11011
	goto	u11010
u11011:
	goto	l22058
u11010:
	line	163
	
l22052:	
;RF_Control_B1.c: 162: {
;RF_Control_B1.c: 163: if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u11021
	goto	u11020
u11021:
	goto	l13189
u11020:
	
l22054:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u11031
	goto	u11030
u11031:
	goto	l13189
u11030:
	line	165
	
l22056:	
;RF_Control_B1.c: 164: {
;RF_Control_B1.c: 165: setLog_Code(1);
	movlw	(01h)
	fcall	_setLog_Code
	goto	l13189
	line	166
	
l13177:	
	line	167
;RF_Control_B1.c: 166: }
;RF_Control_B1.c: 167: }
	goto	l13189
	line	168
	
l13176:	
	line	170
	
l22058:	
;RF_Control_B1.c: 168: else
;RF_Control_B1.c: 169: {
;RF_Control_B1.c: 170: if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u11041
	goto	u11040
u11041:
	goto	l13189
u11040:
	
l22060:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u11051
	goto	u11050
u11051:
	goto	l13189
u11050:
	line	172
	
l22062:	
;RF_Control_B1.c: 171: {
;RF_Control_B1.c: 172: if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
	movf	0+(_RF_Data)^080h+0Ch,w
	xorlw	0FFh&0ffh
	skipz
	goto	u11061
	goto	u11060
u11061:
	goto	l22070
u11060:
	
l22064:	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u11071
	goto	u11070
u11071:
	goto	l22070
u11070:
	
l22066:	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u11081
	goto	u11080
u11081:
	goto	l22070
u11080:
	line	174
	
l22068:	
;RF_Control_B1.c: 173: {
;RF_Control_B1.c: 174: _nop();
	nop
	line	175
;RF_Control_B1.c: 175: }
	goto	l13189
	line	176
	
l13180:	
	line	178
	
l22070:	
;RF_Control_B1.c: 176: else
;RF_Control_B1.c: 177: {
;RF_Control_B1.c: 178: if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
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
	goto	u11091
	goto	u11090
u11091:
	goto	l13189
u11090:
	
l22072:	
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
	goto	u11101
	goto	u11100
u11101:
	goto	l13189
u11100:
	
l22074:	
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
	goto	u11111
	goto	u11110
u11111:
	goto	l13189
u11110:
	line	180
	
l22076:	
;RF_Control_B1.c: 179: {
;RF_Control_B1.c: 180: setControl_Lights_Table(1);
	movlw	(01h)
	fcall	_setControl_Lights_Table
	goto	l13189
	line	181
	
l13182:	
	goto	l13189
	line	182
	
l13181:	
	line	183
;RF_Control_B1.c: 181: }
;RF_Control_B1.c: 182: }
;RF_Control_B1.c: 183: }
	goto	l13189
	line	184
	
l13179:	
	goto	l13189
	
l22078:	
	goto	l13189
	
l22080:	
	goto	l13189
	line	187
	
l22082:	
;RF_Control_B1.c: 185: {
;RF_Control_B1.c: 186: ;
;RF_Control_B1.c: 187: }
	goto	l13189
	line	188
	
l13184:	
	goto	l13189
	
l22084:	
	goto	l13189
	
l22086:	
	goto	l13189
	line	191
	
l22088:	
;RF_Control_B1.c: 189: {
;RF_Control_B1.c: 190: ;
;RF_Control_B1.c: 191: }
	goto	l13189
	line	192
	
l13186:	
	goto	l13189
	
l22090:	
	goto	l13189
	
l22092:	
	goto	l13189
	line	195
;RF_Control_B1.c: 193: {
;RF_Control_B1.c: 194: ;
	
l13188:	
	goto	l13189
	line	196
	
l13187:	
	goto	l13189
	
l13185:	
	goto	l13189
	
l13183:	
	goto	l13189
	
l13178:	
	line	197
	
l13189:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
;; =============== function _getRxData ends ============

	signat	_getRxData,4216
	global	_setControl_Lights_Table
psect	text4872,local,class=CODE,delta=2
global __ptext4872
__ptext4872:

;; *************** function _setControl_Lights_Table *****************
;; Defined at:
;;		line 215 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   68[BANK0 ] unsigned char 
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
psect	text4872
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	215
	global	__size_of_setControl_Lights_Table
	__size_of_setControl_Lights_Table	equ	__end_of_setControl_Lights_Table-_setControl_Lights_Table
	
_setControl_Lights_Table:	
	opt	stack 2
; Regs used in _setControl_Lights_Table: [wreg+fsr1l-status,0+pclath+cstack]
;setControl_Lights_Table@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setControl_Lights_Table@rf)
	line	216
	
l22020:	
;RF_Control_B1.c: 216: RfPointSelect(rf);
	movf	(setControl_Lights_Table@rf),w
	fcall	_RfPointSelect
	line	217
	
l22022:	
;RF_Control_B1.c: 217: if(RF_Data[15] == 0x00)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,f
	skipz
	goto	u10971
	goto	u10970
u10971:
	goto	l22034
u10970:
	line	220
	
l22024:	
;RF_Control_B1.c: 218: {
;RF_Control_B1.c: 220: setDimmerLights(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	movlw	(01h)
	fcall	_setDimmerLights
	line	221
;RF_Control_B1.c: 221: setRFSW_Status(1,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movlw	(01h)
	fcall	_setRFSW_Status
	line	222
;RF_Control_B1.c: 222: setSw_Status(1,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movlw	(01h)
	fcall	_setSw_Status
	line	235
	
l22026:	
;RF_Control_B1.c: 235: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	236
	
l22028:	
;RF_Control_B1.c: 236: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	237
	
l22030:	
;RF_Control_B1.c: 237: Product->Data[15]=0;
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	238
	
l22032:	
;RF_Control_B1.c: 238: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	239
;RF_Control_B1.c: 239: setBuz(1,1,100);
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	240
;RF_Control_B1.c: 240: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	241
;RF_Control_B1.c: 241: }
	goto	l13203
	line	242
	
l13196:	
	
l22034:	
;RF_Control_B1.c: 242: else if(RF_Data[15] == 0x20)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	020h&0ffh
	skipz
	goto	u10981
	goto	u10980
u10981:
	goto	l22040
u10980:
	line	244
	
l22036:	
;RF_Control_B1.c: 243: {
;RF_Control_B1.c: 244: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	245
;RF_Control_B1.c: 245: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	246
;RF_Control_B1.c: 246: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	247
	
l22038:	
;RF_Control_B1.c: 247: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	248
;RF_Control_B1.c: 248: }
	goto	l13203
	line	250
	
l13198:	
	
l22040:	
;RF_Control_B1.c: 250: else if(RF_Data[15] == 0x01)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u10991
	goto	u10990
u10991:
	goto	l22044
u10990:
	line	252
	
l22042:	
;RF_Control_B1.c: 251: {
;RF_Control_B1.c: 252: setRFSW_Control(1);
	movlw	(01h)
	fcall	_setRFSW_Control
	line	253
;RF_Control_B1.c: 253: }
	goto	l13203
	line	255
	
l13200:	
	
l22044:	
;RF_Control_B1.c: 255: else if(RF_Data[15] == 0x11)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u11001
	goto	u11000
u11001:
	goto	l13203
u11000:
	line	257
	
l22046:	
;RF_Control_B1.c: 256: {
;RF_Control_B1.c: 257: setRFSW_AdjControl(1);
	movlw	(01h)
	fcall	_setRFSW_AdjControl
	goto	l13203
	line	258
	
l13202:	
	goto	l13203
	line	285
	
l13201:	
	goto	l13203
	
l13199:	
	goto	l13203
	
l13197:	
	
l13203:	
	return
	opt stack 0
GLOBAL	__end_of_setControl_Lights_Table
	__end_of_setControl_Lights_Table:
;; =============== function _setControl_Lights_Table ends ============

	signat	_setControl_Lights_Table,4216
	global	_PowerFault_Main
psect	text4873,local,class=CODE,delta=2
global __ptext4873
__ptext4873:

;; *************** function _PowerFault_Main *****************
;; Defined at:
;;		line 23 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
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
psect	text4873
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	23
	global	__size_of_PowerFault_Main
	__size_of_PowerFault_Main	equ	__end_of_PowerFault_Main-_PowerFault_Main
	
_PowerFault_Main:	
	opt	stack 5
; Regs used in _PowerFault_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	25
	
l22018:	
;PowerFault_B1.c: 25: setPowerFault_Main(1);
	movlw	(01h)
	fcall	_setPowerFault_Main
	line	27
	
l11945:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFault_Main
	__end_of_PowerFault_Main:
;; =============== function _PowerFault_Main ends ============

	signat	_PowerFault_Main,88
	global	_Load_Main
psect	text4874,local,class=CODE,delta=2
global __ptext4874
__ptext4874:

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
psect	text4874
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	25
	global	__size_of_Load_Main
	__size_of_Load_Main	equ	__end_of_Load_Main-_Load_Main
	
_Load_Main:	
	opt	stack 5
; Regs used in _Load_Main: [wreg-status,0+pclath+cstack]
	line	27
	
l22016:	
;OverLoad_B1.c: 27: setLoad_Main(1);
	movlw	(01h)
	fcall	_setLoad_Main
	line	29
	
l9556:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Main
	__end_of_Load_Main:
;; =============== function _Load_Main ends ============

	signat	_Load_Main,88
	global	_Temp_Main
psect	text4875,local,class=CODE,delta=2
global __ptext4875
__ptext4875:

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
psect	text4875
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	16
	global	__size_of_Temp_Main
	__size_of_Temp_Main	equ	__end_of_Temp_Main-_Temp_Main
	
_Temp_Main:	
	opt	stack 5
; Regs used in _Temp_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	18
	
l22014:	
;OverTemperature_B1.c: 18: setTemp_Main(1);
	movlw	(01h)
	fcall	_setTemp_Main
	line	20
	
l10771:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Main
	__end_of_Temp_Main:
;; =============== function _Temp_Main ends ============

	signat	_Temp_Main,88
	global	_setRFSW_AdjControl
psect	text4876,local,class=CODE,delta=2
global __ptext4876
__ptext4876:

;; *************** function _setRFSW_AdjControl *****************
;; Defined at:
;;		line 380 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   67[BANK0 ] unsigned char 
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
psect	text4876
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	380
	global	__size_of_setRFSW_AdjControl
	__size_of_setRFSW_AdjControl	equ	__end_of_setRFSW_AdjControl-_setRFSW_AdjControl
	
_setRFSW_AdjControl:	
	opt	stack 2
; Regs used in _setRFSW_AdjControl: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_AdjControl@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_AdjControl@sw)
	line	381
	
l20518:	
;RF_Control_B1.c: 381: RfSWPointSelect(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_RfSWPointSelect
	line	382
	
l20520:	
;RF_Control_B1.c: 382: if(RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u8971
	goto	u8970
u8971:
	goto	l20526
u8970:
	line	384
	
l20522:	
;RF_Control_B1.c: 383: {
;RF_Control_B1.c: 384: Memory->Modify=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	385
	
l20524:	
;RF_Control_B1.c: 385: setRF_DimmerValue(sw);
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	fcall	_setRF_DimmerValue
	line	386
;RF_Control_B1.c: 386: }
	goto	l13230
	line	387
	
l13229:	
	line	389
	
l20526:	
;RF_Control_B1.c: 387: else
;RF_Control_B1.c: 388: {
;RF_Control_B1.c: 389: Product->Data[9]=Product->Data[20+sw];
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
	line	390
	
l13230:	
	line	391
;RF_Control_B1.c: 390: }
;RF_Control_B1.c: 391: Product->Data[17]=Product->Data[26+sw];
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
	line	392
	
l20528:	
;RF_Control_B1.c: 392: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	393
	
l13231:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_AdjControl
	__end_of_setRFSW_AdjControl:
;; =============== function _setRFSW_AdjControl ends ============

	signat	_setRFSW_AdjControl,4216
	global	_setPowerFault_Main
psect	text4877,local,class=CODE,delta=2
global __ptext4877
__ptext4877:

;; *************** function _setPowerFault_Main *****************
;; Defined at:
;;		line 66 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1   20[BANK0 ] unsigned char 
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
;;		_PowerFaultPointSelect
;;		_getLoad_Safe
;;		_getTemp_Safe
;;		_setPowerFault_ERROR
;; This function is called by:
;;		_PowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text4877
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	66
	global	__size_of_setPowerFault_Main
	__size_of_setPowerFault_Main	equ	__end_of_setPowerFault_Main-_setPowerFault_Main
	
_setPowerFault_Main:	
	opt	stack 5
; Regs used in _setPowerFault_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setPowerFault_Main@pf stored from wreg
	movlb 0	; select bank0
	movwf	(setPowerFault_Main@pf)
	line	67
	
l21960:	
;PowerFault_B1.c: 67: PowerFaultPointSelect(pf);
	movf	(setPowerFault_Main@pf),w
	fcall	_PowerFaultPointSelect
	line	68
	
l21962:	
;PowerFault_B1.c: 68: if(PF->Enable)
	movlb 0	; select bank0
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u10831
	goto	u10830
u10831:
	goto	l11983
u10830:
	line	70
	
l21964:	
;PowerFault_B1.c: 69: {
;PowerFault_B1.c: 70: if(PF->ADtoGO == 0)
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u10841
	goto	u10840
u10841:
	goto	l21978
u10840:
	line	72
	
l21966:	
;PowerFault_B1.c: 71: {
;PowerFault_B1.c: 72: PF->Time++;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	73
	
l21968:	
;PowerFault_B1.c: 73: if(PF->Time >= 1400)
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0578h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0578h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u10851
	goto	u10850
u10851:
	goto	l11983
u10850:
	line	75
	
l21970:	
;PowerFault_B1.c: 74: {
;PowerFault_B1.c: 75: if(getLoad_Safe(1) && getTemp_Safe(1))
	movlw	(01h)
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10861
	goto	u10860
u10861:
	goto	l21976
u10860:
	
l21972:	
	movlw	(01h)
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10871
	goto	u10870
u10871:
	goto	l21976
u10870:
	line	77
	
l21974:	
;PowerFault_B1.c: 76: {
;PowerFault_B1.c: 77: PF->Time=0;
	movlb 0	; select bank0
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	78
;PowerFault_B1.c: 78: PF->ADtoGO=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	79
;PowerFault_B1.c: 79: PF->Safe=0;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	80
;PowerFault_B1.c: 80: }
	goto	l11983
	line	81
	
l11968:	
	line	83
	
l21976:	
;PowerFault_B1.c: 81: else
;PowerFault_B1.c: 82: {
;PowerFault_B1.c: 83: PF->Time=1400;
	movlb 0	; select bank0
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0578h)
	movwi	[0]fsr1
	movlw	high(0578h)
	movwi	[1]fsr1
	goto	l11983
	line	84
	
l11969:	
	goto	l11983
	line	85
	
l11967:	
	line	86
;PowerFault_B1.c: 84: }
;PowerFault_B1.c: 85: }
;PowerFault_B1.c: 86: }
	goto	l11983
	line	87
	
l11966:	
	line	89
	
l21978:	
;PowerFault_B1.c: 87: else
;PowerFault_B1.c: 88: {
;PowerFault_B1.c: 89: PF->Time++;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	90
	
l21980:	
;PowerFault_B1.c: 90: if(PF->Time >= 4)
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(04h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(04h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u10881
	goto	u10880
u10881:
	goto	l11983
u10880:
	line	92
	
l21982:	
;PowerFault_B1.c: 91: {
;PowerFault_B1.c: 92: PF->Time=0;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	93
;PowerFault_B1.c: 93: PF->ADtoGO=0;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	95
;PowerFault_B1.c: 95: if(PF->ERROR)
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u10891
	goto	u10890
u10891:
	goto	l21998
u10890:
	line	97
	
l21984:	
;PowerFault_B1.c: 96: {
;PowerFault_B1.c: 97: if(PF->AD <= (300+100) && PF->AD >= (300-100))
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
	goto	u10901
	goto	u10900
u10901:
	goto	l21996
u10900:
	
l21986:	
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
	goto	u10911
	goto	u10910
u10911:
	goto	l21996
u10910:
	line	99
	
l21988:	
;PowerFault_B1.c: 98: {
;PowerFault_B1.c: 99: PF->Count++;
	movlw	(01h)
	movwf	(??_setPowerFault_Main+0)+0
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setPowerFault_Main+0)+0,w
	addwf	indf1,f
	line	100
	
l21990:	
;PowerFault_B1.c: 100: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u10921
	goto	u10920
u10921:
	goto	l11976
u10920:
	line	102
	
l21992:	
;PowerFault_B1.c: 101: {
;PowerFault_B1.c: 102: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	103
	
l21994:	
;PowerFault_B1.c: 103: setPowerFault_ERROR(1,0);
	clrf	(?_setPowerFault_ERROR)
	movlw	(01h)
	fcall	_setPowerFault_ERROR
	goto	l11976
	line	104
	
l11974:	
	line	105
;PowerFault_B1.c: 104: }
;PowerFault_B1.c: 105: }
	goto	l11976
	line	106
	
l11973:	
	line	108
	
l21996:	
;PowerFault_B1.c: 106: else
;PowerFault_B1.c: 107: {
;PowerFault_B1.c: 108: PF->Count=0;
	movlb 0	; select bank0
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l11976
	line	109
	
l11975:	
	line	110
;PowerFault_B1.c: 109: }
;PowerFault_B1.c: 110: }
	goto	l11976
	line	111
	
l11972:	
	line	113
	
l21998:	
;PowerFault_B1.c: 111: else
;PowerFault_B1.c: 112: {
;PowerFault_B1.c: 113: if(PF->AD >= (300+100) || PF->AD <= (310-100))
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0190h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0190h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u10931
	goto	u10930
u10931:
	goto	l22002
u10930:
	
l22000:	
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
	goto	u10941
	goto	u10940
u10941:
	goto	l22010
u10940:
	goto	l22002
	
l11979:	
	line	115
	
l22002:	
;PowerFault_B1.c: 114: {
;PowerFault_B1.c: 115: PF->Count++;
	movlw	(01h)
	movwf	(??_setPowerFault_Main+0)+0
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setPowerFault_Main+0)+0,w
	addwf	indf1,f
	line	116
	
l22004:	
;PowerFault_B1.c: 116: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u10951
	goto	u10950
u10951:
	goto	l11976
u10950:
	line	118
	
l22006:	
;PowerFault_B1.c: 117: {
;PowerFault_B1.c: 118: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	119
	
l22008:	
;PowerFault_B1.c: 119: setPowerFault_ERROR(1,1);
	clrf	(?_setPowerFault_ERROR)
	bsf	status,0
	rlf	(?_setPowerFault_ERROR),f
	movlw	(01h)
	fcall	_setPowerFault_ERROR
	goto	l11976
	line	120
	
l11980:	
	line	121
;PowerFault_B1.c: 120: }
;PowerFault_B1.c: 121: }
	goto	l11976
	line	122
	
l11977:	
	line	124
	
l22010:	
;PowerFault_B1.c: 122: else
;PowerFault_B1.c: 123: {
;PowerFault_B1.c: 124: PF->Count=0;
	movlb 0	; select bank0
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l11976
	line	125
	
l11981:	
	line	127
	
l11976:	
	line	128
;PowerFault_B1.c: 125: }
;PowerFault_B1.c: 127: }
;PowerFault_B1.c: 128: if(PF->ERROR == 0)
	movlb 0	; select bank0
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u10961
	goto	u10960
u10961:
	goto	l11982
u10960:
	line	130
	
l22012:	
;PowerFault_B1.c: 129: {
;PowerFault_B1.c: 130: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	131
	
l11982:	
	line	132
;PowerFault_B1.c: 131: }
;PowerFault_B1.c: 132: PF->AD=0;
	movf	(_PF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l11983
	line	133
	
l11971:	
	goto	l11983
	line	134
	
l11970:	
	goto	l11983
	line	135
	
l11965:	
	line	136
	
l11983:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Main
	__end_of_setPowerFault_Main:
;; =============== function _setPowerFault_Main ends ============

	signat	_setPowerFault_Main,4216
	global	_setTemp_Main
psect	text4878,local,class=CODE,delta=2
global __ptext4878
__ptext4878:

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
;;		_getPF_Safe
;;		_setOverTemp_ERROR
;; This function is called by:
;;		_Temp_Main
;; This function uses a non-reentrant model
;;
psect	text4878
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
	
l21902:	
;OverTemperature_B1.c: 70: TempPointSelect(temp);
	movf	(setTemp_Main@temp),w
	fcall	_TempPointSelect
	line	71
	
l21904:	
;OverTemperature_B1.c: 71: if(Temp->Enable)
	movlb 0	; select bank0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10711
	goto	u10710
u10711:
	goto	l10812
u10710:
	line	73
	
l21906:	
;OverTemperature_B1.c: 72: {
;OverTemperature_B1.c: 73: if(Temp->ADtoGO == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u10721
	goto	u10720
u10721:
	goto	l21920
u10720:
	line	75
	
l21908:	
;OverTemperature_B1.c: 74: {
;OverTemperature_B1.c: 75: Temp->Time++;
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
	line	76
	
l21910:	
;OverTemperature_B1.c: 76: if(Temp->Time >= 1000)
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(03E8h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u10731
	goto	u10730
u10731:
	goto	l10812
u10730:
	line	78
	
l21912:	
;OverTemperature_B1.c: 77: {
;OverTemperature_B1.c: 78: if(getLoad_Safe(1) && getPF_Safe(1))
	movlw	(01h)
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10741
	goto	u10740
u10741:
	goto	l21918
u10740:
	
l21914:	
	movlw	(01h)
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10751
	goto	u10750
u10751:
	goto	l21918
u10750:
	line	80
	
l21916:	
;OverTemperature_B1.c: 79: {
;OverTemperature_B1.c: 80: Temp->Time=0;
	movlb 0	; select bank0
	movf	(_Temp),w
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
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	82
;OverTemperature_B1.c: 82: Temp->Safe=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	83
;OverTemperature_B1.c: 83: }
	goto	l10812
	line	84
	
l10799:	
	line	86
	
l21918:	
;OverTemperature_B1.c: 84: else
;OverTemperature_B1.c: 85: {
;OverTemperature_B1.c: 86: Temp->Time=1000;
	movlb 0	; select bank0
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(03E8h)
	movwi	[0]fsr1
	movlw	high(03E8h)
	movwi	[1]fsr1
	goto	l10812
	line	87
	
l10800:	
	goto	l10812
	line	88
	
l10798:	
	line	89
;OverTemperature_B1.c: 87: }
;OverTemperature_B1.c: 88: }
;OverTemperature_B1.c: 89: }
	goto	l10812
	line	90
	
l10797:	
	line	92
	
l21920:	
;OverTemperature_B1.c: 90: else
;OverTemperature_B1.c: 91: {
;OverTemperature_B1.c: 92: Temp->Time++;
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
	line	93
	
l21922:	
;OverTemperature_B1.c: 93: if(Temp->Time >= 7)
	movf	(_Temp),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(07h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(07h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u10761
	goto	u10760
u10761:
	goto	l10812
u10760:
	line	95
	
l21924:	
;OverTemperature_B1.c: 94: {
;OverTemperature_B1.c: 95: Temp->Time=0;
	movf	(_Temp),w
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
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	97
;OverTemperature_B1.c: 97: Temp->AD=Temp->ADH[1];
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
	line	98
;OverTemperature_B1.c: 98: if(Temp->ERROR)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10771
	goto	u10770
u10771:
	goto	l21938
u10770:
	line	100
	
l21926:	
;OverTemperature_B1.c: 99: {
;OverTemperature_B1.c: 100: if(Temp->AD >= 540)
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(021Ch)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(021Ch)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u10781
	goto	u10780
u10781:
	goto	l21936
u10780:
	line	102
	
l21928:	
;OverTemperature_B1.c: 101: {
;OverTemperature_B1.c: 102: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	103
	
l21930:	
;OverTemperature_B1.c: 103: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u10791
	goto	u10790
u10791:
	goto	l10807
u10790:
	line	105
	
l21932:	
;OverTemperature_B1.c: 104: {
;OverTemperature_B1.c: 105: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	106
	
l21934:	
;OverTemperature_B1.c: 106: setOverTemp_ERROR(1,0);
	clrf	(?_setOverTemp_ERROR)
	movlw	(01h)
	fcall	_setOverTemp_ERROR
	goto	l10807
	line	107
	
l10805:	
	line	108
;OverTemperature_B1.c: 107: }
;OverTemperature_B1.c: 108: }
	goto	l10807
	line	109
	
l10804:	
	line	111
	
l21936:	
;OverTemperature_B1.c: 109: else
;OverTemperature_B1.c: 110: {
;OverTemperature_B1.c: 111: Temp->Count=0;
	movlb 0	; select bank0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l10807
	line	112
	
l10806:	
	line	113
;OverTemperature_B1.c: 112: }
;OverTemperature_B1.c: 113: }
	goto	l10807
	line	114
	
l10803:	
	line	116
	
l21938:	
;OverTemperature_B1.c: 114: else
;OverTemperature_B1.c: 115: {
;OverTemperature_B1.c: 116: if(Temp->AD <= 475)
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(01DCh)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(01DCh)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipnc
	goto	u10801
	goto	u10800
u10801:
	goto	l21948
u10800:
	line	118
	
l21940:	
;OverTemperature_B1.c: 117: {
;OverTemperature_B1.c: 118: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	119
	
l21942:	
;OverTemperature_B1.c: 119: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u10811
	goto	u10810
u10811:
	goto	l10807
u10810:
	line	121
	
l21944:	
;OverTemperature_B1.c: 120: {
;OverTemperature_B1.c: 121: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	122
	
l21946:	
;OverTemperature_B1.c: 122: setOverTemp_ERROR(1,1);
	clrf	(?_setOverTemp_ERROR)
	bsf	status,0
	rlf	(?_setOverTemp_ERROR),f
	movlw	(01h)
	fcall	_setOverTemp_ERROR
	goto	l10807
	line	123
	
l10809:	
	line	124
;OverTemperature_B1.c: 123: }
;OverTemperature_B1.c: 124: }
	goto	l10807
	line	125
	
l10808:	
	line	127
	
l21948:	
;OverTemperature_B1.c: 125: else
;OverTemperature_B1.c: 126: {
;OverTemperature_B1.c: 127: Temp->Count=0;
	movlb 0	; select bank0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l10807
	line	128
	
l10810:	
	line	129
	
l10807:	
	line	130
;OverTemperature_B1.c: 128: }
;OverTemperature_B1.c: 129: }
;OverTemperature_B1.c: 130: if(Temp->ERROR == 0)
	movlb 0	; select bank0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u10821
	goto	u10820
u10821:
	goto	l21952
u10820:
	line	132
	
l21950:	
;OverTemperature_B1.c: 131: {
;OverTemperature_B1.c: 132: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l21952
	line	133
	
l10811:	
	line	134
	
l21952:	
;OverTemperature_B1.c: 133: }
;OverTemperature_B1.c: 134: Product->Data[24]=Temp->AD >> 8;
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
	addlw	018h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+2)+0,w
	movwf	indf1
	line	135
	
l21954:	
;OverTemperature_B1.c: 135: Product->Data[25]=Temp->AD;
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
	line	136
	
l21956:	
;OverTemperature_B1.c: 136: Temp->ADH[0]=0;
	movf	(_Temp),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	137
	
l21958:	
;OverTemperature_B1.c: 137: Temp->ADH[1]=0;
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l10812
	line	138
	
l10802:	
	goto	l10812
	line	139
	
l10801:	
	goto	l10812
	line	140
	
l10796:	
	line	141
	
l10812:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Main
	__end_of_setTemp_Main:
;; =============== function _setTemp_Main ends ============

	signat	_setTemp_Main,4216
	global	_setLoad_Main
psect	text4879,local,class=CODE,delta=2
global __ptext4879
__ptext4879:

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
;;		_getPF_Safe
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text4879
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
	
l21806:	
;OverLoad_B1.c: 70: char i;
;OverLoad_B1.c: 71: LoadPointSelect(load);
	movf	(setLoad_Main@load),w
	fcall	_LoadPointSelect
	line	72
	
l21808:	
;OverLoad_B1.c: 72: if(Load->ERROR)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u10501
	goto	u10500
u10501:
	goto	l21818
u10500:
	line	74
	
l21810:	
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
	
l21812:	
;OverLoad_B1.c: 75: if(Load->ErrorTime >= 2000)
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movlw	high(07D0h)
	subwf	1+(??_setLoad_Main+0)+0,w
	movlw	low(07D0h)
	skipnz
	subwf	0+(??_setLoad_Main+0)+0,w
	skipc
	goto	u10511
	goto	u10510
u10511:
	goto	l9598
u10510:
	line	77
	
l21814:	
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
	
l21816:	
;OverLoad_B1.c: 78: setLoad_ERROR(load,0);
	clrf	(?_setLoad_ERROR)
	movf	(setLoad_Main@load),w
	fcall	_setLoad_ERROR
	goto	l9598
	line	79
	
l9574:	
	line	80
;OverLoad_B1.c: 79: }
;OverLoad_B1.c: 80: }
	goto	l9598
	line	81
	
l9573:	
	line	83
	
l21818:	
;OverLoad_B1.c: 81: else
;OverLoad_B1.c: 82: {
;OverLoad_B1.c: 83: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u10521
	goto	u10520
u10521:
	goto	l21882
u10520:
	line	85
	
l21820:	
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
	
l21822:	
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
	
l21824:	
;OverLoad_B1.c: 87: if(Load->Time >= 7)
	movf	(_Load),w
	addlw	01h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movlw	high(07h)
	subwf	1+(??_setLoad_Main+0)+0,w
	movlw	low(07h)
	skipnz
	subwf	0+(??_setLoad_Main+0)+0,w
	skipc
	goto	u10531
	goto	u10530
u10531:
	goto	l9598
u10530:
	line	89
	
l21826:	
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
	
l21828:	
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
	
l21830:	
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
	goto	u10545
	movf	0+(??_setLoad_Main+0)+0,w
	subwf	0+(??_setLoad_Main+2)+0,w
u10545:
	skipnc
	goto	u10541
	goto	u10540
u10541:
	goto	l21880
u10540:
	line	95
	
l21832:	
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
	
l21834:	
;OverLoad_B1.c: 96: if(Load->Count < 10)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipnc
	goto	u10551
	goto	u10550
u10551:
	goto	l21848
u10550:
	line	98
	
l21836:	
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
	
l21838:	
;OverLoad_B1.c: 99: if(Load->Count == 1)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u10561
	goto	u10560
u10561:
	goto	l9580
u10560:
	line	101
	
l21840:	
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
	
l9580:	
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
	goto	u10571
	goto	u10570
u10571:
	goto	l21848
u10570:
	line	105
	
l21842:	
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
	goto	u10581
	goto	u10580
u10581:
	goto	l21846
u10580:
	line	107
	
l21844:	
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
	goto	l21848
	line	109
	
l9582:	
	line	111
	
l21846:	
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
	goto	l21848
	line	112
	
l9583:	
	goto	l21848
	line	113
	
l9581:	
	goto	l21848
	line	114
	
l9579:	
	line	115
	
l21848:	
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
	goto	u10595
	movf	0+(??_setLoad_Main+0)+0,w
	subwf	0+(??_setLoad_Main+2)+0,w
u10595:
	skipc
	goto	u10591
	goto	u10590
u10591:
	goto	l21858
u10590:
	line	117
	
l21850:	
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
	
l21852:	
;OverLoad_B1.c: 118: if(Load->ErrorCount >2)
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u10601
	goto	u10600
u10601:
	goto	l21880
u10600:
	line	120
	
l21854:	
;OverLoad_B1.c: 119: {
;OverLoad_B1.c: 120: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	121
	
l21856:	
;OverLoad_B1.c: 121: setLoad_ERROR(load,1);
	clrf	(?_setLoad_ERROR)
	bsf	status,0
	rlf	(?_setLoad_ERROR),f
	movf	(setLoad_Main@load),w
	fcall	_setLoad_ERROR
	goto	l21880
	line	128
	
l9585:	
	line	129
;OverLoad_B1.c: 128: }
;OverLoad_B1.c: 129: }
	goto	l21880
	line	130
	
l9584:	
	line	132
	
l21858:	
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
	goto	u10611
	goto	u10610
u10611:
	goto	l21880
u10610:
	line	135
	
l21860:	
;OverLoad_B1.c: 134: {
;OverLoad_B1.c: 135: if(Load->SafeCount < 30)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(01Eh)
	subwf	indf1,w
	skipnc
	goto	u10621
	goto	u10620
u10621:
	goto	l21864
u10620:
	line	137
	
l21862:	
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
	goto	l21864
	line	138
	
l9588:	
	line	139
	
l21864:	
;OverLoad_B1.c: 138: }
;OverLoad_B1.c: 139: if(Load->SafeCount > 25)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(01Ah)
	subwf	indf1,w
	skipc
	goto	u10631
	goto	u10630
u10631:
	goto	l21874
u10630:
	line	141
	
l21866:	
;OverLoad_B1.c: 140: {
;OverLoad_B1.c: 141: if(Load->StatusOn)
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10641
	goto	u10640
u10641:
	goto	l21872
u10640:
	line	143
	
l21868:	
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
	
l21870:	
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
	goto	l21872
	line	146
	
l9590:	
	line	147
	
l21872:	
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
	goto	l21874
	line	159
	
l9589:	
	line	160
	
l21874:	
;OverLoad_B1.c: 159: }
;OverLoad_B1.c: 160: if(Load->StatusOff)
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10651
	goto	u10650
u10651:
	goto	l21880
u10650:
	line	162
	
l21876:	
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
	
l21878:	
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
	goto	l21880
	line	165
	
l9591:	
	goto	l21880
	line	166
	
l9587:	
	goto	l21880
	line	167
	
l9586:	
	goto	l21880
	line	168
	
l9578:	
	line	169
	
l21880:	
;OverLoad_B1.c: 165: }
;OverLoad_B1.c: 166: }
;OverLoad_B1.c: 167: }
;OverLoad_B1.c: 168: }
;OverLoad_B1.c: 169: setLoad_AH_AL_Restore(load);
	movlb 0	; select bank0
	movf	(setLoad_Main@load),w
	fcall	_setLoad_AH_AL_Restore
	goto	l9598
	line	180
	
l9577:	
	line	181
;OverLoad_B1.c: 180: }
;OverLoad_B1.c: 181: }
	goto	l9598
	line	182
	
l9576:	
	line	184
	
l21882:	
;OverLoad_B1.c: 182: else
;OverLoad_B1.c: 183: {
;OverLoad_B1.c: 184: if(Load->GO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10661
	goto	u10660
u10661:
	goto	l21894
u10660:
	line	186
	
l21884:	
;OverLoad_B1.c: 185: {
;OverLoad_B1.c: 186: if(Load->LightsON == 0)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u10671
	goto	u10670
u10671:
	goto	l21888
u10670:
	line	188
	
l21886:	
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
	goto	l21888
	line	190
	
l9594:	
	line	191
	
l21888:	
;OverLoad_B1.c: 190: }
;OverLoad_B1.c: 191: if(getTemp_Safe(1) && getPF_Safe(1))
	movlw	(01h)
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10681
	goto	u10680
u10681:
	goto	l9598
u10680:
	
l21890:	
	movlw	(01h)
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10691
	goto	u10690
u10691:
	goto	l9598
u10690:
	line	193
	
l21892:	
;OverLoad_B1.c: 192: {
;OverLoad_B1.c: 193: Load->ADtoGO=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l9598
	line	194
	
l9595:	
	line	195
;OverLoad_B1.c: 194: }
;OverLoad_B1.c: 195: }
	goto	l9598
	line	196
	
l9593:	
	line	198
	
l21894:	
;OverLoad_B1.c: 196: else
;OverLoad_B1.c: 197: {
;OverLoad_B1.c: 198: if(Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u10701
	goto	u10700
u10701:
	goto	l9598
u10700:
	line	200
	
l21896:	
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
	
l21898:	
;OverLoad_B1.c: 208: setLoad_AH_AL_Restore(1);
	movlw	(01h)
	fcall	_setLoad_AH_AL_Restore
	line	211
	
l21900:	
;OverLoad_B1.c: 211: setDimmerLights_Open(1,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Open)
	bsf	status,0
	rlf	(?_setDimmerLights_Open),f
	movlw	(01h)
	fcall	_setDimmerLights_Open
	goto	l9598
	line	235
	
l9597:	
	goto	l9598
	line	236
	
l9596:	
	goto	l9598
	line	237
	
l9592:	
	goto	l9598
	line	238
	
l9575:	
	line	239
	
l9598:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Main
	__end_of_setLoad_Main:
;; =============== function _setLoad_Main ends ============

	signat	_setLoad_Main,4216
	global	_DimmerLights_Main
psect	text4880,local,class=CODE,delta=2
global __ptext4880
__ptext4880:

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
psect	text4880
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	84
	global	__size_of_DimmerLights_Main
	__size_of_DimmerLights_Main	equ	__end_of_DimmerLights_Main-_DimmerLights_Main
	
_DimmerLights_Main:	
	opt	stack 6
; Regs used in _DimmerLights_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	86
	
l21804:	
;Dimmer_B1.c: 86: setDimmerLights_Main(1);
	movlw	(01h)
	fcall	_setDimmerLights_Main
	line	95
;Dimmer_B1.c: 95: DimmerLights_Close();
	fcall	_DimmerLights_Close
	line	96
	
l4701:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Main
	__end_of_DimmerLights_Main:
;; =============== function _DimmerLights_Main ends ============

	signat	_DimmerLights_Main,88
	global	_setRF_DimmerValue
psect	text4881,local,class=CODE,delta=2
global __ptext4881
__ptext4881:

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 404 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text4881
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	404
	global	__size_of_setRF_DimmerValue
	__size_of_setRF_DimmerValue	equ	__end_of_setRF_DimmerValue-_setRF_DimmerValue
	
_setRF_DimmerValue:	
	opt	stack 2
; Regs used in _setRF_DimmerValue: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_DimmerValue@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerValue@lights)
	line	405
	
l20296:	
;RF_Control_B1.c: 405: if(RF_Data[9] > 0x64)
	movlw	(065h)
	movlb 1	; select bank1
	subwf	0+(_RF_Data)^080h+09h,w
	skipc
	goto	u8491
	goto	u8490
u8491:
	goto	l20300
u8490:
	line	407
	
l20298:	
;RF_Control_B1.c: 406: {
;RF_Control_B1.c: 407: RF_Data[9]=0x64;
	movlw	(064h)
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	goto	l20300
	line	408
	
l13237:	
	line	409
	
l20300:	
;RF_Control_B1.c: 408: }
;RF_Control_B1.c: 409: Product->Data[9]=RF_Data[9];
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
	line	410
	
l20302:	
;RF_Control_B1.c: 410: Product->Data[11]=lights;
	movf	(setRF_DimmerValue@lights),w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	411
	
l20304:	
;RF_Control_B1.c: 411: Product->Data[(20+lights)]=Product->Data[9];
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
	line	412
	
l20306:	
;RF_Control_B1.c: 412: setDimmerLights_AdjRF(lights);
	movf	(setRF_DimmerValue@lights),w
	fcall	_setDimmerLights_AdjRF
	line	413
	
l13238:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
;; =============== function _setRF_DimmerValue ends ============

	signat	_setRF_DimmerValue,4216
	global	_setPowerFault_ERROR
psect	text4882,local,class=CODE,delta=2
global __ptext4882
__ptext4882:

;; *************** function _setPowerFault_ERROR *****************
;; Defined at:
;;		line 139 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;;  command         1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1   17[BANK0 ] unsigned char 
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
;;		_PowerFaultPointSelect
;;		_setDimmer_PFERROR
;;		_DimmerLights_ERROR
;;		_setLED
;;		_setSw_Enable
;;		_setRF_Enable
;; This function is called by:
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text4882
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	139
	global	__size_of_setPowerFault_ERROR
	__size_of_setPowerFault_ERROR	equ	__end_of_setPowerFault_ERROR-_setPowerFault_ERROR
	
_setPowerFault_ERROR:	
	opt	stack 5
; Regs used in _setPowerFault_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setPowerFault_ERROR@pf stored from wreg
	movlb 0	; select bank0
	movwf	(setPowerFault_ERROR@pf)
	line	140
	
l21776:	
;PowerFault_B1.c: 140: PowerFaultPointSelect(pf);
	movf	(setPowerFault_ERROR@pf),w
	fcall	_PowerFaultPointSelect
	line	141
	
l21778:	
;PowerFault_B1.c: 141: if(command == 1)
	movlb 0	; select bank0
	movf	(setPowerFault_ERROR@command),w
	xorlw	01h&0ffh
	skipz
	goto	u10491
	goto	u10490
u10491:
	goto	l21792
u10490:
	line	143
	
l21780:	
;PowerFault_B1.c: 142: {
;PowerFault_B1.c: 143: PF->ERROR=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	line	144
	
l21782:	
;PowerFault_B1.c: 144: setDimmer_PFERROR(1,1);
	clrf	(?_setDimmer_PFERROR)
	bsf	status,0
	rlf	(?_setDimmer_PFERROR),f
	movlw	(01h)
	fcall	_setDimmer_PFERROR
	line	145
	
l21784:	
;PowerFault_B1.c: 145: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	146
	
l21786:	
;PowerFault_B1.c: 146: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_setPowerFault_ERROR+0)+0
	movf	(??_setPowerFault_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	149
	
l21788:	
;PowerFault_B1.c: 149: setSw_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(01h)
	fcall	_setSw_Enable
	line	159
	
l21790:	
;PowerFault_B1.c: 159: setRF_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	movlw	(01h)
	fcall	_setRF_Enable
	line	161
;PowerFault_B1.c: 161: }
	goto	l11988
	line	162
	
l11986:	
	line	164
	
l21792:	
;PowerFault_B1.c: 162: else
;PowerFault_B1.c: 163: {
;PowerFault_B1.c: 164: PF->ERROR=0;
	movlb 0	; select bank0
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	165
;PowerFault_B1.c: 165: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	166
	
l21794:	
;PowerFault_B1.c: 166: setDimmer_PFERROR(1,0);
	clrf	(?_setDimmer_PFERROR)
	movlw	(01h)
	fcall	_setDimmer_PFERROR
	line	167
	
l21796:	
;PowerFault_B1.c: 167: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	168
	
l21798:	
;PowerFault_B1.c: 168: setLED(99,10);
	movlw	(0Ah)
	movlb 0	; select bank0
	movwf	(??_setPowerFault_ERROR+0)+0
	movf	(??_setPowerFault_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	171
	
l21800:	
;PowerFault_B1.c: 171: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	182
	
l21802:	
;PowerFault_B1.c: 182: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l11988
	line	184
	
l11987:	
	line	185
	
l11988:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_ERROR
	__end_of_setPowerFault_ERROR:
;; =============== function _setPowerFault_ERROR ends ============

	signat	_setPowerFault_ERROR,8312
	global	_setOverTemp_ERROR
psect	text4883,local,class=CODE,delta=2
global __ptext4883
__ptext4883:

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
;;		_setBuz
;; This function is called by:
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text4883
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
	
l21752:	
;OverTemperature_B1.c: 145: TempPointSelect(temp);
	movf	(setOverTemp_ERROR@temp),w
	fcall	_TempPointSelect
	line	146
	
l21754:	
;OverTemperature_B1.c: 146: if(command)
	movlb 0	; select bank0
	movf	(setOverTemp_ERROR@command),w
	skipz
	goto	u10470
	goto	l21768
u10470:
	line	148
	
l21756:	
;OverTemperature_B1.c: 147: {
;OverTemperature_B1.c: 148: Temp->ERROR=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	149
	
l21758:	
;OverTemperature_B1.c: 149: setDimmer_TempERROR(1,1);
	clrf	(?_setDimmer_TempERROR)
	bsf	status,0
	rlf	(?_setDimmer_TempERROR),f
	movlw	(01h)
	fcall	_setDimmer_TempERROR
	line	150
	
l21760:	
;OverTemperature_B1.c: 150: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	152
	
l21762:	
;OverTemperature_B1.c: 152: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_setOverTemp_ERROR+0)+0
	movf	(??_setOverTemp_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	155
	
l21764:	
;OverTemperature_B1.c: 155: setSw_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(01h)
	fcall	_setSw_Enable
	line	165
	
l21766:	
;OverTemperature_B1.c: 165: setRF_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	movlw	(01h)
	fcall	_setRF_Enable
	line	167
;OverTemperature_B1.c: 167: }
	goto	l10818
	line	168
	
l10815:	
	
l21768:	
;OverTemperature_B1.c: 168: else if(command == 0)
	movlb 0	; select bank0
	movf	(setOverTemp_ERROR@command),f
	skipz
	goto	u10481
	goto	u10480
u10481:
	goto	l10818
u10480:
	line	170
	
l21770:	
;OverTemperature_B1.c: 169: {
;OverTemperature_B1.c: 170: Temp->ERROR=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	171
	
l21772:	
;OverTemperature_B1.c: 171: setDimmer_TempERROR(1,0);
	clrf	(?_setDimmer_TempERROR)
	movlw	(01h)
	fcall	_setDimmer_TempERROR
	line	172
	
l21774:	
;OverTemperature_B1.c: 172: Temp->Safe=1;
	movlb 0	; select bank0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	173
;OverTemperature_B1.c: 173: setLED(99,10);
	movlw	(0Ah)
	movwf	(??_setOverTemp_ERROR+0)+0
	movf	(??_setOverTemp_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	174
;OverTemperature_B1.c: 174: setBuz(1,2,100);
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setOverTemp_ERROR+0)+0
	movf	(??_setOverTemp_ERROR+0)+0,w
	movwf	(?_setBuz)
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	177
;OverTemperature_B1.c: 177: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	189
;OverTemperature_B1.c: 189: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l10818
	line	191
	
l10817:	
	goto	l10818
	line	192
	
l10816:	
	
l10818:	
	return
	opt stack 0
GLOBAL	__end_of_setOverTemp_ERROR
	__end_of_setOverTemp_ERROR:
;; =============== function _setOverTemp_ERROR ends ============

	signat	_setOverTemp_ERROR,8312
	global	_setLoad_ERROR
psect	text4884,local,class=CODE,delta=2
global __ptext4884
__ptext4884:

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
psect	text4884
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
	
l21716:	
;OverLoad_B1.c: 243: LoadPointSelect(load);
	movf	(setLoad_ERROR@load),w
	fcall	_LoadPointSelect
	line	244
	
l21718:	
;OverLoad_B1.c: 244: if(command)
	movlb 0	; select bank0
	movf	(setLoad_ERROR@command),w
	skipz
	goto	u10450
	goto	l21736
u10450:
	line	246
	
l21720:	
;OverLoad_B1.c: 245: {
;OverLoad_B1.c: 246: setDimmer_LoadERROR(1,1);
	clrf	(?_setDimmer_LoadERROR)
	bsf	status,0
	rlf	(?_setDimmer_LoadERROR),f
	movlw	(01h)
	fcall	_setDimmer_LoadERROR
	line	247
	
l21722:	
;OverLoad_B1.c: 247: Load->ERROR=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,5
	line	248
	
l21724:	
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
	
l21726:	
;OverLoad_B1.c: 249: Load->Safe=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,3
	line	250
	
l21728:	
;OverLoad_B1.c: 250: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	251
	
l21730:	
;OverLoad_B1.c: 251: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_setLoad_ERROR+0)+0
	movf	(??_setLoad_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	254
	
l21732:	
;OverLoad_B1.c: 254: setSw_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	movlw	(01h)
	fcall	_setSw_Enable
	line	266
	
l21734:	
;OverLoad_B1.c: 266: setRF_Enable(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	movlw	(01h)
	fcall	_setRF_Enable
	line	268
;OverLoad_B1.c: 268: }
	goto	l9604
	line	269
	
l9601:	
	
l21736:	
;OverLoad_B1.c: 269: else if(command == 0)
	movlb 0	; select bank0
	movf	(setLoad_ERROR@command),f
	skipz
	goto	u10461
	goto	u10460
u10461:
	goto	l9604
u10460:
	line	271
	
l21738:	
;OverLoad_B1.c: 270: {
;OverLoad_B1.c: 271: setDimmer_LoadERROR(1,0);
	clrf	(?_setDimmer_LoadERROR)
	movlw	(01h)
	fcall	_setDimmer_LoadERROR
	line	272
	
l21740:	
;OverLoad_B1.c: 272: Load->ERROR=0;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,5
	line	273
	
l21742:	
;OverLoad_B1.c: 273: Load->ErrorStatus=0;
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	274
	
l21744:	
;OverLoad_B1.c: 274: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	275
	
l21746:	
;OverLoad_B1.c: 275: setLED(99,10);
	movlw	(0Ah)
	movwf	(??_setLoad_ERROR+0)+0
	movf	(??_setLoad_ERROR+0)+0,w
	movwf	(?_setLED)
	movlw	(063h)
	fcall	_setLED
	line	278
	
l21748:	
;OverLoad_B1.c: 278: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	290
	
l21750:	
;OverLoad_B1.c: 290: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l9604
	line	292
	
l9603:	
	goto	l9604
	line	293
	
l9602:	
	
l9604:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_ERROR
	__end_of_setLoad_ERROR:
;; =============== function _setLoad_ERROR ends ============

	signat	_setLoad_ERROR,8312
	global	_Switch_Main
psect	text4885,local,class=CODE,delta=2
global __ptext4885
__ptext4885:

;; *************** function _Switch_Main *****************
;; Defined at:
;;		line 60 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text4885
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	60
	global	__size_of_Switch_Main
	__size_of_Switch_Main	equ	__end_of_Switch_Main-_Switch_Main
	
_Switch_Main:	
	opt	stack 7
; Regs used in _Switch_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	62
	
l21714:	
;Switch_B1.c: 62: setSw_Main(1);
	movlw	(01h)
	fcall	_setSw_Main
	line	71
	
l14393:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Main
	__end_of_Switch_Main:
;; =============== function _Switch_Main ends ============

	signat	_Switch_Main,88
	global	_Flash_Memory_Main
psect	text4886,local,class=CODE,delta=2
global __ptext4886
__ptext4886:

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 390 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text4886
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	390
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
	opt	stack 8
; Regs used in _Flash_Memory_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	391
	
l21700:	
;MCU_16f1518_B1.c: 391: if(Memory->GO)
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10421
	goto	u10420
u10421:
	goto	l8404
u10420:
	line	393
	
l21702:	
;MCU_16f1518_B1.c: 392: {
;MCU_16f1518_B1.c: 393: if(Memory->Modify)
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10431
	goto	u10430
u10431:
	goto	l21712
u10430:
	line	395
	
l21704:	
;MCU_16f1518_B1.c: 394: {
;MCU_16f1518_B1.c: 395: Memory->Time++;
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
	line	396
	
l21706:	
;MCU_16f1518_B1.c: 396: if(Memory->Time == 100)
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(064h)
	skipz
	goto	u10445
	moviw	[1]fsr1
	xorlw	high(064h)
u10445:
	skipz
	goto	u10441
	goto	u10440
u10441:
	goto	l8404
u10440:
	line	398
	
l21708:	
;MCU_16f1518_B1.c: 397: {
;MCU_16f1518_B1.c: 398: Memory->Time=0;
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	399
;MCU_16f1518_B1.c: 399: Memory->Modify=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	400
;MCU_16f1518_B1.c: 400: Memory->GO=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	401
	
l21710:	
;MCU_16f1518_B1.c: 401: Flash_Memory_Modify();
	fcall	_Flash_Memory_Modify
	goto	l8404
	line	402
	
l8402:	
	line	403
;MCU_16f1518_B1.c: 402: }
;MCU_16f1518_B1.c: 403: }
	goto	l8404
	line	404
	
l8401:	
	line	406
	
l21712:	
;MCU_16f1518_B1.c: 404: else
;MCU_16f1518_B1.c: 405: {
;MCU_16f1518_B1.c: 406: Memory->GO=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l8404
	line	407
	
l8403:	
	goto	l8404
	line	408
	
l8400:	
	line	409
	
l8404:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
;; =============== function _Flash_Memory_Main ends ============

	signat	_Flash_Memory_Main,88
	global	_MainT
psect	text4887,local,class=CODE,delta=2
global __ptext4887
__ptext4887:

;; *************** function _MainT *****************
;; Defined at:
;;		line 78 in file "G:\Program\PIC\Source_File\main.c"
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
;;		_getTemp_ERROR
;;		_getPF_ERROR
;;		_getLoad_ERROR
;;		_DimmerLightsPointSelect
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_Switch
;;		_setBuz
;;		_getTemp_Safe
;;		_getPF_Safe
;;		_getLoad_Safe
;;		_getPercentValue
;;		_setSw_Enable
;;		_setRF_Enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4887
	file	"G:\Program\PIC\Source_File\main.c"
	line	78
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
	opt	stack 7
; Regs used in _MainT: [wreg+fsr1l-status,0+pclath+cstack]
	line	80
	
l21620:	
;main.c: 80: if(TMain->PowerON == 0)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u10291
	goto	u10290
u10291:
	goto	l21632
u10290:
	line	82
	
l21622:	
;main.c: 81: {
;main.c: 82: TMain->PowerCount++;
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
	line	83
	
l21624:	
;main.c: 83: if(TMain->PowerCount == 300)
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(012Ch)
	skipz
	goto	u10305
	moviw	[1]fsr1
	xorlw	high(012Ch)
u10305:
	skipz
	goto	u10301
	goto	u10300
u10301:
	goto	l7185
u10300:
	line	85
	
l21626:	
;main.c: 84: {
;main.c: 85: TMain->PowerCount=0;
	movf	(_TMain),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	86
;main.c: 86: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	89
	
l21628:	
;main.c: 89: setTemp_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setTemp_Enable)
	bsf	status,0
	rlf	(?_setTemp_Enable),f
	movlw	(01h)
	fcall	_setTemp_Enable
	line	93
	
l21630:	
;main.c: 93: setLoad_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setLoad_Enable)
	bsf	status,0
	rlf	(?_setLoad_Enable),f
	movlw	(01h)
	fcall	_setLoad_Enable
	line	97
;main.c: 97: TMain->k=1;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	goto	l7185
	line	117
	
l7174:	
	line	118
;main.c: 117: }
;main.c: 118: }
	goto	l7185
	line	119
	
l7173:	
	line	122
	
l21632:	
;main.c: 119: else
;main.c: 120: {
;main.c: 122: if(!getTemp_ERROR(1) && !getPF_ERROR(1) && !getLoad_ERROR(1))
	movlw	(01h)
	fcall	_getTemp_ERROR
	iorlw	0
	skipz
	goto	u10311
	goto	u10310
u10311:
	goto	l7185
u10310:
	
l21634:	
	movlw	(01h)
	fcall	_getPF_ERROR
	iorlw	0
	skipz
	goto	u10321
	goto	u10320
u10321:
	goto	l7185
u10320:
	
l21636:	
	movlw	(01h)
	fcall	_getLoad_ERROR
	iorlw	0
	skipz
	goto	u10331
	goto	u10330
u10331:
	goto	l7185
u10330:
	line	124
	
l21638:	
;main.c: 123: {
;main.c: 124: if(!TMain->r)
	movf	(_TMain),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u10341
	goto	u10340
u10341:
	goto	l7185
u10340:
	line	126
	
l21640:	
;main.c: 125: {
;main.c: 126: if(TMain->k)
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u10351
	goto	u10350
u10351:
	goto	l21656
u10350:
	line	128
	
l21642:	
;main.c: 127: {
;main.c: 128: TMain->k=0;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	130
	
l21644:	
;main.c: 130: DimmerLightsPointSelect(1);
	movlw	(01h)
	fcall	_DimmerLightsPointSelect
	line	131
	
l21646:	
;main.c: 131: DimmerLights->MaxmumValue=((char)((100-75)*1.5));
	movlw	(025h)
	movlb 0	; select bank0
	movwf	(??_MainT+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT+0)+0,w
	movwf	indf1
	line	132
	
l21648:	
;main.c: 132: DimmerLights->DimmingValue=((char)((100-75)*1.5));
	movlw	(025h)
	movwf	(??_MainT+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT+0)+0,w
	movwf	indf1
	line	133
	
l21650:	
;main.c: 133: setDimmerLights_Trigger(1,1);
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movlw	(01h)
	fcall	_setDimmerLights_Trigger
	line	134
	
l21652:	
;main.c: 134: setDimmerLights_Switch(1,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	bsf	status,0
	rlf	(?_setDimmerLights_Switch),f
	movlw	(01h)
	fcall	_setDimmerLights_Switch
	line	136
	
l21654:	
;main.c: 136: setBuz(1,1,100);
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
	goto	l21656
	line	137
	
l7178:	
	line	138
	
l21656:	
;main.c: 137: }
;main.c: 138: TMain->Count2++;
	movf	(_TMain),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	139
	
l21658:	
;main.c: 139: if(TMain->Count2 == 300)
	movf	(_TMain),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(012Ch)
	skipz
	goto	u10365
	moviw	[1]fsr1
	xorlw	high(012Ch)
u10365:
	skipz
	goto	u10361
	goto	u10360
u10361:
	goto	l7185
u10360:
	line	141
	
l21660:	
;main.c: 140: {
;main.c: 141: TMain->Count2=0;
	movf	(_TMain),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	143
;main.c: 143: if(!TMain->i)
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u10371
	goto	u10370
u10371:
	goto	l21682
u10370:
	line	146
	
l21662:	
;main.c: 144: {
;main.c: 146: if(getTemp_Safe(1) && getPF_Safe(1) && getLoad_Safe(1))
	movlw	(01h)
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10381
	goto	u10380
u10381:
	goto	l21680
u10380:
	
l21664:	
	movlw	(01h)
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10391
	goto	u10390
u10391:
	goto	l21680
u10390:
	
l21666:	
	movlw	(01h)
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10401
	goto	u10400
u10401:
	goto	l21680
u10400:
	line	148
	
l21668:	
;main.c: 147: {
;main.c: 148: TMain->i=1;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	150
	
l21670:	
;main.c: 150: DimmerLightsPointSelect(1);
	movlw	(01h)
	fcall	_DimmerLightsPointSelect
	line	151
	
l21672:	
;main.c: 151: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	152
	
l21674:	
;main.c: 152: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	153
	
l21676:	
;main.c: 153: DimmerLights->MaxmumValue=((char)((100-75)*1.5))+50;
	movlw	(057h)
	movwf	(??_MainT+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT+0)+0,w
	movwf	indf1
	line	156
	
l21678:	
;main.c: 156: setBuz(1,1,100);
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	157
;main.c: 157: }
	goto	l7185
	line	158
	
l7181:	
	line	160
	
l21680:	
;main.c: 158: else
;main.c: 159: {
;main.c: 160: TMain->Count2=300;
	movf	(_TMain),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(012Ch)
	movwi	[0]fsr1
	movlw	high(012Ch)
	movwi	[1]fsr1
	goto	l7185
	line	161
	
l7182:	
	line	162
;main.c: 161: }
;main.c: 162: }
	goto	l7185
	line	163
	
l7180:	
	line	165
	
l21682:	
;main.c: 163: else
;main.c: 164: {
;main.c: 165: if(!TMain->j)
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u10411
	goto	u10410
u10411:
	goto	l7185
u10410:
	line	167
	
l21684:	
;main.c: 166: {
;main.c: 167: TMain->j=1;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	168
;main.c: 168: TMain->r=1;
	movf	(_TMain),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	169
;main.c: 169: TMain->SelfTest=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	171
	
l21686:	
;main.c: 171: DimmerLightsPointSelect(1);
	movlw	(01h)
	fcall	_DimmerLightsPointSelect
	line	172
	
l21688:	
;main.c: 172: setDimmerLights_Trigger(1,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movlw	(01h)
	fcall	_setDimmerLights_Trigger
	line	173
	
l21690:	
;main.c: 173: setDimmerLights_Switch(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	movlw	(01h)
	fcall	_setDimmerLights_Switch
	line	174
	
l21692:	
;main.c: 174: DimmerLights->MaxmumValue=getPercentValue(Product->Data[(20+1)]);
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_getPercentValue
	movlb 0	; select bank0
	movwf	(??_MainT+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT+0)+0,w
	movwf	indf1
	line	176
	
l21694:	
;main.c: 176: setBuz(1,3,50);
	movlw	(03h)
	movwf	(??_MainT+0)+0
	movf	(??_MainT+0)+0,w
	movwf	(?_setBuz)
	movlw	low(032h)
	movwf	0+(?_setBuz)+01h
	movlw	high(032h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	179
	
l21696:	
;main.c: 179: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Enable)
	bsf	status,0
	rlf	(?_setSw_Enable),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	190
	
l21698:	
;main.c: 190: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setRF_Enable)
	bsf	status,0
	rlf	(?_setRF_Enable),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l7185
	line	193
	
l7184:	
	goto	l7185
	line	194
	
l7183:	
	goto	l7185
	line	195
	
l7179:	
	goto	l7185
	line	196
	
l7177:	
	goto	l7185
	line	197
	
l7176:	
	goto	l7185
	line	199
	
l7175:	
	line	234
	
l7185:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
;; =============== function _MainT ends ============

	signat	_MainT,88
	global	_setDimmerLights_Main
psect	text4888,local,class=CODE,delta=2
global __ptext4888
__ptext4888:

;; *************** function _setDimmerLights_Main *****************
;; Defined at:
;;		line 99 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   51[BANK0 ] unsigned char 
;;  close           1   50[BANK0 ] unsigned char 
;;  open            1   49[BANK0 ] unsigned char 
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
psect	text4888
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
	
l21578:	
;Dimmer_B1.c: 100: char open=1,close=1;
	clrf	(setDimmerLights_Main@open)
	bsf	status,0
	rlf	(setDimmerLights_Main@open),f
	clrf	(setDimmerLights_Main@close)
	bsf	status,0
	rlf	(setDimmerLights_Main@close),f
	line	101
	
l21580:	
;Dimmer_B1.c: 101: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	102
	
l21582:	
;Dimmer_B1.c: 102: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10221
	goto	u10220
u10221:
	goto	l21606
u10220:
	line	145
	
l21584:	
;Dimmer_B1.c: 103: {
;Dimmer_B1.c: 145: if(open)
	movf	(setDimmerLights_Main@open),w
	skipz
	goto	u10230
	goto	l4714
u10230:
	line	147
	
l21586:	
;Dimmer_B1.c: 146: {
;Dimmer_B1.c: 147: if(DimmerLights->Switch)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10241
	goto	u10240
u10241:
	goto	l21598
u10240:
	line	189
	
l21588:	
;Dimmer_B1.c: 148: {
;Dimmer_B1.c: 189: if(close)
	movf	(setDimmerLights_Main@close),w
	skipz
	goto	u10250
	goto	l4714
u10250:
	line	191
	
l21590:	
;Dimmer_B1.c: 190: {
;Dimmer_B1.c: 191: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	192
	
l21592:	
;Dimmer_B1.c: 192: setDimmerLights_Open(lights,0);
	clrf	(?_setDimmerLights_Open)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Open
	line	193
	
l21594:	
;Dimmer_B1.c: 193: setDimmerLights_Close(lights,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Close)
	bsf	status,0
	rlf	(?_setDimmerLights_Close),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Close
	line	194
	
l21596:	
;Dimmer_B1.c: 194: setDimmerLights(lights,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	bsf	status,0
	rlf	(?_setDimmerLights),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	goto	l4714
	line	195
	
l4707:	
	line	196
;Dimmer_B1.c: 195: }
;Dimmer_B1.c: 196: }
	goto	l4714
	line	197
	
l4706:	
	line	199
	
l21598:	
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
	
l21600:	
;Dimmer_B1.c: 200: setDimmerLights_Open(lights,0);
	clrf	(?_setDimmerLights_Open)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Open
	line	201
	
l21602:	
;Dimmer_B1.c: 201: setDimmerLights_Close(lights,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Close)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Close
	line	202
	
l21604:	
;Dimmer_B1.c: 202: setDimmerLights(lights,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	goto	l4714
	line	203
	
l4708:	
	goto	l4714
	line	204
	
l4705:	
	line	205
;Dimmer_B1.c: 203: }
;Dimmer_B1.c: 204: }
;Dimmer_B1.c: 205: }
	goto	l4714
	line	206
	
l4704:	
	line	208
	
l21606:	
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
	goto	u10261
	goto	u10260
u10261:
	goto	l4714
u10260:
	line	210
	
l21608:	
;Dimmer_B1.c: 209: {
;Dimmer_B1.c: 210: if(!getDimmerLights_Trigger())
	fcall	_getDimmerLights_Trigger
	iorlw	0
	skipz
	goto	u10271
	goto	u10270
u10271:
	goto	l4714
u10270:
	line	212
	
l21610:	
;Dimmer_B1.c: 211: {
;Dimmer_B1.c: 212: DimmerLightsPointSelect(lights);
	movlb 0	; select bank0
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	213
	
l21612:	
;Dimmer_B1.c: 213: DimmerLights->TriggerAdj=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	214
	
l21614:	
;Dimmer_B1.c: 214: if(DimmerLights->AdjGo)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u10281
	goto	u10280
u10281:
	goto	l21618
u10280:
	line	216
	
l21616:	
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
	goto	l4714
	line	219
	
l4712:	
	line	221
	
l21618:	
;Dimmer_B1.c: 219: else
;Dimmer_B1.c: 220: {
;Dimmer_B1.c: 221: setDimmerLights_Adj(lights,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Adj)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	goto	l4714
	line	222
	
l4713:	
	goto	l4714
	line	223
	
l4711:	
	goto	l4714
	line	224
	
l4710:	
	goto	l4714
	line	225
	
l4709:	
	line	226
	
l4714:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Main
	__end_of_setDimmerLights_Main:
;; =============== function _setDimmerLights_Main ends ============

	signat	_setDimmerLights_Main,4216
	global	_DimmerLights_Initialization
psect	text4889,local,class=CODE,delta=2
global __ptext4889
__ptext4889:

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
psect	text4889
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	33
	global	__size_of_DimmerLights_Initialization
	__size_of_DimmerLights_Initialization	equ	__end_of_DimmerLights_Initialization-_DimmerLights_Initialization
	
_DimmerLights_Initialization:	
	opt	stack 7
; Regs used in _DimmerLights_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	35
	
l20066:	
;Dimmer_B1.c: 35: DimmerLights11=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights11)
	line	36
	
l20068:	
;Dimmer_B1.c: 36: setDimmerLights_Initialization(1);
	movlw	(01h)
	fcall	_setDimmerLights_Initialization
	line	48
	
l4690:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Initialization
	__end_of_DimmerLights_Initialization:
;; =============== function _DimmerLights_Initialization ends ============

	signat	_DimmerLights_Initialization,88
	global	_setSw_Main
psect	text4890,local,class=CODE,delta=2
global __ptext4890
__ptext4890:

;; *************** function _setSw_Main *****************
;; Defined at:
;;		line 91 in file "G:\Program\PIC\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   18[BANK0 ] unsigned char 
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
;;		_Sw_OnFunc
;;		_Sw_AdjFunc
;;		_setRF_Learn
;;		_setBuz
;;		_Sw_OffFunc
;; This function is called by:
;;		_Switch_Main
;; This function uses a non-reentrant model
;;
psect	text4890
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	91
	global	__size_of_setSw_Main
	__size_of_setSw_Main	equ	__end_of_setSw_Main-_setSw_Main
	
_setSw_Main:	
	opt	stack 7
; Regs used in _setSw_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Main@sw)
	line	92
	
l21504:	
;Switch_B1.c: 92: SwPointSelect(sw);
	movf	(setSw_Main@sw),w
	fcall	_SwPointSelect
	line	120
	
l21506:	
;Switch_B1.c: 120: Sw->Touch=(RA0 || RB1 || RA6 || RA4)?1:0;
	movlb 0	; select bank0
	clrf	(_setSw_Main$18099)
	bsf	status,0
	rlf	(_setSw_Main$18099),f
	
l21508:	
	btfsc	(96/8),(96)&7
	goto	u10051
	goto	u10050
u10051:
	goto	l21518
u10050:
	
l21510:	
	btfsc	(105/8),(105)&7
	goto	u10061
	goto	u10060
u10061:
	goto	l21518
u10060:
	
l21512:	
	btfsc	(102/8),(102)&7
	goto	u10071
	goto	u10070
u10071:
	goto	l21518
u10070:
	
l21514:	
	btfsc	(100/8),(100)&7
	goto	u10081
	goto	u10080
u10081:
	goto	l21518
u10080:
	
l21516:	
	clrf	(_setSw_Main$18099)
	goto	l21518
	
l14406:	
	
l21518:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_setSw_Main$18099),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	123
;Switch_B1.c: 123: if(Sw->Enable)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10091
	goto	u10090
u10091:
	goto	l14424
u10090:
	line	125
	
l21520:	
;Switch_B1.c: 124: {
;Switch_B1.c: 125: if(Sw->Touch)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10101
	goto	u10100
u10101:
	goto	l21566
u10100:
	line	127
	
l21522:	
;Switch_B1.c: 126: {
;Switch_B1.c: 127: if(!Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u10111
	goto	u10110
u10111:
	goto	l21532
u10110:
	line	129
	
l21524:	
;Switch_B1.c: 128: {
;Switch_B1.c: 129: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	130
	
l21526:	
;Switch_B1.c: 130: if(Sw->DebounceTime >= 100/5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(014h)
	subwf	indf1,w
	skipc
	goto	u10121
	goto	u10120
u10121:
	goto	l14424
u10120:
	line	132
	
l21528:	
;Switch_B1.c: 131: {
;Switch_B1.c: 132: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	133
;Switch_B1.c: 133: Sw->Debounce=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	134
	
l21530:	
;Switch_B1.c: 134: Sw_OnFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_OnFunc
	goto	l14424
	line	135
	
l14410:	
	line	136
;Switch_B1.c: 135: }
;Switch_B1.c: 136: }
	goto	l14424
	line	137
	
l14409:	
	line	139
	
l21532:	
;Switch_B1.c: 137: else
;Switch_B1.c: 138: {
;Switch_B1.c: 139: if(!Sw->Hold1)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u10131
	goto	u10130
u10131:
	goto	l21542
u10130:
	line	141
	
l21534:	
;Switch_B1.c: 140: {
;Switch_B1.c: 141: Sw->Hold1Time++;
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
	line	142
	
l21536:	
;Switch_B1.c: 142: if(Sw->Hold1Time >= 1500/5)
	movf	(_Sw),w
	addlw	03h
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
	goto	u10141
	goto	u10140
u10141:
	goto	l14424
u10140:
	line	144
	
l21538:	
;Switch_B1.c: 143: {
;Switch_B1.c: 144: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	145
;Switch_B1.c: 145: Sw->Hold1=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	147
	
l21540:	
;Switch_B1.c: 147: Sw_AdjFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_AdjFunc
	goto	l14424
	line	149
	
l14413:	
	line	150
;Switch_B1.c: 149: }
;Switch_B1.c: 150: }
	goto	l14424
	line	151
	
l14412:	
	line	153
	
l21542:	
;Switch_B1.c: 151: else
;Switch_B1.c: 152: {
;Switch_B1.c: 153: if(!Sw->Hold2)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u10151
	goto	u10150
u10151:
	goto	l21556
u10150:
	line	155
	
l21544:	
;Switch_B1.c: 154: {
;Switch_B1.c: 155: Sw->Hold2Time++;
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
	line	156
	
l21546:	
;Switch_B1.c: 156: if(Sw->Hold2Time >= 1500/5)
	movf	(_Sw),w
	addlw	05h
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
	goto	u10161
	goto	u10160
u10161:
	goto	l14424
u10160:
	line	158
	
l21548:	
;Switch_B1.c: 157: {
;Switch_B1.c: 158: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	159
;Switch_B1.c: 159: Sw->Hold2=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	161
	
l21550:	
;Switch_B1.c: 161: setRF_Learn(1,1);
	clrf	(?_setRF_Learn)
	bsf	status,0
	rlf	(?_setRF_Learn),f
	movlw	(01h)
	fcall	_setRF_Learn
	line	162
	
l21552:	
;Switch_B1.c: 162: if(TMain->First)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10171
	goto	u10170
u10171:
	goto	l14424
u10170:
	line	164
	
l21554:	
;Switch_B1.c: 163: {
;Switch_B1.c: 164: setBuz(1,2,50);
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setSw_Main+0)+0
	movf	(??_setSw_Main+0)+0,w
	movwf	(?_setBuz)
	movlw	low(032h)
	movwf	0+(?_setBuz)+01h
	movlw	high(032h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	goto	l14424
	line	165
	
l14417:	
	goto	l14424
	line	167
	
l14416:	
	line	168
;Switch_B1.c: 165: }
;Switch_B1.c: 167: }
;Switch_B1.c: 168: }
	goto	l14424
	line	169
	
l14415:	
	line	171
	
l21556:	
;Switch_B1.c: 169: else
;Switch_B1.c: 170: {
;Switch_B1.c: 171: if(!Sw->Hold3)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u10181
	goto	u10180
u10181:
	goto	l14424
u10180:
	line	173
	
l21558:	
;Switch_B1.c: 172: {
;Switch_B1.c: 173: Sw->Hold3Time++;
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
	line	174
	
l21560:	
;Switch_B1.c: 174: if(Sw->Hold3Time >= 3000/5)
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(0258h)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(0258h)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u10191
	goto	u10190
u10191:
	goto	l14424
u10190:
	line	176
	
l21562:	
;Switch_B1.c: 175: {
;Switch_B1.c: 176: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	177
;Switch_B1.c: 177: Sw->Hold3=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	178
	
l21564:	
;Switch_B1.c: 178: setRF_Learn(1,0);
	clrf	(?_setRF_Learn)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l14424
	line	179
	
l14420:	
	goto	l14424
	line	180
	
l14419:	
	goto	l14424
	line	181
	
l14418:	
	goto	l14424
	line	182
	
l14414:	
	goto	l14424
	line	183
	
l14411:	
	line	184
;Switch_B1.c: 179: }
;Switch_B1.c: 180: }
;Switch_B1.c: 181: }
;Switch_B1.c: 182: }
;Switch_B1.c: 183: }
;Switch_B1.c: 184: }
	goto	l14424
	line	185
	
l14408:	
	line	187
	
l21566:	
;Switch_B1.c: 185: else
;Switch_B1.c: 186: {
;Switch_B1.c: 187: if(Sw->Debounce)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u10201
	goto	u10200
u10201:
	goto	l14424
u10200:
	line	189
	
l21568:	
;Switch_B1.c: 188: {
;Switch_B1.c: 189: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	190
	
l21570:	
;Switch_B1.c: 190: if(Sw->DebounceTime >= 100/5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(014h)
	subwf	indf1,w
	skipc
	goto	u10211
	goto	u10210
u10211:
	goto	l14424
u10210:
	line	192
	
l21572:	
;Switch_B1.c: 191: {
;Switch_B1.c: 192: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	193
;Switch_B1.c: 193: Sw->Debounce=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	194
;Switch_B1.c: 194: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	195
;Switch_B1.c: 195: Sw->Hold1=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	196
;Switch_B1.c: 196: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	197
;Switch_B1.c: 197: Sw->Hold2=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	198
;Switch_B1.c: 198: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	199
;Switch_B1.c: 199: Sw->Hold3=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	200
	
l21574:	
;Switch_B1.c: 200: setRF_Learn(1,0);
	clrf	(?_setRF_Learn)
	movlw	(01h)
	fcall	_setRF_Learn
	line	201
	
l21576:	
;Switch_B1.c: 201: Sw_OffFunc(sw);
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	fcall	_Sw_OffFunc
	goto	l14424
	line	202
	
l14423:	
	goto	l14424
	line	203
	
l14422:	
	goto	l14424
	line	204
	
l14421:	
	goto	l14424
	line	205
	
l14407:	
	line	206
	
l14424:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Main
	__end_of_setSw_Main:
;; =============== function _setSw_Main ends ============

	signat	_setSw_Main,4216
	global	_Flash_Memory_Modify
psect	text4891,local,class=CODE,delta=2
global __ptext4891
__ptext4891:

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 464 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text4891
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	464
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
	opt	stack 8
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l-status,0+pclath+cstack]
	line	466
	
l21478:	
;MCU_16f1518_B1.c: 465: char i;
;MCU_16f1518_B1.c: 466: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Modify@i)
	
l21480:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u10021
	goto	u10020
u10021:
	goto	l21484
u10020:
	goto	l21490
	
l21482:	
	goto	l21490
	line	467
	
l8421:	
	line	468
	
l21484:	
;MCU_16f1518_B1.c: 467: {
;MCU_16f1518_B1.c: 468: Memory->Data[i]=Flash_Memory_Read(i);
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
	line	466
	
l21486:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l21488:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u10031
	goto	u10030
u10031:
	goto	l21484
u10030:
	goto	l21490
	
l8422:	
	line	470
	
l21490:	
;MCU_16f1518_B1.c: 469: }
;MCU_16f1518_B1.c: 470: Memory->Data[0]=Product->Data[12];
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
	line	471
;MCU_16f1518_B1.c: 471: Memory->Data[1]=Product->Data[13];
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
	line	472
;MCU_16f1518_B1.c: 472: Memory->Data[2]=Product->Data[14];
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
	line	473
;MCU_16f1518_B1.c: 473: Memory->Data[3]=Product->Data[21];
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
	line	474
;MCU_16f1518_B1.c: 474: Memory->Data[4]=Product->Data[22];
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
	line	475
;MCU_16f1518_B1.c: 475: Memory->Data[5]=Product->Data[23];
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
	line	476
;MCU_16f1518_B1.c: 476: if(Memory->LoopSave)
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u10041
	goto	u10040
u10041:
	goto	l21496
u10040:
	line	478
	
l21492:	
;MCU_16f1518_B1.c: 477: {
;MCU_16f1518_B1.c: 478: Memory->LoopSave=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	479
;MCU_16f1518_B1.c: 479: TMain->FirstOpen=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	480
;MCU_16f1518_B1.c: 480: TMain->First=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	481
	
l21494:	
;MCU_16f1518_B1.c: 481: Memory->Data[30]=1;
	movf	(_Memory),w
	addlw	01Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	bsf	status,0
	rlf	indf1,f
	goto	l21496
	line	482
	
l8423:	
	line	483
	
l21496:	
;MCU_16f1518_B1.c: 482: }
;MCU_16f1518_B1.c: 483: GIE=0;
	bcf	(95/8),(95)&7
	line	484
	
l21498:	
;MCU_16f1518_B1.c: 484: Flash_Memory_Erasing();
	fcall	_Flash_Memory_Erasing
	line	485
	
l21500:	
;MCU_16f1518_B1.c: 485: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	486
	
l21502:	
;MCU_16f1518_B1.c: 486: GIE=1;
	bsf	(95/8),(95)&7
	line	487
	
l8424:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
;; =============== function _Flash_Memory_Modify ends ============

	signat	_Flash_Memory_Modify,88
	global	_setRF_Enable
psect	text4892,local,class=CODE,delta=2
global __ptext4892
__ptext4892:

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 288 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;		_setPowerFault_ERROR
;; This function uses a non-reentrant model
;;
psect	text4892
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	288
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
	opt	stack 5
; Regs used in _setRF_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	289
	
l21462:	
;RF_Control_B1.c: 289: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	290
	
l21464:	
;RF_Control_B1.c: 290: if(command)
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	skipz
	goto	u10010
	goto	l21468
u10010:
	line	292
	
l21466:	
;RF_Control_B1.c: 291: {
;RF_Control_B1.c: 292: RF->Enable=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	293
;RF_Control_B1.c: 293: }
	goto	l13208
	line	294
	
l13206:	
	line	296
	
l21468:	
;RF_Control_B1.c: 294: else
;RF_Control_B1.c: 295: {
;RF_Control_B1.c: 296: RF->Enable=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	297
;RF_Control_B1.c: 297: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	298
	
l21470:	
;RF_Control_B1.c: 298: Transceive_GO=0;
	bcf	(_Transceive_GO/8),(_Transceive_GO)&7
	line	299
	
l21472:	
;RF_Control_B1.c: 299: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	300
	
l21474:	
;RF_Control_B1.c: 300: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	301
	
l21476:	
;RF_Control_B1.c: 301: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l13208
	line	302
	
l13207:	
	line	303
	
l13208:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
;; =============== function _setRF_Enable ends ============

	signat	_setRF_Enable,8312
	global	_Switch_Initialization
psect	text4893,local,class=CODE,delta=2
global __ptext4893
__ptext4893:

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
;;		_setLED
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4893
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	39
	global	__size_of_Switch_Initialization
	__size_of_Switch_Initialization	equ	__end_of_Switch_Initialization-_Switch_Initialization
	
_Switch_Initialization:	
	opt	stack 8
; Regs used in _Switch_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	40
	
l21454:	
;Switch_B1.c: 40: TouchPower();
	fcall	_TouchPower
	line	42
	
l21456:	
;Switch_B1.c: 42: WPUB1=0;
	movlb 4	; select bank4
	bcf	(4201/8)^0200h,(4201)&7
	line	46
	
l21458:	
;Switch_B1.c: 46: setSw_Initialization(1);
	movlw	(01h)
	fcall	_setSw_Initialization
	line	48
	
l21460:	
;Switch_B1.c: 48: setLED(2,1);
	movlb 0	; select bank0
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movlw	(02h)
	fcall	_setLED
	line	57
	
l14390:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Initialization
	__end_of_Switch_Initialization:
;; =============== function _Switch_Initialization ends ============

	signat	_Switch_Initialization,88
	global	_Flash_Memory_Initialization
psect	text4894,local,class=CODE,delta=2
global __ptext4894
__ptext4894:

;; *************** function _Flash_Memory_Initialization *****************
;; Defined at:
;;		line 358 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   46[BANK0 ] unsigned char 
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
psect	text4894
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	358
	global	__size_of_Flash_Memory_Initialization
	__size_of_Flash_Memory_Initialization	equ	__end_of_Flash_Memory_Initialization-_Flash_Memory_Initialization
	
_Flash_Memory_Initialization:	
	opt	stack 8
; Regs used in _Flash_Memory_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	360
	
l21426:	
;MCU_16f1518_B1.c: 359: char i;
;MCU_16f1518_B1.c: 360: if(Flash_Memory_Read(31) == 0xaa)
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u9991
	goto	u9990
u9991:
	goto	l21434
u9990:
	line	362
	
l21428:	
;MCU_16f1518_B1.c: 361: {
;MCU_16f1518_B1.c: 362: Product->Data[12]=Flash_Memory_Read(0);
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
	line	363
;MCU_16f1518_B1.c: 363: Product->Data[13]=Flash_Memory_Read(1);
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
	line	364
;MCU_16f1518_B1.c: 364: Product->Data[14]=Flash_Memory_Read(2);
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
	line	365
;MCU_16f1518_B1.c: 365: Product->Data[21]=Flash_Memory_Read(3);
	movlw	(03h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	366
;MCU_16f1518_B1.c: 366: Product->Data[22]=Flash_Memory_Read(4);
	movlw	(04h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	367
;MCU_16f1518_B1.c: 367: Product->Data[23]=Flash_Memory_Read(5);
	movlw	(05h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	368
	
l21430:	
;MCU_16f1518_B1.c: 368: if(Flash_Memory_Read(30) == 1)
	movlw	(01Eh)
	fcall	_Flash_Memory_Read
	xorlw	01h&0ffh
	skipz
	goto	u10001
	goto	u10000
u10001:
	goto	l8397
u10000:
	line	370
	
l21432:	
;MCU_16f1518_B1.c: 369: {
;MCU_16f1518_B1.c: 370: TMain->FirstOpen=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	371
;MCU_16f1518_B1.c: 371: TMain->First=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l8397
	line	372
	
l8395:	
	line	373
;MCU_16f1518_B1.c: 372: }
;MCU_16f1518_B1.c: 373: }
	goto	l8397
	line	374
	
l8394:	
	line	376
	
l21434:	
;MCU_16f1518_B1.c: 374: else
;MCU_16f1518_B1.c: 375: {
;MCU_16f1518_B1.c: 376: i=setPercentValue(((char)((100-75)*1.5)));
	movlw	(025h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	377
	
l21436:	
;MCU_16f1518_B1.c: 377: Memory->Data[3]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	378
	
l21438:	
;MCU_16f1518_B1.c: 378: Memory->Data[4]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	379
	
l21440:	
;MCU_16f1518_B1.c: 379: Memory->Data[5]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	380
	
l21442:	
;MCU_16f1518_B1.c: 380: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	381
	
l21444:	
;MCU_16f1518_B1.c: 381: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	382
	
l21446:	
;MCU_16f1518_B1.c: 382: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	383
	
l21448:	
;MCU_16f1518_B1.c: 383: GIE=0;
	bcf	(95/8),(95)&7
	line	384
	
l21450:	
;MCU_16f1518_B1.c: 384: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	385
	
l21452:	
;MCU_16f1518_B1.c: 385: GIE=1;
	bsf	(95/8),(95)&7
	goto	l8397
	line	386
	
l8396:	
	line	387
	
l8397:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initialization
	__end_of_Flash_Memory_Initialization:
;; =============== function _Flash_Memory_Initialization ends ============

	signat	_Flash_Memory_Initialization,88
	global	_LED_Initialization
psect	text4895,local,class=CODE,delta=2
global __ptext4895
__ptext4895:

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
psect	text4895
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	36
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
	opt	stack 8
; Regs used in _LED_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	38
	
l21424:	
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
	
l5937:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Initialization
	__end_of_LED_Initialization:
;; =============== function _LED_Initialization ends ============

	signat	_LED_Initialization,88
	global	_setDimmerLights_AdjRF
psect	text4896,local,class=CODE,delta=2
global __ptext4896
__ptext4896:

;; *************** function _setDimmerLights_AdjRF *****************
;; Defined at:
;;		line 433 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   61[BANK0 ] unsigned char 
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
psect	text4896
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	433
	global	__size_of_setDimmerLights_AdjRF
	__size_of_setDimmerLights_AdjRF	equ	__end_of_setDimmerLights_AdjRF-_setDimmerLights_AdjRF
	
_setDimmerLights_AdjRF:	
	opt	stack 2
; Regs used in _setDimmerLights_AdjRF: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_AdjRF@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjRF@lights)
	line	434
	
l19904:	
;Dimmer_B1.c: 434: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjRF@lights),w
	fcall	_DimmerLightsPointSelect
	line	435
	
l19906:	
;Dimmer_B1.c: 435: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	436
	
l19908:	
;Dimmer_B1.c: 436: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	437
	
l19910:	
;Dimmer_B1.c: 437: DimmerLights->MaxmumValue=getPercentValue(Product->Data[9]);
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
	line	438
	
l4763:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjRF
	__end_of_setDimmerLights_AdjRF:
;; =============== function _setDimmerLights_AdjRF ends ============

	signat	_setDimmerLights_AdjRF,4216
	global	_DimmerLights_ERROR
psect	text4897,local,class=CODE,delta=2
global __ptext4897
__ptext4897:

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
;;		_setPowerFault_ERROR
;; This function uses a non-reentrant model
;;
psect	text4897
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	278
	global	__size_of_DimmerLights_ERROR
	__size_of_DimmerLights_ERROR	equ	__end_of_DimmerLights_ERROR-_DimmerLights_ERROR
	
_DimmerLights_ERROR:	
	opt	stack 5
; Regs used in _DimmerLights_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
	line	279
	
l21406:	
;Dimmer_B1.c: 279: if(getDimmer_TempERROR(1))
	movlw	(01h)
	fcall	_getDimmer_TempERROR
	xorlw	0&0ffh
	skipnz
	goto	u9941
	goto	u9940
u9941:
	goto	l21412
u9940:
	line	281
	
l21408:	
;Dimmer_B1.c: 280: {
;Dimmer_B1.c: 281: if(getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	xorlw	0&0ffh
	skipnz
	goto	u9951
	goto	u9950
u9951:
	goto	l4732
u9950:
	line	283
	
l21410:	
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
	
l4732:	
	line	287
;Dimmer_B1.c: 284: }
;Dimmer_B1.c: 287: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	295
;Dimmer_B1.c: 295: }
	goto	l4733
	line	296
	
l4731:	
	
l21412:	
;Dimmer_B1.c: 296: else if(getDimmer_LoadERROR(1))
	movlw	(01h)
	fcall	_getDimmer_LoadERROR
	xorlw	0&0ffh
	skipnz
	goto	u9961
	goto	u9960
u9961:
	goto	l21416
u9960:
	line	298
	
l21414:	
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
	goto	l4733
	line	301
	
l4734:	
	
l21416:	
;Dimmer_B1.c: 301: else if(getDimmer_PFERROR(1))
	movlw	(01h)
	fcall	_getDimmer_PFERROR
	xorlw	0&0ffh
	skipnz
	goto	u9971
	goto	u9970
u9971:
	goto	l4733
u9970:
	line	304
	
l21418:	
;Dimmer_B1.c: 302: {
;Dimmer_B1.c: 304: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	goto	l4733
	line	312
	
l4736:	
	goto	l4733
	line	314
	
l4735:	
	
l4733:	
;Dimmer_B1.c: 312: }
;Dimmer_B1.c: 314: setDimmerLights_TriggerERROR(1,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_TriggerERROR)
	movlw	(01h)
	fcall	_setDimmerLights_TriggerERROR
	line	323
	
l21420:	
;Dimmer_B1.c: 323: if(TMain->SelfTest == 0)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9981
	goto	u9980
u9981:
	goto	l4738
u9980:
	line	325
	
l21422:	
;Dimmer_B1.c: 324: {
;Dimmer_B1.c: 325: TMain->i=0;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	326
;Dimmer_B1.c: 326: TMain->j=0;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	327
;Dimmer_B1.c: 327: TMain->k=1;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	328
;Dimmer_B1.c: 328: TMain->Count2=0;
	movf	(_TMain),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l4738
	line	329
	
l4737:	
	line	330
	
l4738:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_ERROR
	__end_of_DimmerLights_ERROR:
;; =============== function _DimmerLights_ERROR ends ============

	signat	_DimmerLights_ERROR,88
	global	_setDimmerLights_Adj
psect	text4898,local,class=CODE,delta=2
global __ptext4898
__ptext4898:

;; *************** function _setDimmerLights_Adj *****************
;; Defined at:
;;		line 403 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1   45[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   48[BANK0 ] unsigned char 
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
psect	text4898
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	403
	global	__size_of_setDimmerLights_Adj
	__size_of_setDimmerLights_Adj	equ	__end_of_setDimmerLights_Adj-_setDimmerLights_Adj
	
_setDimmerLights_Adj:	
	opt	stack 6
; Regs used in _setDimmerLights_Adj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Adj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Adj@lights)
	line	404
	
l21388:	
;Dimmer_B1.c: 404: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Adj@lights),w
	fcall	_DimmerLightsPointSelect
	line	405
	
l21390:	
;Dimmer_B1.c: 405: if(status)
	movlb 0	; select bank0
	movf	(setDimmerLights_Adj@status),w
	skipz
	goto	u9920
	goto	l21394
u9920:
	line	407
	
l21392:	
;Dimmer_B1.c: 406: {
;Dimmer_B1.c: 407: DimmerLights->AdjFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	408
;Dimmer_B1.c: 408: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	409
;Dimmer_B1.c: 409: }
	goto	l4757
	line	410
	
l4754:	
	line	412
	
l21394:	
;Dimmer_B1.c: 410: else
;Dimmer_B1.c: 411: {
;Dimmer_B1.c: 412: if(DimmerLights->AdjFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9931
	goto	u9930
u9931:
	goto	l4757
u9930:
	line	414
	
l21396:	
;Dimmer_B1.c: 413: {
;Dimmer_B1.c: 414: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	415
;Dimmer_B1.c: 415: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	416
	
l21398:	
;Dimmer_B1.c: 416: setLoad_StatusOff(1,0,1);
	clrf	(?_setLoad_StatusOff)
	clrf	0+(?_setLoad_StatusOff)+01h
	bsf	status,0
	rlf	0+(?_setLoad_StatusOff)+01h,f
	movlw	(01h)
	fcall	_setLoad_StatusOff
	line	417
	
l21400:	
;Dimmer_B1.c: 417: DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
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
	line	418
;Dimmer_B1.c: 418: setRF_DimmerLights(lights,1);
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(setDimmerLights_Adj@lights),w
	fcall	_setRF_DimmerLights
	line	419
;Dimmer_B1.c: 419: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	420
	
l21402:	
;Dimmer_B1.c: 420: Memory->Modify=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	421
	
l21404:	
;Dimmer_B1.c: 421: Product->Data[(20+lights)]=setPercentValue(DimmerLights->MaxmumValue);
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
	addwf	(_Product),w
	movwf	(??_setDimmerLights_Adj+1)+0
	movf	0+(??_setDimmerLights_Adj+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Adj+0)+0,w
	movwf	indf1
	goto	l4757
	line	422
	
l4756:	
	goto	l4757
	line	423
	
l4755:	
	line	424
	
l4757:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Adj
	__end_of_setDimmerLights_Adj:
;; =============== function _setDimmerLights_Adj ends ============

	signat	_setDimmerLights_Adj,8312
	global	_setDimmerLights_Initialization
psect	text4899,local,class=CODE,delta=2
global __ptext4899
__ptext4899:

;; *************** function _setDimmerLights_Initialization *****************
;; Defined at:
;;		line 50 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   62[BANK0 ] unsigned char 
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
psect	text4899
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
	
l19856:	
;Dimmer_B1.c: 51: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Initialization@lights),w
	fcall	_DimmerLightsPointSelect
	line	53
	
l19858:	
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
	
l19860:	
;Dimmer_B1.c: 54: DimmerLights->Open=1;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	55
	
l19862:	
;Dimmer_B1.c: 55: DimmerLights->Close=1;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	58
	
l19864:	
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
	
l19866:	
;Dimmer_B1.c: 64: DimmerLights->MaxmumValue=getPercentValue(Product->Data[(20+lights)]);
	movf	(setDimmerLights_Initialization@lights),w
	addlw	014h
	addwf	(_Product),w
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
	
l4693:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Initialization
	__end_of_setDimmerLights_Initialization:
;; =============== function _setDimmerLights_Initialization ends ============

	signat	_setDimmerLights_Initialization,4216
	global	_DelayOff_Main
psect	text4900,local,class=CODE,delta=2
global __ptext4900
__ptext4900:

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
psect	text4900
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	44
	global	__size_of_DelayOff_Main
	__size_of_DelayOff_Main	equ	__end_of_DelayOff_Main-_DelayOff_Main
	
_DelayOff_Main:	
	opt	stack 8
; Regs used in _DelayOff_Main: [wreg-status,0+pclath+cstack]
	line	46
	
l21386:	
;DelayOff_B1.c: 46: DlyOff_Main(1);
	movlw	(01h)
	fcall	_DlyOff_Main
	line	54
	
l3501:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Main
	__end_of_DelayOff_Main:
;; =============== function _DelayOff_Main ends ============

	signat	_DelayOff_Main,88
	global	_CC2500_PowerOnInitial
psect	text4901,local,class=CODE,delta=2
global __ptext4901
__ptext4901:

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
psect	text4901
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	98
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg+status,2+status,0+pclath+cstack]
	line	99
	
l21384:	
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
	
l2298:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerOnInitial
	__end_of_CC2500_PowerOnInitial:
;; =============== function _CC2500_PowerOnInitial ends ============

	signat	_CC2500_PowerOnInitial,88
	global	_Buzzer_Initialization
psect	text4902,local,class=CODE,delta=2
global __ptext4902
__ptext4902:

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
psect	text4902
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	20
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
	opt	stack 8
; Regs used in _Buzzer_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	22
	
l21382:	
;Buzzer_B1.c: 22: setBuz_Initialization(1);
	movlw	(01h)
	fcall	_setBuz_Initialization
	line	24
	
l1107:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initialization
	__end_of_Buzzer_Initialization:
;; =============== function _Buzzer_Initialization ends ============

	signat	_Buzzer_Initialization,88
	global	_Sw_OffFunc
psect	text4903,local,class=CODE,delta=2
global __ptext4903
__ptext4903:

;; *************** function _Sw_OffFunc *****************
;; Defined at:
;;		line 231 in file "G:\Program\PIC\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    9[BANK0 ] unsigned char 
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
;;		_setDelayOff_GO
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_Switch
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text4903
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	231
	global	__size_of_Sw_OffFunc
	__size_of_Sw_OffFunc	equ	__end_of_Sw_OffFunc-_Sw_OffFunc
	
_Sw_OffFunc:	
	opt	stack 7
; Regs used in _Sw_OffFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_OffFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_OffFunc@sw)
	line	232
	
l21362:	
;Switch_B1.c: 232: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9891
	goto	u9890
u9891:
	goto	l14436
u9890:
	line	234
	
l21364:	
;Switch_B1.c: 233: {
;Switch_B1.c: 234: Sw->Flag=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,7
	line	235
;Switch_B1.c: 235: if(Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u9901
	goto	u9900
u9901:
	goto	l21380
u9900:
	line	237
	
l21366:	
;Switch_B1.c: 236: {
;Switch_B1.c: 237: if(Sw->Adj)
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9911
	goto	u9910
u9911:
	goto	l14436
u9910:
	line	239
	
l21368:	
;Switch_B1.c: 238: {
;Switch_B1.c: 239: Sw->Adj=0;
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	240
	
l21370:	
;Switch_B1.c: 240: setDimmerLights_TriggerAdj(sw,1);
	clrf	(?_setDimmerLights_TriggerAdj)
	bsf	status,0
	rlf	(?_setDimmerLights_TriggerAdj),f
	movf	(Sw_OffFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	241
	
l21372:	
;Switch_B1.c: 241: setDimmerLights_AdjGo(sw,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_AdjGo)
	movf	(Sw_OffFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	line	243
	
l21374:	
;Switch_B1.c: 243: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(Sw_OffFunc@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_Sw_OffFunc+0)+0
	movf	0+(??_Sw_OffFunc+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Sw_OffFunc+1)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Sw_OffFunc+1)+0,w
	movwf	indf1
	line	244
	
l21376:	
;Switch_B1.c: 244: setRF_DimmerLights(sw,Sw->Status);
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
	line	245
	
l21378:	
;Switch_B1.c: 245: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l14436
	line	246
	
l14434:	
	line	247
;Switch_B1.c: 246: }
;Switch_B1.c: 247: }
	goto	l14436
	line	248
	
l14433:	
	line	250
	
l21380:	
;Switch_B1.c: 248: else
;Switch_B1.c: 249: {
;Switch_B1.c: 250: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(?_setDelayOff_GO)
	clrf	0+(?_setDelayOff_GO)+01h
	movf	(Sw_OffFunc@sw),w
	fcall	_setDelayOff_GO
	line	252
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
;Switch_B1.c: 256: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l14436
	line	257
	
l14435:	
	goto	l14436
	line	258
	
l14432:	
	line	259
	
l14436:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_OffFunc
	__end_of_Sw_OffFunc:
;; =============== function _Sw_OffFunc ends ============

	signat	_Sw_OffFunc,4216
	global	_Sw_AdjFunc
psect	text4904,local,class=CODE,delta=2
global __ptext4904
__ptext4904:

;; *************** function _Sw_AdjFunc *****************
;; Defined at:
;;		line 262 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text4904
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	262
	global	__size_of_Sw_AdjFunc
	__size_of_Sw_AdjFunc	equ	__end_of_Sw_AdjFunc-_Sw_AdjFunc
	
_Sw_AdjFunc:	
	opt	stack 7
; Regs used in _Sw_AdjFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_AdjFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_AdjFunc@sw)
	line	263
	
l21352:	
;Switch_B1.c: 263: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9881
	goto	u9880
u9881:
	goto	l14440
u9880:
	line	265
	
l21354:	
;Switch_B1.c: 264: {
;Switch_B1.c: 265: Sw->Adj=1;
	movf	(_Sw),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	266
;Switch_B1.c: 266: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	267
	
l21356:	
;Switch_B1.c: 267: setRFSW_Status(sw,1);
	clrf	(?_setRFSW_Status)
	bsf	status,0
	rlf	(?_setRFSW_Status),f
	movf	(Sw_AdjFunc@sw),w
	fcall	_setRFSW_Status
	line	269
	
l21358:	
;Switch_B1.c: 269: setDimmerLights_TriggerAdj(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_TriggerAdj)
	bsf	status,0
	rlf	(?_setDimmerLights_TriggerAdj),f
	movf	(Sw_AdjFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	270
	
l21360:	
;Switch_B1.c: 270: setDimmerLights_AdjGo(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_AdjGo)
	bsf	status,0
	rlf	(?_setDimmerLights_AdjGo),f
	movf	(Sw_AdjFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	goto	l14440
	line	271
	
l14439:	
	line	272
	
l14440:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_AdjFunc
	__end_of_Sw_AdjFunc:
;; =============== function _Sw_AdjFunc ends ============

	signat	_Sw_AdjFunc,4216
	global	_Sw_OnFunc
psect	text4905,local,class=CODE,delta=2
global __ptext4905
__ptext4905:

;; *************** function _Sw_OnFunc *****************
;; Defined at:
;;		line 209 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text4905
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	209
	global	__size_of_Sw_OnFunc
	__size_of_Sw_OnFunc	equ	__end_of_Sw_OnFunc-_Sw_OnFunc
	
_Sw_OnFunc:	
	opt	stack 7
; Regs used in _Sw_OnFunc: [wreg+fsr1l-status,0+pclath+cstack]
;Sw_OnFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_OnFunc@sw)
	line	210
	
l21330:	
;Switch_B1.c: 210: Sw->Flag=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	line	211
	
l21332:	
;Switch_B1.c: 211: setBuz(1,1,100);
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	212
	
l21334:	
;Switch_B1.c: 212: if(!Sw->Status)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9871
	goto	u9870
u9871:
	goto	l21348
u9870:
	line	214
	
l21336:	
;Switch_B1.c: 213: {
;Switch_B1.c: 214: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	215
	
l21338:	
;Switch_B1.c: 215: setRFSW_Status(sw,1);
	clrf	(?_setRFSW_Status)
	bsf	status,0
	rlf	(?_setRFSW_Status),f
	movf	(Sw_OnFunc@sw),w
	fcall	_setRFSW_Status
	line	217
	
l21340:	
;Switch_B1.c: 217: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(Sw_OnFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	218
	
l21342:	
;Switch_B1.c: 218: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	bsf	status,0
	rlf	(?_setDimmerLights_Switch),f
	movf	(Sw_OnFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	220
	
l21344:	
;Switch_B1.c: 220: setRF_DimmerLights(sw,Sw->Status);
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
	line	221
	
l21346:	
;Switch_B1.c: 221: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	222
;Switch_B1.c: 222: }
	goto	l14429
	line	223
	
l14427:	
	line	225
	
l21348:	
;Switch_B1.c: 223: else
;Switch_B1.c: 224: {
;Switch_B1.c: 225: Sw->Status=0;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	226
	
l21350:	
;Switch_B1.c: 226: setRFSW_Status(sw,Sw->Status);
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
	goto	l14429
	line	227
	
l14428:	
	line	228
	
l14429:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_OnFunc
	__end_of_Sw_OnFunc:
;; =============== function _Sw_OnFunc ends ============

	signat	_Sw_OnFunc,4216
	global	_setSw_Initialization
psect	text4906,local,class=CODE,delta=2
global __ptext4906
__ptext4906:

;; *************** function _setSw_Initialization *****************
;; Defined at:
;;		line 74 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text4906
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	74
	global	__size_of_setSw_Initialization
	__size_of_setSw_Initialization	equ	__end_of_setSw_Initialization-_setSw_Initialization
	
_setSw_Initialization:	
	opt	stack 8
; Regs used in _setSw_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Initialization@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Initialization@sw)
	line	75
	
l21328:	
;Switch_B1.c: 75: setLED(sw,1);
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movf	(setSw_Initialization@sw),w
	fcall	_setLED
	line	76
	
l14396:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Initialization
	__end_of_setSw_Initialization:
;; =============== function _setSw_Initialization ends ============

	signat	_setSw_Initialization,4216
	global	_setRFSW_Control
psect	text4907,local,class=CODE,delta=2
global __ptext4907
__ptext4907:

;; *************** function _setRFSW_Control *****************
;; Defined at:
;;		line 343 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;		_setRF_DimmerLights
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_Switch
;;		_setBuz
;;		_setTxData
;; This function is called by:
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text4907
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	343
	global	__size_of_setRFSW_Control
	__size_of_setRFSW_Control	equ	__end_of_setRFSW_Control-_setRFSW_Control
	
_setRFSW_Control:	
	opt	stack 5
; Regs used in _setRFSW_Control: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_Control@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Control@sw)
	line	344
	
l21288:	
;RF_Control_B1.c: 344: RfSWPointSelect(sw);
	movf	(setRFSW_Control@sw),w
	fcall	_RfSWPointSelect
	line	345
	
l21290:	
;RF_Control_B1.c: 345: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9841
	goto	u9840
u9841:
	goto	l21296
u9840:
	line	347
	
l21292:	
;RF_Control_B1.c: 346: {
;RF_Control_B1.c: 347: setDelayOff_GO(sw,1,RF_Data[17]);
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
	line	348
	
l21294:	
;RF_Control_B1.c: 348: Product->Data[26+sw]=RF_Data[17];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+011h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+0)+0
	movf	(setRFSW_Control@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setRFSW_Control+1)+0
	movf	0+(??_setRFSW_Control+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRFSW_Control+0)+0,w
	movwf	indf1
	goto	l21296
	line	349
	
l13221:	
	line	350
	
l21296:	
;RF_Control_B1.c: 349: }
;RF_Control_B1.c: 350: if(RFSW->Status == 0)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u9851
	goto	u9850
u9851:
	goto	l21308
u9850:
	line	352
	
l21298:	
;RF_Control_B1.c: 351: {
;RF_Control_B1.c: 352: RFSW->Status=1;
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	353
	
l21300:	
;RF_Control_B1.c: 353: setSw_Status(sw,1);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	bsf	status,0
	rlf	(?_setSw_Status),f
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	355
	
l21302:	
;RF_Control_B1.c: 355: setRF_DimmerLights(sw,1);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	356
	
l21304:	
;RF_Control_B1.c: 356: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	357
	
l21306:	
;RF_Control_B1.c: 357: setDimmerLights_Switch(sw,RFSW->Status);
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
	line	358
;RF_Control_B1.c: 358: }
	goto	l21324
	line	359
	
l13222:	
	line	361
	
l21308:	
;RF_Control_B1.c: 359: else
;RF_Control_B1.c: 360: {
;RF_Control_B1.c: 361: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l21312
u9860:
	line	363
	
l21310:	
;RF_Control_B1.c: 362: {
;RF_Control_B1.c: 363: setRF_DimmerLights(sw,1);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	bsf	status,0
	rlf	(?_setRF_DimmerLights),f
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	364
;RF_Control_B1.c: 364: }
	goto	l21324
	line	365
	
l13224:	
	line	367
	
l21312:	
;RF_Control_B1.c: 365: else
;RF_Control_B1.c: 366: {
;RF_Control_B1.c: 367: RFSW->Status=0;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	368
	
l21314:	
;RF_Control_B1.c: 368: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(?_setDelayOff_GO)
	clrf	0+(?_setDelayOff_GO)+01h
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	line	369
	
l21316:	
;RF_Control_B1.c: 369: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	370
	
l21318:	
;RF_Control_B1.c: 370: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	371
	
l21320:	
;RF_Control_B1.c: 371: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	372
	
l21322:	
;RF_Control_B1.c: 372: setDimmerLights_Switch(sw,RFSW->Status);
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
	goto	l21324
	line	373
	
l13225:	
	goto	l21324
	line	374
	
l13223:	
	line	375
	
l21324:	
;RF_Control_B1.c: 373: }
;RF_Control_B1.c: 374: }
;RF_Control_B1.c: 375: setBuz(1,1,100);
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
	line	376
	
l21326:	
;RF_Control_B1.c: 376: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	377
	
l13226:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Control
	__end_of_setRFSW_Control:
;; =============== function _setRFSW_Control ends ============

	signat	_setRFSW_Control,4216
	global	_setLog_Code
psect	text4908,local,class=CODE,delta=2
global __ptext4908
__ptext4908:

;; *************** function _setLog_Code *****************
;; Defined at:
;;		line 200 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text4908
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	200
	global	__size_of_setLog_Code
	__size_of_setLog_Code	equ	__end_of_setLog_Code-_setLog_Code
	
_setLog_Code:	
	opt	stack 6
; Regs used in _setLog_Code: [wreg+fsr1l-status,0+pclath+cstack]
;setLog_Code@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setLog_Code@rf)
	line	201
	
l19740:	
;RF_Control_B1.c: 201: RfPointSelect(rf);
	movf	(setLog_Code@rf),w
	fcall	_RfPointSelect
	line	202
	
l19742:	
;RF_Control_B1.c: 202: Product->Data[12]=RF_Data[12];
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
	line	203
	
l19744:	
;RF_Control_B1.c: 203: Product->Data[13]=RF_Data[13];
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
	line	204
	
l19746:	
;RF_Control_B1.c: 204: Product->Data[14]=RF_Data[14];
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
	line	205
	
l19748:	
;RF_Control_B1.c: 205: setBuz(1,1,100);
	clrf	(?_setBuz)
	bsf	status,0
	rlf	(?_setBuz),f
	movlw	low(064h)
	movwf	0+(?_setBuz)+01h
	movlw	high(064h)
	movwf	(0+(?_setBuz)+01h)+1
	movlw	(01h)
	fcall	_setBuz
	line	206
	
l19750:	
;RF_Control_B1.c: 206: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	207
	
l19752:	
;RF_Control_B1.c: 207: if(TMain->First)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7821
	goto	u7820
u7821:
	goto	l13192
u7820:
	line	209
	
l19754:	
;RF_Control_B1.c: 208: {
;RF_Control_B1.c: 209: Memory->LoopSave=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	210
	
l13192:	
	line	211
;RF_Control_B1.c: 210: }
;RF_Control_B1.c: 211: Memory->Modify=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	212
	
l13193:	
	return
	opt stack 0
GLOBAL	__end_of_setLog_Code
	__end_of_setLog_Code:
;; =============== function _setLog_Code ends ============

	signat	_setLog_Code,4216
	global	_RF_RxDisable
psect	text4909,local,class=CODE,delta=2
global __ptext4909
__ptext4909:

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 306 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text4909
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	306
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
	opt	stack 7
; Regs used in _RF_RxDisable: [wreg+fsr1l-status,0+pclath+cstack]
;RF_RxDisable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RF_RxDisable@rf)
	line	307
	
l21274:	
;RF_Control_B1.c: 307: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	308
	
l21276:	
;RF_Control_B1.c: 308: if(RF->RxStatus || RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u9821
	goto	u9820
u9821:
	goto	l21280
u9820:
	
l21278:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9831
	goto	u9830
u9831:
	goto	l13214
u9830:
	goto	l21280
	
l13213:	
	line	310
	
l21280:	
;RF_Control_B1.c: 309: {
;RF_Control_B1.c: 310: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	311
;RF_Control_B1.c: 311: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	312
;RF_Control_B1.c: 312: RF->DebounceTime=0;
	movf	(_RF),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	313
;RF_Control_B1.c: 313: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	314
	
l21282:	
;RF_Control_B1.c: 314: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	315
	
l21284:	
;RF_Control_B1.c: 315: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	316
	
l21286:	
;RF_Control_B1.c: 316: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l13214
	line	317
	
l13211:	
	line	318
	
l13214:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
;; =============== function _RF_RxDisable ends ============

	signat	_RF_RxDisable,4216
	global	_Flash_Memory_Erasing
psect	text4910,local,class=CODE,delta=2
global __ptext4910
__ptext4910:

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 453 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text4910
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	453
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
	opt	stack 8
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	454
	
l21260:	
;MCU_16f1518_B1.c: 454: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	line	455
	
l21262:	
;MCU_16f1518_B1.c: 455: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	456
	
l21264:	
;MCU_16f1518_B1.c: 456: PMADRL=0x00;
	clrf	(401)^0180h	;volatile
	line	457
	
l21266:	
;MCU_16f1518_B1.c: 457: FREE=1;
	bsf	(3244/8)^0180h,(3244)&7
	line	458
	
l21268:	
;MCU_16f1518_B1.c: 458: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7
	line	459
	
l21270:	
;MCU_16f1518_B1.c: 459: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	460
	
l21272:	
;MCU_16f1518_B1.c: 460: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	461
	
l8418:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
;; =============== function _Flash_Memory_Erasing ends ============

	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Write
psect	text4911,local,class=CODE,delta=2
global __ptext4911
__ptext4911:

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 433 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text4911
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	433
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
	opt	stack 8
; Regs used in _Flash_Memory_Write: [wreg+fsr1l-status,0+pclath+cstack]
	line	435
	
l21228:	
;MCU_16f1518_B1.c: 434: char i;
;MCU_16f1518_B1.c: 435: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	line	436
	
l21230:	
;MCU_16f1518_B1.c: 436: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	437
	
l21232:	
;MCU_16f1518_B1.c: 437: PMDATH=0;
	clrf	(404)^0180h	;volatile
	line	438
	
l21234:	
;MCU_16f1518_B1.c: 438: FREE=0;
	bcf	(3244/8)^0180h,(3244)&7
	line	439
	
l21236:	
;MCU_16f1518_B1.c: 439: LWLO=1;
	bsf	(3245/8)^0180h,(3245)&7
	line	440
	
l21238:	
;MCU_16f1518_B1.c: 440: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7
	line	441
	
l21240:	
;MCU_16f1518_B1.c: 441: for(i=0 ; i<32 ; i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Write@i)
	
l21242:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u9801
	goto	u9800
u9801:
	goto	l21246
u9800:
	goto	l8414
	
l21244:	
	goto	l8414
	line	442
	
l8413:	
	line	443
	
l21246:	
;MCU_16f1518_B1.c: 442: {
;MCU_16f1518_B1.c: 443: PMADRL=i;
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	444
	
l21248:	
;MCU_16f1518_B1.c: 444: PMDATL=Memory->Data[i];
	movlb 0	; select bank0
	movf	(Flash_Memory_Write@i),w
	addwf	(_Memory),w
	movwf	(??_Flash_Memory_Write+0)+0
	movf	0+(??_Flash_Memory_Write+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	line	445
	
l21250:	
;MCU_16f1518_B1.c: 445: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	441
	
l21252:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l21254:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u9811
	goto	u9810
u9811:
	goto	l21246
u9810:
	
l8414:	
	line	447
;MCU_16f1518_B1.c: 446: }
;MCU_16f1518_B1.c: 447: LWLO=0;
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7
	line	448
	
l21256:	
;MCU_16f1518_B1.c: 448: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	449
	
l21258:	
;MCU_16f1518_B1.c: 449: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	450
	
l8415:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
;; =============== function _Flash_Memory_Write ends ============

	signat	_Flash_Memory_Write,88
	global	_PowerFault_Initialization
psect	text4912,local,class=CODE,delta=2
global __ptext4912
__ptext4912:

;; *************** function _PowerFault_Initialization *****************
;; Defined at:
;;		line 16 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
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
;;		_setPowerFault_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4912
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	16
	global	__size_of_PowerFault_Initialization
	__size_of_PowerFault_Initialization	equ	__end_of_PowerFault_Initialization-_PowerFault_Initialization
	
_PowerFault_Initialization:	
	opt	stack 9
; Regs used in _PowerFault_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	18
	
l21226:	
;PowerFault_B1.c: 18: setPowerFault_Initialization(1);
	movlw	(01h)
	fcall	_setPowerFault_Initialization
	line	20
	
l11942:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFault_Initialization
	__end_of_PowerFault_Initialization:
;; =============== function _PowerFault_Initialization ends ============

	signat	_PowerFault_Initialization,88
	global	_Load_Initialization
psect	text4913,local,class=CODE,delta=2
global __ptext4913
__ptext4913:

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
psect	text4913
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	18
	global	__size_of_Load_Initialization
	__size_of_Load_Initialization	equ	__end_of_Load_Initialization-_Load_Initialization
	
_Load_Initialization:	
	opt	stack 9
; Regs used in _Load_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	20
	
l21224:	
;OverLoad_B1.c: 20: setLoad_Initialization(1);
	movlw	(01h)
	fcall	_setLoad_Initialization
	line	22
	
l9553:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Initialization
	__end_of_Load_Initialization:
;; =============== function _Load_Initialization ends ============

	signat	_Load_Initialization,88
	global	_Temp_Initialization
psect	text4914,local,class=CODE,delta=2
global __ptext4914
__ptext4914:

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
psect	text4914
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	23
	global	__size_of_Temp_Initialization
	__size_of_Temp_Initialization	equ	__end_of_Temp_Initialization-_Temp_Initialization
	
_Temp_Initialization:	
	opt	stack 9
; Regs used in _Temp_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	25
	
l21222:	
;OverTemperature_B1.c: 25: setTemp_Initialization(1);
	movlw	(01h)
	fcall	_setTemp_Initialization
	line	27
	
l10774:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Initialization
	__end_of_Temp_Initialization:
;; =============== function _Temp_Initialization ends ============

	signat	_Temp_Initialization,88
	global	_LED_Main
psect	text4915,local,class=CODE,delta=2
global __ptext4915
__ptext4915:

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
psect	text4915
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	52
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
	opt	stack 9
; Regs used in _LED_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	54
	
l21220:	
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
	
l5940:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
;; =============== function _LED_Main ends ============

	signat	_LED_Main,88
	global	_setLED_Initialization
psect	text4916,local,class=CODE,delta=2
global __ptext4916
__ptext4916:

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
psect	text4916
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
	
l21214:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l21216:	
;LED_B1.c: 70: LED->Enable=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	71
	
l21218:	
;LED_B1.c: 71: setLED(led,0);
	movlb 0	; select bank0
	clrf	(?_setLED)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l5943:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
;; =============== function _setLED_Initialization ends ============

	signat	_setLED_Initialization,4216
	global	_setPercentValue
psect	text4917,local,class=CODE,delta=2
global __ptext4917
__ptext4917:

;; *************** function _setPercentValue *****************
;; Defined at:
;;		line 491 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   44[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___fttol
;; This function is called by:
;;		_setDimmerLights_Adj
;;		_Flash_Memory_Initialization
;; This function uses a non-reentrant model
;;
psect	text4917
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	491
	global	__size_of_setPercentValue
	__size_of_setPercentValue	equ	__end_of_setPercentValue-_setPercentValue
	
_setPercentValue:	
	opt	stack 6
; Regs used in _setPercentValue: [wreg+status,2+status,0+pclath+cstack]
;setPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(setPercentValue@value)
	line	492
	
l21210:	
;Dimmer_B1.c: 492: return (100-(char)((value-37)/0.83));
	movf	(setPercentValue@value),w
	addlw	low(-37)
	movwf	(?___awtoft)
	movlw	high(-37)
	skipnc
	movlw	(high(-37)+1)&0ffh
	movwf	((?___awtoft))+1
	fcall	___awtoft
	movlb 0	; select bank0
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftdiv)+03h
	movlw	0x7b
	movwf	(?___ftdiv)
	movlw	0x54
	movwf	(?___ftdiv+1)
	movlw	0x3f
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
	goto	l4796
	
l21212:	
	line	493
	
l4796:	
	return
	opt stack 0
GLOBAL	__end_of_setPercentValue
	__end_of_setPercentValue:
;; =============== function _setPercentValue ends ============

	signat	_setPercentValue,4217
	global	_setDimmerLights_ERROR
psect	text4918,local,class=CODE,delta=2
global __ptext4918
__ptext4918:

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
psect	text4918
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
	
l21196:	
;Dimmer_B1.c: 334: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	335
	
l21198:	
;Dimmer_B1.c: 335: if(DimmerLights->Status)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u9791
	goto	u9790
u9791:
	goto	l4742
u9790:
	line	337
	
l21200:	
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
	
l21202:	
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
	
l21204:	
;Dimmer_B1.c: 344: setLED(lights,1);
	movlb 0	; select bank0
	clrf	(?_setLED)
	bsf	status,0
	rlf	(?_setLED),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLED
	line	345
	
l21206:	
;Dimmer_B1.c: 345: setSw_Status(lights,0);
	movlb 0	; select bank0
	clrf	(?_setSw_Status)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setSw_Status
	line	346
	
l21208:	
;Dimmer_B1.c: 346: setRFSW_Status(lights,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setRFSW_Status
	goto	l4742
	line	347
	
l4741:	
	line	348
	
l4742:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_ERROR
	__end_of_setDimmerLights_ERROR:
;; =============== function _setDimmerLights_ERROR ends ============

	signat	_setDimmerLights_ERROR,4216
	global	_setDimmerLights
psect	text4919,local,class=CODE,delta=2
global __ptext4919
__ptext4919:

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
psect	text4919
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
	
l21164:	
;Dimmer_B1.c: 362: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights@lights),w
	fcall	_DimmerLightsPointSelect
	line	363
	
l21166:	
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
	
l21168:	
;Dimmer_B1.c: 364: if(status)
	movf	(setDimmerLights@status),w
	skipz
	goto	u9770
	goto	l21194
u9770:
	line	366
	
l21170:	
;Dimmer_B1.c: 365: {
;Dimmer_B1.c: 366: DimmerLights->Status=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	367
	
l21172:	
;Dimmer_B1.c: 367: setLED(lights,0);
	clrf	(?_setLED)
	movf	(setDimmerLights@lights),w
	fcall	_setLED
	line	368
	
l21174:	
;Dimmer_B1.c: 368: RA3=!0;
	movlb 0	; select bank0
	bsf	(99/8),(99)&7
	line	369
	
l21176:	
;Dimmer_B1.c: 369: setLoad_StatusOn(1,1);
	clrf	(?_setLoad_StatusOn)
	bsf	status,0
	rlf	(?_setLoad_StatusOn),f
	movlw	(01h)
	fcall	_setLoad_StatusOn
	line	370
	
l21178:	
;Dimmer_B1.c: 370: setLoad_Count(1,0);
	movlb 0	; select bank0
	clrf	(?_setLoad_Count)
	movlw	(01h)
	fcall	_setLoad_Count
	line	372
	
l21180:	
;Dimmer_B1.c: 372: DimmerLights->Signal=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	373
	
l21182:	
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
	
l21184:	
;Dimmer_B1.c: 375: if(DimmerLights->StatusFlag == 0)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9781
	goto	u9780
u9781:
	goto	l4751
u9780:
	line	377
	
l21186:	
;Dimmer_B1.c: 376: {
;Dimmer_B1.c: 377: DimmerLights->StatusFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	378
	
l21188:	
;Dimmer_B1.c: 378: setDimmer_Detect(1,1);
	clrf	(?_setDimmer_Detect)
	bsf	status,0
	rlf	(?_setDimmer_Detect),f
	movlw	(01h)
	fcall	_setDimmer_Detect
	line	379
	
l21190:	
;Dimmer_B1.c: 379: setLoad_GO(1,1);
	movlb 0	; select bank0
	clrf	(?_setLoad_GO)
	bsf	status,0
	rlf	(?_setLoad_GO),f
	movlw	(01h)
	fcall	_setLoad_GO
	line	380
	
l21192:	
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
	goto	l4751
	line	381
	
l4749:	
	line	382
;Dimmer_B1.c: 381: }
;Dimmer_B1.c: 382: }
	goto	l4751
	line	383
	
l4748:	
	line	385
	
l21194:	
;Dimmer_B1.c: 383: else
;Dimmer_B1.c: 384: {
;Dimmer_B1.c: 385: DimmerLights->Status=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	387
;Dimmer_B1.c: 387: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	388
;Dimmer_B1.c: 388: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	389
;Dimmer_B1.c: 389: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	390
;Dimmer_B1.c: 390: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l4751
	line	399
	
l4750:	
	line	400
	
l4751:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights
	__end_of_setDimmerLights:
;; =============== function _setDimmerLights ends ============

	signat	_setDimmerLights,8312
	global	_DimmerLights_Close
psect	text4920,local,class=CODE,delta=2
global __ptext4920
__ptext4920:

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
psect	text4920
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	71
	global	__size_of_DimmerLights_Close
	__size_of_DimmerLights_Close	equ	__end_of_DimmerLights_Close-_DimmerLights_Close
	
_DimmerLights_Close:	
	opt	stack 8
; Regs used in _DimmerLights_Close: [wreg+fsr1l-status,0+pclath+cstack]
	line	72
	
l21156:	
;Dimmer_B1.c: 72: if(getDimmer_Detect(1))
	movlw	(01h)
	fcall	_getDimmer_Detect
	xorlw	0&0ffh
	skipnz
	goto	u9751
	goto	u9750
u9751:
	goto	l4698
u9750:
	line	74
	
l21158:	
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
	goto	u9761
	goto	u9760
u9761:
	goto	l4698
u9760:
	line	77
	
l21160:	
;Dimmer_B1.c: 76: {
;Dimmer_B1.c: 77: setLoad_GO(1,0);
	movlb 0	; select bank0
	clrf	(?_setLoad_GO)
	movlw	(01h)
	fcall	_setLoad_GO
	line	78
	
l21162:	
;Dimmer_B1.c: 78: Memory->GO=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l4698
	line	79
	
l4697:	
	goto	l4698
	line	80
	
l4696:	
	line	81
	
l4698:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Close
	__end_of_DimmerLights_Close:
;; =============== function _DimmerLights_Close ends ============

	signat	_DimmerLights_Close,88
	global	_getPercentValue
psect	text4921,local,class=CODE,delta=2
global __ptext4921
__ptext4921:

;; *************** function _getPercentValue *****************
;; Defined at:
;;		line 486 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   59[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awtoft
;;		___ftmul
;;		___ftadd
;;		___fttol
;; This function is called by:
;;		_setDimmerLights_Initialization
;;		_setDimmerLights_AdjRF
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text4921
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	486
	global	__size_of_getPercentValue
	__size_of_getPercentValue	equ	__end_of_getPercentValue-_getPercentValue
	
_getPercentValue:	
	opt	stack 2
; Regs used in _getPercentValue: [wreg+status,2+status,0+pclath+cstack]
;getPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(getPercentValue@value)
	line	487
	
l19604:	
;Dimmer_B1.c: 487: return (char)(((100-value)*0.83)+37);
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
	movlw	0x7b
	movwf	(?___ftmul)
	movlw	0x54
	movwf	(?___ftmul+1)
	movlw	0x3f
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
	movlw	0x14
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
	goto	l4793
	
l19606:	
	line	488
	
l4793:	
	return
	opt stack 0
GLOBAL	__end_of_getPercentValue
	__end_of_getPercentValue:
;; =============== function _getPercentValue ends ============

	signat	_getPercentValue,4217
	global	_DlyOff_Main
psect	text4922,local,class=CODE,delta=2
global __ptext4922
__ptext4922:

;; *************** function _DlyOff_Main *****************
;; Defined at:
;;		line 63 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   16[BANK0 ] unsigned char 
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
psect	text4922
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
	
l21126:	
;DelayOff_B1.c: 64: DelayOffPointSelect(sw);
	movf	(DlyOff_Main@sw),w
	fcall	_DelayOffPointSelect
	line	65
	
l21128:	
;DelayOff_B1.c: 65: if(DelayOff->GO)
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9721
	goto	u9720
u9721:
	goto	l3510
u9720:
	line	67
	
l21130:	
;DelayOff_B1.c: 66: {
;DelayOff_B1.c: 67: DelayOff->SecondTime++;
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	68
	
l21132:	
;DelayOff_B1.c: 68: if(DelayOff->SecondTime >= 11200)
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_DlyOff_Main+0)+0+1
	movlw	high(02BC0h)
	subwf	1+(??_DlyOff_Main+0)+0,w
	movlw	low(02BC0h)
	skipnz
	subwf	0+(??_DlyOff_Main+0)+0,w
	skipc
	goto	u9731
	goto	u9730
u9731:
	goto	l3510
u9730:
	line	70
	
l21134:	
;DelayOff_B1.c: 69: {
;DelayOff_B1.c: 70: DelayOff->SecondTime=0;
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	71
	
l21136:	
;DelayOff_B1.c: 71: DelayOff->MinuteTime++;
	movlw	(01h)
	movwf	(??_DlyOff_Main+0)+0
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_DlyOff_Main+0)+0,w
	addwf	indf1,f
	line	72
	
l21138:	
;DelayOff_B1.c: 72: if(DelayOff->MinuteTime >= DelayOff->Value)
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_DelayOff),w
	addlw	01h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u9741
	goto	u9740
u9741:
	goto	l3510
u9740:
	line	74
	
l21140:	
;DelayOff_B1.c: 73: {
;DelayOff_B1.c: 74: DelayOff->MinuteTime=0;
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	75
;DelayOff_B1.c: 75: DelayOff->GO=0;
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	76
	
l21142:	
;DelayOff_B1.c: 76: setSw_Status(sw,0);
	clrf	(?_setSw_Status)
	movf	(DlyOff_Main@sw),w
	fcall	_setSw_Status
	line	77
	
l21144:	
;DelayOff_B1.c: 77: setRFSW_Status(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRFSW_Status)
	movf	(DlyOff_Main@sw),w
	fcall	_setRFSW_Status
	line	78
	
l21146:	
;DelayOff_B1.c: 78: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(?_setRF_DimmerLights)
	movf	(DlyOff_Main@sw),w
	fcall	_setRF_DimmerLights
	line	79
	
l21148:	
;DelayOff_B1.c: 79: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Trigger)
	bsf	status,0
	rlf	(?_setDimmerLights_Trigger),f
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Trigger
	line	80
	
l21150:	
;DelayOff_B1.c: 80: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(?_setDimmerLights_Switch)
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Switch
	line	81
	
l21152:	
;DelayOff_B1.c: 81: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	82
	
l21154:	
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
	goto	l3510
	line	83
	
l3509:	
	goto	l3510
	line	84
	
l3508:	
	goto	l3510
	line	85
	
l3507:	
	line	86
	
l3510:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Main
	__end_of_DlyOff_Main:
;; =============== function _DlyOff_Main ends ============

	signat	_DlyOff_Main,4216
	global	_DelayOff_Initialization
psect	text4923,local,class=CODE,delta=2
global __ptext4923
__ptext4923:

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
psect	text4923
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	31
	global	__size_of_DelayOff_Initialization
	__size_of_DelayOff_Initialization	equ	__end_of_DelayOff_Initialization-_DelayOff_Initialization
	
_DelayOff_Initialization:	
	opt	stack 9
; Regs used in _DelayOff_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	33
	
l21124:	
;DelayOff_B1.c: 33: DlyOff_Initialization(1);
	movlw	(01h)
	fcall	_DlyOff_Initialization
	line	41
	
l3498:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Initialization
	__end_of_DelayOff_Initialization:
;; =============== function _DelayOff_Initialization ends ============

	signat	_DelayOff_Initialization,88
	global	_CC2500_SIDLEMode
psect	text4924,local,class=CODE,delta=2
global __ptext4924
__ptext4924:

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
psect	text4924
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	184
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l21122:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l2329:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_SIDLEMode
	__end_of_CC2500_SIDLEMode:
;; =============== function _CC2500_SIDLEMode ends ============

	signat	_CC2500_SIDLEMode,88
	global	_CC2500_FrequencyCabr
psect	text4925,local,class=CODE,delta=2
global __ptext4925
__ptext4925:

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
psect	text4925
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	176
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l21120:	
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
	
l2326:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_FrequencyCabr
	__end_of_CC2500_FrequencyCabr:
;; =============== function _CC2500_FrequencyCabr ends ============

	signat	_CC2500_FrequencyCabr,88
	global	_CC2500_ClearRXFIFO
psect	text4926,local,class=CODE,delta=2
global __ptext4926
__ptext4926:

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
psect	text4926
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	169
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l21118:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l2323:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearRXFIFO
	__end_of_CC2500_ClearRXFIFO:
;; =============== function _CC2500_ClearRXFIFO ends ============

	signat	_CC2500_ClearRXFIFO,88
	global	_CC2500_ClearTXFIFO
psect	text4927,local,class=CODE,delta=2
global __ptext4927
__ptext4927:

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
psect	text4927
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	162
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l21116:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l2320:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearTXFIFO
	__end_of_CC2500_ClearTXFIFO:
;; =============== function _CC2500_ClearTXFIFO ends ============

	signat	_CC2500_ClearTXFIFO,88
	global	_CC2500_InitPATable
psect	text4928,local,class=CODE,delta=2
global __ptext4928
__ptext4928:

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
psect	text4928
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	148
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg+status,2+status,0+pclath+cstack]
	line	152
	
l19550:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l19552:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u7681
	goto	u7680
u7681:
	goto	l19556
u7680:
	goto	l2317
	
l19554:	
	goto	l2317
	line	153
	
l2315:	
	line	154
	
l19556:	
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
	
l19558:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l19560:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l19562:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u7691
	goto	u7690
u7691:
	goto	l19556
u7690:
	goto	l2317
	
l2316:	
	line	157
	
l2317:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitPATable
	__end_of_CC2500_InitPATable:
;; =============== function _CC2500_InitPATable ends ============

	signat	_CC2500_InitPATable,88
	global	_CC2500_InitSetREG
psect	text4929,local,class=CODE,delta=2
global __ptext4929
__ptext4929:

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
psect	text4929
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	132
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg+status,2+status,0+pclath+cstack]
	line	136
	
l19536:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l19538:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u7661
	goto	u7660
u7661:
	goto	l19542
u7660:
	goto	l2312
	
l19540:	
	goto	l2312
	line	137
	
l2310:	
	line	138
	
l19542:	
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
	
l19544:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(?_CC2500_WriteREG)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l19546:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l19548:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u7671
	goto	u7670
u7671:
	goto	l19542
u7670:
	goto	l2312
	
l2311:	
	line	143
	
l2312:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitSetREG
	__end_of_CC2500_InitSetREG:
;; =============== function _CC2500_InitSetREG ends ============

	signat	_CC2500_InitSetREG,88
	global	_CC2500_RxData
psect	text4930,local,class=CODE,delta=2
global __ptext4930
__ptext4930:

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
psect	text4930
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	57
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
	opt	stack 7
; Regs used in _CC2500_RxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	62
	
l21074:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u9661
	goto	u9660
u9661:
	goto	l21078
u9660:
	goto	l2284
	line	64
	
l21076:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l2284
	
l2285:	
	
l2284:	
	btfsc	(104/8),(104)&7
	goto	u9671
	goto	u9670
u9671:
	goto	l2284
u9670:
	goto	l21078
	
l2286:	
	goto	l21078
	line	65
	
l2283:	
	line	66
	
l21078:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l21080:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 1	; select bank1
	movf	(_s_data)^080h,w
	skipz
	goto	u9680
	goto	l21112
u9680:
	line	70
	
l21082:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	71
	
l21084:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	72
;CC2500_B1.c: 72: while(RC2==1);
	goto	l2288
	
l2289:	
	
l2288:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u9691
	goto	u9690
u9691:
	goto	l2288
u9690:
	goto	l21086
	
l2290:	
	line	73
	
l21086:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l21088:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_Rx_Length)^080h
	line	77
	
l21090:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	movlb 0	; select bank0
	clrf	(CC2500_RxData@loop_f)
	goto	l21098
	line	78
	
l2292:	
	line	79
	
l21092:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l21094:	
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
	
l21096:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l21098
	
l2291:	
	
l21098:	
	movlb 1	; select bank1
	movf	(_Rx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u9701
	goto	u9700
u9701:
	goto	l21092
u9700:
	goto	l21100
	
l2293:	
	line	82
	
l21100:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l21102:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RSSI)^080h
	line	84
	
l21104:	
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
	
l21106:	
;CC2500_B1.c: 86: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	87
	
l21108:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	movlb 1	; select bank1
	btfss	(_CRC)^080h,(7)&7
	goto	u9711
	goto	u9710
u9711:
	goto	l21112
u9710:
	line	88
	
l21110:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l21112
	
l2294:	
	goto	l21112
	line	89
	
l2287:	
	line	90
	
l21112:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l21114:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(?_setRF_RxStatus)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l2295:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_RxData
	__end_of_CC2500_RxData:
;; =============== function _CC2500_RxData ends ============

	signat	_CC2500_RxData,88
	global	_CC2500_TxData
psect	text4931,local,class=CODE,delta=2
global __ptext4931
__ptext4931:

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
psect	text4931
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	31
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
	opt	stack 7
; Regs used in _CC2500_TxData: [wreg+fsr1l-status,0+pclath+cstack]
	line	34
	
l19468:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	35
	
l19470:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	36
;CC2500_B1.c: 36: while(RC2==1);
	goto	l2268
	
l2269:	
	
l2268:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u7561
	goto	u7560
u7561:
	goto	l2268
u7560:
	goto	l19472
	
l2270:	
	line	37
	
l19472:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l19474:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	39
	
l19476:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l19478:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l19486
	line	41
	
l2272:	
	line	42
	
l19480:	
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
	
l19482:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l19484:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l19486
	
l2271:	
	
l19486:	
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u7571
	goto	u7570
u7571:
	goto	l19480
u7570:
	
l2273:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RC4=1;
	bsf	(116/8),(116)&7
	line	46
	
l19488:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l2274
	
l2275:	
	
l2274:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u7581
	goto	u7580
u7581:
	goto	l2274
u7580:
	goto	l2277
	
l2276:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l2277
	
l2278:	
	
l2277:	
	btfsc	(104/8),(104)&7
	goto	u7591
	goto	u7590
u7591:
	goto	l2277
u7590:
	goto	l19490
	
l2279:	
	line	49
	
l19490:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l19492:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l2280:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_TxData
	__end_of_CC2500_TxData:
;; =============== function _CC2500_TxData ends ============

	signat	_CC2500_TxData,88
	global	_Buzzer_Main
psect	text4932,local,class=CODE,delta=2
global __ptext4932
__ptext4932:

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
psect	text4932
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	27
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
	opt	stack 9
; Regs used in _Buzzer_Main: [wreg+fsr1l-status,0+pclath+cstack]
	line	29
	
l21072:	
;Buzzer_B1.c: 29: setBuz_Main(1);
	movlw	(01h)
	fcall	_setBuz_Main
	line	31
	
l1110:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Main
	__end_of_Buzzer_Main:
;; =============== function _Buzzer_Main ends ============

	signat	_Buzzer_Main,88
	global	_setBuz_Initialization
psect	text4933,local,class=CODE,delta=2
global __ptext4933
__ptext4933:

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
psect	text4933
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	40
	global	__size_of_setBuz_Initialization
	__size_of_setBuz_Initialization	equ	__end_of_setBuz_Initialization-_setBuz_Initialization
	
_setBuz_Initialization:	
	opt	stack 8
; Regs used in _setBuz_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	41
	
l21070:	
;Buzzer_B1.c: 41: setBuz_Enable(1,1);
	movlb 0	; select bank0
	clrf	(?_setBuz_Enable)
	bsf	status,0
	rlf	(?_setBuz_Enable),f
	movlw	(01h)
	fcall	_setBuz_Enable
	line	42
	
l1116:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Initialization
	__end_of_setBuz_Initialization:
;; =============== function _setBuz_Initialization ends ============

	signat	_setBuz_Initialization,4216
	global	___awtoft
psect	text4934,local,class=CODE,delta=2
global __ptext4934
__ptext4934:

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
psect	text4934
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l19456:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u7551
	goto	u7550
u7551:
	goto	l19460
u7550:
	line	38
	
l19458:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l19460
	line	40
	
l14590:	
	line	41
	
l19460:	
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
	goto	l14591
	
l19462:	
	line	42
	
l14591:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text4935,local,class=CODE,delta=2
global __ptext4935
__ptext4935:

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
psect	text4935
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l19406:	
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
	goto	u7431
	goto	u7430
u7431:
	goto	l19412
u7430:
	line	57
	
l19408:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l14553
	
l19410:	
	goto	l14553
	
l14552:	
	line	58
	
l19412:	
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
	goto	u7441
	goto	u7440
u7441:
	goto	l19418
u7440:
	line	59
	
l19414:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l14553
	
l19416:	
	goto	l14553
	
l14554:	
	line	60
	
l19418:	
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
u7455:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u7450:
	decfsz	wreg,f
	goto	u7455
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
u7465:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u7460:
	decfsz	wreg,f
	goto	u7465
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
	
l19420:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l19422:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l19424:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l19426:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l19428:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l19430
	line	70
	
l14555:	
	line	71
	
l19430:	
	btfss	(___ftmul@f1),(0)&7
	goto	u7471
	goto	u7470
u7471:
	goto	l19434
u7470:
	line	72
	
l19432:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l19434
	
l14556:	
	line	73
	
l19434:	
	movlw	01h
u7485:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u7485

	line	74
	
l19436:	
	movlw	01h
u7495:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u7495
	line	75
	
l19438:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u7501
	goto	u7500
u7501:
	goto	l19430
u7500:
	goto	l19440
	
l14557:	
	line	76
	
l19440:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l19442
	line	77
	
l14558:	
	line	78
	
l19442:	
	btfss	(___ftmul@f1),(0)&7
	goto	u7511
	goto	u7510
u7511:
	goto	l19446
u7510:
	line	79
	
l19444:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l19446
	
l14559:	
	line	80
	
l19446:	
	movlw	01h
u7525:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u7525

	line	81
	
l19448:	
	movlw	01h
u7535:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u7535

	line	82
	
l19450:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u7541
	goto	u7540
u7541:
	goto	l19442
u7540:
	goto	l19452
	
l14560:	
	line	83
	
l19452:	
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
	goto	l14553
	
l19454:	
	line	84
	
l14553:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text4936,local,class=CODE,delta=2
global __ptext4936
__ptext4936:

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
;;		_setPercentValue
;; This function uses a non-reentrant model
;;
psect	text4936
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l19364:	
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
	goto	u7351
	goto	u7350
u7351:
	goto	l19370
u7350:
	line	56
	
l19366:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l14543
	
l19368:	
	goto	l14543
	
l14542:	
	line	57
	
l19370:	
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
	goto	u7361
	goto	u7360
u7361:
	goto	l19376
u7360:
	line	58
	
l19372:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l14543
	
l19374:	
	goto	l14543
	
l14544:	
	line	59
	
l19376:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l19378:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l19380:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u7375:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u7370:
	decfsz	wreg,f
	goto	u7375
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l19382:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u7385:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u7380:
	decfsz	wreg,f
	goto	u7385
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l19384:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l19386:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l19388:	
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
	goto	l19390
	line	69
	
l14545:	
	line	70
	
l19390:	
	movlw	01h
u7395:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u7395
	line	71
	
l19392:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u7405
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u7405
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u7405:
	skipc
	goto	u7401
	goto	u7400
u7401:
	goto	l19398
u7400:
	line	72
	
l19394:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l19396:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l19398
	line	74
	
l14546:	
	line	75
	
l19398:	
	movlw	01h
u7415:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u7415
	line	76
	
l19400:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u7421
	goto	u7420
u7421:
	goto	l19390
u7420:
	goto	l19402
	
l14547:	
	line	77
	
l19402:	
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
	goto	l14543
	
l19404:	
	line	78
	
l14543:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text4937,local,class=CODE,delta=2
global __ptext4937
__ptext4937:

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
psect	text4937
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l19294:	
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
	
l19296:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u7120
	goto	l19302
u7120:
	
l19298:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u7131
	goto	u7130
u7131:
	goto	l19306
u7130:
	
l19300:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u7141
	goto	u7140
u7141:
	goto	l19306
u7140:
	goto	l19302
	
l14500:	
	line	93
	
l19302:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l14501
	
l19304:	
	goto	l14501
	
l14498:	
	line	94
	
l19306:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u7150
	goto	l14504
u7150:
	
l19308:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u7161
	goto	u7160
u7161:
	goto	l19312
u7160:
	
l19310:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u7171
	goto	u7170
u7171:
	goto	l19312
u7170:
	
l14504:	
	line	95
	goto	l14501
	
l14502:	
	line	96
	
l19312:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l19314:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u7181
	goto	u7180
u7181:
	goto	l14505
u7180:
	line	98
	
l19316:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l14505:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u7191
	goto	u7190
u7191:
	goto	l14506
u7190:
	line	100
	
l19318:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l14506:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l19320:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l19322:	
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
	goto	u7201
	goto	u7200
u7201:
	goto	l19334
u7200:
	goto	l19324
	line	109
	
l14508:	
	line	110
	
l19324:	
	movlw	01h
u7215:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u7215
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l19326:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u7221
	goto	u7220
u7221:
	goto	l19332
u7220:
	
l19328:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u7231
	goto	u7230
u7231:
	goto	l19324
u7230:
	goto	l19332
	
l14510:	
	goto	l19332
	
l14511:	
	line	113
	goto	l19332
	
l14513:	
	line	114
	
l19330:	
	movlw	01h
u7245:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u7245

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l19332
	line	116
	
l14512:	
	line	113
	
l19332:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u7251
	goto	u7250
u7251:
	goto	l19330
u7250:
	goto	l14515
	
l14514:	
	line	117
	goto	l14515
	
l14507:	
	
l19334:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u7261
	goto	u7260
u7261:
	goto	l14515
u7260:
	goto	l19336
	line	120
	
l14517:	
	line	121
	
l19336:	
	movlw	01h
u7275:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u7275
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l19338:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u7281
	goto	u7280
u7281:
	goto	l19344
u7280:
	
l19340:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u7291
	goto	u7290
u7291:
	goto	l19336
u7290:
	goto	l19344
	
l14519:	
	goto	l19344
	
l14520:	
	line	124
	goto	l19344
	
l14522:	
	line	125
	
l19342:	
	movlw	01h
u7305:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u7305

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l19344
	line	127
	
l14521:	
	line	124
	
l19344:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u7311
	goto	u7310
u7311:
	goto	l19342
u7310:
	goto	l14515
	
l14523:	
	goto	l14515
	line	128
	
l14516:	
	line	129
	
l14515:	
	btfss	(___ftadd@sign),(7)&7
	goto	u7321
	goto	u7320
u7321:
	goto	l19348
u7320:
	line	131
	
l19346:	
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
	goto	l19348
	line	133
	
l14524:	
	line	134
	
l19348:	
	btfss	(___ftadd@sign),(6)&7
	goto	u7331
	goto	u7330
u7331:
	goto	l19352
u7330:
	line	136
	
l19350:	
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
	goto	l19352
	line	138
	
l14525:	
	line	139
	
l19352:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l19354:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u7341
	goto	u7340
u7341:
	goto	l19360
u7340:
	line	142
	
l19356:	
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
	
l19358:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l19360
	line	145
	
l14526:	
	line	146
	
l19360:	
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
	goto	l14501
	
l19362:	
	line	148
	
l14501:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_setRF_Learn
psect	text4938,local,class=CODE,delta=2
global __ptext4938
__ptext4938:

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
psect	text4938
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
	
l21066:	
;RF_Control_B1.c: 33: RfPointSelect(rf);
	movf	(setRF_Learn@rf),w
	fcall	_RfPointSelect
	line	34
	
l21068:	
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
	
l13143:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Learn
	__end_of_setRF_Learn:
;; =============== function _setRF_Learn ends ============

	signat	_setRF_Learn,8312
	global	_setPowerFault_Initialization
psect	text4939,local,class=CODE,delta=2
global __ptext4939
__ptext4939:

;; *************** function _setPowerFault_Initialization *****************
;; Defined at:
;;		line 30 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1    1[BANK0 ] unsigned char 
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
;;		_PowerFaultPointSelect
;; This function is called by:
;;		_PowerFault_Initialization
;; This function uses a non-reentrant model
;;
psect	text4939
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	30
	global	__size_of_setPowerFault_Initialization
	__size_of_setPowerFault_Initialization	equ	__end_of_setPowerFault_Initialization-_setPowerFault_Initialization
	
_setPowerFault_Initialization:	
	opt	stack 9
; Regs used in _setPowerFault_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
;setPowerFault_Initialization@pf stored from wreg
	movlb 0	; select bank0
	movwf	(setPowerFault_Initialization@pf)
	line	31
	
l21060:	
;PowerFault_B1.c: 31: PowerFaultPointSelect(pf);
	movf	(setPowerFault_Initialization@pf),w
	fcall	_PowerFaultPointSelect
	line	32
	
l21062:	
;PowerFault_B1.c: 32: PF->Enable=1;
	movlb 0	; select bank0
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	33
	
l21064:	
;PowerFault_B1.c: 33: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	34
	
l11948:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Initialization
	__end_of_setPowerFault_Initialization:
;; =============== function _setPowerFault_Initialization ends ============

	signat	_setPowerFault_Initialization,4216
	global	_setTemp_Initialization
psect	text4940,local,class=CODE,delta=2
global __ptext4940
__ptext4940:

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
psect	text4940
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
	
l21056:	
;OverTemperature_B1.c: 64: TempPointSelect(temp);
	movf	(setTemp_Initialization@temp),w
	fcall	_TempPointSelect
	line	65
	
l21058:	
;OverTemperature_B1.c: 65: Temp->Safe=1;
	movlb 0	; select bank0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	66
	
l10793:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Initialization
	__end_of_setTemp_Initialization:
;; =============== function _setTemp_Initialization ends ============

	signat	_setTemp_Initialization,4216
	global	_setLoad_Initialization
psect	text4941,local,class=CODE,delta=2
global __ptext4941
__ptext4941:

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
psect	text4941
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
	
l21050:	
;OverLoad_B1.c: 33: LoadPointSelect(load);
	movf	(setLoad_Initialization@load),w
	fcall	_LoadPointSelect
	line	34
	
l21052:	
;OverLoad_B1.c: 34: Load->Safe=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	35
	
l21054:	
;OverLoad_B1.c: 35: setLoad_AH_AL_Restore(load);
	movf	(setLoad_Initialization@load),w
	fcall	_setLoad_AH_AL_Restore
	line	36
	
l9559:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Initialization
	__end_of_setLoad_Initialization:
;; =============== function _setLoad_Initialization ends ============

	signat	_setLoad_Initialization,4216
	global	_Flash_Memory_Unlock
psect	text4942,local,class=CODE,delta=2
global __ptext4942
__ptext4942:

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 412 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text4942
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	412
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
	opt	stack 8
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	413
	
l21042:	
;MCU_16f1518_B1.c: 413: PMCON2=0x55;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	414
;MCU_16f1518_B1.c: 414: PMCON2=0xaa;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	415
	
l21044:	
;MCU_16f1518_B1.c: 415: WR=1;
	bsf	(3241/8)^0180h,(3241)&7
	line	416
	
l21046:	
;MCU_16f1518_B1.c: 416: _nop();
	nop
	line	417
	
l21048:	
;MCU_16f1518_B1.c: 417: _nop();
	nop
	line	418
	
l8407:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
;; =============== function _Flash_Memory_Unlock ends ============

	signat	_Flash_Memory_Unlock,88
	global	_setSw_Enable
psect	text4943,local,class=CODE,delta=2
global __ptext4943
__ptext4943:

;; *************** function _setSw_Enable *****************
;; Defined at:
;;		line 79 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
;;		_setPowerFault_ERROR
;; This function uses a non-reentrant model
;;
psect	text4943
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	79
	global	__size_of_setSw_Enable
	__size_of_setSw_Enable	equ	__end_of_setSw_Enable-_setSw_Enable
	
_setSw_Enable:	
	opt	stack 7
; Regs used in _setSw_Enable: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Enable@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Enable@sw)
	line	80
	
l21038:	
;Switch_B1.c: 80: SwPointSelect(sw);
	movf	(setSw_Enable@sw),w
	fcall	_SwPointSelect
	line	81
	
l21040:	
;Switch_B1.c: 81: Sw->Enable=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	82
	
l14399:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Enable
	__end_of_setSw_Enable:
;; =============== function _setSw_Enable ends ============

	signat	_setSw_Enable,8312
	global	_getLoad_Safe
psect	text4944,local,class=CODE,delta=2
global __ptext4944
__ptext4944:

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
;;		_MainT
;;		_setTemp_Main
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text4944
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
	
l19256:	
;OverLoad_B1.c: 366: LoadPointSelect(load);
	movf	(getLoad_Safe@load),w
	fcall	_LoadPointSelect
	line	367
	
l19258:	
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
	goto	l9637
	
l19260:	
	line	368
	
l9637:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_Safe
	__end_of_getLoad_Safe:
;; =============== function _getLoad_Safe ends ============

	signat	_getLoad_Safe,4217
	global	_getPF_Safe
psect	text4945,local,class=CODE,delta=2
global __ptext4945
__ptext4945:

;; *************** function _getPF_Safe *****************
;; Defined at:
;;		line 42 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1    1[BANK0 ] unsigned char 
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
;;		_PowerFaultPointSelect
;; This function is called by:
;;		_MainT
;;		_setLoad_Main
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text4945
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	42
	global	__size_of_getPF_Safe
	__size_of_getPF_Safe	equ	__end_of_getPF_Safe-_getPF_Safe
	
_getPF_Safe:	
	opt	stack 8
; Regs used in _getPF_Safe: [wreg+fsr1l-status,0+pclath+cstack]
;getPF_Safe@pf stored from wreg
	movlb 0	; select bank0
	movwf	(getPF_Safe@pf)
	line	43
	
l21032:	
;PowerFault_B1.c: 43: PowerFaultPointSelect(pf);
	movf	(getPF_Safe@pf),w
	fcall	_PowerFaultPointSelect
	line	44
	
l21034:	
;PowerFault_B1.c: 44: return PF->Safe;
	movlb 0	; select bank0
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l11954
	
l21036:	
	line	45
	
l11954:	
	return
	opt stack 0
GLOBAL	__end_of_getPF_Safe
	__end_of_getPF_Safe:
;; =============== function _getPF_Safe ends ============

	signat	_getPF_Safe,4217
	global	_getTemp_Safe
psect	text4946,local,class=CODE,delta=2
global __ptext4946
__ptext4946:

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
;;		_MainT
;;		_setLoad_Main
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text4946
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
	
l21026:	
;OverTemperature_B1.c: 36: TempPointSelect(temp);
	movf	(getTemp_Safe@temp),w
	fcall	_TempPointSelect
	line	37
	
l21028:	
;OverTemperature_B1.c: 37: return Temp->Safe;
	movlb 0	; select bank0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	indf1,w
	andlw	(1<<1)-1
	goto	l10780
	
l21030:	
	line	38
	
l10780:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_Safe
	__end_of_getTemp_Safe:
;; =============== function _getTemp_Safe ends ============

	signat	_getTemp_Safe,4217
	global	_getLoad_ERROR
psect	text4947,local,class=CODE,delta=2
global __ptext4947
__ptext4947:

;; *************** function _getLoad_ERROR *****************
;; Defined at:
;;		line 370 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    2[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_MainT
;;		_Sw_Detect
;; This function uses a non-reentrant model
;;
psect	text4947
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	370
	global	__size_of_getLoad_ERROR
	__size_of_getLoad_ERROR	equ	__end_of_getLoad_ERROR-_getLoad_ERROR
	
_getLoad_ERROR:	
	opt	stack 9
; Regs used in _getLoad_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getLoad_ERROR@load stored from wreg
	movlb 0	; select bank0
	movwf	(getLoad_ERROR@load)
	line	371
	
l21020:	
;OverLoad_B1.c: 371: LoadPointSelect(load);
	movf	(getLoad_ERROR@load),w
	fcall	_LoadPointSelect
	line	372
	
l21022:	
;OverLoad_B1.c: 372: return Load->ERROR;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	swapf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l9640
	
l21024:	
	line	373
	
l9640:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_ERROR
	__end_of_getLoad_ERROR:
;; =============== function _getLoad_ERROR ends ============

	signat	_getLoad_ERROR,4217
	global	_getPF_ERROR
psect	text4948,local,class=CODE,delta=2
global __ptext4948
__ptext4948:

;; *************** function _getPF_ERROR *****************
;; Defined at:
;;		line 47 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1    1[BANK0 ] unsigned char 
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
;;		_PowerFaultPointSelect
;; This function is called by:
;;		_MainT
;;		_Sw_Detect
;; This function uses a non-reentrant model
;;
psect	text4948
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	47
	global	__size_of_getPF_ERROR
	__size_of_getPF_ERROR	equ	__end_of_getPF_ERROR-_getPF_ERROR
	
_getPF_ERROR:	
	opt	stack 9
; Regs used in _getPF_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getPF_ERROR@pf stored from wreg
	movlb 0	; select bank0
	movwf	(getPF_ERROR@pf)
	line	48
	
l21014:	
;PowerFault_B1.c: 48: PowerFaultPointSelect(pf);
	movf	(getPF_ERROR@pf),w
	fcall	_PowerFaultPointSelect
	line	49
	
l21016:	
;PowerFault_B1.c: 49: return PF->ERROR;
	movlb 0	; select bank0
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	andlw	(1<<1)-1
	goto	l11957
	
l21018:	
	line	50
	
l11957:	
	return
	opt stack 0
GLOBAL	__end_of_getPF_ERROR
	__end_of_getPF_ERROR:
;; =============== function _getPF_ERROR ends ============

	signat	_getPF_ERROR,4217
	global	_getTemp_ERROR
psect	text4949,local,class=CODE,delta=2
global __ptext4949
__ptext4949:

;; *************** function _getTemp_ERROR *****************
;; Defined at:
;;		line 40 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
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
;;		_MainT
;;		_Sw_Detect
;; This function uses a non-reentrant model
;;
psect	text4949
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	40
	global	__size_of_getTemp_ERROR
	__size_of_getTemp_ERROR	equ	__end_of_getTemp_ERROR-_getTemp_ERROR
	
_getTemp_ERROR:	
	opt	stack 9
; Regs used in _getTemp_ERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getTemp_ERROR@temp stored from wreg
	movlb 0	; select bank0
	movwf	(getTemp_ERROR@temp)
	line	41
	
l21008:	
;OverTemperature_B1.c: 41: TempPointSelect(temp);
	movf	(getTemp_ERROR@temp),w
	fcall	_TempPointSelect
	line	42
	
l21010:	
;OverTemperature_B1.c: 42: return Temp->ERROR;
	movlb 0	; select bank0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rrf	indf1,w
	andlw	(1<<1)-1
	goto	l10783
	
l21012:	
	line	43
	
l10783:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_ERROR
	__end_of_getTemp_ERROR:
;; =============== function _getTemp_ERROR ends ============

	signat	_getTemp_ERROR,4217
	global	_setLoad_Enable
psect	text4950,local,class=CODE,delta=2
global __ptext4950
__ptext4950:

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
psect	text4950
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
	
l21002:	
;OverLoad_B1.c: 332: LoadPointSelect(load);
	movf	(setLoad_Enable@load),w
	fcall	_LoadPointSelect
	line	333
	
l21004:	
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
	
l21006:	
;OverLoad_B1.c: 334: Load->GO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	335
	
l9622:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Enable
	__end_of_setLoad_Enable:
;; =============== function _setLoad_Enable ends ============

	signat	_setLoad_Enable,8312
	global	_setTemp_Enable
psect	text4951,local,class=CODE,delta=2
global __ptext4951
__ptext4951:

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
psect	text4951
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
	
l20998:	
;OverTemperature_B1.c: 31: TempPointSelect(temp);
	movf	(setTemp_Enable@temp),w
	fcall	_TempPointSelect
	line	32
	
l21000:	
;OverTemperature_B1.c: 32: Temp->Enable=command;
	movlb 0	; select bank0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setTemp_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	33
	
l10777:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Enable
	__end_of_setTemp_Enable:
;; =============== function _setTemp_Enable ends ============

	signat	_setTemp_Enable,8312
	global	_getPowerFault_AD
psect	text4952,local,class=CODE,delta=2
global __ptext4952
__ptext4952:

;; *************** function _getPowerFault_AD *****************
;; Defined at:
;;		line 53 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;;  channel         1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1   12[BANK0 ] unsigned char 
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
;;		_PowerFaultPointSelect
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4952
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	53
	global	__size_of_getPowerFault_AD
	__size_of_getPowerFault_AD	equ	__end_of_getPowerFault_AD-_getPowerFault_AD
	
_getPowerFault_AD:	
	opt	stack 10
; Regs used in _getPowerFault_AD: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
;getPowerFault_AD@pf stored from wreg
	movlb 0	; select bank0
	movwf	(getPowerFault_AD@pf)
	line	54
	
l19206:	
;PowerFault_B1.c: 54: PowerFaultPointSelect(pf);
	movf	(getPowerFault_AD@pf),w
	fcall	_PowerFaultPointSelect
	line	55
	
l19208:	
;PowerFault_B1.c: 55: if(PF->ADtoGO)
	movlb 0	; select bank0
	movf	(_PF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u7101
	goto	u7100
u7101:
	goto	l11962
u7100:
	line	57
	
l19210:	
;PowerFault_B1.c: 56: {
;PowerFault_B1.c: 57: PF->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movwf	(??_getPowerFault_AD+0)+0
	movf	(??_getPowerFault_AD+0)+0,w
	movwf	(?_getAD)
	movf	(getPowerFault_AD@channel),w
	fcall	_getAD
	movlb 0	; select bank0
	movf	(_PF),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	58
	
l19212:	
;PowerFault_B1.c: 58: if(PF->AD < PF->ADRES)
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
	goto	u7115
	movf	0+(??_getPowerFault_AD+0)+0,w
	subwf	0+(??_getPowerFault_AD+2)+0,w
u7115:
	skipnc
	goto	u7111
	goto	u7110
u7111:
	goto	l11962
u7110:
	line	60
	
l19214:	
;PowerFault_B1.c: 59: {
;PowerFault_B1.c: 60: PF->AD=PF->ADRES;
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
	goto	l11962
	line	61
	
l11961:	
	goto	l11962
	line	62
	
l11960:	
	line	63
	
l11962:	
	return
	opt stack 0
GLOBAL	__end_of_getPowerFault_AD
	__end_of_getPowerFault_AD:
;; =============== function _getPowerFault_AD ends ============

	signat	_getPowerFault_AD,8312
	global	_getTemp_AD
psect	text4953,local,class=CODE,delta=2
global __ptext4953
__ptext4953:

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
psect	text4953
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
	
l19192:	
;OverTemperature_B1.c: 47: TempPointSelect(temp);
	movf	(getTemp_AD@temp),w
	fcall	_TempPointSelect
	line	48
	
l19194:	
;OverTemperature_B1.c: 48: if(Temp->ADtoGO)
	movlb 0	; select bank0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u7071
	goto	u7070
u7071:
	goto	l10790
u7070:
	line	50
	
l19196:	
;OverTemperature_B1.c: 49: {
;OverTemperature_B1.c: 50: Temp->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movwf	(??_getTemp_AD+0)+0
	movf	(??_getTemp_AD+0)+0,w
	movwf	(?_getAD)
	movf	(getTemp_AD@channel),w
	fcall	_getAD
	movlb 0	; select bank0
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	51
	
l19198:	
;OverTemperature_B1.c: 51: if(Temp->ADH[0] < Temp->ADRES)
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
	goto	u7085
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u7085:
	skipnc
	goto	u7081
	goto	u7080
u7081:
	goto	l19202
u7080:
	line	53
	
l19200:	
;OverTemperature_B1.c: 52: {
;OverTemperature_B1.c: 53: Temp->ADH[0]=Temp->ADRES;
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
	line	54
;OverTemperature_B1.c: 54: }
	goto	l10790
	line	55
	
l10787:	
	
l19202:	
;OverTemperature_B1.c: 55: else if(Temp->ADH[1] < Temp->ADRES)
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
	goto	u7095
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u7095:
	skipnc
	goto	u7091
	goto	u7090
u7091:
	goto	l10790
u7090:
	line	57
	
l19204:	
;OverTemperature_B1.c: 56: {
;OverTemperature_B1.c: 57: Temp->ADH[1]=Temp->ADRES;
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
	goto	l10790
	line	58
	
l10789:	
	goto	l10790
	line	59
	
l10788:	
	goto	l10790
	
l10786:	
	line	60
	
l10790:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_AD
	__end_of_getTemp_AD:
;; =============== function _getTemp_AD ends ============

	signat	_getTemp_AD,8312
	global	_getLoad_AD
psect	text4954,local,class=CODE,delta=2
global __ptext4954
__ptext4954:

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
psect	text4954
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
	
l19152:	
;OverLoad_B1.c: 40: char i=0,j=0;
	clrf	(getLoad_AD@i)
	clrf	(getLoad_AD@j)
	line	41
	
l19154:	
;OverLoad_B1.c: 41: LoadPointSelect(load);
	movf	(getLoad_AD@load),w
	fcall	_LoadPointSelect
	line	42
	
l19156:	
;OverLoad_B1.c: 42: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u6991
	goto	u6990
u6991:
	goto	l9570
u6990:
	line	44
	
l19158:	
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
	
l19160:	
;OverLoad_B1.c: 45: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l19162:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u7001
	goto	u7000
u7001:
	goto	l19166
u7000:
	goto	l19176
	
l19164:	
	goto	l19176
	line	46
	
l9563:	
	line	47
	
l19166:	
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
	goto	u7015
	movf	0+(??_getLoad_AD+0)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u7015:
	skipnc
	goto	u7011
	goto	u7010
u7011:
	goto	l19172
u7010:
	line	49
	
l19168:	
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
	
l19170:	
;OverLoad_B1.c: 50: j=1;
	clrf	(getLoad_AD@j)
	bsf	status,0
	rlf	(getLoad_AD@j),f
	line	51
;OverLoad_B1.c: 51: break;
	goto	l19176
	line	52
	
l9565:	
	line	45
	
l19172:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l19174:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u7021
	goto	u7020
u7021:
	goto	l19166
u7020:
	goto	l19176
	
l9564:	
	line	54
	
l19176:	
;OverLoad_B1.c: 52: }
;OverLoad_B1.c: 53: }
;OverLoad_B1.c: 54: if(j == 0)
	movf	(getLoad_AD@j),f
	skipz
	goto	u7031
	goto	u7030
u7031:
	goto	l9570
u7030:
	line	56
	
l19178:	
;OverLoad_B1.c: 55: {
;OverLoad_B1.c: 56: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l19180:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u7041
	goto	u7040
u7041:
	goto	l19184
u7040:
	goto	l9570
	
l19182:	
	goto	l9570
	line	57
	
l9567:	
	line	58
	
l19184:	
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
	goto	u7055
	movf	0+(??_getLoad_AD+1)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u7055:
	skipnc
	goto	u7051
	goto	u7050
u7051:
	goto	l19188
u7050:
	line	60
	
l19186:	
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
	goto	l9570
	line	62
	
l9569:	
	line	56
	
l19188:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l19190:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u7061
	goto	u7060
u7061:
	goto	l19184
u7060:
	goto	l9570
	
l9568:	
	goto	l9570
	line	64
	
l9566:	
	goto	l9570
	line	65
	
l9562:	
	line	66
	
l9570:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_AD
	__end_of_getLoad_AD:
;; =============== function _getLoad_AD ends ============

	signat	_getLoad_AD,8312
	global	_RF_Initialization
psect	text4955,local,class=CODE,delta=2
global __ptext4955
__ptext4955:

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
psect	text4955
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	18
	global	__size_of_RF_Initialization
	__size_of_RF_Initialization	equ	__end_of_RF_Initialization-_RF_Initialization
	
_RF_Initialization:	
	opt	stack 10
; Regs used in _RF_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l20996:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l13137:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Initialization
	__end_of_RF_Initialization:
;; =============== function _RF_Initialization ends ============

	signat	_RF_Initialization,88
	global	_Mcu_Initialization
psect	text4956,local,class=CODE,delta=2
global __ptext4956
__ptext4956:

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
psect	text4956
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	12
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+fsr1l-status,0+pclath+cstack]
	line	14
	
l20982:	
;MCU_16f1518_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l20984:	
;MCU_16f1518_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l20986:	
;MCU_16f1518_B1.c: 18: TMR0_Set();
	fcall	_TMR0_Set
	line	22
	
l20988:	
;MCU_16f1518_B1.c: 20: ;;
;MCU_16f1518_B1.c: 22: ADC_Set();
	fcall	_ADC_Set
	line	26
	
l20990:	
;MCU_16f1518_B1.c: 26: INT_Set();
	fcall	_INT_Set
	line	28
	
l20992:	
;MCU_16f1518_B1.c: 28: IOC_Set();
	fcall	_IOC_Set
	line	34
	
l20994:	
;MCU_16f1518_B1.c: 30: ;;
;MCU_16f1518_B1.c: 32: ;;
;MCU_16f1518_B1.c: 34: Memory=&VarMemory;
	movlw	(_VarMemory)&0ffh
	movlb 0	; select bank0
	movwf	(??_Mcu_Initialization+0)+0
	movf	(??_Mcu_Initialization+0)+0,w
	movwf	(_Memory)
	line	35
	
l8314:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
;; =============== function _Mcu_Initialization ends ============

	signat	_Mcu_Initialization,88
	global	_setLED_Main
psect	text4957,local,class=CODE,delta=2
global __ptext4957
__ptext4957:

;; *************** function _setLED_Main *****************
;; Defined at:
;;		line 215 in file "G:\Program\PIC\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    2[BANK0 ] unsigned char 
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
;;		_LedPointSelect
;; This function is called by:
;;		_LED_Main
;; This function uses a non-reentrant model
;;
psect	text4957
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
	
l20960:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l20962:	
;LED_B1.c: 217: if(LED->GO)
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9611
	goto	u9610
u9611:
	goto	l5978
u9610:
	line	219
	
l20964:	
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
	
l20966:	
;LED_B1.c: 220: if(LED->Time == 500/5)
	movf	(_LED)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(064h)
	skipz
	goto	u9625
	moviw	[1]fsr1
	xorlw	high(064h)
u9625:
	skipz
	goto	u9621
	goto	u9620
u9621:
	goto	l5978
u9620:
	line	222
	
l20968:	
;LED_B1.c: 221: {
;LED_B1.c: 222: LED->Time=0;
	movf	(_LED)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	224
	
l20970:	
;LED_B1.c: 224: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED_Main@led),w
	xorlw	01h&0ffh
	skipz
	goto	u9631
	goto	u9630
u9631:
	goto	l20974
u9630:
	line	226
	
l20972:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RC7=~RC7;
	movlw	1<<((119)&7)
	xorwf	((119)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l5978
	line	230
	
l5973:	
	
l20974:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h&0ffh
	skipz
	goto	u9641
	goto	u9640
u9641:
	goto	l20978
u9640:
	line	232
	
l20976:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RA3=~RA3;
	movlw	1<<((99)&7)
	xorwf	((99)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l5978
	line	242
	
l5975:	
	
l20978:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h&0ffh
	skipz
	goto	u9651
	goto	u9650
u9651:
	goto	l5978
u9650:
	line	244
	
l20980:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB5=~RB5;
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l5978
	line	245
	
l5977:	
	goto	l5978
	line	247
	
l5976:	
	goto	l5978
	
l5974:	
	goto	l5978
	
l5972:	
	goto	l5978
	line	248
	
l5971:	
	line	249
	
l5978:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Main
	__end_of_setLED_Main:
;; =============== function _setLED_Main ends ============

	signat	_setLED_Main,4216
	global	_setDimmer_PFERROR
psect	text4958,local,class=CODE,delta=2
global __ptext4958
__ptext4958:

;; *************** function _setDimmer_PFERROR *****************
;; Defined at:
;;		line 516 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setPowerFault_ERROR
;; This function uses a non-reentrant model
;;
psect	text4958
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	516
	global	__size_of_setDimmer_PFERROR
	__size_of_setDimmer_PFERROR	equ	__end_of_setDimmer_PFERROR-_setDimmer_PFERROR
	
_setDimmer_PFERROR:	
	opt	stack 7
; Regs used in _setDimmer_PFERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmer_PFERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_PFERROR@dimmer)
	line	517
	
l20956:	
;Dimmer_B1.c: 517: DimmerPointSelect(dimmer);
	movf	(setDimmer_PFERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	518
	
l20958:	
;Dimmer_B1.c: 518: Dimmer->PFERROR=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_PFERROR@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	519
	
l4809:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_PFERROR
	__end_of_setDimmer_PFERROR:
;; =============== function _setDimmer_PFERROR ends ============

	signat	_setDimmer_PFERROR,8312
	global	_setDimmer_LoadERROR
psect	text4959,local,class=CODE,delta=2
global __ptext4959
__ptext4959:

;; *************** function _setDimmer_LoadERROR *****************
;; Defined at:
;;		line 511 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text4959
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	511
	global	__size_of_setDimmer_LoadERROR
	__size_of_setDimmer_LoadERROR	equ	__end_of_setDimmer_LoadERROR-_setDimmer_LoadERROR
	
_setDimmer_LoadERROR:	
	opt	stack 7
; Regs used in _setDimmer_LoadERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmer_LoadERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_LoadERROR@dimmer)
	line	512
	
l20952:	
;Dimmer_B1.c: 512: DimmerPointSelect(dimmer);
	movf	(setDimmer_LoadERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	513
	
l20954:	
;Dimmer_B1.c: 513: Dimmer->LoadERROR=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_LoadERROR@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	514
	
l4806:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_LoadERROR
	__end_of_setDimmer_LoadERROR:
;; =============== function _setDimmer_LoadERROR ends ============

	signat	_setDimmer_LoadERROR,8312
	global	_setDimmer_TempERROR
psect	text4960,local,class=CODE,delta=2
global __ptext4960
__ptext4960:

;; *************** function _setDimmer_TempERROR *****************
;; Defined at:
;;		line 506 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text4960
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	506
	global	__size_of_setDimmer_TempERROR
	__size_of_setDimmer_TempERROR	equ	__end_of_setDimmer_TempERROR-_setDimmer_TempERROR
	
_setDimmer_TempERROR:	
	opt	stack 7
; Regs used in _setDimmer_TempERROR: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmer_TempERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_TempERROR@dimmer)
	line	507
	
l20948:	
;Dimmer_B1.c: 507: DimmerPointSelect(dimmer);
	movf	(setDimmer_TempERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	508
	
l20950:	
;Dimmer_B1.c: 508: Dimmer->TempERROR=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_TempERROR@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	509
	
l4803:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_TempERROR
	__end_of_setDimmer_TempERROR:
;; =============== function _setDimmer_TempERROR ends ============

	signat	_setDimmer_TempERROR,8312
	global	_setDimmerLights_TriggerAdj
psect	text4961,local,class=CODE,delta=2
global __ptext4961
__ptext4961:

;; *************** function _setDimmerLights_TriggerAdj *****************
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
;;		_Sw_OffFunc
;;		_Sw_AdjFunc
;; This function uses a non-reentrant model
;;
psect	text4961
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	460
	global	__size_of_setDimmerLights_TriggerAdj
	__size_of_setDimmerLights_TriggerAdj	equ	__end_of_setDimmerLights_TriggerAdj-_setDimmerLights_TriggerAdj
	
_setDimmerLights_TriggerAdj:	
	opt	stack 7
; Regs used in _setDimmerLights_TriggerAdj: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_TriggerAdj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerAdj@lights)
	line	461
	
l20944:	
;Dimmer_B1.c: 461: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerAdj@lights),w
	fcall	_DimmerLightsPointSelect
	line	462
	
l20946:	
;Dimmer_B1.c: 462: DimmerLights->TriggerAdj=command;
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
	line	463
	
l4778:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerAdj
	__end_of_setDimmerLights_TriggerAdj:
;; =============== function _setDimmerLights_TriggerAdj ends ============

	signat	_setDimmerLights_TriggerAdj,8312
	global	_setDimmerLights_AdjGo
psect	text4962,local,class=CODE,delta=2
global __ptext4962
__ptext4962:

;; *************** function _setDimmerLights_AdjGo *****************
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
;;		_Sw_OffFunc
;;		_Sw_AdjFunc
;; This function uses a non-reentrant model
;;
psect	text4962
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	450
	global	__size_of_setDimmerLights_AdjGo
	__size_of_setDimmerLights_AdjGo	equ	__end_of_setDimmerLights_AdjGo-_setDimmerLights_AdjGo
	
_setDimmerLights_AdjGo:	
	opt	stack 7
; Regs used in _setDimmerLights_AdjGo: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_AdjGo@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjGo@lights)
	line	451
	
l20940:	
;Dimmer_B1.c: 451: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjGo@lights),w
	fcall	_DimmerLightsPointSelect
	line	452
	
l20942:	
;Dimmer_B1.c: 452: DimmerLights->AdjGo=command;
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
	line	453
	
l4772:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjGo
	__end_of_setDimmerLights_AdjGo:
;; =============== function _setDimmerLights_AdjGo ends ============

	signat	_setDimmerLights_AdjGo,8312
	global	_setLoad_LightsStatus
psect	text4963,local,class=CODE,delta=2
global __ptext4963
__ptext4963:

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
psect	text4963
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
	
l19080:	
;OverLoad_B1.c: 310: LoadPointSelect(load);
	movf	(setLoad_LightsStatus@load),w
	fcall	_LoadPointSelect
	line	311
	
l19082:	
;OverLoad_B1.c: 311: if(lights == 1)
	movlb 0	; select bank0
	movf	(setLoad_LightsStatus@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l19086
u6910:
	line	313
	
l19084:	
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
	goto	l19086
	line	314
	
l9613:	
	line	315
	
l19086:	
;OverLoad_B1.c: 314: }
;OverLoad_B1.c: 315: if(lights == 2)
	movf	(setLoad_LightsStatus@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u6921
	goto	u6920
u6921:
	goto	l19090
u6920:
	line	317
	
l19088:	
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
	goto	l19090
	line	318
	
l9614:	
	line	319
	
l19090:	
;OverLoad_B1.c: 318: }
;OverLoad_B1.c: 319: if(lights == 3)
	movf	(setLoad_LightsStatus@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u6931
	goto	u6930
u6931:
	goto	l9616
u6930:
	line	321
	
l19092:	
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
	goto	l9616
	line	322
	
l9615:	
	line	323
	
l9616:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_LightsStatus
	__end_of_setLoad_LightsStatus:
;; =============== function _setLoad_LightsStatus ends ============

	signat	_setLoad_LightsStatus,12408
	global	_setLoad_StatusOn
psect	text4964,local,class=CODE,delta=2
global __ptext4964
__ptext4964:

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
psect	text4964
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
	
l20936:	
;OverLoad_B1.c: 343: LoadPointSelect(load);
	movf	(setLoad_StatusOn@load),w
	fcall	_LoadPointSelect
	line	344
	
l20938:	
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
	
l9628:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOn
	__end_of_setLoad_StatusOn:
;; =============== function _setLoad_StatusOn ends ============

	signat	_setLoad_StatusOn,8312
	global	_setLED
psect	text4965,local,class=CODE,delta=2
global __ptext4965
__ptext4965:

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
;;		_setPowerFault_ERROR
;;		_Switch_Initialization
;;		_setSw_Initialization
;; This function uses a non-reentrant model
;;
psect	text4965
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
	
l20886:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l20888:	
;LED_B1.c: 77: if(command == 0)
	movlb 0	; select bank0
	movf	(setLED@command),f
	skipz
	goto	u9481
	goto	u9480
u9481:
	goto	l20902
u9480:
	line	80
	
l20890:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u9491
	goto	u9490
u9491:
	goto	l20894
u9490:
	line	85
	
l20892:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RC7=1;
	bsf	(119/8),(119)&7
	line	87
;LED_B1.c: 87: }
	goto	l5968
	line	90
	
l5947:	
	
l20894:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u9501
	goto	u9500
u9501:
	goto	l20898
u9500:
	line	95
	
l20896:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RA3=1;
	bsf	(99/8),(99)&7
	line	97
;LED_B1.c: 97: }
	goto	l5968
	line	110
	
l5949:	
	
l20898:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u9511
	goto	u9510
u9511:
	goto	l5968
u9510:
	line	115
	
l20900:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB5=1;
	bsf	(109/8),(109)&7
	goto	l5968
	line	117
	
l5951:	
	goto	l5968
	line	119
	
l5950:	
	goto	l5968
	
l5948:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l5968
	line	120
	
l5946:	
	
l20902:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h&0ffh
	skipz
	goto	u9521
	goto	u9520
u9521:
	goto	l20916
u9520:
	line	123
	
l20904:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u9531
	goto	u9530
u9531:
	goto	l20908
u9530:
	line	128
	
l20906:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RC7=0;
	bcf	(119/8),(119)&7
	line	130
;LED_B1.c: 130: }
	goto	l5968
	line	133
	
l5954:	
	
l20908:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u9541
	goto	u9540
u9541:
	goto	l20912
u9540:
	line	138
	
l20910:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RA3=0;
	bcf	(99/8),(99)&7
	line	140
;LED_B1.c: 140: }
	goto	l5968
	line	153
	
l5956:	
	
l20912:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u9551
	goto	u9550
u9551:
	goto	l5968
u9550:
	line	158
	
l20914:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB5=0;
	bcf	(109/8),(109)&7
	goto	l5968
	line	160
	
l5958:	
	goto	l5968
	line	162
	
l5957:	
	goto	l5968
	
l5955:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l5968
	line	163
	
l5953:	
	
l20916:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah&0ffh
	skipz
	goto	u9561
	goto	u9560
u9561:
	goto	l20932
u9560:
	line	165
	
l20918:	
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
	
l20920:	
;LED_B1.c: 168: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u9571
	goto	u9570
u9571:
	goto	l20924
u9570:
	line	173
	
l20922:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RC7=1;
	bsf	(119/8),(119)&7
	line	175
;LED_B1.c: 175: }
	goto	l5968
	line	178
	
l5961:	
	
l20924:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u9581
	goto	u9580
u9581:
	goto	l20928
u9580:
	line	183
	
l20926:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RA3=1;
	bsf	(99/8),(99)&7
	line	185
;LED_B1.c: 185: }
	goto	l5968
	line	198
	
l5963:	
	
l20928:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u9591
	goto	u9590
u9591:
	goto	l5968
u9590:
	line	203
	
l20930:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB5=1;
	bsf	(109/8),(109)&7
	goto	l5968
	line	205
	
l5965:	
	goto	l5968
	line	207
	
l5964:	
	goto	l5968
	
l5962:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l5968
	line	208
	
l5960:	
	
l20932:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh&0ffh
	skipz
	goto	u9601
	goto	u9600
u9601:
	goto	l5968
u9600:
	line	210
	
l20934:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l5968
	line	211
	
l5967:	
	goto	l5968
	line	212
	
l5966:	
	goto	l5968
	
l5959:	
	goto	l5968
	
l5952:	
	
l5968:	
	return
	opt stack 0
GLOBAL	__end_of_setLED
	__end_of_setLED:
;; =============== function _setLED ends ============

	signat	_setLED,8312
	global	_setLoad_StatusOff
psect	text4966,local,class=CODE,delta=2
global __ptext4966
__ptext4966:

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
psect	text4966
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
	
l20870:	
;OverLoad_B1.c: 348: LoadPointSelect(load);
	movf	(setLoad_StatusOff@load),w
	fcall	_LoadPointSelect
	line	349
	
l20872:	
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
	
l20874:	
;OverLoad_B1.c: 351: if(lights == 1)
	movf	(setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u9451
	goto	u9450
u9451:
	goto	l20878
u9450:
	line	353
	
l20876:	
;OverLoad_B1.c: 352: {
;OverLoad_B1.c: 353: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l20878
	line	354
	
l9631:	
	line	355
	
l20878:	
;OverLoad_B1.c: 354: }
;OverLoad_B1.c: 355: if(lights == 2)
	movf	(setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u9461
	goto	u9460
u9461:
	goto	l20882
u9460:
	line	357
	
l20880:	
;OverLoad_B1.c: 356: {
;OverLoad_B1.c: 357: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l20882
	line	358
	
l9632:	
	line	359
	
l20882:	
;OverLoad_B1.c: 358: }
;OverLoad_B1.c: 359: if(lights == 3)
	movf	(setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u9471
	goto	u9470
u9471:
	goto	l9634
u9470:
	line	361
	
l20884:	
;OverLoad_B1.c: 360: {
;OverLoad_B1.c: 361: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l9634
	line	362
	
l9633:	
	line	363
	
l9634:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOff
	__end_of_setLoad_StatusOff:
;; =============== function _setLoad_StatusOff ends ============

	signat	_setLoad_StatusOff,12408
	global	_setDimmerLights_TriggerERROR
psect	text4967,local,class=CODE,delta=2
global __ptext4967
__ptext4967:

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
psect	text4967
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
	
l18998:	
;Dimmer_B1.c: 351: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	352
	
l19000:	
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
	
l19002:	
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
	
l19004:	
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
	
l19006:	
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
	
l19008:	
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
	
l4745:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerERROR
	__end_of_setDimmerLights_TriggerERROR:
;; =============== function _setDimmerLights_TriggerERROR ends ============

	signat	_setDimmerLights_TriggerERROR,8312
	global	_getDimmer_PFERROR
psect	text4968,local,class=CODE,delta=2
global __ptext4968
__ptext4968:

;; *************** function _getDimmer_PFERROR *****************
;; Defined at:
;;		line 536 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text4968
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	536
	global	__size_of_getDimmer_PFERROR
	__size_of_getDimmer_PFERROR	equ	__end_of_getDimmer_PFERROR-_getDimmer_PFERROR
	
_getDimmer_PFERROR:	
	opt	stack 6
; Regs used in _getDimmer_PFERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getDimmer_PFERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_PFERROR@dimmer)
	line	537
	
l20864:	
;Dimmer_B1.c: 537: DimmerPointSelect(dimmer);
	movf	(getDimmer_PFERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	538
	
l20866:	
;Dimmer_B1.c: 538: return Dimmer->PFERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l4821
	
l20868:	
	line	539
	
l4821:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_PFERROR
	__end_of_getDimmer_PFERROR:
;; =============== function _getDimmer_PFERROR ends ============

	signat	_getDimmer_PFERROR,4217
	global	_getDimmer_LoadERROR
psect	text4969,local,class=CODE,delta=2
global __ptext4969
__ptext4969:

;; *************** function _getDimmer_LoadERROR *****************
;; Defined at:
;;		line 531 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text4969
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	531
	global	__size_of_getDimmer_LoadERROR
	__size_of_getDimmer_LoadERROR	equ	__end_of_getDimmer_LoadERROR-_getDimmer_LoadERROR
	
_getDimmer_LoadERROR:	
	opt	stack 6
; Regs used in _getDimmer_LoadERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getDimmer_LoadERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_LoadERROR@dimmer)
	line	532
	
l20858:	
;Dimmer_B1.c: 532: DimmerPointSelect(dimmer);
	movf	(getDimmer_LoadERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	533
	
l20860:	
;Dimmer_B1.c: 533: return Dimmer->LoadERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	andlw	(1<<1)-1
	goto	l4818
	
l20862:	
	line	534
	
l4818:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_LoadERROR
	__end_of_getDimmer_LoadERROR:
;; =============== function _getDimmer_LoadERROR ends ============

	signat	_getDimmer_LoadERROR,4217
	global	_getDimmer_TempERROR
psect	text4970,local,class=CODE,delta=2
global __ptext4970
__ptext4970:

;; *************** function _getDimmer_TempERROR *****************
;; Defined at:
;;		line 526 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text4970
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	526
	global	__size_of_getDimmer_TempERROR
	__size_of_getDimmer_TempERROR	equ	__end_of_getDimmer_TempERROR-_getDimmer_TempERROR
	
_getDimmer_TempERROR:	
	opt	stack 6
; Regs used in _getDimmer_TempERROR: [wreg+fsr1l-status,0+pclath+cstack]
;getDimmer_TempERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_TempERROR@dimmer)
	line	527
	
l20852:	
;Dimmer_B1.c: 527: DimmerPointSelect(dimmer);
	movf	(getDimmer_TempERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	528
	
l20854:	
;Dimmer_B1.c: 528: return Dimmer->TempERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	andlw	(1<<1)-1
	goto	l4815
	
l20856:	
	line	529
	
l4815:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_TempERROR
	__end_of_getDimmer_TempERROR:
;; =============== function _getDimmer_TempERROR ends ============

	signat	_getDimmer_TempERROR,4217
	global	_getDimmerLights_Trigger
psect	text4971,local,class=CODE,delta=2
global __ptext4971
__ptext4971:

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
psect	text4971
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	254
	global	__size_of_getDimmerLights_Trigger
	__size_of_getDimmerLights_Trigger	equ	__end_of_getDimmerLights_Trigger-_getDimmerLights_Trigger
	
_getDimmerLights_Trigger:	
	opt	stack 8
; Regs used in _getDimmerLights_Trigger: [wreg+fsr1l-status,0+pclath+cstack]
	line	255
	
l18962:	
;Dimmer_B1.c: 255: char Status=0,i,length;
	movlb 0	; select bank0
	clrf	(getDimmerLights_Trigger@Status)
	line	262
	
l18964:	
;Dimmer_B1.c: 262: length=1;
	clrf	(getDimmerLights_Trigger@length)
	bsf	status,0
	rlf	(getDimmerLights_Trigger@length),f
	line	266
	
l18966:	
;Dimmer_B1.c: 266: for(i=0 ; i<length ; i++)
	clrf	(getDimmerLights_Trigger@i)
	goto	l4724
	line	267
	
l4725:	
	line	268
	
l18968:	
;Dimmer_B1.c: 267: {
;Dimmer_B1.c: 268: DimmerLightsPointSelect(i+1);
	movf	(getDimmerLights_Trigger@i),w
	addlw	01h
	fcall	_DimmerLightsPointSelect
	line	269
	
l18970:	
;Dimmer_B1.c: 269: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u6731
	goto	u6730
u6731:
	goto	l18974
u6730:
	line	271
	
l18972:	
;Dimmer_B1.c: 270: {
;Dimmer_B1.c: 271: Status=1;
	clrf	(getDimmerLights_Trigger@Status)
	bsf	status,0
	rlf	(getDimmerLights_Trigger@Status),f
	goto	l18974
	line	272
	
l4726:	
	line	266
	
l18974:	
	movlw	(01h)
	movwf	(??_getDimmerLights_Trigger+0)+0
	movf	(??_getDimmerLights_Trigger+0)+0,w
	addwf	(getDimmerLights_Trigger@i),f
	
l4724:	
	movf	(getDimmerLights_Trigger@length),w
	subwf	(getDimmerLights_Trigger@i),w
	skipc
	goto	u6741
	goto	u6740
u6741:
	goto	l18968
u6740:
	goto	l18976
	
l4727:	
	line	274
	
l18976:	
;Dimmer_B1.c: 272: }
;Dimmer_B1.c: 273: }
;Dimmer_B1.c: 274: return Status;
	movf	(getDimmerLights_Trigger@Status),w
	goto	l4728
	
l18978:	
	line	275
	
l4728:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_Trigger
	__end_of_getDimmerLights_Trigger:
;; =============== function _getDimmerLights_Trigger ends ============

	signat	_getDimmerLights_Trigger,89
	global	_setDimmerLights_Close
psect	text4972,local,class=CODE,delta=2
global __ptext4972
__ptext4972:

;; *************** function _setDimmerLights_Close *****************
;; Defined at:
;;		line 475 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text4972
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	475
	global	__size_of_setDimmerLights_Close
	__size_of_setDimmerLights_Close	equ	__end_of_setDimmerLights_Close-_setDimmerLights_Close
	
_setDimmerLights_Close:	
	opt	stack 8
; Regs used in _setDimmerLights_Close: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Close@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Close@lights)
	line	476
	
l20848:	
;Dimmer_B1.c: 476: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Close@lights),w
	fcall	_DimmerLightsPointSelect
	line	477
	
l20850:	
;Dimmer_B1.c: 477: DimmerLights->Close=command;
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
	line	478
	
l4787:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Close
	__end_of_setDimmerLights_Close:
;; =============== function _setDimmerLights_Close ends ============

	signat	_setDimmerLights_Close,8312
	global	_setDimmerLights_Open
psect	text4973,local,class=CODE,delta=2
global __ptext4973
__ptext4973:

;; *************** function _setDimmerLights_Open *****************
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
;;		_setDimmerLights_Main
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text4973
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	465
	global	__size_of_setDimmerLights_Open
	__size_of_setDimmerLights_Open	equ	__end_of_setDimmerLights_Open-_setDimmerLights_Open
	
_setDimmerLights_Open:	
	opt	stack 8
; Regs used in _setDimmerLights_Open: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Open@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Open@lights)
	line	466
	
l20844:	
;Dimmer_B1.c: 466: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Open@lights),w
	fcall	_DimmerLightsPointSelect
	line	467
	
l20846:	
;Dimmer_B1.c: 467: DimmerLights->Open=command;
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
	line	468
	
l4781:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Open
	__end_of_setDimmerLights_Open:
;; =============== function _setDimmerLights_Open ends ============

	signat	_setDimmerLights_Open,8312
	global	_setLoad_GO
psect	text4974,local,class=CODE,delta=2
global __ptext4974
__ptext4974:

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
psect	text4974
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
	
l20840:	
;OverLoad_B1.c: 338: LoadPointSelect(load);
	movf	(setLoad_GO@load),w
	fcall	_LoadPointSelect
	line	339
	
l20842:	
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
	
l9625:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_GO
	__end_of_setLoad_GO:
;; =============== function _setLoad_GO ends ============

	signat	_setLoad_GO,8312
	global	_getDimmerLights_StatusFlag
psect	text4975,local,class=CODE,delta=2
global __ptext4975
__ptext4975:

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
psect	text4975
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	229
	global	__size_of_getDimmerLights_StatusFlag
	__size_of_getDimmerLights_StatusFlag	equ	__end_of_getDimmerLights_StatusFlag-_getDimmerLights_StatusFlag
	
_getDimmerLights_StatusFlag:	
	opt	stack 8
; Regs used in _getDimmerLights_StatusFlag: [wreg+fsr1l-status,0+pclath+cstack]
	line	230
	
l18932:	
;Dimmer_B1.c: 230: char Status=0,i,length;
	movlb 0	; select bank0
	clrf	(getDimmerLights_StatusFlag@Status)
	line	237
	
l18934:	
;Dimmer_B1.c: 237: length=1;
	clrf	(getDimmerLights_StatusFlag@length)
	bsf	status,0
	rlf	(getDimmerLights_StatusFlag@length),f
	line	242
	
l18936:	
;Dimmer_B1.c: 242: for(i=0 ; i<length ; i++)
	clrf	(getDimmerLights_StatusFlag@i)
	goto	l4717
	line	243
	
l4718:	
	line	244
	
l18938:	
;Dimmer_B1.c: 243: {
;Dimmer_B1.c: 244: DimmerLightsPointSelect(i+1);
	movf	(getDimmerLights_StatusFlag@i),w
	addlw	01h
	fcall	_DimmerLightsPointSelect
	line	245
	
l18940:	
;Dimmer_B1.c: 245: if(DimmerLights->StatusFlag)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u6711
	goto	u6710
u6711:
	goto	l18944
u6710:
	line	247
	
l18942:	
;Dimmer_B1.c: 246: {
;Dimmer_B1.c: 247: Status=1;
	clrf	(getDimmerLights_StatusFlag@Status)
	bsf	status,0
	rlf	(getDimmerLights_StatusFlag@Status),f
	goto	l18944
	line	248
	
l4719:	
	line	242
	
l18944:	
	movlw	(01h)
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	addwf	(getDimmerLights_StatusFlag@i),f
	
l4717:	
	movf	(getDimmerLights_StatusFlag@length),w
	subwf	(getDimmerLights_StatusFlag@i),w
	skipc
	goto	u6721
	goto	u6720
u6721:
	goto	l18938
u6720:
	goto	l18946
	
l4720:	
	line	250
	
l18946:	
;Dimmer_B1.c: 248: }
;Dimmer_B1.c: 249: }
;Dimmer_B1.c: 250: return Status;
	movf	(getDimmerLights_StatusFlag@Status),w
	goto	l4721
	
l18948:	
	line	251
	
l4721:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_StatusFlag
	__end_of_getDimmerLights_StatusFlag:
;; =============== function _getDimmerLights_StatusFlag ends ============

	signat	_getDimmerLights_StatusFlag,89
	global	_setDimmer_Detect
psect	text4976,local,class=CODE,delta=2
global __ptext4976
__ptext4976:

;; *************** function _setDimmer_Detect *****************
;; Defined at:
;;		line 521 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text4976
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	521
	global	__size_of_setDimmer_Detect
	__size_of_setDimmer_Detect	equ	__end_of_setDimmer_Detect-_setDimmer_Detect
	
_setDimmer_Detect:	
	opt	stack 5
; Regs used in _setDimmer_Detect: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmer_Detect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_Detect@dimmer)
	line	522
	
l20836:	
;Dimmer_B1.c: 522: DimmerPointSelect(dimmer);
	movf	(setDimmer_Detect@dimmer),w
	fcall	_DimmerPointSelect
	line	523
	
l20838:	
;Dimmer_B1.c: 523: Dimmer->Detect=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_Detect@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	524
	
l4812:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_Detect
	__end_of_setDimmer_Detect:
;; =============== function _setDimmer_Detect ends ============

	signat	_setDimmer_Detect,8312
	global	_getDimmer_Detect
psect	text4977,local,class=CODE,delta=2
global __ptext4977
__ptext4977:

;; *************** function _getDimmer_Detect *****************
;; Defined at:
;;		line 541 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text4977
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	541
	global	__size_of_getDimmer_Detect
	__size_of_getDimmer_Detect	equ	__end_of_getDimmer_Detect-_getDimmer_Detect
	
_getDimmer_Detect:	
	opt	stack 8
; Regs used in _getDimmer_Detect: [wreg+fsr1l-status,0+pclath+cstack]
;getDimmer_Detect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_Detect@dimmer)
	line	542
	
l18922:	
;Dimmer_B1.c: 542: DimmerPointSelect(dimmer);
	movf	(getDimmer_Detect@dimmer),w
	fcall	_DimmerPointSelect
	line	543
	
l18924:	
;Dimmer_B1.c: 543: return Dimmer->Detect;
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
	goto	l4824
	
l18926:	
	line	544
	
l4824:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_Detect
	__end_of_getDimmer_Detect:
;; =============== function _getDimmer_Detect ends ============

	signat	_getDimmer_Detect,4217
	global	_setDelayOff_GO
psect	text4978,local,class=CODE,delta=2
global __ptext4978
__ptext4978:

;; *************** function _setDelayOff_GO *****************
;; Defined at:
;;		line 89 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;;  value           1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    6[BANK0 ] unsigned char 
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
;;		_DelayOffPointSelect
;;		_DelayTimejudge
;; This function is called by:
;;		_setRFSW_Control
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text4978
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
	
l18904:	
;DelayOff_B1.c: 90: DelayOffPointSelect(sw);
	movf	(setDelayOff_GO@sw),w
	fcall	_DelayOffPointSelect
	line	91
	
l18906:	
;DelayOff_B1.c: 91: if(DelayOff->Enable)
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u6681
	goto	u6680
u6681:
	goto	l3517
u6680:
	line	93
	
l18908:	
;DelayOff_B1.c: 92: {
;DelayOff_B1.c: 93: DelayOff->GO=command;
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDelayOff_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	94
	
l18910:	
;DelayOff_B1.c: 94: if(command)
	movf	(setDelayOff_GO@command),w
	skipz
	goto	u6690
	goto	l18914
u6690:
	line	96
	
l18912:	
;DelayOff_B1.c: 95: {
;DelayOff_B1.c: 96: DelayOff->Value=DelayTimejudge(value);
	movf	(setDelayOff_GO@value),w
	fcall	_DelayTimejudge
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	movf	(_DelayOff),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	line	97
;DelayOff_B1.c: 97: }
	goto	l18918
	line	98
	
l3514:	
	
l18914:	
;DelayOff_B1.c: 98: else if(command == 0)
	movf	(setDelayOff_GO@command),f
	skipz
	goto	u6701
	goto	u6700
u6701:
	goto	l18918
u6700:
	line	100
	
l18916:	
;DelayOff_B1.c: 99: {
;DelayOff_B1.c: 100: Product->Data[sw+26]=0;
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l18918
	line	101
	
l3516:	
	goto	l18918
	line	102
	
l3515:	
	
l18918:	
;DelayOff_B1.c: 101: }
;DelayOff_B1.c: 102: DelayOff->SecondTime=0;
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	103
	
l18920:	
;DelayOff_B1.c: 103: DelayOff->MinuteTime=0;
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l3517
	line	104
	
l3513:	
	line	105
	
l3517:	
	return
	opt stack 0
GLOBAL	__end_of_setDelayOff_GO
	__end_of_setDelayOff_GO:
;; =============== function _setDelayOff_GO ends ============

	signat	_setDelayOff_GO,12408
	global	_setTxData
psect	text4979,local,class=CODE,delta=2
global __ptext4979
__ptext4979:

;; *************** function _setTxData *****************
;; Defined at:
;;		line 125 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
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
;;		_Sw_OnFunc
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text4979
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	125
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
	opt	stack 8
; Regs used in _setTxData: [wreg+fsr1l-status,0+pclath+cstack]
;setTxData@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setTxData@rf)
	line	126
	
l18896:	
;RF_Control_B1.c: 126: RfPointSelect(rf);
	movf	(setTxData@rf),w
	fcall	_RfPointSelect
	line	127
	
l18898:	
;RF_Control_B1.c: 127: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u6661
	goto	u6660
u6661:
	goto	l13173
u6660:
	line	129
	
l18900:	
;RF_Control_B1.c: 128: {
;RF_Control_B1.c: 129: if(RF->TransceiveGO == 0 && 1)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u6671
	goto	u6670
u6671:
	goto	l13173
u6670:
	line	131
	
l18902:	
;RF_Control_B1.c: 130: {
;RF_Control_B1.c: 131: RF->TransceiveGO=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	132
;RF_Control_B1.c: 132: RF_Data[0]=Product->Data[0];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF_Data)^080h
	line	133
;RF_Control_B1.c: 133: RF_Data[1]=Product->Data[1];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+01h
	line	134
;RF_Control_B1.c: 134: RF_Data[2]=Product->Data[24];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	018h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+02h
	line	135
;RF_Control_B1.c: 135: RF_Data[3]=Product->Data[25];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	019h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+03h
	line	136
;RF_Control_B1.c: 136: RF_Data[4]=Product->Data[4];
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
	line	137
;RF_Control_B1.c: 137: RF_Data[5]=Product->Data[5];
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
	line	138
;RF_Control_B1.c: 138: RF_Data[6]=Product->Data[6];
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
	line	139
;RF_Control_B1.c: 139: RF_Data[7]=Product->Data[7];
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
	line	140
;RF_Control_B1.c: 140: RF_Data[8]=Product->Data[8];
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
	line	141
;RF_Control_B1.c: 141: RF_Data[9]=Product->Data[9];
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
	line	142
;RF_Control_B1.c: 142: RF_Data[10]=Product->Data[10];
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
	line	143
;RF_Control_B1.c: 143: RF_Data[11]=Product->Data[11];
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
	line	144
;RF_Control_B1.c: 144: RF_Data[12]=Product->Data[12];
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
	line	145
;RF_Control_B1.c: 145: RF_Data[13]=Product->Data[13];
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
	line	146
;RF_Control_B1.c: 146: RF_Data[14]=Product->Data[14];
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
	line	147
;RF_Control_B1.c: 147: RF_Data[15]=Product->Data[15];
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
	line	148
;RF_Control_B1.c: 148: RF_Data[16]=Product->Data[16];
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
	line	149
;RF_Control_B1.c: 149: RF_Data[17]=Product->Data[17];
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
	line	150
;RF_Control_B1.c: 150: RF_Data[18]=Product->Data[18];
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
	line	151
;RF_Control_B1.c: 151: RF_Data[19]=Product->Data[19];
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
	line	152
;RF_Control_B1.c: 152: RF_Data[20]=Product->Data[20];
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	014h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+014h
	goto	l13173
	line	153
	
l13172:	
	goto	l13173
	line	154
	
l13171:	
	line	155
	
l13173:	
	return
	opt stack 0
GLOBAL	__end_of_setTxData
	__end_of_setTxData:
;; =============== function _setTxData ends ============

	signat	_setTxData,4216
	global	_setDimmerLights_Switch
psect	text4980,local,class=CODE,delta=2
global __ptext4980
__ptext4980:

;; *************** function _setDimmerLights_Switch *****************
;; Defined at:
;;		line 445 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_MainT
;;		_setRFSW_Control
;;		_Sw_OnFunc
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text4980
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	445
	global	__size_of_setDimmerLights_Switch
	__size_of_setDimmerLights_Switch	equ	__end_of_setDimmerLights_Switch-_setDimmerLights_Switch
	
_setDimmerLights_Switch:	
	opt	stack 8
; Regs used in _setDimmerLights_Switch: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Switch@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Switch@lights)
	line	446
	
l20832:	
;Dimmer_B1.c: 446: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Switch@lights),w
	fcall	_DimmerLightsPointSelect
	line	447
	
l20834:	
;Dimmer_B1.c: 447: DimmerLights->Switch=command;
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
	line	448
	
l4769:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Switch
	__end_of_setDimmerLights_Switch:
;; =============== function _setDimmerLights_Switch ends ============

	signat	_setDimmerLights_Switch,8312
	global	_setDimmerLights_Trigger
psect	text4981,local,class=CODE,delta=2
global __ptext4981
__ptext4981:

;; *************** function _setDimmerLights_Trigger *****************
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
;;		_DlyOff_Main
;;		_MainT
;;		_setRFSW_Control
;;		_Sw_OnFunc
;;		_Sw_OffFunc
;; This function uses a non-reentrant model
;;
psect	text4981
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	455
	global	__size_of_setDimmerLights_Trigger
	__size_of_setDimmerLights_Trigger	equ	__end_of_setDimmerLights_Trigger-_setDimmerLights_Trigger
	
_setDimmerLights_Trigger:	
	opt	stack 8
; Regs used in _setDimmerLights_Trigger: [wreg+fsr1l-status,0+pclath+cstack]
;setDimmerLights_Trigger@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Trigger@lights)
	line	456
	
l20828:	
;Dimmer_B1.c: 456: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Trigger@lights),w
	fcall	_DimmerLightsPointSelect
	line	457
	
l20830:	
;Dimmer_B1.c: 457: DimmerLights->Trigger=command;
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
	line	458
	
l4775:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Trigger
	__end_of_setDimmerLights_Trigger:
;; =============== function _setDimmerLights_Trigger ends ============

	signat	_setDimmerLights_Trigger,8312
	global	_setRFSW_Status
psect	text4982,local,class=CODE,delta=2
global __ptext4982
__ptext4982:

;; *************** function _setRFSW_Status *****************
;; Defined at:
;;		line 396 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text4982
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	396
	global	__size_of_setRFSW_Status
	__size_of_setRFSW_Status	equ	__end_of_setRFSW_Status-_setRFSW_Status
	
_setRFSW_Status:	
	opt	stack 8
; Regs used in _setRFSW_Status: [wreg+fsr1l-status,0+pclath+cstack]
;setRFSW_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Status@sw)
	line	397
	
l20824:	
;RF_Control_B1.c: 397: RfSWPointSelect(sw);
	movf	(setRFSW_Status@sw),w
	fcall	_RfSWPointSelect
	line	398
	
l20826:	
;RF_Control_B1.c: 398: RFSW->Status=command;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRFSW_Status@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	399
	
l13234:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Status
	__end_of_setRFSW_Status:
;; =============== function _setRFSW_Status ends ============

	signat	_setRFSW_Status,8312
	global	_setSw_Status
psect	text4983,local,class=CODE,delta=2
global __ptext4983
__ptext4983:

;; *************** function _setSw_Status *****************
;; Defined at:
;;		line 85 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text4983
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	85
	global	__size_of_setSw_Status
	__size_of_setSw_Status	equ	__end_of_setSw_Status-_setSw_Status
	
_setSw_Status:	
	opt	stack 8
; Regs used in _setSw_Status: [wreg+fsr1l-status,0+pclath+cstack]
;setSw_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Status@sw)
	line	86
	
l20820:	
;Switch_B1.c: 86: SwPointSelect(sw);
	movf	(setSw_Status@sw),w
	fcall	_SwPointSelect
	line	87
	
l20822:	
;Switch_B1.c: 87: Sw->Status=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Status@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	88
	
l14402:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Status
	__end_of_setSw_Status:
;; =============== function _setSw_Status ends ============

	signat	_setSw_Status,8312
	global	_DlyOff_Initialization
psect	text4984,local,class=CODE,delta=2
global __ptext4984
__ptext4984:

;; *************** function _DlyOff_Initialization *****************
;; Defined at:
;;		line 57 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text4984
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
	
l20816:	
;DelayOff_B1.c: 58: DelayOffPointSelect(sw);
	movf	(DlyOff_Initialization@sw),w
	fcall	_DelayOffPointSelect
	line	59
	
l20818:	
;DelayOff_B1.c: 59: DelayOff->Enable=1;
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	60
	
l3504:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Initialization
	__end_of_DlyOff_Initialization:
;; =============== function _DlyOff_Initialization ends ============

	signat	_DlyOff_Initialization,4216
	global	_CC2500_WriteREG
psect	text4985,local,class=CODE,delta=2
global __ptext4985
__ptext4985:

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
psect	text4985
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
	
l18864:	
;CC2500_B1.c: 229: RC4=0;
	bcf	(116/8),(116)&7
	line	230
	
l18866:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	231
;CC2500_B1.c: 231: while(RC2==1);
	goto	l2346
	
l2347:	
	
l2346:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u6651
	goto	u6650
u6651:
	goto	l2346
u6650:
	goto	l18868
	
l2348:	
	line	232
	
l18868:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l18870:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	234
	
l18872:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l18874:	
;CC2500_B1.c: 235: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	236
	
l2349:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteREG
	__end_of_CC2500_WriteREG:
;; =============== function _CC2500_WriteREG ends ============

	signat	_CC2500_WriteREG,8312
	global	_CC2500_PowerRST
psect	text4986,local,class=CODE,delta=2
global __ptext4986
__ptext4986:

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
psect	text4986
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	111
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l20802:	
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
	
l20804:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(?_DelayTime_1us)
	movlw	high(0Ah)
	movwf	((?_DelayTime_1us))+1
	fcall	_DelayTime_1us
	line	116
	
l20806:	
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
	
l20808:	
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
	
l20810:	
;CC2500_B1.c: 120: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
	line	121
	
l20812:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	122
;CC2500_B1.c: 122: while(RC2==1);
	goto	l2301
	
l2302:	
	
l2301:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u9431
	goto	u9430
u9431:
	goto	l2301
u9430:
	goto	l20814
	
l2303:	
	line	123
	
l20814:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RC2==1);
	goto	l2304
	
l2305:	
	
l2304:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u9441
	goto	u9440
u9441:
	goto	l2304
u9440:
	
l2306:	
	line	125
;CC2500_B1.c: 125: RC0=0;
	bcf	(112/8),(112)&7
	line	126
;CC2500_B1.c: 126: RC4=1;
	bsf	(116/8),(116)&7
	line	127
	
l2307:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerRST
	__end_of_CC2500_PowerRST:
;; =============== function _CC2500_PowerRST ends ============

	signat	_CC2500_PowerRST,88
	global	_setRF_RxStatus
psect	text4987,local,class=CODE,delta=2
global __ptext4987
__ptext4987:

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
psect	text4987
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
	
l20798:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l20800:	
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
	
l13149:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_RxStatus
	__end_of_setRF_RxStatus:
;; =============== function _setRF_RxStatus ends ============

	signat	_setRF_RxStatus,8312
	global	_CC2500_ReadStatus
psect	text4988,local,class=CODE,delta=2
global __ptext4988
__ptext4988:

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
psect	text4988
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
	
l18836:	
;CC2500_B1.c: 269: RC4=0;
	bcf	(116/8),(116)&7
	line	270
	
l18838:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	272
;CC2500_B1.c: 272: while(RC2==1);
	goto	l2364
	
l2365:	
	
l2364:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u6621
	goto	u6620
u6621:
	goto	l2364
u6620:
	goto	l18840
	
l2366:	
	line	274
	
l18840:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l18842:	
;CC2500_B1.c: 276: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	278
	
l18844:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_s_data)^080h
	line	279
	
l2367:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadStatus
	__end_of_CC2500_ReadStatus:
;; =============== function _CC2500_ReadStatus ends ============

	signat	_CC2500_ReadStatus,4216
	global	_CC2500_WriteCommand
psect	text4989,local,class=CODE,delta=2
global __ptext4989
__ptext4989:

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
psect	text4989
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
	
l18828:	
;CC2500_B1.c: 255: RC4=0;
	bcf	(116/8),(116)&7
	line	256
	
l18830:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	258
;CC2500_B1.c: 258: while(RC2==1);
	goto	l2358
	
l2359:	
	
l2358:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7
	goto	u6611
	goto	u6610
u6611:
	goto	l2358
u6610:
	goto	l18832
	
l2360:	
	line	260
	
l18832:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l18834:	
;CC2500_B1.c: 261: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	line	263
	
l2361:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteCommand
	__end_of_CC2500_WriteCommand:
;; =============== function _CC2500_WriteCommand ends ============

	signat	_CC2500_WriteCommand,4216
	global	_setBuz
psect	text4990,local,class=CODE,delta=2
global __ptext4990
__ptext4990:

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
;;		_setOverTemp_ERROR
;;		_setLog_Code
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setSw_Main
;;		_Sw_OnFunc
;; This function uses a non-reentrant model
;;
psect	text4990
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
	
l18800:	
;Buzzer_B1.c: 46: BuzPointSelect(buz);
	movf	(setBuz@buz),w
	fcall	_BuzPointSelect
	line	47
;Buzzer_B1.c: 47: time/=5;
	movlw	low(05h)
	movlb 0	; select bank0
	movwf	(?___awdiv)
	movlw	high(05h)
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
	
l18802:	
;Buzzer_B1.c: 48: if(Buz->Enable)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u6551
	goto	u6550
u6551:
	goto	l1127
u6550:
	line	50
	
l18804:	
;Buzzer_B1.c: 49: {
;Buzzer_B1.c: 50: if(Buz->GO == 0)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u6561
	goto	u6560
u6561:
	goto	l18820
u6560:
	line	52
	
l18806:	
;Buzzer_B1.c: 51: {
;Buzzer_B1.c: 52: Buz->GO=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	53
	
l18808:	
;Buzzer_B1.c: 53: Buz->Count=(--count);
	movlw	low(01h)
	subwf	(setBuz@count),f
	movf	((setBuz@count)),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	54
	
l18810:	
;Buzzer_B1.c: 54: Buz->TimeValue=time;
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	56
	
l18812:	
;Buzzer_B1.c: 56: if(buz ==1)
	movf	(setBuz@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u6571
	goto	u6570
u6571:
	goto	l18816
u6570:
	line	58
	
l18814:	
;Buzzer_B1.c: 57: {
;Buzzer_B1.c: 58: RB3=1;
	bsf	(107/8),(107)&7
	goto	l18816
	line	59
	
l1121:	
	line	61
	
l18816:	
;Buzzer_B1.c: 59: }
;Buzzer_B1.c: 61: if(Buz->TimeValue == 0)
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	fsr1++
	iorwf	indf1,w
	skipz
	goto	u6581
	goto	u6580
u6581:
	goto	l1127
u6580:
	line	63
	
l18818:	
;Buzzer_B1.c: 62: {
;Buzzer_B1.c: 63: Buz->TimeValue=100/5;
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(014h)
	movwi	[0]fsr1
	movlw	high(014h)
	movwi	[1]fsr1
	goto	l1127
	line	64
	
l1122:	
	line	65
;Buzzer_B1.c: 64: }
;Buzzer_B1.c: 65: }
	goto	l1127
	line	66
	
l1120:	
	line	68
	
l18820:	
;Buzzer_B1.c: 66: else
;Buzzer_B1.c: 67: {
;Buzzer_B1.c: 68: if(Buz->BufferStatus1 == 0)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u6591
	goto	u6590
u6591:
	goto	l18824
u6590:
	line	70
	
l18822:	
;Buzzer_B1.c: 69: {
;Buzzer_B1.c: 70: Buz->BufferStatus1=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	71
;Buzzer_B1.c: 71: Buz->CountBuffer1=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	72
;Buzzer_B1.c: 72: Buz->TimeValueBuffer1=time;
	movf	(_Buz),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	73
;Buzzer_B1.c: 73: }
	goto	l1127
	line	74
	
l1124:	
	
l18824:	
;Buzzer_B1.c: 74: else if(Buz->BufferStatus2 == 0)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u6601
	goto	u6600
u6601:
	goto	l1127
u6600:
	line	76
	
l18826:	
;Buzzer_B1.c: 75: {
;Buzzer_B1.c: 76: Buz->BufferStatus2=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	77
;Buzzer_B1.c: 77: Buz->CountBuffer2=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	78
;Buzzer_B1.c: 78: Buz->TimeValueBuffer2=time;
	movf	(_Buz),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	goto	l1127
	line	79
	
l1126:	
	goto	l1127
	line	80
	
l1125:	
	goto	l1127
	
l1123:	
	goto	l1127
	line	81
	
l1119:	
	line	82
	
l1127:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz
	__end_of_setBuz:
;; =============== function _setBuz ends ============

	signat	_setBuz,12408
	global	_setBuz_Enable
psect	text4991,local,class=CODE,delta=2
global __ptext4991
__ptext4991:

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
psect	text4991
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
	
l20794:	
;Buzzer_B1.c: 35: BuzPointSelect(buz);
	movf	(setBuz_Enable@buz),w
	fcall	_BuzPointSelect
	line	36
	
l20796:	
;Buzzer_B1.c: 36: Buz->Enable=command;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	37
	
l1113:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Enable
	__end_of_setBuz_Enable:
;; =============== function _setBuz_Enable ends ============

	signat	_setBuz_Enable,8312
	global	_setBuz_Main
psect	text4992,local,class=CODE,delta=2
global __ptext4992
__ptext4992:

;; *************** function _setBuz_Main *****************
;; Defined at:
;;		line 85 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    4[BANK0 ] unsigned char 
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
;;		_BuzPointSelect
;; This function is called by:
;;		_Buzzer_Main
;; This function uses a non-reentrant model
;;
psect	text4992
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	85
	global	__size_of_setBuz_Main
	__size_of_setBuz_Main	equ	__end_of_setBuz_Main-_setBuz_Main
	
_setBuz_Main:	
	opt	stack 9
; Regs used in _setBuz_Main: [wreg+fsr1l-status,0+pclath+cstack]
;setBuz_Main@buz stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz_Main@buz)
	line	86
	
l18752:	
;Buzzer_B1.c: 86: BuzPointSelect(buz);
	movf	(setBuz_Main@buz),w
	fcall	_BuzPointSelect
	line	88
	
l18754:	
;Buzzer_B1.c: 88: if(buz == 1)
	movlb 0	; select bank0
	movf	(setBuz_Main@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u6481
	goto	u6480
u6481:
	goto	l18758
u6480:
	line	90
	
l18756:	
;Buzzer_B1.c: 89: {
;Buzzer_B1.c: 90: Buz->Switch=(RB3)?1:0;
	movlw	0
	btfsc	(107/8),(107)&7
	movlw	1
	movwf	(??_setBuz_Main+0)+0
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	(??_setBuz_Main+0)+0,f
	rlf	(??_setBuz_Main+0)+0,f
	movf	indf1,w
	xorwf	(??_setBuz_Main+0)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_setBuz_Main+0)+0,w
	movwf	indf1
	goto	l18758
	line	91
	
l1130:	
	line	93
	
l18758:	
;Buzzer_B1.c: 91: }
;Buzzer_B1.c: 93: if(Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u6491
	goto	u6490
u6491:
	goto	l1141
u6490:
	line	95
	
l18760:	
;Buzzer_B1.c: 94: {
;Buzzer_B1.c: 95: Buz->Time++;
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
	line	96
	
l18762:	
;Buzzer_B1.c: 96: if(Buz->Time == Buz->TimeValue)
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setBuz_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+0)+0+1
	movf	(_Buz),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorwf	0+(??_setBuz_Main+0)+0,w
	skipz
	goto	u6505
	moviw	[1]fsr1
	xorwf	1+(??_setBuz_Main+0)+0,w
u6505:
	skipz
	goto	u6501
	goto	u6500
u6501:
	goto	l1141
u6500:
	line	98
	
l18764:	
;Buzzer_B1.c: 97: {
;Buzzer_B1.c: 98: Buz->Time=0;
	movf	(_Buz),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	99
;Buzzer_B1.c: 99: if(Buz->Switch == 0)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u6511
	goto	u6510
u6511:
	goto	l18770
u6510:
	line	101
	
l18766:	
;Buzzer_B1.c: 100: {
;Buzzer_B1.c: 101: Buz->Switch=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	103
	
l18768:	
;Buzzer_B1.c: 103: RB3=1;
	bsf	(107/8),(107)&7
	line	105
;Buzzer_B1.c: 105: }
	goto	l1141
	line	106
	
l1133:	
	line	108
	
l18770:	
;Buzzer_B1.c: 106: else
;Buzzer_B1.c: 107: {
;Buzzer_B1.c: 108: Buz->Switch=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	110
	
l18772:	
;Buzzer_B1.c: 110: RB3=0;
	bcf	(107/8),(107)&7
	line	112
	
l18774:	
;Buzzer_B1.c: 112: if(Buz->Count == 0)
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u6521
	goto	u6520
u6521:
	goto	l18794
u6520:
	line	114
	
l18776:	
;Buzzer_B1.c: 113: {
;Buzzer_B1.c: 114: if(Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u6531
	goto	u6530
u6531:
	goto	l18784
u6530:
	line	116
	
l18778:	
;Buzzer_B1.c: 115: {
;Buzzer_B1.c: 116: Buz->BufferStatus1=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	117
	
l18780:	
;Buzzer_B1.c: 117: Buz->Count=(--Buz->CountBuffer1);
	movf	(_Buz),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	decf	wreg,w
	movwi	[0]fsr1
	movwf	(??_setBuz_Main+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz_Main+0)+0,w
	movwf	indf1
	line	118
	
l18782:	
;Buzzer_B1.c: 118: Buz->TimeValue=Buz->TimeValueBuffer1;
	movf	(_Buz),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setBuz_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+0)+0+1
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(??_setBuz_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_setBuz_Main+0)+0,w
	movwi	[1]fsr1
	line	119
;Buzzer_B1.c: 119: }
	goto	l1141
	line	120
	
l1136:	
	
l18784:	
;Buzzer_B1.c: 120: else if(Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u6541
	goto	u6540
u6541:
	goto	l18792
u6540:
	line	122
	
l18786:	
;Buzzer_B1.c: 121: {
;Buzzer_B1.c: 122: Buz->BufferStatus2=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	123
	
l18788:	
;Buzzer_B1.c: 123: Buz->Count=(--Buz->CountBuffer2);
	movf	(_Buz),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	decf	wreg,w
	movwi	[0]fsr1
	movwf	(??_setBuz_Main+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz_Main+0)+0,w
	movwf	indf1
	line	124
	
l18790:	
;Buzzer_B1.c: 124: Buz->TimeValue=Buz->TimeValueBuffer2;
	movf	(_Buz),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setBuz_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+0)+0+1
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(??_setBuz_Main+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_setBuz_Main+0)+0,w
	movwi	[1]fsr1
	line	125
;Buzzer_B1.c: 125: }
	goto	l1141
	line	126
	
l1138:	
	line	128
	
l18792:	
;Buzzer_B1.c: 126: else
;Buzzer_B1.c: 127: {
;Buzzer_B1.c: 128: Buz->GO=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1141
	line	129
	
l1139:	
	goto	l1141
	
l1137:	
	line	130
;Buzzer_B1.c: 129: }
;Buzzer_B1.c: 130: }
	goto	l1141
	line	131
	
l1135:	
	line	133
	
l18794:	
;Buzzer_B1.c: 131: else
;Buzzer_B1.c: 132: {
;Buzzer_B1.c: 133: Buz->Count--;
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l1141
	line	134
	
l1140:	
	goto	l1141
	line	135
	
l1134:	
	goto	l1141
	line	136
	
l1132:	
	goto	l1141
	line	137
	
l1131:	
	line	138
	
l1141:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Main
	__end_of_setBuz_Main:
;; =============== function _setBuz_Main ends ============

	signat	_setBuz_Main,4216
	global	___awdiv
psect	text4993,local,class=CODE,delta=2
global __ptext4993
__ptext4993:

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
psect	text4993
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 8
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l18642:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u6271
	goto	u6270
u6271:
	goto	l18646
u6270:
	line	11
	
l18644:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l18646
	line	13
	
l14594:	
	line	14
	
l18646:	
	btfss	(___awdiv@dividend+1),7
	goto	u6281
	goto	u6280
u6281:
	goto	l18652
u6280:
	line	15
	
l18648:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l18650:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l18652
	line	17
	
l14595:	
	line	18
	
l18652:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l18654:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u6291
	goto	u6290
u6291:
	goto	l18674
u6290:
	line	20
	
l18656:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l18662
	
l14598:	
	line	22
	
l18658:	
	movlw	01h
	
u6305:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u6305
	line	23
	
l18660:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l18662
	line	24
	
l14597:	
	line	21
	
l18662:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u6311
	goto	u6310
u6311:
	goto	l18658
u6310:
	goto	l18664
	
l14599:	
	goto	l18664
	line	25
	
l14600:	
	line	26
	
l18664:	
	movlw	01h
	
u6325:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u6325
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u6335
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u6335:
	skipc
	goto	u6331
	goto	u6330
u6331:
	goto	l18670
u6330:
	line	28
	
l18666:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	29
	
l18668:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l18670
	line	30
	
l14601:	
	line	31
	
l18670:	
	movlw	01h
	
u6345:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u6345
	line	32
	
l18672:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u6351
	goto	u6350
u6351:
	goto	l18664
u6350:
	goto	l18674
	
l14602:	
	goto	l18674
	line	33
	
l14596:	
	line	34
	
l18674:	
	movf	(___awdiv@sign),w
	skipz
	goto	u6360
	goto	l18678
u6360:
	line	35
	
l18676:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l18678
	
l14603:	
	line	36
	
l18678:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l14604
	
l18680:	
	line	37
	
l14604:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text4994,local,class=CODE,delta=2
global __ptext4994
__ptext4994:

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
psect	text4994
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l18582:	
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
	goto	u6161
	goto	u6160
u6161:
	goto	l18588
u6160:
	line	50
	
l18584:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l14564
	
l18586:	
	goto	l14564
	
l14563:	
	line	51
	
l18588:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u6175:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u6170:
	decfsz	wreg,f
	goto	u6175
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l18590:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l18592:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l18594:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l18596:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l18598:	
	btfss	(___fttol@exp1),7
	goto	u6181
	goto	u6180
u6181:
	goto	l18608
u6180:
	line	57
	
l18600:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u6191
	goto	u6190
u6191:
	goto	l18606
u6190:
	line	58
	
l18602:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l14564
	
l18604:	
	goto	l14564
	
l14566:	
	goto	l18606
	line	59
	
l14567:	
	line	60
	
l18606:	
	movlw	01h
u6205:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u6205

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u6211
	goto	u6210
u6211:
	goto	l18606
u6210:
	goto	l18618
	
l14568:	
	line	62
	goto	l18618
	
l14565:	
	line	63
	
l18608:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u6221
	goto	u6220
u6221:
	goto	l18616
u6220:
	line	64
	
l18610:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l14564
	
l18612:	
	goto	l14564
	
l14570:	
	line	65
	goto	l18616
	
l14572:	
	line	66
	
l18614:	
	movlw	01h
u6235:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u6235
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l18616
	line	68
	
l14571:	
	line	65
	
l18616:	
	movf	(___fttol@exp1),f
	skipz
	goto	u6241
	goto	u6240
u6241:
	goto	l18614
u6240:
	goto	l18618
	
l14573:	
	goto	l18618
	line	69
	
l14569:	
	line	70
	
l18618:	
	movf	(___fttol@sign1),w
	skipz
	goto	u6250
	goto	l18622
u6250:
	line	71
	
l18620:	
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
	goto	l18622
	
l14574:	
	line	72
	
l18622:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l14564
	
l18624:	
	line	73
	
l14564:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text4995,local,class=CODE,delta=2
global __ptext4995
__ptext4995:

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
psect	text4995
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l18546:	
	movlb 0	; select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u6050
	goto	l18550
u6050:
	
l18548:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u6061
	goto	u6060
u6061:
	goto	l18556
u6060:
	goto	l18550
	
l14788:	
	line	65
	
l18550:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l14789
	
l18552:	
	goto	l14789
	
l14786:	
	line	66
	goto	l18556
	
l14791:	
	line	67
	
l18554:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u6075:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u6075

	goto	l18556
	line	69
	
l14790:	
	line	66
	
l18556:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u6081
	goto	u6080
u6081:
	goto	l18554
u6080:
	goto	l14793
	
l14792:	
	line	70
	goto	l14793
	
l14794:	
	line	71
	
l18558:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l18560:	
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
	
l18562:	
	movlw	01h
u6095:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u6095

	line	74
	
l14793:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u6101
	goto	u6100
u6101:
	goto	l18558
u6100:
	goto	l18566
	
l14795:	
	line	75
	goto	l18566
	
l14797:	
	line	76
	
l18564:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u6115:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u6115
	goto	l18566
	line	78
	
l14796:	
	line	75
	
l18566:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u6121
	goto	u6120
u6121:
	goto	l18564
u6120:
	
l14798:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u6131
	goto	u6130
u6131:
	goto	l14799
u6130:
	line	80
	
l18568:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l14799:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l18570:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u6145:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u6140:
	decfsz	wreg,f
	goto	u6145
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l18572:	
	movf	(___ftpack@sign),w
	skipz
	goto	u6150
	goto	l14800
u6150:
	line	84
	
l18574:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l14800:	
	line	85
	line	86
	
l14789:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwdiv
psect	text4996,local,class=CODE,delta=2
global __ptext4996
__ptext4996:

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
psect	text4996
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 9
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l18520:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l18522:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u5981
	goto	u5980
u5981:
	goto	l18542
u5980:
	line	11
	
l18524:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l18530
	
l14462:	
	line	13
	
l18526:	
	movlw	01h
	
u5995:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u5995
	line	14
	
l18528:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l18530
	line	15
	
l14461:	
	line	12
	
l18530:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u6001
	goto	u6000
u6001:
	goto	l18526
u6000:
	goto	l18532
	
l14463:	
	goto	l18532
	line	16
	
l14464:	
	line	17
	
l18532:	
	movlw	01h
	
u6015:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u6015
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u6025
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u6025:
	skipc
	goto	u6021
	goto	u6020
u6021:
	goto	l18538
u6020:
	line	19
	
l18534:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l18536:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l18538
	line	21
	
l14465:	
	line	22
	
l18538:	
	movlw	01h
	
u6035:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u6035
	line	23
	
l18540:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u6041
	goto	u6040
u6041:
	goto	l18532
u6040:
	goto	l18542
	
l14466:	
	goto	l18542
	line	24
	
l14460:	
	line	25
	
l18542:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l14467
	
l18544:	
	line	26
	
l14467:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text4997,local,class=CODE,delta=2
global __ptext4997
__ptext4997:

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
psect	text4997
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 9
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l20782:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l20784
	line	6
	
l14454:	
	line	7
	
l20784:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u9391
	goto	u9390
u9391:
	goto	l14455
u9390:
	line	8
	
l20786:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l14455:	
	line	9
	movlw	01h
	
u9405:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u9405
	line	10
	
l20788:	
	movlw	01h
	
u9415:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u9415
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u9421
	goto	u9420
u9421:
	goto	l20784
u9420:
	goto	l20790
	
l14456:	
	line	12
	
l20790:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l14457
	
l20792:	
	line	13
	
l14457:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_SwPointSelect
psect	text4998,local,class=CODE,delta=2
global __ptext4998
__ptext4998:

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
psect	text4998
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
	
l18490:	
;Switch_B1.c: 19: if(sw == 1)
	movf	(SwPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5881
	goto	u5880
u5881:
	goto	l14387
u5880:
	line	21
	
l18492:	
;Switch_B1.c: 20: {
;Switch_B1.c: 21: Sw=&Sw1;
	movlw	(_Sw1)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	goto	l14387
	line	22
	
l14386:	
	line	36
	
l14387:	
	return
	opt stack 0
GLOBAL	__end_of_SwPointSelect
	__end_of_SwPointSelect:
;; =============== function _SwPointSelect ends ============

	signat	_SwPointSelect,4216
	global	_TouchPower
psect	text4999,local,class=CODE,delta=2
global __ptext4999
__ptext4999:

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
psect	text4999
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	10
	global	__size_of_TouchPower
	__size_of_TouchPower	equ	__end_of_TouchPower-_TouchPower
	
_TouchPower:	
	opt	stack 10
; Regs used in _TouchPower: []
	line	11
	
l20766:	
;Switch_B1.c: 11: while(RC5 == 0)
	goto	l14380
	
l14381:	
	line	12
;Switch_B1.c: 12: RC5=1;
	bsf	(117/8),(117)&7
	
l14380:	
	line	11
	movlb 0	; select bank0
	btfss	(117/8),(117)&7
	goto	u9331
	goto	u9330
u9331:
	goto	l14381
u9330:
	goto	l14383
	
l14382:	
	line	13
	
l14383:	
	return
	opt stack 0
GLOBAL	__end_of_TouchPower
	__end_of_TouchPower:
;; =============== function _TouchPower ends ============

	signat	_TouchPower,88
	global	_RfSWPointSelect
psect	text5000,local,class=CODE,delta=2
global __ptext5000
__ptext5000:

;; *************** function _RfSWPointSelect *****************
;; Defined at:
;;		line 321 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text5000
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	321
	global	__size_of_RfSWPointSelect
	__size_of_RfSWPointSelect	equ	__end_of_RfSWPointSelect-_RfSWPointSelect
	
_RfSWPointSelect:	
	opt	stack 8
; Regs used in _RfSWPointSelect: [wreg]
;RfSWPointSelect@sw stored from wreg
	line	323
	movlb 0	; select bank0
	movwf	(RfSWPointSelect@sw)
	
l18484:	
;RF_Control_B1.c: 323: if(sw == 1)
	movf	(RfSWPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5861
	goto	u5860
u5861:
	goto	l13218
u5860:
	line	325
	
l18486:	
;RF_Control_B1.c: 324: {
;RF_Control_B1.c: 325: RFSW=&RFSW1;
	movlw	(_RFSW1)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	goto	l13218
	line	326
	
l13217:	
	line	340
	
l13218:	
	return
	opt stack 0
GLOBAL	__end_of_RfSWPointSelect
	__end_of_RfSWPointSelect:
;; =============== function _RfSWPointSelect ends ============

	signat	_RfSWPointSelect,4216
	global	_setRF_Initialization
psect	text5001,local,class=CODE,delta=2
global __ptext5001
__ptext5001:

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
psect	text5001
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	51
	global	__size_of_setRF_Initialization
	__size_of_setRF_Initialization	equ	__end_of_setRF_Initialization-_setRF_Initialization
	
_setRF_Initialization:	
	opt	stack 10
; Regs used in _setRF_Initialization: [wreg]
	line	54
	
l18482:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Tx_Length)^080h
	line	56
	
l13152:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Initialization
	__end_of_setRF_Initialization:
;; =============== function _setRF_Initialization ends ============

	signat	_setRF_Initialization,4216
	global	_RfPointSelect
psect	text5002,local,class=CODE,delta=2
global __ptext5002
__ptext5002:

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
;;		_getRxData
;;		_setLog_Code
;;		_setControl_Lights_Table
;;		_setRF_Enable
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text5002
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
	
l18478:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u5851
	goto	u5850
u5851:
	goto	l13134
u5850:
	line	12
	
l18480:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	l13134
	line	13
	
l13133:	
	line	15
	
l13134:	
	return
	opt stack 0
GLOBAL	__end_of_RfPointSelect
	__end_of_RfPointSelect:
;; =============== function _RfPointSelect ends ============

	signat	_RfPointSelect,4216
	global	_PowerFaultPointSelect
psect	text5003,local,class=CODE,delta=2
global __ptext5003
__ptext5003:

;; *************** function _PowerFaultPointSelect *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1    0[COMMON] unsigned char 
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
;;		_setPowerFault_Initialization
;;		_getPF_Safe
;;		_getPF_ERROR
;;		_getPowerFault_AD
;;		_setPowerFault_Main
;;		_setPowerFault_ERROR
;;		_setPF_Enable
;; This function uses a non-reentrant model
;;
psect	text5003
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	9
	global	__size_of_PowerFaultPointSelect
	__size_of_PowerFaultPointSelect	equ	__end_of_PowerFaultPointSelect-_PowerFaultPointSelect
	
_PowerFaultPointSelect:	
	opt	stack 8
; Regs used in _PowerFaultPointSelect: [wreg]
	line	11
	
l18472:	
;PowerFault_B1.c: 11: PF=&PF1;
	movlw	(_PF1)&0ffh
	movlb 0	; select bank0
	movwf	(??_PowerFaultPointSelect+0)+0
	movf	(??_PowerFaultPointSelect+0)+0,w
	movwf	(_PF)
	line	13
	
l11939:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFaultPointSelect
	__end_of_PowerFaultPointSelect:
;; =============== function _PowerFaultPointSelect ends ============

	signat	_PowerFaultPointSelect,4216
	global	_TempPointSelect
psect	text5004,local,class=CODE,delta=2
global __ptext5004
__ptext5004:

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
;;		_getTemp_ERROR
;;		_getTemp_AD
;;		_setTemp_Initialization
;;		_setTemp_Main
;;		_setOverTemp_ERROR
;; This function uses a non-reentrant model
;;
psect	text5004
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	9
	global	__size_of_TempPointSelect
	__size_of_TempPointSelect	equ	__end_of_TempPointSelect-_TempPointSelect
	
_TempPointSelect:	
	opt	stack 8
; Regs used in _TempPointSelect: [wreg]
	line	11
	
l18470:	
;OverTemperature_B1.c: 11: Temp=&Temp1;
	movlw	(_Temp1)&0ffh
	movlb 0	; select bank0
	movwf	(??_TempPointSelect+0)+0
	movf	(??_TempPointSelect+0)+0,w
	movwf	(_Temp)
	line	13
	
l10768:	
	return
	opt stack 0
GLOBAL	__end_of_TempPointSelect
	__end_of_TempPointSelect:
;; =============== function _TempPointSelect ends ============

	signat	_TempPointSelect,4216
	global	_setLoad_AH_AL_Restore
psect	text5005,local,class=CODE,delta=2
global __ptext5005
__ptext5005:

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
psect	text5005
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	376
	global	__size_of_setLoad_AH_AL_Restore
	__size_of_setLoad_AH_AL_Restore	equ	__end_of_setLoad_AH_AL_Restore-_setLoad_AH_AL_Restore
	
_setLoad_AH_AL_Restore:	
	opt	stack 9
; Regs used in _setLoad_AH_AL_Restore: [wreg+fsr1l-status,0]
	line	379
	
l18446:	
;OverLoad_B1.c: 378: char i;
;OverLoad_B1.c: 379: for(i=0 ; i<5 ;i++)
	movlb 0	; select bank0
	clrf	(setLoad_AH_AL_Restore@i)
	
l18448:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u5811
	goto	u5810
u5811:
	goto	l18452
u5810:
	goto	l9645
	
l18450:	
	goto	l9645
	line	380
	
l9643:	
	line	381
	
l18452:	
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
	
l18454:	
	movlw	(01h)
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	(??_setLoad_AH_AL_Restore+0)+0,w
	addwf	(setLoad_AH_AL_Restore@i),f
	
l18456:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u5821
	goto	u5820
u5821:
	goto	l18452
u5820:
	goto	l9645
	
l9644:	
	line	384
	
l9645:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_AH_AL_Restore
	__end_of_setLoad_AH_AL_Restore:
;; =============== function _setLoad_AH_AL_Restore ends ============

	signat	_setLoad_AH_AL_Restore,4216
	global	_LoadPointSelect
psect	text5006,local,class=CODE,delta=2
global __ptext5006
__ptext5006:

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
;;		_getLoad_ERROR
;;		_setLoad_LightsCount
;; This function uses a non-reentrant model
;;
psect	text5006
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
	
l18442:	
;OverLoad_B1.c: 10: if(load == 1)
	movf	(LoadPointSelect@load),w
	xorlw	01h&0ffh
	skipz
	goto	u5801
	goto	u5800
u5801:
	goto	l9550
u5800:
	line	12
	
l18444:	
;OverLoad_B1.c: 11: {
;OverLoad_B1.c: 12: Load=&Load1;
	movlw	(_Load1)&0ffh
	movwf	(??_LoadPointSelect+0)+0
	movf	(??_LoadPointSelect+0)+0,w
	movwf	(_Load)
	goto	l9550
	line	13
	
l9549:	
	line	15
	
l9550:	
	return
	opt stack 0
GLOBAL	__end_of_LoadPointSelect
	__end_of_LoadPointSelect:
;; =============== function _LoadPointSelect ends ============

	signat	_LoadPointSelect,4216
	global	_Flash_Memory_Read
psect	text5007,local,class=CODE,delta=2
global __ptext5007
__ptext5007:

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 421 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text5007
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	421
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
	opt	stack 9
; Regs used in _Flash_Memory_Read: [wreg]
;Flash_Memory_Read@address stored from wreg
	movlb 0	; select bank0
	movwf	(Flash_Memory_Read@address)
	line	422
	
l18432:	
;MCU_16f1518_B1.c: 422: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	423
	
l18434:	
;MCU_16f1518_B1.c: 423: PMADRH=0x30;
	movlw	(030h)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	424
;MCU_16f1518_B1.c: 424: PMADRL=address;
	movlb 0	; select bank0
	movf	(Flash_Memory_Read@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	425
	
l18436:	
;MCU_16f1518_B1.c: 425: CFGS=0;
	bcf	(3246/8)^0180h,(3246)&7
	line	426
	
l18438:	
;MCU_16f1518_B1.c: 426: RD=1;
	bsf	(3240/8)^0180h,(3240)&7
	line	427
;MCU_16f1518_B1.c: 427: i=PMDATH;
	movf	(404)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	line	428
;MCU_16f1518_B1.c: 428: ret=PMDATL;
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	429
;MCU_16f1518_B1.c: 429: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l8410
	
l18440:	
	line	430
	
l8410:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
;; =============== function _Flash_Memory_Read ends ============

	signat	_Flash_Memory_Read,4217
	global	_getAD
psect	text5008,local,class=CODE,delta=2
global __ptext5008
__ptext5008:

;; *************** function _getAD *****************
;; Defined at:
;;		line 238 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text5008
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	238
	global	__size_of_getAD
	__size_of_getAD	equ	__end_of_getAD-_getAD
	
_getAD:	
	opt	stack 10
; Regs used in _getAD: [wreg+status,2+status,0+btemp+1]
;getAD@adcon0 stored from wreg
	movlb 0	; select bank0
	movwf	(getAD@adcon0)
	line	239
	
l18424:	
;MCU_16f1518_B1.c: 239: ADCON0=adcon0;
	movf	(getAD@adcon0),w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	240
;MCU_16f1518_B1.c: 240: ADCON1=adcon1;
	movlb 0	; select bank0
	movf	(getAD@adcon1),w
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	241
	
l18426:	
;MCU_16f1518_B1.c: 241: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7
	line	242
;MCU_16f1518_B1.c: 242: while(GO_nDONE);
	goto	l8382
	
l8383:	
	
l8382:	
	btfsc	(1257/8)^080h,(1257)&7
	goto	u5791
	goto	u5790
u5791:
	goto	l8382
u5790:
	goto	l18428
	
l8384:	
	line	243
	
l18428:	
;MCU_16f1518_B1.c: 243: return ((ADRESH*256)+ADRESL);
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
	goto	l8385
	
l18430:	
	line	244
	
l8385:	
	return
	opt stack 0
GLOBAL	__end_of_getAD
	__end_of_getAD:
;; =============== function _getAD ends ============

	signat	_getAD,8314
	global	_setINT_GO
psect	text5009,local,class=CODE,delta=2
global __ptext5009
__ptext5009:

;; *************** function _setINT_GO *****************
;; Defined at:
;;		line 191 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text5009
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	191
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
	opt	stack 9
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	192
	
l20762:	
;MCU_16f1518_B1.c: 192: INTF=0;
	bcf	(89/8),(89)&7
	line	193
	
l20764:	
;MCU_16f1518_B1.c: 193: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u9311
	goto	u9310
	
u9311:
	bsf	(92/8),(92)&7
	goto	u9324
u9310:
	bcf	(92/8),(92)&7
u9324:
	line	194
	
l8368:	
	return
	opt stack 0
GLOBAL	__end_of_setINT_GO
	__end_of_setINT_GO:
;; =============== function _setINT_GO ends ============

	signat	_setINT_GO,4216
	global	_IOC_Set
psect	text5010,local,class=CODE,delta=2
global __ptext5010
__ptext5010:

;; *************** function _IOC_Set *****************
;; Defined at:
;;		line 202 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text5010
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	202
	global	__size_of_IOC_Set
	__size_of_IOC_Set	equ	__end_of_IOC_Set-_IOC_Set
	
_IOC_Set:	
	opt	stack 10
; Regs used in _IOC_Set: [wreg+status,2]
	line	203
	
l20750:	
;MCU_16f1518_B1.c: 203: WPUB2=0;
	movlb 4	; select bank4
	bcf	(4202/8)^0200h,(4202)&7
	line	204
	
l20752:	
;MCU_16f1518_B1.c: 204: IOCBP=0b00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	205
;MCU_16f1518_B1.c: 205: IOCBN=0b00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	206
	
l20754:	
;MCU_16f1518_B1.c: 206: IOCBF=0b00000000;
	clrf	(918)^0380h	;volatile
	line	207
	
l20756:	
;MCU_16f1518_B1.c: 207: IOCIE=1;
	bsf	(91/8),(91)&7
	line	208
	
l20758:	
;MCU_16f1518_B1.c: 208: IOCIF=0;
	bcf	(88/8),(88)&7
	line	209
	
l20760:	
;MCU_16f1518_B1.c: 209: GIE=1;
	bsf	(95/8),(95)&7
	line	210
	
l8371:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_Set
	__end_of_IOC_Set:
;; =============== function _IOC_Set ends ============

	signat	_IOC_Set,88
	global	_INT_Set
psect	text5011,local,class=CODE,delta=2
global __ptext5011
__ptext5011:

;; *************** function _INT_Set *****************
;; Defined at:
;;		line 173 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text5011
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	173
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
	opt	stack 10
; Regs used in _INT_Set: []
	line	174
	
l20748:	
;MCU_16f1518_B1.c: 174: WPUB0=0;
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7
	line	176
;MCU_16f1518_B1.c: 176: PEIE=1;
	bsf	(94/8),(94)&7
	line	177
;MCU_16f1518_B1.c: 177: GIE=1;
	bsf	(95/8),(95)&7
	line	178
	
l8361:	
	return
	opt stack 0
GLOBAL	__end_of_INT_Set
	__end_of_INT_Set:
;; =============== function _INT_Set ends ============

	signat	_INT_Set,88
	global	_ADC_Set
psect	text5012,local,class=CODE,delta=2
global __ptext5012
__ptext5012:

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 232 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text5012
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	232
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
	opt	stack 10
; Regs used in _ADC_Set: [wreg]
	line	233
	
l20746:	
;MCU_16f1518_B1.c: 233: ADCON1=0xf2;
	movlw	(0F2h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	234
;MCU_16f1518_B1.c: 234: FVRCON=0xc0;
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	235
	
l8379:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Set
	__end_of_ADC_Set:
;; =============== function _ADC_Set ends ============

	signat	_ADC_Set,88
	global	_TMR0_Set
psect	text5013,local,class=CODE,delta=2
global __ptext5013
__ptext5013:

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
psect	text5013
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	74
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
	opt	stack 10
; Regs used in _TMR0_Set: [wreg+fsr1l-status,2]
	line	75
	
l18264:	
;MCU_16f1518_B1.c: 75: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_Timer0)^080h
	line	76
	
l18266:	
;MCU_16f1518_B1.c: 76: Timer0->DimmerCountValue=158;
	movf	(_Timer0)^080h,w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(09Eh)
	movwi	[0]fsr1
	movlw	high(09Eh)
	movwi	[1]fsr1
	line	77
	
l18268:	
;MCU_16f1518_B1.c: 77: OPTION_REG=0x00;
	clrf	(149)^080h	;volatile
	line	78
	
l18270:	
;MCU_16f1518_B1.c: 78: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	79
	
l18272:	
;MCU_16f1518_B1.c: 79: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	80
	
l18274:	
;MCU_16f1518_B1.c: 80: GIE=1;
	bsf	(95/8),(95)&7
	line	81
	
l8323:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_Set
	__end_of_TMR0_Set:
;; =============== function _TMR0_Set ends ============

	signat	_TMR0_Set,88
	global	_IO_Set
psect	text5014,local,class=CODE,delta=2
global __ptext5014
__ptext5014:

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
psect	text5014
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	38
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l20728:	
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
	
l20730:	
;MCU_16f1518_B1.c: 42: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	43
	
l20732:	
;MCU_16f1518_B1.c: 43: LATB=0b00000010;;
	movlw	(02h)
	movwf	(269)^0100h	;volatile
	line	44
;MCU_16f1518_B1.c: 44: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	45
	
l20734:	
;MCU_16f1518_B1.c: 45: ANSELA=0b00100010;;
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l20736:	
;MCU_16f1518_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l20738:	
;MCU_16f1518_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l20740:	
;MCU_16f1518_B1.c: 48: PORTA=0b01110111;;
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
	
l20742:	
;MCU_16f1518_B1.c: 49: PORTB=0b00000111;;
	movlw	(07h)
	movwf	(13)	;volatile
	line	50
	
l20744:	
;MCU_16f1518_B1.c: 50: PORTC=0b00001100;;
	movlw	(0Ch)
	movwf	(14)	;volatile
	line	51
	
l8317:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
;; =============== function _IO_Set ends ============

	signat	_IO_Set,88
	global	_MainT_Initialization
psect	text5015,local,class=CODE,delta=2
global __ptext5015
__ptext5015:

;; *************** function _MainT_Initialization *****************
;; Defined at:
;;		line 70 in file "G:\Program\PIC\Source_File\main.c"
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
psect	text5015
	file	"G:\Program\PIC\Source_File\main.c"
	line	70
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
	opt	stack 11
; Regs used in _MainT_Initialization: [wregfsr1]
	line	71
	
l18240:	
;main.c: 71: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_Product)
	line	72
;main.c: 72: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_TMain)
	line	73
	
l18242:	
;main.c: 73: TMain->FirstOpen=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	74
	
l18244:	
;main.c: 74: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	75
	
l7170:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initialization
	__end_of_MainT_Initialization:
;; =============== function _MainT_Initialization ends ============

	signat	_MainT_Initialization,88
	global	_LedPointSelect
psect	text5016,local,class=CODE,delta=2
global __ptext5016
__ptext5016:

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
psect	text5016
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
	
l18228:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h&0ffh
	skipz
	goto	u5461
	goto	u5460
u5461:
	goto	l18232
u5460:
	line	12
	
l18230:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	13
;LED_B1.c: 13: }
	goto	l5934
	line	16
	
l5929:	
	
l18232:	
;LED_B1.c: 16: else if(led == 2)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	02h&0ffh
	skipz
	goto	u5471
	goto	u5470
u5471:
	goto	l18236
u5470:
	line	18
	
l18234:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	19
;LED_B1.c: 19: }
	goto	l5934
	line	28
	
l5931:	
	
l18236:	
;LED_B1.c: 28: else if(led == 99)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	063h&0ffh
	skipz
	goto	u5481
	goto	u5480
u5481:
	goto	l5934
u5480:
	line	30
	
l18238:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	goto	l5934
	line	31
	
l5933:	
	goto	l5934
	line	33
	
l5932:	
	goto	l5934
	
l5930:	
	
l5934:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
;; =============== function _LedPointSelect ends ============

	signat	_LedPointSelect,4216
	global	_DimmerPointSelect
psect	text5017,local,class=CODE,delta=2
global __ptext5017
__ptext5017:

;; *************** function _DimmerPointSelect *****************
;; Defined at:
;;		line 496 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setDimmer_PFERROR
;;		_setDimmer_Detect
;;		_getDimmer_TempERROR
;;		_getDimmer_LoadERROR
;;		_getDimmer_PFERROR
;;		_getDimmer_Detect
;; This function uses a non-reentrant model
;;
psect	text5017
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	496
	global	__size_of_DimmerPointSelect
	__size_of_DimmerPointSelect	equ	__end_of_DimmerPointSelect-_DimmerPointSelect
	
_DimmerPointSelect:	
	opt	stack 5
; Regs used in _DimmerPointSelect: [wreg]
;DimmerPointSelect@dimmer stored from wreg
	line	499
	movlb 0	; select bank0
	movwf	(DimmerPointSelect@dimmer)
	
l18224:	
;Dimmer_B1.c: 499: if(dimmer == 1)
	movf	(DimmerPointSelect@dimmer),w
	xorlw	01h&0ffh
	skipz
	goto	u5451
	goto	u5450
u5451:
	goto	l4800
u5450:
	line	501
	
l18226:	
;Dimmer_B1.c: 500: {
;Dimmer_B1.c: 501: Dimmer=&Dimmer1;
	movlw	(_Dimmer1)&0ffh
	movwf	(??_DimmerPointSelect+0)+0
	movf	(??_DimmerPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_Dimmer)^080h
	goto	l4800
	line	502
	
l4799:	
	line	504
	
l4800:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerPointSelect
	__end_of_DimmerPointSelect:
;; =============== function _DimmerPointSelect ends ============

	signat	_DimmerPointSelect,4216
	global	_setLoad_Count
psect	text5018,local,class=CODE,delta=2
global __ptext5018
__ptext5018:

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
psect	text5018
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	325
	global	__size_of_setLoad_Count
	__size_of_setLoad_Count	equ	__end_of_setLoad_Count-_setLoad_Count
	
_setLoad_Count:	
	opt	stack 6
; Regs used in _setLoad_Count: [wregfsr1]
	line	326
	
l18206:	
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
	
l9619:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Count
	__end_of_setLoad_Count:
;; =============== function _setLoad_Count ends ============

	signat	_setLoad_Count,8312
	global	_DimmerLightsPointSelect
psect	text5019,local,class=CODE,delta=2
global __ptext5019
__ptext5019:

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
;;		_MainT
;;		_setDimmerLights_GO
;;		_setDimmerLights_MaxmumValue
;;		_getDimmerLights_Open
;;		_getDimmerLights_Close
;; This function uses a non-reentrant model
;;
psect	text5019
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
	
l18202:	
;Dimmer_B1.c: 10: if(lights == 1)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u5441
	goto	u5440
u5441:
	goto	l4687
u5440:
	line	12
	
l18204:	
;Dimmer_B1.c: 11: {
;Dimmer_B1.c: 12: DimmerLights=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	goto	l4687
	line	13
	
l4686:	
	line	29
	
l4687:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLightsPointSelect
	__end_of_DimmerLightsPointSelect:
;; =============== function _DimmerLightsPointSelect ends ============

	signat	_DimmerLightsPointSelect,4216
	global	_DelayTimejudge
psect	text5020,local,class=CODE,delta=2
global __ptext5020
__ptext5020:

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
psect	text5020
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
	
l18176:	
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
	goto	u5381
	goto	u5380
u5381:
	goto	l18180
u5380:
	line	112
	
l18178:	
;DelayOff_B1.c: 111: {
;DelayOff_B1.c: 112: i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	113
;DelayOff_B1.c: 113: }
	goto	l3521
	line	114
	
l3520:	
	
l18180:	
;DelayOff_B1.c: 114: else if(value == 0x10)
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u5391
	goto	u5390
u5391:
	goto	l18184
u5390:
	line	116
	
l18182:	
;DelayOff_B1.c: 115: {
;DelayOff_B1.c: 116: i=10;
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	117
;DelayOff_B1.c: 117: }
	goto	l3521
	line	118
	
l3522:	
	
l18184:	
;DelayOff_B1.c: 118: else if(value == 0x15)
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u5401
	goto	u5400
u5401:
	goto	l18188
u5400:
	line	120
	
l18186:	
;DelayOff_B1.c: 119: {
;DelayOff_B1.c: 120: i=15;
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	121
;DelayOff_B1.c: 121: }
	goto	l3521
	line	122
	
l3524:	
	
l18188:	
;DelayOff_B1.c: 122: else if(value == 0x20)
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u5411
	goto	u5410
u5411:
	goto	l18192
u5410:
	line	124
	
l18190:	
;DelayOff_B1.c: 123: {
;DelayOff_B1.c: 124: i=20;
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	125
;DelayOff_B1.c: 125: }
	goto	l3521
	line	126
	
l3526:	
	
l18192:	
;DelayOff_B1.c: 126: else if(value == 0x25)
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u5421
	goto	u5420
u5421:
	goto	l18196
u5420:
	line	128
	
l18194:	
;DelayOff_B1.c: 127: {
;DelayOff_B1.c: 128: i=25;
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	129
;DelayOff_B1.c: 129: }
	goto	l3521
	line	130
	
l3528:	
	
l18196:	
;DelayOff_B1.c: 130: else if(value == 0x30)
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u5431
	goto	u5430
u5431:
	goto	l3521
u5430:
	line	132
	
l18198:	
;DelayOff_B1.c: 131: {
;DelayOff_B1.c: 132: i=30;
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l3521
	line	133
	
l3530:	
	goto	l3521
	line	134
	
l3529:	
	goto	l3521
	
l3527:	
	goto	l3521
	
l3525:	
	goto	l3521
	
l3523:	
	
l3521:	
;DelayOff_B1.c: 133: }
;DelayOff_B1.c: 134: return i;
	movf	(DelayTimejudge@i),w
	goto	l3531
	
l18200:	
	line	135
	
l3531:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
;; =============== function _DelayTimejudge ends ============

	signat	_DelayTimejudge,4217
	global	_setRF_DimmerLights
psect	text5021,local,class=CODE,delta=2
global __ptext5021
__ptext5021:

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 416 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text5021
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	416
	global	__size_of_setRF_DimmerLights
	__size_of_setRF_DimmerLights	equ	__end_of_setRF_DimmerLights-_setRF_DimmerLights
	
_setRF_DimmerLights:	
	opt	stack 9
; Regs used in _setRF_DimmerLights: [wreg+fsr1l-status,0]
;setRF_DimmerLights@lights stored from wreg
	line	418
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@lights)
	
l18160:	
;RF_Control_B1.c: 417: char status;
;RF_Control_B1.c: 418: status=1;
	clrf	(setRF_DimmerLights@status)
	bsf	status,0
	rlf	(setRF_DimmerLights@status),f
	line	419
	
l18162:	
;RF_Control_B1.c: 419: status<<=(lights-1);
	movf	(setRF_DimmerLights@lights),w
	addlw	-1
	incf	wreg,f
	
	goto	u5360
u5365:
	clrc
	rlf	(setRF_DimmerLights@status),f
u5360:
	addlw	-1
	skipz
	goto	u5365
	line	420
	
l18164:	
;RF_Control_B1.c: 420: Product->Data[11]=lights;
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	421
	
l18166:	
;RF_Control_B1.c: 421: Product->Data[9]=Product->Data[20+lights];
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
	line	422
	
l18168:	
;RF_Control_B1.c: 422: Product->Data[17]=Product->Data[26+lights];
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
	line	423
	
l18170:	
;RF_Control_B1.c: 423: if(on)
	movf	(setRF_DimmerLights@on),w
	skipz
	goto	u5370
	goto	l18174
u5370:
	line	425
	
l18172:	
;RF_Control_B1.c: 424: {
;RF_Control_B1.c: 425: Product->Data[15]=(Product->Data[15]|status);
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
	line	426
;RF_Control_B1.c: 426: }
	goto	l13243
	line	427
	
l13241:	
	line	429
	
l18174:	
;RF_Control_B1.c: 427: else
;RF_Control_B1.c: 428: {
;RF_Control_B1.c: 429: Product->Data[15]=(Product->Data[15]&(~status));
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
	goto	l13243
	line	430
	
l13242:	
	line	431
	
l13243:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
;; =============== function _setRF_DimmerLights ends ============

	signat	_setRF_DimmerLights,8312
	global	_DelayOffPointSelect
psect	text5022,local,class=CODE,delta=2
global __ptext5022
__ptext5022:

;; *************** function _DelayOffPointSelect *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text5022
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
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
	
l18156:	
;DelayOff_B1.c: 11: if(sw == 1)
	movf	(DelayOffPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5351
	goto	u5350
u5351:
	goto	l3495
u5350:
	line	13
	
l18158:	
;DelayOff_B1.c: 12: {
;DelayOff_B1.c: 13: DelayOff=&DlySw1;
	movlw	(_DlySw1)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movwf	(_DelayOff)
	goto	l3495
	line	14
	
l3494:	
	line	28
	
l3495:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOffPointSelect
	__end_of_DelayOffPointSelect:
;; =============== function _DelayOffPointSelect ends ============

	signat	_DelayOffPointSelect,4216
	global	_DelayTime_1us
psect	text5023,local,class=CODE,delta=2
global __ptext5023
__ptext5023:

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
psect	text5023
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	284
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l20716:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l2370
	line	287
	
l2371:	
	
l20718:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l20720:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u9281
	goto	u9280
u9281:
	goto	l20724
u9280:
	goto	l20726
	
l20722:	
	goto	l20726
	
l2372:	
	
l20724:	
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
	goto	u9291
	goto	u9290
u9291:
	goto	l20724
u9290:
	goto	l20726
	
l2373:	
	line	286
	
l20726:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l2370:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u9305
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u9305:
	skipc
	goto	u9301
	goto	u9300
u9301:
	goto	l20718
u9300:
	goto	l2375
	
l2374:	
	line	288
	
l2375:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTime_1us
	__end_of_DelayTime_1us:
;; =============== function _DelayTime_1us ends ============

	signat	_DelayTime_1us,4216
	global	_CC2500_ReadByte
psect	text5024,local,class=CODE,delta=2
global __ptext5024
__ptext5024:

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
psect	text5024
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	211
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
	opt	stack 8
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	213
	
l18116:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l18118:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5281
	goto	u5280
u5281:
	goto	l2339
u5280:
	goto	l2343
	
l18120:	
	goto	l2343
	line	214
	
l2339:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RC1=1;
	bsf	(113/8),(113)&7
	line	216
	
l18122:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	217
	
l18124:	
;CC2500_B1.c: 217: if(RC2 == 1)
	movlb 0	; select bank0
	btfss	(114/8),(114)&7
	goto	u5291
	goto	u5290
u5291:
	goto	l18128
u5290:
	line	218
	
l18126:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	movlb 1	; select bank1
	bsf	(_SPI0Buffer)^080h+(0/8),(0)&7
	goto	l18130
	line	219
	
l2341:	
	line	220
	
l18128:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	movlb 1	; select bank1
	andwf	(_SPI0Buffer)^080h,f
	goto	l18130
	
l2342:	
	line	221
	
l18130:	
;CC2500_B1.c: 221: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l18132:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5301
	goto	u5300
u5301:
	goto	l2339
u5300:
	goto	l2343
	
l2340:	
	line	223
	
l2343:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadByte
	__end_of_CC2500_ReadByte:
;; =============== function _CC2500_ReadByte ends ============

	signat	_CC2500_ReadByte,88
	global	_CC2500_WriteByte
psect	text5025,local,class=CODE,delta=2
global __ptext5025
__ptext5025:

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
psect	text5025
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	194
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
	opt	stack 8
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l18100:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l18102:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u5251
	goto	u5250
u5251:
	goto	l2332
u5250:
	goto	l2336
	
l18104:	
	goto	l2336
	line	197
	
l2332:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	movlb 1	; select bank1
	btfss	(_SPI0Buffer)^080h,(7)&7
	goto	u5261
	goto	u5260
u5261:
	goto	l2334
u5260:
	line	199
	
l18106:	
;CC2500_B1.c: 199: RC0=1;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7
	goto	l2335
	line	200
	
l2334:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RC0=0;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7
	
l2335:	
	line	202
;CC2500_B1.c: 202: RC1=1;
	bsf	(113/8),(113)&7
	line	203
	
l18108:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	204
	
l18110:	
;CC2500_B1.c: 204: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7
	line	196
	
l18112:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l18114:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u5271
	goto	u5270
u5271:
	goto	l2332
u5270:
	goto	l2336
	
l2333:	
	line	206
	
l2336:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteByte
	__end_of_CC2500_WriteByte:
;; =============== function _CC2500_WriteByte ends ============

	signat	_CC2500_WriteByte,88
	global	_BuzPointSelect
psect	text5026,local,class=CODE,delta=2
global __ptext5026
__ptext5026:

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
psect	text5026
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
	
l18096:	
;Buzzer_B1.c: 12: if(buz == 1)
	movf	(BuzPointSelect@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u5241
	goto	u5240
u5241:
	goto	l1104
u5240:
	line	14
	
l18098:	
;Buzzer_B1.c: 13: {
;Buzzer_B1.c: 14: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movwf	(??_BuzPointSelect+0)+0
	movf	(??_BuzPointSelect+0)+0,w
	movwf	(_Buz)
	goto	l1104
	line	15
	
l1103:	
	line	17
	
l1104:	
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
	
i1l18292:	
;MCU_16f1518_B1.c: 58: IOC_ISR();
	fcall	_IOC_ISR
	line	60
	
i1l18294:	
;MCU_16f1518_B1.c: 60: TMR0_ISR();
	fcall	_TMR0_ISR
	line	66
	
i1l18296:	
;MCU_16f1518_B1.c: 62: ;;
;MCU_16f1518_B1.c: 66: INT_ISR();
	fcall	_INT_ISR
	line	69
	
i1l8320:	
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
psect	text5028,local,class=CODE,delta=2
global __ptext5028
__ptext5028:

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 181 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text5028
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	181
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
	opt	stack 2
; Regs used in _INT_ISR: [wreg+fsr1l-status,0+pclath+cstack]
	line	182
	
i1l18404:	
;MCU_16f1518_B1.c: 182: if(INTE && INTF)
	btfss	(92/8),(92)&7
	goto	u575_21
	goto	u575_20
u575_21:
	goto	i1l8365
u575_20:
	
i1l18406:	
	btfss	(89/8),(89)&7
	goto	u576_21
	goto	u576_20
u576_21:
	goto	i1l8365
u576_20:
	line	184
	
i1l18408:	
;MCU_16f1518_B1.c: 183: {
;MCU_16f1518_B1.c: 184: INTF=0;
	bcf	(89/8),(89)&7
	line	185
;MCU_16f1518_B1.c: 185: INTE=0;
	bcf	(92/8),(92)&7
	line	186
	
i1l18410:	
;MCU_16f1518_B1.c: 186: setRF_ReceiveGO(1,1);
	clrf	(?_setRF_ReceiveGO)
	bsf	status,0
	rlf	(?_setRF_ReceiveGO),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l8365
	line	187
	
i1l8364:	
	line	188
	
i1l8365:	
	return
	opt stack 0
GLOBAL	__end_of_INT_ISR
	__end_of_INT_ISR:
;; =============== function _INT_ISR ends ============

	signat	_INT_ISR,88
	global	_TMR0_ISR
psect	text5029,local,class=CODE,delta=2
global __ptext5029
__ptext5029:

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
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_setLoad_StatusOff
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text5029
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	84
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
	opt	stack 2
; Regs used in _TMR0_ISR: [wreg-status,0+pclath+cstack]
	line	85
	
i1l18310:	
;MCU_16f1518_B1.c: 85: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7
	goto	u553_21
	goto	u553_20
u553_21:
	goto	i1l8355
u553_20:
	
i1l18312:	
	btfss	(90/8),(90)&7
	goto	u554_21
	goto	u554_20
u554_21:
	goto	i1l8355
u554_20:
	line	87
	
i1l18314:	
;MCU_16f1518_B1.c: 86: {
;MCU_16f1518_B1.c: 87: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	88
	
i1l18316:	
;MCU_16f1518_B1.c: 88: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	93
	
i1l18318:	
;MCU_16f1518_B1.c: 93: if(DimmerLights11->GO) { DimmerLights11->Count++; if(DimmerLights11->Count >= DimmerLights11->DimmingValue) { DimmerLights11->Count=0; DimmerLights11->GO=0; DimmerLights11->Flag=1; if(DimmerLights11->StatusFlag) { RB4=1; RA7=1; } } } else { if(Dimmer
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u555_21
	goto	u555_20
u555_21:
	goto	i1l18328
u555_20:
	
i1l18320:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l18322:	
	movf	(_DimmerLights11),w
	addlw	03h
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
	goto	u556_21
	goto	u556_20
u556_21:
	goto	i1l18398
u556_20:
	
i1l18324:	
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
	goto	u557_21
	goto	u557_20
u557_21:
	goto	i1l18398
u557_20:
	
i1l18326:	
	bsf	(108/8),(108)&7
	bsf	(103/8),(103)&7
	goto	i1l18398
	
i1l8329:	
	goto	i1l18398
	
i1l8328:	
	goto	i1l18398
	
i1l8327:	
	
i1l18328:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u558_21
	goto	u558_20
u558_21:
	goto	i1l18386
u558_20:
	
i1l18330:	
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
	goto	u559_21
	goto	u559_20
u559_21:
	goto	i1l18386
u559_20:
	
i1l18332:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	01h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l18334:	
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
	goto	u560_21
	goto	u560_20
u560_21:
	goto	i1l18386
u560_20:
	
i1l18336:	
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
	goto	u561_21
	goto	u561_20
u561_21:
	goto	i1l18352
u561_20:
	
i1l18338:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u562_21
	goto	u562_20
u562_21:
	goto	i1l18346
u562_20:
	
i1l18340:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(026h)
	subwf	indf1,w
	skipc
	goto	u563_21
	goto	u563_20
u563_21:
	goto	i1l18344
u563_20:
	
i1l18342:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l18386
	
i1l8336:	
	
i1l18344:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l18386
	
i1l8337:	
	goto	i1l18386
	
i1l8335:	
	
i1l18346:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u564_21
	goto	u564_20
u564_21:
	goto	i1l18350
u564_20:
	
i1l18348:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l18386
	
i1l8339:	
	
i1l18350:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l18386
	
i1l8340:	
	goto	i1l18386
	
i1l8338:	
	goto	i1l18386
	
i1l8334:	
	
i1l18352:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u565_21
	goto	u565_20
u565_21:
	goto	i1l18366
u565_20:
	
i1l18354:	
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
	goto	u566_21
	goto	u566_20
u566_21:
	goto	i1l18358
u566_20:
	
i1l18356:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l18362
	
i1l8343:	
	
i1l18358:	
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
	goto	u567_21
	goto	u567_20
u567_21:
	goto	i1l18362
u567_20:
	
i1l18360:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l18362
	
i1l8345:	
	goto	i1l18362
	
i1l8344:	
	
i1l18362:	
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
	goto	u568_21
	goto	u568_20
u568_21:
	goto	i1l18386
u568_20:
	
i1l18364:	
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
	goto	i1l18386
	
i1l8346:	
	goto	i1l18386
	
i1l8342:	
	
i1l18366:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u569_21
	goto	u569_20
u569_21:
	goto	i1l18374
u569_20:
	
i1l18368:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l18370:	
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
	goto	u570_21
	goto	u570_20
u570_21:
	goto	i1l18386
u570_20:
	
i1l18372:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l18386
	
i1l8349:	
	goto	i1l18386
	
i1l8348:	
	
i1l18374:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l18376:	
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
	goto	u571_21
	goto	u571_20
u571_21:
	goto	i1l18386
u571_20:
	
i1l18378:	
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
	
i1l18380:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7
	
i1l18382:	
	bcf	(99/8),(99)&7
	
i1l18384:	
	clrf	(?i1_setLoad_StatusOff)
	bsf	status,0
	rlf	(?i1_setLoad_StatusOff),f
	clrf	0+(?i1_setLoad_StatusOff)+01h
	bsf	status,0
	rlf	0+(?i1_setLoad_StatusOff)+01h,f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l18386
	
i1l8351:	
	goto	i1l18386
	
i1l8350:	
	goto	i1l18386
	
i1l8347:	
	goto	i1l18386
	
i1l8341:	
	goto	i1l18386
	
i1l8333:	
	goto	i1l18386
	
i1l8332:	
	goto	i1l18386
	
i1l8331:	
	
i1l18386:	
	movlb 0	; select bank0
	btfss	(108/8),(108)&7
	goto	u572_21
	goto	u572_20
u572_21:
	goto	i1l18398
u572_20:
	
i1l18388:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l18390:	
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u573_21
	goto	u573_20
u573_21:
	goto	i1l18398
u573_20:
	
i1l18392:	
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l18394:	
	bcf	(108/8),(108)&7
	
i1l18396:	
	bcf	(103/8),(103)&7
	goto	i1l18398
	
i1l8353:	
	goto	i1l18398
	
i1l8352:	
	goto	i1l18398
	
i1l8330:	
	line	106
	
i1l18398:	
;MCU_16f1518_B1.c: 106: Timer0->Count++;
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
	line	107
	
i1l18400:	
;MCU_16f1518_B1.c: 107: if(Timer0->Count == 100)
	movf	(_Timer0)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(064h)
	skipz
	goto	u574_25
	moviw	[1]fsr1
	xorlw	high(064h)
u574_25:
	skipz
	goto	u574_21
	goto	u574_20
u574_21:
	goto	i1l8355
u574_20:
	line	109
	
i1l18402:	
;MCU_16f1518_B1.c: 108: {
;MCU_16f1518_B1.c: 109: Timer0->Count=0;
	movf	(_Timer0)^080h,w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	110
;MCU_16f1518_B1.c: 110: TMain->T0_Timerout=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	i1l8355
	line	111
	
i1l8354:	
	goto	i1l8355
	line	112
	
i1l8326:	
	line	113
	
i1l8355:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
;; =============== function _TMR0_ISR ends ============

	signat	_TMR0_ISR,88
	global	i1_setLoad_StatusOff
psect	text5030,local,class=CODE,delta=2
global __ptext5030
__ptext5030:

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
psect	text5030
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
	
i1l18732:	
;OverLoad_B1.c: 348: LoadPointSelect(load);
	movf	(i1setLoad_StatusOff@load),w
	fcall	i1_LoadPointSelect
	line	349
	
i1l18734:	
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
	
i1l18736:	
;OverLoad_B1.c: 351: if(lights == 1)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u644_21
	goto	u644_20
u644_21:
	goto	i1l18740
u644_20:
	line	353
	
i1l18738:	
;OverLoad_B1.c: 352: {
;OverLoad_B1.c: 353: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l18740
	line	354
	
i1l9631:	
	line	355
	
i1l18740:	
;OverLoad_B1.c: 354: }
;OverLoad_B1.c: 355: if(lights == 2)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u645_21
	goto	u645_20
u645_21:
	goto	i1l18744
u645_20:
	line	357
	
i1l18742:	
;OverLoad_B1.c: 356: {
;OverLoad_B1.c: 357: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l18744
	line	358
	
i1l9632:	
	line	359
	
i1l18744:	
;OverLoad_B1.c: 358: }
;OverLoad_B1.c: 359: if(lights == 3)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u646_21
	goto	u646_20
u646_21:
	goto	i1l9634
u646_20:
	line	361
	
i1l18746:	
;OverLoad_B1.c: 360: {
;OverLoad_B1.c: 361: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l9634
	line	362
	
i1l9633:	
	line	363
	
i1l9634:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLoad_StatusOff
	__end_ofi1_setLoad_StatusOff:
;; =============== function i1_setLoad_StatusOff ends ============

	signat	i1_setLoad_StatusOff,88
	global	_setRF_ReceiveGO
psect	text5031,local,class=CODE,delta=2
global __ptext5031
__ptext5031:

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
psect	text5031
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
	
i1l18416:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l18418:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l13146:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_ReceiveGO
	__end_of_setRF_ReceiveGO:
;; =============== function _setRF_ReceiveGO ends ============

	signat	_setRF_ReceiveGO,8312
	global	_IOC_ISR
psect	text5032,local,class=CODE,delta=2
global __ptext5032
__ptext5032:

;; *************** function _IOC_ISR *****************
;; Defined at:
;;		line 213 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_setDimmerReClock
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text5032
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	213
	global	__size_of_IOC_ISR
	__size_of_IOC_ISR	equ	__end_of_IOC_ISR-_IOC_ISR
	
_IOC_ISR:	
	opt	stack 3
; Regs used in _IOC_ISR: [wreg+fsr1l-status,0+pclath+cstack]
	line	214
	
i1l18298:	
;MCU_16f1518_B1.c: 214: if(IOCIE && IOCIF && IOCBF2)
	btfss	(91/8),(91)&7
	goto	u549_21
	goto	u549_20
u549_21:
	goto	i1l8376
u549_20:
	
i1l18300:	
	btfss	(88/8),(88)&7
	goto	u550_21
	goto	u550_20
u550_21:
	goto	i1l8376
u550_20:
	
i1l18302:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7
	goto	u551_21
	goto	u551_20
u551_21:
	goto	i1l8376
u551_20:
	line	216
	
i1l18304:	
;MCU_16f1518_B1.c: 215: {
;MCU_16f1518_B1.c: 216: IOCBF2=0;
	bcf	(7346/8)^0380h,(7346)&7
	line	217
;MCU_16f1518_B1.c: 217: IOCIF=0;
	bcf	(88/8),(88)&7
	line	218
	
i1l18306:	
;MCU_16f1518_B1.c: 218: if(TMain->PowerON == 1)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u552_21
	goto	u552_20
u552_21:
	goto	i1l8376
u552_20:
	line	220
	
i1l18308:	
;MCU_16f1518_B1.c: 219: {
;MCU_16f1518_B1.c: 220: setDimmerReClock();
	fcall	_setDimmerReClock
	goto	i1l8376
	line	221
	
i1l8375:	
	goto	i1l8376
	line	222
	
i1l8374:	
	line	223
	
i1l8376:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_ISR
	__end_of_IOC_ISR:
;; =============== function _IOC_ISR ends ============

	signat	_IOC_ISR,88
	global	i1_RfPointSelect
psect	text5033,local,class=CODE,delta=2
global __ptext5033
__ptext5033:

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
psect	text5033
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
	
i1l18748:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u647_21
	goto	u647_20
u647_21:
	goto	i1l13134
u647_20:
	line	12
	
i1l18750:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	i1l13134
	line	13
	
i1l13133:	
	line	15
	
i1l13134:	
	return
	opt stack 0
GLOBAL	__end_ofi1_RfPointSelect
	__end_ofi1_RfPointSelect:
;; =============== function i1_RfPointSelect ends ============

	signat	i1_RfPointSelect,88
	global	i1_LoadPointSelect
psect	text5034,local,class=CODE,delta=2
global __ptext5034
__ptext5034:

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
psect	text5034
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
	
i1l18728:	
;OverLoad_B1.c: 10: if(load == 1)
	movf	(i1LoadPointSelect@load),w
	xorlw	01h&0ffh
	skipz
	goto	u643_21
	goto	u643_20
u643_21:
	goto	i1l9550
u643_20:
	line	12
	
i1l18730:	
;OverLoad_B1.c: 11: {
;OverLoad_B1.c: 12: Load=&Load1;
	movlw	(_Load1)&0ffh
	movwf	(??i1_LoadPointSelect+0)+0
	movf	(??i1_LoadPointSelect+0)+0,w
	movlb 0	; select bank0
	movwf	(_Load)
	goto	i1l9550
	line	13
	
i1l9549:	
	line	15
	
i1l9550:	
	return
	opt stack 0
GLOBAL	__end_ofi1_LoadPointSelect
	__end_ofi1_LoadPointSelect:
;; =============== function i1_LoadPointSelect ends ============

	signat	i1_LoadPointSelect,88
	global	_setDimmerReClock
psect	text5035,local,class=CODE,delta=2
global __ptext5035
__ptext5035:

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
psect	text5035
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	116
	global	__size_of_setDimmerReClock
	__size_of_setDimmerReClock	equ	__end_of_setDimmerReClock-_setDimmerReClock
	
_setDimmerReClock:	
	opt	stack 3
; Regs used in _setDimmerReClock: [wregfsr1]
	line	117
	
i1l18412:	
;MCU_16f1518_B1.c: 117: TMR0=255;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	120
	
i1l18414:	
;MCU_16f1518_B1.c: 120: DimmerLights11->GO=1;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	129
	
i1l8358:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerReClock
	__end_of_setDimmerReClock:
;; =============== function _setDimmerReClock ends ============

	signat	_setDimmerReClock,88
psect	text5036,local,class=CODE,delta=2
global __ptext5036
__ptext5036:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
