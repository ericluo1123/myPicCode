
#ifndef _Buzzer_A1_H_
#define _Buzzer_A1_H_

/****************************************************************
	File list:
		Buzzer_A1.c
		Buzzer_A1.h

	addFunction
		Buzzer_Initial();
		Buzzer_Main();	

	method:	
		setBuzzer(char count,int time); 
			count(1 ~ 10)
			time(1 ~ 65536)/ms

		setBuzEnable(char command);
			command(0 ~ 1)

/***************************************************************/

	#if Buzzer_use == 1
		//Global extern variable declaration
		struct Buzzer 
		{
			unsigned Enable:1;															
			unsigned GO:1;																
			unsigned PowerON:1;
			unsigned BufferStatus:1;
			unsigned int Time;	
			unsigned char Count;		
			unsigned char CountBuffer;				
			unsigned int TimeValue;
			unsigned int TimeValueBuffer;	
		};
		struct Buzzer VarBuzzer;
		struct Buzzer *Buzzer;

		//default Interval Time
		#define BuzzerPowerOnTime	50	//ms 
		#define BuzzerErrorTime		300	//ms 
		#define BuzzerOnOffTime		100	//ms 

		//define function content 
		#define setBuzzer_Content() setBuzzer_1()
	
		#define Buzzer_Initial_Content() Buzzer_Initial_1()

		#define Buzzer_Main_Content()Buzzer_Main_1()
	
		#define setBuzEnable_Content() setBuzEnable_1()

	#endif

	void setBuzzer(char,int);
	void setBuzEnable(char);	

	void Buzzer_Main();
	void Buzzer_Initial();

	//NOP
	#ifndef setBuzzer_Content()
		#define setBuzzer_Content() NOP()
	#endif

	#ifndef Buzzer_Initial_Content()
		#define Buzzer_Initial_Content() NOP()
	#endif

	#ifndef Buzzer_Main_Content()
		#define Buzzer_Main_Content() NOP()
	#endif

	#ifndef setBuzEnable_Content()
		#define setBuzEnable_Content() NOP()
	#endif

	#ifndef setBuzDisable_Content()
		#define setBuzDisable_Content() NOP()
	#endif

	//initial 1
	#define Buzzer_Initial_1()\
				Buzzer=&VarBuzzer;\
				Buzzer->Enable=1;\
				;

	//setBuzEnable 1
	#define setBuzEnable_1()\
				Buzzer->Enable=command;\
				;

	//setBuzzer 1
	#define setBuzzer_1()\
				if(Buzzer->Enable)\
				{\
					if(Buzzer->GO == 0)\
					{\
						Buzzer->GO=1;\
						BuzzerSwitch=1;\
						Buzzer->Count=(--count);\
						Buzzer->TimeValue=time;\
						if(Buzzer->TimeValue == 0)\
						{\
							Buzzer->TimeValue=100;\
						}\
					}\
					else\
					{\
						if(Buzzer->BufferStatus == 0)\
						{\
							Buzzer->BufferStatus=1;\
							Buzzer->CountBuffer=count;\
							Buzzer->TimeValueBuffer=time;\
						}\
					}\
				}\
				;

	//main 1
	#define Buzzer_Main_1()\
				if(Buzzer->GO)\
				{\
					Buzzer->Time++;\
					if(Buzzer->Time == Buzzer->TimeValue)\
					{\
						Buzzer->Time=0;\
						if(BuzzerSwitch == 0)\
						{\
							BuzzerSwitch=1;\
						}\
						else\
						{\
							BuzzerSwitch=0;\
							if(Buzzer->Count == 0)\
							{\
								if(Buzzer->BufferStatus)\
								{\
									Buzzer->BufferStatus=0;\
									Buzzer->Count=(--Buzzer->CountBuffer);\
									Buzzer->TimeValue=Buzzer->TimeValueBuffer;\
								}\
								else\
								{\
									Buzzer->GO=0;\
								}\
							}\
							else\
							{\
								Buzzer->Count--;\
							}\
						}\
					}\
				}\
				;
				
//End file
#endif
