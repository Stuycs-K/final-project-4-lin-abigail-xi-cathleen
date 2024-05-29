import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
Menu menu;
Game play;
Scanner Closet;
boolean NewRoundover;
void setup(){
  size(1200,1200);
  menu = new Menu();
  play = new Game();
}

void draw(){
    update(mouseX, mouseY);
   menu.TopsTab();
}

void update(int x, int y){
  if (overNewRound(x,y)){
    NewRoundover = true;
  }
  else{
    NewRoundover = false;
  }
}

void mousePressed(){
  if (NewRoundover){
    play.newRound();
  }
}

boolean overNewRound (int x, int y ){
return (mouseX >= x && mouseX <= x+300 && 
      mouseY >= y && mouseY <= y+100);
}  
