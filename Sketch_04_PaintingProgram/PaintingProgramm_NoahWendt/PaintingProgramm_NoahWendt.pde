void setup()
{
  size (512, 512);  // Screen size. To be adjusted later.
  frameRate(500);   // High framerate for smooth drawing.
  noStroke();       // I want to draw only using fill.
  background(255);  // Set canvas to white.
  textSize(15);     // Set text size.
}

float brushSize = 5; // Size of the brush. Can be adjusted later on.
PVector p;           // I just like to store positions as Vectors.
color col= color(0); // Set painting color to black at the beginning.
boolean showUI = false;

void draw()
{

  p = new PVector (mouseX, mouseY);
}
void mouseDragged()
{
  if (key==  '1')
  {
    roundBrush();
  }
  if (key==  '2')
  {
    squareBrush();
  }
}

void mouseWheel(MouseEvent event) {

  float e = event.getCount();
  brushSize+=e ;
  if (brushSize > 50)
  {
    brushSize=50;
  }
  if (brushSize<0 )
  {
    brushSize= 0;
  }
}

void keyReleased()
{
  if (key == 32)
  {
    background(255);
  }
  if (key == 9)
  {
    showUiText();
  }
  if (key == 'h')
  {
    hideUiText();
  }
}

void squareBrush()
{
  pushStyle();
  fill(col);
  rect(mouseX, mouseY, brushSize, brushSize);
  popStyle();
}

void roundBrush()
{
  pushStyle();
  fill(col);
  circle(mouseX, mouseY, brushSize);
  popStyle();
}
void hideUiText()
{
  pushStyle();
  fill(0);
  text("show inputs: tab", 25, 25);
  fill(255);
  text("Hide inputs: h", 25, 25);
  text("Draw: left mouse", 25, 40);
  text("Round Brush: 1", 25, 55);
  text("Square Brush: 2", 25, 70);
  text("Mouse Wheel: Brush size", 25, 85);
  text("Clear canvas: Space", 25, 100);
  popStyle();
}
void showUiText()
{

  pushStyle();
  fill(255);
  text("show inputs: tab", 25, 25);
  fill(0);
  text("Hide inputs: h", 25, 25);
  text("Draw: left mouse", 25, 40);
  text("Round Brush: 1", 25, 55);
  text("Square Brush: 2", 25, 70);
  text("Mouse Wheel: Brush size", 25, 85);
  text("Clear canvas: Space", 25, 100);
  popStyle();
}
