public class Button{
  PImage[] buttons;
  
  public Button(){
    buttons = new PImage[9];
    buttons[0] = loadImage("hairButton.png");
    buttons[1] = loadImage("Makeup.png");
    buttons[2] = loadImage("Tops.png");
    buttons[3] = loadImage("Bottoms.png");
    buttons[4] = loadImage("Shoes.png");
    buttons[5] = loadImage("Accessory.png");
    buttons[6] = loadImage("remove.png");
    buttons[7] = loadImage("leftArrow.png");
    buttons[8] = loadImage("rightArrow.png");
    buttons[6].resize(buttons[6].width/2,buttons[6].height/2);
    buttons[7].resize(buttons[7].width/4,buttons[7].height/4);
    buttons[8].resize(buttons[8].width/4,buttons[8].height/4);
  }
  
  public void drawButton(){
    int vertSpace = 0;
   for(int i = 0; i < 6; i++){ 
    if(i == 0){
      if (button.overHair()){
        tint(150);
      }
      else{
        tint(255);
      }
      image(buttons[i],width/3,0+vertSpace);
      tint(255);
    }
     if(i == 1){
      if (button.overFace()){
        tint(150);
      }
      else{
        tint(255);
      }
      image(buttons[i],width/3,0+vertSpace);
      tint(255);
    }
     if(i == 2){
      if (button.overTop()){
        tint(150);
      }
      else{
        tint(255);
      }
      image(buttons[i],width/3,0+vertSpace);
      tint(255);
    }
     if(i == 3){
       if (button.overPant()){
        tint(150);
      }
      else{
        tint(255);
      }
      image(buttons[i],width/3,0+vertSpace);
      tint(255);
    }
     if(i == 4){
       if (button.overShoes()){
        tint(150);
      }
      else{
        tint(255);
      }
      image(buttons[i],width/3,0+vertSpace);
      tint(255);
    }
     if(i == 5){
       if (button.overAccessories()){
        tint(150);
      }
      else{
        tint(255);
      }
      image(buttons[i],width/3,0+vertSpace);
      tint(255);
    }
       vertSpace += (height/6);
    }
    // reset button
    if (button.overReset()){
      tint(150);
    }
    else {
      tint(255);
    }
    image(buttons[6],width-buttons[6].width,height-buttons[6].height);
    tint(255);
    // left button
    if (button.overLeft()){
      tint(150);
    }
    else {
      tint(255);
    }
    image(buttons[7],50,height-100);
    tint(255);
    // right button
    if (button.overRight()){
      tint(150);
    }
    else {
      tint(255);
    }
    image(buttons[8],220,height-100);
    tint(255);
   }

boolean overHair(){
return (mouseX >= width/3 && mouseX <= width/3+buttons[0].width && 
      mouseY >= 0 && mouseY <= buttons[0].height);
}
boolean overFace(){
return (mouseX >= width/3 && mouseX <= width/3+buttons[1].width && 
      mouseY >= height/6 && mouseY <= buttons[1].height+(height/6));
}
boolean overTop(){
return (mouseX >= width/3 && mouseX <= width/3+buttons[2].width && 
      mouseY >= 2*height/6 && mouseY <= buttons[2].height+(2*height/6));
}
boolean overPant(){
return (mouseX >= width/3 && mouseX <= width/3+buttons[3].width && 
      mouseY >= 3*height/6 && mouseY <= buttons[3].height+(3*height/6));
}
boolean overShoes(){
return (mouseX >= width/3 && mouseX <= width/3+buttons[4].width && 
      mouseY >= 4*height/6 && mouseY <= buttons[4].height+(4*height/6));
}
boolean overAccessories(){
return (mouseX >= width/3 && mouseX <= width/3+buttons[5].width && 
      mouseY >= 5*height/6 && mouseY <= buttons[5].height+(5*height/6));
}
boolean overReset(){
  return (mouseX >= width-buttons[6].width && mouseX <= width &&
          mouseY >= height-buttons[6].height & mouseY <= height);
}
boolean overLeft(){
    return (mouseX >= 50 && mouseX <= 50+buttons[7].width &&
          mouseY >= height-100 & mouseY <= height-100+buttons[7].height);
}
boolean overRight(){
      return (mouseX >= 220 && mouseX <= 220+buttons[7].width &&
          mouseY >= height-100 & mouseY <= height-100+buttons[8].height);
}

}
