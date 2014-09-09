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
//-----------------------------------------------------------------------------

// Includes
#include "../Header_File/PCB_Select.h"




//Function

void RF_Main()
{
	if(CC2500_Enable == 1)
	{
		if(Switch_Debounce_1)	//有鍵按下
		{
			if(RxStatus)
			{
				RxStatus=0;
				Receive_GO=0;
				CC2500_WriteCommand(CC2500_SIDLE);	// idle
				CC2500_WriteCommand(CC2500_SFRX);	// clear RXFIFO data
				INT_Stop();
			}
		}
		else
		{
			if(Receive_GO)	//有資料接收
			{
				Receive_GO=0;
				CC2500_RxData();
				getRxData();			
			}
			else
			{	
				if(Transceive_GO)	//有資料要發射
				{
					if(RxStatus)
					{
						RxStatus=0;
						Receive_GO=0;
						CC2500_WriteCommand(CC2500_SIDLE);	// idle
						CC2500_WriteCommand(CC2500_SFRX);	// clear RXFIFO data
						INT_Stop();
					}	
					Transceive_GO=0;
					CC2500_TxData();	
				}
				else
				{
/*
					if(RxStatus == 0)	//設置為接收模式
					{
						RxStatus=1;
						CC2500_WriteCommand(CC2500_SIDLE);	// idle
						CC2500_WriteCommand(CC2500_SRX);  	// set receive mode	
						INT_GO();	
					}			
*/					
				}
			}
		}
	}
}


void setTxData()
{
	if(Transceive_GO == 0)
	{	
		Transceive_GO=1;
	
		setRF_Data(0,0xaa);
		setRF_Data(1,0xaa);
		setRF_Data(9,Temp->AD1);
		setRF_Data(10,Temp->AD2);


		setRF_Data(2,OverLoad->ADH1);
		setRF_Data(3,OverLoad->ADH2);
		setRF_Data(4,OverLoad->ADL1);
		setRF_Data(5,OverLoad->ADL2);
		setRF_Data(6,OverLoad->AD1);
		setRF_Data(7,OverLoad->AD2);

		setRF_Data(11,OverLoad->ErrorStatus);
		setRF_Data(13,OverLoad->LightsCount);

	}
}
void getRxData()
{
	if(RF_Data[0]== 0 && RF_Data[1]==2)
	{
		LED3=~LED3;
	}		
}

void RF_Disalbe()
{
	CC2500_Enable=0;
	RxStatus=0;
	Receive_GO=0;
	CC2500_WriteCommand(CC2500_SIDLE);	// idle
	CC2500_WriteCommand(CC2500_SFRX);	// clear RXFIFO data
	INT_Stop();
	Transceive_GO=0;
	CC2500_WriteCommand(CC2500_SIDLE);	// idle
	CC2500_WriteCommand(CC2500_SFTX);	// clear TXFIFO data	
}
void RF_Enable()
{
	CC2500_Enable=1;
}
//-----------------------------------------------------------------------------
// CC2500 TX Function
//-----------------------------------------------------------------------------
void CC2500_TxData()
{
	unsigned char loop_e;
	CC2500_CSN=0;
	SPI0Buffer=CC2500_TXFIFO+0x40;	
	while(CC2500_SO==1);		
	CC2500_WriteByte();
	SPI0Buffer=Tx_Length;
	CC2500_WriteByte();	
	for(loop_e=0;loop_e<Tx_Length;loop_e++)
	{
		SPI0Buffer=RF_Data[loop_e];
		CC2500_WriteByte();
	}
	CC2500_CSN=1;
	CC2500_WriteCommand(CC2500_STX);	// set Transmission MODE
	while(CC2500_GDO0==0);
	while(CC2500_GDO0==1);		
	CC2500_WriteCommand(CC2500_SIDLE);	// idle
	CC2500_WriteCommand(CC2500_SFTX);	// clear TXFIFO data	
	Transceive_OK=1;
}
//-----------------------------------------------------------------------------
// CC2500 RX Function
//-----------------------------------------------------------------------------
void CC2500_RxData(void)
{	
	unsigned char loop_f;
//	CC2500_WriteCommand(CC2500_SRX);  		// set receive mode
//	while(CC2500_GDO0==0);            		// wait for data 
	if(CC2500_GDO0 == 1)  	 				// Check whether have data
	{		
		while(CC2500_GDO0 == 1);			 // wait for receive complete	  		 
	}				 
	CC2500_ReadStatus(CC2500_RXBYTES);
	if(s_data != 0)
	{
		CC2500_CSN=0;
		SPI0Buffer=CC2500_RXFIFO+0xC0;
		while(CC2500_SO==1);
		CC2500_WriteByte();
				
		CC2500_ReadByte();
		Rx_Length=SPI0Buffer;
		for(loop_f=0;loop_f<Rx_Length;loop_f++)
		{
			CC2500_ReadByte();
			RF_Data[loop_f]=SPI0Buffer;
		}
		CC2500_ReadByte();     // Read RSSI data
		RSSI=SPI0Buffer;
		CC2500_ReadByte();
		CRC=SPI0Buffer;
		CC2500_CSN=1;
		if(CRC & 0x80)
			Receive_OK=1;
	}			
	CC2500_WriteCommand(CC2500_SIDLE);	// idle
	CC2500_WriteCommand(CC2500_SFRX);	// clear RXFIFO data	
	RxStatus=0;
}
//=============================================================================
// CC2500 RF Module Initial 
//=============================================================================
void CC2500_PowerOnInitial(void)
{	
	if(CC2500_use == 1)
	{	
		CC2500_Enable=1;
		setTxLength(21);

		CC2500_PowerRST();					//reset
	    CC2500_InitSetREG();				//setting register
	 	CC2500_InitPATable();				//setting PA Table
		CC2500_ClearTXFIFO();				//clear TX FIFO
		CC2500_ClearRXFIFO();				//clear RX FIFO
		CC2500_FrequencyCabr();				//frequency calibration
		CC2500_SIDLEMode();					//IDLE
	}	
}
//-----------------------------------------------------------------------------
// CC2500 reset
//-----------------------------------------------------------------------------
void CC2500_PowerRST(void)
{
	CC2500_SCK=0;
	CC2500_SI=0;

    CC2500_CSN=1;
	DelayTime_1us(10);
	CC2500_CSN=0;
	DelayTime_1us(10);
	CC2500_CSN=1;
	DelayTime_1us(40);

	CC2500_CSN=0;
	SPI0Buffer=CC2500_SRES;     // Reset command
	while(CC2500_SO==1); 		// wait for chip ready

	CC2500_WriteByte();
	while(CC2500_SO==1); 		// wait for chip ready , reset complete

	CC2500_SI=0;
	CC2500_CSN=1;    
}
//-----------------------------------------------------------------------------
// CC2500 register initial
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
	 }
}
//-----------------------------------------------------------------------------
// Write CC2500 PA Table register data
//-----------------------------------------------------------------------------
void CC2500_InitPATable(void)
{
    unsigned char loop_d;
    unsigned char temp;

	for(loop_d=0;loop_d<8;loop_d++)
	{
        temp=CC2500_patable_vaule[loop_d];
		CC2500_WriteREG(CC2500_PATABLE,temp);
	}
							
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
	 DelayTime_1us(1000);
}
//-----------------------------------------------------------------------------
// CC2500 SIDLE Mode
//-----------------------------------------------------------------------------
void CC2500_SIDLEMode(void)
{
     CC2500_WriteCommand(CC2500_SIDLE);
}

