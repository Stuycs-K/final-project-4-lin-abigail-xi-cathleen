Menu menu;
Avatar av;
Button button;
Clothing[] clothes;
Timer timer;
boolean press = false;
int numClothes = 16;
int currTab = 0;
int currentTime;
String timerText;
PImage background;
PImage clothBack;

void setup(){
  size(1200,900);
  menu = new Menu();
  av = new Avatar();
  button = menu.getButton();
  clothes = menu.getCloset(); // grabs the closet from menu
  setClothes();
  timer = new Timer(1000);
  currentTime = 60; //amt of seconds for game
  background = loadImage("room.jpg");
  clothBack = loadImage("clouds.jpg");
  background.resize((int)(background.width*1.55),(int)(background.height*1.55));

}

void draw(){
  //println(frameRate);
 
  if(timer.complete()){
    currentTime --;
    timer.start();
  }
  
    image(background,350,-200);
    image(clothBack,-175,0);
   
   menu.drawMenu();
   av.display();
   displayClothes();
   
  // displaying timer

  fill(0);
  textSize(48);
  timerText = "Time: " + currentTime + " seconds";
  text(timerText, width/2, height/2);

   if(currentTime < 0){
    av.endGame();
  }
  
   av.calculateRating();
   //println(av.getPoints());
   //println("Rating: "+av.getRating());

  
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
      if (!clothes[i].isOn() && clothes[i].onTheme()){
        av.addPoints(); // points
      }
      clothes[i].snapOn();
    }
    else if (clothes[i].clicked) {
      if (clothes[i].isOn() && clothes[i].onTheme()){
        av.removePoints();
      }
      clothes[i].snapBack();
    }
    clothes[i].clicked = false;
  }
}

void mouseDragged(){
  //println("dragged");
  for (int i = 0; i < numClothes; i++){
    clothes[i].update();
  }
}

void mousePressed(){
  //println("pressed");
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
    currTab = 0;
  }
  else if(button.overFace()){
    currTab = 1;
  }
  else if (button.overTop()){
    currTab = 2;
  }
  else if(button.overPant()){
    currTab = 3;
  }
  else if(button.overShoes()){
    currTab = 4;
  }
  else if(button.overAccessories()){
    currTab = 5;
  }
  else if (button.overReset()){
    for (int i = 0; i < numClothes; i++){
      clothes[i].snapBack();
    }
    av.resetPoints();
    // put all of the clothes back, reset points
  }
}

void displayClothes(){
  for (int i = 0; i < numClothes; i++){
      if (currTab == clothes[i].getType() || clothes[i].isOn()){
          //println(clothes[i].getFile());
          clothes[i].setMoveable();
          clothes[i].display();
       }
       else {
         clothes[i].setUnmoveable();
       }
  }
}

void setClothes(){ // very important type is in order in clothingFiles!!!     
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
// resizing when you click, print theme, better asthethics (at the end), organize the menu, 
