
#ifndef _OverTemperature_H_
#define _OverTemperature_H_

	#if OverTemperature_use == 1

		struct OverTemp
		{
			unsigned Enable:1;
			unsigned ERROR:1;
			unsigned ADtoGO:1;
			unsigned LoadADGO:1;
			unsigned Safe:1;

			unsigned int Time;
			unsigned char Count;		
			unsigned ADtype AD;
			unsigned ADtype ADH[2];
			unsigned ADtype ADRES;
			unsigned char AD1;
			unsigned char AD2;
		};	

		struct OverTemp *Temp;

		#define TempCountValue 	3
		#define TempDangerValue	475		//NTC 68度 value 500
										//NTC 71度 value 490
										//NTC 73.5度 value 480	

		#define TempSafeValue	540		//NTC 47度 value 600
										//NTC 61.2度 value 540	
										//NTC 58度 value 535

		#ifdef SYSC1
			struct OverTemp Temp1;
		#endif



		void TempPointSelect(char);
		void Temp_Initialization();
		void Temp_Main();
		void setTemp_Initialization(char);
		void setTemp_Main(char);
		void getTemp_AD(char,char);
		void setOverTemp_ERROR(char,char);
		void setTemp_Enable(char,char);
		char getTemp_Safe(char);
		char getTemp_ERROR(char);
	#else
		//NOP
		#define getTemp_Safe(char) 1
		#define getTemp_ERROR(char) 0
		#define TempPointSelect(char) ;
		#define Temp_Initialization() ;
		#define Temp_Main() ;
		#define setTemp_Initialization(char) ;
		#define setTemp_Main(char) ;
		#define getTemp_AD(char,char) ;
		#define setOverTemp_ERROR(char,char) ;
		#define setTemp_Enable(char,char) ;

	#endif
				
#endif

