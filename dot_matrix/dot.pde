class Dot {
  float mx; //reference to construct dot
  float my; //reference to construct dot
  float x, y; //actual x and y position of dot
  float z; //weight of dot
  boolean bool; 

  Dot(int mxTemp, int myTemp) {
    mx = mxTemp;
    my = myTemp;
  }

  void update(int tempSelect) {
    switch(tempSelect) {
    case -1:
      weight = unit;
      mode = 0;
      break;
    case 0:
      bool = abs(mouseX-x) < unit/2 | mouseX-x ==  unit/2;
      break;
    case 1:
      bool = dist(mouseX, mouseY, x, y) < 200;
      break;
    case 2:
      bool = true;
      weight = floor(unit - dist(mouseX, mouseY, x, y)*0.05);
      weight = constrain(weight, 1, unit);
      break;
    default: mode = -1; break;
    }

    //println(mode);
    x = (mx+0.5)*unit; //actual x position of dot
    y = (my+0.5)*unit; //actual y position of dot
    if (bool) {
      z = weight;
    } else {
      z = 1;
    }
  }

  void display() {
    stroke(255);
    strokeWeight(z);
    point(x, y);
  }
}
