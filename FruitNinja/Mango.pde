public class Mango extends Fruit {
  boolean isSplit = false;
 
  public Mango(){
    super();
  }
 
  String getName(){
    return "mango.png";
  }
 
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#ea9e06));
  }
  
  void split(float x, float y){
    super.split(x,y, getName());
  }
}
