
#ifndef _Buzzer_A_H_
#define _Buzzer_A_H_

/****************************************************************
	
	method:	
		setBuzzer(char beeps,int time); 
	Decrption:
		beeps:Beeps Count
		time:IntervalTime(ms)

/***************************************************************/

	#if Buzzer_use == 1
		//Global extern variable declaration
		struct Buzzer 
		{
			unsigned Enable:1;															
			unsigned GO:1;																
			unsigned PowerON:1;
			unsigned char Count;		
			unsigned char Beeps;				
			unsigned char Buffer;				
			unsigned int Time;			
			unsigned int TimeValue;
		};
		struct Buzzer VarBuzzer;
		struct Buzzer *Buzzer;

		//IntervalTime
		#define BuzzerPowerOnTime	50	//ms 
		#define BuzzerErrorTime		300	//ms 
		#define BuzzerOnOffTime		100	//ms 

		#define setBuzzer(beeps,time) Buzzer->Beeps=beeps,Buzzer->TimeValue=time
	
		#define Buzzer_Initial() Buzzer_Initial_1()

		#define Buzzer_Main()Buzzer_Main_1()
	
		#define setBuzEnable() Buzzer->Enable=1

		#define setBuzDisable() Buzzer->Enable=0
	#endif

	//NOP
	#ifndef Buzzer_Initial()
		#define Buzzer_Initial() NOP()
	#endif

	#ifndef Buzzer_Main()
		#define Buzzer_Main() NOP()
	#endif

	#ifndef setBuzzer(beeps,time)
		#define setBuzzer_Main(beeps,time) NOP()
	#endif

	#ifndef setBuzEnable()
		#define setBuzEnable() NOP()
	#endif

	#ifndef setBuzDisable()
		#define setBuzDisable() NOP()
	#endif

	//initial 1
	#define Buzzer_Initial_1()\
				Buzzer=&VarBuzzer;\
				Buzzer->Enable=1;\
				;
	//main 1
	#define Buzzer_Main_1()\
				if(Buzzer->Enable)\
				{\
					if(Buzzer->GO == 0)\
					{\
						if(Buzzer->Beeps > 0)\
						{\
							Buzzer->Count=Buzzer->Beeps;\
							Buzzer->Beeps=0;\
							Buzzer->GO=1;\
							BuzzerSwitch=1;\
							set_1_RF_RxFlag();\
							if(Buzzer->TimeValue == 0)\
							{\
								Buzzer->TimeValue=BuzzerOnOffTime;\
							}\
						}\
					}\
					else\
					{\
						Buzzer->Time++;\
						if(Buzzer->Time == Buzzer->TimeValue)\
						{\
							Buzzer->Time=0;\
							if(BuzzerSwitch == 0)\
							{\
								BuzzerSwitch=1;\
								set_1_RF_RxFlag();\
							}\
							else\
							{\
								BuzzerSwitch=0;\
								set_0_RF_RxFlag();\
								if(Buzzer->Count > 1)\
									Buzzer->Count--;\
								else\
								{\
									if(Buzzer->Buffer == 0)\
									{\
										Buzzer->GO=0;\
									}\
									else\
									{\
										Buzzer->Count += Buzzer->Buffer;\
										Buzzer->Buffer=0;\
									}\
								}\
							}\
						}\
						if(Buzzer->Beeps > 0 && Buzzer->Buffer == 0)\
						{\
							Buzzer->Buffer=Buzzer->Beeps;\
							Buzzer->Beeps=0;\
						}\
					}\
				}\
				;
				
//End file
#endif
