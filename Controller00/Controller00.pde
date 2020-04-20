String[] filenames;
int selectorY;
int selectorX;
int tamanioTexto=20;
int altoLinea = 30;
int margen=50;


public void setup() {
  size(1200, 800, JAVA2D);
  String path = sketchPath()+"/videos";
  filenames = listFileNames(path);
  printArray(filenames);
}

public void draw() {

  background(50);

  for (int i=0; i<filenames.length; i++) {
    textSize(tamanioTexto);
    text (i+" "+filenames[i], margen, margen+altoLinea*i);
  }

  selectorX=15;
  selectorY= (mouseY+altoLinea)/altoLinea;
  //  println("selectorY= "+selectorY+"   mouseY="+mouseY+"   largo:"+filenames.length);
  println(mouseY);
  println(mouseY/altoLinea);
  
  int posYSelector= selectorY*altoLinea-(altoLinea/2);
  if (3<5) {

    fill(255);
    stroke (255);
    ellipse (margen/2, posYSelector, 10, 10);
    line(0, posYSelector, width, posYSelector);
  }
}




// This function returns all the files in a directory as an array of Strings  
String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    // If it's not a directory
    return null;
  }
}
