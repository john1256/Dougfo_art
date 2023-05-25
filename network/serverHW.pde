import processing.net.*; // server
Server s;
Client c;
String input;
int data[];
int x,y;
int state;

void setup(){
  size(450,255);
  x=50; y=50;
  background(204);
  circle(x,y,10);
  frameRate(5);
  s = new Server(this, 12345);
  
}
void draw() {   
  background(204);
if (keyPressed){
    if(key=='w') {y -= 4; state=1;}
    else if(key=='s') {y+=4; state=2;}
    else if(key=='a') {x-=4; state=3;}
    else if (key=='d') {x+=4; state=4;}
  }
  tankpos(x,y,100,state);
// Send mouse coords to other person     
s.write(x + " " + y + " " + mouseX + " " + mouseY + "\n");   
      
// Receive data from client   
c = s.available();   
if (c != null) {     
input = c.readString();      
input = input.substring(0, input.indexOf("\n")); // Only up to the newline     
data = int(split(input, ' ')); // Split values into an array     
// Draw line using received coords     
tankpos(data[0], data[1], 100,data[2]);

} 
} 
void tankpos(float x, float y, float d, int state){
  if(state==1) tankUp(x,y,d);
  else if(state==2) tankDown(x,y,d);
  else if(state==3) tankLeft(x,y,d);
  else if(state==4) tankRight(x,y,d);
}
