// Declare variables and shape s
PShape s;
PImage img;
float w = 20;
float h = 3;
int pointsize = 20;
int count = 0;

void setup() {
  //Set up the size of the canvas and the image
  // that I will be taking pixels from
  
  size(900,600);
  img = loadImage("ocean.GIF");
  img.resize(width, height);
  background(255);
  smooth();
}

void draw() {
  
  // Picks a random location to place a point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  // Picks a random RGB value for the point
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Changes the width of my shape s with the mouse
  w = mouseX * 0.2;
  
  // Fills & creates shape s
  fill(r,g,b,100);
  s = createShape();
  s.beginShape();
  rect(x,y, w+45,3);
  rect(x+15,y+5, w+45,h);
  rect(x+30,y+10, w+45,h);
  rect(x+40,y+15, w+45,h);
  rect(x+50,y+20, w+45,h);
  rect(x+60,y+25, w+45,h);
  s.endShape();
  
  // Create points using shape s
  shape(s, x,y, pointsize,pointsize); 
}

  // With mouse click, stops loop and saves image
void mouseClicked ()
{
  noLoop();
  save("oceanart.jpg");
}
  
