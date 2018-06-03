class DropAnimation {
  Drop[] drops = new Drop[500];   // CREATE + INITIALIZE ARRAY
  boolean DropAnimation = false;

  DropAnimation() {
    for (int i = 0; i < drops.length; i++) {  
      drops[i] = new Drop();    // CREATE EACH DROP OBJECT
    }
  }

  void display() {
    if (DropAnimation) {
      for (int i = 0; i < drops.length; i++) {
        drops[i].fall();
        drops[i].display();
      }
    }
  }

  void trigger() {
    DropAnimation = !DropAnimation;
  }
}
