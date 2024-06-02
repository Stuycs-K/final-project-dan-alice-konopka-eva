public class Half extends UFO {
  PImage fruit;
  float xLocation;
  float yLocation;
  String name;
  String whichHalf;

  public Half(float x, float y, String name, String whichHalf) {
    super(x, y);
    fruit = loadImage(name);
    this.name = name;
    this.whichHalf = whichHalf;
    this.xLocation = x;
    this.yLocation = y;
    this.initialspeed = 50; // Adjust initial speed if necessary
    this.anglestart = radians(random(70, 110)); // Adjust angle if necessary
  }

  @Override
  String getHalf() {
    return whichHalf;
  }

  @Override
  float getX() {
    return xLocation;
  }

  @Override
  float getY() {
    return yLocation;
  }

  @Override
  void setX(float num) {
    xLocation = num;
  }

  @Override
  void setY(float num) {
    yLocation = num;
  }

  @Override
  String getName() {
    return name;
  }
}
