class newclass {
  newclass(float p, float q, float r) {
    x = p;
    y=q;
    d=r;
    vx = random(-3, 3);
    vy = random(-2, 2);
    float xx = random(4);
    if (xx<1) colorOption = 0;
    else if (xx<2) colorOption = 1;
    else if (xx<3) colorOption = 2;
    else colorOption = 3;
  }
  float x, y, d, vx, vy;
  int colorOption;
  void colors() {
    if (colorOption==0)fill(255, 0, 0);
    else if (colorOption==1)fill(0, 255, 0);
    else if (colorOption==2)fill(0, 0, 255);
    else fill(255);
  }
  void Life() {
    colors();
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
  void act() {
    x+=vx;
    y+=vy;
    if (x>width || x<0) vx=-vx;
    if (y>height || y<0) vy=-vy;
  }
  void collide(newclass b) {
    float dd;
    dd = sqrt((x-b.x)*(x-b.x) + (y-b.y)*(y-b.y));
    if (dd < (d+b.d)/4) {
      vx = -vx;
      vy = -vy;
      b.vx = -b.vx;
      b.vy = -b.vy;
    }
  }
}
