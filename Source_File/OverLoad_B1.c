
// Includes
#include "Select_File.h"

#if OverLoad_use == 1

	void LoadPointSelect(char load)
	{
		#ifdef OverLoad1
			if(load == 1)
			{
				Load=&Load1;
			}
		#endif
	}
	//*********************************************************
	void Load_Initialization()
	{
		#ifdef OverLoad1
			setLoad_Initialization(1);
		#endif
	}
	//*********************************************************
	void Load_Main()
	{
		#ifdef OverLoad1
			setLoad_Main(1);
		#endif
	}
	//*********************************************************
	void setLoad_Initialization(char load)
	{
		LoadPointSelect(load);
		Load->Safe=1;
		setLoad_AH_AL_Restore(load);
	}
	//*********************************************************	
	void getLoad_AD(char load,char channel)
	{
		char i=0,j=0;
		LoadPointSelect(load);
		if(Load->ADtoGO)
		{
			Load->ADRES=getAD(channel,FVRCON_1V);
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
	//*********************************************************
	void setLoad_Main(char load)
	{
		char i;
		LoadPointSelect(load);
		if(Load->ERROR)
		{
			Load->ErrorTime++;
			if(Load->ErrorTime >= 1000)//*10ms
			{
				Load->ErrorTime=0;
				setLoad_ERROR(load,0);
			}
		}
		else
		{
			if(Load->ADtoGO)
			{
				Load->LightsCount=Load->Lights1Status+Load->Lights2Status+Load->Lights3Status;
				Load->Time++;
				if(Load->Time >= 4)//*10ms
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
								setLoad_ERROR(load,1);
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
								if(Load->SafeCount < SafeCountValue)
								{
									Load->SafeCount++;
								}
								if(Load->SafeCount > SafeCountValue-5)
								{
									if(Load->StatusOn)
									{	
										Load->StatusOn=0;
										Load->TotalLoad=Load->AD;
										Load->JudgeValue=LoadLimitValue*Load->LightsCount;					
									}	
									Load->Safe=1;	
									#ifdef use_1KEY			
										setDimmerLights_Clear(1,1);
									#endif

									#ifdef use_2KEY	
										setDimmerLights_Clear(2,1);
									#endif

									#ifdef use_3KEY			
										setDimmerLights_Clear(3,1);
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
					setLoad_AH_AL_Restore(load);
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
					if(getTemp_Safe(1) && getPF_Safe(1))
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
						setLoad_AH_AL_Restore(1);

						#ifdef use_1KEY		
							setDimmerLights_Clear(1,1);
						#endif

						#ifdef use_2KEY			
							setDimmerLights_Clear(2,1);
						#endif

						#ifdef use_3KEY			
							setDimmerLights_Clear(3,1);
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
	//*********************************************************
	void setLoad_ERROR(char load,char command)
	{
		LoadPointSelect(load);
		if(command)
		{
			setDimmer_LoadERROR(1,1);
			Load->ERROR=1;
			Load->ErrorStatus=1;
			Load->Safe=0;
			DimmerLights_ERROR();
			setLED(99,11);

			#ifdef use_1KEY
				setSw_Enable(1,0);
			#endif

			#ifdef use_2KEY
				setSw_Enable(2,0);
			#endif

			#ifdef use_3KEY
				setSw_Enable(3,0);
			#endif
	
			#ifdef RadioFrequency1
				setRF_Enable(1,0);
			#endif
		}
		else if(command == 0)
		{
			setDimmer_LoadERROR(1,0);
			Load->ERROR=0;
			Load->ErrorStatus=0;
			Load->Safe=1;
			setLED(99,10);

			#ifdef use_1KEY
				setSw_Enable(1,1);
			#endif

			#ifdef use_2KEY
				setSw_Enable(2,1);
			#endif

			#ifdef use_3KEY
				setSw_Enable(3,1);
			#endif

			#ifdef RadioFrequency1
				setRF_Enable(1,1);
			#endif
		}
	}
	//*********************************************************
	void setLoad_LightsCount(char load,char command)
	{
		LoadPointSelect(load);
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
	void setLoad_LightsStatus(char load,char lights,char command)
	{
		LoadPointSelect(load);
		if(lights == 1)
		{
			Load->Lights1Status=command;
		}
		if(lights == 2)
		{
			Load->Lights2Status=command;
		}
		if(lights == 3)
		{
			Load->Lights3Status=command;
		}
	}
	void setLoad_Count(char load,char command)
	{
		Load->Count=command;
		Load->SafeCount=command;
	}
	//*********************************************************
	void setLoad_Enable(char load,char command)
	{
		LoadPointSelect(load);
		Load->Enable=command;
		Load->GO=0;
	}
	void setLoad_GO(char load,char command)
	{
		LoadPointSelect(load);
		Load->GO=command;
	}	
	void setLoad_StatusOn(char load,char command)
	{			
		LoadPointSelect(load);
		Load->StatusOn=command;
	} 
	void setLoad_StatusOff(char load,char lights,char command)
	{
		LoadPointSelect(load);
		Load->StatusOff=command;

		if(lights == 1)
		{
			Load->Lights1Status=0;
		}
		if(lights == 2)
		{
			Load->Lights2Status=0;
		}
		if(lights == 3)
		{
			Load->Lights3Status=0;
		}
	} 
	char getLoad_Safe(char load)
	{
		LoadPointSelect(load);
		return 	Load->Safe;
	}	
	char getLoad_ERROR(char load)
	{	
		LoadPointSelect(load);
		return Load->ERROR;
	}		
	//*********************************************************
	void setLoad_AH_AL_Restore(char load)
	{
	//	LoadPointSelect(load);
		char i;
		for(i=0 ; i<5 ;i++)
		{
			Load->AH[i]=ADH_Restore;
			Load->AL[i]=ADL_Restore;
		}
	}

#endif