
#ifndef _LightsControl_A_H_
#define _LightsControl_A_H_

/*
	Description:

	setLights1(x)		
			x = 0		Lights1 OFF
			  =	1		Lights1 ON
	setLights2(x)	
			x = 0		Lights2 OFF
				1		Lights2 ON
*/
	//=============================option===============================
	#define LightsLoop	 	30			//10:	loop on Triac1	
										//20;	Loop on Triac1 + Triac2
										//30;	Loop on Triac1 + Triac2 + Triac3

	#define L1_ModeSet1		2			//1:	Set_Triac1_Relay1()
										//2: 	Set_Triac1()
										//3: 	Set_Relay1()

	#define L2_ModeSet		2			//1:	Set_Triac2_Relay2()
										//2:	Set_Triac2()
										//3: 	Set_Relay2()

	#define L3_ModeSet		2			//1:	Set_Triac2_Relay2()
										//2:	Set_Triac2()
										//3: 	Set_Relay2()


	//=================================================================
	#if LightsControl_use == 1 
		//Global extern variable declaration
		struct Lights
		{
			unsigned Enable:1;
			unsigned GO:1;		
			unsigned Status:1;
			unsigned char Time;
			unsigned char TriacTime;	
			unsigned char RelayTime;
			unsigned char Number;
		};


		//Loop 1
		#if LightsLoop == 11
			struct Lights VarLights1;
			struct Lights *Lights1;

			#define LightsControl_Initial() LightsControl_Initial_11()

			#define LightsControl_Main()\
						Lights1_GO();\
						;
						
			#define Lights_ERROR_Main() Lights_ERROR_11()
	

			#if L1_ModeSet1	== 1
				#define Lights1_ModeSet() 	Set_Triac1_Relay1()
			#elif L1_ModeSet1	== 2
				#define Lights1_ModeSet() 	Set_Triac1()	
			#elif L1_ModeSet1	== 3
				#define Lights1_ModeSet() 	Set_Relay1()		
			#endif 
		
			#define setLights1(x) Lights1->Number=x

			//value define
			#define if_Lights1_Status_1 Lights1->Status
	
			#define if_Lights1_Status_0 Lights1->Status==0

		#elif LightsLoop == 12
			struct Lights VarLights2;
			struct Lights *Lights2;	
	
			#define LightsControl_Initial()  LightsControl_Initial_12()


			#define LightsControl_Main()\
						Lights2_GO_Main();\
						;

			#define Lights_ERROR_Main() Lights_ERROR_12() 
		

			#if L2_ModeSet	== 1
				#define Lights2_ModeSet() 	Set_Triac2_Relay2()	
				#define Lights2_GO_Main() 	Lights2_GO();
			#elif L2_ModeSet	== 2
				#define Lights2_ModeSet() 	Set_Triac2()
				#define Lights2_GO_Main() 	Set_Lights2()
			#elif L2_ModeSet	== 3
				#define Lights2_ModeSet() 	Set_Relay2()
				#define Lights2_GO_Main() 	Set_Lights2()
			#endif

			#define setLights2(x) Lights2->Number=x
			//value define
			#define	if_Lights2_Status_1 Lights2->Status
	
			#define	if_Lights2_Status_0 Lights2->Status==0

		//loop	2 	
		#elif LightsLoop == 20	
			struct Lights VarLights1;
			struct Lights *Lights1;
			struct Lights VarLights2;
			struct Lights *Lights2;
			;

			#define LightsControl_Initial() LightsControl_Initial_20()
	
	
			#define LightsControl_Main()\
							Lights1_GO_Main();\
							Lights2_GO_Main();\
							;
	
			#define Lights_ERROR_Main() Lights_ERROR_20()

			#if L1_ModeSet1	== 1
				#define Lights1_ModeSet() 	Set_Triac1_Relay1()
				#define Lights1_GO_Main() 	Lights1_GO();			
							
			#elif L1_ModeSet1	== 2
				#define Lights1_ModeSet() 	Set_Triac1()
				#define Lights1_GO_Main() 	Set_Lights1()

			#elif L1_ModeSet1	== 3
				#define Lights1_ModeSet() 	Set_Relay1()
				#define Lights1_GO_Main() 	Set_Lights1()
			#endif 
	
			#if L2_ModeSet	== 1
				#define Lights2_ModeSet() 	Set_Triac2_Relay2()	
				#define Lights2_GO_Main() 	Lights2_GO();
			#elif L2_ModeSet	== 2
				#define Lights2_ModeSet() 	Set_Triac2()
				#define Lights2_GO_Main() 	Set_Lights2()
			#elif L2_ModeSet	== 3
				#define Lights2_ModeSet() 	Set_Relay2()
				#define Lights2_GO_Main() 	Set_Lights2()
			#endif
	
			#define setLights1(x) Lights1->Number=x
			#define setLights2(x) Lights2->Number=x

			//value define
			#define if_Lights1_Status_1 Lights1->Status
			#define	if_Lights2_Status_1 Lights2->Status
	
			#define if_Lights1_Status_0 Lights1->Status==0
			#define	if_Lights2_Status_0 Lights2->Status==0
		//loop	3 	
		#elif LightsLoop == 30	
			struct Lights VarLights1;
			struct Lights *Lights1;
			struct Lights VarLights2;
			struct Lights *Lights2;
			struct Lights VarLights3;
			struct Lights *Lights3;
			;

			#define LightsControl_Initial() LightsControl_Initial_30()
	
	
			#define LightsControl_Main()\
							Lights1_GO_Main();\
							Lights2_GO_Main();\
							Lights3_GO_Main();\
							;
	
			#define Lights_ERROR_Main() Lights_ERROR_30()

			#if L1_ModeSet1	== 1
				#define Lights1_ModeSet() 	Set_Triac1_Relay1()
				#define Lights1_GO_Main() 	Lights1_GO();			
							
			#elif L1_ModeSet1	== 2
				#define Lights1_ModeSet() 	Set_Triac1()
				#define Lights1_GO_Main() 	Set_Lights1()

			#elif L1_ModeSet1	== 3
				#define Lights1_ModeSet() 	Set_Relay1()
				#define Lights1_GO_Main() 	Set_Lights1()
			#endif 
	
			#if L2_ModeSet	== 1
				#define Lights2_ModeSet() 	Set_Triac2_Relay2()	
				#define Lights2_GO_Main() 	Lights2_GO();
			#elif L2_ModeSet	== 2
				#define Lights2_ModeSet() 	Set_Triac2()
				#define Lights2_GO_Main() 	Set_Lights2()
			#elif L2_ModeSet	== 3
				#define Lights2_ModeSet() 	Set_Relay2()
				#define Lights2_GO_Main() 	Set_Lights2()
			#endif

			#if L3_ModeSet	== 1
				#define Lights3_ModeSet() 	Set_Triac3_Relay3()	
				#define Lights3_GO_Main() 	Lights3_GO();
			#elif L3_ModeSet	== 2
				#define Lights3_ModeSet() 	Set_Triac3()
				#define Lights3_GO_Main() 	Set_Lights3()
			#elif L3_ModeSet	== 3
				#define Lights3_ModeSet() 	Set_Relay3()
				#define Lights3_GO_Main() 	Set_Lights3()
			#endif
				
	
			#define setLights1(x) Lights1->Number=x
			#define setLights2(x) Lights2->Number=x
			#define setLights3(x) Lights3->Number=x

			//value define
			#define if_Lights1_Status_1 Lights1->Status
			#define	if_Lights2_Status_1 Lights2->Status
			#define	if_Lights3_Status_1 Lights3->Status
	
			#define if_Lights1_Status_0 Lights1->Status==0
			#define	if_Lights2_Status_0 Lights2->Status==0
			#define	if_Lights3_Status_0 Lights3->Status==0
	
		#endif
	
	#endif

