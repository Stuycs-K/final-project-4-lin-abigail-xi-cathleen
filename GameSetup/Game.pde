public class Game{
    private final String[] themes = new String[]{"Emo", "Academia", "MissUniverse", "OldMoney", "Y2K", "ApologyVideo", "StreetStyle", "Gym", "Cozy", "MeanGirl"};
    private int currTheme;
    private Avatar avatar;
    private String[] closetString;
    private Clothing[] closetClothing;

    public Game(){
        avatar = new Avatar();
        currTheme = (int) Math.random()*10;
        closetString = loadStrings("clothingNames.txt");
        closetClothing = new Clothing[closetString.length];
        for (int i = 0; i < closetString.length; i++){
          int j = 0;
          closetClothing[i] = new Clothing(width/6,j*height/4,currTheme,closetString[i]);
        }
    }
    
    public void newRound(){
        currTheme = (int) Math.random()*10;
        avatar = new Avatar();
        System.out.println ("Pressed Button");

        // closet will be randomized here given enough time
    }

    public void selectClothing(int index){
        avatar.addClothing(closetClothing[index]);
        // Menu.addX();
    }

    public void removeClothing(int index){
      avatar.removeClothing(closetClothing[index]);
      // Menu.removeX();
    }

    public Clothing[] getCloset(){
        return closetClothing;
    }

    public int getTheme(){
        return currTheme;
    }
    
    public String getThemeName(){
        return themes[currTheme];
    }

    public Avatar getAvatar(){
        return avatar;
    }

}
