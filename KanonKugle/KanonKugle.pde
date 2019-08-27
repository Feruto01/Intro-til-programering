PVector location = new PVector (600, height);
PVector velocity = new PVector (-5, -5);
PVector acceleration = new PVector (1, 1);
PVector gravity = new PVector (0, 1);

void setup(){
  size(600,600)
  frameRate(30)
}

void draw() {
  
  ellipse (location.x,20,location)

}
