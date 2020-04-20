void cargarInterfaz() {
  cp5 = new ControlP5(this);


  cp5.addButton("AbrirCarpeta")
    .setBroadcast(false) // esto es para que ni dispare evento mientras se crea
    .setValue(0)
    .setPosition(900, 50)
    .setSize(200, 20)
    .setBroadcast(true) // ya se creo, asi que lo dejo listo para disparar evento
    ;
}

void AbrirCarpeta(int theValue) {
  println(theValue);
  selectFolder("Select a folder to process:", "folderSelected");
}



void folderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    // println("User selected " + selection.getAbsolutePath());
    levantarNombresArchivos (selection.getAbsolutePath());
  }
}



////////////////////////////


void debug() {
  if (modoDebug == true) {
    pushStyle();
    stroke(255);

    line(0, mouseY, width, mouseY);
    line(mouseX, 0, mouseX, height);
    text ("mouseX: "+mouseX, mouseX+5, mouseY+10);
    text ("mouseY: "+mouseY, mouseX+5, mouseY+20);


    popStyle();
  }
}
