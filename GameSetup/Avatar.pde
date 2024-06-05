public class Avatar{
    int rating;
    int points;
    PImage avatar;

    public Avatar(){
        rating = 0;
        avatar = loadImage("avatar.png");
        avatar.resize((int)(avatar.width/3.5),(int)(avatar.height/3.5));
    }
    
    void addPoints(int p){
      points += p;
    }
    
    void removePoints(int p){
      points -= p;
    }

    public int getRating(){
        return rating;
    }

    public void calculateRating(){
        // max theme points is 90 if you only have 1 theme clothing per section
        // needs points, # of clothing, 
        // precondition: pointTotal is nonnegative
        int pointTotal = 0;
        if (pointTotal == 0){
            rating = 0;
        }
        else if (pointTotal <= 10){
            rating = 1;
        }
        else if (pointTotal <= 20){
            rating = 2;
        }
        else if (pointTotal <= 50){
            rating = 3;
        }
        else if (pointTotal <= 70){
            rating = 4;
        }
        else {
            rating = 5;
        }
    }

    public void resetOutfit(){  
        clothesOn = new ArrayList<Clothing>();
    }
    
    void display(){
      image(avatar,width/2,0);
    }
}
