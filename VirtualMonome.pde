class VirtualMonome {
  float x;
  float y;
  float a;
  float size;
  Button[][][] buttons = new Button[16][16][8];
  int page;
  boolean on = false;
  String toggleScribble = "::: virtual monome :::";

  VirtualMonome(float temp_x, float temp_y, float temp_size, float temp_a) {
    x = temp_x;
    y = temp_y;
    size = temp_size;
    a = temp_a;
    for (int i = 0; i < 16; i++) {
      for (int j = 0; j < 16; j++) {
        for (int k = 0; k < 8; k++) {
          buttons[i][j][k] = new Button(x + j * size, y + k * size, size, a, j, k);
        }
      }
    }
  }

  void display() {
    displaySwitch();
    displayVirtualMonome();
  }

  void displaySwitch() {
    // DISPLAY VIRTUAL MONOME ON + OFF TOGGLE
    if (on) {
      displaySwitchOn();
      // System.out.println("xyz");
    } else {
      displaySwitchOff();
    }
  }

  void displayVirtualMonome() {
    if (on) {
      for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 8; j++) {
          buttons[page][i][j].display(mouseX, mouseY);
        }
      }
    }
  }

  void mousePressedInput() {
    // DISPLAY VIRTUAL MONOME ON + OFF
    if (mouseX > x && mouseX < x + size * 16 && mouseY > y + size * 8 && mouseY < y + size * 9) {
      on = !on;
    }

    // TRIGGER MONOME VIRTUAL BUTTON DOWN
    if (on) {
      for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 8; j++) {
          buttons[page][i][j].rolloverPressed(mouseX, mouseY);
        }
      }
    }
  }

  void mouseReleasedInput() {
    // TRIGGER MONOME VIRTUAL BUTTON UP
    if (on) {
      for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 8; j++) {
          buttons[page][i][j].rolloverReleased();
        }
      }
    }
  }

  void keyboardInput() {
    if (key == 'm') {
      on = !on;
    }
  }

  void pageChange(int x, int y, int s) {
    if (s == 1) {
      page = x;
      buttons[page][x][y].pageChange(s);
      System.out.println(" >>> VIRTUAL_MONOME_PAGE " + x);
      //System.out.println("sdjf");
    }
  }

  void momentary(int x, int y, int s) {
    buttons[page][x][y].momentary(s);
    //System.out.println("sdjf");
  }

  void toggle(int x, int y, int s) {
    buttons[page][x][y].toggle(s);
    //System.out.println("sdjf");
  }

  void buttonRelease() {
    // System.out.println("button release");
    if (on) {
      for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 8; j++) {
          //buttons[page][i][j].buttonRelease(mouseX, mouseY);
        }
      }
    }
  }

  void displaySwitchOn() {
    textSize(size);
    textAlign(CENTER);
    rectMode(CORNER);
    strokeWeight(1);
    stroke(255, a);
    fill(0, a);
    rect(x, y + size * 8, size * 16, size);
    fill(255);
    text(toggleScribble, x + size * 8, y + size * 9);
  }

  void displaySwitchOff() {
    textSize(size);
    textAlign(CENTER);
    rectMode(CORNER);
    strokeWeight(1);
    stroke(0, a);
    fill(255, a);
    rect(x, y + size * 8, size * 16, size);
    fill(0, a);
    text(toggleScribble, x + size * 8, y + size * 9);
  }
}
