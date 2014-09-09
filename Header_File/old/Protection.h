
#ifndef _Protection_H_
#define _Protection_H_

struct Temp
{
	unsigned Enable:1;	
	unsigned ERROR:1;
	unsigned GO:1;
	unsigned int Time;
	unsigned char AD;
	unsigned char Count;
};
struct Temp VarTemp;
struct Temp *Temp;


	#define Temp_Initial()\
		Temp=&VarTemp;\
		Temp->Enable=1
		
	//Triac·Å«×
	//97 = 85«×
	//99 =81
	//100=79.5
	//101 =77.5
	//117 = 60«×
	#define	Temp_Main()\
		if(Temp->Enable == 1)\
		{\
			Temp->Time++;\
			if(Temp->Time == 5000)\
			{\
				Temp->Time=0;\
				ADCON1=Ref_VDD;\
				ADCON0=OverTemp_Channel;\
				ADGO=1;\
				while(ADGO);\
				Temp->AD=ADRES;\
				;\
				if(Temp->ERROR == 0)\
				{\
					if(Temp->AD <= 102)\
					{\
						Temp->Count++;\
						if(Temp->Count == 3)\
						{\
							Temp->Count=0;\
							Temp->ERROR=1;\
							CDS_Restore();\
							PIR_Restore();\
							Dimmer_Restore();\
							LED2_Start();\
						}\
					}\
					else\
					{\
						Temp->Count=0;\
					}\
				}\
				else\
				{\
					if(Temp->AD >=117)\
					{\
						Temp->Count++;\
						if(Temp->Count == 3)\
						{\
							Temp->Count=0;\
							Temp->ERROR=0;\
							LED2_Stop();\
							Turn_On_Lights();\
						}\
					}\
					else\
					{\
						Temp->Count=0;\
					}\
				}\
			}\
		}
			
#endif 