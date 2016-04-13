class Car6 {
  float x;
  float y;  
  float speedX;
  float radius;

  Car6() {
    speedX = 10;
    x = width+10;
    y = random(height/2+30, height-20);

    radius = 30;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    if (speedX < 0) scale(-1, 1);
    image(bikeLeft, 0, 0);   

    if (test) {
      noFill();
      stroke(255);
      ellipse(0, 0, radius*2, radius*2);
    }

    popMatrix();
  }

  void move() {
    x -= speedX;
    x = x--;
  }
}

