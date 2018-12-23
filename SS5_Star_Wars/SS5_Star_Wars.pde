/* Mike Lecolant
Short Study 5 - Star Wars
*/

PImage NewHope;
PImage Empire;
PImage Return;

void setup(){
  size(600,600);
  textAlign(CENTER);
  textSize(55);
   fill(150,60,60);
  imageMode(CENTER);
  NewHope= loadImage("NewHope.png");
  Empire= loadImage("Empire.png");
  Return= loadImage("Return.png");
}

void draw() {
  background(250,0,0);
  fill(0);
  textSize(25);
  text("The Star Wars Saga",width/2,150);
  fill(250,0,0);

if (mousePressed){
  NewHope= loadImage("NewHope.png");
  imageMode(CENTER);
  image (NewHope, width/2,height/2,600,600);
  textSize(25);
  text("Episode IV: A New Hope", width/2,150);
}
else if(keyPressed){
  Empire= loadImage("Empire.png");
  image (Empire, width/2,height/2,600,600);
  textSize(25);
  text("Episode V: The Empire Strikes Back", width/2,150);
}
else if(keyPressed){
  Return= loadImage("Return.png");
  image (Return, width/2,height/2,600,600);
  textSize(25);
  text("Episode VI: The Empire Strikes Back", width/2,150);
}
}
