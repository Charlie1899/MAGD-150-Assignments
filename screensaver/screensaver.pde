int xPos= -210;
int yPos = -210;
void setup(){
  size(800,800);
  smooth();
  surface.setResizable(true);
  background(80);
  noStroke();
  fill(0,250,0);
}

void draw(){
  
  
background(80);
  fill(0,250,0);
  rect(xPos, 300, 200, 100);
  xPos=xPos+2;
  if (xPos>width+20)
  {
    xPos=-210;
  }
  rect(300, yPos, 100, 200);
  yPos=yPos+2;
  if (yPos>height+20)
  {
    yPos=-210;
  }

float q = constrain(mouseX, 0, 800);
  fill(250,0,0);
  float x3 = map(mouseX, 0, width, 0, 200);
  ellipse(x3 + 650, 675, 50, 50);
  
  float x4 = map(mouseX, 0, width, 0, 200);
  ellipse(x4+650, 125, 50, 50); 
  
  float x1 = map(mouseX, 0, width, 0, 200);
  ellipse(x1, 675, 50, 50);
  
  float x2 = map(mouseX, 0, width, 0, 200);
  ellipse(x2, 125, 50, 50); 
  

  rect(q-10, 40, 20, 20);
  rect(q-10, 740, 20, 20);

   fill(0,0,250);
  rect(pmouseX - 50,pmouseY - 50, 100,100);
  fill(0,250,0);
  ellipse(pmouseX,pmouseY, 80,80);
  fill(250,0,0);
  triangle(pmouseX - 20,pmouseY - 15, pmouseX + 20,pmouseY - 15,pmouseX ,pmouseY + 25);
  
  
  println("This is a screen saver");
  println("You have been away from the computer for to long");
  

  
}