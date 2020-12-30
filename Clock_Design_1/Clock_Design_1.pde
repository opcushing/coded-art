int[] r = {400, 350, 300}; //radii of clock (seconds / minutes / hours)
int[] p = { 60,  60,  12}; //number of points per circle

Ring[] rings = new Ring[3]; //rings

void setup() {
  size(1200, 1200);
  for (int i = 0; i < rings.length; i++) {
    rings[i] = new Ring(r[i], p[i]); //rings
  }
  frameRate(30);
}

void draw() {
  background(6);
  translate(width / 2, height / 2);
  //formatting
  noFill();
  stroke(255);
  strokeWeight(16);
  
  int[] time = {second(), minute(), hour() % 12};

  //ring display
  for (int i = 0; i < rings.length; i++) {
    rings[i].update(time[i]);
    rings[i].show();
  }
}
