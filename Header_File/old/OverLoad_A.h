
#ifndef _OverLoad_H_
#define _OverLoad_H_

	#if OverLoad_use == 1		
		//Global extern variable declaration
		struct OverLoad
		{
			unsigned Enable:1;
			unsigned GO:1;
			unsigned Safe:1;
			unsigned ADtoGO:1;
			unsigned ERROR:1;
			unsigned Hold:1;	
			unsigned int Time;	
			unsigned int ErrorTime;
			unsigned char ErrorCount;
			unsigned char ErrorStatus;	
			unsigned char DetectCount;		
			unsigned ADtype AD;
			unsigned ADtype AllLoad; 
			unsigned ADtype ADH; 
			unsigned ADtype ADL; 	
			unsigned int JudgeValue;
			unsigned char ADH1;
			unsigned char ADH2;
			unsigned char ADL1;
			unsigned char ADL2;
			unsigned char AD1;
			unsigned char AD2;
			unsigned char Lights;
			unsigned char UpdateCount;	
			unsigned char LightsCount;
		};
		struct OverLoad VarLoad;
		struct OverLoad *Load;

		#define DetectCountValue 30
		#define Load_Initial() Load_Initial_1()
		#define Load_getAD() Load_getAD_1()
		#define Load_Main()	Load_Main_1()
		#define Load_ERROR_Main() Load_ERROR_Main_1()
		#define Detect_Load_AD_Main() Detect_Load_AD_1()
		#define setLoadtoEnable_Main() setLoadtoEnable_1()
		#define setLoadtoDisable_Main() setLoadtoDisable_1()		
		#define setLoad_GO_On_Main() setLoad_GO_On_1()
		#define setLoad_GO_Off_Main() setLoad_GO_Off_1()
		#define setLoad_ADHADL_Restore_Main() setLoad_ADHADL_Restore_1()
		#define addLoad_LightsCount()	Load->LightsCount++	
		#define subLoad_LightsCount()	Load->LightsCount--
		#define setLoad_JudgeValue_Main() Load->JudgeValue+=0x1e  //(0x1e*OverLoad->LightsCount)
		#define setLoad_Hold(command) OverLoad->Hold=command
		#define getLoad_Safe() Load->Safe
	#else
		#define setLoad_JudgeValue_Main() NOP()
		#define addLoad_LightsCount() NOP()
		#define subLoad_LightsCount() NOP()
		#define Detect_Load_AD_Main() NOP()
		#define setLoad_GO_On_Main() NOP()
		#define setLoad_GO_Off_Main() NOP()
		#define setLoadtoDisable_Main() NOP()
		#define setLoadtoEnable_Main() NOP()
		#define Load_Initial() NOP()
		#define Load_getAD() NOP()
		#define Load_Main() NOP()
		#define Load_ERROR_Main() NOP()
		#define setLoad_ADHADL_Restore_Main() NOP()
		#define setLoad_Hold(command) NOP()
		#define getLoad_Safe() 1
	#endif



