import java.util.ArrayList;
public class Game{
    private String[] themes;
    private int currTheme int;
    private Avatar avatar;
    private ArrayList<Clothing> closet;
    private int timer; //might be in setup instead;

    public Game(){
        timer = 90; //seconds
        avatar = new Avatar();
        currTheme = 0;
        themes = {"Emo", "Academia", "MissUniverse", 
        "OldMoney", "Y2K", "ApologyVideo", "StreetStyle", "Gym", "Cozy", "MeanGirl"};


    }

    public void newRound(){
        currTheme ++;
        timer = 90;
        avatar = new Avatar();

        // closet may be randomized here
    }

    public void selectClothing(Clothing selected){
        avatar.addClothes(selected);
        Menu.addX();
    }

    public void removeClothing(){
		avatar.removeClothing(); // not sure how to use index here??
		Menu.removeX();
	}

}