void setup(){
  size(1500, 1500);
  noLoop();
};

void draw(){

  for(int x = 0; x < width; x++){
      //gradient background
      int stroke = x*255/width;
      stroke(stroke);
      line(x, 0, x, height);
      
      int circx = -width/2 + x;
      
    //inverse circle  
    for(int y = -width/2; y < width; y++){
      int circy = -width/2 + y;
      
      if(dist(0, 0, circx, circy) <= width/2){
        stroke(--stroke);
        point(circx + width/2, circy + height/2);
      }
    };
  };
  
  for(int i = 0; i < 400; i++){
    float pointX = random(0, width);
    float pointY = random(0, height);
    
    strokeWeight(random(4, 20));
    stroke(50, pointY/2, pointX/2+50);
    point(pointX, pointY);
  };
  
  save("circle1.JPG");
};
