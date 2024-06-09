public class Banana extends Fruit {
  boolean isSplit = false;
 
  public Banana(){
    fruit = loadImage("banana.png");
  }
 
  String getName(){
    return "banana.png";
  }

  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#FFFBCB));
  }
 
  void split(float x, float y){
    super.split(x,y, getName());
  }
}
