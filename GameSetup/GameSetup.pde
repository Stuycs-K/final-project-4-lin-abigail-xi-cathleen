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
}

boolean overNewRound (){
return (mouseX >= 600 && mouseX <= 900 && 
      mouseY >= 900 && mouseY <= 1000);
} 

boolean overTops(){
  return (mouseX >= 100 && mouseX <= 350 && 
      mouseY >= 600 && mouseY <= 700);
}

boolean overBottoms(){
  return (mouseX >= 400 && mouseX <= 650 && 
      mouseY >= 600 && mouseY <= 700);

}
