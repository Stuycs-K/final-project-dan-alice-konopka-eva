public class Fruit extends UFO {
  PImage fruit;
  boolean isSplit = false;

  @Override
  void splatter(float x, float y, color c) {
    noStroke();
    fill(c);
    float scaleBy = 2.5;
    circle(x, y, 50 * scaleBy);
    circle(x + 15 * scaleBy, y + 25 * scaleBy, 20 * scaleBy);
    circle(x + 15 * scaleBy, y + (20 - 45) * scaleBy, 10 * scaleBy);
    circle(x + 45 * scaleBy, y - 5 * scaleBy, 16 * scaleBy);
    rect(x + 20 * scaleBy, y - 10 * scaleBy, 27 * scaleBy, 10 * scaleBy);
  }

  @Override
  String getName() {
    return "";
  }

  @Override
  void split(float x, float y) {
    fruit = loadImage(getName());
    if (!isSplit) {
      UFO left = new Half(x - 10, y, getName(), "left");
      UFO right = new Half(x + fruit.width / 2 + 10, y, getName(), "right");
      left.setInitialSpeed(0);
      right.setInitialSpeed(0);
      halfList.add(left);
      halfList.add(right);
      isSplit = true;
    }
  }
}
