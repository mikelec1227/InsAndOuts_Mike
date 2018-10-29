/* 
Mike Lecolant
Midterm Project
MTEC Asylum
Find your way out of the haunted asylum but beware of the ghosts that roam its halls. 
*/


//Images
PImage Asylum;
PImage LeftPath;
PImage RightPath;
PImage Straight;
PImage Basement;
PImage LeftPath2;
PImage RightPath2;
PImage Straight2;
PImage Basement2;
PImage WinScreen;
PImage YouDiedScreen;

String state="MTEC Asylum";

void setup(){
  size(950,950);
  textAlign(CENTER);
  textSize(55);
  fill(150,60,60);
  imageMode(CENTER);
  
  //Image Load
  Asylum= loadImage("Asylum.png");
  LeftPath= loadImage("LefPath.png");
  RightPath= loadImage("RightPath.png");
  Straight= loadImage("Straight.png");
  Basement= loadImage("Basement.png");
  LeftPath2= loadImage("LeftPath2.png");
  RightPath2= loadImage("RightPath2.png");
  Straight2= loadImage("Straight2.png");
  Basement2= loadImage("Basement2.png");
  WinScreen= loadImage("WinScreen.png");
  YouDiedScreen= loadImage("YouDiedScreen.png");
}


void draw(){
  background(Asylum);
  if(state=="MTEC Asylum"){
  fill(0);
  text("MTEC Asylum",width/2,height/2);
  fill(250,0,0);
}

else if(state=="escape"){
    background(Asylum);
    fill(0);
    text("You have been trapped in the infamous, haunted, macabre MTEC Asylum. Figure out a way to escape or else you will join the ghosts that haunt its walls and be trapped here for all eternity.", width/2,height/2);
    textAlign(CENTER);
    fill(50);
    textSize(15);
 }
    
  else if(state=="choosepath"){
    background(150,0,0);
    fill(0);
    textSize(13);
    text("The Door on the Left leads to a hallway filled with operating rooms. Do you dare go this way? Press R to take the right passageway",width/2,150);
    text("The Door on the Right leads to a dark hallway but may be a way out. Press L to take the left passageway",width/2,270); 
    text("The Path Straight may lead to a way out. Press S to go straight.",width/2,360);
    text("Take the Stairs down to the basement. Press B for basement.", width/2, 480);
    fill(0);
  }
    
 //Left Path Storyline
 else if(state=="left"){
   text("A ghostly nurse beckons you to join her in the afterlife!!",height/2,width/2);
   textSize(20);
   fill(255);
   background(LeftPath);
  }
  else if(state=="left2"){
    text("You escaped the ghost nurse but another spectre, awaits you: The phantom doctor!!!", height/2,width/2);
    textSize(20);
    fill(255);
    background(LeftPath2);
  }
  
  
  //Right Path Storyline
  else if(state=="right"){
  text("The Ghost of a notorious serial killer, The Strangler, has attacked you.", height/2, width/2);
  textSize(20);
  fill(255);
  background (RightPath);
  }
  else if (state=="right2"){
  text("The Strangler stabbed you and you make your way down the hallway bleeding and screaming for help.", height/2, width/2);
  textSize(20);
  fill(255);
  background (RightPath);
  }
  
  
 //Straight Path Storyline
 else if(state=="straight"){
  text("You make your way down the straight path but suddenly the floor caves in sending you crashing down to the level below!!", height/2, width/2);
  textSize(20);
  fill(255);
  background (Straight);
  }
  else if (state=="straight2"){
  text("The ghosts of two young girls have appeared. They want you to play with them. ", height/2, width/2);
  textSize(20);
  fill(255);
  background (Straight2);
  }
  
 //Basement Path Storyline
 else if(state=="basement"){
  text("Down in the basement you see the half eaten remains of several people. There is something in the basement with you.", height/2, width/2);
  textSize(20);
  fill(255);
  background (Basement);
  }
  else if (state=="basement2"){
  text("You are attacked by some kind of half human, half pig creature. Prepare to be its next meal.", height/2, width/2);
  textSize(20);
  fill(255);
  background (Basement2);
  }
 
 else if(state=="dead"){
   background (YouDiedScreen);
 }
 
 else if (state=="win"){
 text("Congratulations. You escaped the Asylum with your life!!", height/2, width/2);
   textAlign(CENTER);
   fill(255);
   background (WinScreen);
 }
}


void keyPressed(){
  if(key=='l'){
    state="left";}
 else if(key=='r'){
    state="right";}
 else if(key=='s'){
    state="straight";}
 else if(key=='b'){
    state="basement";}  
}

void mousePressed(){
    if(state=="MTEC Asylum"){
      state="escape";
    }
    
    else if(state=="escape"){
      state="choosepath";
    }
    else if(state=="left"){
       state="left2";
    }
    else if(state=="left2"){
        state="win";
    }
    else if(state=="right"){
      state="right2";
    }
    else if(state=="right2"){
      state="dead";
    }
    else if(state=="straight"){
      state="straight2";
    }
    else if(state=="straight2"){
      state="dead";
    }
    else if(state=="basement"){
       state="basement2";
    }
    else if(state=="basement2"){
      state="dead";
    }
    else if(state=="win"){
        state="MTEC Asylum";
    }
 
}
