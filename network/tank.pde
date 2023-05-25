void tankUp(float x,float y, float d){
  rect(x-60*d/100,y-70*d/100,120*d/100,140*d/100);
  line(x-40*d/100,y-70*d/100,x-40*d/100,y+70*d/100);
  line(x+40*d/100,y-70*d/100,x+40*d/100,y+70*d/100);
  rect(x-10*d/100,y-90*d/100,20*d/100,50*d/100);
  circle(x,y,d);
}
void tankDown(float x, float y, float d){
  rect(x-60*d/100,y-70*d/100,120*d/100,140*d/100);
  line(x-40*d/100,y-70*d/100,x-40*d/100,y+70*d/100);
  line(x+40*d/100,y-70*d/100,x+40*d/100,y+70*d/100);
  rect(x-10*d/100,y,20*d/100,90*d/100);
  circle(x,y,d);
}
void tankLeft(float x, float y, float d){
  rect(x-70*d/100,y-60*d/100,140*d/100,120*d/100);
  line(x-70*d/100,y-40*d/100,x+70*d/100,y-40*d/100);
  line(x-70*d/100,y+40*d/100,x+70*d/100,y+40*d/100);
  rect(x-90*d/100,y-10*d/100,90*d/100,20*d/100);
  circle(x,y,d);
}
void tankRight(float x, float y, float d){
  rect(x-70*d/100,y-60*d/100,140*d/100,120*d/100);
  line(x-70*d/100,y-40*d/100,x+70*d/100,y-40*d/100);
  line(x-70*d/100,y+40*d/100,x+70*d/100,y+40*d/100);
  rect(x,y-10*d/100,90*d/100,20*d/100);
  circle(x,y,d);
}
