PVector location = new PVector (10, 350);
PVector velocity = new PVector (5, -5);
PVector acceleration = new PVector (0, 1);
PVector gravity = new PVector (0, 1.5);

void setup(){
  size(600,600);
  frameRate(30);
}

void draw() {
  location.add(velocity);
  velocity.add(acceleration);
  acceleration.add(gravity);
  ellipse (location.x,location.y,20,20);
if (location.y >= 600)
{
  acceleration * -0.5;
}
}
