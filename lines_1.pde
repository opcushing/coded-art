PVector a, b;
int num = 75;
int xUnit;
int yUnit;
float t;

void setup() {
  size(600, 600);
  a = new PVector();
  b = new PVector();
  xUnit = width/num;
  yUnit = height/num;
  background(51);
}

void draw() {
  float h;
  colorMode(HSB);
  for (int i = 0; i <= num; i++) {
    a.y = yUnit*i;
    b.x = width - xUnit*i;
    h = map(i, 0, num, 0, 255);
    strokeWeight(3);
    stroke(h, 255, 255, 150);
    line(a.x, a.y, b.x, b.y);
    h++;
  }   
  noStroke();
  fill(0);
  ellipse(width, height, width, height);
  
  noLoop();
}
