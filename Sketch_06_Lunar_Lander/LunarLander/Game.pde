class Game
{
  void show()
  {
    if (game) {
      push();
      background(255);
      fill(0);
      textSize(50);
      text("Game Screen", width/3, 300);
      textSize(30);
      text("press backspace to go to game over", width/3, 350);
      pop();
    }
  }
}
