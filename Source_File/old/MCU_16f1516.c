
/***Include file***/
#include "../2.Development_V1.0/Development_V1.0.h"

#include "../Header_File/MCU_16F1516.h"
#include "../Header_File/SegmentDisplay.h"
#include "../Header_File/Touch.h"	
#include "../Header_File/I2C.h"
#include "../Header_File/Usart.h"	
	#include <stdio.h>

/***Config***/
 __CONFIG(FOSC_INTOSC & WDTE_OFF);	//v8.84
 __CONFIG(VCAPEN_OFF);	

/***Routine main***/

// ISR (Interrupt Service Routines)

void interrupt ISR(void)
{	
	if(TMR0IE && TMR0IF)
	{
		if(Intr->Count<Timer_5ms)
			Intr->Count++;
		else
		{
			if(Intr->Timeout==0)
			{
				Intr->Count=0;
				Intr->Timeout=T5ms;
			}
		}
			
		TMR0=256-100;		
		TMR0IF=0;	
	}	
	
/*
	if(TMR1IE && TMR1IF)
	{
		TMR1H=(65536-375)/256;	
		TMR1L=(65536-375)%256;
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
/*
	if(INTE && INTF)
	{

	}
*/
	if(SSPIE && SSPIF)
	{
		SSPIF = 0;
	//	LED1=1;
	
	}
	if(RCIE && RCIF)
	{	
		if(Uart->ReceiverOK == 0)
		{
			while(RCIDL==0);
			Uart->RxData[Uart->Number]=RCREG;
	/*		if(OERR == 1)
			{
				CREN=0;
				NOP();
				NOP();
				CREN=1;
			}*/
			Uart->RxLength++;
			Uart->Number++;
			while(RCIDL==1 && Uart->ReceiverOK == 0)
			{
				Uart->WaitTime++;	
				if(Uart->WaitTime==10)
				{
					Uart->WaitTime=0;
					Uart->ReceiverOK=1;
				}
			}
			Uart->WaitTime=0;
		}
	//	LED1=~LED1;	  						
	}


	if(TXIE && TXIF)
	{
	//	TXIE=0;
	//	LED1=~LED1;
	//	TXREG=Uart->TxData[0];	
	//	while(TRMT==0);	
		
		
	//	TXREG=Uart->TxLength;
	//	while(TRMT==0);

	//	TXREG=Uart->TxCommand;	
	//	while(TRMT==0);		

	/*	for(i=0;i<Uart->TxLength;i++)
		{
			TXREG=Uart->TxData[i];	
			while(TRMT==0);	
		}*/	


	}	
}	

// McuInitial
void MCU_Initial()
{
	Intr=&VarIntr;
		
//IO
	TRISA=TRISA_Value;	
	TRISB=TRISB_Value;	
	TRISC=TRISC_Value;	

	LATA=LATA_Value;
	LATB=LATB_Value;		
	LATC=LATC_Value;	

	ANSELA=ANSELA_Value;
	ANSELB=ANSELB_Value;
	ANSELC=ANSELC_Value;

	PORTA=PORTA_Value;
	PORTB=PORTB_Value;			
	PORTC=PORTC_Value;		

//OSCCON
	OSCCON=OSSCON_Value; 	
//OPTION_REG					
	OPTION_REG=OPTION_REG_Value;   	
//Interrupt									
	GIE=GIE_Value;			
	PEIE=PEIE_Value;					
	TMR0IE=TMR0IE_Value;		
//	INTE=INTE_Value;			
//	IOCIE=IOCIE_Value;		
//	TMR0IF=TMR0IF_Value;		
//	INTF=INTF_Value;				
//	IOCIF=IOCIF_Value;	

	TMR0=256-TMR0_Value;		
	TMR0IF=0;			

//ADC
	ADCON1=ADCON1_Value; 	
	FVRCON=FVRCON_Value;
		
	/*
	//interrupt timer1	time=1(16MHZ/4)=1/4MHZ=0.25us
	T1CON=0x40;			//TIMER1 CONTROL REGISTER
	TMR1ON=0;			//Timer1 On bit
	TMR1IE=1;			//Timer1 Timer1 Overflow Interrupt Enable bit
	TMR1IF=0;			//Timer1 Overflow Interrupt Flag bit
	TMR1H=(65536-375)/256;	
	TMR1L=(65536-375)%256;	

	//interrupt timer2 //
	T2CON=0;			
	TMR2ON=0;
	TMR2IE=1;
	TMR2IF=0;
	//PR2				//default value 0xff
	//TMR2				//default value 0x00
	//TMR2 match PR2 interrupt
	*/	

	
/*	//EUSART
	BRG16=1;		//16bit
	SPBRGL=0x9f;	//9600
	SPBRGH=1;

	RCIE=1;
	RCIF=0;
	TXIE=1;	
	TXIF=0;
	
//	TXEN=1;			//Transmit enabled
	SYNC=1;			//Asynchronous mode
	BRGH=1;			//high speed
	//TXREG
	SPEN=1;			//Serial port enabled
	CREN=0;			//Enables receiver
	//RCREG
*/
	
}

//=============================================================================
// ADC Conversion example
//=============================================================================
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
	//ADCValueH=ADRESH;	//Converision complete Load Value
	//ADCValueL=ADRESL;
	//TRISx  Set  Input	ex. TRISA=0
	//ANSELx Set analog	ex.ANSELA=0	
	ADCON0=0;			// off channel select & Disable
}
*/
//=============================================================================
// Flash Memory Control
//=============================================================================
void Flash_Memory_Unlock()
{
	PMCON2=0x55;
	PMCON2=0xaa;
	WR=1; 
	NOP();
	NOP();
}
char Flash_Memory_Read(unsigned char Address)
{	
	char i;

	PMADRH=10;
	PMADRL=Address;

	GIE=0;
	CFGS=0;
	RD=1;
	NOP();
	NOP();
	GIE=1;	
	i=PMDATL;
	return i;
}
void Flash_Memory_Write(char StartAddress,char StopAddress)
{
	char i;
	GIE=0;

	PMADRH=10;
	PMDATH=0;
	
	CFGS=0;
	WREN=1;
	LWLO=1;		
	
	for(i=StartAddress;i<StopAddress;i++)
	{	
		PMADRL=i;
		PMDATL=Memory[i];	
		Flash_Memory_Unlock();	
	}	
	LWLO=0;
	Flash_Memory_Unlock();
	WREN=0;
	GIE=1;
}

void Flash_Memory_Erasing(unsigned char Address)
{
	PMADRH=10;
	PMADRL=Address;	

	GIE=0;
	CFGS=0;	
	FREE=1;	
	WREN=1;

	Flash_Memory_Unlock();
	
	WREN=0;
	GIE=1;	
}



/***End file***/