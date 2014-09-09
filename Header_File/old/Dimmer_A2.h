
#ifndef _Dimmer_H_
#define _Dimmer_H_
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

		//private
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
			unsigned Switch:1;
			unsigned Trigger:1;
			unsigned AdjGo:1;
			unsigned TriggerAdj:1;
			unsigned OK:1;
		};

		//**********************************************************************
		#ifdef Triac1
			struct DimmerLights VarDimmerLights1;
			struct DimmerLights *DimmerLights1;	

			#if Dimmable_Func == 1
				#define DimmerLights1_Dimmable 1
				#define DimmerLights1_DimmeringValue DimmerLights1->StopValue													
			#else
				#define DimmerLights1_DimmableValue 0
				#define DimmerLights1_DimmeringValue DimmerLights1->StartValue													
			#endif

			#define DimmerLights1_Detect() DimmerLights1->GO=1
			#define setDimmerLights1_StartValue(data) DimmerLights1->StartValue=data	
			#define getDimmerLights1_StartValue() DimmerLights1->StartValue
			#define getDimmerLights1_StatusFlag DimmerLights1->StatusFlag
			#define DimmerLights1_Control() DimmerLights1_Control_Content() 
			#define setDimmerLights1_Trigger(command) DimmerLights1->Trigger=command
			#define setDimmerLights1_Switch(command) DimmerLights1->Switch=command
			#define setDimmerLights1_AdjGo(command) DimmerLights1->AdjGo=command
			#define setDimmerLights1_TriggerAdj(command) DimmerLights1->TriggerAdj=command

			void DimmerLights1_Initial();
			void DimmerLights1_Main();
			void setDimmerLights1_ERROR();
			void setDimmerLights1(char);
			void setDimmerLights1_Adj(char);
			void DimmerLights1_AdjRF();
			void DimmerLights1_OverLoad_Close();
	
		#else
			//NOP
			#define DimmerLights1_Detect() ;
			#define setDimmerLights1_StartValue(data) ;	
			#define getDimmerLights1_StartValue() ;
			#define getDimmerLights1_StatusFlag 0
			#define setDimmerLights1_Trigger(command) ;
			#define setDimmerLights1_Switch(command) ;
			#define setDimmerLights1_AdjGo(command) ;
			#define setDimmerLights1_TriggerAdj(command) ;

			#define DimmerLights1_Initial() ;
			#define DimmerLights1_Main() ;
			#define DimmerLights1_Control() ; 
			#define setDimmerLights1_ERROR() ;
			#define setDimmerLights1(char) ;
			#define setDimmerLights1_Adj(char) ;
			#define DimmerLights1_AdjRF() NOP()
			#define DimmerLights1_OverLoad_Close() ;
		#endif
		//**********************************************************************
		#ifdef Triac2
			struct DimmerLights VarDimmerLights2;
			struct DimmerLights *DimmerLights2;	

			#if Dimmable_Func == 1
				#define DimmerLights2_Dimmable 1
				#define DimmerLights2_DimmeringValue DimmerLights2->StopValue														
			#else
				#define DimmerLights2_DimmableValue 0
				#define DimmerLights2_DimmeringValue DimmerLights2->StartValue													
			#endif

			#define DimmerLights2_Detect() DimmerLights2->GO=1
			#define setDimmerLights2_StartValue(data) DimmerLights2->StartValue=data
			#define getDimmerLights2_StartValue() DimmerLights2->StartValue
			#define getDimmerLights2_StatusFlag DimmerLights2->StatusFlag
			#define DimmerLights2_Control() DimmerLights2_Control_Content()
			#define setDimmerLights2_Trigger(command) DimmerLights2->Trigger=command 
			#define setDimmerLights2_Switch(command) DimmerLights2->Switch=command 
			#define setDimmerLights2_AdjGo(command) DimmerLights2->AdjGo=command
			#define setDimmerLights2_TriggerAdj(command) DimmerLights2->TriggerAdj=command

			void DimmerLights2_Initial();
			void DimmerLights2_Main();
			void setDimmerLights2_ERROR();
			void setDimmerLights2(char);
			void setDimmerLights2_Adj(char);
			void DimmerLights2_AdjRF();
			void DimmerLights2_OverLoad_Close();
		#else
			//NOP
			#define DimmerLights2_Detect() ;
			#define setDimmerLights2_StartValue(data) ;
			#define getDimmerLights2_StartValue() ;
			#define getDimmerLights2_StatusFlag 0
			#define setDimmerLights2_Trigger(command) ;
			#define setDimmerLights2_Switch(command) ;
			#define setDimmerLights2_AdjGo(command) ;
			#define setDimmerLights2_TriggerAdj(command) ;

			#define DimmerLights2_Initial() ;
			#define DimmerLights2_Main() ;
			#define DimmerLights2_Control() ; 
			#define setDimmerLights2_ERROR() ;
			#define setDimmerLights2(char) ;
			#define setDimmerLights2_Adj(char) ;
			#define DimmerLights2_AdjRF() ;
			#define DimmerLights2_OverLoad_Close() ;

		#endif
		//**********************************************************************
		#ifdef Triac3
			struct DimmerLights VarDimmerLights3;
			struct DimmerLights *DimmerLights3;	

			#if Dimmable_Func == 1
				#define DimmerLights3_Dimmable 1
				#define DimmerLights3_DimmeringValue DimmerLights3->StopValue														
			#else
				#define DimmerLights3_DimmableValue 0
				#define DimmerLights3_DimmeringValue DimmerLights3->StartValue													
			#endif

			#define DimmerLights3_Detect() DimmerLights3->GO=1
			#define setDimmerLights3_StartValue(data) DimmerLights3->StartValue=data
			#define getDimmerLights3_StartValue() DimmerLights3->StartValue
			#define getDimmerLights3_StatusFlag DimmerLights3->StatusFlag
			#define DimmerLights3_Control() DimmerLights3_Control_Content() 
			#define setDimmerLights3_Trigger(command) DimmerLights3->Trigger=command
			#define setDimmerLights3_Switch(command) DimmerLights3->Switch=command
			#define setDimmerLights3_AdjGo(command) DimmerLights3->AdjGo=command
			#define setDimmerLights3_TriggerAdj(command) DimmerLights3->TriggerAdj=command

			void DimmerLights3_Initial();
			void DimmerLights3_Main();
			void setDimmerLights3_ERROR();
			void setDimmerLights3(char);
			void setDimmerLights3_Adj(char);
			void DimmerLights3_AdjRF();
			void DimmerLights3_OverLoad_Close();


		#else
			//NOP
			#define DimmerLights3_Detect() ;
			#define setDimmerLights3_StartValue(data) ;
			#define getDimmerLights3_StartValue() ;
			#define getDimmerLights3_StatusFlag 0
			#define setDimmerLights3_Trigger(command) ;
			#define setDimmerLights3_Switch(command) ;
			#define setDimmerLights3_AdjGo(command) ;
			#define setDimmerLights3_TriggerAdj(command) ;

			#define DimmerLights3_Initial() ;
			#define DimmerLights3_Main() ;
			#define DimmerLights3_Control() ; 
			#define setDimmerLights3_ERROR() ;
			#define setDimmerLights3(char) ;
			#define setDimmerLights3_Adj(char) ;
			#define DimmerLights3_AdjRF() ;
			#define DimmerLights3_OverLoad_Close() ;
		#endif
		//**********************************************************************


		//Global extern variable declaration
		struct Dimmer
		{
			unsigned LoadERROR:1;
			unsigned TempERROR:1;
			unsigned PFERROR:1;
			unsigned char Load;
		};
		struct Dimmer *Dimmable;
		struct Dimmer VarDimmable;


		#define setDimmable_TempERROR(command) 	Dimmable->TempERROR=command
		#define setDimmable_LoadERROR(command) 	Dimmable->LoadERROR=command
		#define setDimmable_PFERROR(command)	Dimmable->PFERROR=command

		//public
		void Dimmer_Detect();
		void Dimmer_Initial();
		void Dimmer_Main();
		void Dimmer_Control();
		void Dimmer_ERROR();
		void Dimmer_Close();
		char getStartValue(char);
		char setStartValue(char);

	#else
		//NOP
		//public
		#define setDimmable_TempERROR(command) ;
		#define setDimmable_LoadERROR(command) ;
		#define setDimmable_PFERROR(command) ;
		#define getStartValue_Main() 0

		#define Dimmer_Detect() ;
		#define Dimmer_Initial() ;
		#define Dimmer_Main() ;
		#define Dimmer_ERROR() ;
		#define Dimmer_Close() ;
		#define getStartValue() ;

		//Triac1
		#define DimmerLights1_Detect() ;
		#define setDimmerLights1_StartValue(data) ;	
		#define getDimmerLights1_StartValue() ;
		#define getDimmerLights1_StatusFlag 0

		#define DimmerLights1_Initial() ;
		#define DimmerLights1_Main() ;
		#define setDimmerLights1_ERROR() ;
		#define setDimmerLights1(char) ;
		#define setDimmerLights1_Adj(char) ;
		#define DimmerLights1_AdjRF() ;
		#define DimmerLights1_OverLoad_Close() ;

		//Triac2
		#define DimmerLights2_Detect() ;
		#define setDimmerLights2_StartValue(data) ;
		#define getDimmerLights2_StartValue() ;
		#define getDimmerLights2_StatusFlag 0

		#define DimmerLights2_Initial() ;
		#define DimmerLights2_Main() ;
		#define setDimmerLights2_ERROR() ;
		#define setDimmerLights2(char) ;
		#define setDimmerLights2_Adj(char) ;
		#define DimmerLights2_AdjRF() NOP()
		#define DimmerLights2_OverLoad_Close() ;

		//Triac3
		#define DimmerLights3_Detect()  ;
		#define setDimmerLights3_StartValue(data)  ;
		#define getDimmerLights3_StartValue()  ;
		#define getDimmerLights3_StatusFlag 0

		#define DimmerLights3_Initial() ;
		#define DimmerLights3_Main() ;
		#define setDimmerLights3_ERROR() ;
		#define setDimmerLights3(char) ;
		#define setDimmerLights3_Adj(char) ;
		#define DimmerLights3_AdjRF() ;
		#define DimmerLights3_OverLoad_Close() ;
	#endif

		//*********************************************************
		#define DimmerLights1_Control_Content()\
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
										setLED(1,1);\
										setLoad_StatusOff(1,1);\
										setLoad_LightsStatus(1,1,0);\
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
		//*********************************************************
		#define DimmerLights2_Control_Content()\
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
										setLED(2,1);\
										setLoad_StatusOff(1,1);\
										setLoad_LightsStatus(1,2,0);\
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
		//*********************************************************
		#define DimmerLights3_Control_Content()\
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
										setLED(3,1);\
										setLoad_StatusOff(1,1);\
										setLoad_Lights3Status(1,3,0);\
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
//End file
#endif

