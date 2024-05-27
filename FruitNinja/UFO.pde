public class UFO {
  float mass;
  boolean belowScreen;
  PVector position, velocity, acceleration;
  float x;
  float y;
  float yinit;
  int xSpeed;
  int ySpeed;
  float G = 9.81;
  int initialspeed;
  float anglestart;

  public UFO() {
    mass = 50;
    belowScreen = false;
    x = width/2-50;
    y = height-150;
    yinit = 150;
    xSpeed = 40;
    ySpeed = 40;
    position = new PVector(x, y);
    velocity = new PVector(xSpeed, ySpeed);
    acceleration = new PVector(0, 0);
    initialspeed=90;
    anglestart=radians(90);
  }
  
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
  
  void gravCalc(){
  }
  void apply(PVector f){
     acceleration.add(PVector.div(f, mass));
  }
  
  
 PVector attractTo(PVector target){
    float distance = PVector.dist(position, target);
    distance = max(15.0, distance);
    float mag = (G * this.mass * 1) / (distance * distance);
    PVector force = PVector.sub(target, this.position);
    force.normalize();
    force.mult(mag);
    return force;
  }
  
/*
  void move(PVector target) {
    apply(attractTo(target));
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }
  */

void move(float num){
    ycalculation(num);
    xcalculation(num);
}

  
}
