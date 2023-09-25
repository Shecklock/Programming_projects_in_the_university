Circle circle01;
Circle circle02;
Circle circle03;
Circle circle04;

void setup() {
  
  
  size(600, 600);
  circle01 = new Circle(50,100,100,75);
  circle02 = new Circle(100,60,20,70);
  circle03 = new Circle(70,20,30,90);
  circle04 = new Circle(10,20,30,156);
}

void draw() {
  background(175);
  circle01 .display();
  circle01 .move();
  circle01 .collision(circle02);
  circle01 .collision(circle03);
  circle01 .collision(circle04);
  circle02 .display();
  circle02 .move();
  circle02 .collision(circle01);
  circle02 .collision(circle03);
  circle02 .collision(circle04);
  circle03 .display();
  circle03 .move();
  circle03 .collision(circle02);
  circle03 .collision(circle01);
  circle03 .collision(circle04);
  circle04 .display();
  circle04 .move();
  circle04 .collision(circle02);
  circle04 .collision(circle03);
  circle04 .collision(circle01);
}
