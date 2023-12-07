class Obstacle
{
  PImage sprite;
  PImage sprite2;
  PVector pos;
  float speedX;

  void setPos()
  {
    pos = new PVector(random(0, width), random(200, height));
  }

  void setSpeedX()
  {
    speedX = random(-3, 3);
  }

  void show()
  {
    if (game) {
      sprite.resize(50, 50);
      sprite2.resize(50, 50);
      if(speedX>0){
      image(sprite2, pos.x, pos.y);
      }else image(sprite, pos.x, pos.y);
     // rect(pos.x, pos.y, 50, 50);
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
    if (game) {
      if (dist(Game.pos.x, Game.pos.y, this.pos.x, this.pos.y)< Game.radius)
      {
        o2Meter.o2Value -= 3;
        // println("hit");
        return true;
      } else return false;
    }else return false;
  }
}
