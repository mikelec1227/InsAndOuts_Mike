/* Mike Lecolant
Home Alarm System
The sensor inside the box can sense movement up to 200 centimeters. Once movement is
detected, the piezo buzzer and light strip will go off, detering any would be intruder
from entering your home
Can also be used for a fun greeting in the doorway for non intruders

Pieces Used to build:
Arduino
Breadboard
USB External Power Suppl and 12v Power Adapter
RGB LED Strip Light
MOSFET Transistors
Ultrasonic Ping Sensor
Piezo Buzzer
 */


#include <NewPing.h> //Libraries I had to download because the code initially didnt work. 
#include <NewTone.h> 
 

#define RED_PIN    5
#define GREEN_PIN   6
#define BLUE_PIN  4
 
#define TRIGGER  9
#define ECHO  10
#define DISTANCE 100 //Distance in centimeters for the sensor
 
NewPing sonar(TRIGGER, ECHO, DISTANCE);
boolean triggered = false;
 
 
#define ALARM 3
float sinVal;
int toneVal;
 
void setup(){
   
 //Pins for the LED lights
   pinMode(RED_PIN,OUTPUT);
   pinMode(BLUE_PIN,OUTPUT);
   pinMode(GREEN_PIN,OUTPUT);
   
   pinMode(ALARM, OUTPUT);
 
   //Resetting the lights
   analogWrite(RED_PIN,0);
   analogWrite(BLUE_PIN,0);
   analogWrite(GREEN_PIN,0);
 
delay(50);
Serial.begin(115200);
 
 
}
 
void loop(){
    if(triggered == true){
      alarm();
    }
    else{
      delay(50);
      unsigned int uS = sonar.ping(); 
      unsigned int distance = uS / US_ROUNDTRIP_CM;
      Serial.println(distance);
      if(distance < 50){
         triggered = true;
      }
   }
}
 
void alarm(){
   color(255,0,0);
   delay(25);
   color(0,255,0);
   delay(25);
   color(0,0,255);
   delay(25);
   color(255,255,0);
   delay(25);

 
   for (int x=0; x<180; x++) {
    sinVal = (sin(x*(3.1412/180)));      
    toneVal = 2000+(int(sinVal*1000));    
    NewTone(ALARM, toneVal);   

     /*Had to do alot of research on this part because I wasnt too familiar with the codes for piezo
      buzzers. 
      */            
  }
}
 
void color (unsigned char red, unsigned char green, unsigned char blue)
{    
    analogWrite(RED_PIN, red);    
    analogWrite(BLUE_PIN, blue);
    analogWrite(GREEN_PIN, green);
}
