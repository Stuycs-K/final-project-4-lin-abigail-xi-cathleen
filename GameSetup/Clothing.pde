public class Clothing{
    int themeIndex;
    int clothTheme;
    String filename;
    int x,y,sX,sY;
    boolean clicked;
    boolean onAvatar;
    boolean moveable;
    PImage image;
    PImage onClothImage;
    int type;
    float constant;
    boolean on;
    int position;
    int slide;

    public Clothing(int _x, int _y, int theme, String file){
        themeIndex = theme;
        filename = file;
        clicked = false;
        image = loadImage(file);
        onClothImage = loadImage(file);
        type = Integer.parseInt(filename.substring(1,2));
        clothTheme = Integer.parseInt(filename.substring(0,1));
        constant = (Integer.parseInt(filename.substring(10,13))) / 100.0;
        onClothImage.resize((int)(image.width*constant),(int)(image.height*constant));
        image.resize(150,150);
        moveable = false;
        sX = Integer.parseInt(filename.substring(2,5));
        sY = Integer.parseInt(filename.substring(6,9));
        x = _x;
        y = _y;
        on = false;
    }

    String getFile(){
        return filename;
    }
    
    int getType(){
      return type;
    }
    
    int getSlide(){
      return slide;
    }
    
    void checkClicked(float cx, float cy){
    if (on){
      if (cx >= x && cx <= x+onClothImage.width && cy >= y && cy <= y+onClothImage.height && moveable){
        //println(filename);
        clicked = true;
      }
      else {
        clicked = false;
      }
    }
    else {
      if (cx >= x && cx <= x+image.width && cy >= y && cy <= y+image.height && moveable){
        //println(filename);
        clicked = true;
      }
      else {
        clicked = false;
      }
    }
  }
  
  void update(){
    if (clicked && moveable) {
      //println(filename);
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
    y = position*150;
  }
  
  boolean isOn(){
    return on;
  }
  
  boolean onTheme(){
    return clothTheme == themeIndex;
  }
  
  void setMoveable(){
    moveable = true;
  }
  
  void setUnmoveable(){
    moveable = false;
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
  
  void setSlide(int s){
    slide = s;
  }
  
  void create(int x, int y){
            //fill(255,0,0,100); // red for debugging
    if (on){
      image(onClothImage,x,y);
    //rect(x,y,onClothImage.width,onClothImage.height);
    }
    else {
      image(image,x,y);
          //rect(x,y,image.width,image.height);
    }
  }
  
  void display(){
    create(x, y);
  }
}
