
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
			unsigned OverLoad:1;
			unsigned char DimmingTime;		
			unsigned char DimmingTimeValue;
			unsigned char Count;
			unsigned char DimmingValue;
			unsigned char MaxmumValue;
			unsigned char MinimumValue;
			unsigned Flag:1;
			unsigned char TriacTime;
			
			unsigned Switch:1;
			unsigned Trigger:1;
			unsigned AdjGo:1;
			unsigned TriggerAdj:1;

			unsigned Triac:1;
			unsigned Open:1;
			unsigned Close:1;
		};
		struct DimmerLights *DimmerLights;
		struct DimmerLights *DimmerLightsIntr;

		#ifdef Triac1
			struct DimmerLights *DimmerLights11;
			struct DimmerLights DimmerLights1;


			#if Switch_Key == 1
				#define Triac1_1 RA7=1
				#define Triac1_0 RA7=0
				#define setLED2(command) LED2=!command
			#else
				#define Triac1_1 ;
				#define Triac1_0 ;
				#define setLED2 ;
			#endif		
		#endif

		#ifdef Triac2
			struct DimmerLights *DimmerLights22;
			struct DimmerLights DimmerLights2;
		#endif

		#ifdef Triac3
			struct DimmerLights *DimmerLights33;
			struct DimmerLights DimmerLights3;
		#endif



		#if Serial_Number == 1
			void DimmerLightsOpenShow();
		#else
			#define DimmerLightsOpenShow() ;
		#endif


		//public
		void DimmerLightsPointSelect(char);
		void DimmerLights_Initialization();
		void DimmerLights_Main();
		void DimmerLights_ERROR();
		void DimmerLights_Close();

		void setDimmerLights_Initialization(char);
		void setDimmerLights_GO(char,char);
		void setDimmerLights_Main(char);
		void setDimmerLights_ERROR(char);
		void setDimmerLights_TriggerERROR(char,char); 
		void setDimmerLights(char,char);
		void setDimmerLights_Adj(char,char);
		void setDimmerLights_AdjRF(char);
		char getPercentValue(char);
		char setPercentValue(char);

		void setDimmerLights_MaxmumValue(char,char); 
		void setDimmerLights_Trigger(char,char); 
		void setDimmerLights_Switch(char,char); 
		void setDimmerLights_AdjGo(char,char); 
		void setDimmerLights_TriggerAdj(char,char);
		char getDimmerLights_StatusFlag();
		char getDimmerLights_Trigger();

		void setDimmerLights_Open(char,char);
		char getDimmerLights_Open(char);
		void setDimmerLights_Close(char,char);
		char getDimmerLights_Close(char);	

		//Global extern variable declaration
		struct Dimmer
		{
			unsigned LoadERROR:1;
			unsigned TempERROR:1;
			unsigned PFERROR:1;
			unsigned Detect:1;
			unsigned char Load;
		};
		struct Dimmer *Dimmer;

		#ifdef DimmerReference1
			struct Dimmer Dimmer1;	
		#endif
	
		void DimmerPointSelect(char);
		void setDimmer_TempERROR(char,char); 	
		void setDimmer_LoadERROR(char,char); 
		void setDimmer_PFERROR(char,char);
		char getDimmer_TempERROR(char);
		char getDimmer_LoadERROR(char);
		char getDimmer_PFERROR(char);
		void setDimmer_Detect(char,char);
		char getDimmer_Detect(char);

	//*********************************************************
		#ifdef Triac1
	
			#define setDimmerLights11_Control(lights)\
				if(DimmerLights11->GO)\//reclock
				{\
					DimmerLights11->Count++;\
					if(DimmerLights11->Count >= DimmerLights11->DimmingValue)\
					{\
						DimmerLights11->Count=0;\
						DimmerLights11->GO=0;\
						DimmerLights11->Flag=1;\
						if(DimmerLights11->StatusFlag)\
						{\
							Triac1=1;\
							Triac1_1;\
						}\
					}\
				}\
				else\
				{\
					if(DimmerLights11->Flag)\
					{\
						DimmerLights11->Flag=0;\
						if(DimmerLights11->Signal)\
						{\
							DimmerLights11->DimmingTime++;\
							if(DimmerLights11->DimmingTime >= DimmerLights11->DimmingTimeValue)\
							{\
								DimmerLights11->DimmingTime=0;\
								if(DimmerLights11->AdjFlag)\
								{\
									if(DimmerLights11->AdjStatus == 0)\
									{\
										if(DimmerLights11->DimmingValue > Dimmer_Maxum)\
										{\
											DimmerLights11->DimmingValue--;\
										}\
										else\
										{\
											DimmerLights11->AdjStatus=1;\
										}\
									}\
									else\
									{\
										if(DimmerLights11->DimmingValue < Dimmer_Minimum)\
										{\
											DimmerLights11->DimmingValue++;\
										}\
										else\
										{\
											DimmerLights11->AdjStatus=0;\
										}\
									}\
								}\
								else if(DimmerLights11->AdjRF)\
								{\
									if(DimmerLights11->DimmingValue > DimmerLights11->MaxmumValue)\
									{\
										DimmerLights11->DimmingValue--;\
									}\
									else if(DimmerLights11->DimmingValue < DimmerLights11->MaxmumValue)\
									{\
										DimmerLights11->DimmingValue++;\
									}\
									if(DimmerLights11->DimmingValue == DimmerLights11->MaxmumValue)\
									{\
										DimmerLights11->AdjRF=0;\
										DimmerLights11->Signal=0;\
									}\
								}\
								else\
								{\
									if(DimmerLights11->Status)\
									{\
										DimmerLights11->DimmingValue--;\
										if(DimmerLights11->DimmingValue <= DimmerLights11->MaxmumValue)\
										{\
											DimmerLights11->Signal=0;\
										}\
									}\
									else\
									{\
										DimmerLights11->DimmingValue++;\
										if(DimmerLights11->DimmingValue >= DimmerLights11->MinimumValue)\
										{\
											DimmerLights11->Signal=0;\
											DimmerLights11->StatusFlag=0;\
											DimmerLights11->Close=1;\
											Dimmer->Detect=1;\
											LED1=0;\
											setLED2(1);\
											setLoad_StatusOff(1,lights,1);\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac1)\
					{\
						DimmerLights11->TriacTime++;\
						if(DimmerLights11->TriacTime >= TriacTimeValue)\
						{\
							DimmerLights11->TriacTime=0;\
							Triac1=0;\
							Triac1_0;\
						}\
					}\
				}\
				;
		#endif
		//*********************************************************
		#ifdef Triac2
	
			#define setDimmerLights22_Control(lights)\
				if(DimmerLights22->GO)\//reclock
				{\
					DimmerLights22->Count++;\
					if(DimmerLights22->Count >= DimmerLights22->DimmingValue)\
					{\
						DimmerLights22->Count=0;\
						DimmerLights22->GO=0;\
						DimmerLights22->Flag=1;\
						if(DimmerLights22->StatusFlag)\
						{\
							Triac2=1;\
						}\
					}\
				}\
				else\
				{\
					if(DimmerLights22->Flag)\
					{\
						DimmerLights22->Flag=0;\
						if(DimmerLights22->Signal)\
						{\
							DimmerLights22->DimmingTime++;\
							if(DimmerLights22->DimmingTime >= DimmerLights22->DimmingTimeValue)\
							{\
								DimmerLights22->DimmingTime=0;\
								if(DimmerLights22->AdjFlag)\
								{\
									if(DimmerLights22->AdjStatus == 0)\
									{\
										if(DimmerLights22->DimmingValue > Dimmer_Maxum)\
										{\
											DimmerLights22->DimmingValue--;\
										}\
										else\
										{\
											DimmerLights22->AdjStatus=1;\
										}\
									}\
									else\
									{\
										if(DimmerLights22->DimmingValue < Dimmer_Minimum)\
										{\
											DimmerLights22->DimmingValue++;\
										}\
										else\
										{\
											DimmerLights22->AdjStatus=0;\
										}\
									}\
								}\
								else if(DimmerLights22->AdjRF)\
								{\
									if(DimmerLights22->DimmingValue > DimmerLights22->MaxmumValue)\
									{\
										DimmerLights22->DimmingValue--;\
									}\
									else if(DimmerLights22->DimmingValue < DimmerLights22->MaxmumValue)\
									{\
										DimmerLights22->DimmingValue++;\
									}\
									if(DimmerLights22->DimmingValue == DimmerLights22->MaxmumValue)\
									{\
										DimmerLights22->AdjRF=0;\
										DimmerLights22->Signal=0;\
									}\
								}\
								else\
								{\
									if(DimmerLights22->Status)\
									{\
										DimmerLights22->DimmingValue--;\
										if(DimmerLights22->DimmingValue <= DimmerLights22->MaxmumValue)\
										{\
											DimmerLights22->Signal=0;\
										}\
									}\
									else\
									{\
										DimmerLights22->DimmingValue++;\
										if(DimmerLights22->DimmingValue >= DimmerLights22->MinimumValue)\
										{\
											DimmerLights22->Signal=0;\
											DimmerLights22->StatusFlag=0;\
											DimmerLights22->Close=1;\
											Dimmer->Detect=1;\
											LED2=0;\
											setLoad_StatusOff(1,lights,1);\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac2)\
					{\
						DimmerLights22->TriacTime++;\
						if(DimmerLights22->TriacTime >= TriacTimeValue)\
						{\
							DimmerLights22->TriacTime=0;\
							Triac2=0;\
						}\
					}\
				}\
				;
		#endif
		//*********************************************************
		#ifdef Triac3
	
			#define setDimmerLights33_Control(lights)\
				if(DimmerLights33->GO)\//reclock
				{\
					DimmerLights33->Count++;\
					if(DimmerLights33->Count >= DimmerLights33->DimmingValue)\
					{\
						DimmerLights33->Count=0;\
						DimmerLights33->GO=0;\
						DimmerLights33->Flag=1;\
						if(DimmerLights33->StatusFlag)\
						{\
							Triac3=1;\
						}\
					}\
				}\
				else\
				{\
					if(DimmerLights33->Flag)\
					{\
						DimmerLights33->Flag=0;\
						if(DimmerLights33->Signal)\
						{\
							DimmerLights33->DimmingTime++;\
							if(DimmerLights33->DimmingTime >= DimmerLights33->DimmingTimeValue)\
							{\
								DimmerLights33->DimmingTime=0;\
								if(DimmerLights33->AdjFlag)\
								{\
									if(DimmerLights33->AdjStatus == 0)\
									{\
										if(DimmerLights33->DimmingValue > Dimmer_Maxum)\
										{\
											DimmerLights33->DimmingValue--;\
										}\
										else\
										{\
											DimmerLights33->AdjStatus=1;\
										}\
									}\
									else\
									{\
										if(DimmerLights33->DimmingValue < Dimmer_Minimum)\
										{\
											DimmerLights33->DimmingValue++;\
										}\
										else\
										{\
											DimmerLights33->AdjStatus=0;\
										}\
									}\
								}\
								else if(DimmerLights33->AdjRF)\
								{\
									if(DimmerLights33->DimmingValue > DimmerLights33->MaxmumValue)\
									{\
										DimmerLights33->DimmingValue--;\
									}\
									else if(DimmerLights33->DimmingValue < DimmerLights33->MaxmumValue)\
									{\
										DimmerLights33->DimmingValue++;\
									}\
									if(DimmerLights33->DimmingValue == DimmerLights33->MaxmumValue)\
									{\
										DimmerLights33->AdjRF=0;\
										DimmerLights33->Signal=0;\
									}\
								}\
								else\
								{\
									if(DimmerLights33->Status)\
									{\
										DimmerLights33->DimmingValue--;\
										if(DimmerLights33->DimmingValue <= DimmerLights33->MaxmumValue)\
										{\
											DimmerLights33->Signal=0;\
										}\
									}\
									else\
									{\
										DimmerLights33->DimmingValue++;\
										if(DimmerLights33->DimmingValue >= DimmerLights33->MinimumValue)\
										{\
											DimmerLights33->Signal=0;\
											DimmerLights33->StatusFlag=0;\
											DimmerLights33->Close=1;\
											Dimmer->Detect=1;\
											LED3=0;\
											setLoad_StatusOff(1,lights,1);\
										}\
									}\
								}\
							}\
						}\
					}\
					if(Triac3)\
					{\
						DimmerLights33->TriacTime++;\
						if(DimmerLights33->TriacTime >= TriacTimeValue)\
						{\
							DimmerLights33->TriacTime=0;\
							Triac3=0;\
						}\
					}\
				}\
				;
		#endif

	#else
		#define DimmerLightsOpenShow() ;

		#define DimmerLightsPointSelect(char) ;
		#define DimmerLights_Initialization() ;
		#define DimmerLights_Main() ;
		#define DimmerLights_ERROR() ;
		#define DimmerLights_Close() ;

		#define setDimmerLights_Initialization(char) ;
		#define setDimmerLights_GO(char,char) ;
		#define setDimmerLights_Main(char) ;
		#define setDimmerLights_Control(lights) ;
		#define setDimmerLights_ERROR(char) ;
		#define setDimmerLights_TriggerERROR(char,char) ; 
		#define setDimmerLights(char,char) ;
		#define setDimmerLights_Adj(char,char) ;
		#define setDimmerLights_AdjRF(char) ;
		#define getPercentValue(char) ;
		#define setPercentValue(char) ;

		#define setDimmerLights_MaxmumValue(char,char) ; 
		#define setDimmerLights_Trigger(char,char) ; 
		#define setDimmerLights_Switch(char,char) ; 
		#define setDimmerLights_AdjGo(char,char) ; 
		#define setDimmerLights_TriggerAdj(char,char) ;
		#define getDimmerLights_StatusFlag() ;
		#define getDimmerLights_Trigger() ;

		#define setDimmerLights_Open(char,char);
		#define getDimmerLights_Open(char);
		#define setDimmerLights_Close(char,char);
		#define getDimmerLights_Close(char);	

		#define DimmerPointSelect(char) ;
		#define setDimmer_TempERROR(char,char) ; 	
		#define setDimmer_LoadERROR(char,char) ; 
		#define setDimmer_PFERROR(char,char) ;
		#define setDimmer_Detect(char,char) ;
		#define getDimmer_Detect(char) ;

	#endif

//End file
#endif

