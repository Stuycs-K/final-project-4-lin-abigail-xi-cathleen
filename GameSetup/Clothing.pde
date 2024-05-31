public class Clothing{
    int themeIndex;
    String filename;
    int points;
    int x,y;
    boolean clicked;
    boolean onAvatar;
    boolean moveable;
    PImage image;
    int type;
    float constant;

    public Clothing(int xcoord, int ycoord, int theme, String file){
        themeIndex = theme;
        filename = file;
        points = 0;
        x = xcoord;
        y = ycoord;
        clicked = false;
        image = loadImage(file);
        type = Integer.parseInt(filename.substring(1,2));
        if (type == 0){ constant = 0.75; }
        if (type == 2){ constant = 0.57; }
        if (type == 3){ constant = 0.6; }
        if (type == 4){ constant = 0.48; }
        moveable = true;
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
    if (cx > x+120 && cx < x+340 && cy > y+80 && cy < y+300 && moveable){
      clicked = true;
    }
    else {
      clicked = false;
    }
  }
  
  //void checkOnAvatar(float _x, float _y){
  //  if (_x > 
  //}
  
  void update(){
    if (clicked) {
     float dx = mouseX - pmouseX;
     float dy = mouseY - pmouseY;
     x += dx;
     y += dy;
    }
  }
  
  boolean isMoveable(){
    return moveable;
  }
  
  void snapOn(){
    moveable = false;
    if (type == 0){
      x = 780;
      y = 10;
    }
    if (type == 2){
      x = 760;
      y = 145;
    }
    if (type == 3){
      x = 760;
      y = 145;
    }
    if (type == 4){
      x = 833;
      y = 685;
    }
  }
  
  public void createBox(int x, int y){
  //  rect(120 + x, 80 + y, 220, 220, 28);
    image(image,x,y,image.width*constant,image.height*constant);
  }
  
  void display(){
    createBox(x, y);
  }
}
