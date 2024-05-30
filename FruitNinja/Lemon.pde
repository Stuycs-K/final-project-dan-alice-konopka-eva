public class Lemon extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  
  public Lemon(){
    fruit = loadImage("lemon.png");
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
    return "lemon.png";
  }
  
  void split(){
  }
  
  @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#fff300));
  }
}
