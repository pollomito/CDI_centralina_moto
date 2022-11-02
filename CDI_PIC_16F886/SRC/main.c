
/** I N C L U D E S **************************************************/
#include <htc.h>


__CONFIG(HS & WDTDIS & PWRTDIS & BORDIS & LVPEN & DEBUGEN & UNPROTECT);

#define _XTAL_FREQ 16000000

void interrupt InterruptService(void);
void ADC_Init(void);
unsigned char ADC_Convert(void);
//void InitSmagTimeTable(unsigned char Value[]);

/** V A R I A B L E S *************************************************/


unsigned char const DCDC_CicleTable[128]={
150,150,150,150,132,111,96,86,78,71,66,62,59,56,53,51,49,47
,46,44,43,42,41,40,39,39,38,37,37,36,35,35,34,34,34,33,33,32
,32,32,31,31,31,31,30,30,30,30,29,29,29,29,29,29,28,28,28,28
,28,28,27,27,27,27,27,27,27,27,27,26,26,26,26,26,26,26,26,26
,26,26,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,24,24
,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24
,24,24,23,23,23,23,23,23,23,23};



//#pragma udata LookupDataDELAY
const unsigned int DELAY_Table_0[256]={
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
,20,54,89,123,158,192,227,261,296,330,365,399,434,468,503,537
,571,606,640,675,709,744,778,813,847,882,916,951,985,1020,1054
,1089,1123,1158,1192,1227,1261,1296,1330,1365,1399,1434,1468,1503
,1537,1572,1606,1641,1675,1710,1744,1779,1813,1848,1882,1917,1951
,1986,2020,2055,2089,2123,2158,2192,2227,2261,2296,2330,2365,2399
,2434,2468,2503,2537,2572,2606,2641,2675,2710,2744,2779,2813,2848
,2882,2917,2951,2986,3020,3055,3089,3124,3158,3193,3227,3262,3296
,3331,3365,3400,3434,3469,3503,3538,3572,3607,3641,3675,3710,3744
,3779,3813,3848,3882,3917,3951,3986,4020,4055,4089,4124,4158,4193
,4227,4262,4296,4331,4365,4400,4434,4469,4503,4538,4572,4607,4641
,4676,4710,4745,4779,4814,4848,4883,4917,4952,4986,5021,5055,5090
,5124,5159,5193,5227,5262,5296,5331,5365,5400,5434,5469,5503,5538
,5572,5607,5641,5676,5710,5745,5779,5814,5848,5883,5917,5952,5986
,6021,6055,6090,6124,6159,6193,6228,6262,6297,6331,6366,6400,6435
,6469,6504,6538,6573,6607,6642,6676,6711,6745,6779,6814,6848,6883
,6917,6952,6986,7021,7055,7090,7124,7159,7193,7228,7262,7297,7331
,7366,7400,7435,7469,7504,7538,7573,7607,7642,7676,7711,7745 };  

const unsigned int DELAY_Table_1[256]={
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
,20,54,89,123,158,192,227,261,296,330,365,399,434,468,503,537
,571,606,640,675,709,744,778,813,847,882,916,951,985,1020,1054
,1089,1123,1158,1192,1227,1261,1296,1330,1365,1399,1434,1468,1503
,1537,1572,1606,1641,1675,1710,1744,1779,1813,1848,1882,1917,1951
,1986,2020,2055,2089,2123,2158,2192,2227,2261,2296,2330,2365,2399
,2434,2468,2503,2537,2572,2606,2641,2675,2710,2744,2779,2813,2848
,2882,2917,2951,2986,3020,3055,3089,3124,3158,3193,3227,3262,3296
,3331,3365,3400,3434,3469,3503,3538,3572,3607,3641,3675,3710,3744
,3779,3813,3848,3882,3917,3951,3986,4020,4055,4089,4124,4158,4193
,4227,4262,4296,4331,4365,4400,4434,4469,4503,4538,4572,4607,4641
,4676,4710,4745,4779,4814,4848,4883,4917,4952,4986,5021,5055,5090
,5124,5159,5193,5227,5262,5296,5331,5365,5400,5434,5469,5503,5538
,5572,5607,5641,5676,5710,5745,5779,5814,5848,5883,5917,5952,5986
,6021,6055,6090,6124,6159,6193,6228,6262,6297,6331,6366,6400,6435
,6469,6504,6538,6573,6607,6642,6676,6711,6745,6779,6814,6848,6883
,6917,6952,6986,7021,7055,7090,7124,7159,7193,7228,7262,7297,7331
,7366,7400,7435,7469,7504,7538,7573,7607,7642,7676,7711,7745 }; 

