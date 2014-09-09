

// Includes
#include "../Release/Select_File.h"

#if OverTemperature_use == 1

	void Temp_Initial()
	{
		Temp=&VarTemp;
		Temp->Safe=1;
	}
	//*********************************************************
	void Temp_getAD()
	{
		if(Temp->ADtoGO)
		{
			Temp->ADRES=getAD(OverTemp_Channel,ADCON1_VDD);
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
	void Temp_Main()
	{
		if(Temp->Enable)
		{
			if(Temp->ADtoGO == 0)
			{
				Temp->Time++;
				if(Temp->Time >= 5000)//ms
				{
					if(getLoad_Safe() && getPF_Safe())
					{
						Temp->Time=0;
						Temp->ADtoGO=1;
						Temp->Safe=0;
					}
					else
					{
						Temp->Time=5000;
					}
				}
			}
			else
			{
				Temp->Time++;
				if(Temp->Time >= 32)//ms
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
								OverTemp_ERROR(0);
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
								OverTemp_ERROR(1);
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
	void OverTemp_ERROR(char command)
	{
		if(command)
		{
			Temp->ERROR=1;
			setDimmable_TempERROR(1);
			Dimmer_ERROR();
			//Lights_ERROR();
			setLED(99,11);
		//	Switch_Enable(0);
		//	setRF_Enable(1,0);
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
			Temp->ERROR=0;
			setDimmable_TempERROR(0);
			Temp->Safe=1;
			setLED(99,10);
			setBuz(1,2,100);

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
#endif