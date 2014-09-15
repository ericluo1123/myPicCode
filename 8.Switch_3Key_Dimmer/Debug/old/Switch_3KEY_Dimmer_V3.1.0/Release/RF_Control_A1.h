
#ifndef _RF_Control_A1_H_
#define _RF_Control_A1_H_

/****************************************************************
	File list:
		CC2500_A1.c
		CC2500_A1.h
		RF_Control_A1.c
		RF_Control_A1.h
	
	addFunction
		CC2500_PowerOnInitial();
		RF_Initial();
		RF_Main();

	method:	
		*send data step:
		step:1
				setRF_Data(char location,char value);
					location(0~20)
					value(1~255)
		step:2
				setTxData();

		*receive data		
				getRxData(); //if have receive data


		setRF_Enable(char command);
			command(0 ~ 1)

/***************************************************************/

	#if CC2500_use == 1
		#ifdef Key1
			#define getKey1 Key1
		#else
			#define getKey1 0
		#endif

		#ifdef Key2
			#define getKey2 Key2
		#else
			#define getKey2 0
		#endif

		#ifdef Key3
			#define getKey3 Key3
		#else
			#define getKey3 0
		#endif

		//Global extern variable declaration
		struct RF
		{
			unsigned Enable:1;
			unsigned ReceiveGO:1;
			unsigned TransceiveGO:1;
			unsigned RxStatus:1;
			unsigned TxStatus:1;

			unsigned Debounce:1;
			unsigned Learn:1;

			unsigned char DebounceTime;
		};
		struct RF *RF;
		struct RF VarRF;

		struct RFsw	
		{
			unsigned Status:1;
		}

		#ifdef Triac1 
				struct RFsw *RFsw1;
				struct RFsw VarRFsw1;

				#define RFsw1_Initial() RFsw1_Initial_1() 
				#define RFsw1_Control() RFsw1_Control_1()
				#define RFsw1_AdjControl() RFsw1_AdjControl_1()
				#define setRFsw1_Status(command) RFsw1->Status=command
		#endif

		#ifdef Triac2 
				struct RFsw *RFsw2;
				struct RFsw VarRFsw2;

				#define RFsw2_Initial() RFsw2_Initial_1()
				#define RFsw2_Control() RFsw2_Control_1()
				#define RFsw2_AdjControl() RFsw2_AdjControl_1()
				#define setRFsw2_Status(command) RFsw2->Status=command
		#endif

		#ifdef Triac3 
				struct RFsw *RFsw3;
				struct RFsw VarRFsw3;

				#define RFsw3_Initial() RFsw3_Initial_1()
				#define RFsw3_Control() RFsw3_Control_1()
				#define RFsw3_AdjControl() RFsw3_AdjControl_1()
				#define setRFsw3_Status(command) RFsw3->Status=command
		#endif
		

		#define RF_Initial_Content()\
					RF=&VarRF;\
					Tx_Length=21;\
					RFsw1_Initial()\
					RFsw2_Initial()\
					RFsw3_Initial()\
					;

		#define RF_Main_Content() RF_Main_1()
		#define setRF_Enable_Content() setRF_Enable_1()
		#define setTxData_Content() setTxData_1()
		#define getRxData_Content() getRxData_1()
		#define RF_RxDisable_Content() RF_RxDisable_1()
		#define setRF_Learn(command) RF->Learn=command
		#define setRF_Data(location,value) RF_Data[location]=value
		#define setRF_ReceiveGO(command) RF->ReceiveGO=command
		#define setRF_RxStatus(command) RF->RxStatus=command
		#define getStartValue_Main_1() (((100-RF_Data[9]))+Tune_Percent)
		#define DelayTimejudge_Main() DelayTimejudge_1()

		#if Dimmer_use == 1
			#define setRF_DimmerValue_Content() setRF_DimmerValue_1()
			#define setRF_DimmerLights_Content() setRF_DimmerLights_1()
		#else
			#define setRF_DimmerValue_Content() NOP()
			#define setRF_DimmerLights_Content() NOP()
		#endif

	#else 
		#define getStartValue_Main_1() 0
		#define setRF_Data(location,value) NOP()
		#define setRF_ReceiveGO(command) NOP()
		#define setRF_RxStatus(command) NOP()
		#define setRF_Learn(command) NOP()
		#define setTxData_Content() NOP()
		#define getRxData_Content() NOP()
		#define RF_Initial_Content() NOP()
		#define RF_Main_Content() NOP()
		#define setRF_Enable_Content() NOP()
		#define RF_RxDisable_Content() NOP()
		#define setRF_DimmerValue_Content() NOP()
		#define setRF_DimmerLights_Content() NOP()
		#define DelayTimejudge_Main() NOP()

		//sw1
		#define RFsw1_Initial() NOP()
		#define RFsw1_Control()	NOP()	
		#define RFsw1_AdjControl() NOP()
		#define setRFsw1_Status(command) NOP()
		//sw2
		#define RFsw2_Initial() NOP()
		#define RFsw2_Control()	NOP()	
		#define RFsw2_AdjControl() NOP()	
		#define setRFsw2_Status(command) NOP()
		//sw3
		#define RFsw3_Initial() NOP()
		#define RFsw3_control()	NOP()
		#define RFsw3_AdjControl() NOP()		
		#define setRFsw3_Status(command) NOP()

	
	#endif

	void setTxData();
	void getRxData();
	void setRF_Enable(char);
	void RF_Main();
	void RF_Initial();
	void RF_RxDisable();
	void setRF_DimmerValue(char);
	void setRF_DimmerLights(char,char,char);
	char DelayTimejudge(char);

	//RFsw1 Initial 
	#define RFsw1_Initial_1()\
				RFsw1=&VarRFsw1;
				;

	//RFsw1 Initial 
	#define RFsw2_Initial_1()\
				RFsw2=&VarRFsw2;
				;

	//RFsw1 Initial 
	#define RFsw3_Initial_1()\
				RFsw3=&VarRFsw3;
				;				

	//RF_Main 1
	#define RF_Main_1()\
				if(RF->Enable)\
				{\
					if((getKey1 || getKey2 || getKey3) && RF->Learn == 0)	\//有鍵按下
					{\
						RF_RxDisable();\
					}\
					else\
					{\
						if(RF->ReceiveGO)\//有資料接收
						{\
							CC2500_RxData();\
							RF->ReceiveGO=0;\
							getRxData();\
							ErrLED=~ErrLED;\
						}\
						else\
						{\
							if(RF->TransceiveGO)	\//有資料要發射
							{\
								RF_RxDisable();\
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
									RF->TransceiveGO=0;\
									CC2500_TxData();\
								}\
							}\
							else\
							{\
								if(RF->RxStatus == 0 && Rx_Enable)	\//設置為接收模式
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
										RF->RxStatus=1;\
										CC2500_WriteCommand(CC2500_SIDLE);\// idle
										CC2500_WriteCommand(CC2500_SRX);\// set receive mode	
										INT_GO();\
									}\
								}\
							}\
						}\
					}\
				}\
				;

	//setTxData
	#define setTxData_1()\
				if(RF->Enable)\
				{\
					if(RF->TransceiveGO == 0 && Tx_Enable)\
					{\
						RF->TransceiveGO=1;\
						setRF_Data(0,Product->Data[0]);\//Command
						setRF_Data(1,Product->Data[1]);\//Command
						setRF_Data(2,Product->Data[2]);\//Temperature
						setRF_Data(3,Product->Data[3]);\//Temperature
						setRF_Data(4,Product->Data[4]);\//Humidity
						setRF_Data(5,Product->Data[5]);\//Humidity 
						setRF_Data(6,Product->Data[6]);\//Barometric pressure 
						setRF_Data(7,Product->Data[7]);\//Barometric pressure 
						setRF_Data(8,Product->Data[8]);\//Electricity
						setRF_Data(9,Product->Data[9]);\//Dimmer
						setRF_Data(10,Product->Data[10]);\//Electric  current 
						setRF_Data(11,Product->Data[11]);\//Year
						setRF_Data(12,Product->Data[12]);\//Week 
						setRF_Data(13,Product->Data[13]);\//Serial  Number
						setRF_Data(14,Product->Data[14]);\//Serial  Number
						setRF_Data(15,Product->Data[15]);\//Lights Status
						setRF_Data(16,Product->Data[16]);\//Timmer 
						setRF_Data(17,Product->Data[17]);\//Timmer Time
						setRF_Data(18,Product->Data[18]);\//Reserved
						setRF_Data(19,Product->Data[19]);\//Reserved
						setRF_Data(20,Product->Data[20]);\//Key ID
					}\
				}\
				;
	
	//getRxData
	#define getRxData_1()\
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
				if(RF_Data[15] == 0x00)\
				{\
					setDimmerLights1(0);\
					setDimmerLights2(0);\
					setDimmerLights3(0);\
					setRFsw1_Status(0);\
					setRFsw2_Status(0);\
					setRFsw3_Status(0);\
					setSw1_Status(0);\
					setSw2_Status(0);\
					setSw3_Status(0);\
					setBuzzer(1,100);\
					setProductData(15,0);\//Lights Status
					setTxData();\
				}\
				if(RF_Data[15] == 0x01)\
				{\
					RFsw1_Control()\
				}\
				else if(RF_Data[15] == 0x11)\
				{\
					RFsw1_AdjControl()\
				}\
				else if(RF_Data[15] == 0x02)\
				{\
					RFsw2_Control()\
				}\
				else if(RF_Data[15] == 0x21)\
				{\
					RFsw2_AdjControl()\
				}\
				else if(RF_Data[15] == 0x03)\
				{\
					RFsw3_Control()\
				}\
				else if(RF_Data[15] == 0x31)\
				{\
					RFsw3_AdjControl()\
				}\
				;
		


	#define RFsw1_Control_1()\
				if(RF_Data[16] == 0x80)\
				{\
					setDelayOffSw1_GO(1);\
					setDelayOffSw1_Value(DelayTimejudge(RF_Data[17]));\
				}\
				else\
				{\
					setDelayOffSw1_GO(0);\
				}\
				if(RFsw1->Status == 0)\
				{\
					RFsw1->Status=1;\
					setSw1_Status(1);\
					setDimmerLights1(1);\
					setBuzzer(1,100);\
					setTxData();\
				}\
				else\
				{\
					if(RF_Data[16] != 0x80)\
					{\
						RFsw1->Status=0;\
						setSw1_Status(0);\
						setDimmerLights1(0);\
					}\
					setBuzzer(1,100);\
					setTxData();\
				}\
				;

	#define RFsw1_AdjControl_1()\
				if(RFsw1->Status)\
				{\
					setRF_DimmerValue(1);\
					setMemory_Modify(1);\
					setTxData();\
				}\
				;

	#define RFsw2_Control_1()\
				if(RF_Data[16] == 0x80)\
				{\
					setDelayOffSw2_GO(1);\
					setDelayOffSw2_Value(DelayTimejudge(RF_Data[17]));\
				}\
				else\
				{\
					setDelayOffSw2_GO(0);\
				}\
				if(RFsw2->Status == 0)\
				{\
					RFsw2->Status=1;\
					setSw2_Status(1);\
					setDimmerLights2(1);\
					setBuzzer(1,100);\
					setTxData();\
				}\
				else\
				{\
					if(RF_Data[16] != 0x80)\
					{\
						RFsw2->Status=0;\
						setSw2_Status(0);\
						setDimmerLights2(0);\
					}\
					setBuzzer(1,100);\
					setTxData();\
				}\
				;

	#define RFsw2_AdjControl_1()\
				if(RFsw2->Status)\
				{\
					setRF_DimmerValue(2);\
					setMemory_Modify(1);\
					setTxData();\
				}\
				;

	#define RFsw3_Control_1()\
				if(RF_Data[16] == 0x80)\
				{\
					setDelayOffSw3_GO(1);\
					setDelayOffSw3_Value(DelayTimejudge(RF_Data[17]));\
				}\
				else\
				{\
					setDelayOffSw3_GO(0);\
				}\
				if(RFsw3->Status == 0)\
				{\
					RFsw3->Status=1;\
					setSw3_Status(1);\
					setDimmerLights3(1);\
					setBuzzer(1,100);\
					setTxData();\
				}\
				else\
				{\
					if(RF_Data[16] != 0x80)\
					{\
						RFsw3->Status=0;\
						setSw3_Status(0);\
						setDimmerLights3(0);\
					}\
					setBuzzer(1,100);\
					setTxData();\
				}\
				;

	#define RFsw3_AdjControl_1()\
				if(RFsw3->Status)\
				{\
					setRF_DimmerValue(3);\
					setMemory_Modify(1);\
					setTxData();\
				}\
				;


	//setRF_DimmerValue 1
	#define setRF_DimmerValue_1()\
				if(RF_Data[9] > 0x64)\
				{\
					RF_Data[9]=0x64;\
				}\
				setProductData(9,RF_Data[9]);\
				setProductData(11,lights);\
				if(lights == 1)\
				{\
					DimmerLights1_AdjRF_Main();\
				}\
				else if(lights == 2)\
				{\
					DimmerLights2_AdjRF_Main();\
				}\
				else if(lights == 3)\
				{\
					DimmerLights3_AdjRF_Main();\
				}\
				;


		
	#define DelayTimejudge_1()\
				if(value == 0x05)\
					i=5;\
				else if(value == 0x10)\
					i=10;\
				else if(value == 0x15)\
					i=15;\
				else if(value == 0x20)\
					i=20;\
				else if(value == 0x25)\
					i=25;\
				else if(value == 0x30)\
					i=30;\
					;

	#define Log_Code()\
				setProductData(12,RF_Data[12]);\
				setProductData(13,RF_Data[13]);\
				setProductData(14,RF_Data[14]);\
				setBuzzer(1,100);\
				RF->Learn=0;\
				setMemory_Modify(1);\
				;
		
	
	//RF_Enable 1
	#define setRF_Enable_1()\
				if(command == 1)\
				{\
					RF->Enable=1;\
				}\
				else if(command == 0)\
				{\
					RF->Enable=0;\
					RF->Learn=0;\
					Transceive_GO=0;\
					CC2500_WriteCommand(CC2500_SIDLE);\// idle
					CC2500_WriteCommand(CC2500_SFTX);\// clear TXFIFO data	
					RF_RxDisable();\
				}\
				;

	//RF RxDisable 1
	#define RF_RxDisable_1()\
				if(RF->RxStatus || RF->ReceiveGO)\
				{\
					RF->RxStatus=0;\
					RF->ReceiveGO=0;\
					RF->DebounceTime=0;\
					RF->Debounce=0;\
					CC2500_WriteCommand(CC2500_SIDLE);\// idle
					CC2500_WriteCommand(CC2500_SFRX);\// clear RXFIFO data
					INT_Stop();\
				}\
				;

	//setRF_DimmerLights 1
	#define setRF_DimmerLights_1()\
				setProductData(9,(100-(value-Tune_Percent)));\
				setProductData(11,lights);\
				if(lights == 1)\
				{\
					Product->Data[21]=value;\
					if(on == 1)\
					{\
						setProductData(15,(Product->Data[15]|0x01));\//Lights Status
					}\
					else if(on == 0)\
					{\
						setProductData(15,(Product->Data[15]&0xfe));\//Lights Status
					}\
				}\
				else if(lights == 2)\
				{\
					Product->Data[22]=value;\
					if(on == 1)\
					{\
						setProductData(15,(Product->Data[15]|0x02));\//Lights Status
					}\
					else if(on == 0)\
					{\
						setProductData(15,(Product->Data[15]&0xfd));\//Lights Status
					}\
				}\
				else if(lights == 3)\
				{\
					Product->Data[23]=value;\
					if(on == 1)\
					{\
						setProductData(15,(Product->Data[15]|0x04));\//Lights Status
					}\
					else if(on == 0)\
					{\
						setProductData(15,(Product->Data[15]&0xfb));\//Lights Status
					}\
				}\
				;


#endif