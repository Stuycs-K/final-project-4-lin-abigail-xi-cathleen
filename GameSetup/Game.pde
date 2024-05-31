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
    private String[] closetString;
    private Clothing[] closetClothing;


    public Game(int width, int height){
        avatar = new Avatar();
        currTheme = (int) Math.random()*10;
        closetString = loadStrings("Closet.txt");
        closetClothing = new Clothing[closetString.length];
        for (int i = 0; i < closetString.length; i++){
          closetClothing[i] = new Clothing(currTheme,closetString[i]);
        }
        // barbie shirt and white hoodie have bad image data/may not be an image
     
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
      
      
      
      
      
      
      
      
      
      
      /*
        rect(600,900, 300, 100);
        textSize(50);
        fill(0);
        text("New Round", 620, 970);
        
        fill(255);
        rect(width/3,(height/6)*(1/4), 20, (height/6)*(1/2));
        textSize(50);
        fill(0);
        text("Tops", 120, 700);
        
        fill(255);
        rect(width/3,(height/6)*(1/4), 20, (height/6)*(1/2));
        textSize(50);
        fill(0);
        text("Bottoms", 420, 700);
       */ 
    

    }


       
    
    

    // WIP!!!
    // might be moved to an outside class with a button
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
