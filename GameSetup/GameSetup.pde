import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
Menu menu;
Scanner Closet;
float posX = 250;
float posY = 250;
float wide = 50;
boolean hold = false;

void setup(){
  size(1200,1200);
  menu = new Menu();
  rectMode(CENTER);
}
void draw(){
   background(0); // can be changed later
   noStroke();
   fill(255);
     if(mouseX>=posX-wide/2 && mouseX<=posX+wide/2 && mouseY>=posY-wide/2 && mouseY<=posY+wide/2){
    fill(255,255,0);
    if (mousePressed==true){
      posX=mouseX;
      posY=mouseY;
    }
  }
  rect(posX,posY,wide,wide);
   //menu.TopsTab(); // 92BarbieShirt.png 82WhiteHoodie.png
   //menu.HairTab();
   //menu.FaceTab();
   //rectMode(CORNER);
   //menu.PantTab();
   //menu.ShoeTab();
   //menu.AccessoriesTab(); // 55Ukelele.png
}
