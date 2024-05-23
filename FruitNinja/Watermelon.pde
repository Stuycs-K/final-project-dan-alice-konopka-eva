public class Watermelon extends Fruit {
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
  
  public Watermelon(){
  fruit = loadImage("watermelon.png");
  }
  String getName(){
  return "watermelon.png";
}
  
  PImage display(){
   return fruit;
  }
  void split(){
  }
  void splatter(){
  }
}
