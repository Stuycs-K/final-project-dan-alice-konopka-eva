public class Bomb extends UFO{
  PImage bombImage;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  
  public Bomb(){
    bombImage = loadImage("bomb.png");
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
  
  void boom(){
  }
  
  String getName(){
    return "bomb.png";
  }
}
