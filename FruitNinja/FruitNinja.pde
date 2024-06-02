ArrayList<Float> recentXPositions = new ArrayList<Float>();
float minDistance = 50;
int maxRecentPositions = 5; 

float score;
float missedFruits;
ArrayList<UFO> itemList = new ArrayList<UFO>();
ArrayList<UFO> halfList = new ArrayList<UFO>();

String[] UFOnames = new String[] {"banana", "bomb", "coconut", "kiwi", "mango", "peach", "pineapple", "watermelon", "lemon"};
boolean animate;
float time;
ArrayList<UFO> removedItems = new ArrayList<UFO>();

int lastFruitTime = 0; 
int nextFruitInterval = 0;

void setup() {
  size(1000, 600);
  generateRanFruit();
  lastFruitTime = millis(); 
  nextFruitInterval = (int)(Math.random()*5000); 
}

void generateRanFruit(){
  int random = (int)(Math.random() * 9);

  UFO randomFruit = new Watermelon();
  if (random == 0) {
    randomFruit = new Banana();
  }
  //if (random == 1) {
  //  randomFruit = new Bomb();
 // }
  if (random == 2||random==1) {//remove the 1 part later - this is just for MVP/demo
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
  if (random == 8) {
    randomFruit = new Lemon();
  }
  float newX;
  boolean validPosition;
  do {
    newX = random(0, width);
    validPosition = true;
    for (float x : recentXPositions) {
      if (abs(newX - x) < minDistance) {
        validPosition = false;
        break;
      }
    }
  } while (!validPosition);
  randomFruit.setX(newX);
  randomFruit.setY(height + 10000);
  itemList.add(randomFruit);
  recentXPositions.add(newX);
  if (recentXPositions.size() > maxRecentPositions) {
    recentXPositions.remove(0);
  }
  lastFruitTime = millis();
  nextFruitInterval = (int)(Math.random() * 5000);
}

void endGame() {
  System.out.println("Game Over! Final Score: " + (int)score);
  text("Game Over! Final Score: "+(int)score, width/2, height/2);
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
<<<<<<< HEAD
        currentIt.split(currentIt.getX(),currentIt.getY());
=======
        currentIt.split(currentIt.getX(), currentIt.getY(), currentIt.getName());
>>>>>>> main
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
<<<<<<< HEAD
  text("Score: "+(int)score, 10, 10);
  text("Missed: "+(int)missedFruits, 10, 20);
=======
  text((int)score, 10, 10);
>>>>>>> main
  int currentTime = millis();
  if (currentTime - lastFruitTime >= nextFruitInterval) {
    generateRanFruit();
  }
<<<<<<< HEAD
  
=======
>>>>>>> main
  for (int i = removedItems.size() - 1; i >= 0; i--) {
    UFO splatterIt = removedItems.get(i);
    splatterIt.splatter(splatterIt.getX(), splatterIt.getY(), color(0));
    splatterIt.updateSplatter();
    if (splatterIt instanceof Fruit && ((Fruit) splatterIt).alpha <= 0) {
      removedItems.remove(i); 
    }
  }

  for (int i = itemList.size() - 1; i >= 0; i--) {
    time += 0.1;
    UFO currentIt = itemList.get(i);
    currentIt.move(time);
    currentIt.rotate(0.05);
    if (currentIt.getY() > height) {
      time = 0;
<<<<<<< HEAD
      itemList.remove(i);  
      missedFruits++;
       if (missedFruits >= 3) {
        endGame();
      }
=======
      itemList.remove(i);
      missedFruits++;
      if (missedFruits >= 3) {
        endGame();
      }
    }
>>>>>>> main
  }

  for (int i = halfList.size() - 1; i >= 0; i--) {
    UFO currentHalf = halfList.get(i);
    time += 0.1;
    currentHalf.move(time);
    if (currentHalf.getY() > height) {
      halfList.remove(i);
    }
  }

  for (UFO currentIt : halfList) {
    PImage fruit = loadImage(currentIt.getName());
    pushMatrix();
    PImage half = fruit;
    if (currentIt.getHalf().equals("left")) {
      half = fruit.get(0, 0, fruit.width / 2, fruit.height);
    }
    if (currentIt.getHalf().equals("right")) {
      half = fruit.get(fruit.width / 2, 0, fruit.width / 2, fruit.height);
    }
    imageMode(CENTER);
    image(half, currentIt.getX(), currentIt.getY());
    popMatrix();
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
