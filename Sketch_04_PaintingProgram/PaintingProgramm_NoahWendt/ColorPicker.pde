class ColorPicker
{
  // Make a UI element at the upper right corner
  // When element is clicked hide it and show color wheel
  // If mouse is pressed inside the color wheel set drawing color to the color of the current pixel
  // make UI element at the upper left corner that when clicked hides the color picker again

  boolean showWheel= false;

  void showBtn()
  {
    push();
    fill(0);
    text("Colour", width - 80, 10);
    pop();
    if (showWheel == false)
    {
      // Visual look of the UI element
      push();
      stroke(0);
      strokeWeight(2);
      beginShape();
      //fill(50);
      vertex(width-30, 0);
      vertex(width, 0);
      vertex(width, 30);
      vertex(width-30, 30);
      endShape(CLOSE);
      triangle(width-20, 15, width-10, 10, width-10, 20);
      pop();
      // Detect if the mouse is hovered over the element.
      if (mouseX > width-30 && mouseY<30)
      {
        showWheel= true;
       // println(showWheel);
      }
    }
  }

  void showPicker()
  {
    if (showWheel)
    {
      push();
      beginShape();
      noStroke();
      fill(100);
      rect(width-100, 0, 100, 100);
      endShape();
      pop();
      if (mouseX<width-100 && mouseY<100||mouseX>width-100&& mouseY>100)
      {
        push();
        beginShape();
        noStroke();
        fill(255);
        rect(width-100, 0, 100, 100);
        endShape();
        pop();

        showWheel = false;
       // println(showWheel);
      }
    }
  }

  void getColor()
  {

  }
}
