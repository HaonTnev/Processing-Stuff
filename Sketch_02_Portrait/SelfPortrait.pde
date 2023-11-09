/* 
The code should be preatty straightforward, 
the function names generally represent what it does respectively. 
I did try to implement a simple animation using framrate() & draw()
in combination with function calls, while working with simple shapes. 
It does not look like me at all, so I guess I failed XD. But I'm ok with that. 
I used no resources exept the processing reference. 
So I opend the reference for each function at least once. 
*/
void setup ()
{
  size(1000, 1000);
  frameRate(2);
  noFill();
  stroke(255);
  strokeWeight(4);
}

int mouthOpened;

void draw()
{
  background(0);  
  push();
  translate(width/2, height/2);
  scale(.6);
  faceShape();  
  if (mouthOpened==0)
  {
    mouthOpen();
    eyesClosed();
  } 
  else
  {
    mouthClosed();
    eyes();
  }
  pop();
  haha();
}

void mousePressed()
{
  println(mouseX + " , " + mouseY);
}

void faceShape()
{
  ellipse(0, 0, 500, 600);
  // Nose
  triangle(0, -100, 30, 50, -30, 50);
  // Beard
  beginShape();
  vertex(250, 0);
  vertex(0, 300);
  vertex(-250, 0);
  endShape();
}

void eyes()
{
  // Eyes
  ellipse(-100, -100, 80, 30);
  ellipse(100, -100, 80, 30);
}

void eyesClosed()
{
  // Eyes
  line(-100, -130, -50, -100);
  line(100, -130, 50, -100);
  line(-100, -70, -50, -100);
  line(100, -70, 50, -100);
}

void mouthOpen()
{
  triangle(-100, 100, 100, 100, 0, 200);
  mouthOpened= 1;
}

void mouthClosed ()
{
  line(-100, 100, 100, 100);
  mouthOpened=0;
}

void haha()
{
  textSize(50);
  text ("HAHA", random(width), random(height));
}
