float time;
void setup(){
  size(500, 500);
  time = 0;
}
void draw(){
  background(0);
  translate(250, 250);
  rotate(time);
  
  for (int i = 0; i<25; i++){
    rotate(i+time);
    crazyShapes(170, color(255,204,0,100));
    rotate(-i);
    crazyShapes(10*i, color(random(88, 120+(i*6)), 0+(i*8), 204+i, 100));
  }
  
  time += 0.005;
}
void crazyShapes(int offset, color c){
    noStroke();
    for(int i = 0; i < 10; i++){
    rotate(PI/2 );
    pushMatrix();
    translate(0, offset*sin(time));
    fill(c);
    triangle(-25, 0, 25, 0, 0, 50);
    fill(255);
    ellipse(0, 0, 5, 5);
    popMatrix();
  }  
}
