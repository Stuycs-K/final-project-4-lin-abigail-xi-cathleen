Menu menu;
Game play;
Avatar av;
Button button;
Clothing[] clothes;
boolean press = false;
int numClothes = 16;
int currTab = 0;

void setup(){
  size(1200,900);
  menu = new Menu();
  play = new Game();
  av = new Avatar();
  button = menu.getButton();
  clothes = menu.getCloset(); // grabs the closet from menu
  setClothes();
}

//void keyPressed(){
//  press = true;
//  setClothes();
//}

//void keyReleased(){
//  press = false;
//}

void draw(){
  //println(frameRate);
   background(255);
   menu.drawMenu();
   drawTab();
   av.display();
   displayClothes();

  
   //textSize(50);
   //fill(0);
   //stroke(0);
   //text("MouseX: "+mouseX,20,100);
   //text("MouseY: "+mouseY,20,150);
   //println("MouseX: "+mouseX+"MouseY: "+mouseY);
   

}

void mouseReleased(){
  for (int i = 0; i < numClothes; i++){
    if (mouseX > width*0.6 && clothes[i].clicked){
      clothes[i].snapOn();
      av.addPoints(clothes[i].getPoints()); // points
    }
    else if (clothes[i].clicked) {
      clothes[i].snapBack();
      av.removePoints(clothes[i].getPoints());
    }
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
  //println(idx);
  if (idx != -1){
    Clothing last = clothes[idx];
    for (int i = idx+1; i < numClothes; i++){
      clothes[i-1] = clothes[i];
    }
    clothes[numClothes-1] = last;
  }
  /*
  if(overNewRound()){
    play.newRound();
  }
  */
  if (button.overHair()){
    undisplayClothes();
    currTab = 0;
    //println("pressed on Hair");
  }
  else if(button.overFace()){
    undisplayClothes();
    currTab = 1;
  }
  else if (button.overTop()){
    undisplayClothes();
    currTab = 2;
  }
  else if(button.overPant()){
    undisplayClothes();
    currTab = 3;
    //println("pressed on Pant");
  }
  else if(button.overShoes()){
    undisplayClothes();
    currTab = 4;
  }
  else if(button.overAccessories()){
    undisplayClothes();
    currTab = 5;
  }
}

void drawTab(){
  // switch tabs with currTab like menu.switchTabs(currTab,width);
  fill(255);
  stroke(0);
  rect(0,0,width/3, height, 28);
  //if (overNewRound()){
  //  play.newRound();
  //}
 // menu.switchTabs(currTab,width);
  
}

void displayClothes(){
  for (int i = 0; i < numClothes; i++){
      if (currTab == clothes[i].getType() || clothes[i].isOn()){
          clothes[i].setMoveable();
          clothes[i].display();
          //println(clothes[i].getFile());
       }
  }
}

void undisplayClothes(){
  for (int i = 0; i < numClothes; i++){
       if (currTab == clothes[i].getType()){
          clothes[i].setMoveable();
          //println(clothes[i].getFile());
       }
  }
}

void setClothes(){ // very important type is in order!!!     
        int pos = 0;
        int t = 0;
        for (int i = 0; i < numClothes; i++){
           if (t == clothes[i].getType()){
              clothes[i].setPosition(pos);
              clothes[i].setY(pos*200);
              pos++;
           }
           else {
             t++;
             pos = 0;
             i--;
           }
        }
}
