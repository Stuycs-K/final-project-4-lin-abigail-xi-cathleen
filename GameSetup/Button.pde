public class Button{
  public void drawButton(){
   int vertSpace = 0;
   for(int i = 0; i < 6; i++){ 
   
    if(i == 0){
      if (button.overHair()){
        fill(204);
      }
      else{
        fill(255);
      }
      rect(width/3,0 + vertSpace, 100, (height/6)-20,20); 

       pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Hair", 0,100);
    popMatrix();
    }
     if(i == 1){
       if (button.overFace()){
        fill(204);
      }
      else{
        fill(255);
      }
      rect(width/3,0 + vertSpace, 100, (height/6)-20,20); 

        pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Face", 0,100);
    popMatrix();
    }
     if(i == 2){
       if (button.overTop()){
        fill(204);
      }
      else{
        fill(255);
      }
      rect(width/3,0 + vertSpace, 100, (height/6)-20,20); 

         pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Top", 0,100);
    popMatrix();
    }
     if(i == 3){
       if (button.overPant()){
        fill(204);
      }
      else{
        fill(255);
      }
      rect(width/3,0 + vertSpace, 100, (height/6)-20,20); 

      pushMatrix();
      textSize(40);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Pants", 0,100);
    popMatrix();
    }
     if(i == 4){
       if (button.overShoes()){
        fill(204);
      }
      else{
        fill(255);
      }
      rect(width/3,0 + vertSpace, 100, (height/6)-20,20); 

      pushMatrix();
      textSize(40);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Shoe", 0,100);
    popMatrix();
    }
     if(i == 5){
       if (button.overAccessories()){
        fill(204);
      }
      else{
        fill(255);
      }
      rect(width/3,0 + vertSpace, 100, (height/6)-20,20); 

      pushMatrix();
      textSize(20);
      fill(0); 
      translate(width/3, 0+vertSpace);
      text("Accessories", 0,100);
    popMatrix();
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
   }
  boolean overHair(){
return (mouseX >= width/3 && mouseX <= width/3+100 && 
      mouseY >= 0 && mouseY <= height/6-20);
}
boolean overFace(){
return (mouseX >= width/3 && mouseX <= width/3+100 && 
      mouseY >= height/6 && mouseY <= 2*height/6-20);
}
boolean overTop(){
return (mouseX >= width/3 && mouseX <= width/3+100 && 
      mouseY >= 2*height/6 && mouseY <= 3*height/6-20);
}
boolean overPant(){
return (mouseX >= width/3 && mouseX <= width/3+100 && 
      mouseY >= 3*height/6 && mouseY <= 4*height/6-20);
}
boolean overShoes(){
return (mouseX >= width/3 && mouseX <= width/3+100 && 
      mouseY >= 4*height/6 && mouseY <= 5*height/6-20);
}
boolean overAccessories(){
return (mouseX >= width/3 && mouseX <= width/3+100 && 
      mouseY >= 5*height/6 && mouseY <= 6*height/6-20);
}
boolean overReset(){
  return (mouseX >= width/2 && mouseX <= width/2+100 &&
          mouseY >= 0 & mouseY <= 50);
}

/*
boolean overNewRound (){
return (mouseX >= 600 && mouseX <= 900 && 
      mouseY >= 600 && mouseY <= 900);

} 
*/
}