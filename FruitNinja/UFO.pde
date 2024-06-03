public class UFO {
  float x, y;
  float velocityX, velocityY;
  float gravity = 0.3;
  float rotationAngle;

  public UFO() {
    x = random(0, width);
    y = height - 50;
    velocityX = random(-2, 2);
    velocityY = random(-10, -20);
    rotationAngle = random(0, TWO_PI);
  }

  public UFO(float x, float y) {
    this.x = x;
    this.y = y;
    velocityX = random(-2, 2);
    velocityY = random(-10, -20);
    rotationAngle = random(0, TWO_PI);
  }

  void move() {
    x += velocityX;
    y += velocityY;
    velocityY += gravity; // Apply gravity to the vertical velocity

    // Bounce off the edges
    if (x < 0 || x > width) {
      velocityX *= -1;
    }
    if (y > height) {
      y = height;
      velocityY *= -0.5; // Reduce speed and reverse direction when hitting the ground
    }
  }

  void rotate(float angle) {
    rotationAngle += angle;
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  void setX(float x) {
    this.x = x;
  }

  void setY(float y) {
    this.y = y;
  }

  String getName() {
    return "";
  }

  void splatter(float x, float y, color c) {}

  void split(float x, float y) {}

  String getHalf() {
    return "";
  }

  void updateSplatter() {}
}
