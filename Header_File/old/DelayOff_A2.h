
#ifndef	_DelayOff_H_
#define _DelayOff_H_

	#if DelayOff_use == 1
		
		struct DelayOff
		{
			unsigned GO:1;
			unsigned char Value;
			unsigned int SecondTime;
			unsigned char MinuteTime;
		};

		void DelayOff_Initial();
		void DelayOff_Main();
		char DelayTimejudge(char);

		#ifdef Triac1
			struct DelayOff *DelayOffSw1;
			struct DelayOff VarDelayOffSw1;

			#define DelayOffSw1_Initial() DelayOffSw1=&VarDelayOffSw1

			void DelayOffSw1_Main();
			void setDelayOffSw1_GO(char,char);			
		#else
			//NOP
			#define DelayOffSw1_Initial() ;
			#define DelayOffSw1_Main() ;
			#define setDelayOffSw1_GO(char,char) ;
		#endif
	
		#ifdef Triac2
			struct DelayOff *DelayOffSw2;
			struct DelayOff VarDelayOffSw2;

			#define DelayOffSw2_Initial() DelayOffSw2=&VarDelayOffSw2

			void DelayOffSw2_Main();
			void setDelayOffSw2_GO(char,char);
		#else
			//NOP
			#define DelayOffSw2_Initial() ;
			#define DelayOffSw2_Main() ;
			#define setDelayOffSw2_GO(char,char) ;
		#endif
	
		#ifdef Triac3
			struct DelayOff *DelayOffSw3;
			struct DelayOff VarDelayOffSw3;

			#define DelayOffSw3_Initial() DelayOffSw3=&VarDelayOffSw3

			void DelayOffSw3_Main();
			void setDelayOffSw3_GO(char,char);
		#else
			//NOP
			#define DelayOffSw3_Initial() ;
			#define DelayOffSw3_Main() ;
			#define setDelayOffSw3_GO(char,char) ;
		#endif
	
	
	#else
		//NOP
		#define DelayOff_Initial() ;
		#define DelayOff_Main() ;
		#define DelayTimejudge(char) ;

		#define DelayOffSw1_Initial() ;
		#define DelayOffSw1_Main() ;
		#define setDelayOffSw1_GO(char,char) ;

		#define DelayOffSw2_Initial() ;
		#define DelayOffSw2_Main() ;
		#define setDelayOffSw2_GO(char,char) ;

		#define DelayOffSw3_Initial() ;
		#define DelayOffSw3_Main() ;
		#define setDelayOffSw3_GO(char,char) ;
	#endif




#endif
