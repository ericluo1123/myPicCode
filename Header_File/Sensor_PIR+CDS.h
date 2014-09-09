
#ifndef _Sensor_PIR+CDS_H_
#define _Sensor_PIR+CDS_H_


//PIR**********************************************************
/*Define*/
  #define RangeMaximum			45
  #define RangeMedium			25
  #define RangeMinimum			8


///*Global extern variable declaration*/
struct PIR
{
	//enable
	unsigned Enable:1;

	//AD
	unsigned ADGO:1;
	unsigned char VRAD;
	unsigned char VRAD1;
	unsigned char SignalAD;
	unsigned char Time;
	unsigned char ADCount;
	unsigned char CenterVoltage;
	unsigned char TenAverage[10];
	unsigned int TenAverageValue;	
	
	//main
	unsigned GO:1;
	unsigned OK:1;
	unsigned Switch:1;
	unsigned int Count;
	unsigned int CloseTime;
	unsigned int CloseTimeValue;

	//auto gain
	unsigned RangeRun:1;
	unsigned char RangeTime;
	unsigned char RangeTime1;
	unsigned char RangeCount;
	unsigned char RangeValue;
	unsigned char RangeCount1;


};
struct PIR VarPIR;
struct PIR *PIR;


//PIR initial
  #define PIR_Initial()\
	PIR=&VarPIR;\
	PIR->Enable=1;\
	PIR->RangeValue=RangeMinimum;\
	PIR->CloseTimeValue=150;\
	LED1 = LED1_ON

/*Routine declaration*/
void PIR_Restore();
void PIR_Main();
void PIR_Switch();

//**************************************************************



//CDS***********************************************************
//initial
  #define CDS_Initial()\
	CDS=&VarCDS;\
	CDS->Enable=1

/*Global extern variable declaration*/
struct CDS
{
	unsigned Enable:1;		
								
	unsigned GO:1;			
									
	unsigned char Time;
	unsigned OK:1;

	unsigned char VRAD;
	unsigned char SignalAD;
	unsigned char ADGO;	
};
struct CDS VarCDS;
struct CDS *CDS;

/*Routine declaration*/
void CDS_Restore();
void CDS_Main();

//**************************************************************


/***Setup***/
//**************************************************************
  #ifdef _PIR_Dimmer_Main_H_
  
  #define PIR_LED_ON\
	if(PIR->SignalAD<(PIR->CenterVoltage-PIR->RangeValue))\
		LED_Setting(1);\
	else if(PIR->SignalAD>(PIR->CenterVoltage+PIR->RangeValue))\
		LED_Setting(2)		

  #define PIR_LED_OFF\
	LED_Setting(0)		
  //phase	
  #if Phase == 1
  #define Dimmable\
	Dimmer->Triac = 1	
  #else
   	#define Dimmable	
  #endif
  #else
  #define PIR_LED_ON	
  #define PIR_LED_OFF	
  #define Dimmable		
  #endif
//**************************************************************

#endif
/*End file*/



