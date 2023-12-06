class MainMenu
{

  void show()// Contains the visuals for the Main Menu screen
  {
    background(#4BB2E0);
    push();
    fill(0);
    textSize(80);
    text("FINDING ATLANTIS", width/2, 200);
    textSize(25);
    text("by Noah Wendt", width/3, 250);
    pop();
    playBTN();
    controllsBTN();
    quitBTN();
  }

  void controllsBTN() // Creates the button to restart the game without going through main menu
  {
    push();
    translate(width/2-90, height/2-90);
    fill(#5BC8F5);
    if (mouseOverControllsBTN()) {
      fill(#3197C4);
    }
    stroke(#347D9D);
    strokeWeight(5);
    rect(0, 0, 180, 75, 28);
    fill(0);
    textAlign(CENTER);
    text("CONTROLLS", 90, 50);
    pop();
  }
  boolean mouseOverControllsBTN()
  {
    if (mouseX<width/2+90&&mouseX>width/2-90&&mouseY<height/2-15&&mouseY>height/2-90 ) {
      return true;
    } else return false;
  }
  void playBTN() // Creates the button to restart the game without going through main menu
  {
    push();
    translate(width/2-90, height/2);
    fill(#5BC8F5);
    if (mouseOverPlayBTN()) {
      fill(#3197C4);
    }
    stroke(#347D9D);
    strokeWeight(5);
    rect(0, 0, 180, 75, 28);
    fill(0);
    textAlign(CENTER);
    text("PLAY", 90, 50);
    pop();
  }
  boolean mouseOverPlayBTN()
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
