class InputText
{
  // I really like the way I did the color Picker so I am shamelessly copying my own code 
  // Or maybe I will do the photoshop toolbar on the side
  // Lets see how much enthusiasm I have tomorrow. 
  // In theory I have to only have to one button and doo boolean shit.
  // dunno 
  // also very sorry for not commenting. Quite tired already. 
  
  boolean showInputs = false;

  void hideInputs()
  {
    push();
    fill(0);
    text("Inputs", 40, 10);
    pop();
    if (showInputs== false)
    {
      push();
      stroke(0);
      strokeWeight(2);
      beginShape();
      vertex(0, 0);
      vertex(30, 0);
      vertex(30, 30);
      vertex(0, 30);
      endShape(CLOSE);
      triangle(20, 15, 10, 10, 10, 20);
      pop();
    }

    //pushStyle();
    //fill(0);
    //text("show inputs: tab", 25, 25);
    //fill(255);
    //text("Hide inputs: h", 25, 25);
    //text("Draw: left mouse", 25, 40);
    //text("Round Brush: 1", 25, 55);
    //text("Square Brush: 2", 25, 70);
    //text("Mouse Wheel: Brush size", 25, 85);
    //text("Clear canvas: Space", 25, 100);
    //popStyle();
  }
  
  void showUiText()
  {
    pushStyle();
    fill(255);
    text("show inputs: tab", 25, 25);
    fill(0);
    text("Hide inputs: h", 25, 25);
    text("Draw: left mouse", 25, 40);
    text("Round Brush: 1", 25, 55);
    text("Square Brush: 2", 25, 70);
    text("Mouse Wheel: Brush size", 25, 85);
    text("Clear canvas: Space", 25, 100);
    popStyle();
  }
}
