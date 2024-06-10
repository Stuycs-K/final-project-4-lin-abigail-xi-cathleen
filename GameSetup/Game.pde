public class Game{
    private final String[] themes = new String[]{"Emo", "Academia", "Miss Universe", "Old Money", "Y2K", "Apology Video", "Street Style", "Gym", "Cozy", "Mean Girl"};
    private int currTheme;
    private String[] closetString;
    private Clothing[][] closetClothing;

    public Game(){
        currTheme = (int) (Math.random()*10);
        closetString = loadStrings("clothingNames.txt");
        closetClothing = new Clothing[2][closetString.length/2]; //NUMBER OF CLOTHES HAS TO BE EVEN!!!
        for (int i = 0; i < closetString.length/2; i++){
          closetClothing[0][i] = new Clothing(width/10,0,currTheme,closetString[i]);
        }
        int count = 0;
        for(int i = closetString.length/2; i<closetString.length; i++){
          closetClothing[1][count] = new Clothing(width/10,0,currTheme,closetString[i]);
          count ++;
        }
    }

    public Clothing[][] getCloset(){
        return closetClothing;
    }
    
    public String getThemeName(){
        return themes[currTheme];
    }


}
