class Obstacle
{

  PVector pos;
  float speedX;
  
  void setPos()
  {
    pos = new PVector(random(200, width), random(200, height));
  }
  
  void setSpeedX()
  {
    speedX = random(-3, 3);
  }
  
  void show()
  {
    if (game) {
      rect(pos.x, pos.y, 50, 50);
    }
  }

  void updatePos()
  {
    if (game) {
      pos = new PVector (pos.x-speedX, pos.y);
    }
  }


  boolean hit()
  {
    if (dist(Game.pos.x, Game.pos.y, this.pos.x, this.pos.y)< Game.radius)
    {
      o2Meter.o2Value -= 10;
     // println("hit");
      return true;
    } else return false;
  }
}
