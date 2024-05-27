import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
public class Menu{
  Scanner Closet;
  
  public void createBox(String filename){
    PImage item;
    item = loadImage(filename);
    rect(120, 80, 220, 220, 28);
    image(item,120,80,220,220);    
  } //creates box with clothes image inside of it
  
  public void TopsTab(){
    try{
      Closet = new Scanner (new File("Closet.txt"));
      while(Closet.hasNextLine()){
        String line = Closet.nextLine();
        if(line.charAt(1) == '5'){
          createBox(line);
        }
      }
      
    }catch (FileNotFoundException ex){
    }
  }    // each tab is called from a button in GameSetup 
  public void AccessoriesTab(){}
  public void HairTab(){}
  public void PantTab(){}
  public void FaceTab(){}
  public void ShoeTab(){}
  public Menu(){}
}
