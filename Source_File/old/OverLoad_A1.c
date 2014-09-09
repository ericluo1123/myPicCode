
// Includes
#include "../Release/Select_File.h"

	#if OverLoad_use == 1	
void Load_getAD()
{
	//Load_getAD_Main();
				if(OverLoad->ADtoGO)
				{
					setADCON1(FVRCON_1V);
					setADCON0(OverLoad_Channel);
					setADCGO();
					if(OverLoad->ADH[0] < ADC_ADRES)
					{
						OverLoad->ADH[0]=ADC_ADRES;
					}
					else if(OverLoad->ADH[1] < ADC_ADRES)
					{
						OverLoad->ADH[1]=ADC_ADRES;
					}
					else
					{
						if(OverLoad->ADL[0] > ADC_ADRES)
						{
							OverLoad->ADL[0]=ADC_ADRES;
						}
						else if(OverLoad->ADL[1] > ADC_ADRES)
						{
							OverLoad->ADL[1]=ADC_ADRES;
						}
					}
				}
}
void setLoad_LightsCount(char command)
{
	setLoad_LightsCount_Main();
}

void setLoad_Enable(char command)
{
	setLoad_Enable_Main();
}

void setLoad_ADHADL_Restore()
{
	setLoad_ADHADL_Restore_Main();
}

void Load_Initial()
{
	OverLoad=&VarOverLoad;\
	OverLoad->Safe=1;\
	//setLoad_ADHADL_Restore();
	OverLoad->ADH[0]=0;\
	OverLoad->ADH[1]=0;\
	OverLoad->ADL[0]=0xffff;\
	OverLoad->ADL[1]=0xffff;\

}

void Load_Main()
{

					if(OverLoad->ERROR)
					{
						OverLoad->ErrorTime++;
						if(OverLoad->ErrorTime >= 10000)//ms
						{
							OverLoad->ErrorTime=0;
							Load_ERROR(0);
						}
					}
					if(OverLoad->ADtoGO)
					{
						OverLoad->Time++;
						if(OverLoad->Time >= 32)//ms
						{
							OverLoad->Time=0;
							OverLoad->ADtoGO=0;
							if(OverLoad->ADH > OverLoad->ADL)
							{
								OverLoad->AD=OverLoad->ADH[1]-OverLoad->ADL[1];
								if(OverLoad->Count < 20)
								{
									OverLoad->Count++;
									OverLoad->JudgeValue=600;
									if(OverLoad->Count == 5)
									{
										OverLoad->JudgeValue=OverLoad->Judge;
									}
								}
								if(OverLoad->AD > OverLoad->JudgeValue)
								{
									if(OverLoad->Count < 5)
									{
										Load_ERROR(1);
										OverLoad->ErrorStatus=1;
									}
									else
									{
										OverLoad->ErrorCount++;
										if(OverLoad->ErrorCount >2)
										{
											OverLoad->ErrorCount=0;
											Load_ERROR(1);
											OverLoad->ErrorStatus=2;
										}
									}
								}
								else
								{
									OverLoad->ErrorCount=0;
									if(OverLoad->Count > 5)
									{
										OverLoad->AllLoad=OverLoad->AD;
									}
									if(OverLoad->Count > 15)
									{
										OverLoad->Safe=1;
									}
								}
							}
							setProductData(2,(OverLoad->AD >> 8));
							setProductData(3,OverLoad->AD);
							setProductData(4,(OverLoad->ADH[1] >> 8));
							setProductData(5,OverLoad->ADH[1]);
							setProductData(6,(OverLoad->ADL[1] >> 8));
							setProductData(7,OverLoad->ADL[1]);
							setProductData(8,OverLoad->NumberCount);
							setProductData(10,OverLoad->AllLoad);
							setProductData(16,(OverLoad->JudgeValue >> 8));
							setProductData(17,OverLoad->JudgeValue);
							setProductData(18,OverLoad->ErrorStatus);
							setProductData(19,OverLoad->Count);
							//setLoad_ADHADL_Restore();
							OverLoad->ADH[0]=0;
							OverLoad->ADH[1]=0;
							OverLoad->ADL[0]=0xffff;
							OverLoad->ADL[1]=0xffff;
						}
					}
					else
					{
						if(OverLoad->GO)
						{
							if(OverLoad->LightsON == 0)
							{
								OverLoad->LightsON=1;
								OverLoad->Safe=0;
								ErrLED=0;
							}
							if(getTemp_Safe())
							{
								OverLoad->ADtoGO=1;
							}
						}
						else
						{
							if(OverLoad->LightsON)
							{
								OverLoad->LightsON=0;
								OverLoad->ErrorCount=0;
								OverLoad->Count=0;
								OverLoad->UpdateCount=0;
								OverLoad->AllLoad=0;
								OverLoad->LightsCount=0;
								;\//setLoad_ADHADL_Restore();
								OverLoad->ADH[0]=0;
								OverLoad->ADH[1]=0;
								OverLoad->ADL[0]=0xffff;
								OverLoad->ADL[1]=0xffff;
								setProductData(2,(OverLoad->AD >> 8));
								setProductData(3,OverLoad->AD);
								setProductData(4,(OverLoad->ADH[1] >> 8));
								setProductData(5,OverLoad->ADH[1]);
								setProductData(6,(OverLoad->ADL[1] >> 8));
								setProductData(7,OverLoad->ADL[1]);
								setProductData(8,OverLoad->NumberCount);
								setProductData(10,OverLoad->AllLoad);
								setProductData(16,(OverLoad->JudgeValue >> 8));
								setProductData(17,OverLoad->JudgeValue);
								setProductData(18,OverLoad->ErrorStatus);
								setProductData(19,OverLoad->Count);
								ErrLED=1;
								if(OverLoad->ERROR == 0)
								{
									OverLoad->Safe=1;
								}
							}
						}
					}
					;
}

void Load_ERROR(char command)
{
	//Load_ERROR_Main_Content();
				if(command)\
				{\
					setDimmable_LoadERROR(1);\
					OverLoad->ERROR=1;\
					OverLoad->Safe=0;\
					Dimmer_ERROR();\
					setErrLED(11);\
					setSw1_Enable(0);\
					setSw2_Enable(0);\
					setSw3_Enable(0);\
					setRF_Enable(0);\
				}\
				else if(command == 0)\
				{\
					setDimmable_LoadERROR(0);\
					OverLoad->ERROR=0;\
					OverLoad->Safe=1;\
					setErrLED(10);\
					setSw1_Enable(1);\
					setSw2_Enable(1);\
					setSw3_Enable(1);\
					setRF_Enable(1);\
				}\
				;
}

#endif