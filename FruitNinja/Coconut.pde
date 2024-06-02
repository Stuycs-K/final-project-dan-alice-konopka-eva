public class Coconut extends Fruit {
  PImage fruit;
  float xLocation;
  float yLocation;
  boolean belowScreen;
  boolean isSplit = false;
  
  public Coconut(){
    super();
    fruit = loadImage("coconut.png");
    this.setY(height+100000);
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
  
  @Override
  String getName(){
    return "coconut.png";
  }
  
  void split(){
  }
  
   @Override
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#fceddf));
  }
 //   void split(float x, float y){
      /*
    PImage[]segments = new PImage[2];
    segments[0]=fruit.get((int)getXloc(),(int)getYloc(),(int)fruit.width/2,(int)fruit.height);
    segments[1]=fruit.get((int)getXloc()+fruit.width/2,(int)getYloc(),(int)fruit.width,(int)fruit.height);
    image(segments[1],x+120,y);
    image(segments[0],x,y);
    */
   
//  super.split(x,y, getName());
//}
 void split(float x, float y, String name) {
    fruit = loadImage(name);
    if (!isSplit) {
      UFO left = new Half(x - fruit.width / 4, y, name, "left");
      UFO right = new Half(x + fruit.width / 4, y, name, "right");
      left.setInitialSpeed(50); 
      right.setInitialSpeed(50);
      halfList.add(left);
      halfList.add(right);
      isSplit = true;
    }
  }

}
