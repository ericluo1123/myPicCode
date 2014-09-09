
// Includes
#include "../Release/Select_File.h"

#if OverLoad_use == 1

void Load_Initial()
{
	Load=&VarLoad;
	Load->Safe=1;
	setLoad_AH_AL_Restore();
}
	
void Load_getAD()
{
	char i=0,j=0;
	if(Load->ADtoGO)
	{
		Load->ADRES=getAD(OverLoad_Channel,FVRCON_1V);
		for(i=0 ; i<5 ;i++)
		{	
			if(Load->AH[i] < Load->ADRES)
			{
				Load->AH[i]=Load->ADRES;
				j=1;
				break;
			}
		}
		if(j == 0)
		{
			for(i=0 ; i<5 ;i++)
			{	
				if(Load->AL[i] > Load->ADRES)
				{
					Load->AL[i]=Load->ADRES;
					break;
				}
			}
		}
	}
}

void Load_Main()
{
	char i;
	if(Load->ERROR)
	{
		Load->ErrorTime++;
		if(Load->ErrorTime >= 10000)//ms
		{
			Load->ErrorTime=0;
			Load_ERROR(0);
		}
	}
	else
	{
		if(Load->ADtoGO)
		{
			Load->LightsCount=Load->Lights1Status+Load->Lights2Status+Load->Lights3Status;
			Load->Time++;
			if(Load->Time >= 32)//ms
			{
				Load->Time=0;
				Load->ADtoGO=0;
				Load->ADH=((Load->AH[2]+Load->AH[3]+Load->AH[4])/3);
				Load->ADL=((Load->AL[2]+Load->AL[3]+Load->AL[4])/3);		
				if(Load->ADH > Load->ADL)
				{
					Load->AD=(Load->ADH-Load->ADL);
					if(Load->Count < 10)
					{
						Load->Count++;
						if(Load->Count == 1)
						{
							Load->JudgeValue=255;						
						}
						if(Load->Count == 3)
						{
							if(Load->LightsCount == 1)
							{
								Load->JudgeValue=LoadLimitValue;
							}
							else
							{
								Load->JudgeValue=LoadLimitValue+Load->TotalLoad;
							}		
						}
					}
					if(Load->AD >= Load->JudgeValue)
					{
						Load->ErrorCount++;
						if(Load->ErrorCount >2)
						{
							Load->ErrorCount=0;
							Load_ERROR(1);
							Load->ErrorStatus=1;
							/*
							setProductData(4,(Load->AD >> 8));
							setProductData(5,Load->AD);
							setProductData(6,(Load->JudgeValue >> 8));
							setProductData(7,Load->JudgeValue);
							*/
						}
					}
					else
					{
						Load->ErrorCount=0;
						if(Load->Count > 5)
						{
							if(Load->SafeCount < 30)
							{
								Load->SafeCount++;
							}
							if(Load->SafeCount > 25)
							{
								if(Load->StatusOn)
								{	
									Load->StatusOn=0;
									Load->TotalLoad=Load->AD;
									Load->JudgeValue=LoadLimitValue*Load->LightsCount;					
								}	
								Load->Safe=1;					
								#ifdef Triac1
									DimmerLights1->OK=1;	
								#endif
								#ifdef Triac2
									DimmerLights2->OK=1;
								#endif
								#ifdef Triac3
									DimmerLights3->OK=1;
								#endif
							}
							if(Load->StatusOff)
							{
								Load->StatusOff=0;
								Load->TotalLoad=Load->AD;
								Load->JudgeValue=LoadLimitValue*Load->LightsCount;
							}
						}			
					}	
				}	
				setLoad_AH_AL_Restore();
				/*
				setProductData(2,(Load->AD >> 8));
				setProductData(3,Load->AD);
				setProductData(8,Load->LightsCount);
				setProductData(10,Load->TotalLoad);
				setProductData(16,(Load->JudgeValue >> 8));
				setProductData(17,Load->JudgeValue);
				setProductData(18,Load->ErrorStatus);
				setProductData(19,Load->Count);
				*/
			}
		}		
		else
		{
			if(Load->GO)
			{
				if(Load->LightsON == 0)
				{
					Load->LightsON=1;
					Load->Safe=0;
				}
				if(getTemp_Safe() && getPF_Safe())
				{
					Load->ADtoGO=1;
				}
			}
			else
			{
				if(Load->LightsON)
				{
					Load->LightsON=0;
					Load->Safe=1;
					Load->ErrorCount=0;
					Load->Count=0;
					Load->TotalLoad=0;
					Load->NumberCount=0;
					Load->StatusOn=0;
					Load->StatusOff=0;
					setLoad_AH_AL_Restore();
					#ifdef Triac1
						DimmerLights1->OK=1;	
					#endif
					#ifdef Triac2
						DimmerLights2->OK=1;
					#endif
					#ifdef Triac3
						DimmerLights3->OK=1;
					#endif
					/*
					setProductData(2,(Load->AD >> 8));
					setProductData(3,Load->AD);
					//setProductData(4,(Load->ADH >> 8));
					//setProductData(5,Load->ADH);
					//setProductData(6,(Load->ADL >> 8));
					//setProductData(7,Load->ADL);
					setProductData(8,Load->NumberCount);
					setProductData(10,Load->TotalLoad);
					setProductData(16,(Load->JudgeValue >> 8));
					setProductData(17,Load->JudgeValue);
					setProductData(18,Load->ErrorStatus);
					setProductData(19,Load->Count);
					*/
				}	
			}
		}
	}
}	


void Load_ERROR(char command)
{
	if(command)
	{
		setDimmable_LoadERROR(1);
		Load->ERROR=1;
		Load->Safe=0;
		Dimmer_ERROR();
		setLED(99,11);
		//Switch_Enable(0);
		//setRF_Enable(1,0);
		#ifdef Triac1
			setSw_Enable(1,0);
		#endif
		#ifdef Triac2
			setSw_Enable(2,0);
		#endif
		#ifdef Triac3
			setSw_Enable(3,0);
		#endif
		//Switch_Enable(0);
		#ifdef RadioFrequency1
			setRF_Enable(1,0);
		#endif
	}
	else if(command == 0)
	{
		setDimmable_LoadERROR(0);
		Load->ERROR=0;
		Load->Safe=1;
		setLED(99,10);
		//Switch_Enable(1);
		//setRF_Enable(1,1);
		#ifdef Triac1
			setSw_Enable(1,1);
		#endif
		#ifdef Triac2
			setSw_Enable(2,1);
		#endif
		#ifdef Triac3
			setSw_Enable(3,1);
		#endif
		//Switch_Enable(1);
		#ifdef RadioFrequency1
			setRF_Enable(1,1);
		#endif
	}
}

void setLoad_LightsCount(char command)
{
	if(command == 1)
	{
		Load->Count=0;
		Load->NumberCount++;
	}
	else if(command == 2)
	{
		Load->NumberCount--;
	}
}

void setLoad_Enable(char command)
{
	if(command)
	{
		Load->Enable=1;
	}
	else
	{
		Load->Enable=0;
		Load->GO=0;
	}
}

void setLoad_AH_AL_Restore()
{
	char i;
	for(i=0 ; i<5 ;i++)
	{
		Load->AH[i]=ADH_Restore;
		Load->AL[i]=ADL_Restore;
	}
}



#endif