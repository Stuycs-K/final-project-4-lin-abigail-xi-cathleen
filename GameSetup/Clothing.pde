public class Clothing{
    int themeIndex;
    String filename;
    int points;
    float x,y;
    boolean clicked;

    public Clothing(float xcoord, float ycoord, int theme, String file){
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
    
    public int getX(){
      return x;
    }
    
    public int getY(){
      return y;
    }
    
    public void moveClothing(int _x, int _y){
      x = _x;
      y = _y;
    }
    
    void checkClicked(float cx, float cy){
    if (cx > x && cx < x+w && cy > y && cy < y+h){
      clicked = true;
    }
    else {
      clicked = false;
    }
  }
  
    void update(){
     float dx = mouseX - pmouseX;
     float dy = mouseY - pmouseY;
     x += dx;
     y += dy;
  }
  
    public void createBox(String filename, int x, int y){
    PImage item;
    item = loadImage(filename);
    rect(120 + x, 80 + y, 220, 220, 28);
    image(item,120 + x,80 + y,220,220);    
  } //creates box with clothes image inside of it
  
  void display(){
    createBox(filename, x, y);
  }
}
