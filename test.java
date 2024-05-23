import java.io.*;
import java.util.*;

public class test{
    public static void main(String[] args){
        Clothing ukulele = new Accessories(0,"55Ukulele.png");
        Avatar me = new Avatar();
        System.out.println(me.addClothing(ukulele));
        String result = "";
        for (int i = 0; i < me.getClothing().size(); i++){
            result += me.getClothing().get(i).getFile() + " ";
        }
        System.out.println(result);
        System.out.println(me.getRating());
    }
}