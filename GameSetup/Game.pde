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
          closetClothing[i] = new Clothing(width/10,0,currTheme,closetString[i]);
        }
        /*
      pushMatrix();
      textSize(50);
      fill(0); 
      translate(width/2, 100);
      text(themes[currTheme],0,0);
      popMatrix();
      */
    }
    
    public void newRound(){
        currTheme = (int) Math.random()*10;
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
