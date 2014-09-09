
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

			unsigned char DebounceTime;
		};
		struct RF *RF;
		struct RF RF1;

		struct RFsw	
		{
			unsigned Status:1;
		}

		#ifdef Triac1 
			struct RFsw *RFsw1;
			struct RFsw VarRFsw1;

			#define RFsw1_Initial() RFsw1=&VarRFsw1
			#define setRFsw1_Status(command) RFsw1->Status=command

			void RFsw1_Control();
			void RFsw1_AdjControl();
		#else
			#define RFsw1_Initial() ;
			#define setRFsw1_Status(command) ;

			#define RFsw1_Control()	;	
			#define RFsw1_AdjControl() ;	
		#endif

		#ifdef Triac2 
			struct RFsw *RFsw2;
			struct RFsw VarRFsw2;

			#define RFsw2_Initial() RFsw2=&VarRFsw2
			#define setRFsw2_Status(command) RFsw2->Status=command

			void RFsw2_Control();
			void RFsw2_AdjControl();

		#else
			#define RFsw2_Initial() ;
			#define setRFsw2_Status(command) ;

			#define RFsw2_Control()	;	
			#define RFsw2_AdjControl() ;	
		#endif


		#ifdef Triac3 
			struct RFsw *RFsw3;
			struct RFsw VarRFsw3;

			#define RFsw3_Initial() RFsw3=&VarRFsw3
			#define setRFsw3_Status(command) RFsw3->Status=command

			void RFsw3_Control();
			void RFsw3_AdjControl();
		#else 
			#define getKey3 0

			#define RFsw3_Initial() ;
			#define setRFsw3_Status(command) ;

			#define RFsw3_Control()	;
			#define RFsw3_AdjControl() ;		
		#endif
		

		#define setRF_Learn(command) RF->Learn=command
		#define setRF_Data(location,value) RF_Data[location]=value
		#define setRF_ReceiveGO(command) RF->ReceiveGO=command
		#define setRF_RxStatus(command) RF->RxStatus=command

		void RF_Initial();
		void RF_Main();
		void setRF_Enable(char);
		void RF_RxDisable();
		void setTxData();
		void getRxData();
		void Log_Code();
		void Control_Lights_Table();


		#if Dimmer_use == 1
			void setRF_DimmerValue(char);
			void setRF_DimmerLights(char,char);
		#else
			#define setRF_DimmerValue(char) ;
			#define setRF_DimmerLights(char,char) ;
		#endif

	#else 
		#define setRF_Learn(command) ;
		#define setRF_Data(location,value) ;
		#define setRF_ReceiveGO(command) ;
		#define setRF_RxStatus(command) ;
		#define getStartValue_Main_1() 0

		#define RF_Initial() ;
		#define RF_Main() ;
		#define setRF_Enable(char) ;
		#define setTxData() ;
		#define getRxData() ;
		#define RF_RxDisable() ;
		#define Log_Code() ;
		#define Control_Lights_Table() ;


		#define setRF_DimmerValue(char) ;
		#define setRF_DimmerLights(char,char) ;


		//sw1
		#define RFsw1_Initial() ;
		#define setRFsw1_Status(command) ;

		#define RFsw1_Control()	;	
		#define RFsw1_AdjControl() ;
		//sw2
		#define RFsw2_Initial() ;
		#define setRFsw2_Status(command) ;

		#define RFsw2_Control()	;	
		#define RFsw2_AdjControl() ;
		//sw3
		#define RFsw3_Initial() ;
		#define setRFsw3_Status(command) ;

		#define RFsw3_Control()	;
		#define RFsw3_AdjControl() ;

	#endif

#endif