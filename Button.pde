class Button {
  float x;
  float y;
  float a;
  float size;
  int index_X;
  int index_Y;
  boolean on;

  Button(float tempX, float tempY, float tempSize, float tempA, int tempIndex_X, int tempIndex_Y) {
    x = tempX;
    y = tempY;
    a = tempA;
    size = tempSize;
    index_X = tempIndex_X;
    index_Y = tempIndex_Y;
    on = false;
  }

  void display(int mx, int my) {
    rectMode(CORNER);
    strokeWeight(1);
    //if (index_Y < 2) {
    if (on) {
      stroke(255, a);
      fill(0, a);
      rect(x, y, size, size);
      // on = !on;
    } else if (mx > x && mx < x + size && my > y && my < y + size) {
      stroke(0, a);
      fill(220, a);
      rect(x, y, size, size);
    } else {
      stroke(0, a);
      fill(255, a);
      rect(x, y, size, size);
      // key(index_X, index_Y, 0);
    }
  }

  //  } else {
  //    if (on) {
  //      stroke(255, a);
  //      fill(0, a);
  //      rect(x, y, size, size);
  //      on = !on;
  //    } else if (mx > x && mx < x + size && my > y && my < y + size) {
  //      stroke(0, a);
  //      fill(220, a);
  //      rect(x, y, size, size);
  //    } else {
  //      stroke(0, a);
  //      fill(255, a);
  //      rect(x, y, size, size);
  //      // key(index_X, index_Y, 0);
  //    }
  //  }
  //}

  void rollover(int mx, int my) {
    if (mx > x && mx < x + size && my > y && my < y + size) {
      // on = !on;
      // send index_X & index_Y zu void key(args);
      key(index_X, index_Y, 1);
      System.out.println("rollover");
      // key(index_X, index_Y, 0);

      // virtualDirty = false;
    }
  }

  void buttonRelease(int mx, int my) {
    if (mx > x && mx < x + size && my > y && my < y + size) {
      // on = !on;
      // send index_X & index_Y zu void key(args);
      // key(index_X, index_Y, 1);
      key(index_X, index_Y, 0);
      System.out.println("buttonRelease");

      // virtualDirty = false;
    }
  }

  void trigger(int x, int y, int s) {
    //System.out.println("sdjf");

    if (y == 0) {
      on = true;
      // System.out.println("toggle");
    }

    if (y > 0 && x == 0 && s == 1) {
      on = !on;
      //on = true;
      System.out.println("toggle");
    } else if (y > 0 && x > 1) {
      on = !on;
      // on = true;
      //System.out.println("dong");
    }
  }
}
//if (y > 1 && x > 0) {
//  on = true;
//  // System.out.println("momentary");
//}
