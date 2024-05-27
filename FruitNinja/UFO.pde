public class UFO {
  float mass;
  boolean belowScreen;
  PVector position, velocity, acceleration;
  int x;
  int y;
  int xSpeed;
  int ySpeed;
<<<<<<< HEAD
  float G = 1; 
=======
  float G = 9.81;
  int initialspeed;
  float anglestart;
>>>>>>> eva

  public UFO() {
    mass = 50;
    belowScreen = false;
<<<<<<< HEAD
    x = 50;
    y = 40;
=======
    x = 0;
    y = height;
>>>>>>> eva
    xSpeed = 40;
    ySpeed = 40;
    position = new PVector(x, y);
    velocity = new PVector(xSpeed, ySpeed);
    acceleration = new PVector(0, 0);
<<<<<<< HEAD
    
=======
    initialspeed=100;
    anglestart=radians(90);
  }
  
  void xcalculation(float time){
    float initialxcomponent = initialspeed* cos(anglestart);
    setX(x+initialxcomponent * time);
  }
  void ycalculation(float time){
    float initialycomponent = initialspeed * sin(anglestart);
    float deltay = initialycomponent * time - (0.5*G*time*time);
    setY(height - deltay);
>>>>>>> eva
  }
  
  String getName(){
     return "";
  }
   
<<<<<<< HEAD
  int getXloc(){
    return (int) position.x;
  }
  
  int getYloc(){
    return (int) position.y;
  }
  void setXloc(int num){
    position.x = num;
  }
  
  void setYloc(int num){
=======
  int getX(){
    return (int) position.x;
  }
  
  int getY(){
    return (int) position.y;
  }
  void setX(float num){
    position.x = num;
  }
  
  void setY(float num){
>>>>>>> eva
     position.y = num;
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
  
<<<<<<< HEAD
=======
/*
>>>>>>> eva
  void move(PVector target) {
    apply(attractTo(target));
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }
<<<<<<< HEAD

=======
  */

void move(float num){
    ycalculation(num);
    xcalculation(num);
}
>>>>>>> eva

  
}
