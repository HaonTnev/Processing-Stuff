class MainMenu
{

  void show()// Contains the visuals for the Main Menu screen
  {
    background(#4BB2E0);
    push();
    fill(0);
    textSize(50);
    text("Finding Atlantis", width/3, 300);
    textSize(30);
    text("by Noah Wendt", width/3, 350);
    pop();
  }

  boolean mouseOverBTN() // Check if the button is clicked
  {
    if (mouseX>width/3 && mouseX < width/3+180 &&mouseY>height/2&&mouseY<height/2+75) {
      return true;
    } else return false;
  }

  void startBTN() // Creates the play button
  {
    push();
    stroke(#347D9D);
    strokeWeight(5);
    fill(#3197C4);
    rect(width/3, height/2, 180, 75, 28);
    fill(0);
    text("START", width/3+50, height/2+50);
    pop();
  }
}
void smth (){

}
