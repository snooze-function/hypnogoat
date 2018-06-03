void mousePressed() {
  virtualDirty = true;
  virtualMonome.rollover();
  helpMenuDirty = true;
  helpMenu_button_rollover();
  // System.out.println(mouseButton);
}

void mouseReleased() {
  // virtualMonome.buttonRelease();
  // virtualDirty = true;
}

void keyPressed() {
  keyboardTriggers();
  recordingToggle();
  monomeKeyboardInput(key); // BUGGY!!! SENDS ONLY KEY DOWN AND NOT KEY UP
}

void keyboardTriggers() {
  if (keyPressed) {  
    if (key == ' ') {  // background redraw ON/OFF function !!!
      redraw = !redraw;
    }

    if (key == 'm') {
      virtualMonome.trigger();
    }

    if (key == 'n') {
      background_changeColour();
    }
  }
}

void key(int x, int y, int s) {
  // PRINT MONOME KEY
  System.out.println("key received: " + x + ", " + y + ", " + s);

  virtualMonome.buttonTrigger(x, y, s);

  // PAGE 00 -15
  // ROW 1 PAGE CHANGE
  if (y == 0) {
    ledPageChange(x, y);
  } else {

    // ANIMATION MONOME KEY INPUT
    //animation_01.monomeKeyIn(x, y, s);
    animationHub_00.monomeKeyIn(x, y, s);

    // COLUMN 00
    if (x == 0) {
      ledToggle(x, y, s);
    } 

    if (x == 1) {
      //ledMomentary(x, y, s);
    }

    // COLUMN 02 - 11
    if (x > 1) {
      ledMomentary(x, y, s);
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

void ledPageChange(int x, int y) {
  currentLedPage = x;
  led = ledPage[currentLedPage];
  led[y][currentLedPage] = 15;
  dirty = true;
  System.out.println(" >>> MONOME_PAGE " + (x + 1));
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

void monomeKeyboardInput(int key) {
  int x;
  if (key == 'ß') {
    x = 0;
    triggerMonomeKey(x);
  }
  if (key == '1') {
    x = 2;
    triggerMonomeKey(x);
  }
  if (key == '2') {
    x = 3;
    triggerMonomeKey(x);
  }
  if (key == '3') {
    x = 4;
    triggerMonomeKey(x);
  }
  if (key == '4') {
    x = 5;
    triggerMonomeKey(x);
  }
  if (key == '5') {
    x = 6;
    triggerMonomeKey(x);
  }
  if (key == '6') {
    x = 7;
    triggerMonomeKey(x);
  }
  if (key == '7') {
    x = 8;
    triggerMonomeKey(x);
  }
  if (key == '8') {
    x = 9;
    triggerMonomeKey(x);
  }
  if (key == '9') {
    x = 10;
    triggerMonomeKey(x);
  }
  if (key == '0') {
    x = 11;
    triggerMonomeKey(x);
  }
}

// TRIGGER MONOME KEY INPUT 
void triggerMonomeKey(int x) {
  key(x, 1, 1);
}
