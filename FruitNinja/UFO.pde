public class UFO {
  float mass;
  boolean belowScreen;
  float x;
  float y;
  float yinit;
  float G = 9.81;
  float initialspeed;
  float anglestart;
  float rotationAngle;

public UFO() {
  mass = 50;
  belowScreen = false;
  x = random(0, width);
  y = height + 50; // Spawns below the screen
  yinit = height + 50; // Initialize the same as y
  initialspeed = random(70, 110);
  anglestart = radians(90);
  rotationAngle = random(0, 90);
  rotationAngle = 0;
}

public UFO(float xint, float yint) {
  mass = 50;
  belowScreen = false;
  x = xint;
  y = yint;
  yinit = yint;
  initialspeed = random(70, 110);
  anglestart = radians(90);
  rotationAngle = random(0, 90);
  rotationAngle = 0;
}

  void setInitialSpeed(float speed) {
  initialspeed = speed;
}
  boolean isHalf(){
  return false;}
  void xcalculation(float time){
    float initialxcomponent = initialspeed* cos(anglestart);
    setX(x+initialxcomponent * time);
  }
  void ycalculation(float time){
    float initialycomponent = initialspeed * sin(anglestart);
    float deltay = initialycomponent * time - (0.5*G*time*time) + yinit;
    setY((height-deltay));
  }
  
  String getName(){
     return "";
  }
   
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  void setX(float num){
    x = num;
  }
  
  void setY(float num){
     y = num;
  }

void splatter(float x, float y, color c){
  }
void split(float x, float y){
}
String getHalf(){
return "";
}

void move(float time){
    ycalculation(time);
    xcalculation(time);
}

  void rotate(float angle) {
    rotationAngle += angle;
  }
  
  float getRotationAngle() {
    return rotationAngle;
  }
  
}
