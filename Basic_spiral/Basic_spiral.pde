float r = 0;
float theta = 0;
 
void setup() {
  size(1444,1080);
  background(255);
}
 
void draw() {
 
//Polar coordinates (r,theta) are converted to Cartesian (x,y) for use in the ellipse() function.
  float x = r * cos(theta);
  float y = r * sin(theta);

 
  noStroke();
  fill(0);
  ellipse(x+width/2, y+height/2, 16, 16);
 
  theta += 0.01;
  r     += 0.1  ;
}
