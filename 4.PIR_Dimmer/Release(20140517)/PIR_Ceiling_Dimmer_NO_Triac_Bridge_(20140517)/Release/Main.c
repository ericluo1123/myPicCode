
/*include*/

#define Release 1

#if Release == 1
	#include "../Release/Main.h"
#else
	#include "../Header_file/Main.h"
#endif
	

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
