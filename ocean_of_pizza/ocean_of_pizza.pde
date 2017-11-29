int xPos= -210;
int xPos2 = -100;
int wave1x = 0;
int wave2x = 200;
int wave3x = 400;
int wave4x = 600;
int wave5x = 800;

int wid = 25;

int wave6x = -80;
int wave7x = 120;
int wave8x = 320;
int wave9x = 520;
int wave10x = 720;
int wave11x = 920;
     
float fishxpos, fishypos;        

float fishxspeed = 1.8;  
float fishyspeed = 1.2;  

int fishxdirection = 1; 
int fishydirection = 1;

float fishxpos2, fishypos2;        

float fishxspeed2 = 1.5;  
float fishyspeed2 = 1.1;  

int fishxdirection2 = 1; 
int fishydirection2 = 1;

int pressed = 0 ;
int pressedState = 0;

int keypressed = 0 ;
int keypressedState = 0;

void setup(){
  size(800,800);
  smooth();
  background(80);
  noStroke();
  fill(0,250,0);
  fishxpos = width/2;
  fishypos = height/2;
  
   fishxpos2 = width/2 + 300;
  fishypos2 = height/2 +300;
}

void draw(){
 
  background(0,119,190);
  noStroke();
  fill(246,180,23);
  rect(0,0,800,300);
  fill(241,220,46);
  ellipse(800,200,200,200);
  if (keypressedState == 0){
  fill(135,206,250);
  rect(0,0,800, 300);
  fill(241,220, 46);
  ellipse(400,0,200,200);
  }
  
  noFill();
  stroke(0);
  arc(wave1x, 350, 200, 200,0 , HALF_PI);
  arc(wave2x, 350, 200, 200, HALF_PI, PI);
  arc(wave2x, 350, 200, 200,0 , HALF_PI);
  arc(wave3x, 350, 200, 200, HALF_PI, PI);
  arc(wave3x, 350, 200, 200,0 , HALF_PI);
  arc(wave4x, 350, 200, 200, HALF_PI, PI);
  arc(wave4x, 350, 200, 200,0 , HALF_PI);
  arc(wave5x, 350, 200, 200, HALF_PI, PI);
 
  
  wave1x=wave1x+2;
  if (wave1x>width+100)
  {
    wave1x=0;
  }
  wave2x=wave2x+2;
  if (wave2x>width+100)
  {
    wave2x=0;
  }
  wave3x=wave3x+2;
  if (wave3x>width+100)
  {
    wave3x=0;
  }
  wave4x=wave4x+2;
  if (wave4x>width+100)
  {
    wave4x=0;
  }
  wave5x=wave5x+2;
  if (wave5x>width+100)
  {
    wave5x=0;
  }
   noFill();
  stroke(0);
   arc(wave6x, 500, 200, 200,0 , HALF_PI);
  arc(wave7x, 500, 200, 200, HALF_PI, PI);
  arc(wave7x, 500, 200, 200,0 , HALF_PI);
  arc(wave8x, 500, 200, 200, HALF_PI, PI);
  arc(wave8x, 500, 200, 200,0 , HALF_PI);
  arc(wave9x, 500, 200, 200, HALF_PI, PI);
  arc(wave9x, 500, 200, 200,0 , HALF_PI);
  arc(wave10x, 500, 200, 200, HALF_PI, PI);
 

  
   wave6x=wave6x+2;
  if (wave6x>width+80)
  {
    wave6x=-20;
  }
  wave7x=wave7x+2;
  if (wave7x>width+80)
  {
    wave7x=-20;
  }
  wave8x=wave8x+2;
  if (wave8x>width+80)
  {
    wave8x=-20;
  }
  wave9x=wave9x+2;
  if (wave9x>width+80)
  {
    wave9x=-20;
  }
  wave10x=wave10x+2;
  if (wave10x>width+80)
  {
    wave10x=-20;
  }

fill(255,189,68);
 
fishxpos = fishxpos + ( fishxspeed * fishxdirection );
  fishypos = fishypos + ( fishyspeed * fishydirection );

  if (fishxpos > width-wid || fishxpos < wid) {
    fishxdirection *= -1;
  }
  else{fishxdirection *= 1;}
  
  if (fishypos > height-wid || fishypos < wid+300) {
    fishydirection *= -1;
  }
  else{fishydirection *= 1;}
  
  triangle(fishxpos-30,fishypos+12.5,fishxpos-30,fishypos-12.5,fishxpos-10,fishypos);
  ellipse(fishxpos, fishypos, wid, wid);
  fill(0);
  ellipse(fishxpos+5,fishypos -5,5,5);
  
  fill(255,189,68);
 
fishxpos2 = fishxpos2 + ( fishxspeed2 * fishxdirection2 );
  fishypos2 = fishypos2 + ( fishyspeed2* fishydirection2 );

  if (fishxpos2 > width-wid || fishxpos2 < wid) {
    fishxdirection2 *= -1;
  }
  else{fishxdirection2 *= 1;}
  
  if (fishypos2 > height-wid || fishypos2 < wid+300) {
    fishydirection2 *= -1;
  }
  else{fishydirection2 *= 1;}
  
  triangle(fishxpos2-30,fishypos2+12.5,fishxpos2-30,fishypos2-12.5,fishxpos2-10,fishypos2);
  ellipse(fishxpos2, fishypos2, wid, wid);
  fill(0);
  ellipse(fishxpos2+5,fishypos2-5,5,5);
  
  fill(255,189,68);
  rect(xPos2 - 10, 500, 10, 150, 0);
  triangle(xPos2 - 80, 550, xPos2+80, 550, xPos2, 450);
  arc(xPos2, 600, 200, 200, 0, PI);
   fill(139,69,19);
   ellipse(xPos2+30, 650,30,30);
  ellipse(xPos2-30, 645,30,30);
  ellipse(xPos2+40, 610,15,15);
  ellipse(xPos2-40, 620,15,15);
  ellipse(xPos2-15, 480,10,10);
  ellipse(xPos2+10, 510,12,12);
  ellipse(xPos2-20, 540,10,10);
  ellipse(xPos2+50, 530,15,15);
  if (pressedState == 0){
    fill(250,0,0);
  ellipse(xPos2+30, 650,30,30);
  ellipse(xPos2-30, 645,30,30);
  ellipse(xPos2+40, 610,15,15);
  ellipse(xPos2-40, 620,15,15);
  ellipse(xPos2-15, 480,10,10);
  ellipse(xPos2+10, 510,12,12);
  ellipse(xPos2-20, 540,10,10);
  ellipse(xPos2+50, 530,15,15);
  }

  xPos2=xPos2+2;
  
  if (xPos2>width+100)
  {
    xPos2=-100;
  }
  
  fill(255,189,68);
  rect(xPos - 10, 200, 10, 150, 0);
  triangle(xPos - 80, 250, xPos+80, 250, xPos, 150);
  arc(xPos, 300, 200, 200, 0, PI); 
 fill(139,69,19);
    ellipse(xPos+30, 350,30,30);
  ellipse(xPos-30, 345,30,30);
  ellipse(xPos+40, 310,15,15);
  ellipse(xPos-40, 320,15,15);
  ellipse(xPos-15, 180,10,10);
  ellipse(xPos+10, 210,12,12);
  ellipse(xPos-20, 240,10,10);
  ellipse(xPos+50, 230,15,15);
  if(pressedState == 0){
    fill(250,0,0);
  ellipse(xPos+30, 350,30,30);
  ellipse(xPos-30, 345,30,30);
  ellipse(xPos+40, 310,15,15);
  ellipse(xPos-40, 320,15,15);
  ellipse(xPos-15, 180,10,10);
  ellipse(xPos+10, 210,12,12);
  ellipse(xPos-20, 240,10,10);
  ellipse(xPos+50, 230,15,15);
  }
  xPos=xPos+2;
  if (xPos>width+100)
  {
    xPos=-210;
  }
  

}

void mousePressed(){
  pressed = pressed + 1;
   pressedState = (pressed % 2);
}
void keyPressed(){
   keypressed = keypressed + 1;
   keypressedState = (keypressed % 2);
}