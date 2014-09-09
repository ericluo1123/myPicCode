
#ifndef _Timer1_H_
#define _Timer1_H_


/***Define***/

/***Global extern variable declaration***/
//ISR
struct Timer1
{	
	unsigned PowerON:1;
	unsigned Trigger:1;
	unsigned Timeout:1;
	unsigned Intr_Timerout:1;
	unsigned int Count;
	unsigned int Count1;
	unsigned int Count2;
	unsigned int Count3;
};
struct Timer1 VarTimer1;
struct Timer1 *Timer1;	
/***Routine declaration***/
void TMR1_Main();

/***Setup***/
//interrupt
  #if TMR1IE_Enable == 1
	
  #define Prescaler_1x1		0x00	
  #define Prescaler_1x2		0x10
  #define Prescaler_1x4		0x20
  #define Prescaler_1x8		0x30

  #if IntrTime == _50us	
  #define Prescaler Prescaler_1x1		
  #endif

  #if Prescaler == Prescaler_1x1
  #define Prescaler_Value 1
  #endif

  #if Prescaler == Prescaler_1x2
  #define Prescaler_Value 2
  #endif

  #if Prescaler == Prescaler_1x4
  #define Prescaler_Value 4
  #endif

  #if Prescaler == Prescaler_1x8
  #define Prescaler_Value 8
  #endif

  #if OSCCON_Value == OSCCON_16M
  #define TMR1_Count	(Prescaler_Value*200)
  #endif

  #define TMR1H_Value 	((65536-TMR1_Count)/256)
  #define TMR1L_Value  	((65536-TMR1_Count)%256)


  #define TMR1_Initial()\
	Timer1=&VarTimer1;\
	GIE=1;\
	PEIE=1;\
	T1CON=(Prescaler | 0x41);\
	TMR1IE=1;\
	TMR1H=TMR1H_Value;\
	TMR1L=TMR1L_Value;\
	TMR1IF=0;	

  #else
  #define TMR1_Initial()		
  #define TMR1H_Value 	0
  #define TMR1L_Value   0
  #endif

#endif
/***End file***/