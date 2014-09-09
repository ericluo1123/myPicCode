//
// File Name:RF_Rx_04.c
//----------------------------------------------------------------------------
// Project Name: 2.4 GHz RF transceiver – CC2500
// Module Name: RTX_LCM_FSK (DataRate2.4k) v1.0
//----------------------------------------------------------------------------
//
// Company:RIFO Technology Co.Ltd. 
//         http://www.rifo.com.tw/
// Company :Loong-Yee
// http://www.loong-yee.com.tw
// Engineer: Jack Chang
// Create Date:2013.10.01
// Revision: 1.0
//
// Description: CC2500 DataRate2.4k
//              Fixed Length, No Address ID
// Target Devcies: PIC16F1516
//
// Tool Chain: MicroChip MPLAB 
// Copyright RIFO Technology Co.,Ltd.All Rights Reserved
//
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
//#include "pic.h"
//#include "pic16f1516.h"
//#include "stdio.h"
//#include "stdlib.h"
//#include "string.h"
//#include "usart.h"
//#include "CC2500_rx4.h"                 // CC2500 register declarations
//#include "CC2500_tx4.h"                 // CC2500 register declarations
//#include "Basic_Function.h"
#include "../Release/Switch_2Key_Triac.h"
//-----------------------------------------------------------------------------
// Function PROTOTYPES
//-----------------------------------------------------------------------------
//void CC2500_PowerOnInitial(void);
//void CC2500_PowerRST(void);
//void CC2500_InitSetREG(void);
//void CC2500_InitPATable(void);
//void CC2500_ClearTXFIFO(void);
//void CC2500_ClearRXFIFO(void);
//void CC2500_FrequencyCabr(void);
//void CC2500_SIDLEMode(void);

//void CC2500_WriteByte(void);
//void CC2500_WriteREG(unsigned char addr, unsigned char value);
//void CC2500_ReadByte(void);
//void CC2500_ReadREG(unsigned char addr);
//void CC2500_ReadStatus(unsigned char s_addr);
//void CC2500_WriteCommand(unsigned char command);
//void CC2500_TxData(unsigned char PackID);
//CC2500_RxData(void);

//-----------------------------------------------------------------------------
// Global CONSTANTS
//-----------------------------------------------------------------------------
/*
#define CC2500_CSN		RC0			//PIC 16F1516 Pin 11
#define CC2500_GDO0		RC1			//PIC 16F1516 Pin 12
#define CC2500_GDO2		RC2			//PIC 16F1516 Pin 13
#define CC2500_SCK		RC3			//PIC 16F1516 Pin 14
#define CC2500_SI		RC4			//PIC 16F1516 Pin 15
#define CC2500_SO		RC5			//PIC 16F1516 Pin 16
#define Error_LED		RB5			
*/
//-----------------------------------------------------------------------------
// Global VARIABLES
//-----------------------------------------------------------------------------

//unsigned char SPI0Buffer;
//unsigned char r_data;
//unsigned char s_data;
//unsigned char r_address;
//unsigned char Rx_Data[23];
//unsigned char Tx_Data[21];
//unsigned char RSSI;
//unsigned char CRC;
//unsigned char Receive_OK=0;
//unsigned char Read_Data[32]=0;


/*****************************************************************************/
void RF_Data_Erace(void)
{
	char Erace_Count=0;
	for(Erace_Count=0;Erace_Count<23;Erace_Count++)
	{
		Rx_Data[Erace_Count]=0;
	}
}

/*****************************************************************************/
RF_Data_Read_Temp(char Read_Count)
{
	char RF_Current;

	RF_Current=Rx_Data[Read_Count];
	return(RF_Current);
		
}

//=============================================================================
// CC2500 RF Module Initial 
//=============================================================================

void CC2500_PowerOnInitial(void)
{
	 unsigned char i;

	   for(i=0;i<23;i++)			//Clear Receiver Array
	{
	    Rx_Data[i] = 0;
	}

      CC2500_PowerRST();
      CC2500_InitSetREG();
	  CC2500_InitPATable();
	
	  CC2500_ClearTXFIFO();
	  CC2500_ClearRXFIFO();
	  CC2500_FrequencyCabr();
	  CC2500_SIDLEMode();
	  
		

}
//-----------------------------------------------------------------------------
// CC2500 power on reset
//-----------------------------------------------------------------------------
void CC2500_PowerRST(void)
{

	CC2500_SO=0;
	CC2500_CSN=1;
	DelayTime_1us(1);
	CC2500_SCK=0;
	DelayTime_1us(1);
	CC2500_SI=0;
	DelayTime_1us(1);
	CC2500_WriteCommand(CC2500_SIDLE);
	CC2500_CSN=1;
	DelayTime_1us(1);
	CC2500_CSN=0;
	DelayTime_1us(1);
	CC2500_CSN=1;
	DelayTime_1us(1);
	CC2500_CSN=0;
	SPI0Buffer=CC2500_SRES;          // Reset
	while(CC2500_SO==1); // wait for chip ready
	CC2500_WriteByte();
	while(CC2500_SO==1); // wait for chip ready , reset complete
	CC2500_SI = 0;
	CC2500_CSN = 1;    

}

