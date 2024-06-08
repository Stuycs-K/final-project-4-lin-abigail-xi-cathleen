public class Button{
  PImage[] buttons;
  int vert;
  
  public Button(){
    buttons = new PImage[6];
    buttons[0] = loadImage("hairButton.png");
    buttons[1] = loadImage("Makeup.png");
    buttons[2] = loadImage("Tops.png");
    buttons[3] = loadImage("Bottoms.png");
    buttons[4] = loadImage("Shoes.png");
    buttons[5] = loadImage("Accessory.png");
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
    
    if (button.overReset()){
      fill(204);
    }
    else {
      fill(255);
    }
    rect(width/2,0,100,50);
    textSize(40);
    fill(0);
    text("Reset",width/2+5,40);
    vert = vertSpace;
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
  return (mouseX >= width/2 && mouseX <= width/2+100 &&
          mouseY >= 0 & mouseY <= 50);
}

}
