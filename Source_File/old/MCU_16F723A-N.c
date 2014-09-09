
/***include***/
#include "../Header_File/Configure.h"

/***config***/ 
  Config1;
  Config2; 	

/***Routine main***/

// ISR (Interrupt Service Routines)
void ISR(void) interrupt 0
{	
	ErrorLED=1;
	if(TMR0IE && TMR0IF)
	{				
		TMR0=TMR0_Value;		
		TMR0IF=0;	
		
		Tmr0->Count++;
		if(Tmr0->Count == 20)	//1ms
		{
			Tmr0->Count=0;
			Tmr0->Timeout=1;	
		}	
	
		
/*		if(OverLoad->ADGO==1)
		{	
			ADCON0=OverLoad_Channel;
			//sample time();	
			ADGO=1;				//ADCON0,2 Start Conversion
			while(ADGO);

			if(OverLoad->ADH<ADRES)
				OverLoad->ADH=ADRES;
			else
			{
				if(OverLoad->ADL>ADRES)
					OverLoad->ADL=ADRES;
			}		
		}
*/

	}	
/*	
	if(TMR1IE && TMR1IF)
	{
		if(Timer1->PowerON==1)
		{	
			Dimmer_Main();
		}
		
		Timer1->Count++;
		if(Timer1->Count == 200)
		{		
			Timer1->Count=0;							
			Timer1->Timeout=1;				
		}
		
		TMR1H=TMR1H_Value;
		TMR1L=TMR1L_Value;
		TMR1IF=0;	
	}
*/
/*
	if(TMR2IE && TMR2IF)
	{
		PR2=256-200;
		TMR2IF=0;			
	}	
	*/	
}

//=============================================================================
// mcu initial
void Mcu_Initial()
{
	//I/O 
	IO_Set();

	//Fosc
	Fosc_Set();

//	#if TMR0_Enable == 1 
  		TMR0_Set();
// 	#endif

	    	 	 	
/*
	//ADC
	ADCON1=ADCON1_Fixed;
	FVRCON=FVRCON_Value;

	
	//interrupt 	
	TMR1_Initial();
				
	TMR0IE=TMR0IE_Value;			
	TMR0=256-TMR0_Value;
*/	
	

/*
	//interrupt timer2 //
	T2CON=0;			
	TMR2ON=0;
	TMR2IE=1;
	TMR2IF=0;
	//PR2				//default value 0xff
	//TMR2				//default value 0x00
	//TMR2 match PR2 interrupt
	*/	
}		
//=============================================================================
// ADC Conversion example

/*
void ADC_Conversion()
{
	//TRISx  Set  Input	ex. TRISA=1
	//ANSELx Set analog	ex.ANSAx=1
	//AD Channel Select ex.ADCON0=AN1
	ADON=1;				//AD Enable
	//sample time();	
	ADGO=1;				//ADCON0,2 Start Conversion
	while(ADGO);		
	//ADCValue=ADRES;	//Converision complete Load Value
	//TRISx  Set  Input	ex. TRISA=0
	//ANSELx Set analog	ex.ANSELA=0	
	ADCON0=0;			// off channel select & Disable
}
*/


/***End file***/

