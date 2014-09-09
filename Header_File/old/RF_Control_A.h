
#ifndef _RF_Control_A_H_
#define _RF_Control_A_H_

	#if CC2500_use == 1

		struct RF
		{
			unsigned Debounce:1;
			unsigned Learn:1;
			unsigned SwitchDebounce:1;
			unsigned RxFlag:1;

			unsigned char DebounceTime;

			unsigned Key1Flag:1;
			unsigned Key1Status:1;

			unsigned Key2Flag:1;
			unsigned Key2Status:1;

			unsigned Key3Flag:1;
			unsigned Key3Status:1;
		};
		struct RF *RF;
		struct RF VarRF;


		#define INT_Main()\
					Receive_GO=1;\
					;

		#define set_1_RF_RxFlag() RF->RxFlag=1

		#define set_0_RF_RxFlag() RF->RxFlag=0

		#define set_1_RF_Key1Flag() RF->Key1Flag=1

		#define set_1_RF_Key2Flag() RF->Key2Flag=1

		#define set_1_RF_Key3Flag() RF->Key3Flag=1

		#define set_1_RF_Key1Status() RF->Key1Status=1

		#define set_0_RF_Key1Status() RF->Key1Status=0

		#define set_1_RF_Key2Status() RF->Key2Status=1

		#define set_0_RF_Key2Status() RF->Key2Status=0

		#define set_1_RF_Key3Status() RF->Key3Status=1

		#define set_0_RF_Key3Status() RF->Key3Status=0

		#define set_1_RF_SwitchDebounce() RF->SwitchDebounce=1

		#define set_0_RF_SwitchDebounce() RF->SwitchDebounce=0

		#define set_1_RF_Learn() RF->Learn=1

		#define set_0_RF_Learn() RF->Learn=0

		#define setRF_Data(number,value) RF_Data[number]=value

		#define getRxData_Main() getRxData_Main_1()
	
		#define setTxData_Main() setTxData_Main_1()

		#define RF_Main_M() RF_Main_M_1()

		#define RF_Enable_Main() RF_Enable_Main_1()

		#define RF_Disable_Main() RF_Disable_Main_1()

		#define RF_Data_Initial() RF_Data_Initial_1()

	#endif

	void RF_Main();
	void getRxData();
	void setTxData();
	void RF_Enable();
	void RF_Disable();

	//NOP
	#ifndef set_1_RF_RxFlag()
		#define set_1_RF_RxFlag() NOP()
	#endif	

	#ifndef set_0_RF_RxFlag()
		#define set_0_RF_RxFlag() NOP()
	#endif

	#ifndef set_1_RF_Key1Flag()
		#define set_1_RF_Key1Flag() NOP()
	#endif	

	#ifndef set_1_RF_Key2Flag()
		#define set_1_RF_Key2Flag() NOP()
	#endif	

	#ifndef set_1_RF_Key3Flag()
		#define set_1_RF_Key3Flag() NOP()
	#endif	

	#ifndef set_1_RF_Key1Status()
		#define set_1_RF_Key1Status() NOP()
	#endif	

	#ifndef set_0_RF_Key1Status()
		#define set_0_RF_Key1Status() NOP()
	#endif

	#ifndef set_1_RF_Key2Status()
		#define set_1_RF_Key2Status() NOP()
	#endif	

	#ifndef set_0_RF_Key2Status()
		#define set_0_RF_Key2Status() NOP()
	#endif

	#ifndef set_1_RF_Key3Status()
		#define set_1_RF_Key3Status() NOP()
	#endif	

	#ifndef set_0_RF_Key3Status()
		#define set_0_RF_Key3Status() NOP()
	#endif

	#ifndef set_0_RF_SwitchDebounce()
		#define set_0_RF_SwitchDebounce() NOP()
	#endif	

	#ifndef set_1_RF_SwitchDebounce()
		#define set_1_RF_SwitchDebounce() NOP()
	#endif	

	#ifndef set_0_RF_SwitchDebounce()
		#define set_0_RF_SwitchDebounce() NOP()
	#endif	

	#ifndef set_1_RF_Learn()
		#define set_1_RF_Learn() NOP()
	#endif	

	#ifndef set_0_RF_Learn()
		#define set_0_RF_Learn() NOP()
	#endif	

	#ifndef setRF_Data(number,value)
		#define setRF_Data(number,value) NOP()
	#endif	

	#ifndef getRxData_Main()
		#define getRxData_Main() NOP()
	#endif

	#ifndef setTxData_Main()
		#define setTxData_Main() NOP()
	#endif

	#ifndef RF_Main_M()
		#define RF_Main_M() NOP()
	#endif

	#ifndef RF_Enable_Main()
		#define RF_Enable_Main() NOP()
	#endif

	#ifndef RF_Disable_Main()
		#define RF_Disable_Main() NOP()
	#endif


	/*
	*Command 				0,1
	*Temperature 			2,3
	*Humidity 				4,5
	*Barometric pressure 	6,7
	*Electricity 			8
	*Dimmer 				9
	*Electric  current 		10
	*Year 					11
	*Week 					12
	*Serial  Number 		13,14
	*Lights Status 			15
	*Timmer 				16
	*Timmer Time 			17
	*Reserved 				18,19
	*KeyID					20
	*/

	//RF_Main
	#define RF_Main_M_1()\
				if(CC2500_Enable)\
				{\
					if((Key1 || Key2 || Key3) && RF->Learn == 0)	\//有鍵按下
					{\
						if(RxStatus)\
						{\
							RxStatus=0;\
							RF->DebounceTime=0;\
							RF->Debounce=0;\
							Receive_GO=0;\
							CC2500_WriteCommand(CC2500_SIDLE);	\// idle
							CC2500_WriteCommand(CC2500_SFRX);	\// clear RXFIFO data
							INT_Stop();\
						}\
					}\
					else\
					{\
						if(Receive_GO)	\//有資料接收
						{\
							Receive_GO=0;\
							CC2500_RxData();\
							getRxData();\
							;\//setTxData();
						}\
						else\
						{\
							if(Transceive_GO)	\//有資料要發射
							{\
								if(RF->Debounce == 0)\
								{\
									RF->DebounceTime++;\
									if(RF->DebounceTime == 150)\//ms
									{\
										RF->DebounceTime=0;\
										RF->Debounce=1;\
									}\
								}\
								else\
								{\
									RF->Debounce=0;\
									if(RxStatus)\
									{\
										RxStatus=0;\
										Receive_GO=0;\
										RF->DebounceTime=0;\
										RF->Debounce=0;\
										CC2500_WriteCommand(CC2500_SIDLE);  \// idle
										CC2500_WriteCommand(CC2500_SFRX);	\// clear RXFIFO data 
										INT_Stop();\
									}\
									Transceive_GO=0;\
									CC2500_TxData();\
								}\
							}\
							else\
							{\
								if(RxStatus == 0 && Rx_Enable && RF->RxFlag == 0)	\//設置為接收模式
								{\
									if(RF->Debounce == 0)\
									{\
										RF->DebounceTime++;\
										if(RF->DebounceTime == 50)\//ms
										{\
											RF->DebounceTime=0;\
											RF->Debounce=1;\
										}\
									}\
									else\
									{\
										RF->Debounce=0;\
										RxStatus=1;\
										CC2500_WriteCommand(CC2500_SIDLE);\// idle
										CC2500_WriteCommand(CC2500_SRX);\// set receive mode	
										INT_GO();\
										ErrLED=~ErrLED;\
									}\
								}\
							}\
						}\
					}\
				}\
				;

	
	//setTxData
	#define setTxData_Main_1()\
				if(CC2500_Enable)\
				{\
					if(Transceive_GO == 0 && Tx_Enable)\
					{\
						Transceive_GO=1;\
						setRF_Data(0,0x63);\//Command
						setRF_Data(1,0x02);\//Command
						setRF_Data(2,0xaa);\//Temperature
						setRF_Data(3,0xaa);\//Temperature
						setRF_Data(4,0x00);\//Humidity
						setRF_Data(5,0x00);\//Humidity 
						setRF_Data(6,0x00);\//Barometric pressure 
						setRF_Data(7,0x00);\//Barometric pressure 
						setRF_Data(8,0x00);\//Electricity
						setRF_Data(9,Product->Data[9]);\//Dimmer
						setRF_Data(10,0x00);\//Electric  current 
						setRF_Data(11,Product->Data[11]);\//Year
						setRF_Data(12,Product->Data[12]);\//Week 
						setRF_Data(13,Product->Data[13]);\//Serial  Number
						setRF_Data(14,Product->Data[14]);\//Serial  Number
						setRF_Data(15,Product->Data[15]);\//Lights Status
						setRF_Data(16,Product->Data[16]);\//Timmer 
						setRF_Data(17,Product->Data[17]);\//Timmer Time
						setRF_Data(18,Product->Data[18]);\//Reserved
						setRF_Data(19,0x00);\//Reserved
						setRF_Data(20,Product->Data[20]);\//Key ID
					}\
				}\
				;
	
	//getRxData
	#define getRxData_Main_1()\
				if(RF->Learn)\
				{\
					if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)				\//login command	
					{\
						Log_Code();\
					}\
				}\
				else\
				{\
					if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)			\//lights control command
					{\
						if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])\
						{\
							Control_Lights_Table();\
						}\
					}\
					else if(RF_Data[0] == 0x63 && RF_Data[1] == 0x02)		\//return command
					{\
						NOP();\
					}\
					else if(RF_Data[0] == 0xff && RF_Data[1] == 0x02)		\//Broadcasting command	
					{\
						NOP();\
					}\
					else if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)		\//overload command	
					{\
						NOP();\
					}\
				}\
				;

	#define Control_Lights_Table()\
				if(RF_Data[15] == 0)\
				{\
					set_Off_DimmerLights1();\
					set_Off_DimmerLights2();\
					set_Off_DimmerLights3();\
				}\
				else\
				{\
					if(RF_Data[15] == 1)\
					{\
						if(RF->Key1Status == 0)\
						{\
							set_On_DimmerLights1();\
						}\
						else\
						{\
							set_Off_DimmerLights1();\
						}\
					}\
					else if(RF_Data[15] == 0x11)\
					{\
						if(RF->Key1Status)\
						{\
							DimmerLights1->AdjRF=1;\
							DimmerLights1->Signal=1;\
							if(RF_Data[9] > 0x64)\
							{\
								RF_Data[9]=0x64;\
							}\
							setDimmerLights1_StartValue((char)((100-(30+(char)(RF_Data[9]/2)))*One_Percent));\
							setProductData(9,RF_Data[9]);\
							setProductData(11,1);\
							setProductData(15,(Product->Data[15]|0x01));\//Lights Status
							setTxData();\
						}\
					}\
					else if(RF_Data[15] == 2)\
					{\
						if(RF->Key2Status == 0)\
						{\
							set_On_DimmerLights2();\
						}\
						else\
						{\
							set_Off_DimmerLights2();\
						}\
					}\
					else if(RF_Data[15] == 0x21)\
					{\
						if(RF->Key2Status)\
						{\
							DimmerLights2->AdjRF=1;\
							DimmerLights2->Signal=1;\
							if(RF_Data[9] > 0x64)\
							{\
								RF_Data[9]=0x64;\
							}\
							setDimmerLights2_StartValue((char)((100-(30+(char)(RF_Data[9]/2)))*One_Percent));\
							setProductData(9,RF_Data[9]);\
							setProductData(11,2);\
							setProductData(15,(Product->Data[15]|0x02));\//Lights Status
							setTxData();\
						}\
					}\
					else if(RF_Data[15] == 3)\
					{\
						if(RF->Key3Status == 0)\
						{\
							set_On_DimmerLights3();\
						}\
						else\
						{\
							set_Off_DimmerLights3();\
						}\
					}\
					else if(RF_Data[15] == 0x31)\
					{\
						if(RF->Key3Status)\
						{\
							DimmerLights3->AdjRF=1;\
							DimmerLights3->Signal=1;\
							if(RF_Data[9] > 0x64)\
							{\
								RF_Data[9]=0x64;\
							}\
							setDimmerLights3_StartValue((char)((100-(30+(char)(RF_Data[9]/2)))*One_Percent));\
							setProductData(9,RF_Data[9]);\
							setProductData(11,3);\
							setProductData(15,(Product->Data[15]|0x04));\//Lights Status
							setTxData();\
						}\
					}\
				}\
				;
		
	#define Log_Code()\
				setProductData(12,RF_Data[12]);\
				setProductData(13,RF_Data[13]);\
				setProductData(14,RF_Data[14]);\
				;\//for(i=0 ; i<32 ; i++)
				;\//{
					;\//Memory->WriteData[i]=Flash_Memory_Read(i);
				;\//}
				setMemoryData(1,Product->Data[12]);\
				setMemoryData(2,Product->Data[13]);\
				setMemoryData(3,Product->Data[14]);\
				;\//Flash_Memory_Erasing();
				;\//Flash_Memory_Write();
				setBuzzer(1,100);\
				RF->Learn=0;\
				;
	
	//RF_Data_Initial 1
	#define RF_Data_Initial_1()\
				setRF_Data(0,0xaa);\
				setRF_Data(1,0xaa);\
				;
		
	
	//RF_Enable 1
	#define RF_Enable_Main_1()\
				CC2500_Enable=1;\
				;
	
	//RF_Disalbe 1
	#define RF_Disable_Main_1()\
				CC2500_Enable=0;\
				RxStatus=0;\
				Receive_GO=0;\
				CC2500_WriteCommand(CC2500_SIDLE);	\// idle
				CC2500_WriteCommand(CC2500_SFRX);	\// clear RXFIFO data
				INT_Stop();\
				Transceive_GO=0;\
				CC2500_WriteCommand(CC2500_SIDLE);	\// idle
				CC2500_WriteCommand(CC2500_SFTX);	\// clear TXFIFO data	
				;

#endif