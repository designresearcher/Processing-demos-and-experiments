//Demo code for showing how to vary size of a rectangle and background clolr with mouse movement
//Written by Anmol Srivastava as a small demonstration for visualizing rectangular shapes, and mouse movements


void setup()
{
  size(640, 360);
}

void draw()
{
  float bkgndclr = dist(width/2, height/2, mouseX, mouseY);
  background(bkgndclr);   //change background color in grayscale with mouse movement 
  // background(bkgndclr); //caynish white color in the background --- #defffd
  fill(#abcfff); // pale cornflower blue color fill in rectangle
  stroke(50); // boder size width for rectangle
  rectMode(CENTER); // defines first two parameters of rect (), i.e. for us width/2, height/2 as centre. 
  //It can be changed to RADIUS, CORNER, etc.
  rect(width/2,height/2,mouseX,mouseY); //first two parameters define the position. Last two, i.e. mouseX, mouseY define the size
}
