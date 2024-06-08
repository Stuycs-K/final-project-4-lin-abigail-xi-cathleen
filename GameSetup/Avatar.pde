public class Avatar{
    int rating;
    int points;
    PImage avatar;

    public Avatar(){
        rating = 0;
        avatar = loadImage("avatar.png");
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
        else if (points <= 10){
            rating = 1;
        }
        else if (points <= 20){
            rating = 2;
        }
        else if (points <= 50){
            rating = 3;
        }
        else if (points <= 70){
            rating = 4;
        }
        else {
            rating = 5;
        }
    }
    
    void display(){
      image(avatar,width/2,0);
    }
    
    public void endGame(){
    fill(255);
    rect(0,0,1200,900);
    fill(0);
    text("Game ended", width/2, 100);
    int result = getRating();
    textSize(100);
    textAlign(CENTER);
    text("Final Rating: " + result + " Stars", width/2, height/2);
    }
}
