/* 
Mike Lecolant
Midterm Project

MTEC Asylum

Find your way out of the haunted asylum but beware of the ghosts that roam its halls. 
*/

PImage Asylum;
PImage Ghost1;
PImage Ghost2;
PImage Ghost3;
PImage Ghost4;
PImage Ghost5;
PImage Ghost6;
PImage WinScreen;

String state="MTEC Asylum";

void setup(){
  size(950,950);
  textAlign(CENTER);
  textSize(55);
  fill(150,60,60);
  imageMode(CENTER);
  Asylum= loadImage("Asylum.png");
  Ghost1= loadImage("Ghost1.png");
  Ghost2= loadImage("Ghost2.png");
  Ghost3= loadImage("Ghost3.png");
  Ghost4= loadImage("Ghost4.png");
  Ghost5= loadImage("Ghost5.png");
  Ghost6= loadImage("Ghost6.png");
  WinScreen= loadImage("WayOut.png");
  
  
}

void draw(){
  background(250,0,0);
  if(state=="MTEC Asylum"){
  fill(0);
  text("MTEC Asylum",width/2,height/2);
  fill(250,0,0);
}
  
 else if(state=="escape"){
    background(250);
    fill(0);
    String s= "You have been trapped in the infamous, haunted, macabre MTEC Asylum. Figure out a way to escape or else you will join the ghosts that haunt its walls and be trapped here for all eternity.";
    text(s, 375,375, width/2, height/2);
    textAlign(CENTER);
    fill(50);
    textSize(15);
 }
    
  else if(state=="escape2"){
    background(150,0,0);
    fill(0);
    textSize(13);
    text("The Door on the Left leads to a dark hallway but may be a way out. Press L to take the left passageway",width/2,150);
    text("The Door on the Right leads to a hallway filled with operating rooms. Do you dare go this way? Press R to take the right passageway",width/2,270); 
    text("The Path Straight may lead to a way out. Press S to go straight.",width/2,360);
    text("Take the Stairs down to the basement. Press B for basement.", width/2, 480);
    fill(0);
    
  }
}


void mousePressed(){
    if(state=="MTEC Asylum"){
      state="escape";}
    else if(state=="escape"){
      state="escape2";}
  }
  
void keyPressed(){
  if(key=='l'){
    state="A ghostly nurse beckons you to join her in the afterlife!!";
    background(150,60,60);
    Ghost1= loadImage("Ghost1.png");
  }
 else if(key=='r'){
    state="You got out successfully. Congratulations!";
    background(150,60,60);
    WinScreen= loadImage("WayOut.png");
  }
 else if(key=='s'){
    state="Oh no the ghost of the head doctor of the Asylum has attacked you!!!";
    background(150,60,60);
    Ghost2= loadImage("Ghost2.png");
  }
 else if(key=='b'){
    state="The Ghost of a notorious serial killer, The Strangler, has killed you.";
    background(150,60,60);
    Ghost3= loadImage("Ghost3.png");
  }
  
}
