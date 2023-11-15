class Circle
{
  PVector origin;
  float radius;
  color col= (255);
  void show()
  {
    pushStyle();
    stroke(col);
    ellipse (origin.x, origin.y, radius, radius);
    popStyle();
  }

  float sdfCircle(PVector p)
  {
    return  dist(p.x, p.y, origin.x, origin.y)-radius;
  }
}
