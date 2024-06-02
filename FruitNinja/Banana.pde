public class Banana extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Banana(){
    super();
    fruit = loadImage("banana.png");
    this.setY(height+100000);
  }
  
  float getX(){
    return xLocation;
  }
  
  float getY(){
    return yLocation;
  }
  void setX(float num){
    xLocation=num;
  }
  
  void setY(float num){
    yLocation=num;
  }
  
  String getName(){
    return "banana.png";
  }

   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#efe621));
  }
  /*
  void split(float x, float y){
    super.split(x,y, getName());
  }
  */
  
   void split(float x, float y, String name) {
    fruit = loadImage(name);
    if (!isSplit) {
      UFO left = new Half(x - fruit.width / 4, y, name, "left");
      UFO right = new Half(x + fruit.width / 4, y, name, "right");
      left.setInitialSpeed(50); 
      right.setInitialSpeed(50);
      halfList.add(left);
      halfList.add(right);
      isSplit = true;
    }
  }
}
