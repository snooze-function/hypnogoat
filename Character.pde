class Char {
  char theChar;
  int x, y;
  int currentChar;
  int numOfChars;

  Char(int temp_x, int temp_y) {
    x = temp_x;
    y = temp_y;

    currentChar = 0;
    numOfChars = 11;

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

  void getHypnogoatChars() {
    if (currentChar == 0) {
      theChar = char(65352); // h
    }
    if (currentChar == 1) {
      theChar = char(65369); // y
    }
    if (currentChar == 2) {
      theChar = char(65360); // p
    }
    if (currentChar == 3) {
      theChar = char(65358); // n
    }
    if (currentChar == 4) {
      theChar = char(65359); // o
    }
    if (currentChar == 5) {
      theChar = char(65351); // g
    }
    if (currentChar == 6) {
      theChar = char(65359); // o
    }
    if (currentChar == 7) {
      theChar = char(65345); // a
    }
    if (currentChar == 8) {
      theChar = char(65364); // t
    }
    if (currentChar == 9) {
      theChar = char(42895); // dot
    }
    if (currentChar == 10) {
      theChar = char(42895); // dot
    }
    if (currentChar == 11) {
      theChar = char(42895); // dot
    }

    currentChar++;

    if (currentChar > numOfChars) {
      currentChar = 0;
    }

    // h = 65352
    // y = 65369
    // p = 65360
    // n = 65358
    // o = 65359
    // g = 65351
    // o = 65359
    // a = 65345
    // t = 65364
    // dot = 42895
  }
}
