class RingReverse {
  float x, y;          // X-coordinate, y-coordinate
  float ySpeed = random(1.3, 1.9);
  float diameter;      // Diameter of the ring
  boolean ringsReverseOn = false;  // Turns the display on and off
  float diameterValue = random(2, 7);
  float colourValue = random(255);

  void start(float xpos, float ypos) {
    x = random(width);
    y = height + diameterValue*2; 

    diameter = diameterValue;
    ringsReverseOn = true;
  }
  
  void grow() {
    if (ringsReverseOn == true) {
      diameter = diameter + 1;
      y = y - ySpeed;
      /*
      if (diameter > 50) {
        ringsReverseOn = false;
        diameter = diameterValue; 
      }
      */
      if (y + 2*diameter < 0) {
        reset();
      }
    }
  }

  void display() {
    if (ringsReverseOn == true) {
      noFill();
      // fill(colourValue);
      strokeWeight(2);
      stroke(colourValue);
      ellipse(x, y, diameter, diameter);
      // textSize(32);
      // text("llllllll", x, y); 
      fill(colourValue);
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
    ringsReverseOn = false;
  }
  
  void hide() {
    noStroke();
    noFill();
  }
}
