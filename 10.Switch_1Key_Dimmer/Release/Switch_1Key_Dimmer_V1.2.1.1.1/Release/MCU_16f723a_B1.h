
#ifndef _MCU_16F723a_H_
#define _MCU_16F723a_H_
	
	//*********************************************************
	//Include 
	#include <pic.h>

	//*********************************************************	
	//Routine declaration
	void Mcu_Initialization();
	void IO_Set();

	//*********************************************************
	//oscillator
	//System Clock Select=FOSC<2:0>

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
				OSCCON=_OSCCON;\
				;

	//*********************************************************
	//ADC
	#define	ADGO	GO_nDONE
	
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

	//ADC Conversion Clock = 111 = FRC (clock supplied from a dedicated FRC oscillator)
	#define	ADCON1_VDD			0x70 
	#define	ADCON1_RA3			0x72
	#define	ADCON1_Fixed		0x73

	#define	FVRCON_Reserved		0x00	
	#define	FVRCON_1V			0xc1
	#define	FVRCON_2V			0xc2
	#define	FVRCON_4V			0xc3

	#if ADC_use == 1

		#define setADCON1(value)	ADCON1=value		
		#define setADCON0(value)	ADCON0=value	
	//	#define ADC_ADRES ((ADRESH*256)+ADRESL)
		#define ADC_ADRES 	ADRES

		void ADC_Set();
		ADtype getAD(char,char);
		void setADCGO();
	#else
		//ADC NOP()
		#define setADCON1(value) ;
		#define setADCON0(value) ;
		#define ADC_ADRES 0

		#define ADC_Set() ;
		#define getAD(char,char) ;
		#define setADCGO() ;
	#endif
	//*********************************************************
	//Timer0
	#if Timer0_use == 1
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
          		#define TMR0_Count	90	
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
		//Virable declaration
		struct Timer0
		{	
			unsigned Timeout:1;		
			unsigned int Count;
			
			unsigned int DimmerCount;
			unsigned int DimmerCountValue;
		};
		//Virable declaration
		struct Timer0 VarTimer0;
		struct Timer0 *Timer0;	

		void TMR0_Set();
		void TMR0_ISR();
		void setDimmerReClock();
	#else
		//TMR0 NOP()
		#define	TMR0_Set()	; 
		#define	TMR0_ISR()	;

		#define TMR0_Set() ;
		#define TMR0_ISR() ;
		#define setDimmerReClock() ;
	#endif

	//*********************************************************
	//Timer1
	#if Timer1_use == 1

		#define T1PS_1x1	0x00	
		#define T1PS_1x2	0x10
		#define T1PS_1x4	0x20
		#define T1PS_1x8	0x30
	
    	#ifdef Clock_Source_System
			#define _CS	0x40
      	#endif

		
		#ifdef Clock_Source_instruction
 			#define _CS 0x00	
     	#endif

      	#ifdef System_Fosc_16M	
  			#define _CKPS T1PS_1x1
     	  
			#ifdef TMR1_IntrTime_50us	//interrupt time= (1/System_Fosc) * T1PS * TMR1_Count
	        	#define TMR1_Count	700	
	 			#define TMR1_1ms	20
			#endif
				
			#ifdef TMR1_IntrTime_100us	
				#define TMR1_Count	1500
				#define TMR1_1ms	10
			#endif

			#ifdef TMR1_IntrTime_500us	
				#define TMR1_Count	7500
				#define TMR1_1ms	2
			#endif
			
			#define TMR1H_Value 	((65536-TMR1_Count)/256)
			#define TMR1L_Value  	((65536-TMR1_Count)%256)
		#endif	

		//Virable declaration
		struct Timer1
		{	
			unsigned Timeout:1;			
			unsigned int Count;
		};
		struct Timer1 VarTimer1;
		struct Timer1 *Timer1;

		void TMR1_Set();
		void TMR1_ISR();
	#else
		//NOP()
		#define TMR1_Set() ;
		#define TMR1_ISR() ;
	#endif

	//*********************************************************
	//INT		
	#if INT_use == 1
		void INT_Set();
		void INT_ISR();
		void setINT_GO(char);
	#else
		//INT NOP()
		#define INT_Set() ;
		#define INT_ISR() ;
		#define setINT_GO(char) ;
	#endif

	//*********************************************************
	//IOC
	#if IOC_use == 1
		void IOC_Set();
		void IOC_ISR();
	#else
		//NOP
		#define IOC_Set() ;
		#define IOC_ISR() ;
	#endif
	//*********************************************************
	#if I2C_use == 1
		struct I2C
		{
			unsigned char Buffer;
		}
		struct I2C	VarI2C;
		struct I2C	*I2C;

		void I2C_Set();
		void I2C_Master_Transmission();
		void I2C_Master_Reception();
		void I2C_Slave_Transmission();
		void I2C_Slave_Reception(); 
		

		#if Master_Mode == 1
		#endif

		#if Slave_Mode == 1
			//SEN :Start Condition Enable/Stretch Enable bit	
			//In Slave mode:
			//1 = Clock stretching is enabled for both slave transmit and slave receive (stretch enabled)
			//0 = Clock stretching is disabled
			//AHEN :Address Hold Enable bit (I2C Slave mode only)
			//1 = Following the 8th falling edge of SCL for a matching received address byte; CKP bit of the
			//SSPCON1 register will be cleared and the SCL will be held low.
			//0 = Address holding is disabled
			//DHEN :Data Hold Enable bit (I2C Slave mode only)
			//1 = Following the 8th falling edge of SCL for a received data byte; slave hardware clears the CKP bit
			//of the SSPCON1 register and SCL is held low.
			//0 = Data holding is disabled
		#endif

	#else
		#define I2C_Set() ;
		#define I2C_Master_Transmission() ;
		#define I2C_Master_RECEPTION() ;
		#define I2C_Slave_Transmission() ;
		#define I2C_Slave_RECEPTION() ; 
	#endif
	//*********************************************************
	//UART
	#if UART_use == 1
		#include <stdio.h>

		#define BAUD 19200			//19200   9600   
		
		#define NINE	0     		/* Use 9bit communication? FALSE=8bit */
		 
		#define SYNC	0			//0		EUSART Mode
									//1
		#define BRG_16	0			//0		16-bit Baud Rate Generator
									//1	
		#define HIGH_SPEED 1		//0		High Baud Rate Select
									//1

		//setup
		#if(SYNC_BIT == 0 && BRG_16 == 0 && HIGH_SPEED == 0)		
			#define DIVIDER_H 0	
			#define DIVIDER ((int)(FOSC/(64UL * BAUD) -1))
		#endif
			
		#if(SYNC_BIT == 0 && BRG_16 == 0 && HIGH_SPEED == 1)
			#define DIVIDER_H 0
			#define DIVIDER ((int)(FOSC/(16UL * BAUD) -1))
		#endif
		
		#if(SYNC_BIT == 0 && BRG_16 == 1 && HIGH_SPEED == 0)
			#define DIVIDER_H ((int)((FOSC/(16UL * BAUD) -1)/256))
			#define DIVIDER ((int)((FOSC/(16UL * BAUD) -1)%256))
		#endif
		
		#if(SYNC_BIT == 0 && BRG_16 == 1 && HIGH_SPEED == 1)
			#define DIVIDER_H ((int)((FOSC/(16UL * BAUD) -1)/256))
			#define DIVIDER ((int)((FOSC/(16UL * BAUD) -1)%256))
		#endif

		#if NINE == 1
			#define NINE_BITS 0x40
		#else
			#define NINE_BITS 0
		#endif
		
		#if HIGH_SPEED == 1
			#define SPEED 0x4
		#else
			#define SPEED 0
		#endif

		#if defined(_16F87) || defined(_16F88)
			#define RX_PIN TRISB2
			#define TX_PIN TRISB5
		#else
			#define RX_PIN TRISC7
			#define TX_PIN TRISC6
		#endif

		//Global extern varitable declaration
		struct UART
		{
			unsigned char TxData[21];	
			unsigned char RxData[21];
			unsigned SendPC:1;
			unsigned ReceiverOK:1;
			unsigned TransmitGO:1;
			unsigned char Number;
			unsigned char TxCommand;
			unsigned char RxCommand;
			unsigned char Byte;
			unsigned char Register;
			unsigned char TxLength;
			unsigned char RxLength;
		};
		struct UART *Uart;
		struct UART VarUart={
			{0xaa,0xaa}
		};
		
		#define setUart_TxData(data) printf("%c",Uart->TxData[data])

		void putch(unsigned char);
		unsigned char getch(void);
		unsigned char getche(void);
		void UART_Set();
		void UART_ISR();		
	#else
		//NOP
		#define setUart_TxData(data) ;

		#define putch() ;
		#define getch(void) ;
		#define getche(void) ;
		#define UART_Set() ;
		#define UART_ISR() ;
	#endif

	//*********************************************************
	//Flash Memory
	#if FlashMemory_use == 1
		//Global extern varitable declaration
		struct FlashMemory
		{
			unsigned char Data[32];
			unsigned char ReadDataH;
			unsigned char ReadDataL;
			unsigned Modify:1;
			unsigned GO:1;
			unsigned LoopSave:1;
			unsigned int Time;
		};
		struct FlashMemory *Memory;
		struct FlashMemory VarMemory={
			{
			 0xff,0xff,0xff,0,0,0,0,0,
			 0,0,0,0,0,0,0,0,
			 0,0,0,0,0,0,0,0,
			 0,0,0,0,0,0,0,0xaa,
			}
		};
		#define PMADRH_Value 0x30

		#define Flash_Memory_Set()	Memory=&VarMemory
					
					
		#define setMemoryData(address,data) Memory->Data[address]=data	
		#define setMemory_Modify(command) Memory->Modify=command
		#define setMemory_GO(command) Memory->GO=command
		#define setMemory_LoopSave(command) Memory->LoopSave=command

		void Flash_Memory_Initialization();
		void Flash_Memory_Unlock();
		char Flash_Memory_Read(char);
		void Flash_Memory_Write();
		void Flash_Memory_Erasing();
		void Flash_Memory_Modify();
		void Flash_Memory_Main();
	#else
		//NOP
		#define Flash_Memory_Set() ;
		#define setMemoryData(address,data) ;
		#define setMemory_GO(command) ;
		#define setMemory_Modify(command) ;
		#define setMemory_LoopSave(command) ;

		#define Flash_Memory_Initialization() ;
		#define Flash_Memory_Unlock() ;
		#define Flash_Memory_Read(char) ;
		#define Flash_Memory_Write() ;
		#define Flash_Memory_Erasing() ;
		#define Flash_Memory_Modify() ;
		#define Flash_Memory_Main() ;
	#endif 
//end file
#endif