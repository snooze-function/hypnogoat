class Invader {
  // Invader variables
  float x, y, size, r, g, b, a, rotation;

  // Invader Constructor
  Invader(float tempX, float tempY, float tempSize, float tempR, float tempG, float tempB) {
    x = tempX;
    y = tempY;
    size = tempSize;
    r = tempR;
    g = tempG;
    b = tempB;
    a = 255;
    // rotation = 0;
  }

  void drawInvader() {

    // translate(width/2, height/2);
    // pushMatrix();
    // translate(x, y);
    // rotate(radians(rotation));

    // Antennen
    rectMode(CENTER);
    noStroke();
    fill(r, g, b, a);
    rect(x - size*3, y - size*3.4, size, size);
    rect(x + size*3, y - size*3.4, size, size);
    rect(x - size*2, y - size*2.4, size, size);
    rect(x + size*2, y - size*2.4, size, size);

    // Invader Body
    rect(x, y, size*7, size*4);

    // Arme
    rect(x - size*3.9, y, size, size*2);
    rect(x + size*3.9, y, size, size*2);
    rect(x - size*4.8, y + size*1.5, size, size*3);
    rect(x + size*4.8, y + size*1.5, size, size*3);

    // Beine
    rect(x - size*3, y + size*2.4, size, size);
    rect(x + size*3, y + size*2.4, size, size);
    rect(x - size*1.5, y + size*3.4, size*2, size);
    rect(x + size*1.5, y + size*3.4, size*2, size);

    // Invader Eyes
    noStroke();
    fill(size + 200, a);
    rect(x - size*2, y - size/8, size, size);
    rect(x + size*2, y - size/8, size, size);

    // popMatrix();
  }

  void moveInvader(int index_Y, float speed) {
    mod(index_Y, speed);
    // System.out.println(index_Y);

    if (y < 0 || y > height || a < 0) {
      reset();

      // Constrain Invader to window
      x = constrain(x, 0, width);
      y = constrain(y, 0, height);

      // Constrain size
      size = constrain(size, 0, height);

      // Constrain colour
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
    }
  }

  void reset() {
    x = random(width);
    y = random(height);
    size = 1;
    a = 255;
    rotation = 0;
  }

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

    // mod 00    
    if (index_Y == 0) {
    }

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

    // mod 00  
    if (index_Y == 0) {
      size = size + speed/50;
    }

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
    
        // mod 00    
    if (index_Y == 0) {
      if (size > 20) {
        a = a - speed*20;
      }
    }

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
}
