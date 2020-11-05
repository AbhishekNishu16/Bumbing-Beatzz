//Bumping beatzz
//DIGF-6037-001 Creation & Computation 
//Inspired by Nicholas Puckett example on Capinput sensor

//Clinton & Nishu


#include <Wire.h>
#include "Adafruit_MPR121.h"

 
#ifndef _BV
#define _BV(bit) (1 << (bit)) 
#endif


Adafruit_MPR121 cap = Adafruit_MPR121();


uint16_t currtouched = 0;
int tp = 12; //All 12 pins

 

void setup() 
{
  Serial.begin(9600);

  if (!cap.begin(0x5A)) {
  Serial.println("MPR121 not found, check wiring?");
  while (1);
  }
  
  Serial.println("MPR121 found!");
}

 
void loop() 
{
checkEachPin(tp);
Serial.println();
delay(100);
}

 

void checkEachPin(int totalPins) {
currtouched = cap.touched();


//Pin 0
// if touched print 1 else print 0
   if ((currtouched & _BV(0)))
    {
    Serial.print(1);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");
    

//Pin 1
// if touched print 2 else print 0
   if ((currtouched & _BV(1)))
    {
    Serial.print(2);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");

 
//Pin 2
// if touched print 3 else print 0
   if ((currtouched & _BV(2)))
    {
    Serial.print(3);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");


//Pin 3
// if touched print 4 else print 0
   if ((currtouched & _BV(3)))
    {
    Serial.print(4);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");
    

//Pin 4
// if touched print 5 else print 0
   if ((currtouched & _BV(4)))
    {
    Serial.print(5);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");
    


//Pin 5
// if touched print 6 else print 0
   if ((currtouched & _BV(5)))
    {
    Serial.print(6);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");
 

//Pin 6
// if touched print 7 else print 0
   if ((currtouched & _BV(6)))
    {
    Serial.print(7);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");


//Pin 7
// if touched print 8 else print 0
   if ((currtouched & _BV(7)))
    {
    Serial.print(8);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");


//Pin 8
// if touched print 9 else print 0
   if ((currtouched & _BV(9)))
    {
    Serial.print(9);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");


//Pin 9
// if touched print 10 else print 0
   if ((currtouched & _BV(8)))
    {
    Serial.print(10);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");


//Pin 10
// if touched print 11 else print 0
   if ((currtouched & _BV(10)))
    {
    Serial.print(11);
    }
    else
    {
    Serial.print(0);
    }
    Serial.print(",");



//Pin 11
// if touched print 12 else print 0
   if ((currtouched & _BV(11)))
    {
    Serial.print(12);
    }
    else
    {
    Serial.print(0);
    }


}
