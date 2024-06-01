public class Coconut extends Fruit {
  PImage fruit;
  int xLocation;
  int yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Coconut(){
    fruit = loadImage("coconut.png");
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
    return "coconut.png";
  }
  
  void split(){
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#fceddf));
  }
    void split(float x, float y){
      /*
    PImage[]segments = new PImage[2];
    segments[0]=fruit.get((int)getXloc(),(int)getYloc(),(int)fruit.width/2,(int)fruit.height);
    segments[1]=fruit.get((int)getXloc()+fruit.width/2,(int)getYloc(),(int)fruit.width,(int)fruit.height);
    image(segments[1],x,y);
    image(segments[0],x,y);
    */
   
  if (!isSplit) {
    UFO left = new Half(x-10, y, "coconut.png", "left");  
    halfList.add(left);
    UFO right = new Half(x + fruit.width / 2+10, y, "coconut.png", "right");  
    halfList.add(right);
    isSplit = true;
  }
}

}
