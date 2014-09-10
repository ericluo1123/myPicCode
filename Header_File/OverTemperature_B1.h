
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



	//	void TempPointSelect(char);
		void Temp_Initialization();
		void Temp_Main();
		void setTemp_Main();
		void setTemp_Initialization();
		void getTemp_AD(char);
		void setOverTemp_Exceptions(char);
		void setTemp_Enable(char);
		char getTemp_Safe();
		char getTemp_ERROR();
	#else
		//NOP
		#define getTemp_Safe() 1
		#define getTemp_ERROR() 0
		#define TempPointSelect() ;
		#define Temp_Initialization() ;
		#define Temp_Main() ;
		#define setTemp_Main() ;
		#define setTemp_Initialization() ;
		#define getTemp_AD(char) ;
		#define setOverTemp_Exceptions(char) ;
		#define setTemp_Enable(char) ;

	#endif
				
#endif

