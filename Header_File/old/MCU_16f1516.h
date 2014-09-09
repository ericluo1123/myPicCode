
#ifndef _MCU_16f1516_H_
#define _MCU_16f1516_H_

/*include*/
  #include <pic.h>

/*Define*/
//ADC
//ADGO 
  #define	ADGO	GO_nDONE
//AD Channel
  #define	AN0		0x01 	//RA0		
  #define	AN1		0x05	//RA1		
  #define	AN2		0x09	//RA2			
  #define	AN3		0x0d	//RA3	
  #define	AN4		0x11	//RA5	
		
  #define	AN8		0x21	//RB2		
  #define	AN9		0x25	//RB3		
  #define	AN10	0x29	//RB1		
  #define	AN11	0x2d	//RB4		
  #define	AN12	0x31	//RB0		
  #define	AN13	0x35	//RB5

  #define	AN14	0x39	//RC2
  #define	AN15	0x3d	//RC3
  #define	AN16	0x41	//RC4
  #define	AN17	0x45	//RC5
  #define	AN18	0x4d	//RC6
  #define	AN19	0x51	//RC7

//oscillator	System Clock Select=FOSC<2:0>
  #define	OSCCON_16M				0x78
  #define	OSCCON_8M				0x38
  #define	OSCCON_4M				0x68
  #define	OSCCON_2M				0x60
  #define	OSCCON_1M				0x58
  #define	OSCCON_500K				0x50
  #define	OSCCON_250K				0x48
  #define	OSCCON_125K				0x40
  #define	OSCCON_500K_default		0x38
  #define	OSCCON_250K_default		0x30	
  #define	OSCCON_125K_default		0x28
  #define	OSCCON_62.5K_default	0x20
  #define	OSCCON_31.25K_default	0x02
  #define	OSCCON_31K_default		0x00


//OPTION_REG
  #define	OPTION_REG_1x2		0x00
  #define	OPTION_REG_1x4		0x01
  #define	OPTION_REG_1x8		0x02
  #define	OPTION_REG_1x16		0x03
  #define	OPTION_REG_1x32		0x04
  #define	OPTION_REG_1x64		0x05
  #define	OPTION_REG_1x128	0x06
  #define	OPTION_REG_1x256	0x07		




//ADC Result Format = Right justified
//ADC Conversion Clock = 111 = FRC (clock supplied from a dedicated FRC oscillator)
  #define	ADCON1_VDD			0xf0 
  #define	ADCON1_RA3			0xf2
  #define	ADCON1_Fixed		0xf3

  #define	FVRCON_1V			0xc0
  #define	FVRCON_Reserved		0xc1
  #define	FVRCON_2V			0xc2
  #define	FVRCON_4V			0xc3	
	
/*Global extern vriables declaration*/
//ISR
struct ISR
{
	unsigned Timeout:1;
	unsigned int Count;
	unsigned int Count1;
	unsigned int Count2;
};
struct ISR VarIntr;
struct ISR *Intr;

//Flash Momery
bit Momery_OK;
unsigned char Read_Data;
unsigned char Memory[32];


/*Function Routine declaration*/
//Single Chip Microcomputer
void MCU_Initial();

//ADC
void ADC_Initial();
void ADC_Setting(unsigned char);
void ADC_Conversion();

//Flash Memory Control
char Flash_Memory_Read(unsigned char);
void Flash_Memory_Write(char,char );
void Flash_Memory_Unlock();
void Flash_Memory_Erasing(unsigned char );
void TestData();

#endif
/*End file*/