const unsigned int DELAY_Table_2[256]={
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
,20,54,89,123,158,192,227,261,296,330,365,399,434,468,503,537
,571,606,640,675,709,744,778,813,847,882,916,951,985,1020,1054
,1089,1123,1158,1192,1227,1261,1296,1330,1365,1399,1434,1468,1503
,1537,1572,1606,1641,1675,1710,1744,1779,1813,1848,1882,1917,1951
,1986,2020,2055,2089,2123,2158,2192,2227,2261,2296,2330,2365,2399
,2434,2468,2503,2537,2572,2606,2641,2675,2710,2744,2779,2813,2848
,2882,2917,2951,2986,3020,3055,3089,3124,3158,3193,3227,3262,3296
,3331,3365,3400,3434,3469,3503,3538,3572,3607,3641,3675,3710,3744
,3779,3813,3848,3882,3917,3951,3986,4020,4055,4089,4124,4158,4193
,4227,4262,4296,4331,4365,4400,4434,4469,4503,4538,4572,4607,4641
,4676,4710,4745,4779,4814,4848,4883,4917,4952,4986,5021,5055,5090
,5124,5159,5193,5227,5262,5296,5331,5365,5400,5434,5469,5503,5538
,5572,5607,5641,5676,5710,5745,5779,5814,5848,5883,5917,5952,5986
,6021,6055,6090,6124,6159,6193,6228,6262,6297,6331,6366,6400,6435
,6469,6504,6538,6573,6607,6642,6676,6711,6745,6779,6814,6848,6883
,6917,6952,6986,7021,7055,7090,7124,7159,7193,7228,7262,7297,7331
,7366,7400,7435,7469,7504,7538,7573,7607,7642,7676,7711,7745 }; 


unsigned char lastVoltage;
char DCDC_CicleCounter;
char ReadyToDiscarge;

#define  PICKUP_POS   RB1 //same as RA3   
#define  PICKUP_NEG   RA4
#define  CDI_CMD      RC1
#define  RMP_CMD      RC0
#define  SEL_VALUE    (PORTC>>4)

/** D E C L A R A T I O N S *******************************************/


    
void main (void)
{

    unsigned char IsLowRPM;
    unsigned char DeltaTime;
    unsigned int  DelayTime;
    unsigned int  CurrentTime;
    
    const unsigned int * Selected_DELAY_Table;
    
    DeltaTime = 0;
    IsLowRPM  = 0;
    
    // port directions: 1=input, 0=output
    PORTC = 0;
    
    TRISC = 0b11110100;
    TRISA = 0b11111111;
    TRISB = 0b11111111;
    
    RMP_CMD = 0;
    CDI_CMD = 0;
        
    ADC_Init();
    //InitSmagTimeTable(DCDC_CicleTable);
    

    if( SEL_VALUE == 1)
    {
     Selected_DELAY_Table = &DELAY_Table_1[0];
    }
    else if ( SEL_VALUE == 2)
    {
     Selected_DELAY_Table = &DELAY_Table_2[0];
    }
    else
    {
     Selected_DELAY_Table = &DELAY_Table_0[0];
    }   
    
    
    GODONE=1;             // start conversion
    while(GODONE);        // wait for it to complete
    lastVoltage = 0;
    DCDC_CicleCounter = 0;
    ReadyToDiscarge = 0;

    // Thus, the PWM frequency is:
    // 16MHz clock / 4 = 4MHz instruction rate.
    // (4MHz / 4 prescale) => 1MHz = 1us
    // Set up 8-bit Timer2 to generate the PWM period (frequency)
    T2CON = 0b00000101;// Prescale = 1:4, timer on, postscale not used with CCP module
    
    // 16MHz clock / 4 = 4MHz instruction rate.
    // (4MHz / 4 prescale) => 1MHz = 1us
    // Set up 16-bit Timer1 to measure rpm (1us to 65535 us, da 950rpm in su)
    T1CON = 0b00100101;// Prescale = 1:4, timer on

    PR2 = DCDC_CicleTable[0];         // Timer 2 Period Register
    
    // The Duty Cycle is controlled by the ten-bit CCPR1L<7,0>:DC1B1:DC1B0
    // fixed 10us on
    CCPR1L = 0x0A;   // The 8 most significant bits of the value 500 = 0x1F4 are 0x7D
                     // The 2 least significant bits of the value (0b00) are written
                     // to the DC1B1 and DC1B0 bits in CCP1CON
    CCP1CON = 0b00001100;
                     // P1Mx = 00 Single output; P1A modulated; P1B, P1C, P1D assigned as port pins
                     // CCP1Mx = 1100, PWM mode with P1A active-high.
    T1SYNC = 0;

    while(TMR2IF==0);
    TMR2IF = 0;           // clear roll-over interrupt flag
    while(TMR2IF==0);
    TMR2IF = 0;           // clear roll-over interrupt flag
     
      
    // Set up Interrupts for timer
    TMR2IF = 0;           // clear roll-over interrupt flag
    TMR2IE = 1;           // enable the Timer1 interrupt.
    
    TMR1ON = 0;
    TMR1H = TMR1L = 0;
    TMR1IF = 0;           // clear roll-over interrupt flag

    // interrupt at and of DAC conv.
    ADIF = 0;
    ADIE = 1;

    IOCB1 = 1; // interrupt on chage (for PICKUP_POS)


    TRISC3 = 0; // bit output
    // Set RC2 pin output so P1A PWM output drives MOSFET
    TRISC2 = 0;
    
 
    

    
    PEIE = 1; 
    GIE  = 1;		// Global interrupt enable

    while(1)
    {
    
       
       while (PICKUP_NEG == 0);  //wait line goes high
       
       TMR1ON = 0;
       DeltaTime = TMR1H;
       IsLowRPM = TMR1IF;
       TMR1H = TMR1L = 0;
       TMR1IF = 0;           // clear roll-over interrupt flag
       TMR1ON = 1;
       
       ReadyToDiscarge = 1;
       RMP_CMD = 1;          // rimesso a 0 da su salita di pickup_pos
       
       
       if((IsLowRPM == 0) && (DeltaTime != 0)) // primo giro timer non parte (DeltaTime == 0)
       {                                       // se timer overflow ci ha messo troppo (bassi giri no delay)
         
      
           DelayTime = *(Selected_DELAY_Table+DeltaTime);
     
         
    
         //DelayTime = DELAY_Table_0[DeltaTime];
         
         do{
            //__delay_us(1); 0.25us cycle time
            CurrentTime = (TMR1H<<8) | TMR1L;
         } while(CurrentTime <= DelayTime);
         
         
         GIE  = 0;
         if(ReadyToDiscarge == 1)
         {
           //activate_SCR();    // attiva src (spento da interrupt su discesa di pickup_pos)
           TRISC2 = 1;        // disable DCDC
           CDI_CMD = 1;  
         }
         GIE  = 1;
       }
       
       
       while (PICKUP_NEG == 1);  //wait line goes low
    
    }
     	
}


