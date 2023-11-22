void setup()
{
  size (512*2, 512);  // Screen size. To be adjusted later.
  frameRate(500);   // High framerate for smooth drawing.
  noStroke();       // I want to draw only using fill.
  background(255);  // Set canvas to white.
  textSize(15);     // Set text size.
}
ColorPicker colorPicker = new ColorPicker();
InputText inputText = new InputText();
float brushSize = 5; // Size of the brush. Can be adjusted later on.
PVector p;           // I just like to store positions as Vectors.
color col= color(0); // Set painting color to black at the beginning.
boolean showUI = false;

void draw()
{
  colorPicker.showBtn();
  colorPicker.showPicker();
  
  inputText.hideInputs();
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
void mouseClicked()
{
    if (colorPicker.showWheel)
    {
      col = get(int(p.x), int(p.y));
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
    inputText.showUiText();
  }
  if (key == 'h')
  {
    if(inputText.showInputs== false)
    {
    inputText.showInputs= true;
    }else inputText.showInputs = false;
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