//NOP()


	#ifndef Lights1_GO_Main()
		#define Lights1_GO_Main() NOP()
	#endif

	#ifndef Lights2_GO_Main()
		#define Lights2_GO_Main() NOP()
	#endif

	#ifndef if_Lights1_Status_1
		#define if_Lights1_Status_1 0
	#endif	

	#ifndef if_Lights1_Status_0
		#define if_Lights1_Status_0 1
	#endif

	#ifndef if_Lights2_Status_1
		#define if_Lights2_Status_1 0
	#endif	

	#ifndef if_Lights2_Status_0
		#define if_Lights2_Status_0 1
	#endif

	#ifndef if_Lights3_Status_1
		#define if_Lights3_Status_1 0
	#endif	

	#ifndef if_Lights3_Status_0
		#define if_Lights3_Status_0 1
	#endif		

	#ifndef Lights_SYSC_ERROR()
		#define Lighrs_SYSC_ERROR() NOP()
	#endif

	#ifndef Lights1_ModeSet() 
		#define Lights1_ModeSet() NOP()
	#endif

	#ifndef Lights2_ModeSet() 
		#define Lights2_ModeSet() NOP()
	#endif

	#ifndef setLights1(x) 
		#define setLights1(x) NOP()
	#endif

	#ifndef setLights2(x) 
		#define setLights2(x) NOP()
	#endif

	#ifndef setLights3(x) 
		#define setLights3(x) NOP()
	#endif

	#ifndef LightsControl_Initial()
		#define LightsControl_Initial()  NOP()
	#endif

	#ifndef LightsControl_Main() 
		#define LightsControl_Main() NOP()
	#endif

	#ifndef Lights_ERROR() 
		#define Lights_ERROR() NOP()
	#endif

