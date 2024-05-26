  float score;
  float missedFruits;
  ArrayList<UFO> itemList = new ArrayList<UFO>();
  String[] UFOnames = new String[] {"banana", "bomb", "coconut", "kiwi", "mango", "peach", "pineapple", "watermelon"};
 
  void setup(){
    size(1000,600);
    int random = (int)(Math.random() * 8);
     UFO randomFruit = new Watermelon();
    if (random == 0){
       randomFruit = new Banana();
    }
    if (random == 1){
       randomFruit = new Bomb();
    }
     if (random == 2){
       randomFruit = new Coconut();
    }
     if (random == 3){
       randomFruit = new Kiwi();
    }
     if (random == 4){
       randomFruit = new Mango();
    }
     if (random == 5){
       randomFruit = new Peach();
    }
     if (random == 6){
      randomFruit = new Pineapple();
    }
     if (random == 7){
      randomFruit = new Watermelon();
    }
    itemList.add(randomFruit);
  }
  
  void endGame(){
  }

void keyPressed(){
  move(itemList.get(0));
} 
  
 void move(UFO item,PVector target){
   item.move(target);
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
    background(#904A30);
    for (UFO currentIt : itemList) {
      currentIt.move(new PVector(width / 2, height / 2));
    PImage fruit = loadImage(currentIt.getName() + ".png");
    image(fruit, currentIt.getXloc(), currentIt.getYloc());
  }
  }
