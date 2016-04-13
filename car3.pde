class Car3 {
  float x;
  float y;  
  float speedX;
  float radius;

  Car3() {
    speedX = 5;
    x = -10;
    y = random(50, height/2-30);

    radius = 30;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    if (speedX < 0) scale(-1, 1);
    image(slowCarRight, 0, 0);   

    if (test) {
      noFill();
      stroke(255);
      ellipse(0, 0, radius*2, radius*2);
    }

    popMatrix();
  }

  void move() {
    x += speedX;
    x = x++;
  }
}