// -------------------- Iterrupt Service Routines --------------------------

void interrupt InterruptService(void)
{
    
    // Check to see what caused the interrupt
    // (Necessary when more than 1 interrupt at a priority level)
   if (RBIF)
   {
     // RC3 ^= 1;
      if((PICKUP_POS == 1) && (ReadyToDiscarge!=0)) // salita secondo impulso
      {
                           // in caso di lowrpm forza accensione qui
        TRISC2 = 1;        // disable DCDC
        CDI_CMD = 1;      
        RMP_CMD = 0;
        __delay_us(1500);  // aspetta scarica
        CDI_CMD = 0;
        __delay_us(5);
        ReadyToDiscarge = 0;
        DCDC_CicleCounter = 0;     
        TRISC2 = 0;        // enable DCDC
      }
     /* else
      {
        __delay_us(500);
        CDI_CMD = 0;
        __delay_us(5);
        DCDC_CicleCounter = 0;     
        TRISC2 = 0;        // enable DCDC
      }*/  
      RBIF = 0;            // clear interrupt flag
   } 
     
   if (ADIF)       // ADC
   {
      lastVoltage = ADRESH>>1;
      if(lastVoltage > 92)  // 37=100V, 93 = 250V
      {
        TRISC2 = 1; // disable out
      }
      
      ADIF = 0;
   }  

    // Check for INT0 interrupt
    if (TMR2IF)
    {
        
        DCDC_CicleCounter ++;
        
       
        GODONE = 1;             // start conversion 
      

        PR2 = DCDC_CicleTable[lastVoltage];

        if(lastVoltage < 4) // <= 3 measn less the 8V
        {
          if(DCDC_CicleCounter > 5) // low voltage after 2 pule
          {  // something is wrong... stop DCDC
             TRISC2 = 1; // disable out
             DCDC_CicleCounter = 0;
          }
          //else { TRISC2 = DCDC_Disable; }  non avviene accensione automatica
        }
           
        // clear (reset) flag
        TMR2IF = 0;
          
    }

    
    // Check for another interrupt, examples:
    // if (PIR1bits.TMR1IF)     // Timer 1


}  // return from high-priority interrupt



void ADC_Init(void)
{ // initialize the Analog-To-Digital converter.
    // First, we need to make sure the AN0 pin is enabled as an analog input
    // as the demo board potentiometer is connected to RA0/AN0
    // Don't forget that RB0/AN12 must be digital!

    ANSEL  = 0x01; // all digital I/O tranne AN0
    ANSELH = 0x00;

    // Sets bits VCFG1 and VCFG0 in ADCON1 so the ADC voltage reference is VSS to VDD

    ADCON1 = 0;

    // set clock to fosc/32 (16Mhz/32=500KHz TAD=2us) Select channel 0 (AN0) and turn on ADC
    ADCON0 = 0b10000001;
}

unsigned char ADC_Convert(void)
{ // start an ADC conversion and return the 8 most-significant bits of the result
    GODONE = 1;             // start conversion
    while (GODONE == 1);    // wait for it to complete
    return ADRESH;                      // return high byte of result
}


/*
void InitSmagTimeTable(unsigned char Value[])
{
  //AuH = 1234; // Ampere secondario per uH secondario
  //Volt = index * PICalim/255*(partitore Resistivo) = 3.3/255*100 = 
  // Value[index]=AuH /(Volt) +15us (10 for charge, 10 reserve)
  int index;
  
  for(index=0;index<=255;index++)
    Value[index]=(unsigned char)( 1301.1/(1.294*index) )+ 15;
    
  for(index=0;index<=7;index++)
    Value[index] = 140;
  
}
*/
