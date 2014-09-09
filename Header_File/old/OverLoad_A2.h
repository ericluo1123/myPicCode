
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

		struct OverLoad VarLoad;
		struct OverLoad *Load;

		#define DetectCountValue 30
		#ifdef _Switch_3Key_Dimmer_V3.1.1_H_		
			#define LoadLimitValue 0x0a
		#endif

		#ifdef _Switch_2Key_Dimmer_V2.1.0_H_		
			#define LoadLimitValue 0x1a
		#endif

		#ifdef _Switch_1Key_Dimmer_V1.1.0_H_		
			#define LoadLimitValue 0x2f
		#endif

		#define getLoad_Safe() 		Load->Safe
		#define getLoad_ERROR()		Load->ERROR
		#define setLoad_GO(command)	Load->GO=command
		#define setLoad_StatusOn(command) Load->StatusOn=command
		#define setLoad_StatusOff(command) Load->StatusOff=command
	
		#define setLoad_Count(command) Load->Count=command;Load->SafeCount=command;

		#define setLoad_Lights1Status(command) Load->Lights1Status=command
		#define setLoad_Lights2Status(command) Load->Lights2Status=command
		#define setLoad_Lights3Status(command) Load->Lights3Status=command

		void Load_Initial();
		void setLoad_Enable(char);
		void setLoad_AH_AL_Restore();
		void Load_ERROR(char);
		void Load_Main();
		void setLoad_JudgeValue();
		void setLoad_LightsCount(char);
		void Load_getAD();
	#else
		#define getLoad_Safe()	1
		#define getLoad_ERROR() 0
		#define setLoad_GO(command)	NOP()
		#define setLoad_StatusOn(command) NOP()
		#define setLoad_StatusOff(command)
		#define setLoad_Count(command) NOP()
		#define setLoad_Lights1Status(command) NOP()
		#define setLoad_Lights2Status(command) NOP()
		#define setLoad_Lights3Status(command) NOP()

		#define Load_Initial() NOP()
		#define setLoad_Enable(char) NOP()
		#define setLoad_AH_AL_Restore() NOP()
		#define Load_ERROR(char) NOP()
		#define Load_Main() NOP()
		#define setLoad_JudgeValue() NOP()
		#define setLoad_LightsCount(char) NOP()
		#define Load_getAD() NOP()
	#endif

#endif
