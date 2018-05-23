class Ring {
  float x, y;          // X-coordinate, y-coordinate
  int ySpeed = 1;
  float diameter;      // Diameter of the ring
  boolean ringsOn = false;  // Turns the display on and off
  float diameterValue = random(2);
  float colourValue = random(255);

  void start(float xpos, float ypos) {
    x = random(width);
    y = 0 - diameterValue*2; 

    diameter = diameterValue;
    ringsOn = true;
  }
  
  void grow() {
    if (ringsOn == true) {
      diameter = diameter + 0.2;
      y = y + ySpeed;
      /*
      if (diameter > 50) {
        ringsOn = false;
        diameter = diameterValue;
      }
      */
      if (y > height + 2*diameter) {
        reset();
      }
    }
  }

  void display() {
    if (ringsOn == true) {
      // noFill();
      fill(colourValue);
      strokeWeight(2);
      stroke(colourValue);
      ellipse(x, y, diameter, diameter);
      // System.out.println(colourValue);
    }
  }
  
  void colour() {
    colourValue = random(255);
    // System.out.println(colourValue);
  }
  
  void reset() {
    diameter = diameterValue;
    y = 0 - diameterValue*2;
    ringsOn = false;
  }
  
  void hide() {
    noStroke();
    noFill();
  }
}
