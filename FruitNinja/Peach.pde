public class Peach extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Peach(){
    fruit = loadImage("peach.png");
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
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#ff6800));
  }
    void split(float x, float y){
  if (!isSplit) {
    UFO left = new Half(x-10, y, getName(), "left");  
    halfList.add(left);
    UFO right = new Half(x + fruit.width / 2+10, y, getName(), "right");  
    halfList.add(right);
    isSplit = true;
  }
}
}
