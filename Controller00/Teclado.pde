boolean modoDebug =false;



void keyReleased() {
  if (key == 'd') {
    modoDebug = !modoDebug;
    println ("modo debug = " +modoDebug);
  }
}
