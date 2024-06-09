public class Lemon extends Fruit {
  boolean isSplit = false;
 
  public Lemon(){
    super();
  }
 
  String getName(){
    return "lemon.png";
  }
 
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#FFF183));
  }

  void split(float x, float y){
    super.split(x,y, getName());
  }
}
