
#ifndef _Switch_A_H_
#define _Switch_A_H_

/*
Description:
	Function write :
		KeyON_Control()			
		KeyOFF_Control()
		KeyLearn_Control()
*/

	#if Switch_use == 1
		//define	
		#define DebounceTimeValue 	100		//50ms
		#define LearnTimeValue		1000	//ms

		#ifdef TTPW
			#define TouchPower()\
						while(TTPW == 0)\
				 			TTPW=1;\
						;		
		#endif

		#define init_SwitchLED()\
					setLED1(1);\
					setLED2(1);\
					setLED3(1);\
					;

		//Global extern vriables declaration/
		struct Switch
		{
			unsigned Enable:1;
			unsigned Debounce:1;
			unsigned LearnRun:1;
			unsigned LearnStop:1;
			unsigned DimmerRun:1;

			unsigned char DebounceTime;
			unsigned int LearnTime;

			unsigned Key1Status:1;
			unsigned Key1Flag:1;

			unsigned Key2Status:1;
			unsigned Key2Flag:1;

			unsigned Key3Status:1;
			unsigned Key3Flag:1;
		};
		struct Switch VarSwitch;
		struct Switch *Switch;

		//Initial
		#define setSwitchEnable(command) Switch->Enable=command;

		#define Key1Enable() Switch->Key1E=1;
		#define Key1Disable() Switch->Key1E=0;

		#define Key2Enable() Switch->Key2E=1;
		#define Key2Disable() Switch->Key2E=0;

		#define Key3Enable() Switch->Key3E=1;
		#define Key3Disable() Switch->Key3E=0;

		#define Switch_Initial() Switch_Initial_1()

		#define Switch_Main() Switch_Main_1()	

		#define KeyOn_Func() KeyOn_Func_1()
	
		#define KeyOff_Func() KeyOff_Func_1()
		
		#define KeyLearn_Func() KeyLearn_Func_1()

	//to external
		#define Switch_Debounce_1 Switch->Debounce

		#define set_1_Key1Falg() Switch->Key1Flag=1
				
		#define set_0_Key1Flag() Switch->Key1Flag=1				
	
		#define setSwitch_Key1Status(command) Switch->Key1Status=command
		#define setSwitch_Key2Status(command) Switch->Key2Status=command
		#define setSwitch_Key3Status(command) Switch->Key3Status=command

	#endif

//NOP
	#ifndef Key1Enable()
		#define Key1Enable() NOP()
	#endif

	#ifndef Key1Disable()
		#define Key1Disable() NOP()
	#endif

	#ifndef Key2Enable()
		#define Key2Enable() NOP()
	#endif

	#ifndef Key2Disable()
		#define Key2Disable() NOP()
	#endif

	#ifndef Key3Enable()
		#define Key3Enable() NOP()
	#endif

	#ifndef Key3Disable()
		#define Key3Disable() NOP()
	#endif



	#ifndef setSwitch_Key1Status(command)
		#define setSwitch_Key1Status(command) NOP()
	#endif

	#ifndef setSwitch_Key2Status(command)
		#define setSwitch_Key2Status(command) NOP()
	#endif

	#ifndef setSwitch_Key3Status(command)
		#define setSwitch_Key3Status(command) NOP()
	#endif

	#ifndef set_1_Key1Flag()
		#define set_1_Key1Flag() NOP()
	#endif

	#ifndef set_0_Key1Flag()
		#define set_0_Key1Flag() NOP()
	#endif

	#ifndef Switch_Debounce_1
		#define Switch_Debounce_1 0
	#endif

	#ifndef setSwitchEnable(command)
		#define setSwitchEnable(command) NOP()
	#endif

	
	#ifndef TouchPower()
		#define TouchPower() NOP()	
	#endif

	#ifndef Switch_Initial()
		#define Switch_Initial() NOP()
	#endif

	#ifndef Switch_Main()
		#define Switch_Main() NOP()
	#endif

	#ifndef TTPW
		#define TouchPower() NOP()			
	#endif
//Key
	#ifndef KeyON_Control()
		#define KeyON_Control() NOP()
	#endif

	#ifndef KeyOFF_Control()
		#define KeyOFF_Control() NOP()
	#endif

	#ifndef KeyLearn_Control()
		#define KeyLearn_Control() NOP()
	#endif


//initial 1
	#define Switch_Initial_1()\
				TouchPower();\
				init_SwitchLED();\
				Switch=&VarSwitch;\
				;


