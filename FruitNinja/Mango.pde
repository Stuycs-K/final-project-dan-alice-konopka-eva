public class Mango extends Fruit {
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
  public Mango(){
  fruit = loadImage("mango.png");
  }
  void split(){
  }
  void splatter(){
  }
}
