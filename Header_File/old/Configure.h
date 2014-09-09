
#ifndef _Configure_H_
#define _Configure_H_


//Oscillator (System FOSC)**********************************************
  #define	System_Fosc_16M		//_16M
								//_8M	
								//_4M	
								//_2M	
								//_500K	
								//_250K		
								//_125K	
								//_62.5K	
//**********************************************************************




//Timer0*****************************************************************
  #define Timer0_Enable		0
/*
  #define 	TMR0_Value		10	

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
 	 #define Timer_10ms		100			//main timer time		
  #endif

  #define T1ms	1
  #define T5ms	1
  #define T10ms 1
*/
//*************************************************************************

//Timer1****************************************************************
  #define Timer1_Enable		1
  #define TMR1_IntrTime_50us		//_50us
									//_100us
									//_500us
									//_1ms
  #define Clock_Source_System		//_system
									//_instruction	

//***********************************************************************

//Timer2****************************************************************
  #define Timer2_Enable		0

//***********************************************************************
//ADC*************************************************************************
  #define ADC_Enable	1
  #define Voltage_Reference_VDD				//_VDD
											//_Pin (RA3)
											//_Fixed
  //if	fixed set select voltage					
  #define  Fixed_Voltage_Reference_1V	 	//_OFF
											//_1V		
											//_2V	
											//_4V											

//*************************************************************************


//Uart*********************************************************************
 // #define Usart_Enable	0

//*************************************************************************

#endif
/***end file***/