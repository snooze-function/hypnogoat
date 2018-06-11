void mousePressed() {
  // EMULATES MONOME KEY DOWN
  virtualMonome.mousePressedInput();
  helpMenuDirty = true;
  helpMenu_button_rollover();
  // System.out.println(mouseButton);
}

void mouseReleased() {
  // EMULATES MONOME KEY UP
  virtualMonome.mouseReleasedInput();
}

void keyPressed() {
  // PRESS "m" TO DISPLAY VIRTUAL MONOME
  virtualMonome.keyboardInput();

  keyboardTriggers();
  recordingToggle();
}

void keyboardTriggers() {
  if (keyPressed) {  
    if (key == ' ') {  // background redraw ON/OFF function !!!
      background_redraw();
      System.out.println("wtf");
    }

    if (key == 'n') {
      background_changeColour();
    }
  }
}

void key(int x, int y, int s) {
  // PRINT MONOME KEY
  System.out.println("key received: " + x + ", " + y + ", " + s);

  // ROW 1 PAGE CHANGE
  if (y == 0) {
    ledPageChange(x, y, s);
    virtualMonome.pageChange(x, y, s);
  }

  // PAGE 01 - 16

  if (y > 0) {
    // ANIMATION MONOME KEY INPUT
    //animation_01.monomeKeyIn(x, y, s);
    animationHub_00.monomeKeyIn(x, y, s);

    // COLUMN 00
    if (x == 0) {
      ledToggle(x, y, s);
      virtualMonome.toggle(x, y, s);
    } 

    if (x == 1) {
      //ledMomentary(x, y, s);
    }

    // COLUMN 02 - 11
    if (x > 1) {
      ledMomentary(x, y, s);
      virtualMonome.momentary(x, y, s);
    }

    // CHANGE BACKGROUND
    if (y == 7 && x == 14 && s == 1) {
      background_changeColour();

      ledToggle(x, y, s);
    }

    // REDRAW ON/OFF
    if (y == 7 && x == 15 && s == 1) {
      background_redraw();
      ledToggle(x, y, s);
    }
  }
}


void ledPageChange(int x, int y, int s) {
  if (s == 1) {
    currentLedPage = x;
    led = ledPage[currentLedPage];
    led[y][currentLedPage] = 15;
    dirty = true;
    System.out.println(" >>> MONOME_PAGE " + (x + 1));
  }
}

void ledToggle(int x, int y, int s) {
  // LED TOGGLE
  if (s == 1) {
    led[y][x] ^= 15; 
    dirty = true;
  }
}

void ledMomentary(int x, int y, int s) {
  led[y][x] = s * 15; 
  dirty = true;
}

void recordingToggle() {
  if (key == 'r' || key == 'R') {
    recording = ! recording;
    System.out.println(applicationName + "RECORDING = " + recording);
  }
}
