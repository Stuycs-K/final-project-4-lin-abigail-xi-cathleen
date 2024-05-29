import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
Menu menu;
Scanner Closet;
float x, y;
float w, h;
boolean hold = false;

void setup(){
  size(1200,1200);
  menu = new Menu();
  x = 250;
  y = 250;
  w = 100;
  h = 80;
}

void draw(){
   background(0); // can be changed later
   if (mousePressed) {
     if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
       float dx = mouseX - pmouseX;
       float dy = mouseY - pmouseY;
       x += dx;
       y += dy;
     }
   }
   rect(x,y,w,h);
   // niki base: https://drive.google.com/drive/folders/1zZlChNqabhd1GIfUX0fB_Hpyzfxh8_n4
   //menu.TopsTab(); // 92BarbieShirt.png 82WhiteHoodie.png
   //menu.HairTab(); // https://lovenikki.fandom.com/wiki/Hairs
   //menu.FaceTab();
   //rectMode(CORNER);
   //menu.PantTab();
   //menu.ShoeTab();
   //menu.AccessoriesTab(); // 55Ukelele.png
}

class 
