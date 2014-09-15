Project Name:	2key_dimmer_V2.1.0

PCB Name:		TH-302PV11-1_Dim(20140722)

Series:			2
Version: 		1
Serial_Number: 	0

Target Devcies: PIC16f1518
Release Data:	?

Description:
/*
�G�j���i�ե��}��
*/


function:
/*
*�p�󪾹D�O�ե���key id D1
						D2
						D3

#RF	& app
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
		*�}�O�ɤ~�����ե�		pass
		*�ʤ����ഫ				pass

	3.�w��
		�����w�ɫ��O�X 			pass
		�o�g�w�ɫ�^�X			pass
		*�}���O������w��
		*�ե��O�_�����w��?

	4.�N��
		�����N�����O�X 			pass
		�Ĥ@���N�������2�nĵ��	pass

	5.�߰ݽX
		�^�ǲ{�b�O���A 			pass
		���a���O�X�A�ե��X		pass
		

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
		

#overtemp 	fail
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


#flashmemory
	loop code save 				pass
	Loop coode buzzer cancel  	pass
	dimmer percent save 		pass
*/