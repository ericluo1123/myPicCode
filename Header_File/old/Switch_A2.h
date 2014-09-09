
#ifndef _Switch_H_
#define _Switch_H_

/*
Description:
	Function write :
		KeyON_Control()			
		KeyOFF_Control()
		KeyLearn_Control()
*/

	#if Switch_use == 1
		//define
		#define DebounceTimeValue 	50//ms
		#define Hold1TimeValue 		1500//ms	
		#define Hold2TimeValue 		1500//ms
		#define Hold3TimeValue 		3000//ms

		//Global extern vriables declaration/
		struct Switch
		{
			unsigned Enable:1;
			unsigned Debounce:1;
			unsigned Hold1:1;
			unsigned Hold2:1;
			unsigned Hold3:1;

			unsigned char DebounceTime;
			unsigned int Hold1Time;
			unsigned int Hold2Time;
			unsigned int Hold3Time;
			
			unsigned Status:1;
			unsigned Flag:1;			
			unsigned Detect:1;
			unsigned ON:1;
			unsigned Adj:1;
		};
		
		//***************************************************************
		#ifdef Triac1
			struct Switch VarSw1;
			struct Switch *Sw1;

			#define setSw1_Enable(command) Sw1->Enable=command
			#define setSw1_DebounceTime(command) Sw1->DebounceTime=command
			#define setSw1_Status(command) Sw1->Status=command
			#define getSw1_Debounce Sw1->Debounce
			#define setSw1_Hold1Time(command) Sw1->Hold1Time=command
			#define setSw1_Detect(command) Sw1->Detect=command
		
			void Sw1_Initial();
			void Sw1_Main();
			void Sw1_OnFunc();	
			void Sw1_LearnFunc();
			void Sw1_OffFunc();
		#else 
			#define setSw1_Enable(command) ;
			#define setSw1_Status(command) ;
			#define setSw1_DebounceTime(command) ;
			#define getSw1_Debounce ;
			#define setSw1_Hold1Time(command) ;
			#define setSw1_Detect(command) ;

			#define Sw1_Initial() ;
			#define Sw1_Main() ;
			#define Sw1_OnFunc() ;	
			#define Sw1_LearnFunc() ;
			#define Sw1_OffFunc() ;
		#endif
		//***************************************************************
		#ifdef Triac2
			struct Switch VarSw2;
			struct Switch *Sw2;
 
			#define setSw2_Enable(command) Sw2->Enable=command
			#define setSw2_DebounceTime(command) Sw2->DebounceTime=command
			#define setSw2_Status(command) Sw2->Status=command
			#define getSw2_Debounce Sw2->Debounce
			#define setSw2_Hold1Time(command) Sw2->Hold1Time=command
			#define setSw2_Detect(command) Sw2->Detect=command

			void Sw2_Initial();
			void Sw2_Main();
			void Sw2_OnFunc();
			void Sw2_LearnFunc();
			void Sw2_OffFunc();
		#else 
			#define setSw2_Enable(command) ;
			#define setSw2_Status(command) ;
			#define getSw2_Debounce ;
			#define setSw2_DebounceTime(command) ;
			#define setSw2_Hold1Time(command) ;
			#define setSw2_Detect(command) ;

			#define Sw2_Initial() ;
			#define Sw2_Main() ;
			#define Sw2_OnFunc() ;
			#define Sw2_LearnFunc() ;
			#define Sw2_OffFunc() ;
		#endif
		//***************************************************************
		#ifdef Triac3
			struct Switch VarSw3;
			struct Switch *Sw3;

			#define setSw3_Enable(command) Sw3->Enable=command
			#define setSw3_DebounceTime(command) Sw3->DebounceTime=command
			#define setSw3_Status(command) Sw3->Status=command
			#define getSw3_Debounce Sw3->Debounce
			#define setSw3_Hold1Time(command) Sw3->Hold1Time=0
			#define setSw3_Detect(command) Sw3->Detect=command
		
			void Sw3_Initial();
			void Sw3_Main();
			void Sw3_OnFunc();
			void Sw3_LearnFunc();
			void Sw3_OffFunc();
	
		#else 
			#define setSw3_Enable(command) ;
			#define setSw3_Status(command) ;
			#define setSw3_DebounceTime(command) ;
			#define getSw3_Debounce ;
			#define setSw3_Hold1Time(command) ;
			#define setSw3_Detect(command) ;

			#define Sw3_Initial() ;
			#define Sw3_Main() ;
			#define Sw3_OnFunc() ;
			#define Sw3_LearnFunc() ;
			#define Sw3_OffFunc() ;
		#endif
		//***************************************************************
	
		void Switch_Initial();
		void Switch_Main();
		void Switch_Enable(char,char,char);
		void Switch_Exception(char);

		#ifdef TTPW
			void TouchPower();
		#else 
			#define TouchPower() ;		
		#endif

		//***************************************************************	
	#else
		#define Switch_Initial() ;
		#define Switch_Main() ;
		#define Switch_Enable(char,char,char) ;
		#define TouchPower() ;
		#define Switch_Exception(char) ;

		//1
		#define setSw1_Enable(command) ;
		#define setSw1_Status(command) ;
		#define setSw1_DebounceTime(command) ;
		#define getSw1_Debounce ;
		#define setSw1_Hold1Time(command) ;
		#define setSw1_Detect(command) ;

		#define Sw1_Initial() ;
		#define Sw1_Main() ;
		#define Sw1_Initial() ;
		#define Sw1_Main() ;
		#define Sw1_OnFunc() ;	
		#define Sw1_LearnFunc() ;
		#define Sw1_OffFunc() ;
		//2
		#define setSw2_Enable(command) ;
		#define setSw2_Status(command) ;
		#define setSw2_DebounceTime(command) ;
		#define getSw2_Debounce ;
		#define setSw2_Hold1Time(command) ;
		#define setSw2_Detect(command) ;

		#define Sw2_Initial() ;
		#define Sw2_Main() ;
		#define Sw2_OnFunc() ;
		#define Sw2_LearnFunc() ;
		#define Sw2_OffFunc() ;
		//3
		#define setSw3_Enable(command) ;
		#define setSw3_Status(command) ;
		#define setSw3_DebounceTime(command) ;
		#define getSw3_Debounce ;
		#define setSw3_Hold1Time(command) ;
		#define setSw3_Detect(command) ;

		#define Sw3_Initial() ;
		#define Sw3_Main() ;
		#define Sw3_OnFunc() ;
		#define Sw3_LearnFunc() ;
		#define Sw3_OffFunc() ;
	#endif

//End file
#endif
