
#ifndef _Sensor_H_
#define _Sensor_H_

//CDS***********************************************************
/***Global extern variable declaration***/
struct CDS
{
	unsigned Enable:1;		
								
	unsigned GO:1;												
	unsigned char Time;
	unsigned OK:1;
	unsigned char VRAD;
	unsigned char SignalAD;
	unsigned ADCGO:1;	
};
struct CDS VarCDS;
struct CDS *CDS;

/*Routine declaration*/

//initial
	#define CDS_Initial()\
		CDS = &VarCDS;\
		CDS->Enable=1

//Restore
	#define CDS_Restore()\
		CDS->Time=0;	
//Main
	#define CDS_Main()\
		if(CDS->Enable==1)\
		{\
			CDS->Time++;\
			if(CDS->Time == 100)\//100ms
			{\
				CDS->Time=0;\
				CDS->ADCGO=1;\
				ADCON1=Ref_VDD;\
				;\
				;\//cds singal AD
				ADCON0=CDS_Signal_Channel;\
                                ;\//sample time();
				ADGO=1;\
				while(ADGO);\
				CDS->SignalAD=ADRES;\
				;\
				;\//cds  VR AD
				ADCON0=CDS_VR_Channel;\
		 		;\//sample time();
				ADGO=1;\
				while(ADGO);\
				CDS->VRAD=ADRES;\
				;\
				CDS->ADCGO=0;\
				CDS->GO=1;\
				;\
				if(CDS->GO==1)\
				{\
					CDS->GO=0;\
					if(CDS->OK==0)\
					{\
						if(CDS->SignalAD >= CDS->VRAD)\
						{\
							CDS->OK=1;\
						}\
					}\
					else\
					{\
						if(CDS->SignalAD <= (CDS->VRAD-100))\
						{\
							CDS->OK=0;\
						}\
					}\
				}\
			}\
		}

//*************************************************************


//PIR**********************************************************
	#define Signal_Processing_Version		1	//1		hundred average
												//2		ten average

///*Global extern variable declaration*/
struct PIR
{
	//enable
	unsigned Enable:1;

	//AD
	unsigned ADCGO:1;
	unsigned char VRAD;
	unsigned char VRAD1;
	unsigned char SignalAD;
	unsigned char Time;
	unsigned char ADCount;
	unsigned char ADCount1;
	unsigned char ReferenceVoltage;
	unsigned char TenAverage[10];
	unsigned int TenAverageValue;
	unsigned char HundredAverage[10];
	unsigned int HundredAverageValue;	
	
	//main
	unsigned GO:1;
	unsigned OK:1;
	unsigned Switch:1;
	unsigned int Count;
	unsigned char Trigger;
	unsigned int CloseTime;
	unsigned int CloseTimeValue;

	//auto gain
	unsigned RangeRun:1;
	unsigned char RangeTime;
	unsigned char RangeTime1;
	unsigned char RangeCount;
	unsigned char RangeValue;
	unsigned char RangeCount1;
	unsigned char Offset;
};
struct PIR VarPIR;
struct PIR *PIR;


//PIR initial
  #define PIR_Initial()\
	PIR=&VarPIR;\
	PIR->Enable=1;\
	PIR->Switch=1;\
	PIR->RangeValue=RangeMinimum;\
	PIR->Trigger=TurnOff_Trigger;\
	PIR->CloseTimeValue=PIR_CloseValue1;\//60s
	LED1_ON()

//restore
	#define PIR_Restore()\
		PIR->Time=0;
//main
	#define PIR_Main()\
		if(PIR->Enable == 1)\
		{\
			PIR->Time++;\
			if(PIR->Time == 100)\
			{\
				PIR->Time=0;\
				PIR->ADCGO=1;\
				ADCON1=Ref_VDD;\
				;\
			  	;\//pir VR AD
				ADCON0=PIR_VR_Channel;\
			  	;\//sample time();
				ADGO=1;\
				while(ADGO);\
				PIR->VRAD=ADRES/51;\
				;\
			  	;\//PIR signal AD
				ADCON0=PIR_Signal_Channel;\
			  	;\//sample time();	
				ADGO=1;\
				while(ADGO);\
				PIR->SignalAD=ADRES;\
				;\
				PIR->ADCGO=0;\
				PIR->GO=1;\
				;\//PIR VR
				;\
				if(PIR->VRAD == 0)\
					PIR->CloseTimeValue=PIR_CloseValue1;\//1min
				else if(PIR->VRAD == 1)\
					PIR->CloseTimeValue=PIR_CloseValue2;\//5min
				else if(PIR->VRAD == 2)\
					PIR->CloseTimeValue=PIR_CloseValue3;\//10min
				else if(PIR->VRAD == 3)\
					PIR->CloseTimeValue=PIR_CloseValue4;\//15min
				else if(PIR->VRAD >= 4)\
					PIR->CloseTimeValue=PIR_CloseValue5;\//20min
				;\
			  	;\//Signal Processing
				Signal_Processing();\
				;\
				PIR_Switch();\
				;\
				if(PIR->OK==1)\
				{\
					if(PIR->GO==1)\
					{\
						PIR->GO=0;\
						;\
						if(PIR->Switch == 1)\
						{\
							;\//AutoGain
							AutoGain();\
							;\
							;\//pir sensor
							PIR_Sensor();\
						}\
					}\
				}\
				else\
				{\
					;\//hardware initial time
					PIR->Count++;\
					if(PIR->Count == 300)\
					{\
						PIR->Count=0;\
						PIR->OK=1;\
						LED1_OFF();\
						Dimmable;\
					}\
				}\
			}\
		}
