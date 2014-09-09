
#ifndef _Development_V1.0_H_
#define _Development_V1.0_H_

 	
  #define ComValue 			PORTA
  #define DisplayValue 		PORTB

  #define Usart_Enable		1
  #define I2C_Enable		1

//Pin Name Define
  #define CDS				RA0	//1
  #define LED2				RA1	//0
  #define LED3				RA2	//0
  #define Bottom1			RA3	//1
  #define Com1				RA4	//0
  #define Com2				RA5	//0
  #define Com3				RA6	//0
  #define Com4				RA7	//0	

//#define A					RB0	//1
//#define B					RB1 //1
//#define C					RB2	//0	
//#define D					RB3	//0	
//#define E					RB4	//1
//#define F					RB5 //0
//#define G					RB6 //0
//#define Dot				RB7	//0

//#define CC2500_SI			RC0	//0		
//#define CC2500_SCK		RC1	//0		
//#define CC2500_SO			RC2	//1			
//#define CC2500_GDO2		RC3	//1		
//#define CC2500_CSN		RC4	//0		
//#define TestPoint			RC5	//0	
#define I2C_SCK				RC3	//0		
#define I2C_SDA				RC4	//0		
#define TX					RC6	//1		
#define RX					RC7	//0	

/*Config*/
//I/O
  #define	TRISA_Value		0x09		
  #define	TRISB_Value		0x00	
  #define	TRISC_Value		0x00	

  #define	LATA_Value		0x00	
  #define	LATB_Value		0x00
  #define	LATC_Value		0x00

  #define	ANSELA_Value	0x01
  #define	ANSELB_Value	0x00
  #define	ANSELC_Value	0x00

  #define	PORTA_Value		0x09
  #define	PORTB_Value		0x00
  #define	PORTC_Value		0x00

//Oscillator 
 #define 	OSSCON_Value	OSCCON_16M	//OSCCON_16M
										//OSCCON_8M
										//OSCCON_4M	
										//OSCCON_2M
										//OSCCON_1M										//OSCCON_500K
		

//interrupt						
  #define	GIE_Value			1
  #define	PEIE_Value			1
  #define	TMR0IE_Value		1
  #define	INTE_Value			0
  #define	IOCIE_Value			0
  #define	TMR0IF_Value		0
  #define	INTF_Value			0
  #define	IOCIF_Value			0

#define 	OPTION_REG_Value	OPTION_REG_1x4	//OPTION_REG_1x2
												//OPTION_REG_1x4
												//OPTION_REG_1x8
												//OPTION_REG_1x16
												//OPTION_REG_1x32
												//OPTION_REG_1x64
												//OPTION_REG_1x128
												//OPTION_REG_1x256

//ADC
  #define	ADCON1_Value	ADCON1_VDD	//ADCON1_VDD	
										//ADCON1_RA3	
										//ADCON1_Fixed		
  //if	define fixed					
  #define  ADC_Voltage_1V		1 		
  #define  ADC_Voltage_2V		0 
  #define  ADC_Voltage_4V		0 	



/*Setup*/
//interrupt
  #if TMR0IE_Value == 1
  #if (OSSCON_Value  == OSCCON_16M) && (OPTION_REG_Value == OPTION_REG_1x4)
  #define	TMR0_Value			100	
  #define	Timer_1ms			10
  #define	Timer_5ms			50
  #define	Timer_10ms			100
  #endif
  #endif

  #define	T1ms				1
  #define	T5ms				1
  #define	T10ms				1

//ADC 
  #if ADCON1_Value == ADCON1_Fixed 

  #if ADC_Voltage_1V == 1		
  #define	FVRCON_Value	FVRCON_1V		
  #endif

  #if	ADC_Voltage_2V == 1
  #define	FVRCON_Value	FVRCON_2V
  #endif	

  #if ADC_Voltage_4V == 1
  #define	FVRCON_Value	FVRCON_4V
  #endif

  #else
  #define FVRCON_Value FVRCON_Reserved
  #endif			
 


#endif