//Udfordring 1 acceleration

PVector location = new PVector (250, 250);
PVector velocity = new PVector (0  , 0 ) ;

float mouseAcceleration = 100;

void setup(){
  size(500,  500);
  frameRate(30);
  
  
}


void draw(){
  background(0);
  
  PVector accelerationDirection = new PVector(location.x-mouseX, location.y-mouseY).normalize();

  
velocity.y += accelerationDirection.y*mouseAcceleration / (frameRate);
location.y += velocity.y / (frameRate);
velocity.x += accelerationDirection.x*mouseAcceleration / (frameRate);
location.x += velocity.x / (frameRate);
ellipse(location.x,location.y,10,10);

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
  }
}
