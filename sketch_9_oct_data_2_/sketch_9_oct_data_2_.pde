String[] names;

void setup()
{
  size(300,580);
  fill(0);
  textSize(14);
  
  names = loadStrings("names.txt");
}
void draw()
{
  background(255);
  float yPos =25;
  
  for(String name : names)
  {
    text(name,20,yPos);
    yPos = yPos+28;
  }
  
  for (int i=0; i<names.length;i++)
  {  
    println(names[i]);

  }
}
