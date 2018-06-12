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
    int size = 20;
    float textsize = height / 10;

    // APPLICATION NAME
    textAlign(LEFT);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text(applicationName, 0 + textsize/6, 0 + textsize/1.3);

    textsize = height / 50;

    // APPLICATION INFORMATIONS
    textAlign(RIGHT);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text(applicationInformation, width - textsize/2, height - textsize/3);

    textsize = height / 42;

    // EXPLANATIONS
    textAlign(CENTER);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text("Page 01 - 16  >", width/3, height/2 - size * 3);

    textAlign(CENTER);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text("Animation 01 >", width/3, height/2 - size * 2);

    textAlign(CENTER);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text("Animation 02 >", width/3, height/2 - size);

    textAlign(CENTER);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text("Animation 03 >", width/3, height/2);

    textAlign(CENTER);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text("Animation 04 >", width/3, height/2 + size);

    textAlign(CENTER);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text("Animation 05 >", width/3, height/2 + size * 2);

    textAlign(CENTER);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text("Animation 06 >", width/3, height/2 + size * 3);

    textAlign(CENTER);
    textSize(textsize);
    fill(255, helpMenuOpacity);
    text("Animation 07 >", width/3, height/2 + size * 4);

    //

    textsize = height / 52;

    textAlign(CENTER);
    textSize(textsize);
    fill(127, helpMenuOpacity);
    text("ROW 01: Switch Pages", width/2, height/2 + size * 8);

    textsize = height / 42;

    textAlign(CENTER);
    textSize(textsize);
    fill(127, helpMenuOpacity);
    text("PAGE 01 - 16", width/2, height/2 + size * 11);

    textsize = height / 52;

    textAlign(CENTER);
    textSize(textsize);
    fill(127, helpMenuOpacity);
    text("COLUMN 01: Animation ON/OFF", width/2, height/2 + size * 13);

    textAlign(CENTER);
    textSize(textsize);
    fill(127, helpMenuOpacity);
    text("COLUMN 03 - 12: Animation MODIFY", width/2, height/2 + size * 15);

    textAlign(CENTER);
    textSize(textsize);
    fill(127, helpMenuOpacity);
    text("COLUMN 03 - 12: Animation MODIFY", width/2, height/2 + size * 17);

    textsize = height / 74;

    textAlign(CENTER);
    textSize(textsize);
    fill(127, helpMenuOpacity);
    text("(3/4 shapes +/+ || 5 fill ON/OFF || 7/8 direction -/+ || 9/10 speed -/+ || 11/12 grow-speed -/+)", width/2, height/2 + size * 18);

    textsize = height / 64;

    textAlign(CENTER);
    textSize(textsize);
    fill(127, helpMenuOpacity);
    text("...(x=14 && y=7) change background colour", width/2, height/2 + size * 21);

    textAlign(CENTER);
    textSize(textsize);
    fill(127, helpMenuOpacity);
    text("...(x=15 && y=7) background redrawing ON/OFF (trippy)", width/2, height/2 + size * 23);
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
