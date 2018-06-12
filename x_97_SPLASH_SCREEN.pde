void displaySplashScreeen() {
  splashScreeen_background();
  splashScreeen_text();
  splashScreeen_dim();
}

void splashScreeen_background() {
  if (splashScreen) {
    rectMode(CORNER);
    noStroke();
    fill(0, 0, 0, splashScreeenOpacity);
    rect(0, 0, width, height);

    //MATRIX RAIN
    for (Stream s : streams) {
      s.update();
    }
  }
}

void splashScreeen_text() {
  if (splashScreen) {
    // APPLICATION NAME
    textAlign(CENTER);
    textSize(32);
    fill(255, splashScreeenOpacity);
    text(applicationName, 10, height/2 - 100, width, height);  // Text wraps within text box

    // APPLICATION VERSION
    textSize(18);
    fill(200, splashScreeenOpacity);
    text(applicationVersion, 10, height/2 - 60, width, height);  // Text wraps within text box
  }
}

void splashScreeen_dim() {
  if (splashScreen) {
    // SET DIM SPEED FOR THE SPLASH SCREEN
    float dimspeed = 0.3;

    // DIM WITH DIMSPEED
    splashScreeenOpacity-=dimspeed;

    if (splashScreeenOpacity == 0) {
      splashScreen = !splashScreen;
    }
  }
}