//-----------------------------------------------------------------------------
// CC2500 register initial
//-----------------------------------------------------------------------------
// DESCRIPTION:
//  Writes "value" to a single configuration register at address "addr".
//-----------------------------------------------------------------------------
void CC2500_InitSetREG(void)
{
     unsigned char loop_c;
	 unsigned char temp1,temp2;

	 for(loop_c=0;loop_c<47;loop_c++)
	 {
         temp1 = CC2500_registers_address[loop_c];
		 temp2 = CC2500_rfSettings[loop_c];

		 CC2500_WriteREG(temp1,temp2);
//		 CC2500_WriteREG(loop_c,temp2);
		 CC2500_ReadREG(temp1);
	 }
}

//-----------------------------------------------------------------------------
// Write CC2500 PA Table register data
//-----------------------------------------------------------------------------
void CC2500_InitPATable(void)
{
    unsigned char loop_d;
    unsigned char temp;
	
	CC2500_CSN = 0;						//2013.10.12
	CC2500_CSN = 0;						//2013.10.12
	SPI0Buffer=CC2500_PATABLE+0x40;		//2013.10.12
	while(CC2500_SO==1);				//2013.10.12
	CC2500_WriteByte();					//2013.10.12

	for(loop_d=0;loop_d<8;loop_d++)
	{
		SPI0Buffer=CC2500_patable_vaule[loop_d];		//2013.10.12
		CC2500_WriteByte();
	}
	CC2500_CSN = 1;							//2013.10.12
	CC2500_CSN = 1;							//2013.10.12
}

//-----------------------------------------------------------------------------
// CC2500 Clear TXFIFO
//-----------------------------------------------------------------------------
void CC2500_ClearTXFIFO(void)
{
     CC2500_WriteCommand(CC2500_SFTX);
}

//-----------------------------------------------------------------------------
// CC2500 Clear RXFIFO
//-----------------------------------------------------------------------------
void CC2500_ClearRXFIFO(void)
{
     CC2500_WriteCommand(CC2500_SFRX);
}

//-----------------------------------------------------------------------------
// CC2500 frequency calibration
//-----------------------------------------------------------------------------
void CC2500_FrequencyCabr(void)
{
     CC2500_WriteCommand(CC2500_SCAL);
//	 delayus(1000);
	 DelayTime_1us(1000);

}

//-----------------------------------------------------------------------------
// CC2500 SIDLE Mode
//-----------------------------------------------------------------------------
void CC2500_SIDLEMode(void)
{
     CC2500_WriteCommand(CC2500_SIDLE);
}
//=============================================================================
// CC2500 function service
//=============================================================================
//-----------------------------------------------------------------------------
// MCU write one byte to CC2500
//-----------------------------------------------------------------------------
void CC2500_WriteByte(void)
{
     unsigned char loop_a;
	 char Write_Byte_Count=0;

 	 for(loop_a=0;loop_a<8;loop_a++)
	 {
         if(SPI0Buffer&0x80)
		 	 CC2500_SI = 1;
		 else
		 	 CC2500_SI = 0;

		 CC2500_SCK = 1;
		 SPI0Buffer <<=1;
		for(Write_Byte_Count=0;Write_Byte_Count<1;Write_Byte_Count++)		//使Hi /Low時間長度一致
		{

		}
		 CC2500_SCK = 0;
	 }

}
//-----------------------------------------------------------------------------
// MCU read one byte 
//-----------------------------------------------------------------------------
void CC2500_ReadByte(void)
{
    unsigned char loop_b;

	for(loop_b=0;loop_b<8;loop_b++)
	{
        CC2500_SCK = 1;
		SPI0Buffer <<=1;

		if(CC2500_SO==1)
			SPI0Buffer |=0x01;
		else 
			SPI0Buffer &= 0xFE;
		
		CC2500_SCK = 0;
	}

}
//-----------------------------------------------------------------------------
// MCU write REG to CC2500
//-----------------------------------------------------------------------------
// DESCRIPTION:
//  Writes a single configuration register at address 
//-----------------------------------------------------------------------------
void CC2500_WriteREG(unsigned char w_addr, unsigned char value)
{
    CC2500_CSN = 1;
	CC2500_CSN = 0;
	SPI0Buffer = w_addr;
	while(CC2500_SO==1);
	CC2500_WriteByte();
    SPI0Buffer = value;
	CC2500_WriteByte();

	CC2500_CSN = 1;
	CC2500_CSN = 1;
}

