

#include "../Release/Development.h"

//config
	Config1;
  	Config2; 

///Global extern variable declaration
	struct Product
	{
		unsigned char ID;
		unsigned char LoopCode[3];
	};
	struct Product *Product;
	struct Product VarProduct=
	{
		{0xaa},{11,12,13}
	};
	
	struct TMain
	{
		unsigned PowerON:1;
		unsigned T0_Timerout:1;
		unsigned T1_Timerout:1;
		unsigned Flag:1;
		unsigned GO:1;
		unsigned int PowerCount;
		unsigned int Count;
		unsigned int Count1;
		unsigned int Count2;
		unsigned int Count3;
		unsigned char IOC_Count;		
	}
	struct TMain VarTMain;
	struct TMain *TMain;
	//end

//Routine declaration
	void MainT_Initial();
	void MainT();
	//end
	int CDS_Get();
	#define CDS_E 0
	#define TestDisplay 1
//main
void main()
{
	MainT_Initial();
	Mcu_Initial();	
	Buzzer_Initial();
	LED_Initial();
	Switch_Initial();
	LightsControl_Initial();
	SYSC_Initial();	
	Temp_Initial();
	OverLoad_Initial();	
//	CC2500_PowerOnInitial();
	Dimmer_Initial();	
	Display_Initial();
	while(1)
	{		
		if(TMain->PowerON == 1)
		{
			MSYSC_Main();
			Temp_getAD();
			OverLoad_getAD();
		}
		//TMR1
		if(TMain->T1_Timerout == 1)	//1ms
		{
			TMain->T1_Timerout = 0;
			MainT();	
			if(TMain->PowerON == 1)
			{
				SYSC_Detect();
				Temp_Main();
				OverLoad_Main();

				LightsControl_Main();	
					
				Switch_Main();	
			//	RF_Main();

				Buzzer_Main();
				LED_Main();
				Display_Main();
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
	//Power
	if(TMain->PowerON == 0)
	{
		TMain->PowerCount++;
		if(TMain->PowerCount == 2000)
		{
			TMain->PowerCount=0;
			TMain->PowerON=1;

			setBuzzer(3,50);
			SwitchEnable();
			setOverTemptoEnable();
			setOverLoadtoEnable();
		}
	}
	else
	{
		TMain->Count1++;
		if(TMain->Count1 == 1000)	//1s
		{
			TMain->Count1=0;
			if(TestDisplay)
			{
				TMain->Count++;
				setDisplayData(TMain->Count);
			//	setUart_TxData(1);	
				printf("%d",TMain->Count);
				LED2=~LED2;
			}
		}
		TMain->Count2++;
		if(TMain->Count2 == 200)	//200ms
		{
			TMain->Count2=0;	
			if(CDS_E)
			{
				if(TMain->Flag == 0)
				{
					if(CDS_Get()<=0x40)
					{
						TMain->Flag=1;
						TMain->Count++;
						setDisplayData(TMain->Count);
					}
				}
				else
				{
					if(CDS_Get()>=0x80)
						TMain->Flag=0;
				}	
			}			
		}
	}
}
//ISR
void ISR(void) interrupt 0	// ISR (Interrupt Service Routines)
{	
	IOC_ISR();

	TMR0_ISR();
	
	TMR1_ISR();
	
//	TMR2_ISR();

	INT_ISR();

}
//uart
void putch(unsigned char byte) 
{
	/* output one byte */
	while(!TXIF)	/* set when register is empty */
		continue;
	TXREG = byte;
}

unsigned char getch() {
	/* retrieve one byte */
	while(!RCIF)	/* set when register is not empty */
		continue;
	return RCREG;	
}

unsigned char getche(void)
{
	unsigned char c;
	putch(c = getch());
	return c;
}

int CDS_Get()
{
	int i=0;
	ADCON0=AN0;
  	//sample time();
	ADGO=1;
	while(ADGO);
	i=((ADRESH*256)+ADRESL);
	
		
	return i;
}
//End file