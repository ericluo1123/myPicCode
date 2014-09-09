
/***Include***/
#include "../Header_File/Configure.h"

/***Routine main***/
/*
void LED_Reset()
{
	if(LED1 == LED1_ON)
		LED1 = LED1_OFF;
	if(LED2 == LED2_ON)
		LED2 = LED2_OFF;
	if(LED3 == LED3_ON)
		LED3 = LED3_OFF;
}
*/
//setting
/*
void LED_Setting(char number)
{
	if(LED->Enable == 1)
	{
		if(LED1 == L1_ON)
			LED1 = L1_OFF;
		if(LED2 == L2_ON)
			LED2 = L2_OFF;
	//	if(LED3 == LED3_ON)
	//		LED3 = LED3_OFF;

		if(LED->GO1 == 0)
		{
			if(number == 1)
				LED1 = L1_ON;	
			else if(number == 11)
				LED->GO1=1;
		}
		if(LED->GO2 == 0)
		{
			if(number == 2)
				LED2 = L2_ON;
			else if(number == 21)
				LED->GO2=1;	
		}
		if(LED->GO3 == 0)
		{
			if(number == 3)
				LED3 = L3_ON;
			else if(number == 31)
				LED->GO3=1;
		}	
		if(number == 10)
			LED->GO1=0;
		else if(number == 20)
			LED->GO2=0;
		else if(number == 30)
			LED->GO3=0;	
	}
}
*/
//main
/*
void LED_Main()
{		
	if(LED->GO1==1)
	{	
		LED->Time1++;
		if(LED->Time1 == 150)//200ms
		{
			LED->Time1=0;
			LED1=~LED1;		
		}
	}	
	if(LED->GO2==1)
	{	
		LED->Time2++;
		if(LED->Time2 == 150)//200ms
		{
			LED->Time2=0;
			LED2=~LED2;		
		}
	}			
	if(LED->GO3==1)
	{	
		LED->Time3++;
		if(LED->Time3 == 150)//200ms
		{
			LED->Time3=0;
			LED3=~LED3;		
		}
	}	
}
*/

/***End file***/