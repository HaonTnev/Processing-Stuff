/*
Well I do not now whar to say. Both functions do the same. 
The whileGrid() is much faster for some reason. 
Both should work on any specified size. 
*/

void setup()
{
  size(500, 1000);
  stroke(0);
  whileGrid();
}

void forGrid()
{
  for (int x= 0; x<=width; x+=20) {
    for (int y=0; y<=height; y+=20) {
      line(x, 0, x, height);
      line(0, y, width, y);
    }
  }
}

void whileGrid()
{
  int x = width;
  int y = height;
  while (x>0) {
    while (y>0) {
      line(x, 0, x, height);
      line(0, y, width, y);
      x-=20;
      y-=20;
    }
  }
}
