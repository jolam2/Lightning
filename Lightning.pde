
int startX1 = 185;
int startY1 = 180;
int endX1 = 115;
int endY1 = 180;


int startX2 = 115;
int startY2 = 180;
int endX2 = 0;
int endY2 = 100;


int circX = 120;
int circY = 110;

void setup()
{
  size(300,300);
  strokeWeight(0);
  background(8);
 
   // Here's Zeus' body
    fill(255,162,112);
    rect(125,100,50,100);
    rect(125,200,10,45);
    rect(165,200,10,45);
    quad(130,100,120,100,110,180,115,180);
    quad(165,100,175,100,190,180,185,180);
    circle(150,100,55);
    
  //This is for Zeus' toga
    fill(225,225,225);
    triangle(125,100,125,200,175,200);
  
  //This is used for Zeus' beard
    fill(255, 255, 255);
    stroke(255, 255, 255);
    strokeWeight(10);
    line(120,110,180,110);
    strokeWeight(0);
    
  while ( circY <= 135){
    circX = circX + 5;
    circY = circY + 5;
    circle(circX, circY, 15);
    }
  
  circX = 180;
  circY = 110;
  
  while (circX >= 155){
    circX = circX - 5;
    circY = circY + 5;
    circle(circX,circY,15);
  }
  
  //This is used for Zeus's hair
  circX = 120;
  circY = 90;
  while (circX <= 145){
  circX = circX + 6;
  circY = circY - 5;
  circle(circX, circY, 15);
  }
  while (circX <= 170){
  circX = circX + 6;
  circY = circY + 5;
  circle(circX, circY, 15);
  }
  strokeWeight(10);
  line(120,90,120,110);
  line(180,90,180,110);
  
  //Zeus' Eyes
    strokeWeight(5);
    stroke(0,0,0);
    point(140,100);
    point(160,100);

}
void draw()
{
 strokeWeight(5);
 stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 
  //Bolt 1 (Zeus' left hand, on our right)
 while (endX1 >= 0 && endX1 <= 300){ 
    endX1 = startX1 + (int)(Math.random() * 70);
    endY1 = startY1 + (int)(Math.random() * 40) - 10;
    line(startX1, startY1, endX1, endY1);
    startX1 = endX1;
    startY1 = endY1;
   }
   
  //Bolt 2 (Zeus' right hand, on our left)
  while (endX2 >= 0 && endX2 <= 300){ 
    endX2 = startX2 - (int)(Math.random() * 70);
    endY2 = startY2 - (int)(Math.random() * 40) - 10;
    line(startX2, startY2, endX2, endY2);
    startX2 = endX2;
    startY2 = endY2;
   }
}
void mousePressed()
{
  //resets
  startX1 = 185;
  startY1 = 180;
  endX1 = 115;
  endY1 = 150;
  startX2 = 115;
  startY2 = 180;
  endX2 = 0;
  endY2 = 100;
  
  //Zeus' Angry Eyebrows
  stroke(0,0,0);
  line(130,90,145,95);
  line(155,95,170,90);
  
}
