public class Coconut extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  
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
  public Coconut(){
  fruit = loadImage("coocnut.png");
  }
  void split(){
  }
  void splatter(){
  }
}
