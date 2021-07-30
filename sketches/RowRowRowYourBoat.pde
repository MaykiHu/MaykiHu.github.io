//This recreates a beautiful sunset.  :)
//initial construction stuff

//color of the orange sunset initially
float orange;
//where to draw the orange sunset
int yPos;
//where to draw the boat
int xPos;
//keeps boat replaying on screen
float time;
// For drawing static background
PGraphics pg;

void setup(){
  size(400, 400);
  orange = 255;
  yPos = 0;
  xPos = 0;
  time = 0;
  pg = createGraphics(400, 400);
  pg.beginDraw();
  pg.noStroke();
  pg.background(255);
  for(int i = 0; i < 6; i++){
    //the pretty orange sunset
    pg.fill(orange, 100, 0);
    pg.rect(0, yPos, 400, 50);
    yPos += 50;
    orange -= 19.166666666;
  }
  pg.endDraw();
}

//updates image drawn
void draw(){
  //clears canvas to prevent icky effects (like dragging images)
  image(pg, 0, 0);
  //resets location and colors
  if(yPos >= 300){
      yPos = 0;
  }
  if(orange <= 140){
    orange = 255;
  }
  //creates a sweet sun
  fill(255, 255, 100);
  ellipse(200, 275, 100, 100);
  //creates a pretty ocean
  fill(0, 50, 70);
  rect(0, 300, 400, 100);
  //creates a sillhouette of a person
  fill(0);
  rect(sin(time)*200+192, cos(time)*8+330, 20, 50, 8);
  ellipse(sin(time)*200+200, cos(time)*8+320, 20, 20);
  //draws a boat that glides across the beautiful ocean
  stroke(220);
  line(sin(time)*200+220, cos(time)*8+260, sin(time)*200+220, 368);
  noStroke();
  pushMatrix();
  fill(80, 0, 0);
  translate(sin(time)*200+138, cos(time)*8+220);
  triangle(20, 75, 80, 20, 86, 75);
  popMatrix();
  fill(153, 102, 48);
  arc(sin(time)*200+200, cos(time)*8+360, 80, 40, 0, PI, OPEN);
  time += .008;
}