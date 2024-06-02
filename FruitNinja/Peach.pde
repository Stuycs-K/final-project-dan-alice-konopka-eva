public class Peach extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Peach(){
    super();
    fruit = loadImage("peach.png");
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
   return "peach.png";
  }
  
  void split(){
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#ff6800));
  }
//void split(float x, float y){
  //  super.split(x,y, getName());
  //}
  
  void split(float x, float y, String name) {
    fruit = loadImage("peach.png");
    if (!isSplit) {
      UFO left = new Half(x - fruit.width / 4, y, "peach.png", "left");
      UFO right = new Half(x + fruit.width / 4, y, "peach.png", "right");
      left.setInitialSpeed(50); 
      right.setInitialSpeed(50);
      halfList.add(left);
      halfList.add(right);
      isSplit = true;
    }
  }
}
