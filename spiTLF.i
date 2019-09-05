# 1 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c"
# 1 "C:\\SCU\\Project_AU_C//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c"
# 1 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.h" 1
# 11 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.h"
 void UnlockTLF35584(void);
 void TurnOff(void);
 void GoToStanbyTLF35584(void);
# 2 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c" 2
# 1 "0_Src/0_AppSw/Tricore/TLF33584/SPI_TLF33584.h" 1
# 9 "0_Src/0_AppSw/Tricore/TLF33584/SPI_TLF33584.h"
 void QSPI2_init(void);
# 3 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c" 2
# 12 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c"
unsigned short TLF35584(unsigned char mode, unsigned char address, unsigned char data)
{
 unsigned int result = 0;
 unsigned int packet=0;
 unsigned int packet_l, packet_h;
 unsigned int parity, idx;
 unsigned int mask;

 unsigned int rdword;

 packet_l = (data << 1) & 0xFE;
 packet_h = (address << 1) & 0x7E;
 if( (data & 0x80) == 0x80 ) packet_h = packet_h | 0x01;

 if( mode == 1) packet_h = packet_h & 0x7F;
 else if( mode == 0) packet_h = packet_h | 0x80;
 else {
       return 1;
    }
 packet = (packet_h << 8) | packet_l;


 mask = 0x0002;
 parity = 0;
 for(idx=0;idx<15;idx++)
 {
  if( (packet & mask) == mask ) parity++;
  mask = mask << 1;
 }


 if( (parity & 0x01) == 0x01 ) packet = packet | 0x0001;
 else packet = packet & 0xFFFE;

 return Send16bitToTLF33584(packet);

 }





volatile unsigned short read_;

void UnlockTLF35584(void)
{





read_ = TLF35584(1, 0x0D, 0);



 TLF35584(0, 0x03, 0xAB);

 TLF35584(0, 0x03, 0xEF);

TLF35584(0, 0x03, 0x56);

TLF35584(0, 0x03, 0x12);




TLF35584(0, 0x06, 0x91);

TLF35584(0, 0x05, 0x0);



TLF35584(0, 0x03, 0xDF);

TLF35584(0, 0x03, 0x34);

TLF35584(0, 0x03, 0xBE);

TLF35584(0, 0x03, 0xCA);

}

void GoToNormalTLF35584(void)
{

 TLF35584(0,0x15,0xFA);
 TLF35584(0,0x16,0x05);
}

unsigned char EnaDetectedTLF35584(void)
{
 if(TLF35584(1, 0x1E, 0)|(1<<2))
  return 1;
 else return 0;
}

void GoToStanbyTLF35584(void)
{

 TLF35584(0,0x15,0x04);
 TLF35584(0,0x16,0xFB);
}





void WDIcfgTLF35584(void)
{




  TLF35584(0, 0x03, 0xAB);

  TLF35584(0, 0x03, 0xEF);

 TLF35584(0, 0x03, 0x56);

 TLF35584(0, 0x03, 0x12);




 TLF35584(0, 0x06, 0x99);







 TLF35584(0, 0x03, 0xDF);

 TLF35584(0, 0x03, 0x34);

 TLF35584(0, 0x03, 0xBE);

 TLF35584(0, 0x03, 0xCA);

}


void TurnOff(void)
 {

  {


TLF35584(0, 0x03, 0xAB);

TLF35584(0, 0x03, 0xEF);

TLF35584(0, 0x03, 0x56);

TLF35584(0, 0x03, 0x12);
# 180 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c"
TLF35584(0, 0x03, 0xDF);

TLF35584(0, 0x03, 0x34);

TLF35584(0, 0x03, 0xBE);

TLF35584(0, 0x03, 0xCA);

 while(1);
}
  }


PWR_GotoNormal()
{volatile int i=0;

    WDIcfgTLF35584();
    for(i=0;i<0xFFFF;i++);

    GoToNormalTLF35584();
# 212 "0_Src/0_AppSw/Tricore/TLF33584/spiTLF.c"
}
