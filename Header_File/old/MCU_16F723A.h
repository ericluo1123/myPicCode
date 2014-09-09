
#ifndef _MCU_16F723A_H_
#define _MCU_16F723A_H_


/*Include file*/
  #include <pic.h>

//oscillator****************************************************
//#System Clock Select=FOSC<2:0>
//PLLEN = 1
  #ifdef System_Fosc_16M
 	 #define _OSCCON 0x3c
	 #define FOSC 16000000
	 #define _PLLEN_ON	
	 #define PLEEN_Value PLLEN_ON	
  #endif

  #ifdef System_Fosc_8M									
 	 #define _OSCCON 0x2c
  	 #define FOSC 8000000
	 #define _PLLEN_ON
	 #define PLEEN_Value PLLEN_ON
  #endif
  
  #ifdef System_Fosc_4M
 	 #define _OSCCON 0x1c
 	 #define FOSC 4000000
	 #define _PLLEN_ON
	 #define PLEEN_Value PLLEN_ON
  #endif

  #ifdef System_Fosc_2M
 	 #define _OSCCON 0x0c
 	 #define FOSC 2000000
	 #define _PLLEN_ON
	 #define PLEEN_Value PLLEN_ON
  #endif

//PLLEN = 0
  #ifdef System_Fosc_500K
 	#define	_OSCCON	0x30
  	#define FOSC	500000
  #endif 

  #ifdef System_Fosc_250K
 	 #define _OSCCON 0x20
 	 #define FOSC	250000
  #endif

  #ifdef System_Fosc_125K
 	 #define _OSCCON 0x10
	 #define FOSC	125000
  #endif

  #ifdef System_Fosc_62.5K	
 	 #define _OSCCON 0x00
 	 #define FOSC	62500
  #endif

  #ifndef _PLLEN_ON
 	 #define PLEEN_Value PLLEN_OFF
  #endif

  #define Fosc_Set()\
	OSCCON=_OSCCON

//**********************************************************************


//ADC*******************************************************************
  #if ADC_Enable == 1
	  #define ADGO	GO_nDONE
	//AD Channel 
	  #define AN0		0x01 	//RA0			
	  #define AN1		0x05	//RA1		
	  #define AN2		0x09	//RA2			
	  #define AN3		0x0d	//RA3	
	  #define AN4		0x11	//RA5		
			
	  #define AN8		0x21	//RB2		
	  #define AN9		0x25	//RB3		
	  #define AN10		0x29	//RB1	
	  #define AN11		0x2d	//RB4	
	  #define AN12		0x31	//RB0		
	  #define AN13		0x35	//RB5
	
	  #define AN14		0x39	//RC2
	  #define AN15		0x3d	//RC3
	  #define AN16		0x41	//RC4
	  #define AN17		0x45	//RC5
	  #define AN18		0x49	//RC6
	  #define AN19		0x51	//RC7
	
	//AD register  
	//A/D Conversion Clock Select 111 = FRC (clock supplied from a dedicated RC oscillator)
	  #ifdef Voltage_Reference_VDD
		#define ADCON1_Value 0x70
		#define Ref_VDD	     0x70
	  #endif

	  #ifdef Voltage_Reference_Pin
		#define ADCON1_Value 0x72
		#define Ref_Pin		 0x72
	  #endif

	  #ifdef Voltage_Reference_Fixed
		#define ADCON1_Value 0x73
		#define Ref_Fixed 	 0x73

		//Fixed Voltage Reference Ready Flag = 1
		//Fixed Voltage Reference Enable	 = 1
		#ifdef Fixed_Voltage_Reference_OFF
			#define FVRCON_Value	0xc0
		#endif 

		#ifdef Fixed_Voltage_Reference_1V
			#define FVRCON_Value	0xc1
		#endif 

		#ifdef Fixed_Voltage_Reference_2V
			#define FVRCON_Value	0xc2
		#endif 

		#ifdef Fixed_Voltage_Reference_4V
			#define FVRCON_Value	0xc3
		#endif 

		#define FVRCON_Set()\
			FVRCON=FVRCON_Value
  	  #else
		#define FVRCON_Set()\
			NOP()
	  #endif

      #define ADC_Set()\
		ADCON1=ADCON1_Value;\
		FVRCON_Set()
	
  #endif
