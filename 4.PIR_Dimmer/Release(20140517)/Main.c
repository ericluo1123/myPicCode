
/*include*/
#define Release 0

#if Release == 0
	#include "../Release/Main.h"
#else
	#include "../Header_file/Main.h"
#endif

#ifndef _PIR_Dim_V01-2(20140515)_H_
#define _PIR_Dim_V01-2(20140515)_H_

//version************************************************************
/*
	Dimmer_Version 	10	//SYSC 8.3ms Ä²µo traic no bridge

	Dimmer_Version	11	//SYSC ¨C8.3ms Ä²µo traic bridge
*/ 
  #define Dimmer_Version 	11		

  #define Dimmer_Phase		2		//0		1 segment 	75% => 30% => off lights
									//1		1 segment 	75% => 30% => hold 
									//2		2 segment 	a.75% => 20% hold
									//					b.20% hold => 5% => off lights
												
//*******************************************************************
#endif
/*End file*/
	

/***config***/ 
  Config1;
  Config2; 	

/*Routine main*/
void main()
{	
	char i;
	TMain_Initial();
	Mcu_Initial();
	Dimmer_Initial();
	LED_Initial();
	Temp_Initial();
	CDS_Initial();
	PIR_Initial();
	while(1)
	{

/*		if(TMain->T0_Timerout==1)	//1ms
		{	
			TMain->T0_Timerout=0;
		}
*/	
		if(TMain->T1_Timerout==1)	//1ms
		{	
			TMain->T1_Timerout=0;

			T_Main();
			LED_Main();
			Temp_Main();
			CDS_Main();
			PIR_Main();
		}
	}
}

void ISR(void) interrupt 0	// ISR (Interrupt Service Routines)
{	
	TMR0_ISR();
	
	TMR1_ISR();

	TMR2_ISR();
}


/*End file*/
