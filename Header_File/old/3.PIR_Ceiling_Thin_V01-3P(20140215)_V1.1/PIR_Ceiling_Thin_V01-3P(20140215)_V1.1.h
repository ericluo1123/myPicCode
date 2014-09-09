
#ifndef _PIR_Ceiling_Thin_V01-3P(20140215)_V1.1_H_
#define _PIR_Ceiling_Thin_V01-3P(20140215)_V1.1_H_

/*Pin Name Define*/

//#define OverLoad			RA0	//1	pin2
//#define CDS_Signla		RA1	//1	pin3
//#define PIR_Signal		RA2	//1	pin4
//#define AD_Vref			RA3	//1	pin5
  #define ErrorLED			RA4	//0	pin6
  #define MSYSC				RA5	//1	pin7
  #define BlueLED			RA6	//0	pin10	LED pin2
  #define AmberLED			RA7	//0	pin9	LED pin3

//#define CC2500_GDO0		RB0	//1	pin21
//#define CDS_VR			RB1 //1	pin22
  #define Triac2			RB2	//0	pin23	
  #define Relay2			RB3	//0	pin24	
//#define PIR_VR			RB4	//1	pin25
  #define BuzzerSwitch		RB5 //0	pin26
//#define 					RB6 //0	pin27
//#define 					RB7	//0	pin28

//#define CC2500_SI			RC0	//0	pin11		
//#define CC2500_SCK		RC1	//0	pin12		
//#define CC2500_SO			RC2	//1	pin13			
//#define CC2500_GDO2		RC3	//1	pin14		
//#define CC2500_CSN		RC4	//0	pin15		
  #define TestPoint			RC5	//0	pin16		
  #define TX				RC6	//1	pin17		
  #define RX				RC7	//0	pin18


 //I/O
  #define IO_Set()\
  	TRISA=0x2f;\
 	TRISB=0x13;\
 	TRISC=0x4c;\
	ANSELA=0x07;\
  	ANSELB=0x11;\
  	PORTA=0x2f;\
 	PORTB=0x13;\
  	PORTC=0x4c 

//System FOSC
  #define	System_Fosc		F16M		//F16M
										//F8M	
										//F4M	
										//F2M	
										//F500K
										//F250K
										//F125K
										//F62.5K

//Timer
//TMR0
  #define TMR0_Enable			1
  #define Intr_Time 			T50us	//T50us
										//T100us
										
					
//TMR1
  #define TMR1_Enable			0
  #define Intr_Time 			T50us//T50us
										//T100us 		
#endif