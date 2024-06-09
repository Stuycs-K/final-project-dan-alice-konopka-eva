public class Watermelon extends Fruit {
  boolean isSplit = false;
  
  public Watermelon() {
    super();
  }
  
  String getName() {
    return "watermelon.png";
  }
  
  void splatter(float x, float y, color c) {
    super.splatter(x, y, color(#FF6040));
  }
  
  void split(float x, float y) {
    super.split(x, y, getName());
  }
}
