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
      System.out.println("Game Over! Final Score: " + score);
  }

void keyPressed(){
  //move(itemList.get(0));
 // for (int i =0; i<=100;i++){
   // itemList.get(0).move(i);
  //}
  animate = true;
} 
  
  
  void mouseDragged(){
      for (int i = itemList.size()-1; i >= 0; i--) {
    UFO currentIt = itemList.get(i);
    if (dist(mouseX, mouseY, currentIt.getX(), currentIt.getY()) < 50) {
      if (!currentIt.getName().equals("bomb.png")) {
        score++;
      } else {
        endGame();
      }
      itemList.remove(i);
      animate=false;
    }
  }
  }
  
  void mousePressed(){
  }
  
  void pauseGame(){
  }
  
  void replay(){
   itemList.clear();
  setup();
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
    currentIt.rotate(0.05);
    if (currentIt.getY() > height) {
      animate = false;
      time = 0;
    }
  }
  for (UFO currentIt : itemList) {
    PImage fruit = loadImage(currentIt.getName());
    pushMatrix();
    translate(currentIt.getX(), currentIt.getY());
    rotate(currentIt.getRotationAngle());
    imageMode(CENTER);
    image(fruit, 0, 0);
    popMatrix();
  }
}
