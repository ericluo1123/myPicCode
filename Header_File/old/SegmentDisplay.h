
#ifndef _SegmentDisplay_H_
#define _SegmentDisplay_H_

/***config***/ 
  #define Polarity 1		//1 = Positive
							//0 = Cathode

  #define DisplayUnit 1		//Hex=1 	
							//Dec=0





/***Global extern vriables declaration***/
struct Segment
{
	unsigned Enable:1;
	unsigned GO:1;
    unsigned Start:1;
	unsigned DecToHex:1;
	unsigned char ComCount;
	unsigned char Count;
	unsigned char Time;
	unsigned char Display[17];
	unsigned char Num[4];
	unsigned int test;
};
struct Segment *Segment;	
struct Segment VarSegment;	

/***Routine declaration***/
void Display_Initial();
void Display_Main();
void Display_Setting(unsigned int);

/***Setup***/
  #if Polarity == 1

  #define		Zero	 	0xc0
  #define		One			0xf9
  #define		Two			0xa4
  #define		Three		0xb0
  #define		Four		0x99
  #define		Five		0x92
  #define		Six			0x82
  #define		Seven		0xd8
  #define		Eight		0x80
  #define		Nine		0x90
  #define		Ten			0x88
  #define		Eleven		0x83
  #define		Twelve		0xa7
  #define		Thirteen	0xa1
  #define		Fourteen	0x86
  #define		Fifteen		0x8e
  #define		Hyphen		0xbf		

  #else

  #define		Zero		0x3f
  #define		One			0x06
  #define		Two			0x5b
  #define		Three		0x4f
  #define		Four		0x66
  #define		Five		0x6d
  #define		Six			0x7d
  #define		Seven		0x27
  #define		Eight		0x7f
  #define		nine		0x90
  #define		Ten			0x88
  #define		Eleven		0x83
  #define		Twelve		0xa7
  #define		Thirteen	0xa1
  #define		Fourteen	0x86
  #define		Fifteen		0x8e	
  #define		Hyphen		0x40

  #endif


#endif
/***End file***/
