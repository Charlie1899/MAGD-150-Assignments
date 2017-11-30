import processing.pdf.*;

//boolean recording;
//PGraphicsPDF pdf;

String[] lines;
String sourceFile = "what.txt";
String[] headlines = {
  "10/10 would watch again!", 
  "Amazing, Astounding, Incredible",
  "Exilirating",
  "Loved every moment",
  " r8 8/8 m8 was gr8"
};
PFont f; 
PFont f2;
float x,y;
int index = 0;
int count, textSize, 
  lineSpacing, margin;
  PFont garamond;
  String fontFile = "Garamond-16.vlw";
  
void setup(){
 size(500,700);
 //load an external string
 lines = loadStrings(sourceFile);
  count = lines.length;
 //create a font to use
 f = createFont(PFont.list()[230], 16);
 f2= createFont("Garamond", 16);
 x = width;
 
 y = round(random(height + 20));
 
  textSize(20);
  lineSpacing = 2;
  margin = 30;
  //To save as a PDF
  beginRecord(PDF,"f17magd150lab08_Cruz.pdf");
}

void draw(){
 background(50);
 // my waffle monster
 fill(245, 200, 138);
 ellipse(250, 350, 420,420);
 stroke(0);
 line(100,200,100,500);
 line(150,163,150,538);
 line(200,145,200,555);
 line(250,140,250,560);
 line(300,145,300,555);
 line(350,163,350,538);
 line(400,200,400,500);
 
 line(100,200,400,200);
 line(67,250,437,250);
 line(45,300,453,300);
 line(38,350,460,350);
 line(45,400,453,400);
 line(67,450,437,450);
 line(100,500,400,500);
 
 fill(250);
 ellipse(200,250,80,80);
 ellipse(300,250,80,80);
 
 line(160,170,245,200);
 line(350,170,255,200);
 
 line(200,380,250,350);
 line(300,380,250,350);
 
 fill(0);
 ellipse(210,260,50,50);
 ellipse(290,260,50,50);
 
 line(460, 350, 500, 360);
 line(500, 360, 480, 420);
 
 line(38, 350, 0, 360);
 line(0, 360, 20, 420);
 
 line(200, 420, 200,650);
 line(200, 650, 170, 660);
 
 line(300, 420, 300, 650);
 line(300, 650, 330, 660);


 textFont(f, 18);

  // A String from the array is displayed depending on the value of the index variable.
  text(headlines[index], x, y); 

  // speed of text
  x = x - 3;

  // If x is less than the negative width, then it is off the screen
  float w = textWidth(headlines[index]); 
  if (x < -w) {
    x = width;
  y = round(random(height + 20));
    index = (index + 1) % headlines.length;
  }

  textFont(f2,20);
fill(250,0,0);
 for (int i = 0; i < count; ++i) {
    text(lines[i], margin, 
      margin + (textSize + lineSpacing) * i);
  }
  
 endRecord();
}