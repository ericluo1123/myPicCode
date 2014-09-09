
#ifndef _SYSC_H_
#define _SYSC_H_

//=============================================================================
// Global Constants
//=============================================================================
#define	SYSCTimeValue			10	
#define OverTempTimeValue		100
#define OverLoadTimeValue		1875
#define	OverTemp_SafeValue		115			//default 109  65«×
#define	OverTemp_DangerValue	115			//default 116  75«×	

//=============================================================================
// Global Variables
//=============================================================================
//SYSC
struct SYSC
{
	unsigned Enable:1;
	unsigned ERROR:1;
	unsigned Signal:1;	
	unsigned char Time;
	unsigned char Count;
}VarSYSC,*SYSC; 

//OverTemperature
struct OverTemperature
{
	unsigned Enable:1;
	unsigned ERROR:1;
	unsigned ADGO:1;	
	unsigned GO:1;
	unsigned Restore:1;	
	unsigned char RunCount;
//	unsigned char ErrorCount;		
	unsigned int Time;
	unsigned int AD;
	unsigned char DetectValue;
//	unsigned char SafeValue;
//	unsigned char DangerValue;
}VarOverTemp,*OverTemp;

//OverLoad
struct OverLoad
{
	unsigned Enable:1;
	unsigned GO:1;
	unsigned OK:1;
	unsigned ADGO:1;
	unsigned ERROR:1;
	unsigned E1:1;
	unsigned E2:1;
	unsigned E3:1;		
	unsigned char RunCount;
	unsigned char ErrorCount;
	unsigned int Time;
	unsigned int ADH;
	unsigned int ADL;	
	unsigned int ADM;
	unsigned int ADValue;	
}VarOverLoad,*OverLoad;
//=============================================================================
// Function Routine
//=============================================================================
//SYSC
void SYSC_Initial();
void SYSC_Main();
void SYSC_Detect();

//OverTemp
void OverTemp_Main();
void OverTemp_Cleared(char);

//OverLoad
void OverLoad_Main();
void OverLoad_Cleared(char);

#endif
/***End file***/