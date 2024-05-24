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
		closet.add(5,"55Ukelele.png");
		closet.add(9, "92BarbieShirt.png");
		closet.add(0, "02BlackLeatherjacket.png");
		closet.add(3, "32GrayPolo.png");
		closet.add(6, "62LightWashJeans.png");
		closet.add(8, "82PinkHoodie.png");
		closet.add(8, "82PurpleHoodie.png");
		closet.add(8, "82WhiteHoodie.png");
		closet.add(2, "22RedDress.png");
		closet.add(4, "41BlackFlowyTank.png");
		closet.add(6, "65BlackCap.png");
		closet.add(0, "CombatBoots.png");
		closet.add(4, "43BellBottoms.png");

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