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
    super.split(x,y, getName());
  }
}
