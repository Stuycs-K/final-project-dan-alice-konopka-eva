public class Watermelon extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Watermelon(){
    super();
   fruit = loadImage("watermelon.png");
  }
  
  String getName(){
    return "watermelon.png";
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
  
  PImage display(){
   return fruit;
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#ff0065));
  }
//void split(float x, float y){
  //  super.split(x,y, getName());
  //}

void split(float x, float y){
  super.split(x,y, getName());
  }
}
