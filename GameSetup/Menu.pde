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
      button.drawButton();
      fill(0);
      textSize(40);
      textAlign(CENTER);
      text("Theme: "+game.getThemeName(), width/2+200, height-25);
   }
  
}