//Signal Processing
	#if Signal_Processing_Version == 1
		#define Signal_Processing()\
			PIR->TenAverage[PIR->ADCount]=PIR->SignalAD;\
			for(i=0;i<=9;i++)\
				PIR->TenAverageValue+=PIR->TenAverage[i];\
			PIR->HundredAverage[PIR->ADCount1]=(PIR->TenAverageValue/10);\
			PIR->TenAverageValue=0;\
			;\
			for(i=0;i<=9;i++)\
				PIR->HundredAverageValue+=PIR->HundredAverage[i];\
			PIR->ReferenceVoltage=(PIR->HundredAverageValue/10);\
			PIR->HundredAverageValue=0;\
			;\
			if(PIR->ADCount<10)\
				PIR->ADCount++;\
			else\
			{\
				PIR->ADCount=0;\
				if(PIR->ADCount1<10)\
					PIR->ADCount1++;\
				else\
					PIR->ADCount1=0;\
			} 
	#elif Signal_Processing_Version == 2
		#define Signal_Processing()\
			PIR->TenAverage[PIR->ADCount]=PIR->SignalAD;\
			for(i=0;i<=9;i++)\
				PIR->TenAverageValue+=PIR->TenAverage[i];\
			PIR->ReferenceVoltage=PIR->TenAverageValue/10;\
			PIR->TenAverageValue=0;\
			;\
			if(PIR->ADCount<10)\
				PIR->ADCount++;\
			else\
				PIR->ADCount=0
	#endif

//AutoGain
	#define AutoGain()\
		if(PIR->RangeTime<100)\
			PIR->RangeTime++;\
		else\
		{\
			PIR->RangeTime=0;\
			if(PIR->RangeCount>=90)\
			{\
				PIR->RangeCount=0;\
				PIR->RangeTime1=0;\
				PIR->RangeCount1=0;\
				;\
				if(PIR->RangeValue==RangeMinimum)\
					PIR->RangeValue=RangeMedium;\
				else if(PIR->RangeValue==RangeMedium)\
					PIR->RangeValue=RangeMaximum;\
			}\
			else\
			{\
				PIR->RangeCount1+=PIR->RangeCount;\
				PIR->RangeCount=0;\
				;\
				if(PIR->RangeTime1<6)\
					PIR->RangeTime1++;\
				else\
				{\
					PIR->RangeTime1=0;\
					if(PIR->RangeCount1<=10)\
					{\
						if(PIR->RangeValue==RangeMaximum)\
							PIR->RangeValue=RangeMedium;\
						else if(PIR->RangeValue==RangeMedium)\
							PIR->RangeValue=RangeMinimum;\
						;\
						PIR->RangeCount1=0;\
					}\
				}\
			}\
		}

//PIR Sensor 
	#define PIR_Sensor()\
		if((PIR->SignalAD>=(PIR->ReferenceVoltage-(PIR->RangeValue+PIR->Offset))) && (PIR->SignalAD<=(PIR->ReferenceVoltage+(PIR->RangeValue+PIR->Offset))))\
		{\
			PIR->Count=0;\
			PIR_LED_OFF();\
			;\
			PIR->CloseTime++;\
			if(PIR->CloseTime == PIR->CloseTimeValue)\
			{\
				PIR->CloseTime=0;\
				;\//Turn_Off_Lights();
			}\
		}\
		else\
		{\
			PIR->RangeCount++;\
			PIR->Count++;\
			if(PIR->Count == PIR->Trigger)\
			{\
				PIR->Count=0;\
				PIR->CloseTime=0;\
				Turn_On_Lights();\
			}\
			PIR_LED_ON();\
		}
	

