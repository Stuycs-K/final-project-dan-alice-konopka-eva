public class Kiwi extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  
  public Kiwi(){
    fruit = loadImage("kiwi.png");
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
  
  void split(){
  }
  
  void splatter(){
  }
}
