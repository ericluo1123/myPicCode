
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
			unsigned char AD1;
			unsigned char AD2;
		};	
		
		struct OverTemp VarTemp;
		struct OverTemp *Temp;

		#define TempCountValue 	3
		#define TempDangerValue	600
		#define TempSafeValue	800

		//external use
		#define Temp_Initial() Temp_Initial_1()
		#define Temp_getAD() Temp_getAD_1()
		#define Temp_Main() Temp_Main_1()
		#define OverTemp_ERROR() OverTemp_ERROR_1()
		#define setTemp_Enable(command) Temp->Enable=command
		#define setTemp_LoadADGO(command) Temp->LoadADGO=command
		#define getTemp_Safe() Temp->Safe
	#else
		//NOP
		#define setTemp_Enable(command) NOP()
		#define setTemp_Enable(command) NOP()
		#define Temp_Initial() NOP()
		#define Temp_getAD() NOP()
		#define Temp_Main() NOP()
		#define setTemp_LoadADGO(command) NOP()
		#define getTemp_Safe() 1
	#endif

	
	//initial 1
	#define Temp_Initial_1()\
				Temp=&VarTemp;\
				Temp->Safe=1;\
				;

	//get ad 1
	#define Temp_getAD_1()\
			if(Temp->ADtoGO)\
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
				if(Temp->Enable)\
				{\
					if(Temp->ADtoGO == 0)\
					{\
						Temp->Time++;\
						if(Temp->Time >= 5000)\//ms
						{\
							if(getLoad_Safe())\
							{\
								Temp->Time=0;\
								Temp->ADtoGO=1;\
								Temp->Safe=0;\
							}\
							else\
							{\
								Temp->Time=5000;\
							}\
						}\
					}\
					else\
					{\
						Temp->Time++;\
						if(Temp->Time >= 32)\//ms
						{\
							Temp->Time=0;\
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
										OverTemp_ERROR();\
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
										OverTemp_ERROR();\
									}\
								}\
								else\
								{\
									Temp->Count=0;\
								}\
								if(Temp->ERROR == 0)\
								{\
									Temp->Safe=1;\
								}\
							}\
							setProductData(24,Temp->AD >> 8);\
							setProductData(25,Temp->AD);\
							Temp->AD=0;\
						}\
					}\
				}\
				;

	//ERROR 1
	#define OverTemp_ERROR_1()\
				if(Temp->ERROR)\
				{\
					setDimmable_TempERROR(1);\
					Dimmer_ERROR();\
					;\//Lights_ERROR();
					setErrLED(11);\
					setSw1_Enable(0);\
					setSw2_Enable(0);\
					setSw3_Enable(0);\
					setRF_Enable(0);\
				}\
				else\
				{\
					setDimmable_TempERROR(0);\
					Temp->Safe=1;\
					setErrLED(10);\
					setSw1_Enable(1);\
					setSw2_Enable(1);\
					setSw3_Enable(1);\
					setRF_Enable(1);\
				}\
				;

				
#endif

