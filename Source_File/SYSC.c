
/***Include***/
#include "../Release/Configure.h"

//=============================================================================
// SYSC 
//=============================================================================
//initial
void SYSC_Initial()
{
	SYSC=&VarSYSC;
	SYSC->Enable=0;	
	SYSC->ERROR=1;			//default ON	

	OverTemp=&VarOverTemp;
	OverTemp->Enable=1;

	OverLoad=&VarOverLoad;	
	OverLoad->Enable=1;	
	OverLoad->ADL=255;
}
//main
void SYSC_Main()
{
	if(SYSC->Enable==1)
	{
		if(MSYSC==1)
		{				
			if(OverTemp->ADGO==1)	
			{												
				//OverTemp AD
				ADCON1=0x70; 		
				GIE=0;

				ADCON0=OverTemp_Channel; 				
				ADON=1;			
				//sample time();							
				ADGO=1;			
				while(ADGO);					

				if(OverTemp->AD<ADRES)
					OverTemp->AD=ADRES;

				GIE=1;
				ADCON1=0x73; 	
			
			}

			if(SYSC->Signal==0)
			{	
				SYSC->Signal=1;
				SYSC->Time=0;	
				if(SYSC->ERROR==1)	
				{
					if(SYSC->Count<30)
						SYSC->Count++;
					else	
					{
						SYSC->Count=0;
						SYSC->ERROR=0;
						LED_Setting(30);
						Buzzer_Setting(3);
					}
				}							
			}				
		}
		else
		{	
			if(SYSC->Signal==1)
			{
				SYSC->Signal=0;						
				OverTemp_Main();	//over temperature detect
				OverLoad_Main();	//over load detect
			}			
		}
	}		
}		
//sysc signal detect
void SYSC_Detect()
{
	if(SYSC->Enable==1 && SYSC->ERROR==0 && MSYSC==0)
	{	
		if(SYSC->Time<SYSCTimeValue)
			SYSC->Time++;
		else
		{
			SYSC->Time=0;
			SYSC->Count=0;
			SYSC->ERROR=1;
			Control_Lights_Close(0);			
		}			
	}
}
//=============================================================================
// OverTemp 
//=============================================================================
//main
void OverTemp_Main()
{	 
	if(OverTemp->Enable==1 && OverTemp->GO==1)
	{		
		if(OverTemp->ADGO==0)
		{			
			if(OverTemp->Time<OverTempTimeValue)
				OverTemp->Time++;
			else
			{
				if(Sensor->ADGO==0 && (OverLoad->OK==1 || OverLoad->GO==0))
				{	
					OverTemp->Time=0;
					OverTemp->ADGO=1;	
					if(OverLoad->OK==1)						
						OverLoad_Cleared(2);	//stop read AD
				}		
			}		
		}
		else
		{	
			if(OverTemp->ERROR==0)
			{	
				if(OverTemp->AD<=OverTemp_DangerValue)		
				{	
					if(OverTemp->RunCount<2)
						OverTemp->RunCount++;
					else
					{		
						OverTemp->RunCount=0;								
						OverTemp->ERROR=1;													
						Control_Lights_Close(0);	
						Buzzer_Setting(10);
					}													
				}		
				else
					OverTemp->RunCount=0;													
			}		
			else
			{		
				if(OverTemp->AD>=OverTemp_SafeValue)		
				{				
					if(OverTemp->RunCount<2)
						OverTemp->RunCount++;
					else
					{							
						OverTemp->RunCount=0;
						OverTemp->ERROR=0;
						LED_Setting(30);
						OverTemp->GO=0;
					}															
				}
				else
					OverTemp->RunCount=0;	
			}
			OverTemp_Cleared(1);	//reset AD																	
		}
	}
}
void OverTemp_Cleared(char number)
{	
	if(number==0)		//0 = close , 1 = reset
	{
		OverTemp->Time=0;
		OverTemp->GO=0;
		OverTemp->RunCount=0;
	}		
	OverTemp->ADGO=0;	
	OverTemp->AD=0;				
}
//=============================================================================
// OverLoad
//=============================================================================
//main
void OverLoad_Main()
{	
	if(OverLoad->Enable==1)
	{
		if(OverLoad->ERROR==1)
		{		
			if(OverLoad->Time<OverLoadTimeValue)
				OverLoad->Time++;
			else
			{
				OverLoad->Time=0;
				OverLoad->ERROR=0;
				LED_Setting(30);
				OverLoad->E1=0;
				OverLoad->E2=0;
				OverLoad->E3=0;
			}	
		}
		else
		{
			if(OverLoad->GO==1)
			{
				if(OverLoad->ADGO==0)
				{
					if(OverTemp->ADGO==0 && Sensor->ADGO==0)
						OverLoad->ADGO=1;
				}
				else
				{	
					if(OverLoad->ADH==0 || OverLoad->ADL==255)
					{
						OverLoad->ADH=0;
						OverLoad->ADL=255;
					}
					else
					{
						OverLoad->ADGO=0;
						OverLoad->ADM=(OverLoad->ADH - OverLoad->ADL);
						OverLoad->ADH=0;	
						OverLoad->ADL=255;
						OverLoad->ADGO=1;

						if(OverLoad->RunCount<11)
						{
							OverLoad->RunCount++;
							if(OverLoad->RunCount==1)		OverLoad->ADValue=64;	//for PIR-AT1V04_MB					
							else if(OverLoad->RunCount==2)	OverLoad->ADValue=40;							
							else if(OverLoad->RunCount==9)	OverLoad->ADValue=20;
																		
						}									
						if(OverLoad->ADM>=OverLoad->ADValue)
						{
							if(OverLoad->RunCount==1)
							{
								OverLoad->ERROR=1;
								OverLoad->E1=1;
							}							
							else
							{
								if(OverLoad->RunCount==9)
									OverLoad->ErrorCount=0;		
								OverLoad->ErrorCount++;
								if(OverLoad->RunCount<9)
								{
									if(OverLoad->ErrorCount>4)	
									{
										OverLoad->ERROR=1;
										OverLoad->E2=1;
									}
								}
								else 
								{	
									if(OverLoad->ErrorCount>2)	
									{								
										OverLoad->ERROR=1;	
										OverLoad->E3=1;		
									}
								}						
							}
							if(OverLoad->ERROR==1)
							{	
								Control_Lights_Close(0);	//LED_Setting(31);
								Buzzer_Setting(5);															
							}
						}
						else
						{
							OverLoad->ErrorCount=0;			
							if(OverLoad->RunCount==11)	
								OverLoad->OK=1;	
						}
					}	
				}
			}
		}		
	}
}
void OverLoad_Cleared(char number)
{	
	OverLoad->ADH=0;	
	OverLoad->ADL=255;
	
	if(number==0 || number==1 || number==2)	//stop read AD
		OverLoad->ADGO=0;

	if(number==0 || number==1)	//reset
	{
		OverLoad->OK=0;
		OverLoad->RunCount=0;				
		OverLoad->ErrorCount=0;	
	}

	if(number==0)			//close lights
		OverLoad->GO=0;						
}
//=============================================================================
// END FILE
//=============================================================================

