public class Game{
    private final String[] themes = new String[]{"Emo", "Academia", "Miss Universe", "Old Money", "Y2K", "Apology Video", "Street Style", "Gym", "Cozy", "Mean Girl"};
    private int currTheme;
    private String[] closetString;
    private Clothing[] closetClothing;

    public Game(){
        currTheme = (int) (Math.random()*10);
        closetString = loadStrings("clothingNames.txt");
        closetClothing = new Clothing[closetString.length];
        for (int i = 0; i < closetString.length; i++){
          closetClothing[i] = new Clothing(width/10,0,currTheme,closetString[i]);
        }
    }

    public Clothing[] getCloset(){
        return closetClothing;
    }
    
    public String getThemeName(){
        return themes[currTheme];
    }


}
