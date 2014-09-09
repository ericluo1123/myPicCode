
#ifndef _OverTemperature_H_
#define _OverTemperature_H_

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

		#define Temp_ERROR_Main() Temp_ERROR_Main_1()

		#define setOverTemptoReset() setOverTemptoReset_1()

		#define setOverTemptoDisable() setOverTemptoDisable_1()

		#define setOverTemptoEnable() setOverTemptoEnable_1()

		#define Detect_OverTemp_AD() Detect_OverTemp_AD_1()

		#define set_1_Temp_Hold() Temp->Hold=1
	#endif

	//NOP

	#ifndef set_1_Temp_Hold() 
		#define set_1_Temp_Hold()  NOP()
	#endif

	#ifndef Detect_OverTemp_AD()
		#define Detect_OverTemp_AD() NOP()
	#endif

	#ifndef setOverTemptoDisable()
		#define setOverTemptoDisable() NOP()
	#endif

	#ifndef setOverTemptoEnable()
		#define setOverTemptoEnable() NOP()
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
							Detect_OverLoad_AD();\
							if(Temp->Hold)\
							{\
								Temp->Hold=0;\
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
										Temp_ERROR_Main();\
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
										Temp_ERROR_Main();\
									}\
								}\
								else\
								{\
									Temp->Count=0;\
								}\
							}\
							Temp->AD1=Temp->AD >> 8;\
							Temp->AD2=Temp->AD & 0x00ff;\
							Temp->AD=0;\
						}\
					}\
				}\
				;

	//ERROR 1
	#define Temp_ERROR_Main_1()\
				if(Temp->ERROR)\
				{\
					set_1_Dimmer_TempERROR();\
					Lights_ERROR();\
					Dimmer_ERROR();\//if have dimmer function
					setErrLED(11);\
					SwitchDisable();\
					RF_Disable();\
				}\
				else\
				{\
					set_0_Dimmer_TempERROR();\
					setErrLED(10);\
					SwitchEnable();\
					RF_Enable();\
				}\
				;
	//disable 1
	#define setOverTemptoDisable_1()\
				Temp->Enable=0;\
				Temp->ADtoGO=0;\
				Temp->AD=0;\
				Temp->Count=0;\
				Temp->Time=0;\
				;
	//enable 1
	#define setOverTemptoEnable_1()\
				Temp->Enable=1;\
				;

	//Detect_OverTemp_AD 1
	#define Detect_OverTemp_AD_1()\
				if(Temp->ADtoGO)\
				{\
					set_1_Temp_Hold();\
				}\
				;
				
#endif

