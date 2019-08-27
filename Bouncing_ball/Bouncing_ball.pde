
PVector location        = new PVector (30,30);
PVector velocity        = new PVector (4,7);
PVector acceleration    = new PVector (3,2);

void setup(){
  size(600, 600);
 frameRate(30);
}


void draw(){
  background(255);




  location.x = location.x +velocity.x;
  velocity.x = velocity.x+acceleration.x;
  
  location.y = location.y +velocity.y;
  velocity.y = velocity.y+acceleration.y;

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
