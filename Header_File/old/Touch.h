
#ifndef	_Touch_H_
#define _Touch_H_

/***Define***/
bit TouchPower;
//bit Bottom1;
//#define LED2;
//#define LED3;
//#define Comvalue;
//#define DisplayValue;

#define TouchDebounceTimeValue	5
#define TouchLearnTimeValue		180

#ifdef _Development_V1.0_H_
bit TouchPower;
#endif
 
/***Global extern vriables declaration***/
struct Touch
{
	unsigned DCBellMode:1;
	unsigned ACBellMode:1;
	unsigned LightsMode:1;
	unsigned Enable:1;
	unsigned Debounce:1;
	unsigned LearnRun:1;
	unsigned char DebounceTime;
	unsigned int LearnTime;
	unsigned int PowerTime,PowerTimeValue;
};
struct Touch VarTouch;
struct Touch *Touch;

/***Routine declaration***/
void Touch_Initial();
void Touch_Main();

#endif
/***End file***/
