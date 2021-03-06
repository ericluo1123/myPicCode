
#ifndef _Main_H_	
#define	_Main_H_

//Global extern variable declaration
//	extern volatile 

	#ifndef _16F723A 
		struct Product
		{
			unsigned char Data[32];
		};
		struct Product *Product;
		struct Product VarProduct=
		{
			{
			 0x63,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
			 0x00,0x00,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,
			 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
			 0x00,0x00
			}
		};
		//0=Command	
		//1=Command
		//1=Temperature
		//3=Temperature
		//4=Humidity
		//5=Humidity 
		//6=Barometric pressure 
		//7=Barometric pressure 
		//8=Electricity
		//9=Dimmer
		//10=Electric  current 
		//11=Year
		//12=Week 
		//13=Serial  Number
		//14=Serial  Number
		//15=Lights Status
		//16=Timmer Command
		//17=Timmer Time
		//18=Reserved
		//19=Reserved
		//20=Key ID
		//21=Key1 Dimmer Value
		//22=Key2 Dimmer Value
		//23=Key3 Dimmer Value
		//24=TemperatureH
		//25=TemperatureL
		//26=?
		//27=Key1 Timer
		//28=Key2 Timer
		//29=Key3 Timer
	
	
		#define setProductData(address,data) Product->Data[address]=data
	#endif

	struct TMain
	{
		unsigned PowerON:1;
		unsigned T0_Timerout:1;
		unsigned T1_Timerout:1;
		unsigned Flag:1;
		unsigned GO:1;
		unsigned FirstOpen:1;
		unsigned int PowerCount;
		unsigned SelfTest:1;
		unsigned First:1;
	
		unsigned int Count;
		unsigned int Count1;
		unsigned int Count2;
		unsigned int Count3;
		unsigned char IOC_Count;
		unsigned char Test;	
		unsigned char ClockCount;	

		unsigned i:1;
		unsigned j:1;
		unsigned k:1;
		unsigned l:1;
		unsigned m:1;
		unsigned n:1;
		unsigned o:1;
		unsigned p:1;
		unsigned q:1;
		unsigned r:1;
	}
	struct TMain VarTMain;
	struct TMain *TMain;


//Routine declaration
	void MainT_Initialization();
	void MainT();
	//end


#endif		