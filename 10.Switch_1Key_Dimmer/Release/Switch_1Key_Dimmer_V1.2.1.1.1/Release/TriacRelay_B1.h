
#ifndef _TriacRelay_H_
#define _TriacRelay_H_

/*
	Description:

	setLights1(x)		
			x = 0		Lights1 OFF
			  =	1		Lights1 ON
	setLights2(x)	
			x = 0		Lights2 OFF
				1		Lights2 ON
*/


//=================================================================
	#if TriacRelay_use == 1 

		//Global extern variable declaration
		struct Lights
		{
			unsigned Enable:1;
			unsigned GO:1;		
			unsigned Status:1;
			unsigned Open:1;
			unsigned Close:1;
			unsigned Trigger:1;
			unsigned Switch:1;
			unsigned Relay:1;
			unsigned Triac:1;
			unsigned char Time;
			unsigned char TriacTime;
			unsigned char TriacValue;
			unsigned char RelayTime;
			unsigned char RelayValue;
			unsigned RelaySet:1;
			unsigned char Number;
		};
		struct Lights *Lights;


		#ifdef 1KEY_use
			struct Lights Lights1;
		#endif

		#ifdef 2KEY_use
			struct Lights Lights2;
		#endif

		#ifdef 3KEY_use
			struct Lights Lights3;
		#endif

		void LightsPointSelect(char);
		void Lights_Initialization();
		void Lights_Main();
		void Lights_ERROR();
		void Lights_Close();	

		void setLights_Initialization(char);
		void setLights_GO(char,char);
		void setLights_Main(char);
		void setLights_ERROR(char);
		void setLights_TriggerERROR(char,char); 
		void Lights_Control(char);
	
		void setLights_Trigger(char,char); 
		void setLights_Switch(char,char); 
		void setLights_Open(char,char);
		char getLights_Open(char);
		void setLights_Close(char,char);
		char getLights_Close(char);
		void setLights(char,char);
	#else
		#define LightsPointSelect(char) ;
		#define Lights_Initialization() ;
		#define Lights_Main() ;
		#define Lights_ERROR() ;
		#define Lights_Close() ;	

		#define setLights_Initialization(char) ;
		#define setLights_GO(char,char) ;
		#define setLights_Main(char) ;
		#define setLights_ERROR(char) ;
		#define setLights_TriggerERROR(char,char) ; 
		#define Lights_Control(char) ;
	
		#define setLights_Trigger(char,char) ; 
		#define setLights_Switch(char,char) ; 
		#define setLights_Open(char,char) ;
		#define getLights_Open(char) ;
		#define setLights_Close(char,char) ;
		#define getLights_Close(char) ;
		#define setLights(char,char) ;
	
	#endif


//End file
#endif