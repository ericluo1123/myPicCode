
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
		
		struct OverTemp VarTemp;
		struct OverTemp *Temp;

		#define TempCountValue 	3
		#define TempDangerValue	475		//NTC 68度 value 500
										//NTC 71度 value 490
										//NTC 73.5度 value 480	

		#define TempSafeValue	540		//NTC 47度 value 600
										//NTC 61.2度 value 540	
										//NTC 58度 value 535

		#define setTemp_Enable(command) Temp->Enable=command
		#define setTemp_LoadADGO(command) Temp->LoadADGO=command
		#define getTemp_Safe() Temp->Safe
		#define getTemp_ERROR() Temp->ERROR

		void Temp_Initial();
		void Temp_getAD();
		void Temp_Main();
		void OverTemp_ERROR(char);
	#else
		//NOP
		#define setTemp_Enable(command) NOP()
		#define setTemp_LoadADGO(command) NOP()
		#define getTemp_Safe() 1
		#define getTemp_ERROR() 0

		#define Temp_Initial() NOP()
		#define Temp_getAD() NOP()
		#define Temp_Main() NOP()
		#define OverTemp_ERROR(char) NOP()
	#endif
				
#endif

