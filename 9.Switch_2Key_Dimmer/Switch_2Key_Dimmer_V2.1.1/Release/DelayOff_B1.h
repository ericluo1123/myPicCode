
#ifndef	_DelayOff_H_
#define _DelayOff_H_

	#if DelayOff_use == 1

		#if	Switch_Key == 1
			#define SecondTimeValue 11200	//*5ms
		#endif

		#if	Switch_Key == 2
			#define SecondTimeValue 10800	//*5ms
		#endif

		#if	Switch_Key == 3
			#define SecondTimeValue 11300	//*5ms
		#endif

		struct DelayOff
		{
			unsigned Enable:1;
			unsigned GO:1;
			unsigned char Value;
			unsigned int SecondTime;
			unsigned char MinuteTime;
		};
		struct DelayOff *DelayOff;

		#ifdef Triac1
			struct DelayOff DlySw1;		
		#endif
	
		#ifdef Triac2
			struct DelayOff DlySw2;
		#endif
	
		#ifdef Triac3
			struct DelayOff DlySw3;
		#endif

		void DelayOff_Initialization();
		void DelayOff_Main();
		char DelayTimejudge(char);
		void DlyOff_Initialization(char);
		void DlyOff_Main(char);
		void setDelayOff_GO(char,char,char);
	
	#else
		//NOP
		#define DelayOff_Initialization() ;
		#define DelayOff_Main() ;
		#define DelayTimejudge(char) ;
		#define DlyOff_Initialization(char) ;
		#define DlyOff_Main(char) ;
		#define setDelayOff_GO(char,char,char) ;

	#endif

#endif
