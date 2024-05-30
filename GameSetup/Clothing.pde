public class Clothing{
    int themeIndex;
    String filename;
    int points;
    int x,y;
    boolean clicked;

    public Clothing(int xcoord, int ycoord, int theme, String file){
        themeIndex = theme;
        filename = file;
        points = 0;
        x = xcoord;
        y = ycoord;
        clicked = false;
    }

    public int getPoints(){
        int currTheme = Integer.parseInt(filename.substring(0,1));
        if (currTheme == themeIndex){
            points += 10;
        }
        return points;
    }

    public String getFile(){
        return filename;
    }
    
    public int getType(){
      return Integer.parseInt(filename.substring(1,2));
    }
    
    void checkClicked(float cx, float cy){
    if (cx > x+120 && cx < x+340 && cy > y+80 && cy < y+300){
      clicked = true;
    }
    else {
      clicked = false;
    }
  }
  
  void update(){
    if (clicked) {
     float dx = mouseX - pmouseX;
     float dy = mouseY - pmouseY;
     x += dx;
     y += dy;
    }
  }
  
  public void createBox(String filename, int x, int y){
    PImage item;
    item = loadImage(filename);
    //rect(120 + x, 80 + y, 220, 220, 28);
    image(item,120 + x,80 + y,220,220);    
  } //creates box with clothes image inside of it
  
  void display(){
    createBox(filename, x, y);
  }
}
