Project Name:	PIR_Ceiling_Embed_V1.1.1

PCB Name:		PIR-Ceiling-PV02-3(20140517)

Series:			1
Version: 		1
Serial_Number: 	1

Target Devcies: PIC16f723a
Release Data:	?

Description:
/*
�@�j���񱵶}���l���O�O�J��
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
	*�̦U�j���L����Ĳ�o				
	*Ĳ�o
		1.disable RF,Switch
		2.�{�{error led
		3.���㾹5�n
	*�^�_����
		1.10���enable RF,Switch
		2.����{�{ led
		

#overtemp 	
	*�}�O��}�l����
	*�x�s�t��
	*�C������16ms
	*�ūר�F75�׮�Ĳ�o
	*Ĳ�o
		1.disable RF,Switch
		2.�{�{error led
		3.���㾹10�n

	*�^�_����
		1.�ū׭���60��enable RF,Switch
		2.����{�{ led


*/