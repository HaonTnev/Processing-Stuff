/* # Lunar LAnder Assignment
 
 Going ahead with the 'Atlantis Idea'
 
 */

void setup()
{
  size(1024, 1024);
}

// I will manage the transition of the diffrent screens via the following booleans.
// Whichever of these is true at any given moment will represent the currently active screen.
boolean mainMenu= true; // Default screen when programm is started
boolean howToPlay= false;
boolean game = false;
boolean gameOver = false;

void draw()
{
  showMainMenu();
  startBTN();

  showHowToPlay();

  showGame();

  showGameOver();
}
void mouseClicked()
{
  if (mainMenu) { // Do this only when the Main Menu is active. Should prevent leeking of logic into other screens
    if (mouseX>width/3 && mouseX < width/3+180 &&mouseY>height/2&&mouseY<height/2+75) {
      // Transition from main menu to the how to play screen
      println("btn pressed");
      mainMenu = false;
      howToPlay = true;
    }
  }
}
void keyPressed()
{
  if (howToPlay && key == 32) { // Make sure this is only done at he right time
    howToPlay = false;
    game = true;
  }
  if (game && key == 8) { // Make sure this is only done at he right time
    game = false;
    gameOver= true;
  }
}
void showMainMenu()// Contains the visuals for the Main Menu screen
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

void mainMenuCheck() // Check if the button is clicked
{
  if (mouseX<width/3 && mouseX > width/3+180 &&mouseY>height/2&&mouseY<height/2+75) {
    // Transition from main menu to the how to play screen
    mainMenu = false;
    howToPlay = true;
  }
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

void showHowToPlay()// Show player the control scheme
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
    text("Don't bum into rocks", width/3, 500);
    text("Press Space continue", width/3, 550);
    pop();
  }
}

void showGame()
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
void showGameOver()
{
  if (gameOver) {
    push();
    background(0);
    pop();
  }
}
