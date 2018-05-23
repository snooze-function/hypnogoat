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


class InvaderAnimation {
  Invader[] invaders = new Invader[100];
  boolean InvaderAnimation = false;

  InvaderAnimation() {
    for (int i = 0; i < invaders.length; i++) {
      invaders[i] = new Invader(random(width), random(height), random(20), random(255), random(255), random(255));
    }
  }

  void display(int mod) {
    if (InvaderAnimation) {
      float factor = random(0, 1);
      for (int i = 0; i < invaders.length; i++) {
        invaders[i].moveInvader(mod, factor);
        invaders[i].drawInvader();
      }
    }
  }

  void trigger() {
    InvaderAnimation = !InvaderAnimation;
  }
}


class BlockAnimation {
  Block[] blocks = new Block[20];   // CREATE + INITIALIZE ARRAY
  boolean BlockAnimation = false;

  BlockAnimation() {
    for (int i = 0; i < blocks.length; i++) {  
      blocks[i] = new Block();    // CREATE EACH BLOCK OBJECT
    }

    /*
    for (int i = 0; i < blocks.length; i++) {
     // rings[i].grow();
     blocks[i].create();
     }
     */
  }

  void display() {
    if (BlockAnimation) {
      for (int i = 0; i < blocks.length; i++) {
        // blocks[i].create();  
        blocks[i].move();
        blocks[i].display();
      }
    }
  }

  void trigger() {
    BlockAnimation = !BlockAnimation;
  }
}


class RingAnimation {
  Ring[] rings = new Ring[100];   // CREATE + INITIALIZE ARRAY
  boolean RingAnimation = false;

  RingAnimation() {
    for (int i = 0; i < rings.length; i++) {
      rings[i] = new Ring();  // CREATE EACH RING OBJECT
    }
  }

  void display() {
    if (RingAnimation) {
      for (int i = 0; i < rings.length; i++) {
        rings[i].grow();
        rings[i].display();
      }
      if (timer.isFinished()) {  // RING SEQUENCER
        rings[currentRing].start(random(width), random(height));
        rings[currentRing].colour();
        currentRing++;
        if (currentRing >= rings.length) {
          currentRing = 0;
        }
      }
    }
  }

  void trigger() {
    RingAnimation = !RingAnimation;
  }
}


class RingReverseAnimation {
  RingReverse[] ringsReverse = new RingReverse[100];   // CREATE + INITIALIZE ARRAY
  boolean RingReverseAnimation = false;

  RingReverseAnimation() {
    for (int i = 0; i < ringsReverse.length; i++) {
      ringsReverse[i] = new RingReverse();  // CREATE EACH RING OBJECT
    }
  }

  void display() {

    if (RingReverseAnimation) {
      for (int i = 0; i < ringsReverse.length; i++) {
        ringsReverse[i].grow();
        ringsReverse[i].display();
      }

      if (timer.isFinished()) {  // RING SEQUENCER
        // System.out.println("bang");
        ringsReverse[currentRing].start(random(width), random(height));
        ringsReverse[currentRing].colour();
        currentRing++;
        if (currentRing >= ringsReverse.length) {
          currentRing = 0;
        }
      }
    }
  }

  void trigger() {
    RingReverseAnimation = !RingReverseAnimation;
  }
}


class LineAnimation {
  Line[] lines = new Line[50];    // CREATE + INITIALIZE ARRAY
  boolean LineAnimation = false;

  LineAnimation() {
    for (int i = 0; i < lines.length; i++) {
      lines[i] = new Line();    // CREATE EACH LINE OBJECT
    }
  }

  void display() {
    if (LineAnimation) {
      for (int i = 0; i < lines.length; i++) {
        // lines[i].animate();
        lines[i].display();
        lines[i].update();
      }
      if (timer.isFinished()) {  // RING SEQUENCER
        lines[currentLine].start();
        currentLine++;
        if (currentLine >= lines.length) {
          currentLine = 0;
        }
      }
    }
  }

  void trigger() {
    LineAnimation = !LineAnimation;
  }
}
