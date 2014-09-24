Project Name:	PIR_Ceiling_Embed_V1.1.1

PCB Name:		PIR-Ceiling-PV02-3(20140517)

Series:			1
Version: 		1
Serial_Number: 	1

Target Devcies: PIC16f723a
Release Data:	?

Description:
/*
一迴路近接開關吸頂燈嵌入式
*/


function:
/*

#buzzer		
	

#led
 //ErrLED flash time 500ms

	LED1 control 	
	LED2 control 
	ErrLED control 

#overload 	
	*依各迴路過載時觸發				
	*觸發
		1.disable RF,Switch
		2.閃爍error led
		3.蜂嗚器5聲
	*回復機制
		1.10秒後enable RF,Switch
		2.停止閃爍 led
		

#overtemp 	
	*開燈後開始偵測
	*儲存負載
	*每次偵測16ms
	*溫度到達75度時觸發
	*觸發
		1.disable RF,Switch
		2.閃爍error led
		3.蜂嗚器10聲

	*回復機制
		1.溫度降至60度enable RF,Switch
		2.停止閃爍 led


*/