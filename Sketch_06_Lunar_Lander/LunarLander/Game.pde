class Game
{
  PVector pos;
  float radius = 30;
  float speed = 4;
  PImage sprite;

  void show()
  {
    if (game) {
      push();
      background(#4BB2E0);
      fill(0);
      //textSize(50);
      //text("Game Screen", width/3, 300);
      //textSize(30);
      //text("press backspace to go to game over", width/3, 350);
      landingSpot();
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
      imageMode(CENTER);
      translate(pos.x, pos.y);
      rotate(rotation());
      fill(0);
      sprite.resize(1592/17,916/17);
      image(sprite, 0, 0);
     // ellipse(0, 0, 40, 30);
      pop();
    }
  }
  void updatePos()
  {
    if (game) {
      if (keyPressed)
      {
        if (key==32) {
          accelerate();
        } else return;
      }
      pos = new PVector(pos.x, pos.y+0.8);
    }
  }
  void accelerate()
  {
    PVector unitVector;
    unitVector = PVector.fromAngle(rotation());
    pos = new PVector(pos.x+unitVector.x*speed, pos.y+unitVector.y*speed+0.8);
  }
  void landingSpot()
  {
    push();
    translate(width-350, height-100);
    fill(0, 355, 0);
    rect(0,0, 120, 60);
    pop();
  }

  void checkLandingSpot() {
    if (landed()) {
      // println("win");
      win = true;
      game= false;
      gameOver = true;
    }
  }
  boolean landed()
  {
    if (pos.x<width-350+120 && pos.x>width-350 && pos.y<height-40 && pos.y>height-100) {
      return true;
    } else return false;
  }
}
