
#ifndef _Dimmer_A1_H_
#define _Dimmer_A1_H_
/**********************************************************

	method:
	1.on/off lights
	setDimmerLights1(char status)
		status(0~1)
	setDimmerLights2(char status)
		status(0~1)
	setDimmerLights3(char status)
		status(0~1)
	2.on/off adj
	setDimmerLights1_Adj(char status)
		status(0~1)
	setDimmerLights1_Adj(char status)
		status(0~1)
	setDimmerLights1_Adj(char status)
		status(0~1)

***********************************************************/
	#if Dimmer_use == 1

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
			
			unsigned TempF:1;
		};


		#ifdef Triac1
			struct DimmerLights VarDimmerLights1;
			struct DimmerLights *DimmerLights1;	

			#define DimmerLights1_Detect() DimmerLights1->GO=1
			#define DimmerLights1_Initial()	DimmerLights1_Initial_1()
			#define DimmerLights1_Main() DimmerLights1_Main_1()
			#define DimmerLights1_AdjRF_Main() DimmerLights1_AdjRF_1()
	
			#if Dimmable_Func == 1
				#define DimmerLights1_Dimmable 1
				#define DimmerLights1_DimmeringValue DimmerLights1->StopValue													
			#else
				#define DimmerLights1_DimmableValue 0
				#define DimmerLights1_DimmeringValue DimmerLights1->StartValue													
			#endif

			#define setDimmerLights1_Main() setDimmerLights1_1()
			#define setDimmerLights1_Adj_Main() setDimmerLights1_Adj_1() 	
			#define initDimmerLights1_Data() setMemoryData(3,Dimmer_Maxum)
			#define setDimmerLights1_StartValue(data) DimmerLights1->StartValue=data	
			#define getDimmerLights1_StartValue() DimmerLights1->StartValue
	
			#define DimmerLights1_Close_Main()	DimmerLights1_Close_Main_1()
			#define getDimmerLights1_StatusFlag DimmerLights1->StatusFlag
			#define setDimmerLights1_ERROR_Main() setDimmerLights1_ERROR_1()
		#else
			//NOP
			#define getDimmerLights1_Status 0
			#define DimmerLights1_AdjRF_Main() NOP()
			#define setDimmerLights1_Adj_Main() NOP()
			#define setDimmerLights1_Main() NOP()
			#define DimmerLights1_Main() NOP()
			#define DimmerLights1_Initial() NOP()
			#define DimmerLights1_Detect() NOP()
			#define setDimmerLights1_ERROR_Main() NOP()
		#endif

		#ifdef Triac2
			struct DimmerLights VarDimmerLights2;
			struct DimmerLights *DimmerLights2;	

			#define DimmerLights2_Detect() DimmerLights2->GO=1
			#define DimmerLights2_Initial()	DimmerLights2_Initial_1()
			#define DimmerLights2_Main() DimmerLights2_Main_1()
			#define DimmerLights2_AdjRF_Main() DimmerLights2_AdjRF_1()

			#if Dimmable_Func == 1
				#define DimmerLights2_Dimmable 1
				#define DimmerLights2_DimmeringValue DimmerLights2->StopValue														
			#else
				#define DimmerLights2_DimmableValue 0
				#define DimmerLights2_DimmeringValue DimmerLights2->StartValue													
			#endif

			#define setDimmerLights2_Main() setDimmerLights2_1()
			#define setDimmerLights2_Adj_Main() setDimmerLights2_Adj_1() 
			#define initDimmerLights2_Data() setMemoryData(4,Dimmer_Maxum)
			#define setDimmerLights2_StartValue(data) DimmerLights2->StartValue=data
			#define getDimmerLights2_StartValue() DimmerLights2->StartValue

			#define DimmerLights2_Close_Main()	DimmerLights2_Close_Main_1()
			#define getDimmerLights2_StatusFlag DimmerLights2->StatusFlag
			#define setDimmerLights2_ERROR_Main() setDimmerLights2_ERROR_1()
		#else
			//NOP
			#define getDimmerLights2_Status 0
			#define DimmerLights2_AdjRF_Main() NOP()
			#define setDimmerLights2_Adj_Main() NOP()
			#define setDimmerLights2_Main() NOP()
			#define DimmerLights2_Main() NOP()
			#define DimmerLights2_Initial() NOP()
			#define DimmerLights2_Detect() NOP()
			#define setDimmerLights2_ERROR_Main() NOP()

		#endif


		#ifdef Triac3
			struct DimmerLights VarDimmerLights3;
			struct DimmerLights *DimmerLights3;	

			#define DimmerLights3_Detect() DimmerLights3->GO=1
			#define DimmerLights3_Initial()	DimmerLights3_Initial_1()
			#define DimmerLights3_Main() DimmerLights3_Main_1()
			#define DimmerLights3_AdjRF_Main() DimmerLights3_AdjRF_1()

			#if Dimmable_Func == 1
				#define DimmerLights3_Dimmable 1
				#define DimmerLights3_DimmeringValue DimmerLights3->StopValue														
			#else
				#define DimmerLights3_DimmableValue 0
				#define DimmerLights3_DimmeringValue DimmerLights3->StartValue													
			#endif

			#define setDimmerLights3_Main() setDimmerLights3_1()
			#define setDimmerLights3_Adj_Main() setDimmerLights3_Adj_1() 
			#define initDimmerLights3_Data() setMemoryData(5,Dimmer_Maxum)
			#define setDimmerLights3_StartValue(data) DimmerLights3->StartValue=data
			#define getDimmerLights3_StartValue() DimmerLights3->StartValue

			#define DimmerLights3_Close_Main()	DimmerLights3_Close_Main_1()
			#define getDimmerLights3_StatusFlag DimmerLights3->StatusFlag
			#define setDimmerLights3_ERROR_Main() setDimmerLights3_ERROR_1()
		#else
			//NOP
			#define getDimmerLights3_Status 0
			#define DimmerLights3_AdjRF_Main() NOP()
			#define setDimmerLights3_Adj_Main() NOP()
			#define setDimmerLights3_Main() NOP()
			#define DimmerLights3_Main() NOP()
			#define DimmerLights3_Initial() NOP()
			#define DimmerLights3_Detect() NOP()
			#define setDimmerLights3_ERROR_Main() NOP()
		#endif


		//Global extern variable declaration
		struct Dimmer
		{
			unsigned LoadERROR:1;
			unsigned TempERROR:1;
			unsigned char Load;
		};
		struct Dimmer *Dimmable;
		struct Dimmer VarDimmable;

		
		//public
		#define Dimmer_Initial()\
				DimmerLights1_Initial();\
				DimmerLights2_Initial();\
				DimmerLights3_Initial();\
				;
	
		#define Dimmer_Main()\
				DimmerLights1_Main();\
				DimmerLights2_Main();\
				DimmerLights3_Main();\
				;
		#define Dimmer_Close_Main() Dimmer_Close_1()

		#define Dimmer_ERROR() Dimmer_ERROR_1()
		#define setDimmable_TempERROR(command) Dimmable->TempERROR=command
		#define setDimmable_LoadERROR(command) Dimmable->LoadERROR=command
		#define getStartValue_Main() getStartValue_Main_1()
	#else
		//NOP
		#define Dimmer_ERROR() NOP()
		#define setDimmable_TempERROR(command) NOP()
		#define setDimmable_LoadERROR(command) NOP()
		#define getStartValue_Main() 0	
		#define Dimmer_Initial() NOP()
		#define Dimmer_Main() NOP()
		#define Dimmer_Close_Main() NOP()
		#define setDimmable_TempERROR(command) NOP()
		#define Dimmable_LoadERROR(command) NOP()

		//Triac1
		#define getDimmerLights1_StatusFlag 0
		#define DimmerLights1_AdjRF_Main() NOP()
		#define setDimmerLights1_Adj_Main() NOP()
		#define setDimmerLights1_Main() NOP()
		#define DimmerLights1_Main() NOP()
		#define DimmerLights1_Initial() NOP()
		#define DimmerLights1_Detect() NOP()
		#define setDimmerLights1_ERROR_Main() NOP()

		//Triac2
		#define getDimmerLights2_StatusFlag 0
		#define DimmerLights2_AdjRF_Main() NOP()
		#define setDimmerLights2_Adj_Main() NOP()
		#define setDimmerLights2_Main() NOP()
		#define DimmerLights2_Main() NOP()
		#define DimmerLights2_Initial() NOP()
		#define DimmerLights2_Detect() NOP()
		#define setDimmerLights2_ERROR_Main() NOP()

		//Triac3
		#define getDimmerLights3_StatusFlag 0
		#define DimmerLights3_AdjRF_Main() NOP()
		#define setDimmerLights3_Adj_Main() NOP()
		#define setDimmerLights3_Main() NOP()
		#define DimmerLights3_Main() NOP()
		#define DimmerLights3_Initial() NOP()
		#define DimmerLights3_Detect() NOP()
		#define setDimmerLights3_ERROR_Main() NOP()
	#endif

	//function

	void setDimmerLights1(char);
	void setDimmerLights2(char);
	void setDimmerLights3(char);
	void setDimmerLights1_Adj(char);
	void setDimmerLights2_Adj(char);
	void setDimmerLights3_Adj(char);

	char getStartValue();
	void Dimmer_Close();
	void setDimmerLights1_ERROR();
	void setDimmerLights2_ERROR();
	void setDimmerLights3_ERROR();

	void DimmerLights1_OverLoad_Close();
	void DimmerLights2_OverLoad_Close();
	void DimmerLights3_OverLoad_Close();

	//function routine

	//detect 1
	#define Dimmer_Detect()\
				DimmerLights1_Detect();\
				DimmerLights2_Detect();\
				DimmerLights3_Detect();\
				;


	#define Dimmer_Close_1()\
				if(getDimmerLights1_StatusFlag == 0 && getDimmerLights2_StatusFlag == 0 && getDimmerLights3_StatusFlag == 0)\
				{\
					setLoad_GO(0);\
					setMemory_GO(1);\
				}\


	
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

	//DimmerLights1_Initial_1
	#define DimmerLights1_Initial_1()\
				Dimmable=&VarDimmable;\
				DimmerLights1=&VarDimmerLights1;\
				DimmerLights1->StartValue=Product->Data[21];\
				DimmerLights1->StopValue=Dimmer_Minimum;\
				DimmerLights1->Dimmable=DimmerLights1_Dimmable;\
				DimmerLights1->DimmingValue=DimmerLights1_DimmeringValue;\
				;

	//DimmerLights2_Initial_1
	#define DimmerLights2_Initial_1()\
				Dimmable=&VarDimmable;\
				DimmerLights2=&VarDimmerLights2;\
				DimmerLights2->StartValue=Product->Data[22];\
				DimmerLights2->StopValue=Dimmer_Minimum;\
				DimmerLights2->Dimmable=DimmerLights2_Dimmable;\
				DimmerLights2->DimmingValue=DimmerLights2_DimmeringValue;\
				
				;

	//DimmerLights3_Initial_1
	#define DimmerLights3_Initial_1()\
				;Dimmable=&VarDimmable;\
				DimmerLights3=&VarDimmerLights3;\
				DimmerLights3->StartValue=Product->Data[23];\
				DimmerLights3->StopValue=Dimmer_Minimum;\
				DimmerLights3->Dimmable=DimmerLights3_Dimmable;\
				DimmerLights3->DimmingValue=DimmerLights3_DimmeringValue;\
				;


	//DimmerLights1_Main_1
	#define DimmerLights1_Main_1()\
				if(DimmerLights1->GO)\//reclock
				{\
					DimmerLights1->Count++;\
					if(DimmerLights1->Count >= DimmerLights1->DimmingValue)\
					{\
						DimmerLights1->Count=0;\
						DimmerLights1->GO=0;\
						DimmerLights1->Flag=1;\
						if(DimmerLights1->StatusFlag)\
						{\
							Triac1=1;\
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
							if(DimmerLights1->DimmingTime >= DimmerLights1->DimmingTimeValue)\
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
								else if(DimmerLights1->AdjRF)\
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
										setLoad_Count(0);\
										setLoad_StatusOn(1);\
									}\
								}\
								else\
								{\
									if(DimmerLights1->Status)\
									{\
										DimmerLights1->DimmingValue--;\
										if(DimmerLights1->DimmingValue <= DimmerLights1->StartValue)\
										{\
											DimmerLights1->Signal=0;\
										}\
									}\
									else\
									{\
										DimmerLights1->DimmingValue++;\
										if(DimmerLights1->DimmingValue >= DimmerLights1->StopValue)\
										{\
											DimmerLights1->Signal=0;\
											DimmerLights1->StatusFlag=0;\
											setLED1(1);\
											setLoad_StatusOff(1);\
											setLoad_LightsCount(2);\
											Dimmer_Close();\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac1)\
					{\
						DimmerLights1->TriacTime++;\
						if(DimmerLights1->TriacTime >= TriacTimeValue)\
						{\
							DimmerLights1->TriacTime=0;\
							Triac1=0;\
						}\
					}\
				}\
				;

	//DimmerLights2_Main_1
	#define DimmerLights2_Main_1()\
				if(DimmerLights2->GO)\//reclock
				{\
					DimmerLights2->Count++;\
					if(DimmerLights2->Count >= DimmerLights2->DimmingValue)\
					{\
						DimmerLights2->Count=0;\
						DimmerLights2->GO=0;\
						DimmerLights2->Flag=1;\
						if(DimmerLights2->StatusFlag)\
						{\
							Triac2=1;\
						}\
					}\
				}\
				else\
				{\
					if(DimmerLights2->Flag)\
					{\
						DimmerLights2->Flag=0;\
						if(DimmerLights2->Signal)\
						{\
							DimmerLights2->DimmingTime++;\
							if(DimmerLights2->DimmingTime >= DimmerLights2->DimmingTimeValue)\
							{\
								DimmerLights2->DimmingTime=0;\
								if(DimmerLights2->AdjFlag)\
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
								else if(DimmerLights2->AdjRF)\
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
										setLoad_Count(0);\
										setLoad_StatusOn(1);\
									}\
								}\
								else\
								{\
									if(DimmerLights2->Status)\
									{\
										DimmerLights2->DimmingValue--;\
										if(DimmerLights2->DimmingValue <= DimmerLights2->StartValue)\
										{\
											DimmerLights2->Signal=0;\
										}\
									}\
									else\
									{\
										DimmerLights2->DimmingValue++;\
										if(DimmerLights2->DimmingValue >= DimmerLights2->StopValue)\
										{\
											DimmerLights2->Signal=0;\
											DimmerLights2->StatusFlag=0;\
											setLED2(1);\
											setLoad_StatusOff(1);\
											setLoad_LightsCount(2);\
											Dimmer_Close();\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac2)\
					{\
						DimmerLights2->TriacTime++;\
						if(DimmerLights2->TriacTime >= TriacTimeValue)\
						{\
							DimmerLights2->TriacTime=0;\
							Triac2=0;\
						}\
					}\
				}\
				;

	//DimmerLights3_Main_1
	#define DimmerLights3_Main_1()\
				if(DimmerLights3->GO)\//reclock
				{\
					DimmerLights3->Count++;\
					if(DimmerLights3->Count >= DimmerLights3->DimmingValue)\
					{\
						DimmerLights3->Count=0;\
						DimmerLights3->GO=0;\
						DimmerLights3->Flag=1;\
						if(DimmerLights3->StatusFlag)\
						{\
							Triac3=1;\
						}\
					}\
				}\
				else\
				{\
					if(DimmerLights3->Flag)\
					{\
						DimmerLights3->Flag=0;\
						if(DimmerLights3->Signal)\
						{\
							DimmerLights3->DimmingTime++;\
							if(DimmerLights3->DimmingTime >= DimmerLights3->DimmingTimeValue)\
							{\
								DimmerLights3->DimmingTime=0;\
								if(DimmerLights3->AdjFlag)\
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
								else if(DimmerLights3->AdjRF)\
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
										setLoad_Count(0);\
										setLoad_StatusOn(1);\
									}\
								}\
								else\
								{\
									if(DimmerLights3->Status)\
									{\
										DimmerLights3->DimmingValue--;\
										if(DimmerLights3->DimmingValue <= DimmerLights3->StartValue)\
										{\
											DimmerLights3->Signal=0;\
										}\
									}\
									else\
									{\
										DimmerLights3->DimmingValue++;\
										if(DimmerLights3->DimmingValue >= DimmerLights3->StopValue)\
										{\
											DimmerLights3->Signal=0;\
											DimmerLights3->StatusFlag=0;\
											setLED3(1);\
											setLoad_StatusOff(1);\
											setLoad_LightsCount(2);\
											Dimmer_Close();\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac3)\
					{\
						DimmerLights3->TriacTime++;\
						if(DimmerLights3->TriacTime >= TriacTimeValue)\
						{\
							DimmerLights3->TriacTime=0;\
							Triac3=0;\
						}\
					}\
				}\
				;


	//setDimmerLights1_1()
	#define setDimmerLights1_1()\
				if(status)\
				{\
					DimmerLights1->Status=1;\
					if(DimmerLights1->Dimmable)\
					{\
						DimmerLights1->Signal=1;\
						DimmerLights1->DimmingTimeValue=Dimming;\
					}\
					if(	DimmerLights1->StatusFlag == 0)\
					{\
						DimmerLights1->StatusFlag=1;\
						setLoad_GO(1);\
						setLoad_StatusOn(1);\
						setLoad_LightsCount(1);\
					}\
					Dimmable->Load=1;\
					setLED1(0);\
					setRF_DimmerLights(1,1,DimmerLights1->StartValue);\
				}\
				else if(status == 0)\
				{\
					DimmerLights1->Status=0;\
					DimmerLights1->Signal=1;\
					if(DimmerLights1->Dimmable)\
					{\
						DimmerLights1->AdjFlag=0;\
						DimmerLights1->AdjStatus=0;\
						DimmerLights1->DimmingTimeValue=Dimming;\
					}\
					else\
					{\
						DimmerLights1->StatusFlag=0;\
						setLED1(0);\
						Dimmer_Close();\
						setLoad_StatusOff(1);\
						setLoad_LightsCount(2);\
					}\
					setRF_DimmerLights(1,0,DimmerLights1->StartValue);\
				}\
				;


	//setDimmerLights2_1()
	#define setDimmerLights2_1()\
				if(status)\
				{\
					DimmerLights2->Status=1;\
					if(DimmerLights2->Dimmable)\
					{\
						DimmerLights2->Signal=1;\
						DimmerLights2->DimmingTimeValue=Dimming;\
					}\
					if(	DimmerLights2->StatusFlag == 0)\
					{\
						DimmerLights2->StatusFlag=1;\
						setLoad_GO(1);\
						setLoad_StatusOn(1);\
						setLoad_LightsCount(1);\
					}\
					Dimmable->Load=2;\
					setLED2(0);\
					setRF_DimmerLights(2,1,DimmerLights2->StartValue);\
				}\
				else if(status == 0)\
				{\
					DimmerLights2->Status=0;\
					DimmerLights2->Signal=1;\
					if(DimmerLights2->Dimmable)\
					{\
						DimmerLights2->AdjFlag=0;\
						DimmerLights2->AdjStatus=0;\
						DimmerLights2->DimmingTimeValue=Dimming;\
					}\
					else\
					{\
						DimmerLights2->StatusFlag=0;\
						setLED2(0);\
						Dimmer_Close();\
						setLoad_StatusOff(1);\
						setLoad_LightsCount(2);\
					}\
					setRF_DimmerLights(2,0,DimmerLights2->StartValue);\
				}\
				;



	//setDimmerLights3_1()
	#define setDimmerLights3_1()\
				if(status)\
				{\
					DimmerLights3->Status=1;\
					if(DimmerLights3->Dimmable)\
					{\
						DimmerLights3->Signal=1;\
						DimmerLights3->DimmingTimeValue=Dimming;\
					}\
					if(	DimmerLights3->StatusFlag == 0)\
					{\
						DimmerLights3->StatusFlag=1;\
						setLoad_StatusOn(1);\
						setLoad_GO(1);\
						setLoad_LightsCount(1);\
					}\
					Dimmable->Load=3;\
					setLED3(0);\
					setRF_DimmerLights(3,1,DimmerLights3->StartValue);\
				}\
				else if(status == 0)\
				{\
					DimmerLights3->Status=0;\
					DimmerLights3->Signal=1;\
					if(DimmerLights3->Dimmable)\
					{\
						DimmerLights3->AdjFlag=0;\
						DimmerLights3->AdjStatus=0;\
						DimmerLights3->DimmingTimeValue=Dimming;\
					}\
					else\
					{\
						DimmerLights3->StatusFlag=0;\
						setLED3(0);\
						Dimmer_Close();\
						setLoad_StatusOff(1);\
						setLoad_LightsCount(2);\
					}\
					setRF_DimmerLights(3,0,DimmerLights3->StartValue);\
				}\
				;


	//setDimmerLights1_Adj_1 
	#define  setDimmerLights1_Adj_1()\
				if(DimmerLights1->Dimmable)\
				{\
					if(status)\
					{\
						DimmerLights1->AdjFlag=1;\
						DimmerLights1->Signal=1;\
					}\
					else if(status == 0)\
					{\
						if(DimmerLights1->AdjFlag)\
						{\
							DimmerLights1->Signal=0;\
							DimmerLights1->AdjFlag=0;\
							setLoad_Count(0);\
							setLoad_StatusOn(1);\
							DimmerLights1->StartValue=DimmerLights1->DimmingValue;\
							setRF_DimmerLights(1,1,DimmerLights1->StartValue);\
							setMemory_Modify(1);\
						}\
					}\
				}\
				;

	//setDimmerLights2_Adj_1 
	#define  setDimmerLights2_Adj_1()\
				if(DimmerLights2->Dimmable)\
				{\
					if(status)\
					{\
						DimmerLights2->AdjFlag=1;\
						DimmerLights2->Signal=1;\
					}\
					else  if(status == 0)\
					{\
						if(DimmerLights2->AdjFlag)\
						{\
							DimmerLights2->Signal=0;\
							DimmerLights2->AdjFlag=0;\
							setLoad_Count(0);\
							setLoad_StatusOn(1);\
							DimmerLights2->StartValue=DimmerLights2->DimmingValue;\
							setRF_DimmerLights(2,1,DimmerLights2->StartValue);\
							setMemory_Modify(1);\
						}\
					}\
				}\
				;

	//setDimmerLights3_Adj_1 
	#define  setDimmerLights3_Adj_1()\
				if(DimmerLights3->Dimmable)\
				{\
					if(status)\
					{\
						DimmerLights3->AdjFlag=1;\
						DimmerLights3->Signal=1;\
					}\
					else  if(status == 0)\
					{\
						if(DimmerLights3->AdjFlag)\
						{\
							DimmerLights3->Signal=0;\
							DimmerLights3->AdjFlag=0;\
							setLoad_Count(0);\
							setLoad_StatusOn(1);\
							DimmerLights3->StartValue=DimmerLights3->DimmingValue;\
							setRF_DimmerLights(3,1,DimmerLights3->StartValue);\
							setMemory_Modify(1);\
						}\
					}\
				}\
				;
	

	#define DimmerLights1_AdjRF_1()\
					DimmerLights1->AdjRF=1;\
					DimmerLights1->Signal=1;\
					DimmerLights1->StartValue=getStartValue(One_Percent);\
					setProductData(15,(Product->Data[15]|0x01));\//Lights Status
					;
	
	#define DimmerLights2_AdjRF_1()\
					DimmerLights2->AdjRF=1;\
					DimmerLights2->Signal=1;\
					DimmerLights2->StartValue=getStartValue(One_Percent);\
					setProductData(15,(Product->Data[15]|0x02));\//Lights Status
					;

	#define DimmerLights3_AdjRF_1()\
					DimmerLights3->AdjRF=1;\
					DimmerLights3->Signal=1;\
					DimmerLights3->StartValue=getStartValue(One_Percent);\
					setProductData(15,(Product->Data[15]|0x04));\//Lights Status
					;


	//error 1
	#define Dimmer_ERROR_1()\
				if(Dimmable->TempERROR)\
				{\
					if(getDimmerLights1_StatusFlag || getDimmerLights2_StatusFlag || getDimmerLights3_StatusFlag)\
					{\
						setBuzzer(10,300);\
					}\
					setDimmerLights1_ERROR();\
					setDimmerLights2_ERROR();\
					setDimmerLights3_ERROR();\
					Dimmer_Close();\
				}\
				else if(Dimmable->LoadERROR)\
				{\
					if(Dimmable->Load == 1)\
					{\
						setDimmerLights1_ERROR();\
					}\
					else if(Dimmable->Load == 2)\
					{\
						setDimmerLights2_ERROR();\
					}\
					else if(Dimmable->Load == 3)\
					{\
						setDimmerLights3_ERROR();\
					}\
					Dimmer_Close();\
					setBuzzer(5,300);\
				}\
				;


		#define setDimmerLights1_ERROR_1()\
					if(DimmerLights1->Status)\
					{\
						DimmerLights1->StatusFlag=0;\
						DimmerLights1->Signal=0;\
						DimmerLights1->AdjFlag=0;\
						DimmerLights1->AdjStatus=0;\
						DimmerLights1->DimmingTimeValue=Dimming;\
						DimmerLights1->DimmingValue=DimmerLights1_DimmeringValue;\
						setLoad_StatusOff(1);\
						setLoad_LightsCount(2);\
						setLED1(1);\
						setSw1_Status(0);\
						setRFsw1_Status(0);\
					}\
					;
			

		#define setDimmerLights2_ERROR_1()\
					if(DimmerLights2->Status)\
					{\
						DimmerLights2->StatusFlag=0;\
						DimmerLights2->Signal=0;\
						DimmerLights2->AdjFlag=0;\
						DimmerLights2->AdjStatus=0;\
						DimmerLights2->DimmingTimeValue=Dimming;\
						DimmerLights2->DimmingValue=DimmerLights2_DimmeringValue;\
						setLoad_StatusOff(1);\
						setLoad_LightsCount(2);\
						setLED2(1);\
						setSw2_Status(0);\
						setRFsw2_Status(0);\
					}\
					;

		#define setDimmerLights3_ERROR_1()\
					if(DimmerLights3->Status)\
					{\
						DimmerLights3->StatusFlag=0;\
						DimmerLights3->Signal=0;\
						DimmerLights3->AdjFlag=0;\
						DimmerLights3->AdjStatus=0;\
						DimmerLights3->DimmingTimeValue=Dimming;\
						DimmerLights3->DimmingValue=DimmerLights3_DimmeringValue;\
						setLoad_StatusOff(1);\
						setLoad_LightsCount(2);\
						setLED3(1);\
						setSw3_Status(0);\
						setRFsw3_Status(0);\
					}\
					;


//End file
#endif

