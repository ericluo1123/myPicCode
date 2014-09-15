
#ifndef _RF_Control_H_
#define _RF_Control_H_

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
			unsigned Key:1;
			unsigned char DebounceTime;
		};
		struct RF *RF;

		#ifdef RadioFrequency1
			struct RF RF1;
		#endif

		void RfPointSelect(char);
		void RF_Initialization();
		void RF_Main();
		void setRF_Initialization(char);
		void setRF_Main(char);
		void setTxData(char);
		void getRxData(char);
		void setRF_Enable(char,char);
		void setLog_Code(char);
		void setControl_Lights_Table(char);
		void RF_RxDisable(char);
		void setRF_Learn(char,char);
		void setRF_ReceiveGO(char,char);
		void setRF_RxStatus(char,char);

	//	#define setRF_Learn(command) RF->Learn=command
		#define setRF_Data(location,value) RF_Data[location]=value
	//	#define setRF_ReceiveGO(command) RF->ReceiveGO=command
	//	#define setRF_RxStatus(command) RF->RxStatus=command




		struct RFSW
		{
			unsigned Status:1;
		};
		struct RFSW *RFSW;


		void RfSWPointSelect(char);
		void setRFSW_Control(char);
		void setRFSW_AdjControl(char);
		void setRFSW_Status(char,char);


		#ifdef Triac1 
			struct RFSW RFSW1;	
		#endif

		#ifdef Triac2 
			struct RFSW RFSW2;	
		#endif

		#ifdef Triac3 
			struct RFSW RFSW3;		
		#endif
		

		#if Dimmer_use == 1
			void setRF_DimmerValue(char);
			void setRF_DimmerLights(char,char);
		#else
			#define setRF_DimmerValue(char) ;
			#define setRF_DimmerLights(char,char) ;
		#endif

	#else 

	#endif

#endif