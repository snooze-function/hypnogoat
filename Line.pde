class Line {
  float x1;
  float y1;
  float x2;
  float y2;
  float opacity;
  color c;
  float thickness;
  boolean on = false;  // Turns the display on and off

  void start() {
    x1 = random(width);
    y1 = random(height);
    x2 = random(height);
    y2 = random(height);
    opacity = 255;
    c = color(random(255), opacity);
    thickness = 0;
    on = true;
    // System.out.println("bullshit");
  }

  void display() {
    if (on) {
      strokeWeight(thickness);
      stroke(c, opacity);
      line(x1, y1, x2, y2);
    }
    // System.out.println("bullshit");
  }

  void update() {
    if (on) {
      thickness+=0.01;
      if (thickness > 5) {
        opacity-=5;
      }
      if (opacity == 0) {
        reset();
      }
      //int randomValue = 5;
      //x1 = x1 + random(randomValue);
      //y1 = y1 + random(-randomValue);
      //x2 = x2 + random(-randomValue);
      //y2 = y2 + random(randomValue);
    }
  }

  void reset() {
    x1 = random(width);
    y1 = random(height);
    x2 = random(height);
    y2 = random(height);
    c = color(random(255));
    thickness = 0;
    opacity = 255;
    on = !on;
  }
}
