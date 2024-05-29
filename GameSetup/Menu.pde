import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
public class Menu{
  Scanner Closet; // to be deleted
  Game game;
  Clothing[] closet;
 
  public Menu(){
    game = new Game();
    closet = game.getCloset();
  }
 
  public void createBox(String filename, int x, int y){
    PImage item;
    item = loadImage(filename);
    rect(120 + x, 80 + y, 220, 220, 28);
    image(item,120 + x,80 + y,220,220);    
  } //creates box with clothes image inside of it
 
  public void TopsTab(){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 2){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
       }
    }
  }    // each tab is called from a button in GameSetup
  public void AccessoriesTab(){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 5){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
       }
    }
  }
  public void HairTab(){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 0){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
       }
    }
  }
  public void PantTab(){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 3){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
       }
    }
  }
  public void FaceTab(){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 1){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
       }
    }
  }
  public void ShoeTab(){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.length; i++){
      Clothing c = closet[i];
       if (c.getType() == 4){
          createBox(c.getFile(), xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
       }
    }
  }
}
