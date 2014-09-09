
#ifndef _OverTemperature_A1_H_
#define _OverTemperature_A1_H_

	#if OverTemperature_use == 1

		struct OverTemp
		{
			unsigned Enable:1;
			unsigned ERROR:1;
			unsigned ADtoGO:1;
			unsigned Hold:1;

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

		#define setTemp_Hold(command) Temp->Hold=command
	#endif

	//NOP
	#ifndef setTemp_Enable(command)
		#define setTemp_Enable(command) NOP()
	#endif

	#ifndef Detect_OverTemp_AD()
		#define Detect_OverTemp_AD() NOP()
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
	
	//initial 1
	#define Temp_Initial_1()\
				Temp=&VarTemp;\
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
							Detect_Load_AD();\
							if(Temp->Hold)\
							{\
								Temp->Time=5000;\
							}\
							else\
							{\
								Temp->Time=0;\
								Temp->ADtoGO=1;\
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
							}\
							Product->Data[24]=Temp->AD >> 8;\
							Product->Data[25]=Temp->AD & 0x00ff;\
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
					setSwitchEnable(0);\
					setRF_Enable(0);\
				}\
				else\
				{\
					setDimmable_TempERROR(0);\
					setErrLED(10);\
					setSwitchEnable(1);\
					setRF_Enable(1);\
				}\
				;

				
#endif

