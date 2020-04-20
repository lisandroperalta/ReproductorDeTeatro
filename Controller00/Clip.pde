class Clip {
  String miNombre;
  String miFullPath;
  int miId;


  Clip (String path, String nombre) {
    miNombre=nombre;
    miFullPath=path;
    println(nombre + "Cargado ");
  }


  void dibujar(int i) {


    pushStyle();
    noFill();
    stroke(255);

    text(miFullPath, 50, 50+i*25); 

    popStyle();
  }
}
