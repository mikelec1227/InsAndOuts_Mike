//Michael Lecolant

void setup(){
  
size(1080,720);
background(0,0,205);
rectMode(CENTER);
}

void draw(){
  
  rect(400,400,400,400);
  fill(250,0,0);
 
  ellipse(400, 400, 200, 200);
  fill(250,250,0);
  
  triangle(100, 100, 300, 100, 200, 300);
  fill(50,150,200);
  
  
  strokeWeight(25);
}
