
#ifndef _Dimmer_H_
#define _Dimmer_H_

	#if Dimmer_use == 1

		#define Dimmable_Func 1

		#define TriacTimeValue	5

		#define Max_Percent 80
		#define Med_Percent 35
		#define Mini_Percent 20

	  	//Percent define
		#define TotalCount			166
	 	#define One_Percent			1.66

		//maxum
		#define Dimmer_Maxum 	((char)((100-Max_Percent)*One_Percent))

		//medium
		#define Dimmer_Medium 	((char)((100-Med_Percent)*One_Percent))

		//minimun
		#define Dimmer_Minimum	((char)((100-Mini_Percent)*One_Percent))

		//Global extern variable declaration
		struct Dimmer
		{
			unsigned char OverLoad;
			unsigned TempERROR;
		};
		struct Dimmer VarDimmer;
		struct Dimmer *Dimmer;
		
		#define set_1_Dimmer_TempERROR() Dimmer->TempERROR=1
		#define set_0_Dimmer_TempERROR() Dimmer->TempERROR=0

		struct DimmerLights
		{
			unsigned GO:1;
			unsigned Signal:1;
			unsigned AdjRF:1;
			unsigned AdjFlag:1;					//adj control
			unsigned AdjStatus:1;				//adj status
			unsigned Status:1;					//lights status
			unsigned StatusFlag:1;				//triac control
			unsigned Dimmable:1;				//Dimmable
			unsigned OverLoad:1;
			unsigned char DimmingTime;		
			unsigned char DimmingTimeValue;
			unsigned char Count;
			unsigned char DimmingValue;
			unsigned char StartValue;
			unsigned char StopValue;
			unsigned Flag:1;
			unsigned char TriacTime;
		};
	
		#if DimmerLoop == 1
			//dealare variable
			struct DimmerLights VarDimmerLights1;
			struct DimmerLights *DimmerLights1;	
	
			//external in
			#define set_1_Triac1() Triac1=1
			#define set_0_Triac1() Triac1=0 
	
			#define Triac1_1 Triac1
	
			//internal
			#define Dimmer_Initial() Dimmer_Initial_1()
			#define Dimmer_Main() Dimmer_Main_1()
			#define Dimmer_Detect() Dimmer_Detect_1()
			#define Dimmer_ERROR() Dimmer_ERROR_1()
			#define Dimmer_setOverLoad_GO_Off_Main() Dimmer_setOverLoad_GO_Off_1()
	
			#if Dimmable_Func == 1
				#define setDimmable_1() DimmerLights1->Dimmable=1;
				#define setDimmerInitValue_1() DimmerLights1->DimmingValue = DimmerLights1->StopValue
			#else
				#define setDimmable_1() DimmerLights1->Dimmable=0;
				#define setDimmerInitValue_1() DimmerLights1->DimmingValue = DimmerLights1->StartValue
			#endif
	
			//to external or replace
			#define set_1_DimmerLights1_AdjRF() DimmerLights1->AdjRF=1
			#define setDimmerLights1_StartValue(data) DimmerLights1->StartValue=data
			#define set_On_DimmerLights1_Main() 		set_On_DimmerLights1_1()		
			#define set_Off_DimmerLights1_Main() 		set_Off_DimmerLights1_1()
			#define set_Off_DimmerLights1Adj_Main() 	set_Off_DimmerLights1Adj_1() 
			#define set_On_DimmerLights1Adj_Main() 		set_On_DimmerLights1Adj_1()
			#define DimmerLights1_Close_Main()			DimmerLights1_Close_Main_1()
	
		#elif DimmerLoop == 2
			//dealare variable 1
			struct DimmerLights VarDimmerLights1;
			struct DimmerLights *DimmerLights1;	
	
			struct DimmerLights VarDimmerLights2;
			struct DimmerLights *DimmerLights2;	
	
			//external in
			#define set_1_Triac1() Triac1=1
			#define set_0_Triac1() Triac1=0 
	
			#define set_1_Triac2() Triac2=1
			#define set_0_Triac2() Triac2=0 
	
			#define Triac1_1 Triac1
			#define Triac2_1 Triac2
	
			//internal
			#define Dimmer_Initial()\
						Dimmer_Initial_1();\
						Dimmer_Initial_2();\
						;
			#define Dimmer_Main()\
						Dimmer_Main_1();\
						Dimmer_Main_2();\
						;
			#define Dimmer_Detect()\
						Dimmer_Detect_1();\
						Dimmer_Detect_2();\
						;
			#define Dimmer_ERROR() Dimmer_ERROR_2()
			#define Dimmer_setOverLoad_GO_Off_Main() Dimmer_setOverLoad_GO_Off_2()


			#if Dimmable_Func == 1
				#define setDimmable_1() DimmerLights1->Dimmable=1
				#define setDimmerInitValue_1() DimmerLights1->DimmingValue = DimmerLights1->StopValue							
				#define setDimmable_2()	DimmerLights2->Dimmable=1
				#define setDimmerInitValue_2() DimmerLights2->DimmingValue = DimmerLights2->StopValue						
			#else
				#define setDimmable_1() DimmerLights1->Dimmable=0
				#define setDimmerInitValue_1() DimmerLights1->DimmingValue = DimmerLights1->StartValue							
				#define setDimmable_2() DimmerLights2->Dimmable=0;	
				#define setDimmerInitValue_2() DimmerLights2->DimmingValue = DimmerLights2->StartValue					
			#endif

			//to external or replace
			#define set_1_DimmerLights1_AdjRF() DimmerLights1->AdjRF=1
			#define set_1_DimmerLights2_AdjRF() DimmerLights2->AdjRF=1
			#define setDimmerLights1_StartValue(data) DimmerLights1->StartValue=data
			#define setDimmerLights2_StartValue(data) DimmerLights2->StartValue=data
			#define set_Off_DimmerLights1Adj_Main()	set_Off_DimmerLights1Adj_1()
			#define set_Off_DimmerLights2Adj_Main()	set_Off_DimmerLights2Adj_2()
			#define set_On_DimmerLights1Adj_Main()	set_On_DimmerLights1Adj_1()				
			#define set_On_DimmerLights2Adj_Main() 	set_On_DimmerLights2Adj_2()			
			#define set_On_DimmerLights1_Main()		set_On_DimmerLights1_1()
			#define set_On_DimmerLights2_Main()		set_On_DimmerLights2_2()
			#define set_Off_DimmerLights1_Main()	set_Off_DimmerLights1_1()			
			#define set_Off_DimmerLights2_Main()	set_Off_DimmerLights2_2()
			#define DimmerLights1_Close_Main()	DimmerLights1_Close_Main_1()
			#define DimmerLights2_Close_Main()	DimmerLights2_Close_Main_2()
						
		#elif DimmerLoop == 3
			//dealare variable 1
			struct DimmerLights VarDimmerLights1;
			struct DimmerLights *DimmerLights1;	
	
			struct DimmerLights VarDimmerLights2;
			struct DimmerLights *DimmerLights2;	
	
			struct DimmerLights VarDimmerLights3;
			struct DimmerLights *DimmerLights3;
	
			//external in
			#define set_1_Triac1() Triac1=1
			#define set_0_Triac1() Triac1=0 
	
			#define set_1_Triac2() Triac2=1
			#define set_0_Triac2() Triac2=0 
	
			#define set_1_Triac3() Triac3=1
			#define set_0_Triac3() Triac3=0 
	
			#define Triac1_1 Triac1
			#define Triac2_1 Triac2
			#define Triac3_1 Triac3
	
			//internal
			#define Dimmer_Initial()\
						Dimmer_Initial_1();\
						Dimmer_Initial_2();\
						Dimmer_Initial_3();\
						;
			#define Dimmer_Main()\
						Dimmer_Main_1();\
						Dimmer_Main_2();\
						Dimmer_Main_3();\
						;
			#define Dimmer_Detect()\
						Dimmer_Detect_1();\
						Dimmer_Detect_2();\
						Dimmer_Detect_3();\
						;
	
			#define Dimmer_ERROR() Dimmer_ERROR_3()
			#define Dimmer_setOverLoad_GO_Off_Main() Dimmer_setOverLoad_GO_Off_3()

			#if Dimmable_Func == 1
				#define setDimmable_1() DimmerLights1->Dimmable=1
				#define setDimmerInitValue_1() DimmerLights1->DimmingValue = DimmerLights1->StopValue							
				#define setDimmable_2() DimmerLights2->Dimmable=1
				#define setDimmerInitValue_2() DimmerLights2->DimmingValue = DimmerLights2->StopValue							
				#define setDimmable_3()	DimmerLights3->Dimmable=1
				#define setDimmerInitValue_3() DimmerLights3->DimmingValue = DimmerLights3->StopValue							
			#else
				#define setDimmable_1() DimmerLights1->Dimmable=0
				#define setDimmerInitValue_1() DimmerLights1->DimmingValue = DimmerLights1->StartValue							
				#define setDimmable_2() DimmerLights2->Dimmable=0
				#define setDimmerInitValue_2() DimmerLights2->DimmingValue = DimmerLights2->StartValue							
				#define setDimmable_3() DimmerLights3->Dimmable=0
				#define setDimmerInitValue_3() DimmerLights3->DimmingValue = DimmerLights3->StartValue							
			#endif

			//to external or replace
			#define set_1_DimmerLights1_AdjRF() DimmerLights1->AdjRF=1
			#define set_1_DimmerLights2_AdjRF() DimmerLights2->AdjRF=1
			#define set_1_DimmerLights3_AdjRF() DimmerLights3->AdjRF=1
			#define setDimmerLights1_StartValue(data) DimmerLights1->StartValue=data
			#define setDimmerLights2_StartValue(data) DimmerLights2->StartValue=data
			#define setDimmerLights3_StartValue(data) DimmerLights3->StartValue=data
			#define set_Off_DimmerLights1Adj_Main()		set_Off_DimmerLights1Adj_1()
			#define set_On_DimmerLights1Adj_Main()		set_On_DimmerLights1Adj_1()		
			#define set_Off_DimmerLights1_Main()		set_Off_DimmerLights1_1()					
			#define set_On_DimmerLights1_Main()			set_On_DimmerLights1_1()
			#define set_Off_DimmerLights2Adj_Main()		set_Off_DimmerLights2Adj_2()				
			#define set_On_DimmerLights2_Main()			set_On_DimmerLights2_2()	
			#define set_On_DimmerLights2Adj_Main()		set_On_DimmerLights2Adj_2()				
			#define set_Off_DimmerLights2_Main()		set_Off_DimmerLights2_2()
			#define set_Off_DimmerLights3Adj_Main()		set_Off_DimmerLights3Adj_3()					
			#define set_On_DimmerLights3_Main()			set_On_DimmerLights3_3()				
			#define set_On_DimmerLights3Adj_Main()		set_On_DimmerLights3Adj_3()			
			#define set_Off_DimmerLights3_Main()		set_Off_DimmerLights3_3()	
			#define DimmerLights1_Close_Main()	DimmerLights1_Close_Main_1()
			#define DimmerLights2_Close_Main()	DimmerLights2_Close_Main_2()
			#define DimmerLights3_Close_Main()	DimmerLights3_Close_Main_3()		

		#endif

	#endif

	//adj on 1
	#define set_On_DimmerLights1Adj_1()\
				if(DimmerLights1->AdjFlag == 0 && DimmerLights1->Dimmable)\
				{\
					DimmerLights1->AdjFlag=1;\
					DimmerLights1->Signal=1;\
					setSwitch_Key1Status(1);\
					setBuzzer(1,100);\
				}\
				;

	//adj on 2
	#define set_On_DimmerLights2Adj_2()\
				if(DimmerLights2->AdjFlag == 0 && DimmerLights2->Dimmable)\
				{\
					DimmerLights2->AdjFlag=1;\
					DimmerLights2->Signal=1;\
					setSwitch_Key2Status(1);\
					setBuzzer(1,100);\
				}\
				;
	//adj on 3
	#define set_On_DimmerLights3Adj_3()\
				if(DimmerLights3->AdjFlag == 0 && DimmerLights3->Dimmable)\
				{\
					DimmerLights3->AdjFlag=1;\
					DimmerLights3->Signal=1;\
					setSwitch_Key3Status(1);\
					setBuzzer(1,100);\
				}\
				;

	//set adj off 1
	#define set_Off_DimmerLights1Adj_1()\
				if(DimmerLights1->AdjFlag == 1)\
				{\
					DimmerLights1->Signal=0;\
					DimmerLights1->AdjFlag=0;\
					DimmerLights1->StartValue=DimmerLights1->DimmingValue;\
					setRF_DimmerLights(1,1,DimmerLights1->StartValue);\
				}\
				;

	//set adj off 2
	#define set_Off_DimmerLights2Adj_2()\
				if(DimmerLights2->AdjFlag == 1)\
				{\
					DimmerLights2->Signal=0;\
					DimmerLights2->AdjFlag=0;\
					DimmerLights2->StartValue=DimmerLights2->DimmingValue;\
					setRF_DimmerLights(2,1,DimmerLights2->StartValue);\
				}\
				;

	//set adj off 3
	#define set_Off_DimmerLights3Adj_3()\
				if(DimmerLights3->AdjFlag == 1)\
				{\
					DimmerLights3->Signal=0;\
					DimmerLights3->AdjFlag=0;\
					DimmerLights3->StartValue=DimmerLights3->DimmingValue;\
					setRF_DimmerLights(3,1,DimmerLights3->StartValue);\
				}\
				;

	//lights1 on 1	
	#define set_On_DimmerLights1_1()\
				if(DimmerLights1->Status == 0)\
				{\
					DimmerLights1->Status=1;\
					if(	DimmerLights1->StatusFlag == 0)\
					{\
						DimmerLights1->StatusFlag=1;\
						add_OverLoad_LightsCount();\
					}\
					if(DimmerLights1->Dimmable)\
					{\
						DimmerLights1->Signal=1;\
						DimmerLights1->DimmingTimeValue=3;\
					}\
					Dimmer->OverLoad=1;\
					setOverLoad_GO_On();\
					setBuzzer(1,100);\
					setLED1(0);\
					setRF_DimmerLights(1,1,DimmerLights1->StartValue);\
				}\
				;

	//lights1 on 2	
	#define set_On_DimmerLights2_2()\
				if(DimmerLights2->Status == 0)\
				{\
					DimmerLights2->Status=1;\
					if(	DimmerLights2->StatusFlag == 0)\
					{\
						DimmerLights2->StatusFlag=1;\
						add_OverLoad_LightsCount();\
					}\
					if(DimmerLights2->Dimmable)\
					{\
						DimmerLights2->Signal=1;\
						DimmerLights2->DimmingTimeValue=3;\
					}\
					Dimmer->OverLoad=2;\
					setOverLoad_GO_On();\
					setBuzzer(1,100);\
					setLED2(0);\
					setRF_DimmerLights(2,1,DimmerLights2->StartValue);\
				}\
				;

	//lights1 on 3	
	#define set_On_DimmerLights3_3()\
				if(DimmerLights3->Status == 0)\
				{\
					DimmerLights3->Status=1;\
					if(	DimmerLights3->StatusFlag == 0)\
					{\
						DimmerLights3->StatusFlag=1;\
						add_OverLoad_LightsCount();\
					}\
					if(DimmerLights3->Dimmable )\
					{\
						DimmerLights3->Signal=1;\
						DimmerLights3->DimmingTimeValue=3;\
					}\
					Dimmer->OverLoad=3;\
					setOverLoad_GO_On();\
					setBuzzer(1,100);\
					setLED3(0);\
					setRF_DimmerLights(3,1,DimmerLights3->StartValue);\
				}\
				;

	//lights1 off 1
	#define set_Off_DimmerLights1_1()\
				if(DimmerLights1->Status)\
				{\
					DimmerLights1->Signal=1;\
					DimmerLights1->Status=0;\
					if(DimmerLights1->Dimmable)\
					{\
						DimmerLights1->AdjFlag=0;\
						DimmerLights1->AdjStatus=0;\
						DimmerLights1->DimmingTimeValue=3;\
					}\
					else\
					{\
						DimmerLights1->StatusFlag=0;\
						sub_OverLoad_LightsCount();\
						set_OverLoad_JudgeValue();\
					}\
					Dimmer_setOverLoad_GO_Off();\
					setBuzzer(1,100);\
					setRF_DimmerLights(1,0,DimmerLights1->StartValue);\
				}\
				;

	//lights1 off 2
	#define set_Off_DimmerLights2_2()\
				if(DimmerLights2->Status)\
				{\
					DimmerLights2->Signal=1;\
					DimmerLights2->Status=0;\
					if(DimmerLights2->Dimmable)\
					{\
						DimmerLights2->AdjFlag=0;\
						DimmerLights2->AdjStatus=0;\
						DimmerLights2->DimmingTimeValue=3;\
					}\
					else\
					{\
						DimmerLights2->StatusFlag=0;\
						sub_OverLoad_LightsCount();\
						set_OverLoad_JudgeValue();\
					}\
					Dimmer_setOverLoad_GO_Off();\
					setBuzzer(1,100);\
					setRF_DimmerLights(2,0,DimmerLights2->StartValue);\
				}\
				;

	//lights1 off 3
	#define set_Off_DimmerLights3_3()\
				if(DimmerLights3->Status)\
				{\
					DimmerLights3->Signal=1;\
					DimmerLights3->Status=0;\
					if(DimmerLights3->Dimmable)\
					{\
						DimmerLights3->AdjFlag=0;\
						DimmerLights3->AdjStatus=0;\
						DimmerLights3->DimmingTimeValue=3;\
					}\
					else\
					{\
						DimmerLights3->StatusFlag=0;\
						sub_OverLoad_LightsCount();\
						set_OverLoad_JudgeValue();\
					}\
					Dimmer_setOverLoad_GO_Off();\
					setBuzzer(1,100);\
					setRF_DimmerLights(3,0,DimmerLights3->StartValue);\
				}\
				;

	//initial 1
	#define Dimmer_Initial_1()\
				Dimmer=&VarDimmer;\
				DimmerLights1=&VarDimmerLights1;\
				DimmerLights1->StartValue = Dimmer_Maxum;\
				DimmerLights1->StopValue = Dimmer_Minimum;\
				setDimmerInitValue_1();\
				setDimmable_1();\
				;

	//initial 2
	#define Dimmer_Initial_2()\
				Dimmer=&VarDimmer;\
				DimmerLights2=&VarDimmerLights2;\
				DimmerLights2->StartValue = Dimmer_Maxum;\
				DimmerLights2->StopValue = Dimmer_Minimum;\
				setDimmerInitValue_2();\
				setDimmable_2();\
				;

	//initial 3
	#define Dimmer_Initial_3()\
				Dimmer=&VarDimmer;\
				DimmerLights3=&VarDimmerLights3;\
				DimmerLights3->StartValue = Dimmer_Maxum;\
				DimmerLights3->StopValue = Dimmer_Minimum;\
				setDimmerInitValue_3();\
				setDimmable_3();\
				;

	//detect 1
	#define Dimmer_Detect_1()\
				DimmerLights1->GO=1;\
				;

	//detect 2
	#define Dimmer_Detect_2()\
				DimmerLights2->GO=1;\
				;

	//detect 3
	#define Dimmer_Detect_3()\
				DimmerLights3->GO=1;\
				;

	//main 1
	#define Dimmer_Main_1()\
				if(DimmerLights1->GO)\
				{\
					DimmerLights1->Count++;\
					if(DimmerLights1->Count >= DimmerLights1->DimmingValue)\
					{\
						DimmerLights1->Count=0;\
						DimmerLights1->GO=0;\
						DimmerLights1->Flag=1;\
						if(DimmerLights1->StatusFlag)\
						{\
							set_1_Triac1();\
						}\
					}\
				}\
				else\
				{\
					if(DimmerLights1->Flag)\
					{\
						DimmerLights1->Flag=0;\
						if(DimmerLights1->Signal)\
						{\
							DimmerLights1->DimmingTime++;\
							if(DimmerLights1->DimmingTime == DimmerLights1->DimmingTimeValue)\
							{\
								DimmerLights1->DimmingTime=0;\
								if(DimmerLights1->AdjFlag)\
								{\
									if(DimmerLights1->AdjStatus == 0)\
									{\
										if(DimmerLights1->DimmingValue > Dimmer_Maxum)\
										{\
											DimmerLights1->DimmingValue--;\
										}\
										else\
										{\
											DimmerLights1->AdjStatus=1;\
										}\
									}\
									else\
									{\
										if(DimmerLights1->DimmingValue < (Dimmer_Minimum-10))\
										{\
											DimmerLights1->DimmingValue++;\
										}\
										else\
										{\
											DimmerLights1->AdjStatus=0;\
										}\
									}\
								}\
								else\
								{\
									if(DimmerLights1->AdjRF)\
									{\
										if(DimmerLights1->DimmingValue > DimmerLights1->StartValue)\
										{\
											DimmerLights1->DimmingValue--;\
										}\
										else if(DimmerLights1->DimmingValue < DimmerLights1->StartValue)\
										{\
											DimmerLights1->DimmingValue++;\
										}\
										if(DimmerLights1->DimmingValue == DimmerLights1->StartValue)\
										{\
											DimmerLights1->AdjRF=0;\
											DimmerLights1->Signal=0;\
										}\
									}\
									else\
									{\
										if(DimmerLights1->Status)\
										{\
											DimmerLights1->DimmingValue--;\
											if(DimmerLights1->DimmingValue == DimmerLights1->StartValue)\
											{\
												DimmerLights1->Signal=0;\
											}\
										}\
										else\
										{\
											DimmerLights1->DimmingValue++;\
											if(DimmerLights1->DimmingValue == DimmerLights1->StopValue)\
											{\
												DimmerLights1->Signal=0;\
												DimmerLights1->StatusFlag=0;\
												sub_OverLoad_LightsCount();\
												set_OverLoad_JudgeValue();\
												setLED1(1);\
											}\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac1_1)\
					{\
						DimmerLights1->TriacTime++;\
						if(DimmerLights1->TriacTime == TriacTimeValue)\
						{\
							DimmerLights1->TriacTime=0;\
							set_0_Triac1();\
						}\
					}\
				}\
				;	

	//main 2
	#define Dimmer_Main_2()\
				if(DimmerLights2->GO)\
				{\
					DimmerLights2->Count++;\
					if(DimmerLights2->Count >= DimmerLights2->DimmingValue)\
					{\
						DimmerLights2->Count=0;\
						DimmerLights2->GO=0;\
						DimmerLights2->Flag=1;\
						if(DimmerLights2->StatusFlag)\
						{\
							set_1_Triac2();\
						}\
					}\
				}\
				else\
				{\
					if(DimmerLights2->Flag)\
					{\
						DimmerLights2->Flag=0;\
						if(DimmerLights2->Signal == 1)\
						{\
							DimmerLights2->DimmingTime++;\
							if(DimmerLights2->DimmingTime == DimmerLights2->DimmingTimeValue)\
							{\
								DimmerLights2->DimmingTime=0;\
								if(DimmerLights2->AdjFlag == 1)\
								{\
									if(DimmerLights2->AdjStatus == 0)\
									{\
										if(DimmerLights2->DimmingValue > Dimmer_Maxum)\
										{\
											DimmerLights2->DimmingValue--;\
										}\
										else\
										{\
											DimmerLights2->AdjStatus=1;\
										}\
									}\
									else\
									{\
										if(DimmerLights2->DimmingValue < (Dimmer_Minimum-10))\
										{\
											DimmerLights2->DimmingValue++;\
										}\
										else\
										{\
											DimmerLights2->AdjStatus=0;\
										}\
									}\
								}\
								else\
								{\
									if(DimmerLights2->AdjRF)\
									{\
										if(DimmerLights2->DimmingValue > DimmerLights2->StartValue)\
										{\
											DimmerLights2->DimmingValue--;\
										}\
										else if(DimmerLights2->DimmingValue < DimmerLights2->StartValue)\
										{\
											DimmerLights2->DimmingValue++;\
										}\
										if(DimmerLights2->DimmingValue == DimmerLights2->StartValue)\
										{\
											DimmerLights2->AdjRF=0;\
											DimmerLights2->Signal=0;\
										}\
									}\
									else\
									{\
										if(DimmerLights2->Status == 1)\
										{\
											DimmerLights2->DimmingValue--;\
											if(DimmerLights2->DimmingValue == DimmerLights2->StartValue)\
											{\
												DimmerLights2->Signal=0;\
											}\
										}\
										else\
										{\
											DimmerLights2->DimmingValue++;\
											if(DimmerLights2->DimmingValue == DimmerLights2->StopValue)\
											{\
												DimmerLights2->Signal=0;\
												DimmerLights2->StatusFlag=0;\
												sub_OverLoad_LightsCount();\
												set_OverLoad_JudgeValue();\
												setLED2(1);\
											}\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac2_1)\
					{\
						DimmerLights2->TriacTime++;\
						if(DimmerLights2->TriacTime == TriacTimeValue)\
						{\
							DimmerLights2->TriacTime=0;\
							set_0_Triac2();\
						}\
					}\
				}\
				;

	//main 3
	#define Dimmer_Main_3()\
				if(DimmerLights3->GO == 1)\
				{\
					DimmerLights3->Count++;\
					if(DimmerLights3->Count >= DimmerLights3->DimmingValue)\
					{\
						DimmerLights3->Count=0;\
						DimmerLights3->GO=0;\
						DimmerLights3->Flag=1;\
						if(DimmerLights3->StatusFlag)\
						{\
							set_1_Triac3();\
						}\
					}\
				}\
				else\
				{\
					if(DimmerLights3->Flag)\
					{\
						DimmerLights3->Flag=0;\
						if(DimmerLights3->Signal == 1)\
						{\
							DimmerLights3->DimmingTime++;\
							if(DimmerLights3->DimmingTime == DimmerLights3->DimmingTimeValue)\
							{\
								DimmerLights3->DimmingTime=0;\
								if(DimmerLights3->AdjFlag == 1)\
								{\
									if(DimmerLights3->AdjStatus == 0)\
									{\
										if(DimmerLights3->DimmingValue > Dimmer_Maxum)\
										{\
											DimmerLights3->DimmingValue--;\
										}\
										else\
										{\
											DimmerLights3->AdjStatus=1;\
										}\
									}\
									else\
									{\
										if(DimmerLights3->DimmingValue < (Dimmer_Minimum-10))\
										{\
											DimmerLights3->DimmingValue++;\
										}\
										else\
										{\
											DimmerLights3->AdjStatus=0;\
										}\
									}\
								}\
								else\
								{\
									if(DimmerLights3->AdjRF)\
									{\
										if(DimmerLights3->DimmingValue > DimmerLights3->StartValue)\
										{\
											DimmerLights3->DimmingValue--;\
										}\
										else if(DimmerLights3->DimmingValue < DimmerLights3->StartValue)\
										{\
											DimmerLights3->DimmingValue++;\
										}\
										if(DimmerLights3->DimmingValue == DimmerLights3->StartValue)\
										{\
											DimmerLights3->AdjRF=0;\
											DimmerLights3->Signal=0;\
										}\
									}\
									else\
									{\
										if(DimmerLights3->Status == 1)\
										{\
											DimmerLights3->DimmingValue--;\
											if(DimmerLights3->DimmingValue == DimmerLights3->StartValue)\
											{\
												DimmerLights3->Signal=0;\
											}\
										}\
										else\
										{\
											DimmerLights3->DimmingValue++;\
											if(DimmerLights3->DimmingValue == DimmerLights3->StopValue)\
											{\
												DimmerLights3->Signal=0;\
												DimmerLights3->StatusFlag=0;\
												sub_OverLoad_LightsCount();\
												set_OverLoad_JudgeValue();\
												setLED3(1);\
											}\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac3_1)\
					{\
						DimmerLights3->TriacTime++;\
						if(DimmerLights3->TriacTime == TriacTimeValue)\
						{\
							DimmerLights3->TriacTime=0;\
							set_0_Triac3();\
						}\
					}\
				}\
				;

		//error 1
		#define Dimmer_ERROR_1()\
					if(DimmerLights1->Status)\
					{\
						if(Dimmer->TempERROR)\
						{\
							DimmerLights1_OverLoad_Close();\
							Dimmer_setOverLoad_GO_Off();\
							setBuzzer(10,300);\
						}\
						else\
						{\
							if(Dimmer->OverLoad == 1)\
							{\
								DimmerLights1_OverLoad_Close();\
								Dimmer_setOverLoad_GO_Off();\
							}\
							setBuzzer(5,300);\
						}\
					}\
					;

		//error 2
		#define Dimmer_ERROR_2()\
					if(DimmerLights1->Status || DimmerLights2->Status)\
					{\
						if(Dimmer->TempERROR)\
						{\
							DimmerLights1_OverLoad_Close();\
							DimmerLights2_OverLoad_Close();\
							Dimmer_setOverLoad_GO_Off();\
							setBuzzer(10,300);\
						}\
						else\
						{\
							if(Dimmer->OverLoad == 1)\
							{\
								DimmerLights1_OverLoad_Close();\
								Dimmer_setOverLoad_GO_Off();\
							}\
							else if(Dimmer->OverLoad == 2)\
							{\
								DimmerLights2_OverLoad_Close();\
								Dimmer_setOverLoad_GO_Off();\
							}\
							setBuzzer(5,300);\
						}\
					}\
					;
		//error 3
		#define Dimmer_ERROR_3()\
					if(DimmerLights1->Status || DimmerLights2->Status || DimmerLights3->Status)\
					{\
						if(Dimmer->TempERROR)\
						{\
							DimmerLights1_OverLoad_Close();\
							DimmerLights2_OverLoad_Close();\
							DimmerLights3_OverLoad_Close();\
							Dimmer_setOverLoad_GO_Off();\
							setBuzzer(10,300);\
						}\
						else\
						{\
							if(Dimmer->OverLoad == 1)\
							{\
								DimmerLights1_OverLoad_Close();\
								Dimmer_setOverLoad_GO_Off();\
							}\
							else if(Dimmer->OverLoad == 2)\
							{\
								DimmerLights2_OverLoad_Close();\
								Dimmer_setOverLoad_GO_Off();\
							}\
							else if(Dimmer->OverLoad == 3)\
							{\
								DimmerLights3_OverLoad_Close();\
								Dimmer_setOverLoad_GO_Off();\
							}\
							setBuzzer(5,300);\
						}\
					}\
					;

		//Dimmer_setOverLoad_GO_Off_1
		#define Dimmer_setOverLoad_GO_Off_1()\
					if(DimmerLights1->Status == 0)\
					{\
						setOverLoad_GO_Off();\
					}\
					;

		//Dimmer_setOverLoad_GO_Off_2
		#define Dimmer_setOverLoad_GO_Off_2()\
					if(DimmerLights1->Status == 0 && DimmerLights2->Status == 0)\
					{\
						setOverLoad_GO_Off();\
					}\
					;

		//Dimmer_setOverLoad_GO_Off_3
		#define Dimmer_setOverLoad_GO_Off_3()\
					if(DimmerLights1->Status == 0 && DimmerLights2->Status == 0 && DimmerLights3->Status == 0)\
					{\
						setOverLoad_GO_Off();\
					}\
					;

		#define DimmerLights1_Close_Main_1()\
					if(DimmerLights1->Status)\
					{\
						DimmerLights1->Status=0;\
						set_0_Triac1();\
						DimmerLights1->StatusFlag=0;\
						sub_OverLoad_LightsCount();\
						set_OverLoad_JudgeValue();\
						setDimmerInitValue_1();\
						DimmerLights1->AdjFlag=0;\
						DimmerLights1->AdjStatus=0;\
					}\
					;

		#define DimmerLights2_Close_Main_2()\
					if(DimmerLights2->Status)\
					{\
						DimmerLights2->Status=0;\
						set_0_Triac2();\
						DimmerLights2->StatusFlag=0;\
						sub_OverLoad_LightsCount();\
						set_OverLoad_JudgeValue();\
						setDimmerInitValue_2();\
						DimmerLights2->AdjFlag=0;\
						DimmerLights2->AdjStatus=0;\
					}\
					;

		#define DimmerLights3_Close_Main_3()\
					if(DimmerLights3->Status)\
					{\
						DimmerLights3->Status=0;\
						set_0_Triac3();\
						DimmerLights3->StatusFlag=0;\
						sub_OverLoad_LightsCount();\
						set_OverLoad_JudgeValue();\
						setDimmerInitValue_3();\
						DimmerLights3->AdjFlag=0;\
						DimmerLights3->AdjStatus=0;\
					}\
					;

	void set_On_DimmerLights3Adj();
	void set_Off_DimmerLights3Adj();
	void set_Off_DimmerLights3();
	void set_On_DimmerLights3();
	void set_On_DimmerLights2Adj();
	void set_Off_DimmerLights2Adj();
	void set_Off_DimmerLights2();
	void set_On_DimmerLights2();
	void set_On_DimmerLights1Adj();
	void set_Off_DimmerLights1Adj();
	void set_Off_DimmerLights1();
	void set_On_DimmerLights1();
	void Dimmer_setOverLoad_GO_Off();
	void DimmerLights1_OverLoad_Close();
	void DimmerLights2_OverLoad_Close();
	void DimmerLights3_OverLoad_Close();

//NOP

	#ifndef set_1_DimmerLights1_AdjRF()
		#define set_1_DimmerLights1_AdjRF() NOP()
	#endif

	#ifndef set_1_DimmerLights2_AdjRF()
		#define set_1_DimmerLights2_AdjRF() NOP()
	#endif

	#ifndef set_1_DimmerLights3_AdjRF()
		#define set_1_DimmerLights3_AdjRF() NOP()
	#endif

	#ifndef setDimmerLights1_StartValue(data)
		#define setDimmerLights1_StartValue(data) NOP()
	#endif

	#ifndef setDimmerLights2_StartValue(data)
		#define setDimmerLights2_StartValue(data) NOP()
	#endif


	#ifndef setDimmerLights3_StartValue(data)
		#define setDimmerLights3_StartValue(data) NOP()
	#endif

	#ifndef DimmerLights1_Close_Main()
		#define DimmerLights1_Close_Main() NOP()
	#endif

	#ifndef DimmerLights2_Close_Main()
		#define DimmerLights2_Close_Main() NOP()
	#endif

	#ifndef DimmerLights3_Close_Main()
		#define DimmerLights3_Close_Main() NOP()
	#endif

	#ifndef setDimmable()
		#define setDimmable() NOP()
	#endif

	#ifndef setDimmable_1()
		#define setDimmable_1() NOP()
	#endif

	#ifndef setDimmable_2()
		#define setDimmable_2() NOP()
	#endif

	#ifndef setDimmable_3()
		#define setDimmable_3() NOP()
	#endif

	#ifndef Dimmer_ERROR()
		#define Dimmer_ERROR() NOP() 
	#endif
		
	#ifndef set_1_Triac1()
		#define set_1_Triac1() NOP()
	#endif

	#ifndef set_0_Triac1()
		#define set_0_Triac1() NOP()
	#endif

	#ifndef Dimmer_Initial()
		#define Dimmer_Initial() NOP()
	#endif

	#ifndef Dimmer_Detect()
		#define Dimmer_Detect() NOP()	
	#endif

	#ifndef Dimmer_Main()
		#define Dimmer_Main() NOP()
	#endif

	#ifndef set_On_DimmerLights1_Main()
		#define set_On_DimmerLights1_Main() NOP()
	#endif

	#ifndef set_Off_DimmerLights1_Main()
		#define set_Off_DimmerLights1_Main() NOP()
	#endif

	#ifndef set_On_DimmerLights1Adj_Main()
		#define set_On_DimmerLights1Adj_Main() NOP()
	#endif

	#ifndef set_Off_DimmerLights1Adj_Main()
		#define set_Off_DimmerLights1Adj_Main() NOP()
	#endif

	#ifndef set_On_DimmerLights2_Main()
		#define set_On_DimmerLights2_Main() NOP()
	#endif

	#ifndef set_Off_DimmerLights2_Main()
		#define set_Off_DimmerLights2_Main() NOP()
	#endif

	#ifndef set_On_DimmerLights2Adj_Main()
		#define set_On_DimmerLights2Adj_Main() NOP()
	#endif

	#ifndef set_Off_DimmerLights2Adj_Main()
		#define set_Off_DimmerLights2Adj_Main() NOP()
	#endif

	#ifndef set_On_DimmerLights3_Main()
		#define set_On_DimmerLights3_Main() NOP()
	#endif

	#ifndef set_Off_DimmerLights3_Main()
		#define set_Off_DimmerLights3_Main() NOP()
	#endif

	#ifndef set_On_DimmerLights3Adj_Main()
		#define set_On_DimmerLights3Adj_Main() NOP()
	#endif

	#ifndef set_Off_DimmerLights3Adj_Main()
		#define set_Off_DimmerLights3Adj_Main() NOP()
	#endif

	#ifndef Dimmer_setOverLoad_GO_Off_Main()
		#define Dimmer_setOverLoad_GO_Off_Main() NOP()
	#endif

	#ifndef set_1_Dimmer_TempERROR()
		#define set_1_Dimmer_TempERROR() NOP()
	#endif

	#ifndef set_0_Dimmer_TempERROR()
		#define set_0_Dimmer_TempERROR() NOP()
	#endif

//End file
#endif

