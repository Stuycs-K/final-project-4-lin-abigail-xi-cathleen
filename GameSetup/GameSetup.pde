Menu menu;
Game play;
Avatar av;
Scanner Closet;
Clothing[] clothes;
int numClothes = 4;
int old = 0;

void setup(){
  size(1200,900);
  menu = new Menu(width,height);
  play = new Game(width,height);
  av = new Avatar();
  clothes = menu.getCloset(); // grabs the closet from menu
}

void draw(){
   //background(123);
   av.display();
   //for (int i = 0; i < numClothes; i++){
   //  clothes[i].display();
   //}
   //textSize(50);
   //fill(0);
   //stroke(0);
   //text("MouseX: "+mouseX,20,100);
   //text("MouseY: "+mouseY,20,150);
   //println("MouseX: "+mouseX+"MouseY: "+mouseY);
}

void mouseReleased(){
  for (int i = 0; i < numClothes; i++){
    if (mouseX > width*0.6 && clothes[i].clicked == true){
      clothes[i].snapOn();
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
  if (idx != -1){
    Clothing last = clothes[idx];
    for (int i = idx+1; i < numClothes; i++){
      clothes[i-1] = clothes[i];
    }
    clothes[numClothes-1] = last;
  }
  
       // cathleens code to merge
  fill (255);
  rect(0,0,width/3, height, 28);
  if (overNewRound()){
    play.newRound();
  }
  else if (overHair()){
    old = 0;
  }
  else if(overFace()){
    old = 1;
  }
  else if (overTop()){
    old = 2;
  }
  else if(overPant()){
    old = 3;
  }
  else if(overShoes()){
    old = 4;
  }
  else if(overAccessories()){
    old = 5;
  }
    // switch tabs with old like menu.switchTabs(old,width);
  menu.switchTabs(old,width);
  println(old);
}

boolean overNewRound (){
return false;
/*
(mouseX >= 600 && mouseX <= 900 && 
      mouseY >= 600 && mouseY <= 900);
      */
} 

boolean overHair(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 0 && mouseY <= height/6-20);
}
boolean overFace(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= height/6 && mouseY <= 2*height/6-20);
}
boolean overTop(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 2*height/6 && mouseY <= 3*height/6-20);
}
boolean overPant(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 3*height/6 && mouseY <= 4*height/6-20);
}
boolean overShoes(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 4*height/6 && mouseY <= 5*height/6-20);
}
boolean overAccessories(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 5*height/6 && mouseY <= 6*height/6-20);
}
