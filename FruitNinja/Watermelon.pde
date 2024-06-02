public class Watermelon extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Watermelon(){
    super();
    fruit = loadImage("watermelon.png");
    this.setY(height+100000);
  }
  
  String getName(){
    return "watermelon.png";
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
  
  PImage display(){
   return fruit;
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#ff0065));
  }
//void split(float x, float y){
  //  super.split(x,y, getName());
  //}

void split(float x, float y, String name) {
    fruit = loadImage(getName());
    if (!isSplit) {
      UFO left = new Half(x - fruit.width / 4, y, getName(), "left");
      UFO right = new Half(x + fruit.width / 4, y, getName(), "right");
      left.setInitialSpeed(50); 
      right.setInitialSpeed(50);
      halfList.add(left);
      halfList.add(right);
      isSplit = true;
    }
  }
}
