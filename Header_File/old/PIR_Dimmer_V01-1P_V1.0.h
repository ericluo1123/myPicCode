
#ifndef _PIR_Dimmer_V01-1P_V1.0_H_
#define _PIR_Dimmer_V01-1P_V1.0_H_

//#define _PIR_Dimmer_Main_H_
 
  unsigned char PIRSwitch = 1;	

//Pin name define
//#define	Overload		RA0		//pin2  1
//#define 	PIR VR			RA1		//pin3	1	
//#define 	CDS VR			RA2		//pin4	1		
//#define	PIR	Signal		RA3		//pin5	1
  #define	Relay2			RA4		//pin6 	0
  #define 	MSYSC			RA5		//pin7	1
  #define	Dimmer_Clock	RA6		//pin10 0			
  #define	Dimmer_Input	RA7		//pin9	1		

//#define 	CDS Signal		RB0		//pin21 1
  #define   BuzzerSwitch	RB1		//pin22 0
  #define   Triac2			RB2		//pin23 0
  #define   ErrorLED		RB3		//pin24	0
  #define   BlueLED			RB4		//pin25 0	LED pin2
  #define   AmberLED		RB5		//pin26	0	LED pin3
//#define 					RB6		//pin27	0	
//#define 					RB7		//pin28 0	

  #define 	TLED1			RC0		//pin11	0	
  #define 	TLED2			RC1		//pin12	0	
  #define 	TLED3			RC2		//pin13	0		
  #define	TLED4			RC3		//pin14	0	
//#define 					RC4		//pin15	0	
//#define	TestPoint		RC5		//pin16	0	
  #define 	TX				RC6		//pin17	0	
  #define	RX				RC7		//pin18	1

//I/O
  #define IO_Set()\
  	TRISA=0xaf;\
 	TRISB=0x01;\
 	TRISC=0x00;\
	ANSELA=0x07;\
  	ANSELB=0x01;\
  	PORTA=0xaf;\
 	PORTB=0x01;\
  	PORTC=0x00

//Oscillator (System FOSC)
  #define	OSCCON_Value	OSCCON_16M	//OSCCON_16M
										//OSCCON_8M	
										//OSCCON_4M	
										//OSCCON_2M	
//ADC

//interrupt enable
				
  #define	TMR0IE_Value		0		//Timer0 Overflow Interrupt Enable bit
  #define	TMR1IE_Enable		1		//Timer0 Overflow Interrupt Enable bit

//interrupt time
  #define 	IntrTime		_50us				//_50us	
												//_100us
												//_500us
												//_1000us


/****************************************************************************/
//Use TMR0 config following register


//Enable


//interrupt time


  #define 	TMR0_Value			10		
//prescaler		
  #define	OPTION_REG_Value	OPTION_REG_1x2		//OPTION_REG_1x2	
													//OPTION_REG_1x4
													//OPTION_REG_1x8
													//OPTION_REG_1x16
													//OPTION_REG_1x32
													//OPTION_REG_1x64
													//OPTION_REG_1x128
													//OPTION_REG_1x256



  #if((OSCCON_Value==OSCCON_16M) && (OPTION_REG_Value==1))
  #define Timer_1ms		10			//main timer time
  #define Timer_5ms		50			//main timer time	
  #define Timer_10ms	100			//main timer time		
  #endif

  #define T1ms	1
  #define T5ms	1
  #define T10ms 1


//AD
  #define ADCON1_Value ADCON1_Fixed	
	
  //if	fixed set select voltage					
  #define  ADC_Voltage_1V		1 		
  #define  ADC_Voltage_2V		0 
  #define  ADC_Voltage_4V		0 	

  //Channel
  #define Dimmer_VR_Channel			AN2
  #define Dimmer_TimeVR_Channel		AN1
  #define CDS_Signal_Channel		AN12
  #define CDS_VR_Channel			AN2
  #define PIR_Signal_Channel		AN3
  #define PIR_VR_Channel			AN1
  #define OverLoad_Channel			AN0
  #define OverTempe_Channel			AN4

//Function select
  #define Usart_Enable	0

#endif
/*End file*/

