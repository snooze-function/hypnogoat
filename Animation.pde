class Animation {
  DropAnimation animation_00;
  InvaderAnimation animation_01;
  BlockAnimation animation_02;
  RingAnimation animation_03;
  RingReverseAnimation animation_04;
  LineAnimation animation_05;
  // Animation_06 animation_06;
  // Animation_07 animation_07;
  // boolean Animation_01 = false;

  Animation() {
    animation_00 = new DropAnimation();
    animation_01 = new InvaderAnimation();
    animation_02 = new BlockAnimation();
    animation_03 = new RingAnimation();
    animation_04 = new RingReverseAnimation();
    animation_05 = new LineAnimation();
    // animation_06 = new Animation_07();
    // animation_07 = new Animation_08();
  }

  void display(int mod) {
    animation_00.display();
    // animation_01.display();
    animation_01.display(animation_01_mod);
    animation_02.display();
    animation_03.display();
    animation_04.display();
    animation_05.display();
    // animation_06.display();
    // animation_07.display();
  }

  void trigger(int x) {
    if (x == 0) {
      animation_00.trigger();
    }
    if (x == 1) {
      animation_01.trigger();
    }
    if (x == 2) {
      animation_02.trigger();
    }
    if (x == 3) {
      animation_03.trigger();
    }
    if (x == 4) {
      animation_04.trigger();
    }
    if (x == 5) {
      animation_05.trigger();
    }
    if (x == 6) {
      // animation_06.trigger();
    }
    if (x == 7) {
      // animation_07.trigger();
    }
  }
}


/*
    if (led[1][0] == 15) {  // DROP ANIMATION
 animation_02.display();
 }
 
 if (led[1][1] == 15) {  // LINE ANIMATION
 animation_03.display();
 }
 
 if (led[1][2] == 15) {  // RING ANIMATION
 animation_04.display();
 }
 
 if (led[1][3] == 15) {  // RING REVERSE ANIMATION
 animation_05.display();
 }
 
 if (led[1][4] == 15) {  // BLOCK ANIMATION
 animation_06.display();
 }
 
 if (led[1][5] == 15) {  // LINE ANIMATION
 animation_01.display(animation_01_mod);
 }
 */
