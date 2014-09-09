
/***Include file***/
#include "../Header_File/Configure.h"

/***Routine main***/
//Lights initial
void Lights_Initial()
{
	Lights1=&VarLights1;
	Lights2=&VarLights2;

	Lights1->Enable=1;	
	Lights2->Enable=1;
}

//setting
void Lights_Setting(char number)
{	
	
	if(number==10 || number==11)
	{						
		Lights=&VarLights1;
		Lights->Triac=Triac1;
		Lights->Relay=Relay1;
	}
	else if(number==20 || number==21)
	{
		Lights=&VarLights2;
		Lights->Triac=Triac2;
		Lights->Relay=Relay2;
	}
	
	if(Lights->Enable==1)
	{
		if(number==10 || number==20)
		{
			if(Lights->Status==1)			
			{	
				Lights->Time=0;
				Lights->Status=0;
				if(Lights->GO==1)
				{
					if(Lights->Relay==0 && Lights->Triac==0)
						Lights->GO==0;
					else if(Lights->Relay==1 && Lights->Triac==1)
					{
						Lights->TriacTimeValue=3;
						Lights->RelayTimeValue=1;
					}		
					else if(Lights->Relay==0 && Lights->Triac==1)
					{
						Lights->TriacTimeValue=1;
						Lights->RelayTimeValue=1;
					}
				}
				else
				{		
					Lights->GO=1;
					Lights->TriacTimeValue=8;
					Lights->RelayTimeValue=6;
					if(number==10)
						Triac1=1;
					else if(number==20)
						Triac2=1;
				}
			}
		}
		else 
		{				
			if(Lights->Status==0)		
			{	
				Lights->Time=0;
				Lights->Status=1;
				if(Lights->GO==1)
				{
					if(Lights->Relay==1 && Lights->Triac==0)
						Lights->GO==0;
					else if(Lights->Relay==1 && Lights->Triac==1)
					{
						Lights->TriacTimeValue=1;
						Lights->RelayTimeValue=1;
					}		
					else if(Lights->Relay==0 && Lights->Triac==1)
					{
						Lights->TriacTimeValue=3;
						Lights->RelayTimeValue=1;
					}
				}
				else
				{		
					Lights->GO=1;
					Lights->TriacTimeValue=8;
					Lights->RelayTimeValue=6;
					if(number==11)
						Triac1=1;
					else if(number==21)
						Triac2=1;
				}			
			}
		}
	}
}
//main
void Lights_Main()
{	
	if(Lights1->GO==1)
	{
		Lights1->Time++;
		if(Lights1->Time>=Lights1->TriacTimeValue)
		{			
			Lights1->Time=0;
			Lights1->GO=0;
			Triac1=0;								
		}
		else if(Lights1->Time==Lights1->RelayTimeValue)
		{
			if(Lights1->Status==1)
			{
				Relay1=1;	
				
			}
			else
			{		
				Relay1=0;	
		
			}
		}
	}
	
	if(Lights2->GO==1)
	{
		Lights2->Time++;
		if(Lights2->Time>=Lights2->TriacTimeValue)
		{			
			Lights2->Time=0;
			Lights2->GO=0;
			Triac2=0;								
		}
		else if(Lights2->Time==Lights2->RelayTimeValue)
		{	
			if(Lights2->Status==1)
			{
				Relay2=1;			
			}
			else	
			{
				Relay2=0;					
			}
		}
	}			
}

/***End file***/
