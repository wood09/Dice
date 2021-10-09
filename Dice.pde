Die dieone;
void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
 background(200);
 int total = 0;
 int y = 5;
 while (y < 450) {
   int x = 5;
   while (x < 490) {
     dieone = new Die(x, y, 15, 0, 0, 0, 255, 255, 255);
     dieone.roll();
     dieone.show();
     x=x+17;
     total = total + dieone.num;
  }
  y=y+17;
 }
 System.out.println(total);
 textSize(30);
 fill(0);
 text(total, 250, 490); 
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, num, size, r, g, b, r1, g1 ,b1;
  Die(int x, int y, int sizeof, int rdie, int gdie, int bdie, int rdot, int gdot, int bdot) //constructor
  {
    r=rdie;
    g=gdie;
    b=bdie;
    r1=rdot;
    g1=gdot;
    b1=bdot;
    myX=x;
    myY=y;
    size=sizeof;
  }
  void roll()
  {
    num = (int)(Math.random()*6+1);
  }
  void show()
  {
    fill(r,g,b);
    rect(myX, myY, size, size, size/4);
    if (num ==1) {
      fill(r1,g1,b1);
      ellipse(myX+(size/2),myY+(size/2), size/5, size/5);
    } else if (num==2) {
      fill(r1,g1,b1);
      ellipse(myX+(size/5),myY+(size/5), size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5)*4, size/5, size/5);
    } else if (num==3) {
      fill(r1,g1,b1);
      ellipse(myX+(size/5),myY+(size/5), size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5)*4, size/5, size/5);
      ellipse(myX+(size/2),myY+(size/2), size/5, size/5);
    } else if (num==4) {
      fill(r1,g1,b1);
      ellipse(myX+(size/5),myY+(size/5), size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5)*4, size/5, size/5);
      ellipse(myX+(size/5),myY+(size/5)*4, size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5), size/5, size/5);
    } else if (num==5) {
      fill(r1,g1,b1);
      ellipse(myX+(size/5),myY+(size/5), size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5)*4, size/5, size/5);
      ellipse(myX+(size/5),myY+(size/5)*4, size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5), size/5, size/5);
      ellipse(myX+(size/2),myY+(size/2), size/5, size/5);
     } else {
      fill(r1,g1,b1);
      ellipse(myX+(size/5),myY+(size/5), size/5, size/5);
      ellipse(myX+(size/5),myY+(size/5)*2.5, size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5)*4, size/5, size/5);
      ellipse(myX+(size/5),myY+(size/5)*4, size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5), size/5, size/5);
      ellipse(myX+(size/5)*4,myY+(size/5)*2.5, size/5, size/5);
    }
  }
}
