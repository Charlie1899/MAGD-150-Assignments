wheel circle = new wheel();
wheel[] bats = new wheel[20];


PVector center1, center2, center3, center4, 
  sample1, sample2, sample3, sample4, 
  scale;
float theta;

void setup(){
  size(800,800);
    scale = new PVector(width * 0.2, height * 0.125);
  theta = 0;

  center2 = new PVector(width * 0.75, height * 0.25);
  

 for (int i = 0; i < bats.length; i++) {
    bats[i] = new wheel(); 
  }
}

void draw(){ 
  background(0,24,72);
  theta = map(mouseX, 0, width, 0, TWO_PI);
  scale.y = map(mouseY, 0, height, height * 0.075, width * 0.2);

//displays a moon that can translate, rotate, and scale
  pushStyle();
  noStroke();
  ellipseMode(RADIUS);
  fill(180);
  pushMatrix();
  translate(center2.x, center2.y);
  rotate(-theta);
  scale(scale.x, scale.y);
  ellipse(0, 0, 1, 1);
  sample2 = new PVector(screenX(1, 0), screenY(1, 0));
  popMatrix();
  popStyle();

   for (int i = 0; i < bats.length; i++) {
    bats[i].update();
    bats[i].bats(); 
  }
 circle.display();
}