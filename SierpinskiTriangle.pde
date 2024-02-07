public void setup()
{
size(600, 600);

}
public void draw()
{
sierpinski(150,400,300);
}
public void mouseDragged()//optional
{
fill((int)(Math.random()*256));
}

public void sierpinski(int x, int y, int len) 
{
  if (len<20)
  triangle(x,y,x+len,y,x+len/2,y-len);
  else 
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
