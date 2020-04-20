String[] filenames;
int selectorY;
int selectorX;
int tamanioTexto=20;
int altoLinea = 30;
int margen=50;

ArrayList <Clip> clips;

import controlP5.*;
ControlP5 cp5;


public void setup() {
  size(1200, 800, JAVA2D);
  clips = new ArrayList <Clip>();
  cargarInterfaz();
}

public void draw() {
  textSize(12);

  background(50);
  if (clips.size()>0) {
    for (int i = 0; i <= clips.size()-1; i++) { 
      // An ArrayList doesn't know what it is storing so we have to cast the object coming out
      Clip esteClip = clips.get(i);
      esteClip.dibujar(i);
    }
  }
  debug();
}
