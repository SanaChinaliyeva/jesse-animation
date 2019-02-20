/* @pjs preload="jesse.jpg"; */
PImage img;

void setup()
{
  size(1000,565);
  img = loadImage("jesse.jpg");
  background(255);
}


  int dx=50;
int dy=54;
int x = 0;
int y = 0; 
        void draw()
{
    x=dx+x;
  y=dy+y;
  if (x > 1000)
  dx=dx*-1;

   if (y > 565) 
   dy=dy*-1;
  
  if (x<0) 
  dx=dx*-1;
  
  if (y<0)
  dy=dy*-1;

    color c = img.get(x,y);
    fill(c);
    noStroke();
    int w = (int)random(30);
    ellipse(x,y,w,w);
  }