//*******************************************************************

//I/O**********************************************************
	#define IO_Set()\
		TRISA=_TRISA;\
	 	TRISB=_TRISB;\
	 	TRISC=_TRISC;\
		ANSELA=_ANSELA;\
	  	ANSELB=_ANSELB;\
	  	PORTA=_PORTA;\
	 	PORTB=_PORTB;\
	  	PORTC=_PORTC
//*************************************************************

//Timer0*************************************************************
	#if Timer0_Enable == 1
		//OPTION_REG
		#define	T0PS_1x2		0x00
		#define	T0PS_1x4		0x01
		#define	T0PS_1x8		0x02
		#define	T0PS_1x16		0x03
		#define	T0PS_1x32		0x04
		#define	T0PS_1x64		0x05
		#define	T0PS_1x128		0x06
		#define	T0PS_1x256		0x07

      #ifdef System_Fosc_16M		
		  //TMR0 Clock Source Select Internal instruction cycle clock (FOSC/4)
		  //Prescaler is assigned to the Timer0 module
  		  #define  OPTION_REG_Value T0PS_1x2
     	  
		  #ifdef TMR0_IntrTime_50us	//interrupt time= (1/(System_Fosc/4)) * T0PS * TMR0_Count
          	#define TMR0_Count	100	
 			#define TMR0_1ms	20
			#define TMR0_5ms	100
 			#define TMR0_10ms	200
		  #endif
			
		  #ifdef TMR0_IntrTime_100us	
			#define TMR0_Count	190
			#define TMR0_1ms	10
		  #endif
	  #endif
		
		#define TMR0_Value	(256-TMR0_Count)

		struct Timer0
		{	
			unsigned Trigger:1;
			unsigned Timeout:1;			
			unsigned int Count;
		};
		struct Timer0 VarTimer0;
		struct Timer0 *Timer0;	

		#define	TMR0_Set()\
			Timer0=&VarTimer0;\
			OPTION_REG=OPTION_REG_Value;\
			TMR0IE=1;\
			TMR0=TMR0_Value;\
			GIE=1

		#define	TMR0_ISR()\
			if(TMR0IE && TMR0IF)\
			{\
				TMR0=TMR0_Value;\
				TMR0IF=0;\
				Timer0->Count++;\
				if(Timer0->Count == TMR0_1ms)\//1ms
				{\
					Timer0->Count=0;\
					TMain->T0_Timerout=1;\
				}\
				if(OverLoad->ADGO==1)\
				{\
					ADCON0=OverLoad_Channel;\
					;\//sample time();
					ADGO=1;\//ADCON0,2 Start Conversion
					while(ADGO);\
					if(OverLoad->ADH<ADRES)\
						OverLoad->ADH=ADRES;\
					else\
					{\
						if(OverLoad->ADL>ADRES)\
							OverLoad->ADL=ADRES;\
					}\
				}\
			}
			
	#else
		#define	TMR0_Set()\
			NOP()
		#define	TMR0_ISR()\
			NOP()
	#endif	



	
	//#define Timmer0_Initial()\		
//*******************************************************************




