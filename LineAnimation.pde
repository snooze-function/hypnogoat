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
