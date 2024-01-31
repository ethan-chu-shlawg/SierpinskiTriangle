int num = 780;
boolean wIsPressed;
boolean sIsPressed;
public void setup()
{
  background(0);
  size(1000,1000);
  sierpinski(100,900,num);
  upsideSierpinski(880,122,num);
}
public void draw()
{
  if(wIsPressed == true)
  {
    background(0);
    num+=10;
    sierpinski(100,900,num);
    upsideSierpinski(880,122,num);
    if(num <= 780)
      num = 790;
  }
  if(sIsPressed == true)
  {
    background(0);
    num-=10;
    sierpinski(100,900,num);
    upsideSierpinski(880,122,num);
    if(num <= 780)
      num = 790;
  }
}
public void keyPressed()//optional
{
  if(key == 'w')
  {
    wIsPressed = true;
  }
  if(key == 's')
  {
    sIsPressed = true;
  }
}

public void keyReleased()//optional
{
  if(key == 'w')
  {
    wIsPressed = false;
  }
  if(key == 's')
  {
    sIsPressed = false;
  }
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    noStroke();
    triangle(x, y, x+len, y, x+len, y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/2,y-len/2,len/2);
  }
}

public void upsideSierpinski(int x, int y, int len) 
{
  if(len <= 20){
    noStroke();
    triangle(x, y, x-len, y, x-len, y+len);
  }
  else{
    upsideSierpinski(x,y,len/2);
    upsideSierpinski(x-len/2,y,len/2);
    upsideSierpinski(x-len/2,y+len/2,len/2);
  }
}

