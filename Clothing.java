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
        // placeholder right now
        return points;
    }

    public String getFile(){
        return filename;
    }
}