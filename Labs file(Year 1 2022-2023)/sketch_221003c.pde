boolean STOP;
void setup(){
  size(400,400);
  background(178,190,181);
  STOP = true;
}

void draw(){
  
  if(STOP){
    fill(255,0,0);
    rectMode(CENTER);
    rect(width/2, height/2, 300,300);
    
    fill(0,0,0);
    textSize(70);
    textAlign(CENTER);
    text("STOP",width/2,height/2);
  } 
  
  else{
    fill(0, 255, 0);
    rectMode(CENTER);
    rect(width/2, height/2, 300,300);
    
    fill(0,0,0);
    textSize(70);
    textAlign(CENTER);
    text("WALK",width/2,height/2);
  } 
}

void mousePressed(){
  STOP = !STOP;
}
