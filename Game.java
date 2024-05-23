public class Game{
    private ArrayList<String> themes;
    private int currTheme int;
    private Avatar avatar;
    private ArrayList<Clothing> closet;
    private int timer;

    public Game(){
        timer = 90; //seconds
        avatar = new Avatar();
        currTheme = 0;
        themes.add("Emo");
        themes.add("Academia");
        themes.add("MissUniverse");
        themes.add("OldMoney");
        themes.add("Y2K");
        themes.add("ApologyVideo");
        themes.add("StreetStyle");
        themes.add("Gym");
        themes.add("Cozy");
        themes.add("MeanGirl");



    }

    public void newRound(){
        currTheme ++;
        timer = 90;
        avatar = new Avatar();

        // closet may be randomized here
    }

    public selectClothing(){}

    public removeClothing(){}

}