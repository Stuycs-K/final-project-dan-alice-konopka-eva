
public class UFO {
  float x, y;
  float velocityX, velocityY;
  float gravity = 0.3;
  float rotationAngle;

  public UFO() {
    x = random(100, width - 100);
    y = height - 50;
    velocityX = random(-1, 1); 
    velocityY = random(-15,-20); 
    rotationAngle = random(0, TWO_PI);
  }

  public UFO(float x, float y) {
    this.x = x;
    this.y = y;
    velocityX = random(-1, 1); 
    velocityY = random(-12, -15); 
    rotationAngle = random(0, TWO_PI);
  }

  void move() {
    x += velocityX;
    y += velocityY;
    velocityY += gravity; 
    if (y > height) {
      y = height + 1; 
      velocityY = 0;
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

  float getRotationAngle() {
    return rotationAngle;
  }

  String getName() {
    return "";
  }

  void splatter(float x, float y, color c, float rotateAngle) {}

  void split(float x, float y) {}

  String getHalf() {
    return "";
  }

  void updateSplatter() {}
}
