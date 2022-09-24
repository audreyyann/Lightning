int startX = 150;
int startY = 50;
int endX = 150;
int endY = 50;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(#5d88de);
}
void draw()
{ 
  noStroke();
  //chopsticks
  fill(156, 84, 70);
  arc(150, 50, 200, 200, 0, radians(5));
  arc(155, 60, 200, 200, 0, radians(5));
  //bowl
  fill(214, 56, 56);
  rect(125, 260, 50, 20);
  arc(150, 165, 200, 210, 0, PI);
  //noodles
  if (endX <= 220 && endY <= 220) {
    stroke(250, 246, 145, 170);
    frameRate(45);
    endX = startX + ((int)(Math.random()*20) - 9);
    endY = startY + ((int)(Math.random()*10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  //redraw bowl
  noStroke();
  fill(214, 56, 56);
  rect(125, 260, 50, 20);
  arc(150, 165, 200, 210, 0, PI);
}
void mousePressed()
{
  startX = 150;
  startY = 50;
  endX = 150;
  endY = 50;
}
