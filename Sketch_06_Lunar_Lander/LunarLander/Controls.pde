class Controlls
{
  void show()// Show player the control scheme
  {
    if (howToPlay) {
      push();
      background(#4BB2E0);
      fill(0);
      textSize(60);
      text("Controls", width/2, 250);
      textSize(30);
      text("Use mouse to steer", width/2, 350);
      text("Press Space to accelerate", width/2, 400);
      text("Swim through air bubbles to fill up oxygen", width/2, 450);
      text("Don't bump into piranias", width/2, 500);
      textSize(25);
      text("Press Space continue", width/2, 650);
      pop();
    }
  }
}
