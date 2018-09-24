/*
Mike Lecolant
Sunny day/ night time
mousePressed will change the background from blue (daytime) to black (nightime). 
The key to press is "d"
keyPressed will change the color of the ellipse from yellow to white which is
sun to moon.
*/



void setup(){
  
size(1080,720);
background(0,100,250);
}

void draw(){
 if(mousePressed == true){
   fill(255);
 } else {
   fill(0,100,250);
 }
  
  if(keyPressed==true){
    fill(255);
  }
  else {
    fill(1500,200,0);
  }
   ellipse(400, 400, 200, 200);
  fill(1500,200,0);
}