//Function	

	//initial 1
	#define Load_Initial_1()\
				Load=&VarLoad;\
				;

	//get AD
	#define Load_getAD_1()\
				if(Load->ADtoGO)\
				{\
					setADCON1(FVRCON_1V);\
					setADCON0(OverLoad_Channel);\
					setADCGO();\
					if(Load->ADH < ADC_ADRES)\
					{\
						Load->ADH=ADC_ADRES;\
					}\
					else\
					{\
						if(Load->ADL > ADC_ADRES)\
							Load->ADL=ADC_ADRES;\
					}\
				}\
				;

	#define Load_Main_1()\
					if(Load->ERROR)\
					{\
						Load->ErrorTime++;\
						if(Load->ErrorTime >= 10000)\//ms
						{\
							Load->ErrorTime=0;\
							Load->ERROR=0;\
							Load_ERROR();\
						}\
					}\
					else\
					{\
						if(Load->GO)\
						{\
							if(Load->ADtoGO)\
							{\
								Load->Time++;\
								if(Load->Time >= 16)\//ms
								{\
									Load->Time=0;\
									if(Load->ADH >= Load->ADL)\
									{\
										Load->AD=Load->ADH-Load->ADL;\
										;\
										if(Load->DetectCount <= 30)\
										{\
											Load->DetectCount++;\
											if(Load->DetectCount == 1)\
											{\
												Load->JudgeValue=600;\
											}\
											else if(Load->DetectCount == 10)\
											{\
												if(Load->LightsCount == 1)\
												{\
													Load->JudgeValue=0x1e;\
												}\
												else\
												{\
													Load->JudgeValue=0x1e+Load->AllLoad;\
												}\
											}\
										}\
									}\
									if(Load->AD > Load->JudgeValue)\
									{\
										if(Load->DetectCount <= 10)\
										{\
											Load->ERROR=1;\
											Load_ERROR();\
											Load->ErrorStatus=1;\
										}\
										else\
										{\
											Load->ErrorCount++;\
											if(Load->ErrorCount >2)\
											{\
												Load->ErrorCount=0;\
												Load->ERROR=1;\
												Load_ERROR();\
												Load->ErrorStatus=2;\
											}\
										}\
									}\
									else\
									{\
										Load->ErrorCount=0;\
										if(Load->Safe)\
										{\
											Load->UpdateCount++;\
											if(Load->UpdateCount == 60)\
											{\
												Load->UpdateCount=0;\
												Load->AllLoad=Load->AD;\
											}\
											setTemp_Hold(0);\
										}\
										else\
										{\
											if(Load->DetectCount == 30)\
											{\
												Load->Safe=1;\
												Load->AllLoad=Load->AD;\
											}\
										}\
									}\
									;\//OverLoad->ADL1=OverLoad->AllLoad >> 8;
									;\//OverLoad->ADL2=OverLoad->AllLoad & 0x00ff;
									;\//OverLoad->AD1=OverLoad->AD >> 8;
									;\//OverLoad->AD2=OverLoad->AD & 0x00ff;
									;\//OverLoad->ADH1=OverLoad->JudgeValue >> 8;
									;\//OverLoad->ADH2=OverLoad->JudgeValue & 0x00ff;
									setLoad_ADHADL_Restore();\
								}\
							}\
							else\
							{\
								if(Load->Hold)\
								{\
									Load->Hold=0;\
								}\
								else\
								{\
									Load->ADtoGO=1;\
								}\
							}\
						}\
					}\
					;


	//ERROR	
	#define Load_ERROR_Main_1()\
				if(Load->ERROR)\
				{\
					Load->ADtoGO=0;\
					Load->Time=0;\
					Load->DetectCount=0;\
					Load->Safe=0;\
					Lights_ERROR();\
					Dimmer_ERROR();\
					setErrLED(11);\
					setSw1_Enable(1);\
					setSw2_Enable(1);\
					setSw3_Enable(1);\
					setRF_Enable(0);\
				}\
				else\
				{\
					setErrLED(10);\
					setSw1_Enable(1);\
					setSw2_Enable(1);\
					setSw3_Enable(1);\
					setRF_Enable(1);\
				}\
				;
	
	//disable 1
	#define setLoadtoDisable_1()\
				Load->Enable=0;\
				Load->GO=0;\
				Load->ADtoGO=0;\
				Load->DetectCount=0;\
				Load->ErrorCount=0;\
				Load->Time=0;\
				Load->Safe=0;\
				Load->AllLoad=0;\
				Load->UpdateCount=0;\
				setLoad_ADHADL_Restore();\
				;
	//enable 1
	#define setLoadtoEnable_1()\
				Load->Enable=1;\
				;

	//overload go 
	#define setLoad_GO_On_1()\
				if(Load->Enable)\
				{\
					if(Load->GO)\
					{\
						Load->ADtoGO=0;\
						Load->DetectCount=0;\
						Load->ErrorCount=0;\
						Load->Time=0;\
						Load->Safe=0;\
						setLoad_ADHADL_Restore();\
					}\
					else\
					{\
						Load->GO=1;\
					}\
				}\
				;

	#define setLoad_GO_Off_1()\
				Load->GO=0;\
				Load->ADtoGO=0;\
				Load->DetectCount=0;\
				Load->ErrorCount=0;\
				Load->Time=0;\
				Load->Safe=0;\
				Load->AllLoad=0;\
				Load->UpdateCount=0;\
				setLoad_ADHADL_Restore();\
				Load->ADH1=0;\
				Load->ADH2=0;\
				Load->ADL1=0;\
				Load->ADL2=0;\
				;

	#define Detect_Load_AD_1()\
				if(Load->GO && Load->Safe == 0)\
				{\
					setTemp_Hold(1);\
				}\
				else\
				{\
					if(Load->GO)\
					{\
						Load->ADtoGO=0;\
						Load->Time=0;\
						setLoad_ADHADL_Restore();\
					}\
				}\
				;

	#define setLoad_ADHADL_Restore_1()\
				Load->ADH=ADH_Restore;\
				Load->ADL=ADL_Restore;\
				;

//NOP
		void Detect_Load_AD();
		void setLoad_GO_On();
		void setLoad_GO_Off();
		void setLoadtoDisable();
		void setLoadtoEnable();
		void setLoad_ADHADL_Restore();
		void Load_ERROR();
		void setLoad_JudgeValue();



#endif
