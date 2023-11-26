class Game
{
  PVector pos = new PVector(width/2, 100);
  float speed = 10;

  void show()
  {
    if (game) {
      push();
      background(255);
      fill(0);
      //textSize(50);
      //text("Game Screen", width/3, 300);
      //textSize(30);
      //text("press backspace to go to game over", width/3, 350);

      pop();
    }
  }
  float rotation()// Stolen from Claudius Coenen's blog post ;)
  {
    float deltaX = mouseX - pos.x;
    float deltaY = mouseY - pos.y;
    float rotation = atan2(deltaY, deltaX);
    return rotation;
  }

  void submarine()
  {
    if (game) {
      push();
      translate(pos.x, pos.y);
      rotate(rotation());
      fill(0);
      ellipse(0, 0, 40, 30);
      pop();
    }
  }

  void accelerate()
  {
    PVector unitVector;
    unitVector = PVector.fromAngle(rotation());
    pos = new PVector(pos.x+unitVector.x*speed, pos.y+unitVector.y*speed);
  }
}