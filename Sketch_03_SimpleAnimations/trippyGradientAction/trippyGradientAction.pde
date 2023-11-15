/*
This is just a slight modification of Lilli-Belle Wanners code
 she showed us during her class. The draw gradient is for the most part hers.
 I did only add some slight randomness to the shapes pos & size
 and draw many more circles.
 Looks kinda cool though. 
 A bit like fall guys that are jumping up and down at a stadium.
 Anyway... I did spend far too much time at the raymarching one xd.
 */

void setup()
{
  size(750, 500);
  noStroke();
  colorMode(HSB, 360, 90, 90);
  ellipseMode(RADIUS);
  frameRate(60);
}
int dim=0;
void draw()
{
  dim +=1;
  background(0);
  for (int x= 0; x< width+width/2; x+=dim)
  {
    drawGradient(x, 0);
    drawGradient(x, height/5);
    drawGradient(x, height/3);
    drawGradient(x, height/2);
    drawGradient(x, height/3*2);
    drawGradient(x, height/5*4);
    drawGradient(x, height);
  }
}

void drawGradient(float x, float y)
{
  int radius = dim/2;
  float h = random(0, 360);
  for (int r = radius; r> 0; --r)
  {
    fill (h, 90, 90);
    ellipse(x, random(y-25, y+30), r, r);
    h = (h+1)% 360;
  }
}
