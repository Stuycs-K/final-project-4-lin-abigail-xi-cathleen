import java.io.*;
import java.util.*;
Menu menu;
Avatar av;
Button button;
Clothing[][] clothes;
Timer timer;
boolean press = false;
int numClothes = 28;
int currTab = 0;
int currentTime;
String timerText;
PImage background;
PImage clothBack;
int menuMode;

void setup(){
  size(1200,900);
  menu = new Menu();
  av = new Avatar();
  button = menu.getButton();
  clothes = menu.getCloset();
  //println(Arrays.toString(clothes[1]));
  setClothes();
  timer = new Timer(1000);
  currentTime = 60; //amt of seconds for game
  background = loadImage("room.jpg");
  clothBack = loadImage("clouds.jpg");
  background.resize((int)(background.width*1.55),(int)(background.height*1.55));
  menuMode = 1;
}

void draw(){
  //println(frameRate);
 
  if(timer.complete()){
    currentTime --;
    timer.start();
  }
  
    image(background,350,-200);
    image(clothBack,-175,0);
   
   menu.drawMenu();
   av.display();
   displayClothes();
   
  // displaying timer

  fill(0);
  textSize(40);
  timerText = "Time: " + currentTime + " seconds";
  text(timerText, 900, 40);

   if(currentTime < 0){
    av.endGame();
  }
  
   av.calculateRating();
   
}

void mouseReleased(){
  for (int i = 0; i < clothes[menuMode].length; i++){
    if (mouseX > width*0.6 && clothes[menuMode][i].clicked){
      if (!clothes[menuMode][i].isOn() && clothes[menuMode][i].onTheme()){
        av.addPoints(); // points
      }
      clothes[menuMode][i].snapOn();
    }
    else if (clothes[menuMode][i].clicked) {
      if (clothes[menuMode][i].isOn() && clothes[menuMode][i].onTheme()){
        av.removePoints();
      }
      clothes[menuMode][i].snapBack();
    }
    clothes[menuMode][i].clicked = false;
  }
}

void mouseDragged(){
  for (int i = 0; i < clothes[menuMode].length; i++){
    clothes[menuMode][i].update();
  }
}

void mousePressed(){
  int idx = -1;
  for (int i = clothes[menuMode].length-1; i >= 0; i--){
      clothes[menuMode][i].checkClicked(mouseX,mouseY);
      if (clothes[menuMode][i].clicked){
        idx = i;
        break;
      }
  }
  println("idx" + idx);
  if (idx != -1){
    Clothing last = clothes[menuMode][idx];
    for (int i = idx+1; i < clothes[menuMode].length; i++){
      clothes[menuMode][i-1] = clothes[menuMode][i];
    }
    clothes[menuMode][clothes[menuMode].length-1] = last;
  }
  if (button.overHair()){
    currTab = 0;
  }
  else if(button.overFace()){
    currTab = 1;
  }
  else if (button.overTop()){
    currTab = 2;
  }
  else if(button.overPant()){
    currTab = 3;
  }
  else if(button.overShoes()){
    currTab = 4;
  }
  else if(button.overAccessories()){
    currTab = 5;
  }
  else if (button.overReset()){
    for (int i = 0; i < clothes.length; i++){
      for(int j = 0; j < clothes[i].length; j++){
        clothes[i][j].snapBack();
      }
    }
    av.resetPoints();
    // put all of the clothes back, reset points
  }
  else if (button.overLeft()){
    if (menuMode == 1){
      menuMode = 0;
    }
  }
  else if (button.overRight()){
    if(menuMode == 0){
      menuMode = 1;
    }
  }
}

void displayClothes(){
  for (int i = 0; i < clothes.length; i++){
    for (int j = 0; j < clothes[menuMode].length; j++){
       if (currTab == clothes[menuMode][i].getType() || clothes[menuMode][i].isOn()){
          clothes[menuMode][i].setMoveable();
          clothes[menuMode][i].display();
       }
       else {
         clothes[menuMode][i].setUnmoveable();
       }
    }
  }
}

void setClothes(){ // very important type is in order in clothingFiles!!!     
        int pos = 0;
        int t = 0;
        //int slide = 1;
        for (int i = 0; i < clothes[menuMode].length; i++){
           if (t == clothes[menuMode][i].getType()){
              //if (pos == 5){
              //  pos = 0;
              //  slide++;
              //  println(clothes[menuMode][i].getFile());
              //}
              clothes[menuMode][i].setPosition(pos);
              clothes[menuMode][i].setY(pos*150);
              //clothes[menuMode][i].setSlide(slide);
              pos++;
           }
           else {
             t++;
             pos = 0;
             i--;
           }
        }
}
