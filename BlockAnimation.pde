class BlockAnimation {
  int numOfBlocks;
  boolean polychrome;
  int colourRange;
  Block[] blocks;
  color c;
  int a_max;

  boolean on = false;

  BlockAnimation(int temp_numOfBlocks, boolean temp_polychrome, int temp_colourRange, int temp_a_max) {
    numOfBlocks = temp_numOfBlocks;
    polychrome = temp_polychrome;
    colourRange = temp_colourRange;
    a_max = temp_a_max;

    blocks = new Block[numOfBlocks];

    for (int i = 0; i < blocks.length; i++) {  
      blocks[i] = new Block(polychrome, colourRange, a_max);    // CREATE EACH BLOCK OBJECT
    }

    get_new_random_colour();
  }

  void display() {
    if (on) {
      for (int i = 0; i < blocks.length; i++) {
        blocks[i].update();
        blocks[i].display();
      }
    }
  }

  void get_new_random_colour() {
    if (polychrome) {
      // GENERATE NEW PLOYCHROME COLOUR
      c = color(random(colourRange), random(colourRange), random(colourRange));
    } else {
      // GENERATE NEW MONOCHROME COLOUR
      c = color(random(colourRange));
    }
  }

  // ANIMATION MONOME KEY INPUT
  void monomeKeyIn(int x) {
    // SWITCH ANIMATION ON/OFF + FADE ANIMATION IN/OUT
    toggle(x);
  }

  void toggle(int x) {
    if (x == 0) {
      //System.out.println("bang");

      // SWITCH ANIMATION ON/OFF
      on = !on;
    }
  }
}
