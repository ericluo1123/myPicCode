
#ifndef _SYSC_A_H_
#define _SYSC_A_H_
	
	#ifdef MSYSC
		bit MSYSC_Signal;

		//MSYSC main
		#define MSYSC_Main()\
					if(MSYSC == 1)\
					{\
						SYSC_GetTempAD();\
						if(MSYSC_Signal == 0)\
						{\
							MSYSC_Signal=1;\
						}\
					}\
					else\
					{\
						if(MSYSC_Signal == 1)\
						{\
							MSYSC_Signal=0;\
							SYSC_TempMain();\
						}\
					}\
					;

	#endif
	
	#ifndef MSYSC_Main()
		#define MSYSC_Main() NOP()
	#endif

	#if SYSC_use == 1
		//Global extern variable declaration
		struct SYSC
		{
			unsigned Enable:1;
			unsigned ERROR:1;
			unsigned PowerON:1;	
			unsigned int Time;
			unsigned int Count;
		}; 
		struct SYSC VarSYSC;
		struct SYSC *SYSC;

		//define
		#define SYSC_PowerOnTime	250//ms
		#define SYSCTime			1000//ms
		
		//initial
		#define SYSC_Initial()\
					SYSC=&VarSYSC;\
					SYSC->Enable=1;\
					;

		//detect	
		#define SYSC_Detect()\
					if(MSYSC_Signal == 0)\
					{\
						SYSC->Time++;\
						if(SYSC->Time >= SYSCTime)\
						{\
							SYSC->Time=0;\
							if(SYSC->PowerON == 0)\
							{\
								SYSC_PowerOFF();\
							}\
							else\
							{\
								SYSC->ERROR=1;\
								SYSC_ERROR();\
							}\
						}\
					}\
					else\
					{\
						SYSC->Time=0;\
						if(SYSC->PowerON == 0)\
						{\
							SYSC->Count++;\
							if(SYSC->Count >= SYSC_PowerOnTime)\
							{\
								SYSC->Count=0;\
								SYSC_PowerON();\
							}\
						}\
					}\
					;

		//ERROR Restore
		#define SYSC_PowerON() SYSC_PowerON_1()
		#define SYSC_PowerOFF()	SYSC_PowerOFF_1()
		#define SYSC_ERROR() SYSC_ERROR_1()
		#define SYSC_Restore() SYSC_Restore_1()
		#define SYSC_ERROR_Value SYSC->ERROR
		#define SYSC_TempADGO_Value SYSC->TempADGO==0
	#endif
//NOP()
	#ifndef SYSC_TempADGO_Value
		#define SYSC_TempADGO_Value 1
	#endif SYSC_ERROR_Value

	#ifndef SYSC_ERROR_Value
		#define SYSC_ERROR_Value 0
	#endif SYSC_ERROR_Value

	#ifndef SYSC_Initial()
		#define SYSC_Initial() NOP()
	#endif								

	#ifndef SYSC_Detect()
		#define SYSC_Detect() NOP()
	#endif

	#ifndef SYSC_TempMain()
		#define SYSC_TempMain()
	#endif
	
	#ifndef SYSC_GetTempAD()
		#define SYSC_GetTempAD() NOP()
	#endif

	#ifndef SYSC_ERROR()
		#define SYSC_ERROR() NOP()
	#endif

	#ifndef SYSC_Restore()
		#define SYSC_Restore() NOP()
	#endif

	#ifndef SYSC_PowerON()
		#define SYSC_PowerON() NOP()
	#endif

	#ifndef SYSC_PowerOFF()
		#define SYSC_PowerOFF() NOP()
	#endif


//Function
	//ERROR
	#define SYSC_ERROR_1()\
		Lights_ERROR();\
		SwitchDisable();\
		setLED3(3);\
		;

	//Restore
	#define SYSC_Restore_1()\
		setLED3(2);\
		SwitchEnable();\
		;	

	//PowerON 
	#define SYSC_PowerON_1()\
				SYSC->PowerON=1;\
				SYSC->TempGO=1;\
				SwitchEnable();\
				setBuzzer(3,50);\
				setLED3(2);\
				;
	
	#define SYSC_PowerOFF_1()\
				setLED3(3);\
				;
#endif