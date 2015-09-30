Snowflake[] cluster;

void setup()
{
  //your code here
  size(300,300);
  cluster = new Snowflake[100];
  for(int i = 0; i < cluster.length; i++)
  {
    cluster[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
  background(0,0,0);
  for(int i = 0; i < cluster.length; i++)
  {
    cluster[i].show();
    cluster[i].lookDown();
    cluster[i].erase();
    cluster[i].move();
    cluster[i].wrap();
  }

}
void mouseDragged()
{
  //your code here
  noStroke();
  ellipse(mouseX, mouseY, 10, 10);

}

class Snowflake
{
  //class member variable declarations
  int x;
  int y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255,255,255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if( y > 0 && y < 350 && get(x,y+5) != color(0))
    {
      isMoving = false;
    }
    else
    {
      isMoving = true;
    }
  }
  void erase()
  {
    //your code here
    fill(255,0,0);
    ellipse(mouseX,mouseY,7,7);
  }
  void move()
  {
    //your code here
    if( isMoving == true)
    {
      y = y + 1;
    }
  }
  void wrap()
  {
    //your code here
    if( y > 294)
    {
      y = 0;
      x = (int)(Math.random()*300);
    }
  }
}


