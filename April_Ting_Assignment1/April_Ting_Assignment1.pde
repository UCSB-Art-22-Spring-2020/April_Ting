//Art22 Assignment1
//April Ting
//2020/04/06
int middleW, middleH, time;
int count, r, g, b;

void setup() {
  size(600, 600);
  background(255, 240, 245, 200);
  middleW=0;
  middleH=0;
  time=2;
}

void heart() {
  
  stroke(255,255,255);
  fill(242, 188, 202);
  beginShape();
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);
  endShape();

  


  stroke(255,255,255);
  fill(228, 81, 92);
  beginShape();
  middleH = middleH +30;
  middleW = middleW +30;
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);
  endShape();
  

  
  stroke(255,255,255);
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
    fill(255, 210, 5,100);
    quad(mouseX, mouseY, mouseX+15, mouseY-20, mouseX+30, mouseY, mouseX+15, +mouseY+20);

  } else {
    fill(245, 245, 245,200);
    quad(mouseX, mouseY, mouseX+15, mouseY-20, mouseX+30, mouseY, mouseX+15, +mouseY+20);
    //r=250;
    //g=200;
    //b=100;
    //heart();


}

  if (mousePressed == true) {
    fill(176, 224, 230,150);
    circle(mouseX,mouseY,count); 
    //rect(mouseX, mouseY, count, count);
    count += 1;
  }
}
