import java.io.*;
import java.util.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Game{
    private final String[] themes = new String[]{"Emo", "Academia", "MissUniverse", "OldMoney", "Y2K", "ApologyVideo", "StreetStyle", "Gym", "Cozy", "MeanGirl"};
    private int currTheme;
    private Avatar avatar;
    private String[] closetString;
    private Clothing[] closetClothing;

    public Game(int width, int height){
        avatar = new Avatar();
        currTheme = (int) Math.random()*10;
        closetString = loadStrings("clothingNames.txt");
        closetClothing = new Clothing[closetString.length];
        for (int i = 0; i < closetString.length; i++){
          closetClothing[i] = new Clothing(0,0+(i*100),currTheme,closetString[i]);
        }
        
        // rectangles for the menu + names, will be added soon by cathleen
       int vertSpace = 0;
       for(int i = 0; i < 6; i++){
          fill(255);
          rect(width/3,0 + vertSpace, 50, (height/6)-20); 
        /*
        if(i == 0){
          textSize(50);
          fill(0);
          rotate(PI/2);
          text("Tops", width/3, 0 + vertSpace);
        }
        */
           vertSpace += (height/6);
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
