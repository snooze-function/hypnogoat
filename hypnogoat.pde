/*
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 +hypnogoat ++++++++++++++++++++++++++++++++++++++++
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

// INITIALIZE VIRTUAL MONOME VARIABLE
VirtualMonome virtualMonome;

// INITIALIZE HELP MENU VARIABLE
HelpMenu helpMenu;

// INITILÀLIZE SPLASH SCREEN VARIABLE
SplashScreen splashScreen;

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
String applicationName = "hypnogoat";
String applicationInformation = "* version 0.01 * written by Markus Loebel (red) * May 2018 *";

String applicationVersion = applicationInformation.substring(2, 14);
String applicationAuthor = applicationInformation.substring(17, 48);
String applicationDate = applicationInformation.substring(50, 58);

// INITIALIZE MATRIX RAIN VARIABLES
PFont theFont;
ArrayList<Stream> streams;

// INITIALIZE FONT
PFont myFont;

public void setup() {
  // SET BACKGROUND SIZE (MUST BE THE FIRST LINE IN SETUP)
  // HD RESOLUTION
  // size(1920, 1080, P2D);
  // WORK RESOLUTION
  size(960, 540, P2D);
  // FULL SCREEN
  // fullScreen(P2D);
  // FULL SCREEN SPAN
  // fullScreen(P2D, SPAN);
  // surface.setResizable(true);

  // SLOW DOWN FOR DEBUGGING
  // frameRate(5);

  // ANTI-ALIASING ON
  smooth();

  // SET MATRIX RAIN VARIABLES
  theFont = createFont("Arial Unicode MS", 20);
  textFont(theFont);
  streams = new ArrayList<Stream>();
  for (int x = 10; x < width; x+=20) {
    streams.add(new Stream(x));
  }

  // APPLICATION NAME (TITLE BAR)
  surface.setTitle(applicationName);

  // SET BACKGROUND COLOUR RANGE (0 - 255)
  bg_range = 50;

  // SET BACKGROUND TO MONO- OR POLYCHROME
  bg_polychrome = true;

  // GET RANDOM BACKGROUND COLOUR
  background_getNewColour();

  // SET MONOME VARIABLES
  m = new Monome(this);
  numLedPages = 16;
  currentLedPage = 0;
  ledPage = new int[16][8][16];
  led = ledPage[0];
  dirty = true;

  // SET VIRTUAL MONOME VARIABLE
  virtualMonome = new VirtualMonome(width - 16 * 15, height - 9 * 15, 15, 128);

  // SET HELP MENU VARIABLE
  helpMenu = new HelpMenu();

  // SET SPLASH SCREEN VARIABLE
  splashScreen = new SplashScreen(0.5);

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

    //System.out.println("Timer");

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
  //virtualMonome.display();
  if (!helpMenu.getsDisplayed()) {
    virtualMonome.display();
  }

  // DISPLAY HELP MENU
  helpMenu.display();

  // DISPLAY SPLASH SCREEN
  splashScreen.display();
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
