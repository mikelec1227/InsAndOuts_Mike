/* Mike Lecolant
Home Alarm System
The sensor inside the box can sense movement up to 200 centimeters. Once movement is
detected, the piezo buzzer and light strip will go off, detering any would be intruder
from entering your home
Can also be used for a fun greeting in the doorway for non intruders
 */


#include <NewPing.h> //Libraries I had to download because the code initially didnt work. 
#include <NewTone.h> 
 

#define RED_PIN    5
#define GREEN_PIN   6
#define BLUE_PIN  4
 
#define TRIGGER_PIN  10  
#define ECHO_PIN     11
#define MAX_DISTANCE 200 //Distance in centimeters for the sensor
 
NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE);
boolean triggered = false;
 
 
#define ALARM 3
float sinVal;
int toneVal;
 
void setup(){
   
 //set pinModes for RGB strip
   pinMode(RED_PIN,OUTPUT);
   pinMode(BLUE_PIN,OUTPUT);
   pinMode(GREEN_PIN,OUTPUT);
   
   pinMode(ALARM, OUTPUT);
 
   //reset lights
   analogWrite(RED_PIN,0);
   analogWrite(BLUE_PIN,0);
   analogWrite(RED_PIN,0);
 
  delay(5000);
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
   color(255,0,0); //red
   delay(100);
   color(255,255,0); //yelow
   delay(100);
   
   for (int x=0; x<180; x++) {
    sinVal = (sin(x*(3.1412/180)));
    toneVal = 2000+(int(sinVal*1000));
    NewTone(ALARM, toneVal);
  }
}
 
void color (unsigned char red, unsigned char green, unsigned char blue)
{    
    analogWrite(RED_PIN, red);    
    analogWrite(BLUE_PIN, blue);
    analogWrite(GREEN_PIN, green);
}