//main 1
	#define Switch_Main_1()\
				if(Switch->Enable == 1)\
				{\
					if((Key1) || (Key2) || (Key3))\
					{\
						if(Switch->Debounce == 0)\
						{\
							Switch->DebounceTime++;\
							if(Switch->DebounceTime >=  DebounceTimeValue)\
							{\
								Switch->DebounceTime=0;\
								Switch->Debounce=1;\
								KeyOn_Func();\//key on function		
							}\
						}\
						else\
						{\
							if(Switch->DimmerRun == 0)\
							{\
								Switch->LearnTime++;\
								if(Switch->LearnTime >= LearnTimeValue)\
								{\
									Switch->LearnTime=0;\
									Switch->DimmerRun=1;\
									KeyLearn_Func();\//key learn func
								}\
							}\
							else\
							{\
								if(Switch->LearnRun == 0)\
								{\
									Switch->LearnTime++;\
									if(Switch->LearnTime >= LearnTimeValue)\
									{\
										Switch->LearnTime=0;\
										Switch->LearnRun=1;\
										setRF_Learn(1);\
										setBuzzer(2,50);\
									}\
								}\
								else\
								{\
									if(Switch->LearnStop == 0)\
									{\
										Switch->LearnTime++;\
										if(Switch->LearnTime >= 3000)\//ms
										{\
											Switch->LearnTime=0;\
											Switch->LearnStop=1;\
											setRF_Learn(0);\
										}\
									}\
								}\
							}\
						}\
					}\
					else\
					{\
						if(Switch->Debounce==1)\
						{\
							Switch->DebounceTime++;\
							if(Switch->DebounceTime >=  DebounceTimeValue)\
							{\
								Switch->DebounceTime=0;\
								Switch->Debounce=0;\
								Switch->LearnTime=0;\
								Switch->LearnRun=0;\
								Switch->DimmerRun=0;\
								Switch->LearnStop=0;\
								setRF_Learn(0);\
								KeyOff_Func();\//key off func
							}\
						}\
					}\
				}\
				;


//Key Function
	#define KeyOn_Func_1()\
				if(Key1)\
				{\
					Switch->Key1Flag=1;\
					if(Switch->Key1Status == 0)\
					{\
						Switch->Key1Status=1;\
						setRF_Key1Status(1);\
						setDimmerLights1(1);\
						setBuzzer(1,100);\
						setTxData();\
					}\
					else\
					{\
						Switch->Key1Status=0;\
						setRF_Key1Status(0);\
						setBuzzer(1,100);\
					}\
				}\
				else if(Key2)\
				{\
					Switch->Key2Flag=1;\
					if(Switch->Key2Status == 0)\
					{\
						Switch->Key2Status=1;\
						setRF_Key2Status(1);\
						setDimmerLights2(1);\
						setBuzzer(1,100);\
						setTxData();\
					}\
					else\
					{\
						Switch->Key2Status=0;\
						setRF_Key2Status(0);\
						setBuzzer(1,100);\
					}\
				}\
				else if(Key3)\
				{\
					Switch->Key3Flag=1;\
					if(Switch->Key3Status == 0)\
					{\
						Switch->Key3Status=1;\
						setRF_Key3Status(1);\
						setDimmerLights3(1);\
						setBuzzer(1,100);\
						setTxData();\
					}\
					else\
					{\
						Switch->Key3Status=0;\
						setRF_Key3Status(0);\
						setBuzzer(1,100);\
					}\
				}\
				;

	#define KeyLearn_Func_1()\
				if(Switch->Key1Flag == 1)\
				{\
					setSwitch_Key1Status(1);\
					setRF_Key1Status(1);\
					setDimmerLights1_Adj(1);\
					setBuzzer(1,100);\
				}\
				else if(Switch->Key2Flag == 1)\
				{\
					setSwitch_Key2Status(1);\
					setRF_Key2Status(1);\
					setDimmerLights2_Adj(1);\
					setBuzzer(1,100);\
				}\
				else if(Switch->Key3Flag == 1)\
				{\
					setSwitch_Key3Status(1);\
					setRF_Key3Status(1);\
					setDimmerLights3_Adj(1);\
					setBuzzer(1,100);\
				}\
				;
				
	#define KeyOff_Func_1()\
				if(Switch->Key1Flag == 1)\
				{\
					Switch->Key1Flag=0;\
					if(Switch->Key1Status)\
					{\
						setDimmerLights1_Adj(0);\
					}\
					else\
					{\
						setDimmerLights1(0);\
					}\
					setTxData();\
				}\
				else if(Switch->Key2Flag == 1)\
				{\
					Switch->Key2Flag=0;\
					if(Switch->Key2Status)\
					{\
						setDimmerLights2_Adj(0);\
					}\
					else\
					{\
						setDimmerLights2(0);\
					}\
					setTxData();\
				}\
				else if(Switch->Key3Flag == 1)\
				{\
					Switch->Key3Flag=0;\
					if(Switch->Key3Status)\
					{\
						setDimmerLights3_Adj(0);\
					}\
					else\
					{\
						setDimmerLights3(0);\
					}\
					setTxData();\
				}\
				;
//End file
#endif
