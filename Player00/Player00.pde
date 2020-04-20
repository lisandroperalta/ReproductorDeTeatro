/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Movie movie;

void setup() {
  size(640, 360);
  background(0);
  // Load and play the video in a loop
  movie = new Movie(this, "piribiri.mp4");
  movie.play();
  movie.pause();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  //if (movie.available() == true) {
  //  movie.read(); 
  //}
  image(movie, 0, 0, width, height);
}

void keyReleased() {

  if (key=='z') {
    movie.play();
    println("play");
  }

  if (key=='x') {
    movie.stop();
    println("stop");
  }
  if (key=='c') {
    movie.stop();
    movie = new Movie(this, "transit.mov"); 
    movie.play();
    println("cambio");
  }
  if (key=='v') {
    movie.stop();
    movie = new Movie(this, "piribiri.mp4"); 
    movie.play();
    println("cambio2");
  }
  
  if (key=='n') {
    movie.stop();
    movie = new Movie(this, "Anotación 2020-03-17 222115.png"); 
    movie.play();
    println("cambio3");
  }
}
