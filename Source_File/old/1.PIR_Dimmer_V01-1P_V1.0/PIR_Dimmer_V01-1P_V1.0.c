
/*include*/
#include "../Header_File/Configure.h"

/*Routine main*/
void main()
{
	
	Mcu_Initial();
	Dimmer_Initial();
	LED_Initial();
	Buzzer_Initial();
	CDS_Initial();
	PIR_Initial();	
	while(1)
	{
		if(Timer1->Timeout==1)
		{	
			Timer1->Timeout=0;
			TMR1_Main();
			LED_Main();
			Buzzer_Main();
			CDS_Main();
			PIR_Main();
		}
	}
}

/*End file*/
