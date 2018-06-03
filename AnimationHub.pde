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
  //int currentPage; // USE FOR PAGING
  int numAnimations;
  boolean on; // UNUSED

  MoverAnimation[][] animations;

  AnimationHub( int temp_numAnimationPages, int temp_numAnimations) {
    numAnimationPages = temp_numAnimationPages;
    //currentPage = temp_currentPage;
    numAnimations = temp_numAnimations;
    on = false; // UNUSED

    // CREATE THE ARRAY
    animations = new MoverAnimation[numAnimationPages][numAnimations];

    // FILL ARRAY WITH ANIMATIONS
    for (int i = 0; i < numAnimationPages; i++) {
      for (int j = 0; j < numAnimations; j++) {
        animations[i][j] = new MoverAnimation(25, int(random(11)), 0, 7, int(random(11)), 1, 1, height/5, true, 150, 255);
      }
    }
  }

  void start() {
    for (int i = 0; i < numAnimationPages; i++) {
      for (int j = 0; j < numAnimations; j++) 
        animations[i][j].start();
    }
  }

  void display() {
    for (int i = 0; i < numAnimationPages; i++) {
      for (int j = 0; j < numAnimations; j++) {
        animations[i][j].display();
      }
    }
  }

  // ANIMATION-HUB MONOME KEY INPUT
  void monomeKeyIn(int x, int y, int s) {

    // IF NOT PAGE CHANGE && MONOME KEY s == 1
    if (y > 0 && s == 1) {
      // SEND MONOME KEY X TO ANIMATION Y
      animations[currentLedPage][y].monomeKeyIn(x);
    }
    //System.out.println("bang");
  }
}
