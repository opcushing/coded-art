int unit; 
int num; //number of rows and columns of dots
int count; //amount of total dots
int weight;
int mode; //mode selection
Dot[] dots;

void setup() {
  size(800, 800);
  unit = 20;
  num = height/unit; 
  count = num*num;
  weight = unit; //maximum weight of the dots. 
  mode = 0;
  frameRate(30);

  dots = new Dot[count];
  int index = 0;
  for (int y = 0; y < num; y++) {
    for (int x = 0; x < num; x++) {
      dots[index] = new Dot(x, y);
      index++;
    }
  }
}

void mousePressed() {
  mode++;
}

void draw() {
  stroke(255);
  background(4);
  for (Dot dot : dots) {
    dot.update(mode);
    dot.display();
    //print("mouseX", mouseX, "mouseY", mouseY, "\n");
  }
  //println(frameRate);
}
