public class Fruit extends UFO {
  PImage fruit;
  boolean isSplit = false;
  float alpha = 255;
 
  @Override
  void splatter(float x, float y, color c){
    noStroke();
    fill(red(c), green(c), blue(c), alpha); 
    float scaleBy = 2.5;
    circle(x, y, 50 * scaleBy);
    circle(x + 15 * scaleBy, y + 25 * scaleBy, 20 * scaleBy);
    circle(x + 15 * scaleBy, y + (20 - 45) * scaleBy, 10 * scaleBy);
    circle(x + 45 * scaleBy, y - 5 * scaleBy, 16 * scaleBy);
    rect(x + 20 * scaleBy, y - 10 * scaleBy, 27 * scaleBy, 10 * scaleBy);
  }
 
  String getName(){
    return "";
  }
 
  void split(float x, float y, String name){
    fruit = loadImage(name);
    if (!isSplit) {
      UFO left = new Half(x-10, y, name, "left");  
      halfList.add(left);
      UFO right = new Half(x + fruit.width / 2+10, y, name, "right");  
      halfList.add(right);
      isSplit = true;
    }
  }
  
   void updateSplatter() {
    if (alpha > 0) {
      alpha -= 5; 
    }
  }

}
