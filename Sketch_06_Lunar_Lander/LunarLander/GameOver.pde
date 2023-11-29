class GameOver
{

  void show()
  {
    if (gameOver) {
      push();
      background(#4BB2E0);
      if (win) {
        fill(0);
        textSize(50);
        text("Game Over", width/3, 300);
        textSize(30);
        text("You won Yay. Good job!", width/3, 350);
      }
      pop();
      restartBTN();
    }
  }
  void restartBTN() // Creates the button to restart the game without going through main menu
  {
    push();
    if(mouseOverRestartBTN()){
    fill(#3197C4); }
    stroke(#347D9D);
    strokeWeight(5);
   
    rect(width/3, height/2, 180, 75, 28);
    fill(0);
    text("RESTART", width/3+35, height/2+50);
    pop();
  }
  boolean mouseOverRestartBTN()
  {
    if(mouseX<width/3+180&&mouseX>width/3&&mouseY<height/2+75&&mouseY>height/2 ){
    return true;
    }else return false;
  }
}
