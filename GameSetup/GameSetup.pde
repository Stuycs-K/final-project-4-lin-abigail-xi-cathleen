Menu menu;
Game play;
Avatar av;
Clothing[] clothes;
int numClothes = 9;
int currTab = 0;

void setup(){
  size(1200,900);
  menu = new Menu(width,height);
  play = new Game();
  av = new Avatar();
  clothes = menu.getCloset(); // grabs the closet from menu
}

void draw(){
   background(255);
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
    if (mouseX > width*0.6 && clothes[i].clicked == true){
      clothes[i].snapOn();
      //av.addClothing(clothes[i]);
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
  /*
  if(overNewRound()){
    play.newRound();
  }
  */
  if (overHair()){
    currTab = 0;
    //println("pressed on Hair");
  }
  else if(overFace()){
    currTab = 1;
  }
  else if (overTop()){
    currTab = 2;
  }
  else if(overPant()){
    currTab = 3;
    //println("pressed on Pant");
  }
  else if(overShoes()){
    currTab = 4;
  }
  else if(overAccessories()){
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
  
  // rectangles for the menu + names, will be added soon by cathleen
  int vertSpace = 0;
   for(int i = 0; i < 6; i++){
      fill(255);
      rect(width/3,0 + vertSpace, 100, (height/6)-20,20); 
    
    if(i == 0){
       pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Hair", 0,100);
    popMatrix();
    }
     if(i == 1){
        pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Face", 0,100);
    popMatrix();
    }
     if(i == 2){
         pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Top", 0,100);
    popMatrix();
    }
     if(i == 3){
      pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Pants", 0,100);
    popMatrix();
    }
     if(i == 4){
      pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Shoe", 0,100);
    popMatrix();
    }
     if(i == 5){
      pushMatrix();
      textSize(25);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Accessories", 0,100);
    popMatrix();
    }

       vertSpace += (height/6);
    }
}

void displayClothes(){
  for (int i = 0; i < numClothes; i++){
      if (currTab == clothes[i].getType() || clothes[i].isOn()){
          clothes[i].display();
          //println(clothes[i].getFile());
       }
  }
}
/*
boolean overNewRound (){
return (mouseX >= 600 && mouseX <= 900 && 
      mouseY >= 600 && mouseY <= 900);

} 
*/

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
