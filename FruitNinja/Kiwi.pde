public class Kiwi extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
   color splatterColor;
   boolean isSplit = false;
 
  public Kiwi(){
  fruit = loadImage("kiwi.png");
   splatterColor = color(255,0, 0);
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
  return "kiwi.png";
  }
 
void split(float x, float y){
  super.split(x,y, getName());
  }
  @Override
  void splatter(float x, float y, color c){
  super.splatter(x,y,color(#68c51a));
  }
}
