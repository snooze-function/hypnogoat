/*
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 +hypnotoad ++++++++++++++++++++++++++++++++++++++++
 +++[M0N0M3 C0NTR0LL3D G3N3R4T1V3 V15U4L5]+++++++++++
 +++++++DATE 18-01-28+++++++++++++++++++++++++++++++
 +++++++VERSION 0.01++++++++++++++++++++++++++++++++
 +++++++AUTHOR red [Markus Loebel]++++++++++++++++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 */

//////////////////////
// IMPORT LIBRARIES //
//////////////////////
import org.monome.Monome;
import oscP5.*;

//////////////////////////
// INITIALIZE VARIABLES //
//////////////////////////

// INITIALIZE MONOME VARIABLES
Monome m;
int numLedPages;
int currentLedPage;
int[][][] ledPage;
int[][] led;
boolean dirty;

// INITIALIZE VIRTUAL MONOME VARIABLES
VirtualMonome virtualMonome;

// INITIALIZE TIMER VARIABLES
Timer timer;
int counter;

// INITIALIZE ANIMATION-HUB VARIABLE
AnimationHub animationHub_00;

// INITIALIZE BACKGROUND VARIABLES
color bg;
int bg_range;
boolean bg_polychrome;
boolean redraw = true;

// INITIALIZE RECORDER VARIABLES
boolean recording = false;
// add var for picture format

// INITIALIZE STRINGS
String applicationName = "hypnotoad";
String applicationInformation = "* version 0.01 * written by Markus Loebel (red) * May 2018 *";

String applicationVersion = applicationInformation.substring(2, 14);
String applicationAuthor = applicationInformation.substring(17, 48);
String applicationDate = applicationInformation.substring(50, 58);

// INITIALIZE SPLASH SCREEN VARIABLES
boolean splashScreen = true;
float splashScreeenOpacity = 255;

// INITIALIZE HELP MENU VARIABLES
boolean helpMenu = false;
boolean helpMenuDirty = false;
float menuOpacity = 100;
float helpMenuOpacity = 0;
float helpMenuButtonHeight;

// INITIALIZE FONT
PFont myFont;

public void setup() {
  // SET BACKGROUND SIZE (MUST BE THE FIRST LINE IN SETUP)
  // HD RESOLUTION
  // size(1920, 1080);
  // WORK RESOLUTION
  // size(960, 540);
  // FULL SCREEN
  fullScreen();
  // surface.setResizable(true);

  // SLOW DOWN FOR DEBUGGING
  // frameRate(5);

  // ANTI-ALIASING ON
  smooth();

  // SET SIZE FOR HELP MENU BUTTON
  helpMenuButtonHeight = height/20;

  // APPLICATION NAME (TITLE BAR)
  surface.setTitle(applicationName);

  // SET BACKGROUND COLOUR RANGE (0 - 255)
  bg_range = 50;

  // SET BACKGROUND TO MONO- OR POLYCHROME
  bg_polychrome = true;

  if (bg_polychrome) {
    // SET RANDOM POLYCHROME BACKGROUND COLOUR
    bg = color(random(bg_range), random(bg_range), random(bg_range));
  } else {
    // SET RANDOM MONOCHROME BACKGROUND COLOUR
    bg = color(random(bg_range));
  }

  // SET MONOME VARIABLES
  m = new Monome(this);
  numLedPages = 16;
  currentLedPage = 0;
  ledPage = new int[16][8][16];
  led = ledPage[0];
  dirty = true;

  // SET VIRTUAL MONOME VARIABLES
  virtualMonome = new VirtualMonome(width - 16 * 15, height - 9 * 15, 15, menuOpacity);

  // SET ANIMATION-HUB VARIABLE
  animationHub_00 = new AnimationHub(numLedPages, 8);

  // AUTOSTART ANIMATIONS
  // key(1, 1, 1);

  // TRIGGER PAGE
  //key(0, 0, 1);

  // SHOW VIRTUAL MONOME ON STARTUP
  // virtualMonome.trigger();

  // SET TIMER VARIABLES
  timer = new Timer(500);
  counter = 0;
  timer.start();

  // SET FONT VARIABLES
  myFont = createFont("Andale Mono", 32);
  textFont(myFont);
}

public void draw() {

  // DRAW BACKGROUND
  background_draw();
  //System.out.println(bg);

  // RECORDER
  if (recording) {
    saveFrame("output/hypnotoad_#####.tif");
  }

  // START TIMER BASED FUNCTIONS
  if (timer.isFinished()) {

    // START ANIMATION HUB
    animationHub_00.start();

    // TRIGGER COUNTER FUNCTION
    counter();

    // RESTART TIMER
    timer.start();

    // changeBackgroundColour();
  }

  // REFRESH LED ARRAY
  if (dirty) {
    m.refresh(led);
    dirty = false;
  }

  // DISPLAY ANIMATION HUB
  animationHub_00.display();

  // DISPLAY VIRTUAL MONOME
  if (!helpMenu) {
    virtualMonome.display();
  }

  // SHOW HELP MENU
  displayHelpMenu();

  // SHOW SPLASH SCREEN
  displaySplashScreeen();

  // CONSTRAIN VARIABLES
  // helpMenuOpacity = constrain(helpMenuOpacity, 0, menuOpacity);
}

void counter() {
  counter++;
  //redrawToggle();

  if (counter > 7) {
    counter = 0;
  }

  if (counter < 6) {
    //redrawToggle();
  }

  // MONOME ANIMATION COL 2 + 12 + 13 + 14 +15
  if (counter > 0) {
    led[counter][1] ^= 15;
    led[counter][12] ^= 15;
    led[counter][13] ^= 15;
    led[counter][14] ^= 15;
    led[counter][15] ^= 15;
    dirty = true;
  }

  //System.out.println(counter);
}
