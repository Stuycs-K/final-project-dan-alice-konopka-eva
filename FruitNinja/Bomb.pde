public class Bomb extends UFO{
  PImage bombImage;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  
  public Bomb(){
    bombImage = loadImage("bomb.png");
  }
  
  float getX(){
    return xLocation;
  }
  
  float getY(){
    return yLocation;
  }
  void setX(float num){
    xLocation=num;
  }
  
  void setY(float num){
    yLocation=num;
  }
  
  void boom(){
  }
  
  String getName(){
    return "bomb.png";
  }
}
