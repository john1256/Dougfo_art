newclass []  aa;
punleu [] bb;
float vx, vy;
void setup(){
  size(600,300);
  aa = new newclass[5];
  bb = new punleu[5];
  for(int i=0; i<5; i++){
    aa[i] = new newclass(random(width), random(height), random(10,100));
    bb[i] = new punleu();
  }
}
void draw(){
  background(0,255,255);
  for(int i=0; i<5; i++){
    if(i !=4){
      for(int j=i+1;j<5;j++){
        aa[i].collide(aa[j]);
        bb[i].collide(bb[j]);
        bb[i].collideEachother(aa[j]);
    }
    aa[i].act();
    aa[i].Life();
    bb[i].update();
    bb[i].punleuShow();
  }
}
}
