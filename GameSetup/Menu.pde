public class Menu{
  Game game;
  Clothing[] closet;
  Button button;
  
  public Menu(){
    game = new Game();
    closet = game.getCloset();
    button = new Button();
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
   button.drawButton();
   }
  
}
