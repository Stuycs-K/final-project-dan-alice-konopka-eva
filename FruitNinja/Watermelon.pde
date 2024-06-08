public class Watermelon extends Fruit {
  PImage fruit;
  boolean isSplit = false;
  
  public Watermelon() {
    super();
    fruit = loadImage("watermelon.png");
  }
  
  String getName() {
    return "watermelon.png";
  }
  
  @Override
  void splatter(float x, float y, color c) {
    super.splatter(x, y, color(#FF6040));
  }
  
  @Override
  void split(float x, float y) {
    super.split(x, y, getName());
  }
}
