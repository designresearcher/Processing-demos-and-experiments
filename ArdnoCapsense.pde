//Changes the shape acccording to sensor input from arduino. 
// (for my personal reference: Works with program sendtoprocessing.ino)
//the mapping values received need to be adjusted accordingly in Arduino code
//Written by Anmol Srivastava


import processing.serial.*; // library for initiating and establishing serial comm with arduino and processing
 
Serial myPort;  // Define the serial port
 
// a variable to store the incoming serial data to
int inByte = 0;
 
void setup() {

  size(600, 600);  //display window size
    
  myPort = new Serial(this, "/dev/cu.usbmodem14201", 9600);  //input appropriate serial port and baud rate
}
 
void draw() {
  // check if there is any serial data
  while (myPort.available() > 0) {
    // set inByte to the incoming value from serial
    inByte  = myPort.read();
    // print incoming serial values for reference, just in case
    println(inByte);
  }
 
  // draw an ellipse with the size relative to serial values read from the arduino
  background(0);
  ellipse(width/2, height/2, inByte, inByte);
  ellipseMode(CENTER);
  fill(inByte, inByte, inByte);
}
