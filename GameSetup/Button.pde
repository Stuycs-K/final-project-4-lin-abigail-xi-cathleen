public class Button{
  public void hover(){
    if (overHair()){
      fill(192);
      rect(width/3,height/6, 100, (height/6)-20,20);
    }
    else if(overFace()){
      fill(192);
      rect(width/3,2*height/6-20, 100, (height/6)-20,20);
    }
    else{
      fill(255);
    }

  }
  boolean overHair(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 0 && mouseY <= height/6-20);
}
boolean overFace(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= height/6 && mouseY <= 2*height/6-20);
}
boolean overTop(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 2*height/6 && mouseY <= 3*height/6-20);
}
boolean overPant(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 3*height/6 && mouseY <= 4*height/6-20);
}
boolean overShoes(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 4*height/6 && mouseY <= 5*height/6-20);
}
boolean overAccessories(){
return (mouseX >= width/3 && mouseX <= width/3+50 && 
      mouseY >= 5*height/6 && mouseY <= 6*height/6-20);
}

/*
boolean overNewRound (){
return (mouseX >= 600 && mouseX <= 900 && 
      mouseY >= 600 && mouseY <= 900);

} 
*/
}
