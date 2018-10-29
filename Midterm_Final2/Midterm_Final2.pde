/* 
Mike Lecolant
Midterm Project
MTEC Asylum
Find your way out of the haunted asylum but beware of the ghosts that roam its halls. 
*/


//Images
PImage Asylum;
PImage LeftPath1;
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
  size(850,850);
  textAlign(CENTER);
  textSize(55);
  fill(150,60,60);
  imageMode(CENTER);
  
  //Image Load
  Asylum= loadImage("Asylum.png");
  LeftPath1= loadImage("ghostnurse.png");
  RightPath= loadImage("RightPath.png");
  Straight= loadImage("Straight.png");
  Basement= loadImage("Basement.png");
  LeftPath2= loadImage("doctorghost.png");
  RightPath2= loadImage("RightPath2.5.png");
  Straight2= loadImage("Straight2.png");
  Basement2= loadImage("Basement2.png");
  WinScreen= loadImage("WinScreen.png");
  YouDiedScreen= loadImage("YouDiedScreen.png");
}


void draw(){
  if(state=="MTEC Asylum"){
  fill(250,0,0);
  imageMode(CENTER);
  image(Asylum, 425, 425, 850, 850);
  textSize(100);
  text("MTEC Asylum",width/2,height/2);
  fill(250,0,0);
  
}

else if(state=="escape"){
    fill(250,0,0);
    imageMode(CENTER);
    image(Asylum, 425, 425, 850, 850);
    textSize(45);
    text("Escape the infamous MTEC Asylum!!!", width/2,height/2);
    fill(255,0,0);
 }
    
  else if(state=="choosepath"){
    fill(250,0,0);
    imageMode(CENTER);
    image(Asylum, 425, 425, 850, 850);
    textSize(25);
    text("Take the Door on the Left. Press L",width/2,150);
    text("Take the Door on the Right. Press R",width/2,270); 
    text("Take the Path Straight down the Hallway. Press S",width/2,360);
    text("Take the Stairs down to the basement. Press B.", width/2, 480);
    fill(255,0,0);
  }
    
 //Left Path Storyline
 else if(state=="left"){
    fill(250,0,0);
    imageMode(CENTER);
    image(LeftPath1, 425, 425, 850, 850);
    textSize(25);
    text("A ghostly nurse beckons you to join her in the afterlife!!",height/2,width/2);
    textSize(25);
    fill(255,0,0);
  }
  else if(state=="left2"){
    fill(250,0,0);
    imageMode(CENTER);
    image(LeftPath2, 425, 425, 850, 850);
    textSize(20);
    text("You escaped the ghost nurse but another spectre, awaits you: The phantom doctor!!!",height/2,width/2);
    textSize(25);
    fill(255,0,0);
  }
  
  
  //Right Path Storyline
  else if(state=="right"){
    fill(250,0,0);
    imageMode(CENTER);
    image(RightPath, 425, 425, 850, 850);
    textSize(25);
    text("The Ghost of a notorious serial killer, The Strangler, has attacked you.", width/2,height/2);
    fill(255,0,0);
  }
  else if (state=="right2"){
    fill(250,0,0);
    imageMode(CENTER);
    image(RightPath2, 425, 425, 850, 850);
    textSize(15);
    text("The Strangler stabbed you and you make your way down the hallway bleeding and screaming for help.", width/2,height/2);
    fill(255,0,0);
  }
  
  
 //Straight Path Storyline
 else if(state=="straight"){
 fill(250,0,0);
 imageMode(CENTER);
 image(Straight, 425, 425, 850, 850);
 textSize(25);
 text("You head down the Straight path but the floor caves in!!!",height/2,width/2);
 textSize(25);
 fill(255,0,0);
  }
 
  else if (state=="straight2"){
  fill(250,0,0);
 imageMode(CENTER);
 image(Straight2, 425, 425, 850, 850);
 textSize(17);
 text("The ghosts of two young girls have appeared. They want you to play with them. ",height/2,width/2);
 textSize(25);
 fill(255,0,0);
  }
  
 //Basement Path Storyline
 else if(state=="basement"){
 fill(250,0,0);
 imageMode(CENTER);
 image(Basement, 425, 425, 850, 850);
 textSize(20);
 text("You find the remains of several dead people. What happened here?",height/2,width/2);
 textSize(25);
 fill(255,0,0);
  }
 
  else if (state=="basement2"){
  fill(250,0,0);
 imageMode(CENTER);
 image(Basement2, 425, 425, 850, 850);
 textSize(20);
 text("You are attacked by some kind of half human, half pig creature!!",height/2,width/2);
 textSize(25);
 fill(255,0,0);
  }
 
 else if(state=="dead"){
    fill(250,0,0);
    imageMode(CENTER);
    image(YouDiedScreen, 425, 425, 850, 850);
 }
 
 else if (state=="win"){
   fill(250,0,0);
   imageMode(CENTER);
   image(WinScreen, 425, 425, 850, 850);
   textSize(25);
   text("Congratulations. You escaped the Asylum with your life!!", width/2,height/2);
   fill(255,0,0);
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
    else if(state=="dead"){
      state="MTEC Asylum";
    }
 
}
