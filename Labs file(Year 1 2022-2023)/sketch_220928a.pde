void setup(){
  size(1000,1000);
  }

void draw(){
  background(255);
  stroke(0);
  fill(255,0,0);
  rect( mouseX, mouseY,300,50);
  rect( mouseX+50, mouseY-50, 200,50);
  stroke(0);
  fill(175);
  ellipse( mouseX+ 50, mouseY+50, 50, 50);
  ellipse( mouseX+ 250, mouseY+50, 50, 50);
  
}
