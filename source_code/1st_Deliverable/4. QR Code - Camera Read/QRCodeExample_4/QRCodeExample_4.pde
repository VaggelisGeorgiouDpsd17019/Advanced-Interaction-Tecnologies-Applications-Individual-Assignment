/*
QRcode reader
 Generate images from a QRcode generator such as
 http://qrcode.kaywa.com/ and put them in this sketch's
 data folder.
 Press spacebar to read from the camera, generate an image,
 and scan for barcodes.  Press f to read from a file and scan.
 Press s for camera settings.
 Created 9 June 2007
 by Tom Igoe / Daniel Shiffman
 */

PImage img; //prosthiki grammis kwdika gia parousiash eikonas - dokimase na to kaneis sxolio

import processing.video.*;
import qrcodeprocessing.*;

Capture video;                                 // instance of the video capture library
String statusMsg = "Waiting for an image";     // a string to return messages:

// Decoder object from prdecoder library
Decoder decoder;

void setup() {
  size(600, 400); //allazw to size apo (400,320) se (600,400) dokimastika, epeidi leei katw "java.lang.ArrayIndexOutOfBoundsException: 100" - Den paizei rolo, to Array index out of bounds
  //sxetizetai me 
  video = new Capture(this,"pipeline:autovideosrc"); //to allazw apo (this, 320, 240); se (this,"pipeline:autovideosrc");
  video.start();
  img = loadImage("QRCODE_DPSD17019_GITHUB.png"); //prosthiki grammis kwdika gia parousiash eikonas - dokimase na to kaneis sxolio
  // Create a decoder object
  decoder = new Decoder(this);
}

// When the decoder object finishes
// this method will be invoked.
void decoderEvent(Decoder decoder) {
  statusMsg = decoder.getDecodedString();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(0);

  // Display video
  image(video, 0, 0);
  // Display status
  text(statusMsg, 10, height-4);

  // If we are currently decoding
  if (decoder.decoding()) {
    // Display the image being decoded
    PImage show = decoder.getImage();
    image(show, 0, 0, show.width/4, show.height/4); 
    statusMsg = "Decoding image";
    for (int i = 0; i < (frameCount/2) % 10; i++) statusMsg += ".";
    decoder.decodeImage(img); //prosthiki grammis kwdika gia decoding apo to tutorial tou QR CODE - dokimase na to kaneis sxolio
  }
}

void keyReleased() {
  // Depending on which key is hit, do different things:
  switch (key) {
  case ' ':        
    // Spacebar takes a picture and tests it:
    // copy it to the PImage savedFrame:
    PImage savedFrame = createImage(video.width, video.height, RGB);
    savedFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
    savedFrame.updatePixels();
    // Decode savedFrame
    decoder.decodeImage(savedFrame);
    break;
  case 'f':    // f runs a test on a file
    PImage preservedFrame = loadImage("QRCODE_DPSD17019_GITHUB.png");
    // Decode file
    decoder.decodeImage(preservedFrame);
    break;
  }
}
