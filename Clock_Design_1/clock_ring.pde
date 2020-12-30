class Ring {
  int radius;
  int points;
  int current;

  Ring(int tempR, int tempP) {
    radius = tempR;
    points = tempP;
    current = 0;
  }

  void update(int tempC) {
    current = tempC;
  }

  void show() {
    int shade;
    int light = 0;
    for (float i = 0; i < TWO_PI - 0.01; i += TWO_PI / points) {
      int x = int(cos(i - PI/2) * radius);
      int y = int(sin(i - PI/2) * radius);
      shade = (light == current)? 255: 51;
      stroke(shade);
      point(x, y);
      light++;
    }
  }
}
