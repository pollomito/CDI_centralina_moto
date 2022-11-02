//***************************************************************************
//******
//****** Digital ignition for 2 stroke engines. SPORTDEVICES 4/3/2005
//******
//****** NOTE: use compiler: PCW v2.619
//******
//****** Digital parts: PIC16F84a, XTAL 4MHz
//****** Complete schematic: www.sportdevices.com/ignition/ignition.htm
//****** To ask any question: jandani@sportdevices.com
//******
//******
//****************************************************************************

#include <16F84a.H>
#fuses XT,NOWDT,PUT
#use fast_io(a)
#use delay(clock=4000000)

//setup values
#define prescaler        7     //2^7=128
#define delay_multiple   8     //8 us, min 3 us
#define low_rpm_pulse    true  //does it generate pulses at low rpm?
#define low_rpm_multiple 40    //us, to calculate degrees at low rpm (8 * 2.5 = 40)
#define scr_pulse        200   //scr spark time, microseconds
#define pulse_polarity   0     //0-activates low
#define min_rpm          200   //min rpm value, if lower the program starts again
#define min_period       31
//********
#define max_period       60000000/(2^prescaler)/min_rpm

int const ignition0[64]=
{48,49,51,52,54,56,57,59,60,62,64,65,67,68,70,72,73,75,76,78,80,81,83,84,
86,88,89,91,92,94,96,97,99,100,102,104,105,142,145,147,149,151,153,155,157,
160,162,164,166,168,170,172,174,177,179,181,183,185,187,189,192,194,196,198};


/*int const ignition1[64]=
{22,23,25,27,29,31,33,35,37,39,41,44,46,49,51,54,56,59,62,65,68,70,73,77,80,83,86,89,
93,96,100,103,106,108,110,112,115,117,119,122,124,127,129,131,134,136,139,141,144,146,
149,151,154,157,159,162,165,167,170,173,175,178,181,184};*/

//Note: Delay values are calculated in multiples of 4 microseconds
//first value is for 15121 RPM (TMR0 count=31) and last value is for 4987 RPM (TMR0 count=94)


#define pickup    PIN_B0  //pin 6
#define thyristor PIN_A2  //pin 1
#define LED       PIN_A4  //pin 1
#define curve_sel PIN_B2  //pin 8
#define inhibit   PIN_B1  //pin 8

#byte TMR0=0x01
#byte PORTA=0x05
#byte PORTB=0x06
#byte INTCON=0x0b
#byte OPTION_REG=0x81

int tmr0h,perl,perh;
int16 per;

#define copy16(a,b) #asm \
   movf a,w \
   movwf b \
   movf &a+1,w \
   movwf &b+1 \
   #endasm

#int_global
void int_tmr0()
{
  tmr0h++;
  bit_clear(INTCON,2);
}

#inline
void wait_pulse()
{
  #if pulse_polarity==0
    while (!input(pickup));  //wait line goes high
    while (input(pickup));   //wait line goes low
  #else
    while (input(pickup));   //wait line goes low
    while (!input(pickup));  //wait line goes high
  #endif

  perl=TMR0; perh=tmr0h;
  TMR0=0; tmr0h=0;
}

#inline activate_SCR()
{
  output_high(inhibit); //switch OFF DC/DC converter (if present)

  output_high(LED); // led off
  output_high(thyristor);
  delay_us(scr_pulse);
  output_low(thyristor);

  delay_us(500);        //this value is TBD (to be defined)
  output_low(inhibit);  //switch ON DC/DC converter (if present)
}

void main(){
int retardo;
boolean first=true;

   INTCON=0xa0; //T0IE=1
   OPTION_REG=prescaler-1;  //PULLUP on, 2^prescaler=128
   set_tris_a(0x01);
   set_tris_b(0x05); //pin b2 input (curve selector), PIN B0 input (pickup)

   output_low(LED);
   delay_ms(50);
   output_high(LED);
   delay_ms(100);

   while (true)
   {

      //first pulse is not processed because the period can not be calculated until the second pulse
      if(first)  { wait_pulse(); first=false; }

      wait_pulse();

      copy16(perl,per);

      if ((per>=min_period)&&(per<min_period+sizeof(ignition0)))
      {
        perl=perl-min_period;
        #ifdef ignition1
          if(input(curve_sel))
            retardo=ignition1[perl];
          else
        #endif
          retardo=ignition0[perl];

        retardo=retardo-8; //delay adjust (substract 8*4=32 us)
        //do delay
        #asm
 bucle: #endasm
        delay_cycles(delay_multiple-3);
        #asm
        decfsz &retardo,f
        goto bucle
        #endasm

        activate_SCR();
      }

    else
    {
      if (per>=max_period) first=true;  //if rpm is too slow, engine is stoped

#if (low_rpm_pulse)
      else
      if (per>=min_period+sizeof(ignition0))
      {
        //do delay
        perl++;
        perh++;
        #asm
loop2:  #endasm
        delay_cycles(low_rpm_multiple-3);
        #asm
        decfsz perl,f
        goto loop2
        decfsz perh,f
        goto loop2
        #endasm

        activate_SCR();
      }
#endif
   }

   }  //while
} //main




