/*
 I am not sure if this is counts as an animation. But I am handing it in as one anyway :)
 I was inspired by this video: https://www.youtube.com/watch?v=Cp5WWtMoeKg
 I also got usefull information out of these:
 https://www.youtube.com/watch?v=TOEi6T2mtHo&t=48s
 https://www.youtube.com/watch?v=S8AWd66hoCo
 I will continue to work on this!
 for example implementing more primatives and control over positions
 I was told in school, not to start my scentences with I.
 Also, the logic is not sound at all aas of yet, everything is spagetti
 and I can improve a lot in terms of readability. But for the moment it is ok. I guess
 */

PVector p;// position of intrest
PVector rd = new PVector(1, 1);// Ray direction

Circle c = new Circle();// Primitive circle with integrated sdf
int circlesAmount = 8;
Circle [] circles= new Circle[circlesAmount];

float maxDst = 500;
float minDst= 0.1;
int maxNumSteps = 50;
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
  p= new PVector(0, 0);
}
float rotation=-1;
void draw()
{
  if (pause==false)
  {
    background(255);
    drawCircles();
    
    stroke(255, 200, 200);
    p = new PVector(mouseX, mouseY);
    
    showStep(p);
    rd= new PVector(rd.x+sdfToScene(p), rd.y);
    marchOnRay(p, rd);      
    smallRedDot(p);
  }
 // saveFrame("output/image####.png");

}
void smallRedDot(PVector p)
{
  pushStyle(); 
  fill(#F51616);
  ellipse (p.x, p.y, 5, 5);
  popStyle();
}
void marchOnRay(PVector p, PVector direction)
{
  // get new point on the radius of the circle and repeat sdf there
  PVector nextStep = p ;
  int stepsTaken= 0;
  // nextStep.add(direction);
  // draw new circle at the mentioned location if x > minDst
  // continue like that with the same directional vector until x<minDst
  // which would mean a hit occured.
  for (int numSteps=0; numSteps<maxNumSteps; numSteps++)
  {

    line(p.x, p.y, p.x+direction.x, p.y+direction.y);
    nextStep=new PVector(nextStep.x+sdfToScene(nextStep), nextStep.y);
    showStep(nextStep);
    stepsTaken ++;
    if (sdfToScene(nextStep)<= minDst&&sdfToScene(nextStep)>0)
    {
      println(nextStep +" "+ stepsTaken);
      pushStyle();
      fill(#20F516);
      ellipse(nextStep.x, nextStep.y, 5, 5);
      popStyle();
      numSteps=maxNumSteps;
    }
  }
}
void showStep(PVector p)
{
  pushStyle();
  ellipse(p.x, p.y, 2, 2);// show center of circle
  ellipse(p.x, p.y, sdfToScene(p), sdfToScene(p));// show radius of ircle
  popStyle();
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
  return dstToScene;
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
