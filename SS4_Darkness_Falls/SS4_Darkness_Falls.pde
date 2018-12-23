/*Mike Lecolant
SS4 Darkness Falls */


void setup(){
  
size(1080,720);
background(255);
rectMode(CENTER);
}

void draw(){
  background(0);
  rect(400,400,400,400);
  fill(250,0,0);  
  strokeWeight(25);
  
  if (mousePressed){
    ellipseMode(CENTER);
    fill(255);
    ellipse(50, 50, 30, 30);
  }
  
  else if(keyPressed){
    triangle(0, 75, 58, 20, 86, 75);
    fill (255);
  }
}
