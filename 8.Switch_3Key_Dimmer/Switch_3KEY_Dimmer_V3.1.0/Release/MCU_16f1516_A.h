
#ifndef _MCU_16F1516_H_
#define _MCU_16F1516_H_
	
//Include 
	#include <pic.h>
//oscillator
	//System Clock Select=FOSC<2:0>

  	#ifdef System_Fosc_16M
 		#define _OSCCON 0x78
		#define FOSC 16000000L
  	#endif

 	#ifdef System_Fosc_8M									
 	 	#define _OSCCON 0x38
  	 	#define FOSC 8000000L
  	#endif
  
  	#ifdef System_Fosc_4M
 	 	#define _OSCCON 0x68
 	 	#define FOSC 4000000L
  	#endif

  	#ifdef System_Fosc_2M
 	 	#define _OSCCON 0x60
 	 	#define FOSC 2000000L
  	#endif

  	#ifdef System_Fosc_1M
 	 	#define _OSCCON 0x58
 	 	#define FOSC 1000000L
  	#endif

  	#ifdef System_Fosc_500K
 		#define	_OSCCON	0x50
  		#define FOSC	500000L
  	#endif 

  	#ifdef System_Fosc_250K
 	 	#define _OSCCON 0x18
 	 	#define FOSC	250000L
  	#endif

  	#ifdef System_Fosc_125K
 	 	#define _OSCCON 0x40
	 	#define FOSC	125000L
  	#endif

  	#ifdef System_Fosc_500K_Default
 		#define	_OSCCON	0x38
  		#define FOSC	500000L
  	#endif 

  	#ifdef System_Fosc_250K_Default
 	 	#define _OSCCON 0x30
 	 	#define FOSC	250000L
  	#endif

  	#ifdef System_Fosc_125K_Default
 	 	#define _OSCCON 0x28
	 	#define FOSC	125000L
  	#endif

  	#ifdef System_Fosc_62.5K_Default	
 	 	#define _OSCCON 0x20
 	 	#define FOSC	62500L
  	#endif

  	#ifdef System_Fosc_31.25K_Default	
 	 	#define _OSCCON 0x02
 	 	#define FOSC	31250L
  	#endif

	#ifdef System_Fosc_31K_Default	
 	 	#define _OSCCON 0x00
 	 	#define FOSC	31000L
	#endif

  	#define Fosc_Set()\
		OSCCON=_OSCCON
	//end

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
	#define	ADCON1_VDD			0xf0 
	#define	ADCON1_RA3			0xf2
	#define	ADCON1_Fixed		0xf3
	
	#define	FVRCON_1V			0xc0
	#define	FVRCON_Reserved		0xc1
	#define	FVRCON_2V			0xc2
	#define	FVRCON_4V			0xc3

	#if ADC_use == 1
		#define ADC_Set()\
					ADCON1=_ADCON1;\
					FVRCON=_FVRCON;\
					;

		#define setADCGO()\
					ADGO=1;\
					while(ADGO);\
					;

		#define setADCON1(value)	ADCON1=value
		
		#define setADCON0(value)	ADCON0=value
	
		#define ADC_ADRES ((ADRESH*256)+ADRESL)

	#endif
	
	//ADC NOP()
	#ifndef  ADC_Set()
		#define  ADC_Set() NOP()
	#endif
	
	#ifndef setADCGO()
		#define setADCGO() NOP()
	#endif

	#ifndef setADCON1(value)
		#define setADCON1(value) NOP()
	#endif

	#ifndef setADCON0(value)
		#define setADCON0(value) NOP()
	#endif
	
	#ifndef ADC_ADRES
		#define ADC_ADRES NOP()
	#endif
	//end

//Config
	#define  Config1 	__CONFIG(FOSC_INTOSC & WDTE_OFF);//v8.84
 	#define	 Config2	__CONFIG(VCAPEN_OFF &  WRT_HALF);// 
	//end

