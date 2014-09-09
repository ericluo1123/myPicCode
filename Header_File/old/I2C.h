
#ifndef _I2C_H_
#define _I2C_H_


  #define I2C_Master	1
  #define I2C_Slave		0

	#if I2C_Slave == 1
	 	#define I2C_Initial()\
				TRISC3=1;\
				TRISC4=1;\
				GIE=1;\
				PEIE=1;\
				SSPIE=1;\
				SSPADD=0x09;\
				SSPCON1=(0x26)
	
	#elif I2C_Master == 1
		  #define I2C_Initial()\
			TRISC3=1;\
			TRISC4=1;\
			GIE=1;\
			PEIE=1;\
			SSPIE=0;\
			SSPADD=0x09;\
			SSPCON1=(0x28)
	#else
		#define I2C_Initial() NOP()
 	#endif 

void I2C_Transmit();

#endif