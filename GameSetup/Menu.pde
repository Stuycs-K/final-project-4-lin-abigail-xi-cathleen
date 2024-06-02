public class Menu{
  Game game;
  Clothing[] closet;
  
  public Menu(int width, int height){
    game = new Game();
    closet = game.getCloset();
    fill(105);
    rect(0, 0, width/3, height, 28);
  }
  
   public Clothing[] getCloset(){
        return closet;
    }
  
  public void createBox(String filename, int x, int y){
    PImage item;
    item = loadImage(filename);
    rect(25 + x, 40 + y, 150, 150, 28);
    image(item,25 + x,40 + y,150,150);    
  } //creates box with clothes image inside of it
  
  public void switchTabs(int i, int w){ // switches tabs based on index + width
    fill(255);
    stroke(0);
    if (i == 0){
      HairTab(w);
      println("clicked on hair tab");
    }
    if (i == 1) {
    FaceTab(w);
    println("clicked on faceTab");
    }
    if (i == 2) TopsTab(w);
    if (i == 3){
    PantTab(w);
    System.out.println("clicked on pant tab");
  }
    
    if (i == 4) ShoeTab(w);
    if (i == 5) AccessoriesTab(w);
  }
  
  public void TopsTab(int width){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 2){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace >= width/3-270){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += width/6;
          }
       }
    }
  }    // each tab is called from a button in GameSetup
  public void AccessoriesTab(int width){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 5){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > width/3-270){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += width/6;
          }
       }
    }
  }
  public void HairTab(int width){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 0){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > width/3-270){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += width/6;
          }
       }
    }
  }
  public void PantTab(int width){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 3){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > width/3-270){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += width/6;
          }
       }
    }
  }
  public void FaceTab(int width){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 1){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > width/3-270){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += width/6;
          }
       }
    }
  }
  public void ShoeTab(int width){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 4){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > width/3-270){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += width/6;
          }
       }
    }
}
}
