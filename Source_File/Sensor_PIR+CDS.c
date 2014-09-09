
/* Include*/
#include "../Header_File/Configure.h"

/*Routine main*/
//CDS**********************************************************************************
void CDS_Restore()
{
	CDS->Time=0;
}
void CDS_Main()
{
	if(CDS->Enable==1)	
	{
		CDS->Time++;
		if(CDS->Time == 100)//100ms
		{
			CDS->Time=0;
			CDS->ADGO=1;
			ADCON1=Ref_VDD;

			//cds singal AD			
			ADCON0=CDS_Signal_Channel;		
    	  	//sample time();	
			ADGO=1;			
			while(ADGO);			
			CDS->SignalAD=ADRES;
	
			//cds  VR AD
			ADCON0=CDS_VR_Channel;		
	 		 //sample time();	
			ADGO=1;			
			while(ADGO);			
			CDS->VRAD=ADRES;

			CDS->ADGO=0;
			CDS->GO=1;
				
			if(CDS->GO==1)
			{		
				CDS->GO=0;
				if(CDS->OK==0)	
				{		
					if(CDS->SignalAD >= (CDS->VRAD-40))	
					{
						CDS->OK=1;
					}
				}
				else 		
				{	
					if(CDS->SignalAD <= (CDS->VRAD-120))	
					{
						CDS->OK=0;	
					}
				}
			}	
		} 
	}
}
//*************************************************************************************


//PIR**********************************************************************************
void PIR_Restore()
{
	PIR->Time=0;	
}
void PIR_Main()
{
	char i;
	if(PIR->Enable == 1)
	{
		PIR->Time++;
		if(PIR->Time == 100)
		{
			PIR->Time=0;
			PIR->ADGO=1;
			ADCON1=Ref_VDD;

		  //pir VR AD
			ADCON0=PIR_VR_Channel;	
		  //sample time();	
			ADGO=1;			
			while(ADGO);								
			PIR->VRAD=ADRES/13;
						
		  //PIR signal AD	
			ADCON0=PIR_Signal_Channel;
		  //sample time();	
			ADGO=1;				
			while(ADGO);											
			PIR->SignalAD=ADRES;
			
			PIR->ADGO=0;
			PIR->GO=1;
		//PIR VR
	
			if(PIR->VRAD==0)		
				PIR->CloseTimeValue=150;
			else 
				PIR->CloseTimeValue=350*PIR->VRAD;	
			
		  //PIR Signal 
			PIR->TenAverage[PIR->ADCount]=PIR->SignalAD;
			for(i=0;i<=9;i++)
				PIR->TenAverageValue+=PIR->TenAverage[i];
			PIR->CenterVoltage=PIR->TenAverageValue/10;
			PIR->TenAverageValue=0;
													
			if(PIR->ADCount<10)
				PIR->ADCount++;
			else
				PIR->ADCount=0;	
	
				PIR_Switch();

				if(PIR->OK==1)
				{
					if(PIR->GO==1)
					{
						PIR->GO=0;
						
						if(PIR->Switch == 1 && Temp->ERROR == 0)
						{							
							//AutoGain									
							if(PIR->RangeTime<100)
								PIR->RangeTime++;
							else
							{		
								PIR->RangeTime=0;								
								if(PIR->RangeCount>=90)
								{							
									PIR->RangeCount=0;	
									PIR->RangeTime1=0;	
									PIR->RangeCount1=0;
		
									if(PIR->RangeValue==RangeMinimum)
										PIR->RangeValue=RangeMedium;
									else if(PIR->RangeValue==RangeMedium)
										PIR->RangeValue=RangeMaximum;	
								}
								else	
								{	
									PIR->RangeCount1+=PIR->RangeCount;
									PIR->RangeCount=0;
		
									if(PIR->RangeTime1<6)
										PIR->RangeTime1++;
									else
									{
										PIR->RangeTime1=0;
										if(PIR->RangeCount1<=10)		
										{
											if(PIR->RangeValue==RangeMaximum)
												PIR->RangeValue=RangeMedium;
											else if(PIR->RangeValue==RangeMedium)
												PIR->RangeValue=RangeMinimum;						
										}
										PIR->RangeCount1=0;													
									}
								}
							}
		

							//pir sensor
							if((PIR->SignalAD>=(PIR->CenterVoltage-PIR->RangeValue)) && (PIR->SignalAD<=(PIR->CenterVoltage+PIR->RangeValue)))
							{
								PIR->Count=0;
								PIR_LED_OFF;

								PIR->CloseTime++;
								if(PIR->CloseTime == PIR->CloseTimeValue)
								{
									PIR->CloseTime=0;
									Turn_Off_Lights;
								}
															
							}
							else
							{														
								PIR->RangeCount++;	
								PIR->Count++;			
								if(PIR->Count == 2)
								{
									PIR->Count=0;
									PIR->CloseTime=0;																
						
									Turn_On_Lights;												
								}
				
								PIR_LED_ON;				
							}	
						}			
					}
				}
				else
				{
					//hardware initial time
					PIR->Count++;
					if(PIR->Count == 250)
					{
						PIR->Count=0;
						PIR->OK=1;
						LED1 = LED1_OFF;
						Dimmable;
					}										
				}			
		}
	}
}

