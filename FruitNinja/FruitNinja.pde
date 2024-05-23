
//public class FruitNinja {
  float score;
  float missedFruits;
  ArrayList<UFO> itemList = new ArrayList<UFO>();
 
  void setup(){
    size(1000,600);
   
  }
  
  void endGame(){
  }

void keyPressed(){
  move(itemList.get(0));
} 
  
 void move(UFO item){
    item.setXloc(item.getXloc()+40);
    item.setYloc(item.getYloc()+40);
 }
  
  void mouseDragged(){
  }
  
  void mousePressed(){
  }
  
  void pauseGame(){
  }
  
  void replay(){
  }
  
  void draw(){
    UFO watermelon = new Watermelon();
itemList.add(watermelon);
    background(#904A30);
    PImage fruit = loadImage(itemList.get(0).getName());
    image(fruit,itemList.get(0).getXloc(), itemList.get(0).getYloc());
  }
//}
