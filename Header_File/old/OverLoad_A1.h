
#ifndef _OverLoad_H_
#define _OverLoad_H_

	#if OverLoad_use == 1		
		//Global extern variable declaration
		struct OverLoad
		{
			unsigned Enable:1;
			unsigned GO:1;
			unsigned LightsON:1;
			unsigned Safe:1;
			unsigned ADtoGO:1;
			unsigned ERROR:1;	
			unsigned int Time;	
			unsigned int ErrorTime;
			unsigned char ErrorStatus;	
	
		//	unsigned ADtype AD;
		//	unsigned ADtype AllLoad; 
		//	unsigned ADtype ADH[2]; 
		//	unsigned ADtype ADL[2]; 
			unsigned int AD;
			unsigned int AllLoad; 
			unsigned int ADH[2]; 
			unsigned int ADL[2]; 	
			unsigned int LightsJudgeValue;
			unsigned int JudgeValue;
			unsigned int Judge;

			unsigned char Count;
			unsigned char ErrorCount;
			unsigned char UpdateCount;	
			unsigned char LightsCount;
			unsigned char NumberCount;
		};

		struct OverLoad VarOverLoad;
		struct OverLoad *OverLoad;

		#define DetectCountValue 30

		#define Load_Initial_Main() Load_Initial_1()
		#define Load_getAD_Main() Load_getAD_1()
		#define Load_Main_Content()	Load_Main_1()
		#define Load_ERROR_Main() Load_ERROR_Main_1()
		#define setLoad_Enable_Main() setLoad_Enable_Main_1()	
		#define setLoad_ADHADL_Restore_Main() setLoad_ADHADL_Restore_1()
		#define getLoad_Safe() OverLoad->Safe
		#define setLoad_GO(command)	OverLoad->GO=command
		#define setLoad_LightsCount_Main() setLoad_LightsCount_Main_1()

		void Load_Initial();
		void setLoad_Enable(char);
		void setLoad_ADHADL_Restore();
		void Load_ERROR(char);
		void Load_Main();
		void setLoad_JudgeValue();
		void setLoad_LightsCount(char);
		void Load_getAD();
	#else
		#define setLoad_JudgeValue_Main() NOP()
		#define setLoad_Enable_Main() NOP()
		#define Load_Initial() NOP()
		#define Load_getAD_Main() NOP()
		#define Load_Main_Content() NOP()
		#define Load_ERROR_Main() NOP()
		#define setLoad_ADHADL_Restore_Main() NOP()
		#define getLoad_Safe()	1
		#define setLoad_GO(command) NOP()
		#define setLoad_LightsCount_Main() NOP()
		#define setLoad_Enable() NOP()

		#define Load_Initial() NOP()
		#define setLoad_Enable(char) NOP()
		#define setLoad_ADHADL_Restore() NOP()
		#define Load_ERROR(char) NOP()
		#define Load_Main() NOP()
		#define setLoad_JudgeValue() NOP()
		#define setLoad_LightsCount(char) NOP()
		#define Load_getAD() NOP()
	#endif



