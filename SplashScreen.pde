class SplashScreen {
  float a;
  float dimspeed;
  boolean on;


  SplashScreen(float temp_dimspeed) {
    a = 255;
    dimspeed = temp_dimspeed;
    on = true;
  }

  void display() {
    display_background();
    display_text();
    dim();
  }

  void display_background() {
    if (on) {
      rectMode(CORNER);
      noStroke();
      fill(50, 0, 0, a);
      rect(0, 0, width, height);

      //MATRIX RAIN
      for (Stream s : streams) {
        s.update(a);
      }
    }
  }

  void display_text() {
    if (on) {
      // APPLICATION NAME
      textAlign(CENTER);
      textSize(32);
      fill(255, a);
      text(applicationName, 10, height/2 - 100, width, height);  // Text wraps within text box

      // APPLICATION VERSION
      textSize(18);
      fill(200, a);
      text(applicationVersion, 10, height/2 - 60, width, height);  // Text wraps within text box
    }
  }

  void dim() {
    if (on) {
      // DIM WITH DIMSPEED
      a-=dimspeed;
      //System.out.println("dimspeed = " + a);

      if (a < 0) {
        a = 0;
        on = !on;
      }
    }
  }
}
