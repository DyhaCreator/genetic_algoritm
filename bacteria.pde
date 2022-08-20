class Bacteria{
  PVector pos = new PVector(0,0);
  float size;
  float sat = 10;
  float speed;
  Bacteria(float x,float y,float _speed,float _size){
    pos.x=x;
    pos.y=y;
    speed=_speed;
    size=_size;
  }
  
  void show(){
    color c = color(speed*100,255-speed*100,0);
    fill(c,99);
    stroke(0,0,0,25);
    circle(pos.x,pos.y,size);
    fill(0,0,255,99);
    stroke(0,0,255,25);
    circle(pos.x,pos.y,size/3);
  }
  void algoritm(int ind){
    PVector vector[] = new PVector[eat.size()];
    float dist[] = new float[eat.size()];
    for(int i=0;i<dist.length;i++){
      vector[i]=new PVector(0,0);
      dist[i]=dist(pos.x,pos.y,eat.get(i).pos.x,eat.get(i).pos.y);
      vector[i].x=eat.get(i).pos.x-pos.x;
      vector[i].y=eat.get(i).pos.y-pos.y;
    }
    int index = indexmin(dist);
    float _sat = speed*2/80+size*size/15000;
    if(dist[index]<eat.get(index).size/2+size/2){
      eat.remove(index);
      sat+=1;}
    if(vector[index].x>0){
      pos.x+=speed;
      sat-=_sat;}
    else{
      pos.x-=speed;
      sat-=_sat;}
    if(vector[index].y>0){
      pos.y+=speed;
      sat-=_sat;}
    else{
      pos.y-=speed;
      sat-=_sat;}
    if(sat>size*2){
      bud();
      sat-=15;
    }
    if(sat<0){bacteria.remove(ind);}
  }
  int indexmin(float[] a){
    int index=0;
    float d = width;
    for(int i=0;i<a.length;i++){
      if(a[i]<d){
        d=a[i];
        index=i;
      }
    }
    return index;
  }
  void bud(){
    Bacteria a = new Bacteria(pos.x+10,pos.y+10,speed*random(0.9,1.1),size*random(0.9,1.1));
    bacteria.add(a);
  }
}
