public class UFO {
  float mass;
  boolean belowScreen;
  PVector position, velocity, acceleration;
  int x;
  int y;
  int xSpeed;
  int ySpeed;

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
    return 100;
  }
  
  int getYloc(){
    return 100;
  }
  void setXloc(int num){
  }
  
  void setYloc(int num){
  }
  
  void gravCalc(){
  }
  void apply(PVector f){
     acceleration.add(PVector.div(f, mass));
  }
  
  
  attractTo(UFO earth){
    PVector earthPosition = new PVector(0, 0);
    float distance = PVector.dist(position, earthPosition);
    distance = max(15.0, distance);
    float mag = (float)((G*this.mass*other.mass)/(distance*distance));
    PVector force = PVector.sub(other.position, this.position);
    force.normalize();
    force.mult(mag);
    return force;
  }
  
 void move(){
  apply(attractTo(earth));
 }

  
}
