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
