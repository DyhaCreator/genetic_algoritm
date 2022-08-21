ArrayList<Bacteria> bacteria = new ArrayList<Bacteria>();
ArrayList<Eat> eat = new ArrayList<Eat>();
int frame = 0;
void setup(){
  size(1000,800);
  fullScreen();
  frameRate(1000);
  Bacteria a = new Bacteria(random(width),random(height),1,10);
  bacteria.add(a);
  Eat b = new Eat();
  eat.add(b);
}
void draw(){
  background(#aaDBFF);
  for(int i = 0;i<eat.size();i++){
    Eat a = eat.get(i);
    a.show();
  }
  for(int i = 0;i<bacteria.size();i++){
    Bacteria a = bacteria.get(i);
    a.show();
    a.algoritm(i);
  }
  for(int i=0;i<5;i++){
  Eat a = new Eat();
  eat.add(a);}
  if(frame%100==0)println(bacteria.size());
  frame++;
  //if(frame>100*500){noLoop();}
}
