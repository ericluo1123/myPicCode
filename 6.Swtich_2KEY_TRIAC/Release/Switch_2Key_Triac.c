
//include
#include "../Release/Switch_2Key_Triac.h"

//config
	Config1;
  	Config2; 

//main
void main()
{
	MainT_Initial();
	Mcu_Initial();
	Flash_Memory_Initial();
	LED_Initial();
	Buzzer_Initial();
	Switch_Initial();
	LightsControl_Initial();
	Dimmer_Initial();
	SYSC_Initial();
	Temp_Initial();
	Load_Initial();	
	RF_Initial();
	CC2500_PowerOnInitial();
	Dimmable=&VarDimmable;

	while(1)
	{		
		if(TMain->PowerON)
		{
			MSYSC_Main();
			Temp_getAD();
			Load_getAD();
		}
		//TMR1
		if(TMain->T1_Timerout)	//1ms
		{
			TMain->T1_Timerout = 0;
			MainT();	
			if(TMain->PowerON)
			{
				Flash_Memory_Main();
				SYSC_Detect();
				Temp_Main();
				Load_Main();
				LightsControl_Main();	
				Switch_Main();	
				RF_Main();
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
			setSwitchEnable(1);
			setTemp_Enable(1);
			setLoadtoEnable();
			setRF_Enable(1);

		}
	}
}


//End file