//I/O set
	#define IO_Set()\
		TRISA=_TRISA;\
	 	TRISB=_TRISB;\
	 	TRISC=_TRISC;\
		LATA=_LATA;\
		LATB=_LATB;\
		LATC=_LATC;\
		ANSELA=_ANSELA;\
	  	ANSELB=_ANSELB;\
	  	ANSELC=_ANSELC;\
	  	PORTA=_PORTA;\
	 	PORTB=_PORTB;\
	  	PORTC=_PORTC;\
		;

	//end

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
		
		//Routine declaration
		#define	TMR0_Set()\
					Timer0=&VarTimer0;\
					Timer0->DimmerCountValue=158;\
					OPTION_REG=OPTION_REG_Value;\
					TMR0=TMR0_Value;\
					TMR0IE=1;\
					GIE=1;\
					;

		#define	TMR0_ISR()\
					if(TMR0IE && TMR0IF)\
					{\
						TMR0=TMR0_Value;\
						TMR0IF=0;\
						Dimmer_Main();\
						Timer0->Count++;\
						if(Timer0->Count == TMR0_1ms)\//1ms
						{\
							Timer0->Count=0;\
							TMain->T0_Timerout=1;\
						}\
					}\


					;
		/*
						if(CC2500_GDO0)\
						{\
							if(RF->ReceiveGO == 0 && RF->RxStatus)\
							{\
								setRF_ReceiveGO(1);\
							}\
						}\
*/
		#define setDimmerReClock()\
					TMR0=255;\
					Dimmer_Detect();\
					;

	#endif

	//TMR0 NOP()
	#ifndef TMR0_Set()
		#define	TMR0_Set()	NOP() 
	#endif

	#ifndef TMR0_ISR()
		#define	TMR0_ISR()	NOP()
	#endif	

	#ifndef TMR0_Main()
		#define	TMR0_Main() NOP()
	#endif

	//end

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
			   
		//Routine declaration	
		#define TMR1_Set()\
			Timer1=&VarTimer1;\
			T1CON=(_CS | _CKPS | 0x01);\
			TMR1H=TMR1H_Value;\
			TMR1L=TMR1L_Value;\
			TMR1IE=1;\
			PEIE=1;\
			GIE=1;\
			;
	
		#define TMR1_ISR()\
			if(TMR1IE && TMR1IF)\
			{\
				TMR1H=TMR1H_Value;\
				TMR1L=TMR1L_Value;\
				TMR1IF=0;\
				Dimmer_Main();\
				Timer1->Count++;\
				if(Timer1->Count == TMR1_1ms)\//1ms
				{\
					Timer1->Count=0;\
					TMain->T1_Timerout=1;\
				}\
			}\
			;


		#define setDimmerReClock()\
					TMR1H=255;\
					TMR1L=255;\
					Dimmer_Detect();\
					;

		#define TMR1_Trigger_Value Timer1->Trigger
		#define setTMR1_Trigger_OFF() Timer1->Trigger=0

	#endif

	#ifndef TMR1_Set()
		#define TMR1_Set() NOP()	
	#endif	
	
	#ifndef TMR1_ISR()
		#define TMR1_ISR() NOP()	
	#endif
	
	#ifndef TMR1_Func_1()
		#define TMR1_Func_1() NOP()
	#endif

	#ifndef TMR1_Func_2()
		#define TMR1_Func_2() NOP()
	#endif

	#ifndef setDimmerReClock()
		#define	setDimmerReClock()	NOP() 
	#endif
	//end

	//INT		
	#if INT_use == 1
		
		#define INT_Set()\
					WPUB0=0;\
					;\//INTE=1;
					PEIE=1;\
					GIE=1;\
					;

		#define INT_ISR()\
					if(INTE && INTF)\
					{\
						INTF=0;\
						INTE=0;\
						setRF_ReceiveGO(1);\
					}\
					;

		#define INT_GO()\
					INTF=0;\
					INTE=1;\
					;
	
		#define INT_Stop()\
					INTF=0;\
					INTE=0;\
					;

	#endif

	//INT NOP()
	#ifndef INT_Set()
		#define INT_Set() NOP()
	#endif

	#ifndef INT_ISR()
		#define INT_ISR() NOP()
	#endif

	#ifndef INT_Main()
		#define INT_Main() NOP()
	#endif

	#ifndef INT_GO()
		#define INT_GO() NOP()
	#endif

	#ifndef INT_Stop()
		#define INT_Stop() NOP()
	#endif

	//IOC
	#if IOC_use == 1

		#define IOC_Set()\
					WPUB2=0;\
					IOCBP=0b00000100;\
					IOCBN=0b00000100;\
					IOCBF=0b00000000;\
					IOCIE=1;\
					IOCIF=0;\
					GIE=1;\
					;

		#define IOC_ISR()\
					if(IOCIE && IOCIF && IOCBF2)\
					{\
						IOCBF2=0;\
						IOCIF=0;\
						IOC_Main();\
						if(TMain->PowerON == 1)\
						{\
							setDimmerReClock();\
						}\
					}\
					;
	#endif

	//IOC NOP
	#ifndef IOC_Set()
		#define IOC_Set() NOP()
	#endif

	#ifndef IOC_ISR()
		#define IOC_ISR() NOP()
	#endif

	#ifndef IOC_Main()
		#define IOC_Main() NOP()
	#endif


	//uart
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

		//Setup
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

		#define UART_Set()\
					Uart=&VarUart;\
					RX_PIN = 1;\
					TX_PIN = 1;\
					SPBRG = DIVIDER;\
					SPBRGH = DIVIDER_H;\
					BRG16 = BRG_16;\
					RCSTA = (NINE_BITS|0x90);\
					TXSTA = (SPEED|NINE_BITS|0x20);\
					TX9=0;\
					RX9=0;\
					TXIE=0;\
					RCIE=0;\
					;
		#define UART_ISR()\
					if(RCIE && RCIF)\
					{\
						while(RCIDL==0);\
						Uart->RxData[0]=RCREG;\
					}\
					;
		
		#define setUart_TxData(data)\
					printf("%d",Uart->TxData[data]);\
					;
	#endif

	void putch(unsigned char);
	unsigned char getch(void);
	unsigned char getche(void);

	//NOP
	#ifndef UART_Set()
		#define UART_Set() NOP()
	#endif

	#ifndef UART_ISR()
		#define UART_ISR() NOP()
	#endif

	#ifndef setUart_TxData(data)
		#define setUart_TxData(data) NOP()
	#endif

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
			unsigned int Time;
		};
		struct FlashMemory *Memory;
		struct FlashMemory VarMemory={
			{
			 0xff,0xff,0xff,0xaa,0,0,0,0,
			 0,0,0,0,0,0,0,0,
			 0,0,0,0,0,0,0,0,
			 0,0,0,0,0,0xaa,0xaa,0xaa,
			},
		};
	
		#define Flash_Memory_Set()\
					Memory=&VarMemory;\
					;

		#define Flash_Memory_Initial_Main()\
					if(Flash_Memory_Read(31) == 0xaa)\
					{\
						Product->Data[12]=Flash_Memory_Read(0);\
						Product->Data[13]=Flash_Memory_Read(1);\
						Product->Data[14]=Flash_Memory_Read(2);\
						Product->Data[21]=Flash_Memory_Read(3);\
						Product->Data[22]=Flash_Memory_Read(4);\
						Product->Data[23]=Flash_Memory_Read(5);\
					}\
					else\
					{\
						GIE=0;\
						;\//Flash_Memory_Erasing()
						Flash_Memory_Write();\
						GIE=1;\
					}\
					;

		#define Flash_Memory_Main_Content()\
					if(Memory->GO)\
					{\
						if(Memory->Modify)\
						{\
							Memory->Time++;\
							if(Memory->Time == 1000)\//ms
							{\
								Memory->Time=0;\
								Memory->Modify=0;\
								Memory->GO=0;\
								Flash_Memory_Modify();\
							}\
						}\
						else\
						{\
							Memory->GO=0;\
						}\
					}\
	

		#define Flash_Memory_Unlock_Main()\
					PMCON2=0x55;\
					PMCON2=0xaa;\
					WR=1;\
					NOP();\
					NOP();\
					;

		#define Flash_Memory_Read_Main()\
					PMADRH=0x1a;\
					PMADRL=address;\
					CFGS=0;\
					RD=1;\
					i=PMDATH;\
					ret=PMDATL;\
					;

		#define Flash_Memory_Write_Main()\
					CFGS=0;\
					PMADRH=0x1a;\
					PMDATH=0;\
					FREE=0;\
					LWLO=1;\
					WREN=1;\
					for(i=0 ; i<32 ; i++)\
					{\
						PMADRL=i;\
						PMDATL=Memory->Data[i];\
						Flash_Memory_Unlock();\
					}\
					LWLO=0;\
					Flash_Memory_Unlock();\
					WREN=0;\
					;

		
		#define Flash_Memory_Erasing_Main()\
					CFGS=0;\
					PMADRH=0x1a;\
					PMADRL=0x00;\
					FREE=1;\
					WREN=1;\
					Flash_Memory_Unlock();\
					WREN=0;\
					;

		#define Flash_Memory_Modify_Main()\
					for(i=0;i<32;i++)\
					{\
						Memory->Data[i]=Flash_Memory_Read(i);\
					}\
					setMemoryData(0,Product->Data[12]);\
					setMemoryData(1,Product->Data[13]);\
					setMemoryData(2,Product->Data[14]);\
					setMemoryData(3,Product->Data[21]);\
					setMemoryData(4,Product->Data[22]);\
					setMemoryData(5,Product->Data[23]);\
					GIE=0;\
					Flash_Memory_Erasing();\
					Flash_Memory_Write();\
					GIE=1;\
					;
					
		#define setMemoryData(address,data) Memory->Data[address]=data	
		#define setMemory_Modify(command) Memory->Modify=command
		#define setMemory_GO(command) Memory->GO=command

	#endif 

	void Flash_Memory_Initial();
	void Flash_Memory_Unlock();
	char Flash_Memory_Read(char);
	void Flash_Memory_Write();
	void Flash_Memory_Erasing();
	void Flash_Memory_Modify();
	void Flash_Memory_Main();

	//NOP


	#ifndef setMemory_GO(command)
		#define setMemory_GO(command) NOP()
	#endif 

	#ifndef Flash_Memory_Main_Content()
		#define Flash_Memory_Main_Content() NOP()
	#endif 

	#ifndef Flash_Memory_Set()
		#define Flash_Memory_Set() NOP()
	#endif 

	#ifndef Flash_Memory_Initial_Main()
		#define Flash_Memory_Initial_Main() NOP()
	#endif 

	#ifndef Flash_Memory_Unlock_Main()
		#define Flash_Memory_Unlock_Main() NOP()
	#endif 

	#ifndef Flash_Memory_Read_Main()
		#define Flash_Memory_Read_Main() NOP()
	#endif 

	#ifndef Flash_Memory_Write_Main()
		#define Flash_Memory_Write_Main() NOP()
	#endif 

	#ifndef Flash_Memory_Erasing_Main()
		#define Flash_Memory_Erasing_Main() NOP()
	#endif 

	#ifndef Flash_Memory_WriteData_Modity_Main()
		#define Flash_Memory_WriteData_Modity_Main() NOP()
	#endif 

	#ifndef setMemoryData(address,data)
		#define setMemoryData(address,data) NOP()
	#endif 
	
	//Routine declaration
	#define Mcu_Initial()\
		;\//Fosc
		Fosc_Set();\
		;\//I/O
		IO_Set();\
		;\//Timer0
		TMR0_Set();\
		;\//Timmer1
		TMR1_Set();\
		;\//ADC
		ADC_Set();\
		;\//Timmer2
		;\//TMR2_Set();
		;\//INT
		INT_Set();\
		;\//IOC
		IOC_Set()\
		;\//UART	
		UART_Set();\
		;\//Flash_Memory
		Flash_Memory_Set();\
		;
		
//end file
#endif