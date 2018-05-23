class Block {
  // Invader variables
  float x, y, w, h, r, g, b, a;
  int speed = 1;
  int state;

  // Invader Constructor
  Block() {
    x = random(width);
    y = random(height);
    w = random(0, width);
    h = random(0, height);
    r = random(255);
    g = random(255);
    b = random(255);
    a = random(40, 255);
    state = int(random(0, 3));
    // rotation = 0;
  }

  void display() {
    rectMode(CENTER);
    noStroke();
    fill(r, g, b, a);
    rect(x, y, w, h);
  }

  void move() {
    if (state == 0) {
      x = x + speed;
      if (x > width) {
        reset();
        state = int(random(0, 3));
      }
    }

    if (state == 1) {
      y = y - speed;
      if (y < 0) {
        reset();
        state = int(random(0, 3));
      }
    }

    if (state == 2) {
      x = x - speed;
      if (x < 0) {
        reset();
        state = int(random(0, 3));
      }
    }

    if (state == 3) {
      y = y + speed;
      if (y > height) {
        reset();
        state = int(random(0, 3));
      }
    }


    // Constrain Invader to window
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);

    // Constrain size
    w = constrain(w, 4, width);
    h = constrain(h, 4, height);

    // Constrain colour
    r = constrain(r, 0, 255);
    g = constrain(g, 0, 255);
    b = constrain(b, 0, 255);
  }

  void reset() {
    // x = random(width);
    // y = random(height);
    w = random(0, width);
    h = random(0, height);
    r = random(255);
    g = random(255);
    b = random(255);
    a = random(40, 255);
    state = int(random(0, 3));
  }
}

/*
  void mod(int index_Y, float speed) {
 x_animation(index_Y, speed);
 y_animation(index_Y, speed);
 size_animation(index_Y, speed);
 colour_animation(index_Y, speed);
 opacity_animation(index_Y, speed);
 }
 
 void x_animation(int index_Y, float speed) {
 // mod 01    
 if (index_Y == 1) {
 // x = x + random(-15, 15)*speed;
 }
 
 // mod 02    
 if (index_Y == 2) {
 }
 
 // mod 03   
 if (index_Y == 3) {
 }
 
 // mod 04    
 if (index_Y == 4) {
 }
 
 // mod 05   
 if (index_Y == 5) {
 }
 
 // mod 06    
 if (index_Y == 6) {
 }
 
 // mod 07    
 if (index_Y == 7) {
 }
 }
 
 void y_animation(int index_Y, float speed) {
 
 // mod 01    
 if (index_Y == 1) {
 if (y > height/2) {
 y = y + speed * 2;
 } else {
 y = y - speed * 2;
 }
 if (y < 0 || y > height) {
 }
 }
 
 // mod 02    
 if (index_Y == 2) {
 if (y > height/2) {
 y = y + speed;
 } else {
 y = y - speed;
 }
 }
 
 // mod 03   
 if (index_Y == 3) {
 if (y > height/2) {
 y = y + speed;
 } else {
 y = y - speed;
 }
 }
 
 // mod 04    
 if (index_Y == 4) {
 if (y > height/2) {
 y = y + speed;
 } else {
 y = y - speed;
 }
 }
 
 // mod 05   
 if (index_Y == 5) {
 if (y > height/2) {
 y = y + speed/2;
 } else {
 y = y - speed/2;
 }
 }
 
 // mod 06    
 if (index_Y == 6) {
 if (y > height/2) {
 y = y + speed/4;
 } else {
 y = y - speed/4;
 }
 }
 
 // mod 07    
 if (index_Y == 7) {
 if (y > height/2) {
 y = y + speed/8;
 } else {
 y = y - speed/8;
 }
 }
 }
 
 void size_animation(int index_Y, float speed) {
 
 // mod 01    
 if (index_Y == 1) {
 size = size + speed;
 }
 
 // mod 02    
 if (index_Y == 2) {
 size = size + speed;
 }
 
 // mod 03   
 if (index_Y == 3) {
 size = size + speed;
 }
 
 // mod 04    
 if (index_Y == 4) {
 size = size + speed;
 }
 
 // mod 05   
 if (index_Y == 5) {
 size = size + speed/2;
 }
 
 // mod 06    
 if (index_Y == 6) {
 size = size + speed/4;
 }
 
 // mod 07    
 if (index_Y == 7) {
 size = size + speed/8;
 }
 }
 
 
 void colour_animation(int index_Y, float speed) {
 
 // mod 01    
 if (index_Y == 1) {
 r = r + random(-15, 15)*speed;
 g = g + random(-15, 15)*speed;
 b = b + random(-15, 15)*speed;
 }
 
 // mod 02    
 if (index_Y == 2) {
 }
 
 // mod 03   
 if (index_Y == 3) {
 }
 
 // mod 04    
 if (index_Y == 4) {
 }
 
 // mod 05   
 if (index_Y == 5) {
 }
 
 // mod 06    
 if (index_Y == 6) {
 }
 
 // mod 07    
 if (index_Y == 7) {
 }
 }
 
 void opacity_animation(int index_Y, float speed) {
 
 // mod 01    
 if (index_Y == 1) {
 if (size > 10) {
 a = a - speed*20;
 }
 }
 
 // mod 02    
 if (index_Y == 2) {
 if (size > 15) {
 a = a - speed*20;
 }
 }
 
 // mod 03   
 if (index_Y == 3) {
 if (size > 20) {
 a = a - speed*20;
 }
 }
 
 // mod 04    
 if (index_Y == 4) {
 if (size > 25) {
 a = a - speed*20;
 }
 }
 
 // mod 05   
 if (index_Y == 5) {
 if (size > 30) {
 a = a - speed*20;
 }
 }
 
 // mod 06    
 if (index_Y == 6) {
 if (size > 35) {
 a = a - speed*20;
 }
 }
 
 // mod 07    
 if (index_Y == 7) {
 if (size > 40) {
 a = a - speed*20;
 }
 }
 }
 */