//option
//PIR-Ceiling-PV02-3(20140517)
	#ifdef _PIR-Ceiling-PV02-3(20140517)_H_

		#define RangeMaximum			45
	  	#define RangeMedium				35
	  	#define RangeMinimum			25
		
		#define PIR_CloseValue1			100		//1min 600
		#define PIR_CloseValue2			3000	//5min
		#define PIR_CloseValue3			6000	//10min
		#define PIR_CloseValue4			9000	//15min
		#define PIR_CloseValue5			12000	//20min	
	
		#define TurnOn_Trigger	2
		#define TurnOff_Trigger	2
	
		#define PIR_Offset_Value	0

//lihgts control
		#define Turn_On_Lights()\
	 		if(Dimmer->Lights==0)\
			{\
				Dimmer_Control_Open();\
				PIR->Offset=PIR_Offset_Value;\
				PIR->Trigger=TurnOn_Trigger;\
			}
	    
  		#define Turn_Off_Lights()\
			if(Dimmer->Lights==1 || Dimmer->Phase2 == 1)\
			{\
				Dimmer_Control_Close();\
			}

//PIR LED
		#define PIR_LED_ON()\
			if(PIR->SignalAD<(PIR->ReferenceVoltage-PIR->RangeValue))\
			{\
				LED1_ON();\
			}\
			else if(PIR->SignalAD>(PIR->ReferenceVoltage+PIR->RangeValue))\
			{\
				LED2_ON();\
			}
	
	  	#define PIR_LED_OFF()\
			LED_1_2_OFF()
//PIR_Switch
		#define PIR_Switch()\
			if(PIR->Switch==0)\
			{\
				if(CDS->OK==1 && Temp->ERROR == 0)\
				{\
					PIR->Switch=1;\
					PIR->RangeValue=RangeMinimum;\
				}\
			}\
			else\
			{\
				if(CDS->OK==0 || Temp->ERROR == 1)\
				{\
					PIR->Switch=0;\
					if(PIR->OK == 1)\
					{\
						LED_1_2_OFF();\
						Turn_Off_Lights();\
					}\
				}\
			}

//dimmer phase	
	  	#if Dimmer_Phase == 1
		  	#define Dimmable\
				Dimmer->Triac = 1
		#endif	

//Dimmer pir close set
		#define Dimmer_PIR_Close_Set()\
			PIR->Offset=0;\
			PIR->Trigger=TurnOff_Trigger

	#endif

//_PIR_Ceiling_Embed_V1_H_
	#ifdef _PIR_Ceiling_Embed_V1_H_

		#define Signal_Processing_Version		1	//1		hundred average
													//2		ten average
		#define RangeMaximum			45
	  	#define RangeMedium				35
	  	#define RangeMinimum			25
		
		#define PIR_CloseValue1			100		//1min 600
		#define PIR_CloseValue2			3000	//5min
		#define PIR_CloseValue3			6000	//10min
		#define PIR_CloseValue4			9000	//15min
		#define PIR_CloseValue5			12000	//20min	
	
		#define TurnOn_Trigger	2
		#define TurnOff_Trigger	2
	
		#define PIR_Offset_Value	0

//PIR LED
		#define PIR_LED_ON()\
			if(PIR->SignalAD<(PIR->ReferenceVoltage-PIR->RangeValue))\
			{\
				LED1_ON();\
			}\
			else if(PIR->SignalAD>(PIR->ReferenceVoltage+PIR->RangeValue))\
			{\
				LED2_ON();\
			}
	
	  	#define PIR_LED_OFF()\
			LED_1_2_OFF()

//lihgts control
		#define Turn_On_Lights()\
				Buzzer->Beeps=1;\
				PIR->Offset=PIR_Offset_Value;\
				PIR->Trigger=TurnOn_Trigger;\
			
	    
  		#define Turn_Off_Lights()\
				Buzzer->Beeps=1;\

//PIR_Switch
		#define PIR_Switch()\
			if(PIR->Switch==0)\
			{\
				if(CDS->OK==1)\
				{\
					PIR->Switch=1;\
					PIR->RangeValue=RangeMinimum;\
				}\
			}\
			else\
			{\
				if(CDS->OK==0)\
				{\
					PIR->Switch=0;\
					if(PIR->OK == 1)\
					{\
						LED_1_2_OFF();\
						Turn_Off_Lights();\
					}\
				}\
			}

	#endif
//**************************************************************
	#ifndef PIR_LED_ON()
		#define PIR_LED_ON NOP()
	#endif

	#ifndef	PIR_LED_OFF()	
		#define PIR_LED_OFF	NOP()
	#endif

	#ifndef Dimmable
		#define Dimmable 
	#endif

	#ifndef PIR_Switch()
		#define PIR_Switch() NOP()
	#endif

	#ifndef Turn_On_Lights()
		#define Turn_On_Lights() NOP()
	#endif

	#ifndef Turn_Off_Lights()
		#define Turn_Off_Lights() NOP()
	#endif
//**************************************************************
#endif
/*End file*/



