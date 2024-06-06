public class Menu{
  Game game;
  Clothing[] closet;
  Button button;
  
  public Menu(){
    game = new Game();
    closet = game.getCloset();
  }
  
   public Clothing[] getCloset(){
        return closet;
    }
    
    public Button getButton(){
      return button;
    }
    
   public void drawMenu(){
   fill(105);
   rect(0, 0, width/3, height, 28);
    int vertSpace = 0;
   for(int i = 0; i < 6; i++){
      fill(255);
      rect(width/3,0 + vertSpace, 100, (height/6)-20,20); 
   
    if(i == 0){
      if (button.overHair()){
      fill(204);
      rect(width/3,height/6, 100, (height/6)-20,20);
    }
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
      textSize(40);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Pants", 0,100);
    popMatrix();
    }
     if(i == 4){
      pushMatrix();
      textSize(40);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Shoe", 0,100);
    popMatrix();
    }
     if(i == 5){
      pushMatrix();
      textSize(20);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Accessories", 0,100);
    popMatrix();
    }

       vertSpace += (height/6);
    }
   }

}
