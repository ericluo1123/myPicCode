Project Name:	3key_dimmer_V3.1.2


PCB Name:		TH-302V09-3P(20140408)

Series:			3
Version: 		1
Serial_Number: 	2

Target Devcies: PIC16f1518
Release Data:	?

Description:
/*
*�T�j���i�ե��}��
*
*1.mcu�ﴫ��pic16f1518
*2.�ե��Ȧ��x�s
*3.�_�q��A�}���˴��\��
*
*/


function:
/*
*�p�󪾹D�O�ե���key id
*������ɶ����^�X
#App



#RF	
	1.���O		
		�����}�O���O�X 			pass
		�o�g�}�O��^�X 			pass

		�������O���O�X 			pass
		�o�g���O��^�X 			pass

		�����������O�X			pass
		�o�g������^�X 			pass	

	2.�ե�
		�����ե����O�X 			pass
		�o�g�ե���^�X 			pass
		*�}�O�ɤ~�����ե�
		*�ʤ����ഫ�|������		

	3.�w��
		�����w�ɫ��O�X 			pass
		�o�g�w�ɫ�^�X			pass
		*�}���O������w��
		*�ե��O�_�����w��?

	4.�N��
		�����N�����O�X 			pass

	5.�߰ݽX
		�^�ǲ{�b���A 			pass
		���A1:�O?
		���A2:?
	
	6.overtermperature �^�X�ȵL
		reserve
	7.overload �^�X�ȵL
		reserve
	8.Powerfault�^�X�ȵL
		reserve



#delayoff
	5  minute off pass
	10 minute off pass
	15 minute off pass
	20 minute off pass
	25 minute off pass
	30 minute off pass

#touch switch 		
	touch sw1 on/off control pass
	touch sw2 on/off control pass	
	touch sw3 on/off control pass		

#buzzer		
	one sound 100ms pass
	three souch 50ms pass
	five souch 300ms pass
	ten souch 300ms pass
	

#dimmer	
	 //range 20%~75%
	 //bule LED trigger time 1
	 //dimming time 3
	
	on/off control pass

#led
 //ErrLED flash time 500ms

	LED1 control 	pass
	LED2 control 	pass
	LED3 control 	pass
	ErrLED control 	pass
	

#overload 	pass
	*�̦U�j���L����Ĳ�o	
	*Ĳ�o
		1.disable RF,Switch
		2.�{�{error led
		3.���㾹5�n
	*�^�_����
		1.10���enable RF,Switch
		2.����{�{ led
		

#overtemp 	pass
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


#PowerFault pass
	Ĳ�o����:
			�C6���ˬd1���A�s��2����ǹq���W�L���t0.3V�YĲ�o
	�^�о���:
			�q���^�_�٩w�C6���ˬd1���A�s��2��


#flashmemory
	loop code save 			pass
	dimmer percent save 	pass	
*/