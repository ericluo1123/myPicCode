
//include
#include "../Release/Select_File.h"

//main
void main()
{
	MainT_Initial();
	Mcu_Initial();
	Flash_Memory_Initial();
	LED_Initial();
	Buzzer_Initial();
	Switch_Initial();
	Dimmer_Initial();
	Temp_Initial();
	Load_Initial();	
	DelayOff_Initial();
	RF_Initial();
	CC2500_PowerOnInitial();

	while(1)
	{		
		if(TMain->PowerON)
		{
			Temp_getAD();
			Load_getAD();
		}
		//TMR1
		if(TMain->T0_Timerout)	//1ms
		{
			TMain->T0_Timerout = 0;
			MainT();	
			if(TMain->PowerON)
			{
				Flash_Memory_Main();
				Temp_Main();
				Load_Main();	
				Switch_Main();	
				RF_Main();
				DelayOff_Main();
				Buzzer_Main();
				LED_Main();
			}
		}
	}
}

//Tmain initial
void MainT_Initial()
{
	TMain = &VarTMain;
	Product=&VarProduct;
}
//T main
void MainT()
{
	TMain->Count1++;
	if(TMain->Count1 == 1000)	//1s
	{
		TMain->Count1=0;
		if(TMain->Flag == 1)
		{
			TMain->Flag=0;
		//	setErrLED(1);	
		//	setLED1(1);
		//	setLED2(1);
		//	setLED3(1);
		}
		else
		{
			TMain->Flag=1;
		//	setErrLED(0);
		//	setLED1(0);
		//	setLED2(0);
		//	setLED3(0);
		}
	}
	//Power
	if(TMain->PowerON == 0)
	{
		TMain->PowerCount++;
		if(TMain->PowerCount == 1500)
		{
			TMain->PowerCount=0;
			TMain->PowerON=1;

			setBuzzer(3,50);
			setSw1_Enable(1);
			setSw2_Enable(1);
			setSw3_Enable(1);
			setTemp_Enable(1);
			setLoadtoEnable();
			setRF_Enable(1);
		}
	}
}


//End file