public class Banana extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  
  public Banana(){
    fruit = loadImage("banana.png");
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
 
    void split(float x, float y){
    PImage[]segments = new PImage[2];
    segments[0]=fruit.get((int)getXloc(),(int)getYloc(),(int)fruit.width/2,(int)fruit.height);
    segments[1]=fruit.get((int)getXloc()+fruit.width/2,(int)getYloc(),(int)fruit.width,(int)fruit.height);
    image(segments[1],x,y);
    image(segments[0],x,y);
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#efe621));
  }
}
