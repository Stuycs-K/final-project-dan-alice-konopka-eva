public class Pineapple extends Fruit {
  boolean isSplit = false;
 
  public Pineapple(){
    super();
  }
 
  String getName(){
    return "pineapple.png";
  }
 
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#FFE839));
  }
  void split(float x, float y){
    super.split(x,y, getName());
  }
}
