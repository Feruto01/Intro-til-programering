 
  
  void setup(){
  size(500,  500);
  frameRate(30);
  
  
}


void draw(){
  background(255);
  
   float amplitude = 100;
  float period    = 120; 
  float x = amplitude * cos(TWO_PI * frameCount / period);

  stroke(0);
  fill(175);
  translate(width/2,height/2);
  line(0,0,x,0);
  ellipse(x,0,20,20);
}
