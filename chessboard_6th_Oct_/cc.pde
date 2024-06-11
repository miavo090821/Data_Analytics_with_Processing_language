int col,row;

void setup()
{
  size(400,400); 
}

void draw()
{
  background(255);

  for(col=0; col<8;col++)
  {
    for(row=0; row<8;row++)
    {

    if((col+row)%2==0)
    {
    fill(255);
    }
    else
    {
    fill(0);
    }
     square(col*50,row*50,50);
    }
  }
}
