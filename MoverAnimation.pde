class MoverAnimation {
  int numMovers;
  int currentMover = 0;
  boolean on;

  Mover[] movers;

  MoverAnimation(int tempNumMover, int temp_index_type, int temp_index_subType, int temp_index_velocity, int temp_index_acceleration, int temp_index_grow, int temp_index_size, int temp_index_sizeMax, boolean temp_polychrome, int temp_colourRange, int temp_opacityMax) {
    numMovers = tempNumMover;
    on = false;

    // CREATE THE ARRAY
    movers = new Mover[numMovers];

    // CREATE EACH OBJECT
    for (int i = 0; i < movers.length; i++) {
      movers[i] = new Mover(temp_index_type, temp_index_subType, temp_index_velocity, temp_index_acceleration, temp_index_grow, temp_index_size, temp_index_sizeMax, temp_polychrome, temp_colourRange, temp_opacityMax);
    }
  }

  // START MOVER
  void start() {
    if (on) {
      movers[currentMover].start();
      currentMover++;
      if (currentMover >= numMovers) {
        currentMover = 0;
      }
      //System.out.println("bang");
    }
  }

  //DISPLAY MOVER
  void display() {
    // System.out.println("index_type = " + index_type + " index_subType = " + index_subType + " index_velocity = " + index_velocity + " index_grow = " + index_grow);
    for (int i = 0; i < movers.length; i++) {
      movers[i].display();
      movers[i].update();
    }
  }

  // ANIMATION MONOME KEY INPUT
  void monomeKeyIn(int x) {

    //System.out.println("bang");
    
    // SWITCH ANIMATION ON/OFF + FADE ANIMATION IN/OUT
    toggle(x);

    // MODIFY MOVER

    for (int i = 0; i < movers.length; i++) {
      movers[i].mod(x);
    }


    // DISPLAY MODIFICATION
    systemOut_printModifier(x);
  }

  void toggle(int x) {
    if (x == 0) {
      //System.out.println("bang");

      // SWITCH ANIMATION ON/OFF
      on = !on;

      // IF ANIMATION OFF FADE ANIMATION OUT
      if (on) {
        System.out.println("MoverAnimation Display = " + on);
      } else {
        for (int i = 0; i < movers.length; i++) {
          movers[i].fadeOut();
        }
      }
    }
  }

  void systemOut_printModifier(int x) {
    if (on) {
      if (x == 2 || x == 3) {
        System.out.println("Mod index_type");
      }

      if (x == 4) {
        System.out.println("Mod index_subType");
      }

      if (x == 6 || x == 7) {
        System.out.println("Mod index_velocity & index_position");
      }

      if (x == 8 || x == 9) {
        System.out.println("Mod index_grow");
      }

      if (x == 10 || x == 11) {
        System.out.println("Mod index_acceleration");
      }
    }
  }
}
