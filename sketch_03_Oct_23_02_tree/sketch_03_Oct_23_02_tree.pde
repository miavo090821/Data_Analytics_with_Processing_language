void setup()
{
  size(400,400);
  noStroke();
}
void draw()
{
  color skyColor = color(157,238,247);
  color groundColor = color(156,245,170);
  color leafColor = color(82,144,97);
  color trunkColor= color(95,57,26);
  color fruitColor = color(255,153,51);
  
  background(skyColor);
  
  fill(groundColor);
  rect(0,height/2,width,height/2);
  
  float treeX=90;
  float treeY=160;
  
  // draw 1st tree
  fill(trunkColor);
  rect(treeX,treeY,20,70);
  fill(leafColor);
  ellipse(treeX+10,treeY-30,70,90);
  fill(leafColor);
  ellipse(treeX-20,treeY-60,50,50);
  fill(leafColor);
  ellipse(treeX+40,treeY-60,50,50);
  fill(leafColor);
  ellipse(treeX+10,treeY-80,50,50);
  fill(fruitColor);
  circle(treeX,treeY,10);
  fill(fruitColor);
  circle(treeX+10,treeY-50,10);
  
  //draw 2nd tree
  treeX=treeX+120;
  treeY=treeY+40;
  fill(trunkColor);
  rect(treeX,treeY,20,70);
  fill(leafColor);
  ellipse(treeX+10,treeY-30,70,90);
  fill(leafColor);
  ellipse(treeX-20,treeY-60,50,50);
  fill(leafColor);
  ellipse(treeX+40,treeY-60,50,50);
  fill(leafColor);
  ellipse(treeX+10,treeY-80,50,50);
  fill(fruitColor);
  circle(treeX+10,treeY-50,10);
  fill(fruitColor);
  circle(treeX+30,treeY-60,10);
  
  //draw 3rd tree
  treeX=treeX+100;
  treeY=treeY+100;
  fill(trunkColor);
  rect(treeX,treeY,20,70);
  fill(leafColor);
  ellipse(treeX+10,treeY-40,70,90);
  fill(leafColor);
  ellipse(treeX-20,treeY-70,50,50);
  fill(leafColor);
  ellipse(treeX+40,treeY-70,50,50);
  fill(leafColor);
  ellipse(treeX+10,treeY-90,50,50);
  fill(fruitColor);
  circle(treeX+10,treeY-50,10);
  fill(fruitColor);
  circle(treeX+30,treeY-80,10);
  
}
  
