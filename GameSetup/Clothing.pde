public class Clothing{
    private int themeIndex;
    private String filename;
    private int points;

    public Clothing(int theme, String file){
        themeIndex = theme;
        filename = file;
        points = 0;
    }

    public int getPoints(){
        int currTheme = Integer.parseInt(filename.substring(0,1));
        if (currTheme == themeIndex){
            points += 10;
        }
        return points;
    }

    public String getFile(){
        return filename;
    }
    
    public int getType(){
      return Integer.parseInt(filename.substring(1,2));
    }
}
