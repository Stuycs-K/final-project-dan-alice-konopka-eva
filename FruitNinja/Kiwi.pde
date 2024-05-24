public class Kiwi extends Fruit {
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
  public Kiwi(){
  fruit = loadImage("kiwi.png");
  }
  void split(){
  }
  void splatter(){
  }
}
