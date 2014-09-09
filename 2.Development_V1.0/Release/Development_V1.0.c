
//include
//#include <iostream.h>
#include <string.h>
//#include "../Header_File/Configure.h"
#include "../2.Development_V1.0/Development_V1.0.h"

#include "../Header_File/MCU_16F1516.h"
#include "../Header_File/SegmentDisplay.h"
#include "../Header_File/Touch.h"	
#include "../Header_File/I2C.h"	
#include "../Header_File/Usart.h"	
#include <stdio.h>

//using namespace std;
//main
int CDS_Get();

void main()
{	
	int i;
	char j,k,l;
	i=0;
	j=0;
	k=0;
	l=0;
	MCU_Initial();	
	Display_Initial();
//	Touch_Initial();
//	UART_Initial();
//	init_comms();
	//I2C_Initial();

//	Uart->Number=1;	
//	Uart->ReceiverOK =0;
//	Uart->TransmitGO=1;	

//	Uart->TxData[0]='A';
//	Uart->TxData[1]='B';
//	Uart->TxData[2]='C';	
	while(1)
	{
		
	/*	if(Uart->ReceiverOK == 1)
		{
			Uart->ReceiverOK = 0;
			Uart->Number=1;
			Display_Setting(Uart->RxLength);
			Uart->RxLength=0;
		
		}
*/
		//5ms
		if(Intr->Timeout==T5ms)
		{
			Intr->Timeout=0;
			//segment display
			Display_Main();	
 		//	Touch_Main();
			
				
			j++;
			if(j>=20)//100ms
			{	
				j=0;
				if(k==0)
				{
					if(CDS_Get()<=0x40)
					{
						k=1;
						i++;
						Display_Setting(i);
					}
				}
				else
				{
					if(CDS_Get()>=0x80)
						k=0;
				}					
			}
			

			//1s
			if(Intr->Count1<200)	
				Intr->Count1++;
			else
			{
				
				Intr->Count1=0;
				
 				//I2C_Transmit();
			/*	if(Uart->TransmitGO == 1)
				{
				/*	for(k=0;k<3;k++)
					{
						TXREG=Uart->TxData[k];
						while(TRMT==0);
					}*/	
					
				//	printf("linux setup computer");
					
					
				//	LED1=~LED1;
			//	}

			}	
		}	
	}		
}

int CDS_Get()
{
	int i=0;
	ADCON0=AN0;
  	//sample time();
	ADGO=1;
	while(ADGO);
	i=((ADRESH*256)+ADRESL);
	
		
	return i;
}
//end file