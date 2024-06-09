public class Kiwi extends Fruit {
   boolean isSplit = false;
 
  public Kiwi(){
    super();
  }
 
  String getName(){
    return "kiwi.png";
  }
 
  void split(float x, float y){
    super.split(x,y, getName());
  }
  
  void splatter(float x, float y, color c){
    super.splatter(x,y,color(#61ab5a));
  }
}
