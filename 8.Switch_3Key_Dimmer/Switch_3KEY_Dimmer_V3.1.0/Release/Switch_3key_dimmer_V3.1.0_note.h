Project Name:	3key_dimmer_V3.1.0

PCB Name:		TH-302V09-3P(20140408)

Series:			3
Version: 		1
Serial_Number: 	0

Target Devcies: PIC16f1516
Release Data:	2014/7/24

Description:
/*
三迴路可調光開關
*/


function:
/*
*如何知道是調光的key id
*有延遲時間的回碼
#RF	
	1.控燈		
		接收開燈指令碼 			pass
		發射開燈後回碼 			pass

		接收關燈指令碼 			pass
		發射關燈後回碼 			pass

		接收全關指令碼			pass
		發射全關後回碼 			pass	
	
	2.調光
		接收調光指令碼 			pass
		發射調光後回碼 			pass
		*百分比轉換尚未完成		

	3.定時
		接收定時指令碼 			pass
		發射定時後回碼			pass

	4.燒錄
		接收燒錄指令碼 			pass

		


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