//Function
	//Lights ON/OFF
	#define Set_Lights1()\
		if(Lights1->Number == 0)\
		{\
			if(Lights1->Status == 1)\
			{\
				Lights1->Status=0;\
				Lights1_ModeSet();\
				setOverLoad_GO_OFF();\
			}\
		}\
		else if(Lights1->Number == 1)\
		{\
			if(Lights1->Status == 0)\
			{\
				setOverLoad_GO();\
				Lights1->Status=1;\
				Lights1_ModeSet();\
			}\
		}\
		Lights1->Number=0xff;\
		;

	#define Set_Lights2()\
		if(Lights2->Number == 0)\
		{\
			if(Lights2->Status == 1)\
			{\
				Lights2->Status=0;\
				Lights2_ModeSet();\
				setOverLoad_GO_OFF();\
			}\
		}\
		else if(Lights2->Number == 1)\
		{\
			if(Lights2->Status == 0)\
			{\
				setOverLoad_GO();\
				Lights2->Status=1;\
				Lights2_ModeSet();\
			}\
		}\
		Lights2->Number=0xff;\
		;

	#define Set_Lights3()\
		if(Lights3->Number == 0)\
		{\
			if(Lights3->Status == 1)\
			{\
				Lights3->Status=0;\
				Lights3_ModeSet();\
				setOverLoad_GO_OFF();\
			}\
		}\
		else if(Lights3->Number == 1)\
		{\
			if(Lights3->Status == 0)\
			{\
				setOverLoad_GO();\
				Lights3->Status=1;\
				Lights3_ModeSet();\
			}\
		}\
		Lights3->Number=0xff;\
		;

	//Setting 1
	#define Set_Triac1_Relay1()\
		if(Lights1->Status == 1)\
		{\
			if(Triac1)\//關燈中					
			{\
				if(Relay1)\
				{\
					Triac1=0;\
					Lights1->GO=0;\
				}\
				else\
				{\
					Lights1->TriacTime=35;\
					Lights1->RelayTime=20;\
				}\
			}\
			else\//已關燈
			{\
				Lights1->TriacTime=100;\
				Lights1->RelayTime=85;\
				Lights1->GO=1;\
				Triac1=1;\
			}\
		}\
		else\
		{\
			if(Triac1)\//開燈中
			{\
				if(Relay1)\
				{\
					Lights1->TriacTime=35;\
					Lights1->RelayTime=20;\
				}\
				else\
				{\
					Triac1=0;\
					Lights1->GO=0;\
				}\
			}\
			else\//已開燈
			{\
				Lights1->TriacTime=55;\
				Lights1->RelayTime=20;\
				Lights1->GO=1;\
				Triac1=1;\
			}\
		}\
		Lights1->Time=0;\
		;
	
	#define Set_Triac1()\
		if(Lights1->Status == 1)\
		{\
			Triac1=1;\
		}\
		else\
		{\
			Triac1=0;\
		}\
		;

	#define Set_Relay1()\
		if(Lights1->Status == 1)\
		{\
			Relay1=1;\
		}\
		else\
		{\
			Relay1=0;\
		}\
		;
	//setting 2
	#define Set_Triac2_Relay2()\
		if(Lights2->Status == 1)\
		{\
			if(Triac2)\//關燈中
			{\
				if(Relay2)\
				{\
					Triac2=0;\
					Lights2->GO=0;\
				}\
				else\
				{\
					Lights2->TriacTime=35;\
					Lights2->RelayTime=20;\
				}\
			}\
			else\//已關燈
			{\
				Lights2->TriacTime=100;\
				Lights2->RelayTime=85;\
				Lights2->GO=1;\
				Triac2=1;\
			}\
		}\
		else\
		{\
			if(Triac2)\//開燈中
			{\
				if(Relay2)\
				{\
					Lights2->TriacTime=35;\
					Lights2->RelayTime=20;\
				}\
				else\
				{\
					Triac2=0;\
					Lights2->GO=0;\
				}\
			}\
			else\//已開燈
			{\
				Lights2->TriacTime=55;\
				Lights2->RelayTime=30;\
				Lights2->GO=1;\
				Triac2=1;\
			}\
		}\
		Lights2->Time=0;\
		;


	#define Set_Triac2()\
		if(Lights2->Status == 1)\
		{\
			Triac2=1;\
		}\
		else\
		{\
			Triac2=0;\
		}\
		;

	#define Set_Relay2()\
		if(Lights2->Status == 1)\
		{\
			Relay2=1;\
		}\
		else\
		{\
			Relay2=0;\
		}\
		;

	//setting 3	
	#define Set_Triac3_Relay3()\
		if(Lights3->Status == 1)\
		{\
			if(Triac3)\//關燈中
			{\
				if(Relay3)\
				{\
					Triac3=0;\
					Lights3->GO=0;\
				}\
				else\
				{\
					Lights3->TriacTime=35;\
					Lights3->RelayTime=20;\
				}\
			}\
			else\//已關燈
			{\
				Lights3->TriacTime=100;\
				Lights3->RelayTime=85;\
				Lights3->GO=1;\
				Triac3=1;\
			}\
		}\
		else\
		{\
			if(Triac3)\//開燈中
			{\
				if(Relay3)\
				{\
					Lights3->TriacTime=35;\
					Lights3->RelayTime=20;\
				}\
				else\
				{\
					Triac3=0;\
					Lights3->GO=0;\
				}\
			}\
			else\//已開燈
			{\
				Lights3->TriacTime=55;\
				Lights3->RelayTime=30;\
				Lights3->GO=1;\
				Triac3=1;\
			}\
		}\
		Lights3->Time=0;\
		;


	#define Set_Triac3()\
		if(Lights3->Status == 1)\
		{\
			Triac3=1;\
		}\
		else\
		{\
			Triac3=0;\
		}\
		;

	#define Set_Relay3()\
		if(Lights3->Status == 1)\
		{\
			Relay3=1;\
		}\
		else\
		{\
			Relay3=0;\
		}\
		;

	//GO main
	#define Lights1_GO()\
		Set_Lights1();\
		if(Lights1->GO == 1)\
		{\
			Lights1->Time++;\
			if(Lights1->Time == Lights1->RelayTime)\
			{\
				Set_Relay1()\
			}\
			else if(Lights1->Time >= Lights1->TriacTime)\
			{\
				Lights1->Time=0;\
				Lights1->GO=0;\
				Triac1=0;\
			}\
		}\
		;

	#define Lights2_GO()\
		Set_Lights2();\
		if(Lights2->GO == 1)\
		{\
			Lights2->Time++;\
			if(Lights2->Time == Lights2->RelayTime)\
			{\
				Set_Relay2()\
			}\
			else if(Lights2->Time >= Lights2->TriacTime)\
			{\
				Lights2->Time=0;\
				Lights2->GO=0;\
				Triac2=0;\
			}\
		}\
		;

	#define Lights3_GO()\
		Set_Lights3();\
		if(Lights3->GO == 1)\
		{\
			Lights3->Time++;\
			if(Lights3->Time == Lights3->RelayTime)\
			{\
				Set_Relay3()\
			}\
			else if(Lights3->Time >= Lights3->TriacTime)\
			{\
				Lights3->Time=0;\
				Lights3->GO=0;\
				Triac3=0;\
			}\
		}\
		;


	#define Lights_ERROR_30()\
				if(Lights1->Status == 1 || Lights2->Status == 1 || Lights3->Status == 1)\
				{\
					setLights1(0);\
					setLights2(0);\
					setLights3(0);\
					if(SYSC_ERROR_Value)\
					{\
						setBuzzer(10,300);\
					}\
					if(OverLoad_ERROR_Value)\
					{\
						setBuzzer(5,300);\
					}\
				}\
				;

	#define Lights_ERROR_20()\
				if(Lights1->Status == 1 || Lights2->Status == 1)\
				{\
					setLights2(0);\
					if(SYSC_ERROR_Value)\
					{\
						setBuzzer(10,300);\
					}\
					if(OverLoad_ERROR_Value)\
					{\
						setBuzzer(5,300);\
					}\
				}\
				;


	#define Lights_ERROR_12()\
				if(Lights2->Status == 1)\
				{\
					setLights2(0);\
					setBuzzer(10,300);\
					if(SYSC_ERROR_Value)\
					{\
						setBuzzer(10,300);\
					}\
					if(OverLoad_ERROR_Value)\
					{\
						setBuzzer(5,300);\
					}\
				}\
				;

	#define Lights_ERROR_11()\
				if(Lights1->Status == 1)\
				{\
					setLights1(0);\
					setBuzzer(10,300);\
					if(SYSC_ERROR_Value)\
					{\
						setBuzzer(10,300);\
					}\
					if(OverLoad_ERROR_Value)\
					{\
						setBuzzer(5,300);\
					}\
				}\
				;


	#define LightsControl_Initial_30();\
				Lights1=&VarLights1;\
				Lights1->Enable=1;\
				Lights1->Number=0xff;\
				Lights2=&VarLights2;\
				Lights2->Enable=1;\
				Lights2->Number=0xff;\
				Lights3=&VarLights3;\
				Lights3->Enable=1;\
				Lights3->Number=0xff;\
				;

	#define LightsControl_Initial_20();\
				Lights1=&VarLights1;\
				Lights1->Enable=1;\
				Lights1->Number=0xff;\
				Lights2=&VarLights2;\
				Lights2->Enable=1;\
				Lights2->Number=0xff;\
				;

	#define LightsControl_Initial_11();\
				Lights1=&VarLights1;\
				Lights1->Enable=1;\
				Lights1->Number=0xff;\
				;

	#define LightsControl_Initial_12();\
				Lights2=&VarLights2;\
				Lights2->Enable=1;\
				Lights2->Number=0xff;\
				;


	#define ModeSet_3\
				#if L3_ModeSet	== 1\
					#define Lights3_ModeSet() 	Set_Triac3_Relay3()	\
					#define Lights3_GO_Main() 	Lights3_GO();\
				#elif L3_ModeSet	== 2\
					#define Lights3_ModeSet() 	Set_Triac3()\
					#define Lights3_GO_Main() 	Set_Lights3()\
				#elif L3_ModeSet	== 3\
					#define Lights3_ModeSet() 	Set_Relay3()\
					#define Lights3_GO_Main() 	Set_Lights3()\
				#endif\
				;
//End file
#endif