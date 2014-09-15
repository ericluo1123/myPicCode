
#ifndef _Switch_H_
#define _Switch_H_

/*
	metohd:
		Touch 3key 3pad:
						#define _Switch_3Key_Dimmer_V3.1.0_H_ || _Switch_3Key_Dimmer_V3.1.1_H_
						#define Triac1
						#define Triac2
						#define Triac3

		Touch 2key 4pad:
						#define _Switch_2Key_Dimmer_V2.1.0_H_
						#define Triac1
						#define Triac2
		Touch 1key 4pad:
						#define _Switch_1Key_Dimmer_V1.1.0_H_
						#deinfe Triac1
		other:
*/

	#if Switch_use == 1
		//define
		#define DebounceTimeValue 	100//ms
		#define Hold1TimeValue 		1500//ms	
		#define Hold2TimeValue 		1500//ms
		#define Hold3TimeValue 		3000//ms

		//Global extern vriables declaration/
		struct Switch
		{
			unsigned Enable:1;
			unsigned Touch:1;
			unsigned Debounce:1;
			unsigned Hold1:1;
			unsigned Hold2:1;
			unsigned Hold3:1;
			unsigned Status:1;
			unsigned Flag:1;			
			unsigned Adj:1;

			unsigned char DebounceTime;
			unsigned int Hold1Time;
			unsigned int Hold2Time;
			unsigned int Hold3Time;
			
		};
		struct Switch *Sw;
	
		//***************************************************************
		#ifdef Triac1
			struct Switch Sw1;
		#endif
		#ifdef Triac2
			struct Switch Sw2;
		#endif
		#ifdef Triac3
			struct Switch Sw3;
		#endif
		//***************************************************************
	
		void SwPointSelect(char);
		void Switch_Initialization();
		void Switch_Main();
		void setSw_Initialization(char);
		void setSw_Main(char);
		void setSw_Enable(char,char);
		void Switch_Exception(char);
		void Sw_OnFunc(char);
		void Sw_OffFunc(char);
		void Sw_AdjFunc(char);
		void setSw_Status(char,char);
		void Sw_Detect();

		#ifdef TTPW
			void TouchPower();
		#else 
			#define TouchPower() ;		
		#endif

		//***************************************************************	
	#else
		#define SwPointSelect(char) ;
		#define Switch_Initialization() ;
		#define Switch_Main() ;
		#define setSw_Initialization(char) ;
		#define setSw_Main(char) ;
		#define setSw_Enable(char,char) ;
		#define Switch_Exception(char) ;
		#define Sw_OnFunc(char) ;
		#define Sw_OffFunc(char) ;
		#define Sw_AdjFunc(char) ;
		#define setSw_Status(char,char) ;
		#define Sw_Detect() ;
	#endif

//End file
#endif
