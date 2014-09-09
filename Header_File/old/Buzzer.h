
#ifndef _Buzzer_H_
#define _Buzzer_H_

/*
	Decrption:	
	Set BuzzerBeeps_Set(x) 
	x=1~10;
*/

//Global extern variable declaration
struct Buzzer 
{
	unsigned Enable:1;			//1 = Buzzer function enable
								//0 = Buzzer function disable
		
	unsigned GO:1;				//1 = Buzzer function in progress
								//0 = Buzzer function not progress	

	unsigned char Count;		//x	= Buzzer Required number of executions	
	unsigned char Beeps;		//x = Set execution count

	unsigned char Buffer;		//x = Register awaiting execution times	

	unsigned char Time;			//x = Execution cycle time
};

	#if Buzzer_Enable == 1
		struct Buzzer VarBuzzer;
		struct Buzzer *Buzzer;
	
		#define Buzzer_Initial() Bz_Initial()
	
		#define Buzzer_Main() Bz_Main()

		#define BuzzerBeeps_Set(x) Buzzer->Beeps=x
	#endif

	#ifndef BuzzerBeeps_Set(x)
		#define BuzzerBeeps_Set(x) NOP()
	#endif

//initial
	#define Bz_Initial()\
		Buzzer=&VarBuzzer;\
		Buzzer->Enable=1

	#ifndef Buzzer_Initial()
		#define Buzzer_Initial() NOP()
	#endif


//main
	#define Bz_Main()\
		if(Buzzer->Enable == 1)\
		{\
			if(Buzzer->GO == 0)\
			{\
				if(Buzzer->Beeps > 0)\
				{\
					Buzzer->Count = Buzzer->Beeps;\
					Buzzer->Beeps = 0;\
					Buzzer->GO = 1;\
					BuzzerSwitch = 1;\
				}\
			}\
			else\
			{\
				Buzzer->Time++;\
				if(Buzzer->Time == BuzzerIntervalTime)\
				{\
					Buzzer->Time = 0;\
					if(BuzzerSwitch == 0)\
						BuzzerSwitch = 1;\
					else\
					{\
						BuzzerSwitch = 0;\
						if(Buzzer->Count > 1)\
							Buzzer->Count--;\
						else\
						{\
							if(Buzzer->Buffer == 0)\
								Buzzer->GO = 0;\
							else\
							{\
								Buzzer->Count += Buzzer->Buffer;\
								Buzzer->Buffer = 0;\
							}\
						}\
					}\
				}\
				if(Buzzer->Beeps > 0)\
				{\
					Buzzer->Buffer = Buzzer->Beeps;\
					Buzzer->Beeps = 0;\
				}\
			}\
		}\
		;

	#ifndef Buzzer_Main()
		#define Buzzer_Main() NOP()
	#endif
	
//End file
#endif
