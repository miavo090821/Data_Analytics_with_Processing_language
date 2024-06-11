float ran;

void setup()
{
  size(200,200);
  fill(0);
  textSize(48);
  textAlign(CENTER);
  
  ran = random(6);
}

void draw()
{ 
  background(255);
  String message ="";
  
  if (ran<1){
    message = "one";
  }
  else if (ran<2){
    message = "two";
  }
  else if (ran<3){
    message = "three"; 
  }else if(ran<4){
    message = "four";
  }
  else if (ran<5){
    message = "five";
  }
  else if (ran<6){
    message ="six";
  }
  text(message,width/2,height/2);
}
