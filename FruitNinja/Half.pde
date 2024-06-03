public class Half extends UFO {
  String name;
  String whichHalf;

  public Half(float x, float y, String name, String whichHalf) {
    super(x, y);
    this.name = name;
    this.whichHalf = whichHalf;
    velocityY = 2; x
  }

  @Override
  void move() {
    super.move();
    velocityY += gravity; 

    if (y > height) {
      y = height + 1; 
      velocityY = 0; 
    }
  }

  String getHalf() {
    return whichHalf;
  }

  String getName() {
    return name;
  }
}
