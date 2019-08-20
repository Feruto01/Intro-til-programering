//20-08-2019

PVector location     = new PVector(10,10);
PVector velocity     = new PVector(50,-30);
PVector acceleration = new PVector(0 ,  50);


void setup(){
  size(500, 500);
  frameRate(60);
}

void draw()  {
  background(255);
  if (location.y >= 500){
    velocity.y *= -0.9;
  }
  if (location.x >= 500){
    velocity.x *= -0.9;
  }
  if (location.y <= 0){
    velocity.y *= -0.9;
  }
  if (location.x <= 0){
    velocity.x *= -0.9;
  }

velocity.y += acceleration.y / (frameRate);
location.y += velocity.y / (frameRate);
velocity.x += acceleration.x / (frameRate);
location.x += velocity.x / (frameRate);

ellipse(location.x,location.y,10,10);
}
