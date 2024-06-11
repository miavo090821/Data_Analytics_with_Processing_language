int position;// an integer named position 
//to keep track of the current position of an ellipse 
int inc =1; //an integer named inc and initialized = 1
//to control the movement of ellipse, specifying 
//how much they should move in each frame

void setup(){
  size(400,400); // canvas size 
  position = 0;// position = 0 is being initialized
}
void draw(){
  background(255);// white background
  translate(width/2,height/2); //translate the co-ordinate 
  //to the center of the screen.

  fill(255,0,0,192);
  ellipse(position,position,40,40);// 1st ellipse at x=position=0
  //and y= position=0, 40,40 are the width and height
  
  fill(0,255,0,192);
  ellipse(-position,position,40,40);//2nd ellipse at x=-position
  
  fill(0,0,255,192);
  ellipse(-position,-position,40,40);//3rd ellipse at x,y=-position
  
  fill(255,255,0,192);
  ellipse(position,-position,40,40);//4th ellipse at y=-position. 
  
  position = position + inc;// update the position value 
  //by adding inc value to every move of ellipse on its co-ordinates
  
  // reverse if too far
  if (position + inc > width/2)//checks if the next position of 
  //the ellipse would be too far from the center of the canvas
    inc = -inc; //it will reverse by changing the inc to -inc,
  //so the position = position - inc, it will reverse back.
  
}
