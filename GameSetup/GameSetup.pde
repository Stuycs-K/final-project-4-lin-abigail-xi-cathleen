import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
Menu menu;
Scanner Closet;
void setup(){
  size(1200,1200);
  menu = new Menu();
}
void draw(){
   menu.AccessoriesTab();
}
