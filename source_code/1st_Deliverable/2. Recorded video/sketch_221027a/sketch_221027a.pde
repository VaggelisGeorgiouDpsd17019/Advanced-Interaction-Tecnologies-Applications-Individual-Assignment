

import processing.video.*;
Movie movie;

void setup() {
size(700, 800);
movie = new Movie(this, "roaches.mov");
movie.loop();
//movie.speed(4);
}

void movieEvent(Movie movie) {
movie.read();
}


void draw() {
  float r = map(mouseX,0,width,0,4);
  movie.speed(r);
  image(movie, 0, 0);
}
