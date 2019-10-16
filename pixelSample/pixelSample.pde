PImage img;
int pointillize = 16;
float q = 0;

void setup() {
  size(600,800);
  img = loadImage("3.jpg");
  background(0);
  smooth();
}

int off(int loc,int off){
    //q+= 0.5;
    //return loc+floor(constrain(int(off+off*noise(q)),-loc, img.pixels.length-loc-1));
  return loc+floor(constrain(random(-off,off),-loc, img.pixels.length-loc-1));
}

void draw() {
  // Pick a random point
    for(int i = 0; i<200; i++){
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  // Look up the RGB color in the source image

  //loadPixels();
  //float r = red(img.pixels[loc]);
  //float g = green(img.pixels[loc]);
  //float b = blue(img.pixels[loc]);
  //noStroke();

//seperate RGB
  loadPixels();
  float r = red(img.pixels[off(loc,50)]);
  float g = green(img.pixels[off(loc,50)]);
  float b = blue(img.pixels[off(loc,50)]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,50);
  ellipse(x,y,pointillize,pointillize);
  }
}
