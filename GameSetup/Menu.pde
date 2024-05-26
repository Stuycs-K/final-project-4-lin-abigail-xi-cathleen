public class Menu{
  
  public void createBox(String filename){
    PImage item;
    item = loadImage(filename);
    rect(120, 80, 220, 220, 28);
    image(item,120,80,220,220);    
  } //creates box with clothes image inside of it
  
  public void TopsTab(){}    // each tab is called from a button in GameSetup 
  public void AccessoriesTab(){}
  public void HairTab(){}
  public void PantTab(){}
  public void FaceTab(){}
  public void ShoeTab(){}
  public Menu(){}
}