//-----------------------------------------------------------------------------
// MCU read REG to CC2500
//-----------------------------------------------------------------------------
// DESCRIPTION:
//  Reads a single configuration register at address "addr" and returns the
//  value read.
//-----------------------------------------------------------------------------
void CC2500_ReadREG(unsigned char r_addr)
{
     CC2500_CSN = 0;
	 SPI0Buffer = r_addr+0x80;		//原始Sample Code

	 while(CC2500_SO==1);

	 CC2500_WriteByte();
	 CC2500_ReadByte();
	 
	 CC2500_CSN = 1;
     r_data = SPI0Buffer;			//DataSheet 沒有此行
}

//-----------------------------------------------------------------------------
// MCU write command to CC2500
//-----------------------------------------------------------------------------
void CC2500_WriteCommand(unsigned char command)
{
    CC2500_CSN = 0;
	SPI0Buffer = command;
	while(CC2500_SO==1);

	CC2500_WriteByte();
	CC2500_CSN = 1;
	
}

//-----------------------------------------------------------------------------
// CC2500 TX Function
//-----------------------------------------------------------------------------
// DESCRIPTION:
//   Fixed length, select Address ID
//-----------------------------------------------------------------------------
void CC2500_TxData(unsigned char PackID)
{
     unsigned char loop_e;

	 CC2500_CSN = 0;
	 SPI0Buffer = CC2500_TXFIFO+0x40;

	 while(CC2500_SO==1);
	 CC2500_WriteByte();

	 for(loop_e=0;loop_e<(D_PKTLEN);loop_e++)
	 {
        SPI0Buffer = Tx_Data[loop_e];
		CC2500_WriteByte();
	 }

	 CC2500_CSN = 1;

	 CC2500_WriteCommand(CC2500_STX);
	 while(CC2500_GDO0==0);
	 while(CC2500_GDO0==1);

	 CC2500_WriteCommand(CC2500_SIDLE);
	 CC2500_WriteCommand(CC2500_SFTX);	 

}

//-----------------------------------------------------------------------------
// CC2500 RX Function
//-----------------------------------------------------------------------------
// DESCRIPTION:
//   Fixed length, Check Address ID
//-----------------------------------------------------------------------------
CC2500_RxData(void)
{
    unsigned char loop_f;
//	int Wait_Count=0;
	
//	TRISC=0x26;		//CC2500 Settting

	CC2500_WriteCommand(CC2500_SRX);   // receive mode


	while(CC2500_GDO0=0);             // wait for data
 

	if(CC2500_GDO0==1)                 // Check whether have data
	{
         while(CC2500_GDO0==1);       // wait for receive complete
		 
         CC2500_ReadStatus(CC2500_RXBYTES);

		 if(s_data!=0)         
		 {
            CC2500_CSN = 0;
			SPI0Buffer = CC2500_RXFIFO+0xC0;

			while(CC2500_SO==1);

			CC2500_WriteByte();
				
			for(loop_f=0;loop_f<s_data;loop_f++)
			{
                CC2500_ReadByte();
				Rx_Data[loop_f] = SPI0Buffer;
			}
			

//			CC2500_ReadByte();     // Read RSSI data
//			RSSI = SPI0Buffer;		//讀到的資料

//			CC2500_ReadByte();
//			CRC = SPI0Buffer;		//讀到的CRC 訊號

			CC2500_CSN = 1;
	

//			if(Rx_Data[22]&0x80)
//			{
//				Wait_Rx_Count=0;
               	Receive_OK = 1;
			   	Receive_OK = 1;
				CC2500_WriteCommand(CC2500_SIDLE);
				CC2500_WriteCommand(CC2500_SFRX);
//				goto End_RF_Receiver;
//			}
		
			
		 }
	}
//	else
//	{
//		Wait_Count=Wait_Count+1;
//		if(Wait_Count>=300)
//		{
//			goto End_RF_Receiver;
//		}
//		else
//		{
//			goto Receiver_Data_Loop;
//		}
//	}
	

//End_RF_Receiver:

	
//	if(Receive_OK==1)
//	{
//
//		return(Receive_OK);
//	}
//	else
//	{
//		return(0);
//	}
  	LED3=~LED3;   
}

//-----------------------------------------------------------------------------
// MCU read one status register data
//-----------------------------------------------------------------------------
void CC2500_ReadStatus(unsigned char state_addr)
{
    CC2500_CSN = 0;
	SPI0Buffer =  state_addr+0xC0;
	while(CC2500_SO==1);   // wait for chip ready 

	CC2500_WriteByte();
	CC2500_ReadByte();

	CC2500_CSN = 1;

	s_data = SPI0Buffer;		
	
}
//=============================================================================
// Interrupt Service Routines
//=============================================================================
//-----------------------------------------------------------------------------
// Dealy Time for 1 us
//-----------------------------------------------------------------------------
//
//This routine changes the state of the LED whenever Timer2 overflows.
//
//-----------------------------------------------------------------------------
void DelayTime_1us(int count)
{
	unsigned int i,j;
	for(i=1;i<count;i++)	
		for(j=0;j<=1;j++);
}
