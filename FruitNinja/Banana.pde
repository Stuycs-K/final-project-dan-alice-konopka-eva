public class Banana extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Banana(){
    fruit = loadImage("banana.png");
  }
  
  float getXloc(){
    return xLocation;
  }
  
  float getYloc(){
    return yLocation;
  }
  void setXloc(float num){
    xLocation=num;
  }
  
  void setYloc(float num){
    yLocation=num;
  }
  
  String getName(){
    return "banana.png";
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#efe621));
  }
  
  
  void split(float x, float y){
  if (!isSplit) {
    UFO left = new Half(x-10, y, getName(), "left");  
    halfList.add(left);
    UFO right = new Half(x + fruit.width / 2+10, y, getName(), "right");  
    halfList.add(right);
    isSplit = true;
  }
}
}
