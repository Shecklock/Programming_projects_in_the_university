float ballX;
float ballY;
float ballWidth;
float speedX;
float speedY;
float C;
float holeX;
float holeY;
float holeWidth;

void setup() {
  size(600, 600);
  ballX = 10;
  ballY = height/2;
  ballWidth = 60;
  initializeSpeed();
  initializeHole();
}

void initializeSpeed() {
  speedX = random(5, 10);
  speedY = random(5, 10);
}

void drawColourCircle(float circleX, float circleY, float ballWidth,
  color C) {
  fill(C);
  circle(circleX, circleY, ballWidth);
}

void moveBall() {
  if (ballX < 0 && ballX < width) {
    ballX = ballX + speedX;
  }

  if (ballY < 0 && ballY < height) {
    ballY = ballY + speedY;
  }
}

void bounceBall() {

  if (ballX < 0 || ballX > width) {
    speedX = speedX * -1;
  }
  if (ballY < 0 || ballY > height) {
    speedY = speedY * -1;
  }
  ballX = ballX + speedX;
  ballY = ballY + speedY;
}

void keyPressed() {
  if (keyPressed) {
    if (key == 'x' || key == 'X') {
      speedX = random(5, 10);
      ballX = ballX + speedX;
    }
    if (keyPressed) {
      if (key == 'y' || key == 'Y') {
        speedY = random(5, 10);
        ballY = ballY + speedY;
      }
    }
  }
}

void initializeHole() {
  holeX = random(0, width);
  holeY = random(0, height);
  holeWidth = random(100, 300);
}

float distance(float x1, float y1, float x2, float y2) {
  float side1 = x1 - x2;
  float side2 = y1 - y2;
  float distance = sqrt((side1*side1) + (side2*side2));
  return distance;
}

boolean checkCollide(float circleX, float circleY, float circleDiameter,
  float circle2X, float circle2Y, float circle2Diameter) {
  
  if (distance(circleX, circleY, circle2X, circle2Y) <= circleDiameter/2 + circle2Diameter/2) {
    return true;
  } else {
    return false;
  }
}

void draw() {
  background(127);
  drawColourCircle(ballX, ballY, ballWidth, color(255, 0, 0));
  bounceBall();
  moveBall();
  drawColourCircle(holeX, holeY, holeWidth, color(0));
  
  if (checkCollide(ballX, ballY, ballWidth, holeX, holeY, holeWidth)){
    initializeHole();
    initializeSpeed();
  }
}
