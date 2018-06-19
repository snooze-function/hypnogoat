// inc var maxOpacity, sizeMax, acceleration, colour min+max 
// var type, subType BOOLEAN, velocity, acceleration, grow, (start-position = durch velocity), start-size, maxSize, mono/polychrome, coulrRange
// var display - type, subtype, grow
// var get @init (creation+reset) - velocity, acceleration, start-position, start-size, (mono/poly, coulorRange)
// var get @mod - velocity, acceleration, position

class Mover {
  // Mover variables
  PVector location = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  //float acceleration = 0;
  // int index_position;
  // int index_size;
  float opacity;
  float fillOpacity;
  color c;
  //color invisible;
  float size;
  float initSize;
  float theta;
  float rotationSpeed;
  int index_type;
  int index_subType;
  int index_velocity;
  int index_acceleration;
  int index_grow;
  //int index_position;
  int index_size;
  boolean polychrome;
  int colourRange;
  int opacityMax;
  int index_typeMax = 10;
  int index_subTypeMax = 1;
  int index_velocityMax = 6;
  int index_accelerationMax = 10;
  int index_growMax = 10;
  //index_positionMax = index_velocityMax;
  float index_sizeMax; // make var include in subType/grow
  int topspeed = 8; // make var include in subType/grow
  boolean on;  // Turns the display on and off
  float fadeInSpeed = 5;
  float fadeOutSpeed = 8;
  int state;  // keeps track of objects state 0 = invisible + fade in 1 = normal 2 = fade out + invisible

  float initX;
  float initY;

  Mover(int temp_index_type, int temp_index_subType, int temp_index_velocity, int temp_index_acceleration, int temp_index_grow, int temp_index_size, int temp_index_sizeMax, boolean temp_polychrome, int temp_colourRange, int temp_opacityMax) {
    on = false;
    index_type = temp_index_type;
    index_subType = temp_index_subType;
    index_velocity = temp_index_velocity;
    index_acceleration = temp_index_acceleration;
    index_grow = temp_index_grow;
    //index_position = index_velocity;
    index_size = temp_index_size;
    index_sizeMax = temp_index_sizeMax;
    polychrome = temp_polychrome;
    colourRange = temp_colourRange;
    opacityMax = temp_opacityMax;

    theta = 0;
    rotationSpeed = 0;
  }

  // Mover Constructor
  void start() {

    //initializeMover(index_position, index_velocity, index_acceleration, index_size, index_sizeMax, polychrome, colourRange);
    initializeMover();

    on = true;
  }

  //void display(int index_type, int index_subType, float fadeInSpeed, float fadeOutSpeed) { 
  void display() { 
    display_type(index_type);
    display_subType(index_subType);


    // FADE IN
    if (state == 0) {
      opacity = opacity + fadeInSpeed;
      if (opacity == opacityMax) {
        opacity = opacityMax;
        state = 1;
      }
    }

    // FADE OUT
    if (state == 2) {
      opacity = opacity - fadeOutSpeed;
      if (opacity == 0) {
        on = false;
      }
    }
    limit_variables();
  }

  //void update(int index_velocity, int index_acceleration, int index_grow, int index_position, int index_size, int index_sizeMax, boolean polychrome, int colourRange) {
  void update() {
    //update_velocity(index_velocity);
    update_grow(index_grow);

    theta+=rotationSpeed;

    //c*=1.001;

    // Motion 101!  Velocity changes by acceleration.  Location changes by velocity.
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);

