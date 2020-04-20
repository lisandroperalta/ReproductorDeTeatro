import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import controlP5.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Controller00 extends PApplet {

String[] filenames;
int selectorY;
int selectorX;
int tamanioTexto=20;
int altoLinea = 30;
int margen=50;

ArrayList <Clip> clips;


ControlP5 cp5;



public void setup() {
  
  String path = sketchPath()+"/videos";
  filenames = listFileNames(path);
    printArray(filenames);
    cargarInterfaz();
}

public void draw() {

  background(50);


  selectorX=15;
  selectorY= (mouseY+altoLinea)/altoLinea;
  //println("selectorY= "+selectorY+"   mouseY="+mouseY+"   largo:"+filenames.length);
  //println(mouseY);
  //println(mouseY/altoLinea);
  
 /*  int posYSelector= selectorY*altoLinea-(altoLinea/2);
  if (3<5) {
    fill(255);
    stroke (255);
    ellipse (margen/2, posYSelector, 10, 10);
    line(0, posYSelector, width, posYSelector);
  } */

  debug();

}
// This function returns all the files in a directory as an array of Strings  
public String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    // If it's not a directory
    return null;
  }
}
class Clip {


  Clip () {
  }
  
  
  
  
}
public void cargarInterfaz() {
  cp5 = new ControlP5(this);



  cp5.addButton("button")
    .setBroadcast(false)
    .setPosition(100, 100)
    .setSize(80, 40)
    .setValue(1)
    .setBroadcast(true)
    .getCaptionLabel().align(CENTER, CENTER)
    ;
}

public void debug() {
  if (modoDebug = true) {
line(0, mouseY, width, mouseY);
  }
}
boolean modoDebug =false;



public void keyReleased() {
  if (key == 'd') {
    modoDebug = !modoDebug;
    println ("modo debug = " +modoDebug);
  }
}
  public void settings() {  size(1200, 800, JAVA2D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Controller00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
