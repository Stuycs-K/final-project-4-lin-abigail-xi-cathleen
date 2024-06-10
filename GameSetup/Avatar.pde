public class Avatar{
    int rating;
    int points;
    PImage avatar;

    public Avatar(){
        rating = 0;
        avatar = loadImage("avatar2.png");
        avatar.resize((int)(avatar.width/3.5),(int)(avatar.height/3.5));
    }
    
    void addPoints(){
      points += 10;
    }
    
    void removePoints(){
      points -= 10;
    }
    
    void resetPoints(){
      points = 0;
    }
    
    int getPoints(){
      return points;
    }

    public int getRating(){
        return rating;
    }

    public void calculateRating(){
        // max theme points is 90 if you only have 1 theme clothing per section
        // needs points, # of clothing, 
        // precondition: points is nonnegative
        if (points == 0){
            rating = 0;
        }
        else if (points == 10){
            rating = 1;
        }
        else if (points == 20){
            rating = 2;
        }
        else if (points == 30){
            rating = 3;
        }
        else if (points == 40){
            rating = 4;
        }
        else if (points == 50){
            rating = 5;
        }
    }
    
    void display(){
      image(avatar,width/2,0);
    }
    
    public void endGame(){
    fill(251,198,207);
    rect(0,0,width,height);
    fill(0);
    text("Game ended", width/2, 100);
    int result = getRating();
    textSize(100);
    textAlign(CENTER);
    if (result == 1){
      text("Final Rating: " + result + " Star", width/2, height/2);
    }
    else{
      text("Final Rating: " + result + " Stars", width/2, height/2);
    }
    PImage stars;
    if(result == 0){
      stars  = loadImage("zeroStars.png");
      image(stars, 150, 500,900,200);
    }
    if(result == 1){
      stars  = loadImage("1stars.png");
      image(stars, 150, 500,900,200);
    }
     if(result == 2){
      stars  = loadImage("2stars.png");
      image(stars, 150, 500,900,200);
    }
     if(result == 3){
      stars  = loadImage("3stars.png");
      image(stars, 150, 500,900,200);
    }
     if(result == 4){
      stars  = loadImage("4stars.png");
      image(stars, 150, 500,900,200);
    }
     if(result == 5){
      stars  = loadImage("5stars.png");
      image(stars, 150, 500,900,200);
    }
    }
}
