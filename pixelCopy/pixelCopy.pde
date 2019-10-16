  PImage img;   
  int xRange = 80;
  int yRange = 120;
  int q = 0;
  int r = 0;
  
  void setup() {
    size(600, 800); 
    img = loadImage("12.jpg");
    background(0);
    smooth();
  }
  
  void draw() {
    //int x = int(random(img.width));
    //int y = int(random(img.height));
    //int loc = x + y*img.width;
    for(int i = 0; i<50; i++){
      q+= 0.01;
      r+=0.01;
      int x = int(random(img.width));
      int y = int(random(img.height));
      int w = int(random(xRange));
      int h = int(random(yRange));
      //copy(img, int(random(img.width)), int(random(img.height)), int(random(xRange)), int(random(yRange)), int(random(img.width)),int(random(img.height)), int(random(xRange*1.5)), int(random(yRange*2)));
      //copy(img, x, y, w, h, x,y, floor(w*random(-1.5,1.5)), floor(h*random(-2,2)));
      //copy(img, x, y, w, h, floor(x+noise(q,r)*5), floor(y+noise(r,q)*5), floor(w*noise(q+50)), floor(h*(noise(q+200))));
      copy(img, x, y, w, h, floor(x*(1+noise(q))), floor(y*(1+noise(q+150))), floor(w*noise(q+50)), floor(h*(noise(q+200))));
      //blend(img, x, y, w, h, floor(x+noise(q,r)*5), floor(y+noise(r,q)*5), floor(w*noise(q+50)), floor(h*(noise(q+200))), LIGHTEST);
  }
  }
