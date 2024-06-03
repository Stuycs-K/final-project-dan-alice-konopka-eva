
public class UFO {
  float x, y;
  float velocityX, velocityY;
  float gravity = 0.3;
  float rotationAngle;

  public UFO() {
    x = random(100, width - 100);
    y = height - 50; // Start near the bottom of the screen
    velocityX = random(-1, 1); // Adjust horizontal velocity for less side-to-side movement
    velocityY = random(-12, -15); // Initial velocity upwards, less height
    rotationAngle = random(0, TWO_PI);
  }

  public UFO(float x, float y) {
    this.x = x;
    this.y = y;
    velocityX = random(-1, 1); // Adjust horizontal velocity for less side-to-side movement
    velocityY = random(-12, -15); // Initial velocity upwards, less height
    rotationAngle = random(0, TWO_PI);
  }

  void move() {
    x += velocityX;
    y += velocityY;
    velocityY += gravity; // Apply gravity to the vertical velocity

    // Remove the fruit if it falls off the screen
    if (y > height) {
      y = height + 1; // Move the fruit just out of the visible screen to indicate it's removed
      velocityY = 0;  // Stop the velocity
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

  void splatter(float x, float y, color c) {}

  void split(float x, float y) {}

  String getHalf() {
    return "";
  }

  void updateSplatter() {}
}
