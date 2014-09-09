
//include
#include "../Release/Select_File.h"

//main
void main()
{
	MainT_Initialization();
	Mcu_Initialization();
	Flash_Memory_Initialization();
	LED_Initialization();
	Buzzer_Initialization();

//	LightsControl_Initial();
	DimmerLights_Initialization();

//	SYSC_Initial();
	Temp_Initialization();
	Load_Initialization();	
	PowerFault_Initialization();
	DelayOff_Initialization();

	Switch_Initialization();
	RF_Initialization();
	CC2500_PowerOnInitial();

	while(1)
	{		
		if(TMain->PowerON)
		{
//			MSYSC_Main();
			#ifdef OverLoad1
				getLoad_AD(1,OverLoad_Channel);
			#endif
			#ifdef SYSC1
				getTemp_AD(1,OverTemp_Channel);
			#endif
			#ifdef PFV1
				getPowerFault_AD(1,PFV_Channel);
			#endif
		}
		//TMR0
		if(TMain->T0_Timerout)	//5ms
		{
			TMain->T0_Timerout = 0;
			MainT();	
			if(TMain->PowerON)
			{
				Flash_Memory_Main();
				Buzzer_Main();
				LED_Main();

		//		SYSC_Detect();
				Temp_Main();
				Load_Main();
				PowerFault_Main();
			//	LightsControl_Main();
				DimmerLights_Main();	
				Switch_Main();
				RF_Main();
				DelayOff_Main();

			}
		}
	}
}

//Tmain initial
void MainT_Initialization()
{
	Product=&VarProduct;
	TMain=&VarTMain;
	TMain->FirstOpen=1;
	TMain->First=1;
}
//T main
void MainT()
{
	//Power
	if(TMain->PowerON == 0)
	{
		TMain->PowerCount++;
		if(TMain->PowerCount == 300)//*5ms
		{
			TMain->PowerCount=0;
			TMain->PowerON=1;
			
			#ifdef SYSC1
				setTemp_Enable(1,1);
			#endif

			#ifdef SYSC1
				setLoad_Enable(1,1);
			#endif

			#if Dimmer_use == 1
				TMain->k=1;
			#else
				setBuzzer(3,50);
				TMain->SelfTest=1;

				#ifdef Triac1
					setSw_Enable(1,1);
				#endif
				#ifdef Triac2
					setSw_Enable(2,1);
				#endif
				#ifdef Triac3
					setSw_Enable(3,1);
				#endif

				#ifdef RadioFrequency1
					setRF_Enable(1,1);
				#endif

			#endif
		}
	}
	else
	{
		#if Dimmer_use == 1 && Serial_Number == 1
			DimmerLightsOpenShow();
		#endif
	}		

	#if Debug == 1
		TMain->Count1++;
		if(TMain->Count1 == 12000)	//*5ms
		{
			TMain->Count1=0;
		//	setProductData(2,Sw1->DebounceTime);
		//	setProductData(3,Sw1->Hold3);
		//	setProductData(4,Sw1->Hold2);
		//	setProductData(5,Sw1->Hold1);
		//	setProductData(6,Sw1->Debounce);
		//	setProductData(7,Sw1->Flag);
		//	setProductData(8,RF->Learn);		
		//	setTxData();
		//	ErrLED=~ErrLED;
			TMain->Count3++;
			if(TMain->Flag == 1)
			{
				TMain->Flag=0;
			//	setLED(99,1);	
			//	setLED(1,1);
			//	setLED(2,1);
			//	setLED(3,1);
			}
			else
			{
				TMain->Flag=1;
			//	setLED(99,0);
			//	setLED(1,0);
			//	setLED(2,0);
			//	setLED(3,0);
			}
		}
	#endif
}


//End file

