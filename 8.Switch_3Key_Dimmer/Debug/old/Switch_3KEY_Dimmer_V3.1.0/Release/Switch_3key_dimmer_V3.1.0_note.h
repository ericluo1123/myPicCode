Project Name:	3key_dimmer_V3.1.0

PCB Name:		TH-302V09-3P(20140408)

Series:			3
Version: 		1
Serial_Number: 	0

Target Devcies: PIC16f1516
Release Data:	2014/7/24

Description:
/*
�T�j���i�ե��}��
*/


function:
/*
*�p�󪾹D�O�ե���key id
*������ɶ����^�X
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
		*�ʤ����ഫ�|������		

	3.�w��
		�����w�ɫ��O�X 			pass
		�o�g�w�ɫ�^�X			pass

	4.�N��
		�����N�����O�X 			pass

		


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

	
	
	

#overload 	fail

#overtemp 	fail

#flashmemory
	loop code save 			pass
	dimmer percent save 	pass	
*/