//Michael Lecolant
//If the "r" key is pressed, the color of the triangle changes to red. 

int value = 5;

float r= 10;
float g= 10;
float b= 255;


void setup(){
  size(600,600);
  rectMode(CENTER);
}

void draw(){
  background(r, g, b);
  if(mouseX > width/2){
    fill(0, 255, 0);
    triangle(100, 100, 300, 100, 200, 300);
  } 
  else if (mouseY > height/2){
    fill(0);
    rect(width/2, height/2, 100, 100);
  }
  else{
    fill(255);
    rect(width/2, height/2, 100, 100);
  }
} 

void mousePressed(){
r= random(150);
g= random(50,100);
b= random(200,255);
}

void keyPressed(){
if (key == 'r') {
    value = 255;
  } else {
    value = 0;
  }
}
