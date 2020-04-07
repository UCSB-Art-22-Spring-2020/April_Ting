//2020.Apr.6
//Art22 Assignment 1
//April Ting


int middleW, middleH, time; // set integers
int count;
int value = 0;

void setup() {
  size(600, 600);                       // set the background size and color
  background(255, 240, 245, 200);
  middleW=0;                            //set the initial number to each integer
  middleH=0;
  time=2;
  count=0;
}

void heart() {                            //set heart function in three color



  noStroke();
  fill(228, 81, 92);
  beginShape();
  middleH = middleH +30;
  middleW = middleW +30;
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);
  endShape();
  
  noStroke();
  fill(242, 188, 202);
  beginShape();
  middleH = middleH +30;
  middleW = middleW +30;
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);
  endShape();


  noStroke();
  fill(215, 53, 45);
  beginShape();
  middleH = middleH +30;
  middleW = middleW +30;
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);
  endShape();
}
void draw() {
  heart();




  //fill(100,0,0);
  //quad(mouseX,mouseY,mouseX+15,mouseY-20,mouseX+30,mouseY,mouseX+15,+mouseY+20);
  if (mouseX > width/2 && mouseY > width/2 ||mouseX < width/2 && mouseY < width/2) {
    noStroke();
    fill(255, 210, 5, 100);
    quad(mouseX, mouseY, mouseX+15, mouseY-20, mouseX+30, mouseY, mouseX+15, +mouseY+20);
  } else {
    noStroke();
    fill(255, 255, 255, 100);
    quad(mouseX, mouseY, mouseX+15, mouseY-20, mouseX+30, mouseY, mouseX+15, +mouseY+20);
  }

  if (mousePressed == true) {
    noStroke();
    fill(176, 224, 230, 20);
    circle(mouseX, mouseY, count); 
    //rect(mouseX, mouseY, count, count);
    count += 1;
  } 
}

void mouseReleased() {
  count = 0;
}
