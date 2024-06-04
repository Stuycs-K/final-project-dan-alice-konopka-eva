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
  nextFruitInterval = (int)(Math.random() * 2000);
}

void generateRanFruit() {
  int random = (int)(Math.random() * 9);

  UFO randomFruit;
  if (random == 0) {
    randomFruit = new Banana();
  } else if (random == 1) {
    randomFruit = new Bomb();
  } else if (random == 2) {
    randomFruit = new Coconut();
  } else if (random == 3) {
    randomFruit = new Kiwi();
  } else if (random == 4) {
    randomFruit = new Mango();
  } else if (random == 5) {
    randomFruit = new Peach();
  } else if (random == 6) {
    randomFruit = new Pineapple();
  } else if (random == 7) {
    randomFruit = new Watermelon();
  } else {
    randomFruit = new Lemon();
  }
  itemList.add(randomFruit);
  lastFruitTime = millis();
  nextFruitInterval = (int)(Math.random() * 5000 + 5000); // Update next interval
}

void endGame() {
  background(#904A30);
  fill(255);
  text("Score: " + (int)score, 10, 10);
  text("Missed: " + (int)missedFruits, 10, 20);
  println("Game Over! Final Score: " + (int)score);
  text("Game Over! Final Score: " + (int)score, width / 2 - 30, height / 2);
  noLoop();
}

void keyPressed() {
  animate = true;
  if (key == 'e' || key == 'E') {
    endGame();
  }
}

void mouseDragged() {
  for (int i = itemList.size() - 1; i >= 0; i--) {
    UFO currentIt = itemList.get(i);
    if (dist(mouseX, mouseY, currentIt.getX(), currentIt.getY()) < 50) {
      if (!currentIt.getName().equals("bomb.png")) {
        score++;
        removedItems.add(currentIt);
      } else {
        endGame();
      }
      itemList.remove(i);
      animate = false;
    }
  }
}

void mousePressed() {}

void pauseGame() {}

void replay() {
  itemList.clear();
  setup();
  loop();
}

void draw() {
  background(#904A30);
  fill(255);
  text("Score: " + (int)score, 10, 10);
  text("Missed: " + (int)missedFruits, 10, 20);

  int currentTime = millis();
  if (currentTime - lastFruitTime >= nextFruitInterval) {
    generateRanFruit();
  }

  for (UFO splatterIt : removedItems) {
    splatterIt.splatter(splatterIt.getX(), splatterIt.getY(), color(0));
    splatterIt.updateSplatter();
    splatterIt.split(splatterIt.getX(), splatterIt.getY());
  }

  for (int i = itemList.size() - 1; i >= 0; i--) {
    UFO currentIt = itemList.get(i);
    currentIt.move();
    currentIt.rotate(0.05);
    if (currentIt.getY() > height) {
      itemList.remove(i);
      missedFruits++;
      if (missedFruits >= 3) {
        endGame();
      }
    }
  }

  for (int i = halfList.size() - 1; i >= 0; i--) {
    UFO currentHalf = halfList.get(i);
    currentHalf.move();
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
