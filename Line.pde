class Line {
  float a1;
  float a2;
  float b1;
  float b2;
  float opacity;
  color c;
  float thickness;
  boolean on = false;  // Turns the display on and off

  void start() {
    a1 = random(width);
    a2 = random(height);
    b1 = random(height);
    b2 = random(height);
    opacity = 255;
    c = color(random(255), opacity);
    thickness = 0;
    on = true;
    // System.out.println("bullshit");
  }

  void display() {
    if (on == true) {
      strokeWeight(thickness);
      stroke(c, opacity);
      line(a1, a2, b1, b2);
    }
    // System.out.println("bullshit");
  }

  void update() {
    if (on == true) {
      thickness++;
      if (thickness > 10) {
        opacity-=5;
      }
      if (opacity == 0) {
        reset();
      }
      a1 = a1 + random(-2, 2);
      a2 = a2 + random(-2, 2);
      b1 = b1 + random(-2, 2);
      b2 = b2 + random(-2, 2);
    }
  }

  void reset() {
    a1 = random(width);
    a2 = random(height);
    b1 = random(height);
    b2 = random(height);
    c = color(random(255));
    thickness = 0;
    opacity = 255;
  }
}
