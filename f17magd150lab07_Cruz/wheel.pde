class wheel {
  
  void display() {
    //the wheel
      noFill();
      strokeWeight(20);
      stroke(random(250),random(250),random(250));
      line(400,400,100,800);
      line(400,400,700,800);
      line(400,400,300,800);
      line(400,400,500,800);
      strokeWeight(40);
      ellipse(400, 400, 400, 400);
      ellipse(400, 400, 100, 100);
  
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
   
  mouse.sub(center);
   
  mouse.normalize();
    
  mouse.mult(190);
    
  translate(width/2,height/2);
      
     noFill();
  stroke(random(250),random(250),random(250));
  strokeWeight(10);
  
  line(0,0,mouse.x,mouse.y);
  line(0,0,mouse.x * -1 ,mouse.y * -1);
 
  line(0,0,mouse.x * -1 ,mouse.y);
  line(0,0,mouse.x,mouse.y * -1);
  
  line(0,0,mouse.y,mouse.x);
  line(0,0,mouse.y * - 1,mouse.x * -1);
  
  line(0,0,mouse.y,mouse.x * -1);
  line(0,0,mouse.y * - 1,mouse.x);
  
  //wheel cars
  fill(234,108,58); 
  noStroke();
  rect(mouse.x - 50,mouse.y,100,100);
  rect(-mouse.x - 50,-mouse.y,100,100);
  rect(-mouse.x - 50,mouse.y,100,100);
  rect(mouse.x- 50,-mouse.y,100,100);
  rect(mouse.y - 50,mouse.x,100,100);
  rect(-mouse.y - 50,-mouse.x,100,100);
  rect(mouse.y - 50,-mouse.x,100,100);
  rect(-mouse.y - 50,mouse.x,100,100);
  
  }
  
  PVector position;
  PVector velocity;
  PVector acceleration;

  float topspeed;

  wheel() {
 
    position = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    topspeed = 5;
  }

  void update() {
    
    // make a vector that points from position to mouse
    PVector mouse = new PVector(mouseX,mouseY);
    acceleration = PVector.sub(mouse,position);
    acceleration.normalize();
    acceleration.mult(0.1);
    
    // Velocity changes depending on acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    // position changes by velocity
    position.add(velocity);
  }
//creates bats that follow the mouse
  void bats() {
    stroke(0);
    strokeWeight(2);
    noFill();
     arc(position.x,position.y,48,80, PI,TWO_PI);
  }
}