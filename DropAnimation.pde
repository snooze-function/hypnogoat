class DropAnimation {
  Drop[] drops = new Drop[500];   // CREATE + INITIALIZE ARRAY
  boolean on = false;

  DropAnimation() {
    for (int i = 0; i < drops.length; i++) {  
      drops[i] = new Drop();    // CREATE EACH DROP OBJECT
    }
  }

  void display() {
    if (on) {
      for (int i = 0; i < drops.length; i++) {
        drops[i].fall();
        drops[i].display();
      }
    }
  }

  void trigger() {
    on = !on;
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
}
