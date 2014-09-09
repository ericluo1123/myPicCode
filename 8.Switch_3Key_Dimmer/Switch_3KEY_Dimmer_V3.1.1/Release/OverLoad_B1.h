
#ifndef _OverLoad_H_
#define _OverLoad_H_

	#if OverLoad_use == 1		
		#ifdef Switch_Key == 3		
			#define LoadLimitValue 0x1a
		#endif

		#ifdef Switch_Key == 2			
			#define LoadLimitValue 0x1a
		#endif

		#ifdef Switch_Key == 1			
			#define LoadLimitValue 0x1a
		#endif

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

			unsigned ADtype TotalLoad; 
			unsigned ADtype AH[9];
			unsigned ADtype AL[9];
			unsigned ADtype AD;
			unsigned ADtype ADH;
			unsigned ADtype ADL;
			unsigned ADtype ADRES;
	
			unsigned int LightsJudgeValue;
			unsigned int JudgeValue;
			unsigned int Judge;

			unsigned char Count;
			unsigned char OffCount;
			unsigned char ErrorCount;
			unsigned char UpdateCount;	
			unsigned char LightsCount;
			unsigned char NumberCount;
			unsigned char CloseCount;
			unsigned char ADCount;
			unsigned char SafeCount;

			unsigned char Lights1Status;
			unsigned char Lights2Status;
			unsigned char Lights3Status;
			unsigned StatusOn:1;
			unsigned StatusOff:1;
		};

		struct OverLoad *Load;
		
		#ifdef OverLoad1
			struct OverLoad Load1;
		#endif

		#define DetectCountValue 30

		void LoadPointSelect(char);
		void Load_Initialization();
		void Load_Main();
		void setLoad_Initialization(char);
		void setLoad_Main(char);
		void getLoad_AD(char,char);
		void setLoad_ERROR(char,char);
		void setLoad_Enable(char,char);
		void setLoad_LightsCount(char,char);
		void setLoad_AH_AL_Restore(char);
		void setLoad_LightsStatus(char,char,char);
		void setLoad_Count(char,char);
		void setLoad_GO(char,char);
		void setLoad_StatusOn(char,char);
		void setLoad_StatusOff(char,char,char); 
		char getLoad_Safe(char); 
		char getLoad_ERROR(char);

	#else
		#define getLoad_Safe(char) 1 
		#define getLoad_ERROR(char) 0
		#define LoadPointSelect(char) ;
		#define Load_Initialization() ;
		#define Load_Main() ;
		#define setLoad_Initialization(char) ;
		#define setLoad_Main(char) ;
		#define getLoad_AD(char,char) ;
		#define setLoad_ERROR(char,char) ;
		#define setLoad_Enable(char,char) ;
		#define setLoad_LightsCount(char,char) ;
		#define setLoad_AH_AL_Restore(char) ;
		#define setLoad_LightsStatus(char,char,char) ;
		#define setLoad_Count(char,char) ;
		#define setLoad_GO(char,char) ;
		#define setLoad_StatusOn(char,char) ;
		#define setLoad_StatusOff(char,char,char) ; 
	#endif

#endif