//Function	

	//initial 1
	#define Load_Initial_1()\
				OverLoad=&VarOverLoad;\
				OverLoad->Safe=1;\
				;\//setLoad_ADHADL_Restore();
				OverLoad->ADH[0]=0;\
				OverLoad->ADH[1]=0;\
				OverLoad->ADL[0]=0xffff;\
				OverLoad->ADL[1]=0xffff;\
				;

	//get AD
	#define Load_getAD_1()\
				if(OverLoad->ADtoGO)\
				{\
					setADCON1(FVRCON_1V);\
					setADCON0(OverLoad_Channel);\
					setADCGO();\
					if(OverLoad->ADH[0] < ADC_ADRES)\
					{\
						OverLoad->ADH[0]=ADC_ADRES;\
					}\
					else if(OverLoad->ADH[1] < ADC_ADRES)\\
					{\
						OverLoad->ADH[1]=ADC_ADRES;\
					}\
					else\
					{\
						if(OverLoad->ADL[0] > ADC_ADRES)\
						{\
							OverLoad->ADL=ADC_ADRES;\
						}\
						else if(OverLoad->ADL[1] > ADC_ADRES)\
						{\
							OverLoad->ADL[1]=ADC_ADRES;\
						}\
					}\
				}\
				;

	#define Load_Main_1()\
					if(OverLoad->ERROR)\
					{\
						OverLoad->ErrorTime++;\
						if(OverLoad->ErrorTime >= 10000)\//ms
						{\
							OverLoad->ErrorTime=0;\
							OverLoad_ERROR(0);\
						}\
					}\
					if(OverLoad->ADtoGO)\
					{\
						OverLoad->Time++;\
						if(OverLoad->Time >= 32)\//ms
						{\
							OverLoad->Time=0;\
							OverLoad->ADtoGO=0;\
							if(OverLoad->ADH > OverLoad->ADL)\
							{\
								OverLoad->AD=(Load->ADH[1] & 0xffff)-(OverLoad->ADL[1] & 0xffff);\
								if(OverLoad->Count < 20)\
								{\
									OverLoad->Count++;\
									OverLoad->JudgeValue=600;\
									if(OverLoad->Count == 5)\
									{\
										OverLoad->JudgeValue=OverLoad->Judge;\
									}\
								}\
								if(OverLoad->AD > OverLoad->JudgeValue)\
								{\
									if(OverLoad->Count < 5)\
									{\
										OverLoad_ERROR(1);\
										OverLoad->ErrorStatus=1;\
									}\
									else\
									{\
										OverLoad->ErrorCount++;\
										if(OverLoad->ErrorCount >2)\
										{\
											OverLoad->ErrorCount=0;\
											OverLoad_ERROR(1);\
											OverLoad->ErrorStatus=2;\
										}\
									}\
								}\
								else\
								{\
									OverLoad->ErrorCount=0;\
									if(OverLoad->Count > 5)\
									{\
										OverLoad->AllLoad=Load->AD;\
									}\
									if(OverLoad->Count > 15)\
									{\
										OverLoad->Safe=1;\
									}\
								}\
							}\
							setProductData(2,((OverLoad->AD & 0xff00) >> 8));\
							setProductData(3,(OverLoad->AD & 0xff00);\
							setProductData(4,((OverLoad->ADH[1] & 0xff00) >> 8));\
							setProductData(5,(OverLoad->ADH[1] & 0xff00);\
							setProductData(6,((OverLoad->ADL[1] & 0xff00) >> 8));\
							setProductData(7,(OverLoad->ADL[1] & 0xff00);\
							setProductData(8,OverLoad->NumberCount);\
							setProductData(10,OverLoad->AllLoad);\
							setProductData(16,((OverLoad->JudgeValue & 0xff00) >> 8));\
							setProductData(17,(OverLoad->JudgeValue & 0xff00);\
							setProductData(18,OverLoad->ErrorStatus);\
							setProductData(19,OverLoad->Count);\
							;\//setLoad_ADHADL_Restore();
							OverLoad->ADH[0]=0;\
							OverLoad->ADH[1]=0;\
							OverLoad->ADL[0]=0xffff;\
							OverLoad->ADL[1]=0xffff;\
						}\
					}\
					else\
					{\
						if(OverLoad->GO)\
						{\
							if(OverLoad->LightsON == 0)\
							{\
								OverLoad->LightsON=1;\
								OverLoad->Safe=0;\
								ErrLED=0;\
							}\
							if(getTemp_Safe())\
							{\
								OverLoad->ADtoGO=1;\
							}\
						}\
						else\
						{\
							if(OverLoad->LightsON)\
							{\
								OverLoad->LightsON=0;\
								OverLoad->ErrorCount=0;\
								OverLoad->Count=0;\
								OverLoad->UpdateCount=0;\
								OverLoad->AllLoad=0;\
								OverLoad->LightsCount=0;\
								;\//setLoad_ADHADL_Restore();
								OverLoad->ADH[0]=0;\
								OverLoad->ADH[1]=0;\
								OverLoad->ADL[0]=0xffff;\
								OverLoad->ADL[1]=0xffff;\
								setProductData(2,((OverLoad->AD & 0xff00) >> 8));\
								setProductData(3,(OverLoad->AD & 0xff00);\
								setProductData(4,((OverLoad->ADH[1] & 0xff00) >> 8));\
								setProductData(5,(OverLoad->ADH[1] & 0xff00);\
								setProductData(6,((OverLoad->ADL[1] & 0xff00) >> 8));\
								setProductData(7,(OverLoad->ADL[1] & 0xff00);\
								setProductData(8,OverLoad->NumberCount);\
								setProductData(10,OverLoad->AllLoad);\
								setProductData(16,((OverLoad->JudgeValue & 0xff00) >> 8));\
								setProductData(17,(OverLoad->JudgeValue & 0xff00);\
								setProductData(18,OverLoad->ErrorStatus);\
								setProductData(19,OverLoad->Count);\
								ErrLED=1;\
								if(OverLoad->ERROR == 0)\
								{\
									OverLoad->Safe=1;\
								}\
							}\
						}\
					}\
					;

	//ERROR	
	#define Load_ERROR_Main_1()\
				if(command)\
				{\
					setDimmable_LoadERROR(1);\
					OverLoad->ERROR=1;\
					OverLoad->Safe=0;\
					Dimmer_ERROR();\
					setErrLED(11);\
					setSw1_Enable(0);\
					setSw2_Enable(0);\
					setSw3_Enable(0);\
					setRF_Enable(0);\
				}\
				else if(command == 0)\
				{\
					setDimmable_LoadERROR(0);\
					OverLoad->ERROR=0;\
					OverLoad->Safe=1;\
					setErrLED(10);\
					setSw1_Enable(1);\
					setSw2_Enable(1);\
					setSw3_Enable(1);\
					setRF_Enable(1);\
				}\
				;
	

	#define setLoad_LightsCount_Main_1()\
				if(command == 1)\
				{\
					OverLoad->NumberCount++;\
				}\
				else if(command == 2)\
				{\
					OverLoad->NumberCount--;\
				}\
				if(OverLoad->NumberCount > 1)\
				{\
					OverLoad->Judge=0x10+OverLoad->AllLoad;\
				}\
				else\
				{\
					OverLoad->Judge=0x10;\
				}\
				OverLoad->Count=0;\
				;


	//enable 1
	#define setLoad_Enable_Main_1()\
				if(command)\
				{\
					OverLoad->Enable=1;\
				}\
				else\
				{\
					OverLoad->Enable=0;\
					OverLoad->GO=0;\
				}\
				;


	#define setLoad_ADHADL_Restore_1()\
				;\//Load->ADH=ADH_Restore;
				;\//Load->ADL=ADL_Restore;
				;


#endif
