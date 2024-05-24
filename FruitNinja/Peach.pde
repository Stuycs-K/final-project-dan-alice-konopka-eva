public class Peach extends Fruit {
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
  public Peach(){
  fruit = loadImage("peach.png");
  }
  void split(){
  }
  void splatter(){
  }
}
