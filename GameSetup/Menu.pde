class Menu{
  
  public void createBox(String filename){
    PImage item;
    size(220,220);
    item = loadImage(filename);
    size(400, 400);
    rect(120, 80, 220, 220, 28);
    image(item,120,80);    
  } //creates box with clothes image inside of it
  
  public void TopsTab(){}    // each tab is called from a button in GameSetup 
  public void AccessoriesTab(){}
  public void HairTab(){}
  public void PantTab(){}
  public void FaceTab(){}
  public void ShoeTab(){}
}
