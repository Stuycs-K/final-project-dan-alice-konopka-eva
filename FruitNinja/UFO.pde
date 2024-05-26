public class UFO {
  float mass;
  boolean belowScreen;
  PVector position, velocity, acceleration;
  int x;
  int y;
  int xSpeed;
  int ySpeed;
  float G = 1; 

  public UFO() {
    mass = 50;
    belowScreen = false;
    x = 50;
    y = 40;
    xSpeed = 40;
    ySpeed = 40;
    position = new PVector(x, y);
    velocity = new PVector(xSpeed, ySpeed);
    acceleration = new PVector(0, 0);
    
  }
  
  String getName(){
     return "";
  }
   
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
  
  void move(PVector target) {
    apply(attractTo(target));
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }


  
}
