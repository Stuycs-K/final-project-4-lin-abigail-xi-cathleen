public class Clothing{
    int themeIndex;
    int clothTheme;
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
    int position;
    
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
        clothTheme = Integer.parseInt(filename.substring(0,1));
        if (type == 0){ constant = 0.75; }
        if (type == 1){ constant = 0.1; }
        if (type == 2){ constant = 0.57; }
        if (type == 3){ constant = 0.5; }
        if (type == 4){ constant = 0.48; }
        if (type == 5){ constant = 0.5;}
        image.resize((int)(image.width*constant),(int)(image.height*constant));
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
<<<<<<< HEAD
      println("reached");
    if (cx >= x && cx <= x+image.width*constant && cy >= y && cy <= y+image.height*constant){ //  && moveable
=======
    if (cx >= x && cx <= x+image.width && cy >= y && cy <= y+image.height && moveable){
      //println(filename);
>>>>>>> d9b35db813fb186274de772138cdac106c8b915f
      clicked = true;
    }
    else {
      clicked = false;
    }
  }
  
  void update(){
<<<<<<< HEAD
    //println(clicked);
    if (clicked) {
      //println("moving");
=======
    if (clicked && moveable) {
>>>>>>> d9b35db813fb186274de772138cdac106c8b915f
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
  
  void snapBack(){
    on = false;
    x = width/10;
    y = position*200; // fix later
  }
  
  boolean isOn(){
    return on;
  }
  
  boolean onTheme(){
    return clothTheme == themeIndex;
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
  
  void setPosition(int p){
    position = p;
  }
  
  public void create(int x, int y){
  //  rect(120 + x, 80 + y, 220, 220, 28);
    image(image,x,y);
  }
  
  void display(){
    create(x, y);
    fill(255,0,0,100); // red for debugging
    rect(x,y,image.width,image.height); // cx > x && cx < x+image.width*constant && cy > y && cy < y+image.height*constant
  }
}
