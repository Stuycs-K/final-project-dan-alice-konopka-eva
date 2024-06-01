public class Watermelon extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Watermelon(){
    super();
    fruit = loadImage("watermelon.png");
    this.setY(height+100000);
  }
  
  String getName(){
    return "watermelon.png";
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
  
  PImage display(){
   return fruit;
  }
  
  void split(){
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#ff0065));
  }
void split(float x, float y){
    super.split(x,y, getName());
  }
}
