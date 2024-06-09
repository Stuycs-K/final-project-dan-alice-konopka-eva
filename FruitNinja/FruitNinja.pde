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
float watermelonRotation = 0;
boolean watermelonSliced = false;
float watermelonX, watermelonY;
float splatterAlpha = 255;
PImage leftHalf, rightHalf;
float leftHalfY, rightHalfY;
float leftHalfVelocityY, rightHalfVelocityY;
float gravity = 0.3;

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
  lastFruitTime = millis();
  nextFruitInterval = (int)(Math.random() * 2000);
  isGameOver = false;
  isStartScreen = true;
  watermelonSliced = false;
  watermelonX = width / 2;
  watermelonY = height / 2 + 50;
  flashAlpha = 255;
  splatterAlpha = 255;
  leftHalf = watermelonImage.get(0, 0, watermelonImage.width / 2, watermelonImage.height);
  rightHalf = watermelonImage.get(watermelonImage.width / 2, 0, watermelonImage.width / 2, watermelonImage.height);
  leftHalfY = watermelonY;
  rightHalfY = watermelonY;
  leftHalfVelocityY = random(-2, -1);
  rightHalfVelocityY = random(-2, -1);
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
  textAlign(CENTER, CENTER);
  println("Game Over! Final Score: " + (int)score);
  textSize(50);
  text("Game Over! Final Score: " + (int)score, width / 2 - 70, height / 2-100);
  image(replayImage, width / 2 - 50, height / 2 + 30, 100, 100);
  isGameOver = true;
  noLoop();
}

void winGame() {
  background(#3f9546);
  fill(255);
  println("You won!");
  textSize(50);
  text("You Win! Final Score: "+(int)score, width / 2 - 50, height / 2-100);
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
  if (key == 'W' || key == 'w'){
    winGame();
  }
}

void mousePressed() {
  if (isPaused) {
    if (mouseX >= width - 60 && mouseX <= width - 20 && mouseY >= 20 && mouseY <= 60) {
      isPaused = false;
    }
    if (mouseX >= width / 2 - 25 && mouseX <= width / 2 + 25 && mouseY >= height / 2 + 40 && mouseY <= height / 2 + 90) {
      initializeGame();
      isPaused = false;
    }
  } else if (isGameOver) {
    if (mouseX >= width / 2 - 100 && mouseX <= width / 2  && mouseY >= height / 2 - 20 && mouseY <= height / 2 + 130) {
      initializeGame();
      isGameOver = false;
    }
  } else {
    if (mouseX >= width - 60 && mouseX <= width - 20 && mouseY >= 20 && mouseY <= 60) {
      isPaused = !isPaused;
    }
  }
}

void mouseDragged() {
  if (isStartScreen) {
    if (dist(mouseX, mouseY, watermelonX, watermelonY) < 50) {
      watermelonSliced = true;
    }
  } else if (!isPaused && !isGameOver) {
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
    if (watermelonSliced) {
      Watermelon tempWatermelon = new Watermelon();
      tempWatermelon.splatter(watermelonX, watermelonY, color(#FF6040));
      tempWatermelon.updateSplatter();
      imageMode(CENTER);
      image(leftHalf, watermelonX - 50, leftHalfY, 50, 100);
      image(rightHalf, watermelonX + 50, rightHalfY, 50, 100);
      leftHalfY += leftHalfVelocityY;
      rightHalfY += rightHalfVelocityY;
      leftHalfVelocityY += gravity;
      rightHalfVelocityY += gravity;
      if (leftHalfY > height && rightHalfY > height) {
        isStartScreen = false;
        lastFruitTime = millis();
        nextFruitInterval = (int)(Math.random() * 2000);
      }
    } else {
      pushMatrix();
      translate(watermelonX, watermelonY);
      rotate(watermelonRotation);
      imageMode(CENTER);
      image(watermelonImage, 0, 0, 100, 100);
      popMatrix();
      watermelonRotation += 0.05;
    }
  } else if (score >= 10) {
    winGame();
  } else if (!isGameOver) {
    background(backgroundImage);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(30);
    text("Score: " + (int)score + "/10", 70, 30);
    text("Missed: ", 57, 65);
    textSize(45);
    fill(#FF0000);
    for (int i = 0; i < missedFruits; i++) {
        text("X", 115 + (i*30), 65);
    }
    fill(255);
    for (int i = 0; i < (3 - missedFruits); i++) {
       text("X", 115 + (i*30) + (missedFruits*30), 65);
    }
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
        splatterIt.splatter(splatterIt.getX(), splatterIt.getY(), color(0));
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
      image(replayImage, width / 2 , height / 2 + 40, 50, 50); 
    }
  }
}
