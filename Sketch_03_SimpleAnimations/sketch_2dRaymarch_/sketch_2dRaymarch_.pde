/*
I am not sure if this is counts as an animation. but I am handing it in as one anyway :)
 I was inspired by this video: https://www.youtube.com/watch?v=Cp5WWtMoeKg
 I also got usefull information out of these:
 https://www.youtube.com/watch?v=TOEi6T2mtHo&t=48s
 https://www.youtube.com/watch?v=S8AWd66hoCo
 I will continue to work on this
 for example implementing more primatives and control over positions
 I was told not to start my scentences with I.
 Also the logic is not sound, everything is spagetti
 and I can improve a lot in terms of readability. but for the moment it is ok. I guess
 */

PVector p;// position of intrest
PVector rd = new PVector(1, 0);// Ray direction

Circle c = new Circle();// Primitive circle with integrated sdf
int circlesAmount = 15;
Circle [] circles= new Circle[circlesAmount];

float maxDst = 500;
float minDst= 0.01;
boolean pause= false;

Raymarch rm = new Raymarch();

void setup()
{
  frameRate(60);
  size(512*2, 512*2);
  ellipseMode(RADIUS);
  createCircles();
  colorMode(HSB, 360, 100, 100);
  noFill();
  stroke(255);
}
float rotation=-1;
void draw()
{
  if (pause==false)
  {
    background(255);
    drawCircles();

    p = new PVector(mouseX, mouseY);

    stroke(255, 200, 200);
    showStuff(p);

    for (int numSteps=0; numSteps<100; numSteps++)
    {

      rd= new PVector(rd.x+sdfToScene(p), rd.y);
      line(p.x, p.y, p.x+rd.x, p.y+rd.y);
      showStuff(p.add(rd));
      PVector nextStep = p.add(rd);
      if (sdfToScene(p)<= minDst)
      {
        numSteps=100;
      }
    }

    // get new point on the radius of the circle and repeat sdf there
    // draw new circle at the mentioned location if x > minDst
    // continue like that with the same directional vector until x<minDst
    // which would mean a hit occured.
  }
}
void showStuff(PVector pos)
{
  pushStyle();
  ellipse(pos.x, pos.y, 2, 2);// show center of circle
  ellipse(pos.x, pos.y, sdfToScene(pos), sdfToScene(pos));// show radius of ircle
  popStyle();
}
void mouseClicked()
{
  if (pause==false)
  {
    pause=true;
  } else pause=false;
}

void drawCircles()//Always draw circles at the same location
{
  for (int i= 0; i<circlesAmount; i ++)
  {
    circles[i].show();
  }
}

void createCircles()// Initialize circles and set theit values to be used later on.
{
  for (int i= 0; i<circlesAmount; i ++)
  {
    c = new Circle();
    c.origin = new PVector (random(0, width), random(0, height));
    c.radius = random(70, 150);
    circles[i]= c;
  }
}
float sdfToScene(PVector p)
{
  float dstToScene = maxDst;
  for (int i= 0; i<circlesAmount; i ++)
  {
    float dstToCircle = circles[i].sdfCircle(p);
    dstToScene= min(dstToCircle, dstToScene);
    circles[i].col = color(dstToCircle, 0, 0);
  }
  println(dstToScene);
  return dstToScene;
}
