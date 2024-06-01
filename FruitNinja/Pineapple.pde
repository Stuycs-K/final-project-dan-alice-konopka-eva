public class Pineapple extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Pineapple(){
    super();
    fruit = loadImage("pineapple.png");
    this.setY(height+100000);
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
    return "pineapple.png";
  }
  
  void split(){
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#4cf822));
  }
void split(float x, float y){
    super.split(x,y, getName());
  }
}
