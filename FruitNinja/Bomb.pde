public class Bomb extends UFO {
  PImage bombImage;
  public Bomb() {
    super();
    bombImage = loadImage("bomb.png");
  }

  @Override
  String getName() {
    return "bomb.png";
  }
}
