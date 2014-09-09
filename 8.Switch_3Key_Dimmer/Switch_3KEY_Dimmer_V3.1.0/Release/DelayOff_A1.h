
#ifndef	_DelayOff_A1_H_
#define _DelayOff_A1_H_

	#if DelayOff_use == 1
		
		struct DelayOff
		{
			unsigned GO:1;
			unsigned char Value;
			unsigned int SecondTime;
			unsigned char MinuteTime;
		};

		#ifdef Triac1
			struct DelayOff *DelayOffSw1;
			struct DelayOff VarDelayOffSw1;

			#define DelayOffSw1_Initial() DelayOffSw1=&VarDelayOffSw1
			#define DelayOffSw1_Main() DelayOffSw1_Main_1()

			#define setDelayOffSw1_GO(command)\
						DelayOffSw1->GO=command;\
						DelayOffSw1->SecondTime=0;\
						;
						
			#define setDelayOffSw1_Value(value) DelayOffSw1->Value=value
		#else
			#define setDelayOffSw1_GO NOP()
			#define DelayOffSw1_Initial() NOP()
			#define DelayOffSw1_Content() NOP()

		#endif
	
		#ifdef Triac2
			struct DelayOff *DelayOffSw2;
			struct DelayOff VarDelayOffSw2;

			#define DelayOffSw2_Initial() DelayOffSw2=&VarDelayOffSw2
			#define DelayOffSw2_Main() DelayOffSw2_Main_1()

			#define setDelayOffSw2_GO(command)\
						DelayOffSw2->GO=command;\
						DelayOffSw2->SecondTime=0;\
						;
						
			#define setDelayOffSw2_Value(value) DelayOffSw2->Value=value
		#else
			#define setDelayOffSw2_GO NOP()
			#define DelayOffSw2_Initial() NOP()
			#define DelayOffSw2_Content() NOP()
		#endif
	
		#ifdef Triac3
			struct DelayOff *DelayOffSw3;
			struct DelayOff VarDelayOffSw3;

			#define DelayOffSw3_Initial() DelayOffSw3=&VarDelayOffSw3
			#define DelayOffSw3_Main() DelayOffSw3_Main_1()

			#define setDelayOffSw3_GO(command)\
						DelayOffSw3->GO=command;\
						DelayOffSw3->SecondTime=0;\
						;

			#define setDelayOffSw3_Value(value) DelayOffSw3->Value=value
		#else
			#define setDelayOffSw3_GO NOP()
			#define DelayOffSw3_Initial() NOP()
			#define DelayOffSw3_Content() NOP()
		#endif
	

		#define DelayOff_Initial()\
					DelayOffSw1_Initial();\
					DelayOffSw2_Initial();\
					DelayOffSw3_Initial();\
					;

		#define DelayOff_Main()\
					DelayOffSw1_Main();\
					DelayOffSw2_Main();\
					DelayOffSw3_Main();\
					;
	
	#else
		//NOP
		#define DelayOff_Initial() NOP()
		#define DelayOff_Main() NOP()
		#define DelayOffSw1_Initial() NOP()
		#define DelayOffSw2_Initial() NOP()
		#define DelayOffSw3_Initial() NOP()
		#define DelayOffSw1_Main() NOP()
		#define DelayOffSw2_Main() NOP()
		#define DelayOffSw3_Main() NOP()
		#define setDelaySw1_GO(command)
		#define setDelaySw2_GO(command)
		#define setDelaySw3_GO(command)
		#define setDelayOffSw1_Value(value)
		#define setDelayOffSw2_Value(value)
		#define setDelayOffSw3_Value(value)
		#define setDelayOffSw1_GO NOP()
		#define setDelayOffSw2_GO NOP()
		#define setDelayOffSw3_GO NOP()
	#endif



	#define DelayOffSw1_Main_1()\
				if(DelayOffSw1->GO)\
				{\
					DelayOffSw1->SecondTime++;\
					if(DelayOffSw1->SecondTime >= 60000)\
					{\
						DelayOffSw1->SecondTime=0;\
						DelayOffSw1->MinuteTime++;\
						if(DelayOffSw1->MinuteTime >= DelayOffSw1->Value)\
						{\
							DelayOffSw1->MinuteTime=0;\
							DelayOffSw1->GO=0;\
							setRFsw1_Status(0);\
							setSw1_Status(0);\
							setDimmerLights1(0);\
							setBuzzer(1,100);\
							setTxData();\
						}\
					}\
				}\
				;

	#define DelayOffSw2_Main_1()\
				if(DelayOffSw2->GO)\
				{\
					DelayOffSw2->SecondTime++;\
					if(DelayOffSw2->SecondTime >= 60000)\
					{\
						DelayOffSw2->SecondTime=0;\
						DelayOffSw2->MinuteTime++;\
						if(DelayOffSw2->MinuteTime >= DelayOffSw2->Value)\
						{\
							DelayOffSw2->MinuteTime=0;\
							DelayOffSw2->GO=0;\
							setRFsw2_Status(0);\
							setSw2_Status(0);\
							setDimmerLights2(0);\
							setBuzzer(1,100);\
							setTxData();\
						}\
					}\
				}\
				;

	#define DelayOffSw3_Main_1()\
				if(DelayOffSw3->GO)\
				{\
					DelayOffSw3->SecondTime++;\
					if(DelayOffSw3->SecondTime >= 60000)\
					{\
						DelayOffSw3->SecondTime=0;\
						DelayOffSw3->MinuteTime++;\
						if(DelayOffSw3->MinuteTime >= DelayOffSw3->Value)\
						{\
							DelayOffSw3->MinuteTime=0;\
							DelayOffSw3->GO=0;\
							setRFsw3_Status(0);\
							setSw3_Status(0);\
							setDimmerLights3(0);\
							setBuzzer(1,100);\
							setTxData();\
						}\
					}\
				}\
				;
#endif
