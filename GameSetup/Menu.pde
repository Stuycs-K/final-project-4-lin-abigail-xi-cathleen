import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
public class Menu{
  Scanner Closet; // to be deleted
  Game game;
  Clothing[] closet;
 
  public Menu(int width, int height){
    game = new Game(width,height);
    closet = game.getCloset();
    
    fill(105);
    rect(0, 0, width/3, height, 28);
  }
 
  public void createBox(String filename, int x, int y){
    PImage item;
    item = loadImage(filename);
    rect(50 + x, 80 + y, 220, 220, 28);
3
  } //creates box with clothes image inside of it
 
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
