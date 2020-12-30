

void setup(){
  size(3000, 3000);
  
  PImage img;
  img = loadImage("IMG_9080.JPG");
  img.resize(width, height);
  background(img);
};



void draw(){
  
  noStroke();
  fill(0);
  ellipse(width/2, height/2, width/3, height/3);
  
  //outside ring
  for(int x = -width/2; x < width/2; x++){
    for(int y = -height/2; y < height/2; y++){
      if(dist(x, y, 0, 0) > width/2){
        stroke(random(0,100));
        strokeWeight(6);
        point(x + width/2, y + height/2);
      }
    }
  }
  save("album_art.JPG");
  
}
