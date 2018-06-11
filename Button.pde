class Button {
  float x;
  float y;
  float a;
  float size;
  int index_x;
  int index_y;
  int fillColour;
  int strokeColour;
  int temp_mouse_x;
  int temp_mouse_y;
  boolean on;

  Button(float temp_x, float temp_y, float temp_size, float temp_a, int temp_index_x, int temp_index_y) {
    x = temp_x;
    y = temp_y;
    a = temp_a;
    size = temp_size;
    index_x = temp_index_x;
    index_y = temp_index_y;
    fillColour = 255;
    strokeColour = 0;
    //strokeColour = 255 - fillColour;
    on = false;
  }

  void display(int mx, int my) {
    if (on) {
      fillColour = 0; // CLICKED
      strokeColour = 255;
      //System.out.println(strokeColour);
    }
    if (!on) {
      if (mx > x && mx < x + size && my > y && my < y + size && !on) {
        fillColour = 200; // MOUSE OVER
        strokeColour = 0;
      } else {
        fillColour = 255;
        strokeColour = 0;
      }
    }
    rectMode(CORNER);
    strokeWeight(1);
    stroke(strokeColour, a);
    fill(fillColour, a);
    rect(x, y, size, size);
  }


  void rolloverPressed(int mx, int my) {
    if (mx > x && mx < x + size && my > y && my < y + size) {
      // SEND INDEX X+Y AN MONOME KEY IN
      key(index_x, index_y, 1);
      // System.out.println("virtualMonome key sent: " + index_x + "," + index_y + ",1");

      temp_mouse_x = mx;
      temp_mouse_y = my;
    }
  }

  void rolloverReleased() {
    float mx = temp_mouse_x;
    float my = temp_mouse_y;

    if (mx > x && mx < x + size && my > y && my < y + size) {
      // SEND INDEX X+Y AN MONOME KEY IN
      // key(index_x, index_y, 1);
      key(index_x, index_y, 0);
      //System.out.println("virtualMonome key sent: " + index_x + "," + index_y + ",0");
    }
  }

    void pageChange(int s) {
    if (s == 1) {
      on = true;
      // System.out.println("toggle");
    }
  }
  
  void momentary(int s) {
    if (s == 1) {
      on = true;
      // System.out.println("momentary");
    } else {
      on = false;
    }
  }


  void toggle(int s) {
    if (s == 1) {
      on = !on;
      // System.out.println("toggle");
    }
  }
}
