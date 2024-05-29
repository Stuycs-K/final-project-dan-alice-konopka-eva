public class Fruit extends UFO {
  PImage fruitImage;
    
  void splatter(float x, float y){
    noStroke();
    circle(x,y,50);
    circle(x+15,y+25,20);
    circle(x+15,y+(20-45),10);
    circle(x+45,y-5,16);
    rect(x+20,y-10,27,10);
  }
  
}
