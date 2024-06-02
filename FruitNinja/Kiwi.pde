public class Kiwi extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
   color splatterColor;
   boolean isSplit = false;
  
  public Kiwi(){
    super();
    fruit = loadImage("kiwi.png");
    this.setY(height+100000);
     splatterColor = color(255,0, 0); 
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
  
  String getName(){
    return "kiwi.png";
  }
  
//void split(float x, float y){
  //  super.split(x,y, getName());
  //}
    @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#68c51a));
  }
  
  
   void split(float x, float y, String name) {
    fruit = loadImage(getName());
    if (!isSplit) {
      UFO left = new Half(x - fruit.width / 4, y, getName(), "left");
      UFO right = new Half(x + fruit.width / 4, y, getName(), "right");
      left.setInitialSpeed(50); 
      right.setInitialSpeed(50);
      halfList.add(left);
      halfList.add(right);
      isSplit = true;
    }
  }
}
