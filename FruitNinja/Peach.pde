public class Peach extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  boolean isSplit = false;
 
  public Peach(){
  fruit = loadImage("peach.png");
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
   return "peach.png";
  }
 
  void split(){
  }
 
   @Override
  void splatter(float x, float y, color c){
  super.splatter(x,y,color(#ff6800));
  }
void split(float x, float y){
  super.split(x,y, getName());
  }
}
