import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
public class Menu{
  Scanner Closet; // to be deleted
  Game game = new Game();
  ArrayList<Clothing> closet = game.getCloset();
  
  public void createBox(String filename, int x, int y){
    PImage item;
    item = loadImage(filename);
    rect(120 + x, 80 + y, 220, 220, 28);
    image(item,120 + x,80 + y,220,220);    
  } //creates box with clothes image inside of it
  
  public void TopsTab(){
    int xSpace = 0;
    int ySpace = 0;
    for (int i = 0; i < closet.size(); i++){
      Clothing c = closet.get(i);
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
    System.out.println("hi");
    //try{
    //  Closet = new Scanner (new File("Closet.txt"));
    //  while(Closet.hasNextLine()){
    //    String line = Closet.nextLine();
    //    if(line.charAt(1) == '2'){
    //      createBox(line, xSpace, ySpace);
    //      if(xSpace > 650){
    //        ySpace += 300;
    //        xSpace = 0;
    //      }
    //      else{
    //        xSpace += 300;
    //      }
    //    }
    //  }
      
    //}catch (FileNotFoundException ex){
    //}
  }    // each tab is called from a button in GameSetup 
  public void AccessoriesTab(){
     int xSpace = 0;
    int ySpace = 0;
    try{
      Closet = new Scanner (new File("Closet.txt"));
      while(Closet.hasNextLine()){
        String line = Closet.nextLine();
        if(line.charAt(1) == '5'){
          createBox(line, xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
        }
      }
      
    }catch (FileNotFoundException ex){
    }
  }
  public void HairTab(){
     int xSpace = 0;
    int ySpace = 0;
    try{
      Closet = new Scanner (new File("Closet.txt"));
      while(Closet.hasNextLine()){
        String line = Closet.nextLine();
        if(line.charAt(1) == '2'){
          createBox(line, xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
        }
      }
      
    }catch (FileNotFoundException ex){
    }
  }
  public void PantTab(){
   int xSpace = 0;
    int ySpace = 0;
    try{
      Closet = new Scanner (new File("Closet.txt"));
      while(Closet.hasNextLine()){
        String line = Closet.nextLine();
        if(line.charAt(1) == '3'){
          createBox(line, xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
        }
      }
      
    }catch (FileNotFoundException ex){
    }
  }
  public void FaceTab(){
   int xSpace = 0;
    int ySpace = 0;
    try{
      Closet = new Scanner (new File("Closet.txt"));
      while(Closet.hasNextLine()){
        String line = Closet.nextLine();
        if(line.charAt(1) == '1'){
          createBox(line, xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
        }
      }
      
    }catch (FileNotFoundException ex){
    }
  }
  public void ShoeTab(){
     int xSpace = 0;
    int ySpace = 0;
    try{
      Closet = new Scanner (new File("Closet.txt"));
      while(Closet.hasNextLine()){
        String line = Closet.nextLine();
        if(line.charAt(1) == '4'){
          createBox(line, xSpace, ySpace);
          if(xSpace > 650){
            ySpace += 300;
            xSpace = 0;
          }
          else{
            xSpace += 300;
          }
        }
      }
      
    }catch (FileNotFoundException ex){
    }
  }
  public Menu(){}
}
