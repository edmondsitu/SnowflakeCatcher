Snowflake[] cluster;

void setup()
{
  //your code here
  size(600,600);
  background(0);
  cluster = new Snowflake[100];
  for(int i = 0; i < cluster.length; i++)
  {
    cluster[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
  /*
  fill(0);
  rect(0,500,600,100);
  noFill();
  stroke(0,100,255);
  strokeWeight(2);
  rect(mouseX-25, 530, 50,70);
  */

  for(int i = 0; i < cluster.length; i++)
  {
    cluster[i].erase();
    cluster[i].lookDown();
    cluster[i].move();
    cluster[i].wrap();
    cluster[i].show();
  }

}
void mouseDragged()
{
  //your code here
  if( mouseButton == LEFT)
  {
    fill(255,0,0);
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);    
  }
  if( mouseButton == RIGHT)
  {
    fill(0);
    noStroke();
    ellipse(mouseX, mouseY, 100, 100);      
  }


}

class Snowflake
{
  //class member variable declarations
  int x;
  int y;
  int eraseX;
  int eraseY;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*600);
    y = (int)(Math.random()*600);
    isMoving = true;
    eraseX = 8;
    eraseY = 8;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if( y >= 0 && y <= 600 && get(x,y+4) == color(0))
    {
      isMoving = true;
    }
    else
    {
      isMoving = false;
    }
  }
  void erase()
  {
    //your code here
    noStroke();
    fill(0);
    ellipse(x,y,8,8);
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
    if( y > 594)
    {
      y = 0;
      x = (int)(Math.random()*600);
      isMoving = true;
    }
  }
}


