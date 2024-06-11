void setup() 
{
  size(400, 300);
}
 
void draw()
{
  background(255);  //white
 
  if (mouseX < width/2)
  {
    if (mouseY < height/2)
    {
        fill(255,0,0); //red 
    }
    else
    {
        fill(0,0,255);// blue
    }
    rect(mouseX, mouseY, 80, 80);
  }
  else
  {
    ellipse(mouseX, mouseY, 80, 80);// the color will be the same, only the 
    // shape is kept the same. 
  }
}
