// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-8: A snake following the mouse

import processing.video.*;  /*16.11*/

/*Arxika entassw ston kwdika tou example 9.8. ton aparaithto kwdika
gia na energopoihsw th kamera (to kwdika ton pairnw aytousio apo to 
paradeigma 16.11.)*/

// Variable for capture device

Capture video;  /*16.11*/
// A variable for the color we are searching for.
color trackColor; /*16.11*/

// Declare two arrays with 50 elements.
int[] xpos = new int[50]; 
int[] ypos = new int[50];

void captureEvent(Capture video) {  /*16.11*/
// Read image from the camera
video.read();
}

void setup() {    
  size(640,360);    /*16.11*/
  video = new Capture(this, width, height);
  video.start();
  // Start off tracking for blue
  trackColor = color(0, 0, 255);
  
  // Initialize all elements of each array to zero.
  for (int i = 0; i < xpos.length; i ++ ) {
    xpos[i] = 0; 
    ypos[i] = 0;
  }
}

void draw() {
  
  video.loadPixels();    /*16.11*/
  image(video, 0, 0);
  
  // Before we begin searching, the "world record" for closest color is set to a high number that is easy for the first pixel to beat.
  float worldRecord = 500; 
  
  // XY coordinate of closest color sto mple
  int closestX = 0;
  int closestY = 0;
 
  // Begin loop to walk through every pixel
  for (int x = 0; x < video.width; x ++ ) {
    for (int y = 0; y < video.height; y ++ ) {
      int loc = x + y*video.width;
      // What is current color
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);

      // Using euclidean distance to compare colors
      float d = dist(r1, g1, b1, r2, g2, b2); // We are using the dist( ) function to compare the current color with the color we are tracking.

      // If current color is more similar to tracked color than
      // closest color, save current location and current difference
      if (d < worldRecord) {
        worldRecord = d;
        closestX = x;
        closestY = y;
      }
    }
  }

/*  // We only consider the color found if its color distance is less than 10. 
  // This threshold of 10 is arbitrary and you can adjust this number depending on how accurate you require the tracking to be.
  if (worldRecord < 10) { 
    // Draw a circle at the tracked pixel
    fill(trackColor);
    strokeWeight(4.0);
    stroke(0);
    ellipse(closestX, closestY, 16, 16);
  }*/
  
    // Shift array values
  for (int i = 0; i < xpos.length-1; i ++ ) {
    // Shift all elements down one spot. 
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. Stop at the second to last element.
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  
   // New location
  xpos[xpos.length-1] = closestX; // Update the last spot in the array with the mouse location.
  ypos[ypos.length-1] = closestY;//sti thesi tou mouseX,mouseY vazw to closestX,Y sto xrwma mple
  
  // Draw everything
  for (int i = 0; i < xpos.length; i ++) {
     // Draw an ellipse for each element in the arrays. 
     // Color and size are tied to the loop's counter: i.
    noStroke();
    fill(255-i*5,0,0);
    ellipse(xpos[i],ypos[i],i,i);
  }
}
