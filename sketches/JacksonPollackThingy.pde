void setup(){
  size(500, 500);
}
void draw(){
  float distance = sqrt(sq(pmouseX-mouseX) + sq(pmouseY-mouseY));
  strokeWeight(distance*.08);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed(){
  float r = (int)random(0,256);
  float g = (int)random(0,256);
  float b = (int)random(0,256);
  int size = (int)random(8, 28);
  stroke(r,g,b);
  fill(r, g, b, 80);
  ellipse(mouseX, mouseY, size, size);
}