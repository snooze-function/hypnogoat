class Char {
  char theChar;
  int x, y;

  Char(int temp_x, int temp_y) {
    x = temp_x;
    y = temp_y;

    getRandomChar();
  }

  void show() {
    textAlign(CENTER, TOP);
    textSize(20);
    text(theChar, x, y);
  }

  void getRandomChar() {
    int charType = round(random(1));
    if (charType == 0) {
      int rndChar = round(random(48, 90));
      theChar = char(rndChar);
    } else if (charType == 1) {
      int rndChar = round(random(12448, 12543));
      theChar = char(rndChar);
    }
  }
}
