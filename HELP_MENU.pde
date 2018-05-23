void displayHelpMenu() {
  helpMenu_background();
  helpMenu_monomeGrid();
  helpMenu_text();
  helpMenu_fade();
  helpMenu_button();
}

void helpMenu_background() {
  if (helpMenuOpacity > 0) {
    // DRAW HELP MENU BACKGROUND
    rectMode(CORNER);
    noStroke();
    fill(bg, helpMenuOpacity);
    rect(0, 0, width, height);
  }
}

void helpMenu_monomeGrid() {
  if (helpMenuOpacity > 0) {
    // DISPLAY MONOME GRID
    for (int i = 0; i < 16; i++) {
      for (int j = 0; j < 8; j++) {
        int size = 20;
        rectMode(CORNER);
        stroke(0, helpMenuOpacity);
        strokeWeight(1);
        fill(255, helpMenuOpacity);
        rect(width/2 - size * 8 + i * size, height/2 - size * 4 + j * size, size, size);
      }
    }
  }
}

void helpMenu_text() {
  if (helpMenuOpacity > 0) {

    float textsize = height / 5;

    // APPLICATION NAME
    textAlign(LEFT);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text(applicationName, 0 + textsize/6, 0 + textsize/1.3);

    textsize = height / 40;

    // APPLICATION INFORMATIONS
    textAlign(RIGHT);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text(applicationInformation, width - textsize/2, height - textsize/3);
  }
}

void helpMenu_fade() {
  // DEFINE FADE IN/OUT SPEED
  int fadeSpeed = 10;
  // DEFINE MAX OPACITY
  int opacityMax = 200;

  if (helpMenu) {
    helpMenu_fadeIn(fadeSpeed, opacityMax);
  } else {
    helpMenu_fadeOut(fadeSpeed);
  }
}

void helpMenu_fadeIn(int fadeSpeed, int opacityMax) {
  // FADE IN HELP MENU
  if (helpMenuOpacity < opacityMax) {
    helpMenuOpacity+=fadeSpeed;
  }
}

void helpMenu_fadeOut(int fadeSpeed) {
  // FADE OUT HELP MENU
  if (helpMenuOpacity > 0) {
    helpMenuOpacity-=fadeSpeed;
  }
}

void helpMenu_button() {
  String s = "help";

  if (helpMenu) {
    // DRAW HELP MENU BUTTON
    rectMode(CORNER);
    noStroke();
    fill(0, menuOpacity);
    rect(0, height - helpMenuButtonHeight, helpMenuButtonHeight * 3, helpMenuButtonHeight);

    // DRAW HELP MENU BUTTON TEXT
    textAlign(CENTER);
    textSize(helpMenuButtonHeight);
    fill(255, menuOpacity);
    text(s, helpMenuButtonHeight * 1.5, height - helpMenuButtonHeight/6);
  } else {
    // DRAW HELP MENU BUTTON
    rectMode(CORNER);
    noStroke();
    fill(255, menuOpacity);
    rect(0, height - helpMenuButtonHeight, helpMenuButtonHeight * 3, helpMenuButtonHeight);

    // DRAW HELP MENU BUTTON TEXT
    textAlign(CENTER);
    textSize(helpMenuButtonHeight);
    fill(0, menuOpacity);
    text(s, helpMenuButtonHeight * 1.5, height - helpMenuButtonHeight/6);
  }
}

void helpMenu_button_rollover() {
  if (mouseX > 0 && mouseX < helpMenuButtonHeight * 3 && mouseY > height - helpMenuButtonHeight && mouseY < height) {
    helpMenu = !helpMenu;
  }
}
