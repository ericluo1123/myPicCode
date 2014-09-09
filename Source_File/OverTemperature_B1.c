

// Includes
#include "Select_File.h"

#if OverTemperature_use == 1

	void TempPointSelect(char temp)
	{
		#ifdef SYSC1
			Temp=&Temp1;
		#endif
	}
	//*********************************************************
	void Temp_Main()
	{
		#ifdef SYSC1
			setTemp_Main(1);
		#endif
	}
	//*********************************************************
	void Temp_Initialization()
	{
		#ifdef SYSC1
			setTemp_Initialization(1);
		#endif
	}
	//*********************************************************
	void setTemp_Enable(char temp,char command)
	{
		TempPointSelect(temp);
		Temp->Enable=command;
	}
	char getTemp_Safe(char temp)
	{
		TempPointSelect(temp);
		return Temp->Safe;
	} 
	char getTemp_ERROR(char temp)
	{
		TempPointSelect(temp);
		return Temp->ERROR;
	} 
	//*********************************************************
	void getTemp_AD(char temp,char channel)
	{
		TempPointSelect(temp);
		if(Temp->ADtoGO)
		{
			Temp->ADRES=getAD(channel,ADCON1_VDD);
			if(Temp->ADH[0] < Temp->ADRES)
			{
				Temp->ADH[0]=Temp->ADRES;
			}
			else if(Temp->ADH[1] < Temp->ADRES)
			{
				Temp->ADH[1]=Temp->ADRES;
			}
		}
	}
	//*********************************************************
	void setTemp_Initialization(char temp)
	{
		TempPointSelect(temp);
		Temp->Safe=1;
	}
	//*********************************************************
	void setTemp_Main(char temp)
	{
		TempPointSelect(temp);
		if(Temp->Enable)
		{
			if(Temp->ADtoGO == 0)
			{
				Temp->Time++;
				if(Temp->Time >= 500)//*10ms
				{
					if(getLoad_Safe() && getPF_Safe(1))
					{
						Temp->Time=0;
						Temp->ADtoGO=1;
						Temp->Safe=0;
					}
					else
					{
						Temp->Time=1000;//*5
					}
				}
			}
			else
			{
				Temp->Time++;
				if(Temp->Time >= 4)//*10ms
				{
					Temp->Time=0;
					Temp->ADtoGO=0;
					Temp->AD=Temp->ADH[1];
					if(Temp->ERROR)
					{
						if(Temp->AD >= TempSafeValue)
						{
							Temp->Count++;
							if(Temp->Count >= TempCountValue)
							{
								Temp->Count=0;
								setOverTemp_ERROR(1,0);
							}
						}
						else
						{
							Temp->Count=0;
						}
					}
					else
					{
						if(Temp->AD <= TempDangerValue)
						{
							Temp->Count++;
							if(Temp->Count >= TempCountValue)
							{
								Temp->Count=0;
								setOverTemp_ERROR(1,1);
							}
						}
						else
						{
							Temp->Count=0;
						}
					}
					if(Temp->ERROR == 0)
					{
						Temp->Safe=1;
					}
					setProductData(24,Temp->AD >> 8);
					setProductData(25,Temp->AD);
					Temp->ADH[0]=0;
					Temp->ADH[1]=0;
				}
			}
		}
	}
	//*********************************************************
	void setOverTemp_ERROR(char temp,char command)
	{
		TempPointSelect(temp);
		if(command)
		{
			Temp->ERROR=1;
			setDimmer_TempERROR(1,1);
			DimmerLights_ERROR();
			//Lights_ERROR();
			setLED(99,11);

			setSw_Enable(0);

			#ifdef RadioFrequency1
				setRF_Enable(1,0);
			#endif
		}
		else if(command == 0)
		{
			Temp->ERROR=0;
			setDimmer_TempERROR(1,0);
			Temp->Safe=1;
			setLED(99,10);
			//setBuz(1,2,BuzzerOnOffTime);

			setSw_Enable(1);

			#ifdef RadioFrequency1
				setRF_Enable(1,1);
			#endif
		}		
	}
#endif