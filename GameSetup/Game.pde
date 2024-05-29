import java.util.ArrayList;
import java.io.*;
import java.util.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Game{
    private final String[] themes = new String[]{"Emo", "Academia", "MissUniverse", "OldMoney", "Y2K", "ApologyVideo", "StreetStyle", "Gym", "Cozy", "MeanGirl"};
    private int currTheme;
    private Avatar avatar;
    private ArrayList<Clothing> closet;

    public Game(){
        avatar = new Avatar();
        currTheme = (int) Math.random()*10;
        closet = new ArrayList<Clothing>();
        try {
            File file = new File("clothingNames.txt");
            Scanner input = new Scanner(file);
            while (input.hasNextLine()) {
                String line = input.nextLine();
                closet.add(new Clothing(currTheme,line));
            }
            input.close();

        } catch (FileNotFoundException ex) {
        }
    }
    // WIP!!!
    // might be moved to an outside class with a button
    public void newRound(){
        currTheme = (int) Math.random()*10;
        avatar = new Avatar();
        

        // closet will be randomized here given enough time
    }

    public void selectClothing(int index){
        avatar.addClothing(closet.get(index));
        // Menu.addX();
    }

    public void removeClothing(int index){
    avatar.removeClothing(closet.get(index));
    // Menu.removeX();
  }

    public ArrayList<Clothing> getCloset(){
        return closet;
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
