/* # Lunar LAnder Assignment
 
 Going ahead with the 'Atlantis Idea'
 
 */

void setup()
{
  size(1024, 1024);
  frameRate(60);
}

// I will manage the transition of the diffrent screens via the following booleans.
// Whichever of these is true at any given moment will represent the currently active screen.
boolean mainMenu= true; // Default screen when programm is started
boolean howToPlay= false;
boolean game = false;
boolean gameOver = false;

// Get references to classes
MainMenu menu = new MainMenu();
Controlls controllScreen = new Controlls();
Game Game = new Game();
GameOver GameOver = new GameOver();


void draw()
{
  menu.show();
  menu.startBTN();

  controllScreen.show();

  Game.show();
  Game.submarine();

  GameOver.show();
}


void mouseClicked()
{
  if (mainMenu) { // Do this only when the Main Menu is active. Should prevent leeking of logic into other screens
    if (menu.mouseOverBTN()) {
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
    if (game && key == 32) { // Make sure this is only done at he right time
    Game.accelerate();
  }
}
