
#ifndef _OverTemperature_H_
#define _OverTemperature_H_

	#if OverTemperature_use == 1
		struct OverTemp
		{
			unsigned Enable:1;
			unsigned ERROR:1

			unsigned GO:1;
			unsigned ADtoGO:1;
			unsigned ERROR:1;
			unsigned int Time;
			unsigned char Count;
			unsigned ADtype AD;
			unsigned char ADH;
			unsigned char ADL;
		};	
		
		struct OverTemp VarTemp;
		struct OverTemp *Temp;

		#define TempTimeValue	5000//ms
		#define TempCountValue 	3

		#define TempDangerValue	600
		#define TempSafeValue	800

		#define Temp_Initial() Temp_Initial_1()

		#define Temp_getAD() Temp_getAD_1()

		#define Temp_Main() Temp_Main_1()

		#define Temp_ERROR() Temp_ERROR_1()

		#define Temp_ERROR_1 Temp->ERROR
	#endif

	//NOP
	#ifndef Temp_ERROR_1
		#define Temp_ERROR_1 0
	#endif

	#ifndef Temp_Initial()
		#define Temp_Initial() NOP()
	#endif
		
	#ifndef Temp_getAD()
		#define Temp_getAD() NOP()
	#endif

	#ifndef Temp_Main()
		#define Temp_Main() NOP()
	#endif

	#ifndef Temp_ERROR()
		#define Temp_ERROR() NOP()
	#endif
	
	//initial 1
	#define Temp_Initial_1()\
				Temp=&VarTemp;\
				Temp->Enable=1;\
	

	//get ad 1
	#define Temp_getAD_1()\
			if(Tempo->ADtoGO == 1)\
			{\
				setADCON1(ADCON1_VDD);\
				setADCON0(OverTemp_Channel);\
				setADCGO();\
				if(Temp->AD < ADC_ADRES)\
				{\
					Temp->AD=ADC_ADRES;\
				}\
			}\
			;
	
	//main 1
	#define Temp_Main_1()\
				if(Temp->GO == 1)\
				{\
					if(TempADtoGO == 0)\
					{\
						Temp->Time++;\
						if(Temp->Time >= TempTimeValue)\
						{\
							SYSC->TempTime=0;\
							SYSC->TempADGO=1;\
						}\
					}\
					else\
					{\
						Temp->ADtoGO=0;\
						if(Temp->ERROR)\
						{\
							if(Temp->AD >= TempSafeValue)\
							{\
								Temp->Count++;\
								if(Temp->Count >= TempCountValue)\
								{\
									Temp->Count=0;\
									Temp->ERROR=0;\	
									Temp_ERROR();\
								}\
							}\
							else\
							{\
								Temp->Count=0;\
							}\
						}\
						else\
						{\
							if(Temp->AD <= TempDangerValue)\
							{\
								Temp->Count++;\
								if(Temp->Count >= TempCountValue)\
								{\
									Temp->Count=0;\
									Temp->ERROR=1;\	
									Temp_ERROR();\
								}\
							}\
							else\
							{\
								Temp->Count=0;\
							}\
						}\
						Temp->ADH=Temp->AD >> 8;\
						Temp->ADL=Temp->AD & 0x00ff;\
						SYSC->TempAD=0;\
					}\
				}\
				;

	//ERROR 1
	#define Temp_ERROR_1()\
				if(Temp->ERROR)\
				{\
					setLED3(3);\	
					Dimmer_ERROR_1();\//if have dimmer function
				}\
				else\
				{\
					setLED3(2);\
				}\
				;
#endif

