
float score;
float missedFruits;
ArrayList<UFO> itemList = new ArrayList<UFO>();
String[] UFOnames = new String[] {"banana", "bomb", "coconut", "kiwi", "mango", "peach", "pineapple", "watermelon"};
boolean animate;
float time;
ArrayList<UFO> removedItems = new ArrayList<UFO>();

void setup() {
  size(1000, 600);
  int random = (int)(Math.random() * 8);
  UFO randomFruit = new Watermelon();
  if (random == 0) {
    randomFruit = new Banana();
  }
  if (random == 1) {
    randomFruit = new Bomb();
  }
  if (random == 2) {
    randomFruit = new Coconut();
  }
  if (random == 3) {
    randomFruit = new Kiwi();
  }
  if (random == 4) {
    randomFruit = new Mango();
  }
  if (random == 5) {
    randomFruit = new Peach();
  }
  if (random == 6) {
    randomFruit = new Pineapple();
  }
  if (random == 7) {
    randomFruit = new Watermelon();
  }
  itemList.add(randomFruit);
}

void endGame() {
  System.out.println("Game Over! Final Score: " + (int)score);
  noLoop();
}

void keyPressed() {
  animate = true;
}


void mouseDragged() {
  for (int i = itemList.size()-1; i >= 0; i--) {
    UFO currentIt = itemList.get(i);
    if (dist(mouseX, mouseY, currentIt.getX(), currentIt.getY()) < 50) {
      if (!currentIt.getName().equals("bomb.png")) {
        score++;
        removedItems.add(currentIt);
      } else {
        endGame();
      }
      itemList.remove(i);
      animate=false;
    }
  }
}

void mousePressed() {
}

void pauseGame() {
}

void replay() {
  itemList.clear();
  setup();
  // loop();
  noLoop();
}

void draw() {
  background(#904A30);
  fill(255);
  text((int)score, 10, 10);
  for (UFO splatterIt : removedItems) {
    splatterIt.splatter(splatterIt.getX(), splatterIt.getY(), color(0));//placeholder for fruit color? maybe getSplatterColor method
    
  }

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
