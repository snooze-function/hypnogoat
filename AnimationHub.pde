// ANIMATION CONSTRUCTOR ARGUMENTS
// MoverAnimation(NumMovers, index_type, index_subType, index_velocity, index_grow, index_size, index_sizeMax, Polychrome, ColourRange, opacityMax)
// int tempNumInvader, int temp_index_type, int temp_index_subType, int temp_index_velocity, int temp_index_acceleration, int temp_index_grow, int temp_index_size, int temp_index_sizeMax, boolean tempPolychrome, int tempColourRange
// types 3 #0 = spaceInvader #1 = rect #2 = ellipse #3 = rect_x4
// subTypes 1 #0 fill #1 noFill
// velocity + location 5 #0 top/bottom #1 bottom/top #2 right/left #3 left/right #4 random/random #5 center/random 
// grow 20 #greater = faster
// size NOT DEFINED

class AnimationHub {
  int numAnimationPages;// USE FOR PAGING
  int currentPage; // USE FOR PAGING
  int numAnimations;
  boolean on; // UNUSED

  // INITIALIZE ARRAYS
  MoverAnimation[] animationHubPage00;
  LineAnimation[] animationHubPage01;
  DropAnimation[] animationHubPage02;
  BlockAnimation[] animationHubPage03;

  AnimationHub( int temp_numAnimationPages, int temp_numAnimations) {
    numAnimationPages = temp_numAnimationPages;
    currentPage = 0;
    numAnimations = temp_numAnimations;
    on = false; // UNUSED

    // CREATE ARRAYS
    animationHubPage00 = new MoverAnimation[numAnimations];
    animationHubPage01 = new LineAnimation[numAnimations];
    animationHubPage02 = new DropAnimation[numAnimations];
    animationHubPage03 = new BlockAnimation[numAnimations];

    // FILL ARRAYS WITH ANIMATIONS
    for (int i = 1; i < numAnimations; i++) { // i = 1 BECAUSE INDEX 0 IS UNUSED BECAUSE OF PSGE CHANGE FUNCTION
      animationHubPage00[i] = new MoverAnimation(25, int(random(11)), 0, 7, int(random(11)), 1, 1, height/5, true, 150, 255);
      animationHubPage01[i] = new LineAnimation(25, 180);
      animationHubPage02[i] = new DropAnimation();
      animationHubPage03[i] = new BlockAnimation(20, false, 150, 80);
    }
  }

  void start() {
    for (int i = 1; i < numAnimations; i++) { // i = 1 BECAUSE INDEX 0 IS UNUSED BECAUSE OF PSGE CHANGE FUNCTION
      animationHubPage00[i].start();
      animationHubPage01[i].start();
    }
  }

  void display() {
    for (int i = 1; i < numAnimations; i++) { // i = 1 BECAUSE INDEX 0 IS UNUSED BECAUSE OF PSGE CHANGE FUNCTION
      animationHubPage03[i].display();
      animationHubPage02[i].display();      
      animationHubPage01[i].display();
      animationHubPage00[i].display();
    }
  }

  // ANIMATION-HUB MONOME KEY INPUT
  void monomeKeyIn(int x, int y, int s) {
    //System.out.println("ANIMATION-HUB MONOME KEY INPUT " + x + ", " + y + ", " + s);

    // CHANGE ANIMATION HUB PAGE
    if (y == 0 && s == 1) {
      currentPage = x;
      System.out.println(" >>> ANIMATION_HUB_PAGE = " + currentPage);
    }

    // SEND MONOME KEY X, Y TO ANIMATION HUB PAGE
    if (currentPage == 0) {
      if (y > 0 && s == 1) {
        // SEND MONOME KEY X TO ANIMATION Y
        animationHubPage00[y].monomeKeyIn(x);
      }
    }

    if (currentPage == 1) {
      if (y > 0 && s == 1) {
        animationHubPage01[y].monomeKeyIn(x);
      }
    }

    if (currentPage == 2) {
      if (y > 0 && s == 1) {
        animationHubPage02[y].monomeKeyIn(x);
      }
    }
    if (currentPage == 3) {
      if (y > 0 && s == 1) {
        animationHubPage03[y].monomeKeyIn(x);
      }
    }
  }
}
