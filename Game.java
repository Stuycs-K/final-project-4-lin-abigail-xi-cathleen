import java.util.ArrayList;
public class Game{
    private final String[] themes = new String[]{"Emo", "Academia", "MissUniverse", "OldMoney", "Y2K", "ApologyVideo", "StreetStyle", "Gym", "Cozy", "MeanGirl"};
    private int currTheme;
    private Avatar avatar;
    private ArrayList<Clothing> closet;

    public Game(){
        avatar = new Avatar();
        currTheme = (int) Math.random()*10;

    }

    public void newRound(){
        currTheme ++;
        avatar = new Avatar();

        // closet may be randomized here
    }

    public void selectClothing(Clothing selected){
        // avatar.addClothes(selected);
        // Menu.addX();
    }

    public void removeClothing(){
		// avatar.removeClothing(); // not sure how to use index here??
		// Menu.removeX();
	}

    public ArrayList<Clothing> getCloset(){
        return closet;
    }

}