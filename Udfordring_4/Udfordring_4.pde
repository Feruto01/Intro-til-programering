//Udfordring 1 acceleration

PVector location = new PVector (250, 250);
PVector velocity = new PVector (0  , 0 ) ;

float mouseAcceleration = 10000;
float friction = 0.98;
void setup(){
  size(500,  500);
  frameRate(30);
  
  
}


void draw(){
  background(0);
  
  PVector acceleration = new PVector(location.x-mouseX, location.y-mouseY);
  
acceleration.div(acceleration.mag()*acceleration.mag()).mult(mouseAcceleration);
velocity.x += acceleration.x/frameRate;
velocity.y += acceleration.y/frameRate;
velocity.sub() -= velocity
  
location.x += vel.x/frameRate;
location.y += vel.y/frameRate;


if (location.y >= 500){
    velocity.y *= -1;
  }
  if (location.x >= 500){
    velocity.x *= -1;
  }
  if (location.y <= 0){
    velocity.y *= -1;
  }
  if (location.x <= 0){
    velocity.x *= -1;
    
    ellipse(location.x,location.y,10,10);
  }
}
