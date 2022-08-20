class Eat{
  PVector pos = new PVector(random(width),random(height));
  color c = color(random(255),random(255),random(255));
  int size = 5;
  Eat(){}
  void show(){
    noStroke();
    fill(c,99);
    circle(pos.x,pos.y,size);
  }
}
