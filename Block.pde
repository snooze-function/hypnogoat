class Block {
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean polychrome;
  int colourRange;
  float x;
  float y; 
  float w; 
  float h; 
  float a;
  int a_max;
  color c;

  int speed = 1;
  int state;

  //int r;
  //int g;
  //int b; 


  // Invader Constructor
  Block(boolean temp_polychrome, int temp_colourRange, int temp_a_max) {
    location = new PVector(random(0, width), random(0, height));
    velocity = new PVector(random(-1, 1), random(-1, 1));
    acceleration = new PVector(0, 0);

    x = random(width);
    y = random(height);
    w = random(0, width);
    h = random(0, height);

    polychrome = temp_polychrome;
    colourRange = temp_colourRange;
    a_max = temp_a_max;

    a = random(40, a_max);
    state = int(random(0, 3));

    get_new_random_colour(polychrome, 150);

    //r = random(255);
    //g = random(255);
    //b = random(255);

    // rotation = 0;
  }

  void display() {
    rectMode(CENTER);
    noStroke();
    fill(c, a);
    rect(location.x, location.y, w, h);
  }

  void update() {

    // Motion 101!  Velocity changes by acceleration.  Location changes by velocity.
    velocity.add(acceleration);
    //velocity.limit(topspeed);
    location.add(velocity);

    if (location.x < 0 || location.x > width || location.y < 0 || location.y > height) {
      velocity = velocity.mult(-1);
    }
  }

  // Constrain Invader to window
  //x = constrain(x, 0, width);
  //y = constrain(y, 0, height);

  // Constrain size
  //w = constrain(w, 4, width);
  //h = constrain(h, 4, height);

  // Constrain colour
  //r = constrain(r, 0, 255);
  //g = constrain(g, 0, 255);
  //b = constrain(b, 0, 255);

  void get_new_random_colour(boolean polychrome, int colourRange) {
    if (polychrome) {
      // GENERATE NEW PLOYCHROME COLOUR
      c = color(random(colourRange), random(colourRange), random(colourRange));
    } else {
      // GENERATE NEW MONOCHROME COLOUR
      c = color(random(colourRange));
    }
  }

  void reset() {
    // x = random(width);
    // y = random(height);
    //w = random(0, width);
    //h = random(0, height);


    //r = random(255);
    //g = random(255);
    //b = random(255);
    get_new_random_colour(polychrome, 150);
    a = random(40, a_max);
    state = int(random(0, 3));
  }
}
