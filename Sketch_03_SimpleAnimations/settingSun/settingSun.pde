/*
 A small and simple animation of a setting sun.
 Works fine until it hits the water. then wierd things happen xd.
 also you're able to show in which order the frame is drawn if you uncomment the "showFrames()"
 in draw() and lower the framerate while commenting out "showFrame()".
 */
void setup ()
{
  frameRate(60);
  size(512, 512);
  sunPos= new PVector(width/2, 0);
}

PVector sunPos;
float sunDim= 100;
int frame =0;

void draw()
{
  background(#A3BDF5);
  sunPos.y+= .5;

  showFrame();
  //showFrames();
}
void showFrame()
{
  showSea();
  showSunReflection();
  hideSunReflection();
  showSun();
  showBeach();
}
void hideSunReflection()
{
  if (sunPos.y <= height/2)
  {
    beginShape();
    noStroke();
    fill(#A3BDF5);
    vertex(sunPos.x, sunPos.y-sunDim/2);
    vertex(width/3-50, height/2);
    vertex(width/3*2+50, height/2);
    endShape(CLOSE);
  } else return;
}
void showSunReflection()
{
  beginShape();
  noStroke();
  fill(#FAF477);
  vertex(sunPos.x, sunPos.y-sunDim/2);
  vertex(width/3-50, height);
  vertex(width/3*2+50, height);
  endShape(CLOSE);
}
void showSun()
{
  pushMatrix();
  noStroke();
  fill(#FAF477);
  ellipse(sunPos.x, sunPos.y, sunDim, sunDim);
  fill(#FAF477);
  ellipse(sunPos.x, sunPos.y, 50, 50);

  popMatrix();
}

void showSea()
{
  beginShape();
  stroke(#5F84D1);
  fill(#5F84D1);
  vertex(0, height/2);
  vertex(width, height/2);
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}
void showBeach()
{
  beginShape();
  stroke(#D1AB5F);
  fill(#D1AB5F);
  vertex(0, height);
  vertex(0, height*2/3);
  bezierVertex(100, height/2, 96, 422, width, height*2/3);
  vertex(width, height);
  endShape();
}
void mouseClicked()
{
  println(mouseX +"," +mouseY);
}
void showFrames()// Very unelegant, but gets the job done.
{
  if (frame==0) {
    showSea();
    frame++;
  } else if (frame==1) {
    showSea();
    showSunReflection();
    frame++;
  } else if (frame==2) {
    showSea();
    showSunReflection();
    ;
    hideSunReflection();
    frame++;
  } else if (frame==3) {
    showSea();
    showSunReflection();
    ;
    hideSunReflection();
    showSun();
    frame++;
  } else if (frame==4) {
    showSea();
    showSunReflection();
    ;
    hideSunReflection();
    showSun();
    showBeach();
    frame++;
  } else frame=0;
}
