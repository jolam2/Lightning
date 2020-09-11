
int startX = 185;
int startY = 180;
int endX = 115;
int endY = 180;


int startA = 115;
int startB = 180;
int endA = 0;
int endB = 100;

//Zeus' hair circles
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
    ellipse(150,100,55,55);
    
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
    ellipse(circX, circY, 15, 15);
    }
  
  circX = 180;
  circY = 110;
  
  while (circX >= 155){
    circX = circX - 5;
    circY = circY + 5;
    ellipse(circX,circY,15,15);
  }
  
  //This is used for Zeus's hair
  circX = 120;
  circY = 90;
  while (circX <= 145){
  circX = circX + 6;
  circY = circY - 5;
  ellipse(circX, circY, 15, 15);
  }
  while (circX <= 170){
  circX = circX + 6;
  circY = circY + 5;
  ellipse(circX, circY, 15, 15);
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
 while (endX >= 0 && endX <= 300){ 
    endX = startX + (int)(Math.random() * 70);
    endY = startY + (int)(Math.random() * 40) - 10;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
   }
   
  //Bolt 2 (Zeus' right hand, on our left)
  while (endA >= 0 && endA <= 300){ 
    endA = startA - (int)(Math.random() * 70);
    endB = startB - (int)(Math.random() * 40) - 10;
    line(startXb, startYb, endXb, endYb);
    startA = endA;
    startB = endB;
   }
}
void mousePressed()
{
  //resets
  startX = 185;
  startY = 180;
  endX = 115;
  endY = 150;
  startA = 115;
  startB = 180;
  endA = 1;
  endB = 100;
  
  //Zeus' Angry Eyebrows
  stroke(0,0,0);
  line(130,90,145,95);
  line(155,95,170,90);
  
}
