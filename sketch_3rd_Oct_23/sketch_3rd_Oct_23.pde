void setup()
{
  size(400,200);
  fill(0);
}

void draw()
{
  background(255);
  String welcomeMessage ="Hello from Bootcamp"; //specifying the welcome
  //variable stored as a string 
  textAlign(CENTER,CENTER); // ensures the text is centered around both x, y 
  text(welcomeMessage,width/2,height/2); //tell us the co-ordinates. 
}
