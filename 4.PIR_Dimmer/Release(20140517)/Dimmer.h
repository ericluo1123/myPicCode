
#ifndef _Dimmer_H_
#define _Dimmer_H_

/***Define***/
  //Percent set
  #ifdef TMR1_IntrTime_50us
	  #define TotalCount			185	
	  #define One_Percent			1.85	
	  #define Ninety_Percent		((int)(10*One_Percent))		//85% (10 *One_Percent)			
	  #define EightyFive_Percent	((int)(15*One_Percent))		//85% (15 *One_Percent)	
	  #define Eighty_Percent		((int)(20*One_Percent))		//80% (20 *One_Percent)	
	  #define SeventyFive_Percent	((int)(25*One_Percent))		//75% (25 *One_Percent)	
	  #define Thirty_Percent		((int)(70*One_Percent))		//30% (70 *One_Percent)		
	  #define Twenty_Percent		((int)(80*One_Percent))		//20% (80 *One_Percent)
	  #define Ten_Percent			((int)(90*One_Percent))		//10% (90 *One_Percent)
	  #define Five_Percent			((int)(95*One_Percent))		//5%  (95 *One_Percent)
  #endif

	#define Dimmer_Maxum Ninety_Percent	
	#define Dimmer_Medium	Thirty_Percent
	#define Dimmer_Minimum	Five_Percent
//Dimmer initial
  #define Dimmer_Initial()\
	Dimmer=&VarDimmer;\
	Dimmer->Enable=1;\
	Dimmer->StartValue = Dimmer_Maxum;\
	Dimmer->StopValue = Dimmer_Minimum;\
	Dimmer->DimmingValue = Dimmer->StopValue;\
	Dimmer->ADGO=0


/***Global extern variable declaration***/
//Dimmer
struct Dimmer
{
	//Config
	unsigned Enable:1;	
	
	//AD
	unsigned ADGO:1;
	unsigned ADOK:1;
	unsigned char ADValue;
	unsigned char VRAD_Vref;		
	unsigned char Compare;	
 	unsigned char VRAD;

	//Signal detect
	unsigned Input:1;
	unsigned Ready:1;
	unsigned GO:1;
	unsigned char DimmingTime;
	unsigned char DimmingTimeValue;
	unsigned char DimmingValue;
	unsigned char Count;

	//Triac control
	unsigned Signal:1;
	unsigned Lights:1;	
	unsigned Triac:1;	
	unsigned Phase2:1;
	unsigned char Maxmum;
	unsigned char Medium;
	unsigned char Minimum;
	unsigned char StartValue;
	unsigned char StopValue;
	unsigned char Offset;

	
};
struct Dimmer VarDimmer;
struct Dimmer *Dimmer;

//--------------------------------	

//Dimmer control
	#if Dimmer_Phase == 2
	    #define DimmerSwitch()\
			if(Dimmer->Phase2 == 1)\
			{\
				Dimmer->StopValue=Dimmer_Minimum;\
				Dimmer->DimmingTimeValue=4;\
			}\
			else\
			{\
				Dimmer->DimmingTimeValue=2;\
				if(PIR->Switch == 0)\
				{\
					Dimmer->Phase2 = 1;\
					Dimmer->StopValue=Dimmer_Minimum;\
				}\
				else\
				{\
					Dimmer->StopValue=Dimmer_Medium;\
				}\
			}
	#else 
		#define DimmerSwitch() NOP()
	#endif	
	