//Timer1*************************************************************
  #if Timer1_Enable == 1

	  #define T1PS_1x1	0x00	
	  #define T1PS_1x2	0x10
	  #define T1PS_1x4	0x20
	  #define T1PS_1x8	0x30
	
      #ifdef Clock_Source_System
		#define _CS	0x40
      #else
 		#define _CS 0x00	
      #endif

      #ifdef System_Fosc_16M	
  		  #define _CKPS T1PS_1x1
     	  
		  #ifdef TMR1_IntrTime_50us	//interrupt time= (1/System_Fosc) * T1PS * TMR1_Count
          	#define TMR1_Count	550	
 			#define TMR1_1ms	20
		  #endif
			
		  #ifdef TMR1_IntrTime_100us	
			#define TMR1_Count	1600
			#define TMR1_1ms	10
		  #endif
	  #endif
		
	  #define TMR1H_Value 	((65536-TMR1_Count)/256)
	  #define TMR1L_Value  	((65536-TMR1_Count)%256)	

		struct Timer1
		{	
			unsigned Trigger:1;
			unsigned Timeout:1;			
			unsigned int Count;
		};
		struct Timer1 VarTimer1;
		struct Timer1 *Timer1;	
	
	   
		/***Routine declaration***/

		#define TMR1_Set()\
			Timer1=&VarTimer1;\
			T1CON=(_CS | _CKPS | 0x01);\
			TMR1H=TMR1H_Value;\
			TMR1L=TMR1L_Value;\
			TMR1IE=1;\
			PEIE=1;\
			GIE=1

		#define TMR1_ISR()\
			if(TMR1IE && TMR1IF)\
			{\
				TMR1H=TMR1H_Value;\
				TMR1L=TMR1L_Value;\
				TMR1IF=0;\
				TMR1_Select();\
				Timer1->Count++;\
				if(Timer1->Count == TMR1_1ms)\//1ms
				{\
					Timer1->Count=0;\
					TMain->T1_Timerout=1;\
				}\
			}

	#ifndef TMR1_Set()
		#define TMR1_Set() NOP()	
	#endif	

	#ifndef TMR1_ISR()
		#define TMR1_ISR() NOP()	
	#endif

	#ifndef TMR1_Select()
		#define TMR1_Select() NOP()
	#endif	
		
 #endif



  
//*******************************************************************

//Timer2*************************************************************
	#if Timer2_Enable == 1

		#define TMR2_Set()\
			T2CON=0;\
			TMR2ON=0;\
			TMR2IE=1;\
			PR2=256-200\
			GIE=1	
			//PR2				//default value 0xff
			//TMR2				//default value 0x00
			//TMR2 match PR2 interrupt

		#define	TMR2_ISR()\
			if(TMR2IE && TMR2IF)\
			{\
				PR2=256-200;\
				TMR2IF=0;\
			}

 	#else
		#define TMR2_Set() NOP()
		#define	TMR2_ISR() NOP()
	#endif
//*******************************************************************

//Usart***************************************************************
  #if	Usart_Enable == 1
	#include <stdio.h>

  	#if Release == 1	
  		#include "../Release/Usart.h"
 	#else
  		#include "../Header_File/Usart.h"
  	#endif
  #endif
//********************************************************************


//config*************************************************************

  #define Config1 __CONFIG(FOSC_INTOSCIO & WDTE_OFF & PLLEN_ON)	//v8.84
  #define Config2 __CONFIG(VCAPEN_DIS)

//*******************************************************************


/*Routine declaration*/

	#define Mcu_Initial()\
		;\//Fosc
		Fosc_Set();\
		;\
		;\//I/O
		IO_Set();\
		;\
		;\//Timer0
		TMR0_Set();\
		;\
		;\//Timmer1
		TMR1_Set();\
		;\
		;\//Timmer2
		TMR2_Set();\
		;\
		;\//ADC
		ADC_Set();\
		;


	#define ADC_Conversion_Example()\
		;\//TRISx  Set  Input	ex. TRISA=1
		;\//ANSELx Set analog	ex.ANSAx=1
		;\//AD Channel Select ex.ADCON0=AN1
		ADON=1;\//AD Enable
		;\//sample time();
		ADGO=1;\//ADCON0,2 Start Conversion
		while(ADGO);\
		;\//ADCValue=ADRES;	//Converision complete Load Value
		;\//TRISx  Set  Input	ex. TRISA=0
		;\//ANSELx Set analog	ex.ANSELA=0
		ADCON0=0;\// off channel select & Disable
		;
#endif
/*End file*/


