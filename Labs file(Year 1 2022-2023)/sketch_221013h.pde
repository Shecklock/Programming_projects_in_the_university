int numRows;
int rowLength;
int startX;
int startY;
int rectWidth;
int rectHeight;
boolean isColour;

void setup() {
  size(900, 400);
  stroke(0);
  numRows = -1;
  startX = 50;
  startY = 350;
  rectWidth= 75;
  rectHeight = 30;
  isColour = false;
  rowLength = 10;
}

void draw() {
  background(255);

  int newY = startY;
  int newX = startX;
  int rowBlocks = rowLength;


  for (int row = 0;
    row <= numRows;
    row ++) {
      
    for (int col = 0;
      col < rowBlocks;
      col ++) { 
      rect(newX, newY, rectWidth, rectHeight);
      newX = newX + rectWidth;
    }
    rowBlocks--;
    newY = newY - rectHeight;
    newX = startX + (rectWidth/2 * (row+1));
  }
  
}
  


void mousePressed() {
  
  float r = random(256);
  float g = random(256);
  float b = random(256);
  
  if (numRows < 9) {
    numRows = numRows + 1;
  } else {
    numRows = -1;
  }
  
  if (numRows == 0) {
    isColour = !isColour;
  } 
  if (isColour){
    fill(r,g,b);
  } else {
    fill(255);
  }
  //if (numRows >= 9) {
    //isColour = true;
    //fill(r, g, b);
  //} else {
    //isColour = false;
    //fill(255);
  //}
}
