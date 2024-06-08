float score;
float missedFruits;
ArrayList<UFO> itemList = new ArrayList<UFO>();
ArrayList<UFO> halfList = new ArrayList<UFO>();
PImage backgroundImage;
PImage playImage;
PImage pauseImage;
PImage replayImage;
PImage watermelonImage;
boolean isPaused = false;
boolean isGameOver = false;
boolean isStartScreen = true;
String[] UFOnames = new String[] {"banana", "bomb", "coconut", "kiwi", "mango", "peach", "pineapple", "watermelon", "lemon"};
boolean animate;
float time;
ArrayList<UFO> removedItems = new ArrayList<UFO>();
int lastFruitTime = 0;
int nextFruitInterval = 0;
boolean flash = false; 
float flashAlpha = 255;

void setup() {
  size(1000, 600);
  backgroundImage = loadImage("background.png");
  playImage = loadImage("play.png");
  pauseImage = loadImage("pause.png");
  replayImage = loadImage("replay.png");
  watermelonImage = loadImage("watermelon.png");
  initializeGame();
}

void initializeGame() {
  score = 0;
  missedFruits = 0;
  itemList.clear();
  halfList.clear();
  removedItems.clear();
  generateRanFruit();
  lastFruitTime = millis();
  nextFruitInterval = (int)(Math.random() * 2000);
  isGameOver = false;
  isStartScreen = true;
  loop();
}

void generateRanFruit() {
  int random = (int)(Math.random() * 13);

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
  } else if (random == 8) {
    randomFruit = new Lemon();
  } else {
    randomFruit = new Bomb();
  }
  itemList.add(randomFruit);
  lastFruitTime = millis();
  nextFruitInterval = (int)(Math.random() * 5000); 
}

void endGame() {
  background(backgroundImage);
  fill(255);
  rect(5, 5, 150, 50);
  rect(5, 40, 150, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Score: " + (int)score + "/5", 70, 30);
  text("Missed: " + (int)missedFruits + "/3", 75, 65);
  println("Game Over! Final Score: " + (int)score);
  fill(255);
  text("Game Over! Final Score: " + (int)score, width / 2 - 100, height / 2);
  image(replayImage, width / 2 - 50, height / 2 + 30, 100, 100);
  isGameOver = true;
  noLoop();
}

void winGame() {
  background(#3f9546);
  fill(0);
  println("You won!");
  text("You Win!", width / 2 - 30, height / 2);
  image(replayImage, width / 2 - 50, height / 2 + 30, 100, 100);
  isGameOver = true;
  noLoop();
}

void triggerFlash() {
  flash = true;
  flashAlpha = 400;
}

void keyPressed() {
  animate = true;
  if (key == 'e' || key == 'E') {
    endGame();
  }
}

void mousePressed() {
  if (isStartScreen) {
    if (dist(mouseX, mouseY, width / 2, height / 2 + 50) < 100) {
      isStartScreen = false;
    }
  } else if (isPaused) {
    if (mouseX >= width / 2 - 30 && mouseX <= width / 2 + 30 && mouseY >= height / 2 + 30 && mouseY <= height / 2 + 90) {
      initializeGame();
      isPaused = false;
    }
  } else if (isGameOver) {
    if (mouseX >= width / 2 - 70 && mouseX <= width / 2 + 70 && mouseY >= height / 2 + 30 && mouseY <= height / 2 + 130) {
      initializeGame();
      isGameOver = false;
    }
  } else {
    if (mouseX >= width - 80 && mouseX <= width - 10 && mouseY >= 10 && mouseY <= 80) {
      isPaused = !isPaused;
    }
  }
}

void mouseDragged() {
  if (!isPaused && !isGameOver && !isStartScreen) {
    for (int i = itemList.size() - 1; i >= 0; i--) {
      UFO currentIt = itemList.get(i);
      if (dist(mouseX, mouseY, currentIt.getX(), currentIt.getY()) < 50) {
        if (!currentIt.getName().equals("bomb.png")) {
          score++;
          removedItems.add(currentIt);
        } else {
          triggerFlash();
        }
        itemList.remove(i);
        animate = false;
      }
    }
  }
}

void draw() {
  if (isStartScreen) {
    background(backgroundImage);
    textAlign(CENTER, CENTER);
    textSize(50);
    fill(255);
    text("Fruit Ninja", width / 2, height / 2 - 100);
    image(watermelonImage, width / 2 - 50, height / 2, 100, 100);
  } else if (score >= 5) {
    winGame();
  } else if (!isGameOver) {
    background(backgroundImage);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(30);
    text("Score: " + (int)score + "/5", 70, 30);
    text("Missed: " + (int)missedFruits + "/3", 75, 65);

    if (isPaused) {
      image(playImage, width - 60, 20, 40, 40);
    } else {
      image(pauseImage, width - 60, 20, 40, 40);
    }

    if (!isPaused) {
      int currentTime = millis();
      if (currentTime - lastFruitTime >= nextFruitInterval) {
        generateRanFruit();
      }

      for (UFO splatterIt : removedItems) {
        splatterIt.splatter(splatterIt.getX(), splatterIt.getY(), color(0), 0);
        splatterIt.updateSplatter();
        splatterIt.split(splatterIt.getX(), splatterIt.getY());
      }

      for (int i = itemList.size() - 1; i >= 0; i--) {
        UFO currentIt = itemList.get(i);
        currentIt.move();
        currentIt.rotate(0.05);
        if (currentIt.getY() > height) {
          if (!currentIt.getName().equals("bomb.png")) {
            missedFruits++;
            if (missedFruits >= 3) {
              endGame();
            }
          }
          itemList.remove(i);
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

      if (flash) {
        fill(255, flashAlpha);
        rect(0, 0, width, height);
        flashAlpha -= 5; 
        if (flashAlpha <= 0) {
          flash = false;
          endGame();
        }
      }
    } else {
      fill(0, 150);
      rect(width / 2 - 100, height / 2 - 100, 200, 200, 10);
      fill(255);
      textSize(20);
      textAlign(CENTER, CENTER);
      text("Game Paused", width / 2, height / 2 - 60);
      image(replayImage, width / 2 - 25, height / 2 + 40, 50, 50); 
    }
  }
}
