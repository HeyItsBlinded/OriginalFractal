public void setup() {
  size(500, 500);
  rectMode(CENTER);
}

public void draw() {
  background(73, 24, 150);
  myCircle(250, 375, 200);
  myCircle(250, 175, 200);
  myCircle(425, 275, 200);
  myCircle(75, 275, 200);
  myRectangle(100, 125, 100);
  myRectangle(300, 125, 100);
}

public void myCircle(int x, int y, int siz) {
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  ellipse(x, y, siz, siz); 
  if (siz > 25) {
    myCircle(x, y + 12, siz / 2);
  }
}

public void myRectangle(int x1, int y1, int siz1) {
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  rect(x1, y1, siz1, siz1);
  if (siz1 > 1) {
    myRectangle(x1, y1, siz1 / 2);
    myRectangle(x1 + 100, y1 + 100, siz1 / 2);
  }
}
