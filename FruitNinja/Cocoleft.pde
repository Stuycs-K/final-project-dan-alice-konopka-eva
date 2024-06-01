public class Cocoleft extends UFO {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;

  public Cocoleft(float x, float y) {
    super(x, y);
    fruit = loadImage("pineapple.png");
  }

  boolean getHalf() {
    return true;
  }

  float getX() {
    return xLocation;
  }

  float getY() {
    return yLocation;
  }

  void setX(float num) {
    xLocation = num;
  }

  void setY(float num) {
    yLocation = num;
  }

  String getName() {
    return "pineapple.png";
  }

  void splatter(float x, float y, color c) {
  }
}