/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/

//-----------------------------------------------------------------------------
// write one byte
//-----------------------------------------------------------------------------
void CC2500_WriteByte(void)
{
     unsigned char loop_a;

 	 for(loop_a=0;loop_a<8;loop_a++)
	 {
         if(SPI0Buffer&0x80)
		 	 CC2500_SI=1;
		 else
		 	 CC2500_SI=0;

		 CC2500_SCK=1;
		 SPI0Buffer<<=1;
		 CC2500_SCK=0;
	 }
}
//-----------------------------------------------------------------------------
// read one byte 
//-----------------------------------------------------------------------------
void CC2500_ReadByte(void)
{
    unsigned char loop_b;

	for(loop_b=0;loop_b<8;loop_b++)
	{
        CC2500_SCK=1;
		SPI0Buffer<<=1;
		if(CC2500_SO == 1)
			SPI0Buffer |= 0x01;	
		else 			
			SPI0Buffer &= 0xFE;
		
		CC2500_SCK=0;	
	}
}
//-----------------------------------------------------------------------------
// write REG to CC2500
//-----------------------------------------------------------------------------
void CC2500_WriteREG(unsigned char w_addr, unsigned char value)
{
	CC2500_CSN=0;
	SPI0Buffer=w_addr;	//register address

	while(CC2500_SO==1);

	CC2500_WriteByte();
    SPI0Buffer=value;	//register data
	CC2500_WriteByte();
	CC2500_CSN=1;
}
//-----------------------------------------------------------------------------
// read REG to CC2500
//-----------------------------------------------------------------------------
void CC2500_ReadREG(unsigned char r_addr)
{
     CC2500_CSN=0;
	 SPI0Buffer=r_addr+0x80;	//read register +0x80	

	 while(CC2500_SO==1);

	 CC2500_WriteByte();
	 CC2500_ReadByte();
	 CC2500_CSN=1;

     r_data=SPI0Buffer;		
}
//-----------------------------------------------------------------------------
// write command to CC2500
//-----------------------------------------------------------------------------
void CC2500_WriteCommand(unsigned char command)
{
    CC2500_CSN=0;
	SPI0Buffer=command;

	while(CC2500_SO==1);

	CC2500_WriteByte();
	CC2500_CSN=1;
}
//-----------------------------------------------------------------------------
// read one status register data
//-----------------------------------------------------------------------------
void CC2500_ReadStatus(unsigned char status_addr)
{
	CC2500_ReadStatus_Main();
/*
    CC2500_CSN=0;
	SPI0Buffer=status_addr+0xC0;	//read status +0xc0

	while(CC2500_SO==1);   			

	CC2500_WriteByte();
	CC2500_ReadByte();
	CC2500_CSN=1;

	s_data=SPI0Buffer;
*/			
}
//-----------------------------------------------------------------------------
// Dealy Time for 1 us
//-----------------------------------------------------------------------------
void DelayTime_1us(int count)
{
	unsigned int i,j;
	DelayTime_1us_Main();
//	for(i=1;i<count;i++)	
//		for(j=0;j<=1;j++);
}
//-----------------------------------------------------------------------------
// End Of File
//-----------------------------------------------------------------------------

