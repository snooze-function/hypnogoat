/*
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 ++++ora [M0N0M3 C0NTR0LL3D G3N3R4T1V3 V15U4L5]+++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 ++DATE 18-01-28++++++++++++++++++++++++++++++++++++
 ++VERSION 0.01+++++++++++++++++++++++++++++++++++++
 ++AUTHOR red [Markus Loebel]+++++++++++++++++++++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 */

import org.monome.Monome;
import oscP5.*;

Timer timer;
Monome m;
String applicationName = "ora";
String applicationInformation = "* version 0.01 * written by Markus Loebel (red) * May 2018 *";
String applicationVersion = applicationInformation.substring(2, 14);
String applicationAuthor = applicationInformation.substring(17, 48);
String applicationDate = applicationInformation.substring(50, 58);
color bg;
int bg_range;
boolean bg_polychrome;
VirtualMonome virtualMonome;
Animation animation;
int animation_01_mod = 0;
int[][][] ledPage;
int[][] led;
boolean dirty;
boolean virtualDirty;
boolean redraw = true;
int currentLine = 0; 
int currentRing = 0;
boolean splashScreen = true;
float splashScreeenOpacity = 255;
boolean helpMenu = false;
boolean helpMenuDirty = false;
float menuOpacity = 100;
float helpMenuOpacity = 0;
float helpMenuButtonHeight;
PFont myFont;

public void setup() {
  // SET BACKGROUND SIZE (MUST BE THE FIRST LINE IN SETUP)
  size(600, 300);
  // fullScreen();
  // surface.setResizable(true);

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

  m = new Monome(this);
  animation = new Animation();
  ledPage = new int[16][8][16];
  // led = new int[8][16];
  led = ledPage[0];
  dirty = true;

  virtualMonome = new VirtualMonome(width - 16 * 15, height - 9 * 15, 15, menuOpacity);

  // AUTOSTART ANIMATIONS
  // key(1, 1, 1);

  // TRIGGER PAGE
  key(0, 0, 1);

  // SHOW VIRTUAL MONOME ON STARTUP
  // virtualMonome.trigger();

  timer = new Timer(500);
  timer.start();

  myFont = createFont("Andale Mono", 32);
  textFont(myFont);
}

public void draw() {
  // 
  if (timer.isFinished()) {
    // changeBackgroundColour();
    timer.start();
  }

  // TURN BACKGROUND REDRAWING ON/OFF
  background_draw();

  //
  if (virtualDirty) {
    virtualMonome.buttonRelease();
    // System.out.println("bonga");
    virtualDirty = false;
  }

  // REFRESH LED ARRAY
  if (dirty) {
    m.refresh(led);
    dirty = false;
  }

  // DISPLAY ANIMATIONS
  animation.display(animation_01_mod);

  // DISPLAY VIRTUAL MONOME
  if (!helpMenu) {
    virtualMonome.display();
  }

  // SHOW HELP MENU
  displayHelpMenu();

  // SHOW SPLASH SCREEN
  displaySplashScreeen();

  // WHY IS THIS WORKING ???
  // System.out.println(virtualDirty);

  // CONSTRAIN VARIABLES
  // helpMenuOpacity = constrain(helpMenuOpacity, 0, menuOpacity);
}
