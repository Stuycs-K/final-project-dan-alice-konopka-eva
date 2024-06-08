public class Lemon extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  boolean isSplit = false;
 
  public Lemon(){
  fruit = loadImage("lemon.png");
  }
 
  int getXloc(){
  return xLocation;
  }
 
  int getYloc(){
  return yLocation;
  }
  void setXloc(int num){
  xLocation=num;
  }
 
  void setYloc(int num){
  yLocation=num;
  }
 
  String getName(){
  return "lemon.png";
  }
 
  void split(){
  }
 
  @Override
  void splatter(float x, float y, color c, float rotateAngle){
  super.splatter(x,y,color(#FFF183), 240);
  }

void split(float x, float y){
  super.split(x,y, getName());
  }
}
