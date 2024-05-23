public class Watermelon extends Fruit {
  PImage fruit;
  public Watermelon(){
  fruit = loadImage("watermelon.png");
  }
  void keyPressed(){
    image(fruit,0,0);
  }
  void split(){
  }
  void splatter(){
  }
}
