public class Peach extends Fruit {
  boolean isSplit = false;
 
  public Peach(){
    super();
  }
 
  String getName(){
    return "peach.png";
  }
 
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#ffae32));
  }
  
  void split(float x, float y){
    super.split(x,y, getName());
  }
}
