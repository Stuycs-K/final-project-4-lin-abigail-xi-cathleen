import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
Menu menu;
Avatar av;
Scanner Closet;

Clothing[] clothes;
int numClothes = 10;

void setup(){
  size(1200,900);
  menu = new Menu();
  av = new Avatar();
  
  clothes = menu.getCloset(); // grabs the closet from menu
  //for (int i = 0; i < clothes.length; i++){
  //  println(clothes[i].getFile());
  //}
}

void draw(){
   background(123); // displays each of the clothes
   av.display();
   for (int i = 0; i < numClothes; i++){
     clothes[i].display();
   }
}

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
