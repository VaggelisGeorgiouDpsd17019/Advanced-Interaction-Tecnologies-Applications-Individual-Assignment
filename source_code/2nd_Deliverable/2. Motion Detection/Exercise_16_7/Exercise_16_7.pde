import processing.video.*;

// Variable for capture device
Capture video;

PImage prevFrame;//16.13
float threshold = 150;//16.13

void setup() {
  size(320, 240);
  video = new Capture(this, width, height);
  video.start();
  prevFrame = createImage(video.width, video.height, RGB); /*16.13*/
}

void captureEvent(Capture video) {
  // Save previous frame for motion detection!!
  prevFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height); // Before we read the new frame, we always save the previous frame for comparison!
  prevFrame.updatePixels();  // Read image from the camera
  // Read image from the camera
  video.read();
}

void draw() {
  video.loadPixels();/*16.13*/
  prevFrame.loadPixels();/*16.13*/
  image(video, 0, 0);
  
  /*Xreiazomaste to sum twn x kai to sum twn y, wste na broume to averageX kai to averageY, giati aytes tha einai oi metavlites poy tha mpoyn sthn
  sxediasi tis elleipshs (stis thesis x,y antistoixws). Etsi to programma tha entopizei thn average kinhsh kai tha sxediazei mia elleipsh sta shmeia averageX,averageY*/
  float sumX=0; 
  float sumY=0;
  int motionCount=0;
  
  // Begin loop to walk through every pixel - Ola einai apo to /*16.13*/ Allagi ekana sta eksis: if diff>threshold display black - edw thelw apla na emfanizei ton kyklo
  for (int x = 0; x < video.width; x ++ ) {
    for (int y = 0; y < video.height; y ++ ) {

      int loc = x + y*video.width;            // Step 1, what is the 1D pixel location
      color current = video.pixels[loc];      // Step 2, what is the current color
      color previous = prevFrame.pixels[loc]; // Step 3, what is the previous color

      // Step 4, compare colors (previous vs. current)
      float r1 = red(current); 
      float g1 = green(current); 
      float b1 = blue(current);
      float r2 = red(previous); 
      float g2 = green(previous); 
      float b2 = blue(previous);
      float diff = dist(r1, g1, b1, r2, g2, b2);

      // Step 5, How different are the colors?
      // If the color at that pixel has changed, then there is motion at that pixel.
      /*An yparxei kinisi se kapoio pixel (an h diafora twn previous kai twn current pixels einai megalyterh apto threshold), prosthese ola ta x kai ola ta y*/
      if (diff > threshold) { 
        sumX += x;
        sumY += y;
        motionCount++;
    }
  }
}
 // average location is total location divided by the number of motion pixels.
  float avgX = sumX / motionCount; 
  float avgY = sumY / motionCount; 

  // Draw a circle based on average motion
  smooth();
  stroke(230,250,50);
  noFill();
  ellipse(avgX, avgY, 35, 35);
}
