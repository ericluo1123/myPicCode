
#ifndef _Lights_Control_H_
#define _Lights_Control_H_

/***Global extern variable declaration***/
//Lights
struct Lights
{
	unsigned Enable:1;
	unsigned GO:1;		
	unsigned Status:1;
	unsigned char Time;
	unsigned char TriacTime;	
	unsigned char RelayTime;
	unsigned char Run;
	unsigned char Number;
};

/***Routine declaration***/

//main
	#define Lights_Control_Main()\
		Lights2_Set();\
		Lights1_Set();\
		Lights1_Main();\
		Lights2_Main()

//		
	

//Lights1 setting
	#define Lights1_Setting()\
			if(Lights1->Run > 0)\
			{\
				if(Lights1->Run == 11)\
				{\
					if(Lights1->Status == 0)\
					{\
						Lights1->Status = 1;\
						if(Relay1 == 0)\
						{\
							Lights1->GO =1;\
							Lights1->TriacTime=90;\
							Lights1->RelayTime=70;\
							Triac1=1;\
						}\
						else\
						{\
							Lights1->GO=0;\
							Triac1=0;\
						}\
					}\
				}\
				else if(Lights1->Run == 10)\
				{\
					if(Lights1->Status == 1)\
					{\
						Lights1->Status = 0;\
						if(Relay1 == 1)\
						{\
							Lights1->GO =1;\
							Lights1->TriacTime=40;\
							Lights1->RelayTime=20;\
							Triac1=1;\
						}\
						else\
						{\
							Lights1->GO=0;\
							Triac1=0;\
						}\
					}\
				}\
				Lights1->Run=0;\
			}

//Lights1_Run
		#define Lights1_Run()\
			if(Lights1->GO==1)\
			{\
				Lights1->Time++;\
				if(Lights1->Time == Lights1->RelayTime)\
				{\
					if(Lights1->Status==1)\
					{\
						Relay1=1;\
					}\
					else\
					{\
						Relay1=0;\
					}\
				}\
				if(Lights1->Time>=Lights1->TriacTime)\
				{\
					Lights1->Time=0;\
					Lights1->GO=0;\
					Triac1=0;\
				}\
			}
			
//Lights2 setting
	#define Lights2_Setting()\
			if(Lights2->Run > 0)\
			{\
				if(Lights2->Run == 21)\
				{\
					if(Lights2->Status == 0)\
					{\
						Lights2->Status = 1;\
						if(Relay2 == 0)\
						{\
							Lights2->GO =1;\
							Lights2->TriacTime=90;\
							Lights2->RelayTime=70;\
							Triac2=1;\
						}\
						else\
						{\
							Lights2->GO=0;\
							Triac2=0;\
						}\
					}\
				}\
				else if(Lights2->Run == 20)\
				{\
					if(Lights2->Status == 1)\
					{\
						Lights2->Status = 0;\
						if(Relay2 == 1)\
						{\
							Lights2->GO =1;\
							Lights2->TriacTime=40;\
							Lights2->RelayTime=20;\
							Triac2=1;\
						}\
						else\
						{\
							Lights2->GO=0;\
							Triac2=0;\
						}\
					}\
				}\
				Lights2->Run=0;\
			}

//Lights2_Run
		#define Lights2_Run()\
			if(Lights2->GO == 1)\
			{\
				Lights2->Time++;\
				if(Lights2->Time == Lights2->RelayTime)\
				{\
					if(Lights2->Status == 1)\
					{\
						Relay2=1;\
					}\
					else\
					{\
						Relay2=0;\
					}\
				}\
				if(Lights2->Time>=Lights2->TriacTime)\
				{\
					Lights2->Time=0;\
					Lights2->GO=0;\
					Triac2=0;\
				}\
			}



//PIR_Ceiling_Embed_V1 setting
	#ifdef _PIR_Ceiling_Embed_V1_H_
//variable declaration
		struct Lights	_Lights2;
		struct Lights	*Lights2;
//initial
		#define Lights_Control_Initial()\
			Lights2=&_Lights2;\
			Lights2->Enable=1
//Lights2 set
		#define Lights2_Set() 	Lights2_Setting()

//Lights2 main
		#define Lights2_Main()	Lights2_Run()

//Lights1 set
//		#define Lights1_Set() 	Lights1_Setting()

//Lights1 main
//		#define Lights1_Main()	Lights1_Run()
	#endif

	
	#ifndef	Lights1_Set()
		#define Lights1_Set()	NOP()
	#endif

	#ifndef Lights2_Set()
		#define Lights2_Set()	NOP()
	#endif

	#ifndef	Lights1_Main()	
		#define Lights1_Main() NOP()
	#endif

	#ifndef	Lights2_Main()	
		#define Lights2_Main() NOP()
	#endif
#endif
/*End file*/
