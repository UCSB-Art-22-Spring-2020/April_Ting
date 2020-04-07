//Art22 Assignment1
//April Ting
//2020/04/06
int middleW, middleH, time;
int count, r, g, b;

void setup() {
  size(600, 600);
  background(255, 255, 255, 150);
  middleW=width/2;
  middleH=height/3;
  time=2;
}

void heart() {
  noStroke();
  fill(r, g, b, 100);
  beginShape();
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);

  endShape();
}
void draw() {




  //fill(100,0,0);
  //quad(mouseX,mouseY,mouseX+15,mouseY-20,mouseX+30,mouseY,mouseX+15,+mouseY+20);
  if (mouseX > width/2 && mouseY > width/2 ||mouseX < width/2 && mouseY < width/2) {
    fill(100, 0, 0);
    quad(mouseX, mouseY, mouseX+15, mouseY-20, mouseX+30, mouseY, mouseX+15, +mouseY+20);
    r=219;
    g=83;
    b=129;
    heart();
  } else {
    fill(0, 100, 0);
    quad(mouseX, mouseY, mouseX+15, mouseY-20, mouseX+30, mouseY, mouseX+15, +mouseY+20);
    r=250;
    g=200;
    b=100;
    heart();


}

  if (mousePressed == true) {
    fill(0, 100, 0);
    rect(mouseX, mouseY, count, count);
    count += 2;
  }
}
