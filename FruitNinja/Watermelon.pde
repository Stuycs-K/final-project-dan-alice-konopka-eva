public class Watermelon extends Fruit {
  PImage fruit;
  public Watermelon(){
  fruit = loadImage("watermelon.svg");
  }
  String getName(){
  return "watermelon.png";
}
  void keyPressed(){
   
  }
  PImage display(){
   return fruit;
  }
  void split(){
  }
  void splatter(){
  }
}
