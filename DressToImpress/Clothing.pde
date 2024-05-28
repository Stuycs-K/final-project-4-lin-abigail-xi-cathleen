class Clothing{ // ask in class why it no run with public
    int themeIndex;
    String filename;
    int points;

    Clothing(int theme, String file){
        themeIndex = theme;
        filename = file;
        points = 0;
    }

    int getPoints(){
        int currTheme = Integer.parseInt(filename.substring(0,1));
        if (currTheme == themeIndex){
            points += 10;
        }
        return points;
    }

    String getFile(){
        return filename;
    }
}