//PIR switch
void PIR_Switch()
{	
	if(PIR->Switch==0)
	{
		if(PIRSwitch==1 && CDS->OK==1) 
		{
			PIR->Switch=1;	
			PIR->RangeValue=RangeMinimum;		
		}
	}
	else	
	{	
		if(PIRSwitch==0 || CDS->OK==0) 
		{
			PIR->Switch=0;			
			LED_Setting(0);
			Turn_Off_Lights;	
		}
	}
}
//*************************************************************************************


/***End file***/


/*
//main
void Sensor_Main() 
{		
	if(Sensor->Enable==1)
	{
		if(Sensor->Time<Sensor_TimeValue)		
			Sensor->Time++;
		else
		{
			Sensor->Time=0;	
			Sensor_AD_Conversion();

			//CDS
			if(CDS->Enable==1 && CDS->GO==1)
			{		
				CDS->GO=0;
				if(CDS->OK==0)	
				{		
					if(CDS->SignalAD>=(CDS->VRAD-40))	
					{
						CDS->OK=1;
					}
				}
				else 		
				{	
					if(CDS->SignalAD<=CDS->VRAD-120)	
					{
						CDS->OK=0;	
					}
				}
			}
		
			//PIR
			
			if(PIR->Enable==1)
			{
				Sensor_Switch();

				if(PIR->OK==1)
				{
					if(PIR->GO==1)
					{
						PIR->GO=0;
						
						if(PIR->Switch==1)
						{							
							//AutoGain									
							if(PIR->RangeTime<100)
								PIR->RangeTime++;
							else
							{		
								PIR->RangeTime=0;								
								if(PIR->RangeCount>=90)
								{							
									PIR->RangeCount=0;	
									PIR->RangeTime1=0;	
									PIR->RangeCount1=0;
		
									if(PIR->RangeValue==RangeMinimum)
										PIR->RangeValue=RangeMedium;
									else if(PIR->RangeValue==RangeMedium)
										PIR->RangeValue=RangeMaximum;	
								}
								else	
								{	
									PIR->RangeCount1+=PIR->RangeCount;
									PIR->RangeCount=0;
		
									if(PIR->RangeTime1<6)
										PIR->RangeTime1++;
									else
									{
										PIR->RangeTime1=0;
										if(PIR->RangeCount1<=10)		
										{
											if(PIR->RangeValue==RangeMaximum)
												PIR->RangeValue=RangeMedium;
											else if(PIR->RangeValue==RangeMedium)
												PIR->RangeValue=RangeMinimum;						
										}
										PIR->RangeCount1=0;													
									}
								}
							}
		

							//pir sensor
							if((PIR->SignalAD>=(PIR->CenterVoltage-PIR->RangeValue)) && (PIR->SignalAD<=(PIR->CenterVoltage+PIR->RangeValue)))
							{
								PIR->Count=0;
							//	LED_Setting(0);
							
								if(Lights2->Status==1)
								{
									if(PIR->CloseTime<PIR->CloseTimeValue)
										PIR->CloseTime++;
									else
									{
										PIR->CloseTime=0;
									//	Control_Lights_Close(20);
									}
								}								
							}
							else
							{														
								PIR->RangeCount++;				
								if(PIR->Count<1)
									PIR->Count++;
								else
								{
									PIR->Count=0;
									PIR->CloseTime=0;																
								//	if(Lights2->Status==0)		
								//	{			
								//		Control_Lights_Procedures(21);
								//	}							
								}
						//		if(PIR->SignalAD<(PIR->CenterVoltage-PIR->RangeValue))
						//			LED_Setting(1);
						//		else if(PIR->SignalAD>(PIR->CenterVoltage+PIR->RangeValue))
						//			LED_Setting(2);	
											
							}	
						}			
					}
				}
				else
				{
					if(PIR->Count<250)
						PIR->Count++;
					else
					{
						PIR->Count=0;
						PIR->OK=1;
					
					//	Buzzer_Setting(2);
					}										
				}
			}	
		}	
	}
}
*/
/*
//=============================================================================
// AD conversion
//=============================================================================

void Sensor_AD_Conversion()
{

	char i;
//	if(OverTemp->ADGO==0 && (OverLoad->OK==1 || OverLoad->GO==0))	
//	{			
//		if(OverLoad->OK==1)
//	    	OverLoad_Cleared(2);	//stop	AD 		
	
	  //AD conversion start read
		Sensor->ADGO=1;
		ADCON1=0x70; 				
		GIE=0;

	  //cds singal AD			
		ADCON0=CDS_Signal_Channel;		
      //sample time();	
		ADGO=1;			
		while(ADGO);			
		CDS->SignalAD=ADRES;
	
		//cds  VR AD
		ADCON0=CDS_VR_Channel;		
	  //sample time();	
		ADGO=1;			
		while(ADGO);			
		CDS->VRAD=ADRES;
		CDS->GO=1;

	  //pir VR AD
		ADCON0=PIR_VR_Channel;	
	  //sample time();	
		ADGO=1;			
		while(ADGO);								
		PIR->VRAD=ADRES/13;
					
	  //PIR signal AD	
		ADCON0=PIR_Signal_Channel;
	  //sample time();	
		ADGO=1;				
		while(ADGO);											
		PIR->SignalAD=ADRES;
		PIR->GO=1;

		GIE=1;
		ADCON1=0x73; 
		Sensor->ADGO=0;

	//PIR VR

		if(PIR->VRAD==0)		
			PIR->CloseTimeValue=150;
		else 
			PIR->CloseTimeValue=350*PIR->VRAD;	
		
	  //PIR Signal 
		PIR->TenAverage[PIR->ADCount]=PIR->SignalAD;
		for(i=0;i<=9;i++)
			PIR->TenAverageValue+=PIR->TenAverage[i];
//		PIR->HundredAverage[PIR->ADCount1]=PIR->TenAverageValue/10;
		PIR->CenterVoltage=PIR->TenAverageValue/10;
		PIR->TenAverageValue=0;
						
//		for(i=0;i<=9;i++)
//			PIR->HundredAverageValue+=PIR->HundredAverage[i];
//		PIR->CenterVoltage=PIR->HundredAverageValue/10;
//		PIR->HundredAverageValue=0;
						
		if(PIR->ADCount<10)
			PIR->ADCount++;
		else
		{
			PIR->ADCount=0;
		//	if(PIR->ADCount1<10)
		//		PIR->ADCount1++;
		//	else
		//		PIR->ADCount1=0;
		}								
//	}

}
*/