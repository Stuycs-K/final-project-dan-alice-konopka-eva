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
    void split(float x, float y){
    PImage[]segments = new PImage[2];
    segments[0]=fruit.get((int)getXloc(),(int)getYloc(),(int)fruit.width/2,(int)fruit.height);
    segments[1]=fruit.get((int)getXloc()+fruit.width/2,(int)getYloc(),(int)fruit.width,(int)fruit.height);
    image(segments[1],x,y);
    image(segments[0],x,y);
  }
}
