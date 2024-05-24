public class Pineapple extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
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
  
  
  
  void split(){
  }
  void splatter(){
  }
}
