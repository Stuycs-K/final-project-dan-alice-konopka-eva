public class Pineapple extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  
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
    return "peach.png";
  }
  
  void split(){
  }
  
  void splatter(){
  }
}
