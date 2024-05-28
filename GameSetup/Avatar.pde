import java.util.ArrayList;

public class Avatar{
    public ArrayList<Clothing> clothesOn;
    public int rating;

    public Avatar(){
        clothesOn = new ArrayList<Clothing>();
        rating = 0;
    }

    public boolean addClothing(Clothing c){
        clothesOn.add(c);
        return true;
    }

    public boolean removeClothing(Clothing c){
        for (int i = 0; i < clothesOn.size(); i++){
            if (c.getFile().equals(clothesOn.get(i).getFile())){
                clothesOn.remove(i);
            }
        }
        return true;
    }

    public ArrayList<Clothing> getClothing(){
        return clothesOn;
    }

    public int getRating(){
        return rating;
    }

    public void calculateRating(){
        // max theme points is 90 if you only have 1 theme clothing per section
        // needs points, # of clothing, 
        // precondition: pointTotal is nonnegative
        int pointTotal = 0;
        for (int i = 0; i < clothesOn.size(); i++){
            pointTotal += clothesOn.get(i).getPoints();
        }
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
}
