public class Pineapple extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  boolean isSplit = false;
 
  public Pineapple(){
  fruit = loadImage("pineapple.png");
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
  return "pineapple.png";
  }
 
  void split(){
  }
 
   @Override
  void splatter(float x, float y, color c, float rotateAngle){
  super.splatter(x,y,color(#FFE839), 45);
  }
void split(float x, float y){
  super.split(x,y, getName());
  }
}
