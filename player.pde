class Player {

  float x;
  float y;    
  float radius;
  int frame;
  int flip = 1;

  Player() {
    radius = 40;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    scale(flip, 1); 
    image(playerFrames[frame], 0, 0);

    if (test == true) {
      noFill();
      stroke(255);
      ellipse(0, 0, radius*2, radius*2);
    }

    popMatrix();
  }

  void move() {
    x = mouseX;
    y = mouseY; 
    if (mouseX > pmouseX) flip = 1;
    if (mouseX < pmouseX) flip = -1;
    if (frameCount % 2 == 0) frame++;
    if (frame >= playerFrames.length) frame = 0;
  }
}
