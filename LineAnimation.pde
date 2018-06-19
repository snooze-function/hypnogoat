class LineAnimation {
  int numLines;
  int currentLine = 0;
  boolean on;

  Line[] lines;

  LineAnimation(int temp_numLines, int a_max) {
    numLines = temp_numLines;

    on = false;

    // CREATE THE ARRAY
    lines = new Line[numLines];

    // CREATE EACH OBJECT
    for (int i = 0; i < lines.length; i++) {
      lines[i] = new Line(a_max);
    }
  }

  // START LINES
  void start() {
    if (on) {
      lines[currentLine].start();
      currentLine++;
      if (currentLine >= numLines) {
        currentLine = 0;
      }
      //System.out.println("bang");
    }
  }

  //DISPLAY LINES
  void display() {
    if (on) {
      for (int i = 0; i < lines.length; i++) {
        lines[i].display();
        lines[i].update();
      }
    }
  }

  // ANIMATION MONOME KEY INPUT
  void monomeKeyIn(int x) {

    //System.out.println("bang");

    // SWITCH ANIMATION ON/OFF + FADE ANIMATION IN/OUT
    toggle(x);

    // MODIFY MOVER

    //for (int i = 0; i < lines.length; i++) {
    //  lines[i].mod(x);
    //}


    // DISPLAY MODIFICATION
    //systemOut_printModifier(x);
  }

  void toggle(int x) {
    if (x == 0) {
      //System.out.println("bang");

      // SWITCH ANIMATION ON/OFF
      on = !on;

      // IF ANIMATION OFF FADE ANIMATION OUT
      //if (on) {
      //  System.out.println("MoverAnimation Display = " + on);
      //} else {
      //  for (int i = 0; i < movers.length; i++) {
      //    movers[i].fadeOut();
      //  }
      //}
    }
  }

  //void systemOut_printModifier(int x) {
  //  if (on) {
  //    if (x == 2 || x == 3) {
  //      System.out.println("Mod index_type");
  //    }

  //    if (x == 4) {
  //      System.out.println("Mod index_subType");
  //    }

  //    if (x == 6 || x == 7) {
  //      System.out.println("Mod index_velocity & index_position");
  //    }

  //    if (x == 8 || x == 9) {
  //      System.out.println("Mod index_grow");
  //    }

  //    if (x == 10 || x == 11) {
  //      System.out.println("Mod index_acceleration");
  //    }
  //  }
  //}
}
