
#ifndef _Switch_H_
#define _Switch_H_

/*
Description:
	Function write :
		KeyON_Control()			
		KeyOFF_Control()
		KeyLearn_Control()
*/

	#if Switch_use == 1
		//define
		#define DebounceTimeValue 	100//ms
		#define Hold1TimeValue 		1000//ms	
		#define Hold2TimeValue 		1000//ms
		#define Hold3TimeValue 		3000//ms


		#ifdef TTPW
			#define TouchPower()\
						while(TTPW == 0)\
				 			TTPW=1;\
							;
		#else 
			#define TouchPower() NOP()		
		#endif


		//Global extern vriables declaration/
		struct Switch
		{
			unsigned Enable:1;
			unsigned Debounce:1;
			unsigned Hold1:1;
			unsigned Hold2:1;
			unsigned Hold3:1;

			unsigned char DebounceTime;
			unsigned int Hold1Time;
			unsigned int Hold2Time;
			unsigned int Hold3Time;
			
			unsigned Status:1;
			unsigned Flag:1;
		};
	
		#ifdef Triac1
			struct Switch VarSw1;
			struct Switch *Sw1;

			#define Sw1_Initial() Sw1_Initial_1()
			#define Sw1_Main() Sw1_Main_1()

			#define setSw1_Enable(command) Sw1->Enable=command
			#define setSw1_Status(command) Sw1->Status=command

			#define getSw1_Debounce Sw1->Debounce
		#else 
			#define Sw1_Initial() NOP()
			#define Sw1_Main() NOP()
			#define setSw1_Enable(command) NOP()
			#define setSw1_Status(command) NOP()
			#define getSw1_Debounce NOP()
		#endif


		#ifdef Triac2
			struct Switch VarSw2;
			struct Switch *Sw2;

			#define Sw2_Initial() Sw2_Initial_1()
			#define Sw2_Main() Sw2_Main_1()

			#define setSw2_Enable(command) Sw2->Enable=command
			#define setSw2_Status(command) Sw2->Status=command

			#define getSw2_Debounce Sw2->Debounce
		#else 
			#define Sw2_Initial() NOP()
			#define Sw2_Main() NOP()
			#define setSw2_Enable(command) NOP()
			#define setSw2_Status(command) NOP()
			#define getSw2_Debounce NOP()
		#endif


		#ifdef Triac3
			struct Switch VarSw3;
			struct Switch *Sw3;

			#define Sw3_Initial() Sw3_Initial_1()
			#define Sw3_Main() Sw3_Main_1()

			#define setSw3_Enable(command) Sw3->Enable=command
			#define setSw3_Status(command) Sw3->Status=command

			#define getSw3_Debounce Sw3->Debounce
		#else 
			#define Sw3_Initial() NOP()
			#define Sw3_Main() NOP()
			#define setSw3_Enable(command) NOP()
			#define setSw3_Status(command) NOP()
			#define getSw3_Debounce NOP()
		#endif

	
		//initial 
		#define Switch_Initial()\
					TouchPower();\
					init_SwitchLED();\
					Sw1_Initial();\
					Sw2_Initial();\
					Sw3_Initial();\
					;
	
		//main
		#define Switch_Main()\
					Sw1_Main();\
					Sw2_Main();\
					Sw3_Main();\
					;

		#define init_SwitchLED()\
					setLED1(1);\
					setLED2(1);\
					setLED3(1);\
					;

		#define init_SwitchLED()\
					setLED1(1);\
					setLED2(1);\
					setLED3(1);\
					;

	#else
		#define init_SwitchLED() NOP()
		#define Switch_Initial() NOP()
		#define Switch_Main() NOP()
	#endif


	//sw1 initial 1
	#define Sw1_Initial_1()\
				Sw1=&VarSw1;\
				;

	//sw2 initial 1
	#define Sw2_Initial_1()\
				Sw2=&VarSw2;\
				;

	//sw3 initial 1
	#define Sw3_Initial_1()\
				Sw3=&VarSw3;\
				;


	//Sw1 main 1
	#define Sw1_Main_1()\
				if(Sw1->Enable == 1)\
				{\
					if(Key1)\
					{\
						if(Sw1->Debounce == 0)\
						{\
							Sw1->DebounceTime++;\
							if(Sw1->DebounceTime >=  DebounceTimeValue)\
							{\
								Sw1->DebounceTime=0;\
								Sw1->Debounce=1;\
								Sw1_OnFunc_1();\//key on function		
							}\
						}\
						else\
						{\
							if(Sw1->Hold1 == 0)\
							{\
								Sw1->Hold1Time++;\
								if(Sw1->Hold1Time >= Hold1TimeValue)\
								{\
									Sw1->Hold1Time=0;\
									Sw1->Hold1=1;\
									Sw1_LearnFunc_1();\//key learn func
								}\
							}\
							else\
							{\
								if(Sw1->Hold2 == 0)\
								{\
									Sw1->Hold2Time++;\
									if(Sw1->Hold2Time >= Hold2TimeValue)\
									{\
										Sw1->Hold2Time=0;\
										Sw1->Hold2=1;\
										setRF_Learn(1);\
										setBuzzer(2,50);\
									}\
								}\
								else\
								{\
									if(Sw1->Hold3 == 0)\
									{\
										Sw1->Hold3Time++;\
										if(Sw1->Hold3Time >= Hold3TimeValue)\//ms
										{\
											Sw1->Hold3Time=0;\
											Sw1->Hold3=1;\
											setRF_Learn(0);\
										}\
									}\
								}\
							}\
						}\
					}\
					else\
					{\
						if(Sw1->Debounce)\
						{\
							Sw1->DebounceTime++;\
							if(Sw1->DebounceTime >=  DebounceTimeValue)\
							{\
								Sw1->DebounceTime=0;\
								Sw1->Debounce=0;\
								Sw1->Hold1Time=0;\
								Sw1->Hold1=0;\
								Sw1->Hold2Time=0;\
								Sw1->Hold2=0;\
								Sw1->Hold3Time=0;\
								Sw1->Hold3=0;\
								setRF_Learn(0);\
								Sw1_OffFunc_1();\//key off func
							}\
						}\
					}\
				}\
				;

	//Sw2 main 1
	#define Sw2_Main_1()\
				if(Sw2->Enable == 1)\
				{\
					if(Key2)\
					{\
						if(Sw2->Debounce == 0)\
						{\
							Sw2->DebounceTime++;\
							if(Sw2->DebounceTime >=  DebounceTimeValue)\
							{\
								Sw2->DebounceTime=0;\
								Sw2->Debounce=1;\
								Sw2_OnFunc_1();\//key on function		
							}\
						}\
						else\
						{\
							if(Sw2->Hold1 == 0)\
							{\
								Sw2->Hold1Time++;\
								if(Sw2->Hold1Time >= Hold1TimeValue)\
								{\
									Sw2->Hold1Time=0;\
									Sw2->Hold1=1;\
									Sw2_LearnFunc_1();\//key learn func
								}\
							}\
							else\
							{\
								if(Sw2->Hold2 == 0)\
								{\
									Sw2->Hold2Time++;\
									if(Sw2->Hold2Time >= Hold2TimeValue)\
									{\
										Sw2->Hold2Time=0;\
										Sw2->Hold2=1;\
										setRF_Learn(1);\
										setBuzzer(2,50);\
									}\
								}\
								else\
								{\
									if(Sw2->Hold3 == 0)\
									{\
										Sw2->Hold3Time++;\
										if(Sw2->Hold3Time >= Hold3TimeValue)\//ms
										{\
											Sw2->Hold3Time=0;\
											Sw2->Hold3=1;\
											setRF_Learn(0);\
										}\
									}\
								}\
							}\
						}\
					}\
					else\
					{\
						if(Sw2->Debounce)\
						{\
							Sw2->DebounceTime++;\
							if(Sw2->DebounceTime >=  DebounceTimeValue)\
							{\
								Sw2->DebounceTime=0;\
								Sw2->Debounce=0;\
								Sw2->Hold1Time=0;\
								Sw2->Hold1=0;\
								Sw2->Hold2Time=0;\
								Sw2->Hold2=0;\
								Sw2->Hold3Time=0;\
								Sw2->Hold3=0;\
								setRF_Learn(0);\
								Sw2_OffFunc_1();\//key off func
							}\
						}\
					}\
				}\
				;


	//Sw3 main 1
	#define Sw3_Main_1()\
				if(Sw3->Enable == 1)\
				{\
					if(Key3)\
					{\
						if(Sw3->Debounce == 0)\
						{\
							Sw3->DebounceTime++;\
							if(Sw3->DebounceTime >=  DebounceTimeValue)\
							{\
								Sw3->DebounceTime=0;\
								Sw3->Debounce=1;\
								Sw3_OnFunc_1();\//key on function		
							}\
						}\
						else\
						{\
							if(Sw3->Hold1 == 0)\
							{\
								Sw3->Hold1Time++;\
								if(Sw3->Hold1Time >= Hold1TimeValue)\
								{\
									Sw3->Hold1Time=0;\
									Sw3->Hold1=1;\
									Sw3_LearnFunc_1();\//key learn func
								}\
							}\
							else\
							{\
								if(Sw3->Hold2 == 0)\
								{\
									Sw3->Hold2Time++;\
									if(Sw3->Hold2Time >= Hold2TimeValue)\
									{\
										Sw3->Hold2Time=0;\
										Sw3->Hold2=1;\
										setRF_Learn(1);\
										setBuzzer(2,50);\
									}\
								}\
								else\
								{\
									if(Sw3->Hold3 == 0)\
									{\
										Sw3->Hold3Time++;\
										if(Sw3->Hold3Time >= Hold3TimeValue)\//ms
										{\
											Sw3->Hold3Time=0;\
											Sw3->Hold3=1;\
											setRF_Learn(0);\
										}\
									}\
								}\
							}\
						}\
					}\
					else\
					{\
						if(Sw3->Debounce)\
						{\
							Sw3->DebounceTime++;\
							if(Sw3->DebounceTime >=  DebounceTimeValue)\
							{\
								Sw3->DebounceTime=0;\
								Sw3->Debounce=0;\
								Sw3->Hold1Time=0;\
								Sw3->Hold1=0;\
								Sw3->Hold2Time=0;\
								Sw3->Hold2=0;\
								Sw3->Hold3Time=0;\
								Sw3->Hold3=0;\
								setRF_Learn(0);\
								Sw3_OffFunc_1();\//key off func
							}\
						}\
					}\
				}\
				;


	//Key Function
	#define Sw1_OnFunc_1()\
				if(Key1)\
				{\
					setDelayOffSw1_GO(0);\
					Sw1->Flag=1;\
					if(Sw1->Status == 0)\
					{\
						Sw1->Status=1;\
						setRFsw1_Status(1);\
						setDimmerLights1(1);\
						setBuzzer(1,100);\
						setTxData();\
					}\
					else\
					{\
						Sw1->Status=0;\
						setRFsw1_Status(0);\
						setBuzzer(1,100);\
					}\
				}\
				;

	#define Sw2_OnFunc_1()\
				if(Key2)\
				{\
					setDelayOffSw2_GO(0);\
					Sw2->Flag=1;\
					if(Sw2->Status == 0)\
					{\
						Sw2->Status=1;\
						setRFsw2_Status(1);\
						setDimmerLights2(1);\
						setBuzzer(1,100);\
						setTxData();\
					}\
					else\
					{\
						Sw2->Status=0;\
						setRFsw1_Status(0);\
						setBuzzer(1,100);\
					}\
				}\
				;

	#define Sw3_OnFunc_1()\
				if(Key3)\
				{\
					setDelayOffSw3_GO(0);\
					Sw3->Flag=1;\
					if(Sw3->Status == 0)\
					{\
						Sw3->Status=1;\
						setRFsw3_Status(1);\
						setDimmerLights3(1);\
						setBuzzer(1,100);\
						setTxData();\
					}\
					else\
					{\
						Sw3->Status=0;\
						setRFsw3_Status(0);\
						setBuzzer(1,100);\
					}\
				}\
				;


	#define Sw1_LearnFunc_1()\
				if(Sw1->Flag)\
				{\
					Sw1->Status=1;\
					setRFsw1_Status(1);\
					setDimmerLights1_Adj(1);\
					setBuzzer(1,100);\
				}\

	#define Sw2_LearnFunc_1()\
				if(Sw2->Flag)\
				{\
					Sw2->Status=1;\
					setRFsw2_Status(1);\
					setDimmerLights2_Adj(1);\
					setBuzzer(1,100);\
				}\
				;

	#define Sw3_LearnFunc_1()\
				if(Sw3->Flag)\
				{\
					Sw3->Status=1;\
					setRFsw3_Status(1);\
					setDimmerLights3_Adj(1);\
					setBuzzer(1,100);\
				}\
				;
				

	#define Sw1_OffFunc_1()\
				if(Sw1->Flag)\
				{\
					Sw1->Flag=0;\
					if(Sw1->Status)\
					{\
						setDimmerLights1_Adj(0);\
					}\
					else\
					{\
						setDimmerLights1(0);\
					}\
					setTxData();\
				}\
				;

	#define Sw2_OffFunc_1()\
				 if(Sw2->Flag)\
				{\
					Sw2->Flag=0;\
					if(Sw2->Status)\
					{\
						setDimmerLights2_Adj(0);\
					}\
					else\
					{\
						setDimmerLights2(0);\
					}\
					setTxData();\
				}\
				;

	#define Sw3_OffFunc_1()\
				if(Sw3->Flag == 1)\
				{\
					Sw3->Flag=0;\
					if(Sw3->Status)\
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
