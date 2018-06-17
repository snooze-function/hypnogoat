class HelpMenu {
  float x;
  float y;
  float w;
  float h;

  float a;

  int textSize;
  int button_textSize;
  color textColour;
  //PFont menuFont;

  boolean fade;
  boolean on;

  String s = "help";
  int button_stroke;
  int button_fill;
  int button_textFill;
  float button_width;
  float button_height;

  float monome_buttonSize;

  HelpMenu() {
    x = 0;
    y = 0;
    w = width;
    h = height;

    a = 0;

    textSize = round(w/80);
    button_textSize = round(w/100);
    button_width = w/20;
    button_height = h/40;

    monome_buttonSize = width/50;

    // SET FONT VARIABLES
    //menuFont = createFont("Ubuntu", textSize);
    //textFont(menuFont);

    fade = false;
    on = false;
  }

  void display() {
    display_background();
    display_monomeGrid();
    display_text();
    display_fade();
    display_button();
  }

  void rollover() {
    if (mouseX > 0 && mouseX < button_width && mouseY > height - button_height && mouseY < height) {
      fade = !fade;

      if (fade) {
        on = true;
      }
    }
  }

  void display_button() {

    if (on) {
      button_stroke = 255;
      button_fill = 128;
      button_textFill = 255;
    } else {
      button_stroke = 0;
      button_fill = 255;
      button_textFill = 0;
    }

    // DRAW HELP MENU BUTTON
    rectMode(CORNER);
    strokeWeight(0.5);
    stroke(button_stroke);
    fill(button_fill, 128);
    rect(0, height - button_height, button_width, button_height);

    // DRAW HELP MENU BUTTON TEXT
    textAlign(CENTER, TOP);
    textSize(button_textSize);
    fill(button_textFill, 128);
    text(s, 0 + button_width/2, height - button_height);
  }

  void display_background() {
    if (on) {
      // DRAW HELP MENU BACKGROUND
      rectMode(CORNER);
      noStroke();
      fill(200, a/2);
      rect(0, 0, width, height);
    }
  }

  void display_monomeGrid() {
    if (on) {

      // DISPLAY MONOME GRID
      for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 8; j++) {
          rectMode(CORNER);
          stroke(0, a);
          strokeWeight(1);
          fill(255, a);
          rect(width/4 - monome_buttonSize * 8 + i * monome_buttonSize, height/2 + j * monome_buttonSize, monome_buttonSize, monome_buttonSize);
        }
      }

      // LINE TO BACKGROUND REDRAWING TOGGLE
      line(width/4 + monome_buttonSize * 6.5, height/2 + monome_buttonSize*7.5, width/4 + monome_buttonSize * 6.5, height/2 + monome_buttonSize * 9);

      // LINE TO BACKGROUND CHANGE BUTTON
      line(width/4 + monome_buttonSize * 7.5, height/2 + monome_buttonSize*7.5, width/4 + monome_buttonSize * 7.5, height/2 + monome_buttonSize * 10);

      // HIGHLIGHT PAGE CHANGE AREA
      noStroke();
      fill(128, a/2);
      rect(width/4 - monome_buttonSize * 8, height/2, monome_buttonSize * 16, monome_buttonSize);

      // HIGHLIGHT UNUSED AREAS
      noStroke();
      fill(0, a/1.5);
      rect(width/4 - monome_buttonSize * 7, height/2 + monome_buttonSize, monome_buttonSize, monome_buttonSize * 7); // COLUMN 2
      rect(width/4 + monome_buttonSize * 4, height/2 + monome_buttonSize, monome_buttonSize * 2, monome_buttonSize * 7); // COLUMN 13+14
      rect(width/4 + monome_buttonSize * 6, height/2 + monome_buttonSize, monome_buttonSize * 2, monome_buttonSize * 6);// COLUMN 15+16
    }
  }

  void display_text() {
    if (on) {

      // DISPLAY APPLICATION NAME
      textAlign(CENTER, TOP);
      textSize(textSize * 4);
      fill(64, a);
      text(applicationName, width/4, height/4 + monome_buttonSize);

      // DISPLAY APPLICATION INFORMATIONS
      textAlign(RIGHT);
      textSize(textSize);
      fill(128, a);
      text(applicationInformation, width - textSize/2, height - textSize/3);

      // DISPLAY VIRTUAL MONOME SCRIBBLES EXPLANATIONS
      textAlign(CENTER, BOTTOM);
      textSize(textSize);
      fill(0, a);
      text("< page 01 - 16  >", width/4, height/2 + monome_buttonSize);
      fill(50, a);
      text("< animation 01 >", width/4, height/2 + monome_buttonSize * 2);
      text("< animation 02 >", width/4, height/2 + monome_buttonSize * 3);
      text("< animation 03 >", width/4, height/2 + monome_buttonSize * 4);
      text("< animation 04 >", width/4, height/2 + monome_buttonSize * 5);
      text("< animation 05 >", width/4, height/2 + monome_buttonSize * 6);
      text("< animation 06 >", width/4, height/2 + monome_buttonSize * 7);
      text("< animation 07 >", width/4, height/2 + monome_buttonSize * 8);

      // DISPLAY KEYBOARD INPUT EXPLANATIONS
      textAlign(LEFT);
      textSize(textSize);
      fill(0, a);
      text("keyboard input", width/2, height/2 - monome_buttonSize * 7);
      fill(255, a);
      text("h = help\nm = virtual monome on/off\nr = record video start/stop  ***warning: takes lots of disk space!!\nb = change background colour\nSPACE = background redrawing on/off", width/2, height/2 - monome_buttonSize * 6);

      // DISPLAY MONOME INPUT EXPLANATIONS
      textAlign(LEFT, TOP);
      textSize(textSize);
      fill(0, a);
      text("monome input", width/2, height/2);
      fill(255, a);
      text("row 01: switch Page", width/2, height/2 + monome_buttonSize);
      fill(80, a);
      text("- page 01 - 16: animation controls -", width/2, height/2 + monome_buttonSize * 2);
      fill(255, a);
      text("column 1 animation on/off\ncolumn 3/4 shapes -/+\ncolumn 5 fill on/off\ncolumn 7/8 direction -/+\ncolumn 9/10 speed -/+\ncolumn 11/12 grow-speed -/+", width/2, height/2 + monome_buttonSize * 3);

      // DISPLAY ADDITIONAL MONOME INPUT EXPLANATIONS
      textAlign(RIGHT);
      textSize(textSize);
      fill(255, a);
      text("background redrawing on/off ", width/4 + monome_buttonSize * 7.5, height/2 + monome_buttonSize * 10);   
      text("change background colour ", width/4 + monome_buttonSize * 6.5, height/2 + monome_buttonSize * 9);
    }
  }

  void display_fade() {
    // DEFINE FADE IN/OUT SPEED
    int fadeSpeed = 10;

    if (fade) {
      fadeIn(fadeSpeed);
    } else {
      fadeOut(fadeSpeed);
    }
  }

  void fadeIn(int fadeSpeed) {
    // FADE IN HELP MENU
    if (fade) {
      a+=fadeSpeed;
      if (a > 255) {
        a = 255;
      }
      //System.out.println("fading-in");
    }
  }

  void fadeOut(int fadeSpeed) {
    // FADE OUT HELP MENU
    if (!fade) {
      a-=fadeSpeed;

      if (a < 0) {
        on = false;
        a = 0;
      }
      //System.out.println("fading-out");
    }
  }

  void keyboardInput() {
    if (key == 'h') {
      fade = !fade;

      if (fade) {
        on = true;
      }
    }
  }

  boolean getsDisplayed() {
    if (on) {
      return true;
    } else {
      return false;
    }
  }
}
