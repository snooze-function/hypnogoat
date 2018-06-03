// SHAPES

void shape_spaceInvader_a(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {

  w = w/11;
  h = h/11;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  rect(x - w * 3, y - h * 3.5, w, h);
  rect(x + w * 3, y - h * 3.5, w, h);
  rect(x - w * 2, y - h * 2.5, w, h);
  rect(x + w * 2, y - h * 2.5, w, h);

  // Invader Body
  rect(x, y, w * 7, h * 4);

  // Arme
  rect(x - w * 4, y, w, h * 2);
  rect(x + w * 4, y, w, h * 2);
  rect(x - w * 5, y + h * 1.5, w, h * 3);
  rect(x + w * 5, y + h * 1.5, w, h * 3);

  // Beine
  rect(x - w * 3, y + h * 2.5, w, h);
  rect(x + w * 3, y + h * 2.5, w, h);
  rect(x - w * 1.5, y + h * 3.5, w * 2, h);
  rect(x + w * 1.5, y + h * 3.5, w * 2, h);

  // Invader Eyes
  stroke(c, opacity);
  fill(200, opacity);
  rect(x - w * 2, y - h * 0.5, w, h);
  rect(x + w * 2, y - h * 0.5, w, h);
}

void shape_spaceInvader_b(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {

  w = w/10;
  h = h/10;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  rect(x - w * 2.5, y - h * 3.5, w, h);
  rect(x + w * 2.5, y - h * 3.5, w, h);
  rect(x - w * 1.5, y - h * 2.5, w, h);
  rect(x + w * 1.5, y - h * 2.5, w, h);

  // Invader Body
  rect(x, y, w * 6, h * 4);

  // Arme
  rect(x - w * 3.5, y, w, h * 2);
  rect(x + w * 3.5, y, w, h * 2);
  rect(x - w * 4.5, y + h, w, h * 2);
  rect(x + w * 4.5, y + h, w, h * 2);

  // Beine
  rect(x - w * 1.5, y + h * 2.5, w, h);
  rect(x + w * 1.5, y + h * 2.5, w, h);
  rect(x - w * 2.5, y + h * 3.5, w, h);
  rect(x + w * 2.5, y + h * 3.5, w, h);

  // Invader Eyes
  stroke(c, opacity);
  fill(200, opacity);
  rect(x - w * 1.5, y - h * 0.5, w, h);
  rect(x + w * 1.5, y - h * 0.5, w, h);
}

void shape_spaceInvader_c(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {

  w = w/9;
  h = h/9;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  rect(x - w * 2, y - h * 3, w, h);
  rect(x + w * 2, y - h * 3, w, h);
  rect(x, y - h * 2, w * 3, h);

  // Invader Body
  rect(x, y, w * 5, h * 3);

  // Arme
  rect(x - w * 3, y + h * 0.5, w, h * 2);
  rect(x + w * 3, y + h * 0.5, w, h * 2);
  rect(x - w * 4, y - h, w, h * 3);
  rect(x + w * 4, y - h, w, h * 3);

  // Beine
  rect(x - w * 2, y + h * 2, w, h);
  rect(x + w * 2, y + h * 2, w, h);
  rect(x - w * 3, y + h * 3, w, h);
  rect(x + w * 3, y + h * 3, w, h);

  // Invader Eyes
  stroke(c, opacity);
  fill(200, opacity);
  rect(x - w, y, w, h);
  rect(x + w, y, w, h);
}

void shape_spaceInvader_d(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  w = w/11;
  h = h/11;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  //rect(x - w * 3, y - h * 3.5, w, h);
  //rect(x + w * 3, y - h * 3.5, w, h);
  //rect(x - w * 2, y - h * 2.5, w, h);
  //rect(x + w * 2, y - h * 2.5, w, h);

  // Invader Body
  rect(x, y - h * 3, w * 4, h);
  rect(x, y - h * 2, w * 10, h);
  rect(x, y, w * 12, h * 3);

  // Arme
  //rect(x - w * 4, y, w, h * 2);
  //rect(x + w * 4, y, w, h * 2);
  //rect(x - w * 5, y + h * 1.5, w, h * 3);
  //rect(x + w * 5, y + h * 1.5, w, h * 3);

  // Beine
  rect(x - w * 2, y + h * 2, w * 2, h);
  rect(x + w * 2, y + h * 2, w * 2, h);
  rect(x - w * 3, y + h * 3, w * 2, h);
  rect(x + w * 3, y + h * 3, w * 2, h);
  rect(x, y + h * 3, w * 2, h);
  rect(x - w * 5, y + h * 4, w * 2, h);
  rect(x + w * 5, y + h * 4, w * 2, h);

  // Invader Eyes
  stroke(c, opacity);
  fill(200, opacity);
  rect(x - w * 2, y, w * 2, h);
  rect(x + w * 2, y, w * 2, h);
}

void shape_spaceInvader_e(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  w = w/8;
  h = h/8;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  //rect(x - w * 3, y - h * 3.5, w, h);
  //rect(x + w * 3, y - h * 3.5, w, h);
  //rect(x - w * 2, y - h * 2.5, w, h);
  //rect(x + w * 2, y - h * 2.5, w, h);

  // Invader Body
  rect(x, y - h * 3.5, w * 2, h);
  rect(x, y - h * 2.5, w * 4, h);
  rect(x, y - h * 1.5, w * 6, h);
  rect(x, y, w * 8, h * 2);

  // Arme
  //rect(x - w * 4, y, w, h * 2);
  //rect(x + w * 4, y, w, h * 2);
  //rect(x - w * 5, y + h * 1.5, w, h * 3);
  //rect(x + w * 5, y + h * 1.5, w, h * 3);

  // Beine
  rect(x - w * 1.5, y + h * 1.5, w, h);
  rect(x + w * 1.5, y + h * 1.5, w, h);
  rect(x - w * 2.5, y + h * 2.5, w, h);
  rect(x + w * 2.5, y + h * 2.5, w, h);
  rect(x, y + h * 2.5, w * 2, h);
  rect(x - w * 1.5, y + h * 3.5, w, h);
  rect(x + w * 1.5, y + h * 3.5, w, h);
  rect(x - w * 3.5, y + h * 3.5, w, h);
  rect(x + w * 3.5, y + h * 3.5, w, h);


  // Invader Eyes
  stroke(c, opacity);
  fill(200, opacity);
  rect(x - w * 1.5, y - h * 0.5, w, h);
  rect(x + w * 1.5, y - h * 0.5, w, h);
}

void shape_spaceInvader_f(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  w = w/9;
  h = h/9;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  //rect(x - w * 3, y - h * 3.5, w, h);
  //rect(x + w * 3, y - h * 3.5, w, h);
  //rect(x - w * 2, y - h * 2.5, w, h);
  //rect(x + w * 2, y - h * 2.5, w, h);

  // Invader Body
  rect(x, y - h * 4.5, w, h);
  rect(x, y - h * 3.5, w * 3, h);
  rect(x, y - h * 2.5, w * 5, h);
  rect(x, y - h * 1.5, w * 7, h);
  rect(x, y, w * 9, h * 2);

  // Arme
  //rect(x - w * 4, y, w, h * 2);
  //rect(x + w * 4, y, w, h * 2);
  //rect(x - w * 5, y + h * 1.5, w, h * 3);
  //rect(x + w * 5, y + h * 1.5, w, h * 3);

  // Beine
  rect(x, y + h * 1.5, w * 5, h);
  rect(x - w * 3, y + h * 2.5, w, h);
  rect(x + w * 3, y + h * 2.5, w, h);
  rect(x, y + h * 2.5, w, h);
  rect(x - w, y + h * 3.5, w, h);
  rect(x + w, y + h * 3.5, w, h);
  rect(x - w * 4, y + h * 3.5, w, h);
  rect(x + w * 4, y + h * 3.5, w, h);


  // Invader Eyes
  stroke(c, opacity);
  fill(200, opacity);
  rect(x - w * 1.5, y - h * 0.5, w * 2, h);
  rect(x + w * 1.5, y - h * 0.5, w * 2, h);
}

void shape_spaceInvader_g(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  w = w/9;
  h = h/9;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  //rect(x - w * 3, y - h * 3.5, w, h);
  //rect(x + w * 3, y - h * 3.5, w, h);
  //rect(x - w * 2, y - h * 2.5, w, h);
  //rect(x + w * 2, y - h * 2.5, w, h);

  // Invader Body
  rect(x, y - h * 2.5, w * 5, h);
  rect(x, y - h * 1.5, w * 7, h);
  rect(x, y, w * 9, h * 2);

  // Arme
  //rect(x - w * 4, y, w, h * 2);
  //rect(x + w * 4, y, w, h * 2);
  //rect(x - w * 5, y + h * 1.5, w, h * 3);
  //rect(x + w * 5, y + h * 1.5, w, h * 3);

  // Beine
  rect(x, y + h * 1.5, w * 4, h);
  rect(x - w * 2.5, y + h * 2.5, w, h);
  rect(x + w * 2.5, y + h * 2.5, w, h);
  rect(x, y + h * 2.5, w * 2, h);
  rect(x - w * 3.5, y + h * 3.5, w, h);
  rect(x + w * 3.5, y + h * 3.5, w, h);


  // Invader Eyes
  stroke(c, opacity);
  fill(200, opacity);
  rect(x - w * 1.5, y - h * 0.5, w, h);
  rect(x + w * 1.5, y - h * 0.5, w, h);
}

void shape_spaceInvader_h(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  w = w/7;
  h = h/7;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  rect(x - w * 2, y - h * 3, w, h);
  rect(x + w * 2, y - h * 3, w, h);

  // Invader Body
  rect(x, y - h * 2, w * 3, h);
  rect(x, y, w * 5, h * 3);

  // Arme
  //rect(x - w * 4, y, w, h * 2);
  //rect(x + w * 4, y, w, h * 2);
  //rect(x - w * 5, y + h * 1.5, w, h * 3);
  //rect(x + w * 5, y + h * 1.5, w, h * 3);

  // Beine
  rect(x + h, y + h * 2.5, w, h * 2);
  rect(x - h, y + h * 2.5, w, h * 2);
  rect(x + h * 3, y + h * 2.5, w, h * 2);
  rect(x - h * 3, y + h * 2.5, w, h * 2);


  // Invader Eyes
  stroke(c, opacity);
  fill(200, opacity);
  rect(x - w, y, w, h);
  rect(x + w, y, w, h);
}

void shape_pacman_ghost(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  w = w/14;
  h = h/14;

  // Antennen
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  //rect(x - w * 3, y - h * 3.5, w, h);
  //rect(x + w * 3, y - h * 3.5, w, h);
  //rect(x - w * 2, y - h * 2.5, w, h);
  //rect(x + w * 2, y - h * 2.5, w, h);

  // Ghost Body
  rect(x, y - h * 8.5, w * 4, h);
  rect(x, y - h * 7.5, w * 8, h);
  rect(x, y - h * 6.5, w * 10, h);
  rect(x, y - h * 4.5, w * 12, h * 3);
  rect(x, y, w * 14, h * 6);

  // Arme
  //rect(x - w * 4, y, w, h * 2);
  //rect(x + w * 4, y, w, h * 2);
  //rect(x - w * 5, y + h * 1.5, w, h * 3);
  //rect(x + w * 5, y + h * 1.5, w, h * 3);

  // Beine
  rect(x - w * 2.5, y + h * 3.5, w * 3, h);
  rect(x + w * 2.5, y + h * 3.5, w * 3, h);
  rect(x - w * 6, y + h * 3.5, w * 2, h);
  rect(x + w * 6, y + h * 3.5, w * 2, h);

  rect(x - w * 2, y + h * 4.5, w * 2, h);
  rect(x + w * 2, y + h * 4.5, w * 2, h);
  rect(x - w * 6.5, y + h * 4.5, w, h);
  rect(x + w * 6.5, y + h * 4.5, w, h);


  // Ghost Eyes
  stroke(255, opacity);
  fill(255, opacity);
  rect(x - w * 3, y - h * 3.5, w * 4, h * 3);
  rect(x + w * 3, y - h * 3.5, w * 4, h * 3);
  rect(x - w * 3, y - h * 3.5, w * 2, h * 5);
  rect(x + w * 3, y - h * 3.5, w * 2, h * 5);
  // PUPILLEN
  stroke(0, 100, 200, opacity);
  fill(0, 100, 200, opacity);
  rect(x - w * 3, y - h * 3.5, w * 2, h * 2);
  rect(x + w * 3, y - h * 3.5, w * 2, h * 2);
}

void shape_ellipse(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  ellipseMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  ellipse(x, y, w, h);
}

void shape_rect(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  rect(x, y, w, h);
}

void shape_text_01(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  String s = "%";
  textAlign(CENTER);
  textSize(w);
  stroke(c, opacity);
  fill(c, opacity);
  text(s, x, y);
}

void shape_rect_x2(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  float spacing = w/2;
  rect(x, y, spacing, spacing/2);
  rect(x, y + spacing, spacing, spacing/2);
}

void shape_rect_x4(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  float spacing = 0.6;
  rect(x - w * spacing, y - h * spacing, w, h);
  rect(x - w * spacing, y + h * spacing, w, h);
  rect(x + w * spacing, y - h * spacing, w, h);
  rect(x + w * spacing, y + h * spacing, w, h);
}

void shape_rect_x8(float x, float y, float w, float h, color c, float opacity, float fillOpacity) {
  rectMode(CENTER);
  strokeWeight(1);
  stroke(c, opacity);
  fill(c, fillOpacity);
  float spacing = 0.8;
  float factor = 1;
  rect(x - w * spacing, y - h * spacing, w, h);
  rect(x - w * spacing, y + h * spacing, w, h);
  rect(x + w * spacing, y - h * spacing, w, h);
  rect(x + w * spacing, y + h * spacing, w, h);
  // * FACTOR
  rect(x - w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x - w * spacing * factor, y + h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y + h * spacing * factor, w, h);
  // / FACTOR
  rect(x - w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x - w * spacing / factor, y + h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y + h * spacing / factor, w, h);

  // double size
  factor = 0.9;
  // * FACTOR
  rect(x - w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x - w * spacing * factor, y + h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y + h * spacing * factor, w, h);
  // / FACTOR
  rect(x - w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x - w * spacing / factor, y + h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y + h * spacing / factor, w, h);

  // quad size
  factor = 0.8;
  // * FACTOR
  rect(x - w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x - w * spacing * factor, y + h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y + h * spacing * factor, w, h);
  // / FACTOR
  rect(x - w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x - w * spacing / factor, y + h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y + h * spacing / factor, w, h);

  // half size
  factor = 0.7;
  // * FACTOR
  rect(x - w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x - w * spacing * factor, y + h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y + h * spacing * factor, w, h);
  // / FACTOR
  rect(x - w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x - w * spacing / factor, y + h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y + h * spacing / factor, w, h);

  // quarter size
  factor = 0.6;
  // * FACTOR
  rect(x - w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x - w * spacing * factor, y + h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y + h * spacing * factor, w, h);
  // / FACTOR
  rect(x - w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x - w * spacing / factor, y + h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y + h * spacing / factor, w, h);

  factor = 0.5;
  // * FACTOR
  rect(x - w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x - w * spacing * factor, y + h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y - h * spacing * factor, w, h);
  rect(x + w * spacing * factor, y + h * spacing * factor, w, h);
  // / FACTOR
  rect(x - w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x - w * spacing / factor, y + h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y - h * spacing / factor, w, h);
  rect(x + w * spacing / factor, y + h * spacing / factor, w, h);
}
