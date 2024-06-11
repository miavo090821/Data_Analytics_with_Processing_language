void setup()
{
  size(400,400);
  fill(255);
}
void draw()
{
  background(0);
  
  boolean mouseUp = mouseY < height/2;
  boolean mouseRight = mouseX < width/2;
  boolean mouseUpperLeft = mouseUp && mouseRight;
  boolean mouseLowerRight = !mouseUp && !mouseRight;
  fill(145,255,147);
  circle(mouseX,mouseY,10);
  if (mouseUpperLeft || mouseLowerRight)
  {
    println("upper left or lower right quadrants");
  }
  else
  {
    println("upper right or lower left quadrants");
  }
}
