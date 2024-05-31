import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
Menu menu;
Game play;
Scanner Closet;
//boolean NewRoundover;
void setup(){
  size(1600,900);
  menu = new Menu(width,height);
  play = new Game(width, height);
}

void draw(){
    //update(mouseX, mouseY);
   //menu.TopsTab();
}

/*
void update(int x, int y){
  if (overNewRound()){
    NewRoundover = true;
  }
  else{
    NewRoundover = false;
  }
}
*/
void mousePressed(){
  fill(255);
  rect(0,0,width/3, height, 28);
  if (overNewRound()){
    play.newRound();
  }
  if (overTops()){
    menu.TopsTab(width);
  }
  if(overBottoms()){
    menu.PantTab(width);
  }
  if(overFace()){
    menu.FaceTab(width);
  }
   if (overHair()){
    menu.HairTab(width);
  }
  /*
  if(overAccessories()){
    menu.AccessoriesTab(width);
  }
  */
  if(overShoes()){
    menu.ShoeTab(width);
  }
}


boolean overNewRound (){
return false;
/*
(mouseX >= 600 && mouseX <= 900 && 
      mouseY >= 600 && mouseY <= 900);
      */
} 

boolean overTops(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 0 && mouseY <= height/6-20);
}
boolean overBottoms(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= height/6 && mouseY <= 2*height/6-20);
}
boolean overFace(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= height/6 && mouseY <= 3*height/6-20);
}
boolean overHair(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= height/6 && mouseY <= 4*height/6-20);
}
boolean overAccessories(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= height/6 && mouseY <= 5*height/6-20);
}
boolean overShoes(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= height/6 && mouseY <= 6*height/6-20);
}
