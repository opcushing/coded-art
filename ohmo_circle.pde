void setup(){
  size(800, 800);
}

int bright_flash = 0; 
int bright_flash_ud = 0;

void draw(){
  //main variables
  int inner_circle = height * 7/16;
  int ring_bright = bright_flash;
  
  //outer ring and background
  noStroke();
  background(0);
  fill(255, 255, 255, ring_bright);
  ellipse(width/2, height/2, width, height);
  
  //inner circle
  noStroke();
  fill(0);
  ellipse(width/2, height/2, inner_circle, inner_circle);
  
  //growth of certain values
  
  if(bright_flash_ud == 0){
    bright_flash += 5;
  }
  if(bright_flash_ud == 1){
    bright_flash -= 5;
  }
  if(bright_flash >= 255){
    bright_flash_ud = 1;
  }
  if(bright_flash <= 0){
    bright_flash_ud = 0;
  }
};
