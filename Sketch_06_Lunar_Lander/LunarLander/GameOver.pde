class GameOver
{

  void show()
  {
    if (gameOver) {
      push();
      background(#4BB2E0);
      if (win) {
        fill(0);
        textAlign(CENTER);
        textSize(70);
        text("Game Over", width/2, 200);
        textSize(30);
        text("You won Yay. Good job!", width/2, 250);
      }
      if (lose) {
        fill(0);
        textAlign(CENTER);
        textSize(70);
        text("Game Over", width/2, 200);
        textSize(30);
        text("You lost...'inset smth funny'", width/2, 250);
      }
      pop();
      restartBTN();
      menuBTN();
      quitBTN();
    }
  }
  void restartBTN() // Creates the button to restart the game without going through main menu
  {
    push();
    translate(width/2-90, height/2-90);
    fill(#5BC8F5);
    if (mouseOverRestartBTN()) {
      fill(#3197C4);
    }
    stroke(#347D9D);
    strokeWeight(5);
    rect(0, 0, 180, 75, 28);
    fill(0);
    textAlign(CENTER);
    text("RESTART", 90, 50);
    pop();
  }
  boolean mouseOverRestartBTN()
  {
    if (mouseX<width/2+90&&mouseX>width/2-90&&mouseY<height/2-15&&mouseY>height/2-90 ) {
      return true;
    } else return false;
  }
  void menuBTN() // Creates the button to restart the game without going through main menu
  {
    push();
    translate(width/2-90, height/2);
    fill(#5BC8F5);
    if (mouseOverMenuBTN()) {
      fill(#3197C4);
    }
    stroke(#347D9D);
    strokeWeight(5);
    rect(0, 0, 180, 75, 28);
    fill(0);
    textAlign(CENTER);
    text("MENU", 90, 50);
    pop();
  }
  boolean mouseOverMenuBTN()
  {
    if (mouseX<width/2+90&&mouseX>width/2-90&&mouseY<height/2+75&&mouseY>height/2 ) {
      return true;
    } else return false;
  }
  void quitBTN() // Creates the button to restart the game without going through main menu
  {
    push();
    translate(width/2-90, height/2+90);
    fill(#5BC8F5);
    if (mouseOverQuitBTN()) {
      fill(#3197C4);
    }
    stroke(#347D9D);
    strokeWeight(5);
    rect(0, 0, 180, 75, 28);
    fill(0);
    textAlign(CENTER);
    text("QUIT", 90, 50);
    pop();
  }
  boolean mouseOverQuitBTN()
  {
    if (mouseX<width/2+90&&mouseX>width/2-90&&mouseY<height/2+90+75&&mouseY>height/2+90 ) {
      return true;
    } else return false;
  }
}
