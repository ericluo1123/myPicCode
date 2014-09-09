
// Include
#include "../2.Development_V1.0/Development_V1.0.h"

#include "../Header_File/MCU_16F1516.h"
#include "../Header_File/SegmentDisplay.h"
#include "../Header_File/Touch.h"	
#include "../Header_File/I2C.h"
#include "../Header_File/Usart.h"	
	#include <stdio.h>

//Initialization
void Display_Initial()
{
	Segment=&VarSegment;
	Segment->Enable=1;
	Segment->DecToHex=1;
	LED2=1;

	Segment->Display[0]=Zero;	
	Segment->Display[1]=One;
	Segment->Display[2]=Two;
	Segment->Display[3]=Three;
	Segment->Display[4]=Four;
	Segment->Display[5]=Five;
	Segment->Display[6]=Six;
	Segment->Display[7]=Seven;
	Segment->Display[8]=Eight;
	Segment->Display[9]=Nine;
	Segment->Display[10]=Ten;
	Segment->Display[11]=Eleven;
	Segment->Display[12]=Twelve;
	Segment->Display[13]=Thirteen;
	Segment->Display[14]=Fourteen;	
	Segment->Display[15]=Fifteen;
	Segment->Display[16]=Hyphen;
		
//	Display_Setting(0xffff);
}
void Display_Setting(unsigned int Data)
{
	char i;	
	Segment->GO=1;

//	if(DisplayUnit == 1)
	if(Segment->DecToHex==1)
	{
		Segment->Num[0]	=    Data 		& 0x000f; 
		Segment->Num[1]	=	(Data>>4) 	& 0x000f; 
		Segment->Num[2]	=	(Data>>8) 	& 0x000f;
		Segment->Num[3]	=	(Data>>12) 	& 0x000f;
	}
	else
	{
		if(Data > 0x270f)	
		{
			for(i=0;i<4;i++)
				Segment->Num[i]=16;
		}
		else
		{		
			Segment->Num[3]	=	Data/1000;
			Data %= 1000;  	
			Segment->Num[2]	=	Data/100; 
			Data %= 100;  	 
			Segment->Num[1]	=	Data/10;	
			Data %= 10;  
			Segment->Num[0]	=	Data;		
		}
	}
}

void Display_Main()
{
	char i,j;
	i=0x10;
	if(Segment->Enable==1 && Segment->GO==1)
	{
		if(Segment->Num[3]>0)
			j=3;
		else if(Segment->Num[2]>0)
			j=2;
		else if(Segment->Num[1]>0)
			j=1;
		else
			j=0;

		if(Segment->ComCount<j)
			Segment->ComCount++;
		else
			Segment->ComCount=0;

		ComValue &= 0x0f;
		i = i<< Segment->ComCount;
		ComValue ^= i;
		DisplayValue=Segment->Display[Segment->Num[Segment->ComCount]];
	}
}