void setup(){
  size(800, 800);
  background(0);
}

void draw(){
  
  colorMode(RGB, 250, 250,250,250);
  
  fill(0, 0, 0, 40);
    rect(0,0,800,200);
    
  fill(6, 4, 120, 30);
    rect(0,0,800,800);
  
   fill(#42DEC0);
  ellipse(700,250,500, 500);
  
   fill(#1BB89A, 100);
  beginShape();
  vertex(700,120);
  vertex(522, 400);
  vertex(800, 320);
  vertex(460, 385);
  vertex(600, 75);
  vertex(500,205);
 endShape();
 
 fill(#009276, 100);
  beginShape();
  vertex(500,205);
  vertex(460, 385);
  vertex(522, 400);
  vertex(800, 320);
  vertex(700, 120);
  vertex(600, 75);
 endShape();
 
  beginShape();
  vertex(500,205);
  vertex(460, 385);
  vertex(522, 400);
  vertex(800, 450);
  vertex(800, 120);
  vertex(600, 75);
  
 endShape();
 
  fill(250,250,250,250);
  triangle(300, 300, 500, 300, 400, 100);
  rect(300, 300, 200, 280);
  quad(300, 580, 325, 680, 475, 680, 500, 580);
 
 fill(0,0,100,50);
  ellipse(400,400,100, 100);
  
  fill(0, 150,180, 100);
  ellipse(400,400,100,100);
  
  fill(250,250,250,200);
  ellipse(400,421,50, 60);
  
  colorMode(HSB, 250, 250,250,250);
  fill(250,200,200, 250);
  bezier(330, 685, 380, 720, 300, 750, 330, 780);
   bezier(400, 685, 450, 720, 370, 750, 400, 780);
    bezier(470, 685, 520, 720, 440, 750, 470, 780);
  
  colorMode(RGB, 250, 250,250,250);
 
  fill(#B7410E);
  ellipse(150,150,200, 200);
  
  fill(#912C00);
  beginShape();
  vertex(110,120);
  vertex(200,180);
  vertex(140,230);
  vertex(60,175);
  vertex(220, 75);
  vertex(220,205);
 endShape();
 
  beginShape();
vertex(200,180); 
vertex(110,120);
  vertex(140,230);
  vertex(220, 75);
  vertex(60,175);
  vertex(80,80);
 endShape();
  
  fill(250,250,250,250);
  ellipse(200,480,15, 15);
  ellipse(100,500,15, 15);
  ellipse(135,600,15, 15);
  ellipse(180,650,15, 15);
  ellipse(300,700,15, 15);
  ellipse(200,400,15, 15);
  ellipse(50,300,15, 15);
  ellipse(70,420,15, 15);
  ellipse(30,700,15, 15);
  ellipse(600,780,15, 15);
  ellipse(700,700,15, 15);
  ellipse(580,600,15, 15);
  ellipse(550,650,15, 15);
  ellipse(623,700,15, 15);
  ellipse(668,623,15, 15);
  ellipse(728,678,15, 15);
  ellipse(769,772,15, 15);
  ellipse(640,700,15, 15);
 
}