    //checkSizeAndLocation(index_position, index_velocity, index_acceleration, index_size, index_sizeMax, polychrome, colourRange); // BUG !!!!!
    checkSizeAndLocation(); // BUG !!!!!
    // constrain_variables();
  }

  void display_type(int index_type) {
    if (on) {

      pushMatrix();
      translate(location.x, location.y);
      rotate(theta);

      // DISPLAY SPACE INVADER a
      if (index_type == 0) {
        shape_spaceInvader_a(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY SPACE INVADER b
      if (index_type == 1) {
        shape_spaceInvader_b(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY SPACE INVADER c
      if (index_type == 2) {
        shape_spaceInvader_c(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY SPACE INVADER d
      if (index_type == 3) {
        shape_spaceInvader_d(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY SPACE INVADER e
      if (index_type == 4) {
        shape_spaceInvader_e(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY SPACE INVADER f
      if (index_type == 5) {
        shape_spaceInvader_f(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY SPACE INVADER g
      if (index_type == 6) {
        shape_spaceInvader_g(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY SPACE INVADER h
      if (index_type == 7) {
        shape_spaceInvader_h(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY PACMAN GHOST
      if (index_type == 8) {
        shape_pacman_ghost(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY RECTANGLE
      if (index_type == 9) {
        shape_rect(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY ELLIPSE
      if (index_type == 10) {
        shape_ellipse(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY 2 RECTANGLES
      if (index_type == 99) {
        shape_rect_x2(0, 0, size, size, c, opacity, fillOpacity);
      }

      // DISPLAY 4 RECTANGLES
      if (index_type == 99) {
      }

      // DISPLAY 8 RECTANGLES
      if (index_type == 99) {
      }

      // DISPLAY %
      if (index_type == 99) {
      }

      popMatrix();
    }
  }

  void display_subType(int index_subType) {

    // STROKE + FILL
    if (index_subType == 0) {
      fillOpacity = opacity;
    } else {
      fillOpacity = 0;
    }
  }

  void update_velocity(int index_velocity) {
    // SPEED UP
    if (index_velocity == 6) {
      velocity.add(random(-1, 1), random(-1, 1));
    }

    // SPEED DOWN
    if (index_velocity == 7) {
      velocity.sub(random(-1, 1), random(-1, 1));
    }
  }

  void update_grow(int index_grow) {
    float growSpeed = 0.4;
    size = size + 0.1 + growSpeed * index_grow;
    //System.out.println(index_grow);
  }

  //void fadeIn() {
  //  state = 0;
  //}

  void fadeOut() {
    state = 2;
  }

  //void checkSizeAndLocation(int index_position, int index_velocity, int index_acceleration, int index_size, int index_sizeMax, boolean polychrome, int colourRange) {
  void checkSizeAndLocation() {

    // RESET IF OFF SCREEN
    if (location.x < 0 - size * 2 || location.x > width + size * 2 || location.y < 0 - size * 2 || location.y > height + size * 2) {
      //reset(index_position, index_velocity, index_acceleration, index_size, index_sizeMax, polychrome, colourRange);
      reset();
      //System.out.println("POSITION OUT OF RANGE");
    }

    // FADE OUT + RESET IF LARGE THAN MAXSIZE
    if (size < 0 || size > index_sizeMax) {
      opacity = opacity-=5;
      if (opacity == 0) {
        reset();
        //System.out.println("SIZE OUT OF RANGE");
      }
    }
  }

  //void reset(int index_position, int index_velocity, int index_acceleration, int index_size, int index_sizeMax, boolean polychrome, int colourRange) {
  void reset() {
    if (on && state < 2) {

      //initializeMover(index_position, index_velocity, index_acceleration, index_size, index_sizeMax, polychrome, colourRange);
      initializeMover();

      //System.out.println("RESET ** SIZE OR POSITION OUT OF RANGE");
    }
  }

  void constrain_variables() {
    // Constrain Mover to window
    //location.x = constrain(location.x, 0 - size * 2, width + size * 2);
    // location.y = constrain(location.y, 0 - size * 2, height + size* 2);

    // Constrain size
    // size = constrain(size, size, sizeMax);

    // Constrain colour
    // c = constrain(c, 0, 255); // HOW TO CONSTRAIN c(0, 0, 0) HEX FUNCTION!!?????
    // r = constrain(r, 0, 255);
    // g = constrain(g, 0, 255);
    // b = constrain(b, 0, 255);
  }

  //void initializeMover(int index_position, int index_velocity, int index_acceleration, int index_size, int index_sizeMax, boolean polychrome, int colourRange) {
  void initializeMover() {

    // GET START POSITION
    get_start_position(index_velocity, index_size);

    // GET VELOCITY
    get_velocity(index_velocity);

    // GET ACCELERATION
    get_acceleration(index_acceleration);

    // GET SIZE
    get_start_size(index_size);

    // GET SIZE
    // sizeMax = index_sizeMax;

    // GET COLOUR
    get_new_random_colour(polychrome, colourRange);

    // RESET OPACITY
    opacity = 0;

    // RESET ROTATION
    theta = 0;

    // RESET STATE
    state = 0;
  }

  void get_start_position(int index_position, float index_size) {
    // START WITH RANDOM WIDTH + RANDOM HEIGHT
    if (index_velocity == 0) {
      location = new PVector(random(width), random(height));
    }

    // START OFF SCREEN (TOP) WITH RANDOM WIDTH
    if (index_velocity == 1) {
      location = new PVector(random(width), -index_size);
    }

    // START OFF SCREEN (BOTTOM) WITH RANDOM WIDTH
    if (index_velocity == 2) {
      location = new PVector(random(width), height + index_size);
    }

    // START OFF SCREEN (LEFT) WITH RANDOM HEIGHT
    if (index_velocity == 3) {
      location = new PVector(-index_size, random(height));
    }

    // START OFF SCREEN (RIGHT) WITH RANDOM HEIGHT
    if (index_velocity == 4) {
      location = new PVector(width + index_size, random(height));
    }

    // START WITH RANDOM WIDTH + RANDOM HEIGHT
    if (index_velocity == 5) {
      location = new PVector(random(width), random(height));
    }

    // START IN THE MIDDLE
    if (index_velocity == 6) {
      location = new PVector(width/2, height/2);
    }
  }

  void get_start_size(int index_size) {
    size = random(0, index_size + 1);
  }

  void get_velocity(int index_velocity) {
    // DON'T MOVE
    if (index_velocity == 0) {
      velocity = new PVector(0, 0);
    }

    // MOVE DOWN
    if (index_velocity == 1) {
      velocity = new PVector(0, 1);
    }

    // MOVE UP & DOWN
    if (index_velocity == 2) {
      velocity = new PVector(0, -1);
    }

    // MOVE RIGHT
    if (index_velocity == 3) {
      velocity = new PVector(1, 0);
    }

    // MOVE LEFT
    if (index_velocity == 4) {
      velocity = new PVector(-1, 0);
    }

    // MOVE IN RANDOM DIRECTION
    if (index_velocity == 5) {
      velocity = new PVector(random(-1, 1), random(-1, 1));
    }

    // MOVE IN RANDOM DIRECTION
    if (index_velocity == 6) {
      velocity = new PVector(random(-1, 1), random(-1, 1));
    }
  }

  void get_acceleration(int index_acceleration) {
    acceleration.x = velocity.x * index_acceleration/50;
    acceleration.y = velocity.y * index_acceleration/50;
  }

  void get_new_random_colour(boolean polychrome, int colourRange) {
    if (polychrome) {
      // GENERATE NEW PLOYCHROME COLOUR
      c = color(random(colourRange), random(colourRange), random(colourRange));
    } else {
      // GENERATE NEW MONOCHROME COLOUR
      c = color(random(colourRange));
    }
  }

  // MODIFY ANIMATION
  void mod(int x) {
    mod_animation_index_type(x);
    mod_animation_index_subType(x);
    mod_animation_index_velocity(x);
    mod_animation_index_acceleration(x);
    mod_animation_index_grow(x);
    mod_animation_rotationSpeed(x);
    mod_animation_reset_rotationSpeed(x);

    // System.out.println(x);
  }

  // MOD ANIMATION index_type
  void mod_animation_index_type(int x) {
    if (x == 2) {
      index_type--;
    } else if (x == 3) {
      index_type++;
    }
  }

  // MOD ANIMATION index_subType
  void mod_animation_index_subType(int x) {
    if (x == 4) {
      index_subType++;
    }
  }

  // MOD ANIMATION index_subType
  void mod_animation_reset_rotationSpeed(int x) {
    if (x == 5) {
      rotationSpeed = 0;
    }
  }

  // MOD ANIMATION index_velocity
  void mod_animation_index_velocity(int x) {
    if (x == 6) {
      index_velocity--;
    } else if (x == 7) {
      index_velocity++;
    }
  }

  // MOD ANIMATION index_acceleration
  void mod_animation_index_acceleration(int x) {
    if (x == 8) {
      index_acceleration--;
    } else if (x == 9) {
      index_acceleration++;
    }
  }

  // MOD ANIMATION index_grow
  void mod_animation_index_grow(int x) {
    if (x == 10) {
      index_grow--;
    } else if (x == 11) {
      index_grow++;
    }
  }

  void mod_animation_rotationSpeed(int x) {
    if (x == 12) {
      rotationSpeed-=0.002;
    } else if (x == 13) {
      rotationSpeed+=0.002;
    }
  }

  void limit_variables() {
    // CONSTRAIN VARIABLES
    if (index_type < 0) {
      index_type = index_typeMax;
    } else if (index_type > index_typeMax) {
      index_type = 0;
    }

    if (index_subType < 0) {
      index_subType = index_subTypeMax;
    } else if (index_subType > index_subTypeMax) {
      index_subType = 0;
    }

    if (index_velocity < 0) {
      index_velocity = index_velocityMax;
    } else if (index_velocity > index_velocityMax) {
      index_velocity = 0;
    }

    if (index_acceleration < 0) {
      index_acceleration = 0;
    } else if (index_acceleration > index_accelerationMax) {
      index_acceleration = index_accelerationMax;
    }

    if (index_grow < 0) {
      index_grow = 0;
    } else if (index_grow > index_growMax) {
      index_grow = index_growMax;
    }
  }
}
