public class Half extends UFO {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  String name;
  String whichHalf;

  public Half(float x, float y, String name, String whichHalf) {
    super(x, y);
    fruit = loadImage("pineapple.png");
    this.name =name;
    this.whichHalf=whichHalf;
  }

  String getHalf() {
    return whichHalf;
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
    return name;
  }

  void splatter(float x, float y, color c) {
  }
}
