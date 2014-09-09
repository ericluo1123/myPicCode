#ifndef _SERIAL_H_
#define _SERIAL_H_


//UART
//Uart initial
  #define UART_Initial()\
	TXIE=0;\
	RCIE=0;\
	Uart=&VarUart;\
	Uart->SendPC=0

	
 
  #define FOSC_16M		16000000L
  #define FOSC_8M		8000000L
  #define FOSC_4M		4000000L
  #define FOSC_1M		1000000L

  #if OSSCON_Value == OSCCON_16M
  #define	FOSC_Value	FOSC_16M
  #endif

  #if OSSCON_Value == OSCCON_8M
  #define	FOSC_Value	FOSC_8M
  #endif

  #if OSSCON_Value == OSCCON_4M
  #define	FOSC_Value	FOSC_4M
  #endif

  #if OSSCON_Value == OSCCON_1M
  #define	FOSC_Value	FOSC_1M
  #endif	

  #define BAUD 19200				//19200   9600   
  #define FOSC FOSC_Value

  #define NINE 		 0     /* Use 9bit communication? FALSE=8bit */
 
  #define SYNC		 0		//0		EUSART Mode
							//1
  #define BRG_16	 0		//0		16-bit Baud Rate Generator
							//1	
  #define HIGH_SPEED 1		//0		High Baud Rate Select
							//1


  #if(SYNC_BIT==0 && BRG_16==0 && HIGH_SPEED==0)
  #define DIVIDER_H 0	
  #define DIVIDER ((int)(FOSC/(64UL * BAUD) -1))
  #endif
	
  #if(SYNC_BIT==0 && BRG_16==0 && HIGH_SPEED==1)
  #define DIVIDER_H 0
  #define DIVIDER ((int)(FOSC/(16UL * BAUD) -1))
  #endif

  #if(SYNC_BIT==0 && BRG_16==1 && HIGH_SPEED==0)
  #define DIVIDER_H ((int)((FOSC/(16UL * BAUD) -1)/256))
  #define DIVIDER ((int)((FOSC/(16UL * BAUD) -1)%256))
  #endif

  #if(SYNC_BIT==0 && BRG_16==1 && HIGH_SPEED==1)
  #define DIVIDER_H ((int)((FOSC/(16UL * BAUD) -1)/256))
  #define DIVIDER ((int)((FOSC/(16UL * BAUD) -1)%256))
  #endif

/*Setup*/
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

/* Serial initialization */
  #define init_comms()\
	RX_PIN = 1;\
	TX_PIN = 1;\
	SPBRG = DIVIDER;\
	SPBRGH = DIVIDER_H;\
	BRG16 = BRG_16;\
	RCSTA = (NINE_BITS|0x90);\
	TXSTA = (SPEED|NINE_BITS|0x20);\
	TX9=0;\
	RX9=0;
			
	
		
	void putch(unsigned char);
	unsigned char getch(void);
	unsigned char getche(void);

//command
#define Transmit		0xaa
#define ReadRegister	0x11
#define WriteRegister	0x12


/*Global extern varitable declaration*/
struct UART
{
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
	unsigned char TxData[];	
	unsigned char RxData[];	
	unsigned char WaitTime;
}VarUart,*Uart;

/*Routine declaration*/
//void Uart_Initial();

/***Setup***/

		
#endif











