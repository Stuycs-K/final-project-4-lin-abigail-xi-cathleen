import java.io.*;
import java.util.*;

public class test{
    public static void main(String[] args){
        Clothing bald = new Hair(0,"0_hair_bald.png");
        Clothing tShirt = new Top(0,"0_top_tShirt.png");
        Avatar me = new Avatar();
        System.out.println(me.addClothing(bald));
        System.out.println(me.addClothing(tShirt));
        System.out.println(me.removeClothing(bald));
        String result = "";
        for (int i = 0; i < me.getClothing().size(); i++){
            result += me.getClothing().get(i).getFile() + " ";
        }
        System.out.println(result);
    }
}