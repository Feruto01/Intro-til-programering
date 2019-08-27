PVector location        = new PVector (30,30);
PVector velocity        = new PVector (4,0);
//PVector acceleration    = new PVector (3,2);
PVector gravity         = new PVector (0, 1);
float friction          = 0.98;
void setup(){
  size(600, 600);
 frameRate(30);
  background(255);
}


void draw(){
 


location.add(velocity);
location.add(gravity);
velocity.mult(friction);
  //location.x = location.x +velocity.x;
  //velocity.x = velocity.x+acceleration.x;
  
  //location.y = location.y +velocity.y + gravity.y;
  //velocity.y = velocity.y+acceleration.y;

  //println(location.x);
  //println(width);
  if (location.x  >= width) {
    velocity.x *= -1;
    location.x = width;
  }
  if (location.x  <= 0) {
    velocity.x *= -1;
    location.x = 0;
  }
  if (location.y >= height ){
    velocity.y = velocity.y * -1;
    location.y = height;
  }
  if (location.y <= 0 ){
    velocity.y = velocity.y * -1;
    location.y = 0;
  }
  
  fill(150);
  ellipse(location.x, location.y, 10, 10);
  println(location.x + " og " + location.y);

}
