class Clip {
  String miNombre;
  String miFullPath;
  int miId;


  Clip (String path, String nombre, int id) {
    miNombre=nombre;
    miFullPath=path;
    println(nombre + "Cargado ");
    miId = id;
    
    cp5.addButton(nombre)
      .setBroadcast(false) // esto es para que ni dispare evento mientras se crea
      .setValue(0)
      .setPosition(50, 50+id*30)
      .setSize(200, 25)
      .plugTo( this, "enviar" )
     .setBroadcast(true) // ya se creo, asi que lo dejo listo para disparar evento
      ;
  }

  void enviar() {
    println(miFullPath);
  }


  void dibujar(int i) {


    pushStyle();
    noFill();
    stroke(255);

    //text(miFullPath, 50, 50+i*25); 

    popStyle();
  }
}
