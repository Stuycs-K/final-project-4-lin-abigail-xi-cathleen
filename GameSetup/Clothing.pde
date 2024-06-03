public class Clothing{
    int themeIndex;
    String filename;
    int points;
    int x,y,sX,sY;
    boolean clicked;
    boolean onAvatar;
    boolean moveable;
    PImage image;
    int type;
    float constant;
    boolean on;
    
   /* 33BrownPlaidSkirt.png
63DenimShorts.png
83BlueJeans.png */

    public Clothing(int _x, int _y, int theme, String file){
        themeIndex = theme;
        filename = file;
        points = 0;
        clicked = false;
        image = loadImage(file);
        type = Integer.parseInt(filename.substring(1,2));
        if (type == 0){ constant = 0.75; }
        if (type == 2){ constant = 0.57; }
        if (type == 3){ constant = 0.5; }
        if (type == 4){ constant = 0.48; }
        moveable = false;
        sX = Integer.parseInt(filename.substring(2,5));
        sY = Integer.parseInt(filename.substring(6,9));
        x = _x;
        y = _y;
        on = false;
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
      return type;
    }
    
    void checkClicked(float cx, float cy){
    if (cx > x && cx < x+image.width*constant && cy > y && cy < y+image.height*constant && moveable){
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
  
  void snapOn(){
    moveable = false;
    on = true;
    x = sX;
    y = sY;
  }
  
  boolean isOn(){
    return on;
  }
  
  void setMoveable(){
    if (moveable) moveable = false;
    else moveable = true;
  }
  
  void setX(int _x){
    x = _x;
  }
  
  void setY(int _y){
    y = _y;
  }
  
  public void create(int x, int y){
  //  rect(120 + x, 80 + y, 220, 220, 28);
    image(image,x,y,image.width*constant,image.height*constant);
  }
  
  void display(){
    create(x, y);
  }
}
