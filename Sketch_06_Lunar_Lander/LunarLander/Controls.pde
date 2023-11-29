class Controlls
{
  void show()// Show player the control scheme
  {
    if (howToPlay) {
      push();
      background(#4BB2E0);
      fill(0);
      textSize(50);
      text("Controls", width/3, 300);
      textSize(30);
      text("Use mouse to steer", width/3, 350);
      text("Press Space to accelerate", width/3, 400);
      text("Swim through air bubbles to fill up oxygen", width/3, 450);
      text("Don't bump into rocks", width/3, 500);
      text("Press Space continue", width/3, 550);
      pop();
    }
  }
}
