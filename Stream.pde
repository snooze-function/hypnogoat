class Stream {
  ArrayList<Char> chars;
  int numChar;
  int speed;

  Stream(int temp_x) {

    chars = new ArrayList<Char>();

    numChar = round(random(30, 80));

    speed = round(random(3, 5));

    for (int y = int(random(-height/2, height/2)); y < numChar*20; y+=20) {
      chars.add(new Char(temp_x, y));
    }
  }

  void update() {
    for (int i = 0; i < chars.size(); i++) {
      float alpha = map(i, 0, chars.size()-1, 0, 150);
      fill(250, 150, 0, alpha);
      if (i == chars.size()-1) {
        fill(150, 150, 150);
      }
      chars.get(i).show();

      // MOVE CHARACTERS
      if (frameCount % speed == 0) {
        chars.get(i).y +=20;

        // CHARACTER STAYS, IF SIZE-1 NEW CHAR
        if (i == chars.size()-1) {
          chars.get(i).getRandomChar();
        } else {
          chars.get(i).theChar = chars.get(i+1).theChar;
        }
      }

      // CHANGE CHARACTER RANDOMLY
      if (random(1) < 0.001) {
        chars.get(i).getRandomChar();
      }
    }

    // RESTART STREAM AT THE TOP WHEN LAST CHARACTER REACHES BOTTOM
    if (chars.get(0).y > height) {
      for (int i = 0; i < chars.size(); i++) {
        chars.get(i).y = ((chars.size()-1)-i) * -20;
      }
    }
  }
}
