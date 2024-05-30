import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
Menu menu;
Scanner Closet;

Clothing[] clothes;
int numClothes = 10;

void setup(){
  size(1200,1200);
  menu = new Menu();
  
  clothes = menu.getCloset();
  //for (int i = 0; i < clothes.length; i++){
  //  println(clothes[i].getFile());
  //}
}

void draw(){
   background(123); // can be changed later
   for (int i = 0; i < numClothes; i++){
     clothes[i].display();
   }
   // niki base: https://drive.google.com/drive/folders/1zZlChNqabhd1GIfUX0fB_Hpyzfxh8_n4
   //menu.TopsTab(); // 92BarbieShirt.png 82WhiteHoodie.png
   //menu.HairTab(); // https://lovenikki.fandom.com/wiki/Hairs
   //menu.FaceTab();
   //rectMode(CORNER);
   //menu.PantTab();
   //menu.ShoeTab();
   //menu.AccessoriesTab(); // 55Ukelele.png
}

// test

void mouseReleased(){
  for (int i = 0; i < numClothes; i++){
    clothes[i].clicked = false;
  }
}

void mouseDragged(){
  for (int i = 0; i < numClothes; i++){
    clothes[i].update();
  }
}

void mousePressed(){
  int idx = -1;
  for (int i = numClothes-1; i >= 0; i--){
    clothes[i].checkClicked(mouseX,mouseY);
    if (clothes[i].clicked){
      idx = i;
      break;
    }
  }
  if (idx != -1){
    Clothing last = clothes[idx];
    for (int i = idx+1; i < numClothes; i++){
      clothes[i-1] = clothes[i];
    }
    clothes[numClothes-1] = last;
  }
}

//class Cloth{
//  float x,y;
//  float w,h;
//  boolean hold;
  
//  Cloth(float _x, float _y, float _w, float _h){
//    x = _x;
//    y = _y;
//    w = _w;
//    h = _h;
//    hold = false;
//  }
  
//  void checkClicked(float cx, float cy){
//    if (cx > x && cx < x+w && cy > y && cy < y+h){
//      hold = true;
//    }
//    else {
//      hold = false;
//    }
//  }
  
//  void update(){
//     float dx = mouseX - pmouseX;
//     float dy = mouseY - pmouseY;
//     x += dx;
//     y += dy;
//  }
  
//  void display(){
//    // CHANGE
//    rect(x,y,w,h);
//  }
//}
