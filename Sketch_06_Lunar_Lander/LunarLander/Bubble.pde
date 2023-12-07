class Bubble
{
  boolean popped= false;
  PVector pos;
  float speedY;

  void setPos()
  {
    pos = new PVector(random(0, width), random(700, height));
  }
  void setSpeedY()
  {
    speedY= random(.2, 1);
  }
  void updatePos()
  {
    pos= new PVector(pos.x, pos.y- speedY);
  }

  void show()
  {
    if (game && ! popped) {
      push();
      noFill();
      strokeWeight(3);
      stroke(200);
      circle(pos.x, pos.y, 25);
      pop();
    }
  }
  void hit()
  {
    if (dist(Game.pos.x, Game.pos.y, pos.x, pos.y)<25&&!popped) {
      o2Meter.o2Value+=10;
      popped=true;
    }
  }
}
