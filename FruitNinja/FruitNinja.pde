 float score;
  float missedFruits;
  ArrayList<UFO> itemList = new ArrayList<UFO>();
  String[] UFOnames = new String[] {"banana", "bomb", "coconut", "kiwi", "mango", "peach", "pineapple", "watermelon"};
  boolean animate;
  float time;
 
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
  //move(itemList.get(0));
 // for (int i =0; i<=100;i++){
   // itemList.get(0).move(i);
  //}
  animate = true;
} 
  
 void move(UFO item,PVector target){
//   item.move(target);
 //  item.move();
 }
  
  void mouseDragged(){
  }
  
  void mousePressed(){
  }
  
  void pauseGame(){
  }
  
  void replay(){
  }
  
  void draw() {
    background(#904A30);
    /*
    for (UFO currentIt : itemList) {
        for (int i = 1; i <= 100; i++) {
            float timeIncrement = i * 0.1; 
            currentIt.move(timeIncrement);
            PImage fruit = loadImage(currentIt.getName());
            image(fruit, currentIt.getX(), currentIt.getY());
            delay(50); 
        }
    }
    */
  if (animate) {
    time += 0.1;
    UFO currentIt = itemList.get(0);
    currentIt.move(time);
  }
  for (UFO currentIt : itemList) {
    PImage fruit = loadImage(currentIt.getName());
    image(fruit, currentIt.getX(), currentIt.getY());
  
}
}
