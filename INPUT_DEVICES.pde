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
}

void key(int x, int y, int s) {
  // PRINT MONOME KEY
  System.out.println("key received: " + x + ", " + y + ", " + s);

  virtualMonome.buttonTrigger(x, y, s);

  // ROW 1 PAGE CHANGE

  // CHECK IF PAGE HAS CHANGED
  if (y == 0) {
    led = ledPage[x];
    led[0][x] = 15;
    dirty = true;
    System.out.println("ORA >>> MONOME_PAGE " + x);
  }

  // PAGE #00
  if (led == ledPage[0]) {

    // ROW 2 LED TOGGLES

    if (y == 1 && s == 1) {  
      // TRIGGER ANIMATIONS
      animation.trigger(x);


      // LED ON/OFF
      led[y][x] ^= 15; 
      dirty = true;
    } 

    // ROW 3 - 7 MOMENTARY

    if (y > 1) {
      led[y][x] = s * 15; 
      dirty = true; 

      if (x == 5) {
        animation_01_mod = y;
      }

      // CHANGE BACKGROUND
      if (y == 7 && x == 15 && s == 1) {
        background_changeColour();
      }

      // REDRAW ON/OFF
      if (y == 7 && x == 14 && s == 1) {
        background_redraw();
      }
    }
  } else {

    // ROW 2 - 7 LED TOGGLES

    if (y > 0 && s == 1) {  
      // LED ON/OFF
      led[y][x] ^= 15; 
      dirty = true;
    }
  }

  // CLEAR LEDS 
  // OscMessage msg = new OscMessage("/monome/grid/led/row 0 0 255 255");
  // osc.send(msg, deviceAddress);
  //System.out.println("bullshit");
  // osc.send(msg, deviceAddress);
}


void keyboardTriggers() {
  if (keyPressed) {  
    if (key == ' ') {  // background redraw ON/OFF function !!!
      redraw = !redraw;
    }

    if (key == '1') {  // animation_00
      // animation.trigger(0);
      key(0, 1, 1);
    }

    if (key == '2') {  // animation_01
      // animation.trigger(1);
      key(1, 1, 1);
    }

    if (key == '3') {  //animation_02
      // animation.trigger(2);
      key(2, 1, 1);
    }

    if (key == '4') {  // animation_03
      // animation.trigger(3);
      key(3, 1, 1);
    }

    if (key == '5') {  // animation_04
      // animation.trigger(4);
      key(4, 1, 1);
    }

    if (key == '6') {  // animation_05
      // animation.trigger(5);
      key(5, 1, 1);
    }

    if (key == '7') {
    }

    if (key == '8') {
    }

    if (key == '9') {
      virtualMonome.trigger();
    }

    if (key == '0') {
      background_changeColour();
    }
  }
}
