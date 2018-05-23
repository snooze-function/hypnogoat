void background_draw() {
  if (redraw) {
    background(bg);
  }
}

void background_changeColour() {
  if (bg_polychrome) {
    // GENERATE NEW PLOYCHROME BACKGROUND COLOUR
    bg = color(random(bg_range), random(bg_range), random(bg_range));
  } else {
    // GENERATE NEW MONOCHROME BACKGROUND COLOUR
    bg = color(random(bg_range));
  }
  System.out.println("ORA >>> NEW BACKGROUND COLOUR " + bg);
}

void background_redraw() {
  redraw = !redraw;
  System.out.println("ORA >>> BACKGROUND REDRAWING = " + redraw);
}
