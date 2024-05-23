import java.io.*;
import java.util.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class test{

    public static void main(String[] args){
        // basic setup for scanning in all of the future clothes
        int theme = 0;
        Avatar you = new Avatar();
        try {
            File file = new File("clothingNames.txt");
            Scanner input = new Scanner(file);
            while (input.hasNextLine()) {
                String line = input.nextLine();
                // int themeIndex = Integer.parseInt(line.substring(0,1));
                // int clothingType = Integer.parseInt(line.substring(1,2));
                // String clothingName = line.substring(2,line.length()-4);
                you.addClothing(new Clothing(theme,line));
            }
            input.close();//releases the file from your program

        } catch (FileNotFoundException ex) {
        }

        String result = "";
        for (int i = 0; i < you.getClothing().size(); i++){
            result += you.getClothing().get(i).getFile() + " ";
        }
        System.out.println(result);

        // Clothing ukulele = new Accessories(5,"55Ukulele.png");
        // Clothing smile = new Face(5,"52Smile.png");
        // Avatar me = new Avatar();
        // me.addClothing(ukulele);
        // me.calculateRating();
        // System.out.println("Rating: "+me.getRating());
    }
}