//--------------------------------	
//dimmer detect 
	#if Dimmer_Version == 10

		#define Dimmer_Detect()\
			if(TMain->PowerON==1)\
			{\
				Dimmer->Count++;\
				if(Dimmer_Input==1)\
				{\
					if(Dimmer->Input==0)\
					{\
						Dimmer->Input=1;\
						Dimmer->Count=0;\
						if(Temp->ERROR == 0)\
							Dimmer->GO=1;\
					}\
				}\
				else\
				{\
					if(Dimmer->Input==1)\
					{\
						Dimmer->Input=0;\
						Dimmer->Count=0;\
						if(Temp->ERROR == 0)\
							Dimmer->GO=1;\
					}\
				}\
				if(Dimmer->GO==1)\
				{\
					if(Dimmer->Count >= Dimmer->DimmingValue)\
					{\
						Dimmer->Count=0;\
						Dimmer->GO=0;\
						if(Dimmer->Triac==1)\
						{\
							Triac2=1;\
						}\
					}\
				}\
				else\
				{\
					if(Triac2==1)\
					{\
						Triac2=0;\
						if(Dimmer->Signal==1)\
						{\
							Dimmer->DimmingTime++;\
							if(Dimmer->DimmingTime == Dimmer->DimmingTimeValue)\
							{\
								Dimmer->DimmingTime=0;\
								if(Dimmer->Lights==1)\
								{\
									Dimmer->DimmingValue--;\
									if(Dimmer->DimmingValue == Dimmer->StartValue)\
										Dimmer->Signal=0;\
										if(Dimmer->Phase2 == 1)\
											Dimmer->Phase2 = 0;\
								}\
								else\
								{\
									Dimmer->DimmingValue++;\
									if(Dimmer->DimmingValue == Dimmer->StopValue)\
									{\
										Dimmer->Signal=0;\
										if(Dimmer_Phase == 0)\
											Dimmer->Triac=0;\
										else if(Dimmer_Phase == 2)\
										{\
											if(Dimmer->Phase2 == 0)\
												Dimmer->Phase2 = 1;\
											else\
											{\
												Dimmer->Triac=0;\
												Dimmer->Phase2 = 0;\
											}\
										}\
									}\
								}\
							}\
						}\
					}\
				}\
			}	
//--------------------------------	
	
		#elif Dimmer_Version == 11
			#define Dimmer_Detect()\
				if(TMain->PowerON==1)\
				{\
					Dimmer->Count++;\
					if(Dimmer_Input==1)\
					{\
						if(Dimmer->Input==0)\
						{\
							Dimmer->Input=1;\
						}\
					}\
					else\
					{\
						if(Dimmer->Input==1)\
						{\
							Dimmer->Input=0;\
							Dimmer->Count=0;\
							if(Temp->ERROR == 0)\
								Dimmer->GO=1;\
						}\
					}\
					if(Dimmer->GO==1)\
					{\
						if(Dimmer->Count >= Dimmer->DimmingValue)\
						{\
							Dimmer->Count=0;\
							Dimmer->GO=0;\
							if(Dimmer->Triac==1)\
							{\
								Triac2=1;\
							}\
						}\
					}\
					else\
					{\
						if(Triac2==1)\
						{\
							Triac2=0;\
							if(Dimmer->Signal==1)\
							{\
								Dimmer->DimmingTime++;\
								if(Dimmer->DimmingTime == Dimmer->DimmingTimeValue)\
								{\
									Dimmer->DimmingTime=0;\
									if(Dimmer->Lights==1)\
									{\
										Dimmer->DimmingValue--;\
										if(Dimmer->DimmingValue == Dimmer->StartValue)\
											Dimmer->Signal=0;\
										if(Dimmer->Phase2 == 1)\
											Dimmer->Phase2 = 0;\
									}\
									else\
									{\
										Dimmer->DimmingValue++;\
										if(Dimmer->DimmingValue == Dimmer->StopValue)\
										{\
											Dimmer->Signal=0;\
											if(Dimmer_Phase == 0)\
												Dimmer->Triac=0;\
											else if(Dimmer_Phase == 2)\
											{\
												if(Dimmer->Phase2 == 0)\
													Dimmer->Phase2 = 1;\
												else\
												{\
													Dimmer->Triac=0;\
													Dimmer->Phase2 = 0;\
												}\
											}\
										}\
									}\
								}\
							}\
						}\
					}\
				}
	#endif


//dimmer restore
	#define Dimmer_Restore()\
		Dimmer->Lights = 0;\
		Dimmer->Triac = 0;\
		Dimmer->Phase2 = 0;\
		Dimmer->DimmingValue = Dimmer_Minimum;\
	 	Triac2=0

//*********************************

//dimmer control 

	#define Dimmer_Control_Close()\
			Dimmer->Lights=0;\
			Dimmer->Signal=1;\
			if(Dimmer_Phase == 2)\
			{\
				DimmerSwitch();\
			}\
			else\
				Dimmer->DimmingTimeValue=4
		
	#define Dimmer_Control_Open()\
			Dimmer->Lights=1;\
			Dimmer->Signal=1;\
			Dimmer->DimmingTimeValue=1;\
			if(Dimmer_Phase == 0 || Dimmer_Phase == 2)\
				Dimmer->Triac=1	  


	#ifndef Dimmer_Main()
		#define Dimmer_Main() NOP()
	#endif

	#ifndef Dimmer_Restore()
		#define Dimmer_Restore() NOP()
	#endif

	#ifndef Dimmer_Control()
		#define Dimmer_Control() NOP()
	#endif

#endif
/***End file***/