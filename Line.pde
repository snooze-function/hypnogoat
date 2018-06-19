class Line {
  PVector locationA;
  PVector locationB;
  PVector velocity;
  PVector acceleration;

  float x1;
  float y1;
  float x2;
  float y2;
  float a;
  int a_max;
  color c;
  float thickness;
  boolean on;  // Turns the display on and off

  Line(int temp_a_max) {
    a_max = temp_a_max;

    locationA = new PVector(random(0, width), 0);
    locationB = new PVector(locationA.x, height);
    velocity = new PVector(random(-1, 1), 0);
    acceleration = new PVector(0, 0);
    //x1 = random(width);
    //y1 = 0;
    //x2 = x1;
    //y2 = height;
    a = random(10, a_max);
    c = color(random(255), a);
    thickness = random(0.1, 25);

    on = false;
  }

  void start() {
    on = true;
    // System.out.println("line started");
  }

  void display() {
    if (on) {
      strokeWeight(thickness);
      stroke(c, a);
      line(locationA.x, locationA.y, locationB.x, locationB.y);
    }
    // System.out.println("bullshit");
  }

  void update() {
    //if (on) {
    //  thickness+=0.01;
    //  if (thickness > 5) {
    //    a-=5;
    //  }
    //  if (a == 0) {
    //    reset();
    //  }

    if (on) {
      // Motion 101!  Velocity changes by acceleration.  Location changes by velocity.
      velocity.add(acceleration);
      //velocity.limit(topspeed);
      locationA.add(velocity);
      locationB.add(velocity);

      if (locationA.x < 0 || locationA.x > width) {
        velocity = velocity.mult(-1);
      }
    }
  }

  void reset() {
    //x1 = random(width);
    //y1 = random(height);
    //x2 = random(height);
    //y2 = random(height);
    c = color(random(255));
    thickness = 0;
    a = 255;
    on = !on;
  }
}
