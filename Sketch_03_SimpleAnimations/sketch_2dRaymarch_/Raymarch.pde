class Raymarch
{
  PVector pos;
  PVector dir= new PVector(1,0);

  void show(PVector p)
  {
    
    pushStyle();
    line(p.x, p.x, pos.x, pos.y);
    circle(pos.x, pos.y, sdfToScene(pos));
    popStyle();
  }

}
