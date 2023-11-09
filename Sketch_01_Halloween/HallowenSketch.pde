
void setup() // Setup of initial envoirnment.
{
  size(1000, 1000); // Screen size.
  background(#242381);
  fill(255); // Set fill to white.
  p1 = new PVector (width, height);

  // Put some spiderwebs on canvas. Ads a bit of randomness.
  for (int i =0; i <5; i++)
  {
    pushMatrix();
    translate(random(0, width), random ( 0, height/2));
    net();
    popMatrix();
  }


  drawFence();// Put fence up.
 pushMatrix();
  
 translate(500, 500);
  
  pumpkin();// Put pumpkin in.
  popMatrix();
}

// Set variables to be used Later on
PVector p0 = new PVector(500, 200); // Vector used for testing
PVector p1;

void pumpkin()
{
  push();
  scale(0.5);
  // I did want to make this adapting to screen size. Didn't work so far.
  //Start of pumpkin.
  fill(#EAA640); //Color picked via ColorSelector.
  stroke(0);
  //Head
  ellipse  (p1.x/2, p1.y/2, 700, 500);

  bezier(p1.x/2, 250, 0, height/3, height/4, p1.y/4*3, p1.y/2, p1.y/4*3);
  bezier(p1.x/2, 250, width, height/3, p1.y/3*2, height/4*3, p1.y/2, p1.y/4*3);
  bezier(p1.x/2, 250, width/4, height/2, p1.y/2, p1.y/4*3, p1.y/2, p1.y/4*3);
  bezier(p1.x/2, 250, width/4*3, height/2, p1.y/2, p1.y/4*3, p1.y/2, p1.y/4*3);
  fill(#896125);
  rect (p1.x/2-10, p1.y/4*1-80, 20, 80);
  fill(#3E2C11);

  pushMatrix();
  translate (400, 400);
  rotate (30);
  ellipse(0, 0, 60, 125);
  popMatrix();

  pushMatrix();
  translate(600, 400);
  rotate(-30);
  ellipse(0, 0, 60, 125);
  popMatrix();

  //mouth
  bezier(350, 600, 350, 700, 650, 600, 650, 600);
  pop();
}

void drawFence()// Cycle though canvas with 100 at a time. Put bars & spikes there.
{
  noStroke();
  int barsCount= width /100;
  fill(0);
  rect(0, 750, width, 20);
  rect(0, 850, width, 20);
  for (int i =0; i<barsCount; i ++)
  {
    rect (i*100, height/3*2, 20, height/3 );
    pushMatrix();
    translate(i*100+10, height/3*2);
    triangle(15, 0, -15, 0, 0, -35);
    popMatrix();
  }
}
void net()
{
  noFill();
  stroke(255);
  for (int i =0; i<9; i++)
  {
    circle(0, 0, 8*i*2);
    rotate( 30);
    line(0, 0, 0, 73);
  }
}
