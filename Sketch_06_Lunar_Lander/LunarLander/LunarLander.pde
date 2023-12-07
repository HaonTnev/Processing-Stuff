/* # Lunar Lander Assignment
 
 Going ahead with the 'Atlantis Idea'
 
 */
float DeltaTime;
float lastTimeStep;

void setup()
{
  fullScreen();
  frameRate(60);
  textSize(20);
  textAlign(CENTER);
  Game.pos = new PVector(100, 100);
  font = createFont("FartBubble", 32); // Got the font @ https://www.fontspace.com/category/underwater
  textFont(font);
  initializeFloatingStuff();
}
void initializeFloatingStuff() {
  for (Obstacle obstacle : obstacles) {
    obstacle.setPos();
    obstacle.setSpeedX();
    // println(obstacle, obstacle.pos, obstacle.speedX);
  }
  for (Bubble bubble : bubbles) {
    bubble. setPos();
    bubble.setSpeedY();
    bubble.popped = false;
  }
}
// I will manage the transition of the diffrent screens via the following booleans.
// Whichever of these is true at any given moment will represent the currently active screen.
boolean mainMenu= true; // Default screen when programm is started®
boolean howToPlay= false;
boolean game = false;
boolean gameOver = false;

// Get bools to store if game was won or lost
boolean win= false;
boolean lose= false;

// Get references to classes
MainMenu menu = new MainMenu();
Controlls controllScreen = new Controlls();
Game Game = new Game();
GameOver GameOver = new GameOver();
OxygenMeter o2Meter = new OxygenMeter();


//Obstacle obstacle = new Obstacle();
Obstacle[] obstacles= {
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
  new Obstacle(),
};

Bubble[] bubbles= {
  new Bubble(),
  new Bubble(),
  new Bubble(),
  new Bubble(),
  new Bubble(),
  new Bubble(),
  new Bubble(),
  new Bubble(),
  new Bubble(),
  new Bubble(),
};

float millisSinceStart;

PFont font;
void draw()
{
  DeltaTime = (millis() - lastTimeStep)/1000.0;
  lastTimeStep = millis();
  menu.show();


  controllScreen.show();


  Game.show();
  for (Obstacle obstacle : obstacles) {
    obstacle.updatePos();
    obstacle.show();
    obstacle.hit();
  }
  for (Bubble bubble : bubbles) {
    bubble.updatePos();
    bubble.show();
    bubble.hit();
  }
  Game.updatePos();
  Game.submarine();
  //println(Game.pos);
  o2Meter.show();
  Game.checkLandingSpot();
  o2Meter.time();
  if (o2Meter.o2()<=0) {
    lose=true;
    game=false;
    gameOver=true;
  }
  GameOver.show();
}


void mouseClicked()
{
  if (mainMenu) { // Do this only when the Main Menu is active. Should prevent leeking of logic into other screens
    if (menu.mouseOverPlayBTN()) {
      // Transition from main menu to the how to play screen
      // println("btn pressed");
      initializeFloatingStuff();
      mainMenu = false;
      game = true;
      millisSinceStart=millis()/1000;
    }
    if (menu.mouseOverControllsBTN()) {
      // Transition from main menu to the how to play screen
      println("btn pressed");
      mainMenu = false;
      howToPlay = true;
    }
    if (menu.mouseOverQuitBTN()) {
      exit();
    }
  }

  if (gameOver) {
    if (GameOver.mouseOverRestartBTN()) { // reset evevything
      initializeFloatingStuff();
      millisSinceStart=millis()/1000;
      o2Meter.o2Value = 200;
      println(o2Meter.o2());
      win= false;
      lose= false;
      Game.pos = new PVector(100, 100);
      gameOver=false;
      game=true;
    }
    if (GameOver.mouseOverMenuBTN()) { // reset everything
      initializeFloatingStuff();
      millisSinceStart=millis()/1000;
      o2Meter.o2Value = 200;
      println(o2Meter.o2());
      win= false;
      lose= false;
      Game.pos = new PVector(100, 100);
      gameOver=false;
      mainMenu=true;
    }
    if (GameOver.mouseOverQuitBTN()) {
      exit();
    }
  }
}


void keyPressed()
{
  if (howToPlay && key == 32) { // Make sure this is only done at he right time
    howToPlay = false;
    game = true;
    millisSinceStart=millis()/1000;
  }
  if (game && key == 8) { // Make sure this is only done at he right time
    game = false;
    gameOver= true;
  }
}
