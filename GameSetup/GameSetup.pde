import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
Menu menu;
Game play;
Scanner Closet;
//boolean NewRoundover;
void setup(){
  size(1200,1200);
  menu = new Menu();
  play = new Game();
}

void draw(){
    //update(mouseX, mouseY);
   menu.TopsTab();
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
  if (overNewRound()){
    play.newRound();
  }
}

boolean overNewRound (){
return (mouseX >= 600 && mouseX <= 900 && 
      mouseY >= 900 && mouseY <= 1000);
}  
