public class Banana extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  
  public Banana(){
    fruit = loadImage("pineapple.png");
  }
  
  float getXloc(){
    return xLocation;
  }
  
  float getYloc(){
    return yLocation;
  }
  void setXloc(float num){
    xLocation=num;
  }
  
  void setYloc(float num){
    yLocation=num;
  }
  
  String getName(){
    return "banana.png";
  }
 
  void split(){
  }
  
  void splatter(){
    //color(#F5E900);
    splatter(this.getXloc(),this.getYloc(),#F5E900);
  }
}
