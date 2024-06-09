public class Coconut extends Fruit {
  boolean isSplit = false;
 
  public Coconut(){
    fruit = loadImage("coconut.png");
  }
 
  String getName(){
    return "coconut.png";
  }
 
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#FCFBED));
  }
  
  void split(float x, float y){
    super.split(x,y, getName());
  }
}
