
#ifndef _Buzzer_H_
#define _Buzzer_H_

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
			unsigned BufferStatus1:1;
			unsigned BufferStatus2:1;
			unsigned int Time;	
			unsigned char Count;		
			unsigned char CountBuffer1;		
			unsigned char CountBuffer2;			
			unsigned int TimeValue;
			unsigned int TimeValueBuffer1;	
			unsigned int TimeValueBuffer2;
		};
		struct Buzzer VarBuzzer;
		struct Buzzer *Buzzer;

		//default Interval Time
		#define BuzzerPowerOnTime	50	//ms 
		#define BuzzerErrorTime		300	//ms 
		#define BuzzerOnOffTime		100	//ms 


		#define setBuzEnable(command) Buzzer->Enable=command

		void setBuzzer(char,int);	
		void Buzzer_Main();
		void Buzzer_Initial();
	#else
		//NOP
		#define setBuzEnable(command) NOP()

		#define setBuzzer(char,int) NOP()	
		#define Buzzer_Main() NOP()
		#define Buzzer_Initial() NOP()
	#endif

//End file
#endif
