class VirtualMonome {
  float x;
  float y;
  float a;
  float size;
  Button[][][] buttons = new Button[16][16][8];
  int page = 0;
  boolean virtualMonomeActive = false;

  VirtualMonome(float tempX, float tempY, float tempSize, float tempA) {
    x = tempX;
    y = tempY;
    size = tempSize;
    a = tempA;
    for (int i = 0; i < 16; i++) {
      for (int j = 0; j < 16; j++) {
        for (int k = 0; k < 8; k++) {
          buttons[i][j][k] = new Button(x + j * size, y + k * size, size, a, j, k);
        }
      }
    }
  }

  void display() {
    virtualMonomeToogle();
    if (virtualMonomeActive) {
      for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 8; j++) {
          buttons[page][i][j].display(mouseX, mouseY);
        }
      }
    }
    if (virtualDirty) {
      // rollover();
      // virtualDirty = false;
    }
  }

  void rollover() {
    if (mouseX > x && mouseX < x + size * 16 && mouseY > y + size * 8 && mouseY < y + size * 9) {
      virtualMonomeActive = !virtualMonomeActive;
    }
    if (virtualMonomeActive) {
      for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 8; j++) {
          buttons[page][i][j].rollover(mouseX, mouseY);
        }
      }
    }
  }

  void buttonRelease() {
    // System.out.println("button release");
    if (virtualMonomeActive) {
      for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 8; j++) {
          buttons[page][i][j].buttonRelease(mouseX, mouseY);
        }
      }
    }
  }

  void virtualMonomeToogle() {
    String p = "::: virtual monome :::";
    textSize(size);
    textAlign(CENTER);
    rectMode(CORNER);
    strokeWeight(1);
    if (virtualMonomeActive) {
      stroke(255, a);
      fill(0, a);
      rect(x, y + size * 8, size * 16, size);
      fill(255);
      text(p, x + size * 8, y + size * 9);
      // BUG Funktion sollte nur einmal aufgerufen werden, wird aber für alle elemente im array dargestellt
      // System.out.println("bullshit");
    } else {      
      stroke(0, a);
      fill(255, a);
      rect(x, y + size * 8, size * 16, size);
      fill(0, a);
      text(p, x + size * 8, y + size * 9);
    }
  }

  void trigger() {
    virtualMonomeActive = !virtualMonomeActive;
  }

  void buttonTrigger(int x, int y, int s) {
    if (y == 0) {
      page = x;
      System.out.println(applicationName + " >>> VIRTUAL_MONOME_PAGE " + x);
    }
    buttons[page][x][y].trigger(x, y, s);
    // key(x, y, 0);
    //System.out.println("sdjf");
  }
}
