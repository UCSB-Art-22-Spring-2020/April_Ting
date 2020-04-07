//2020.Apr.6
//Art22 Assignment 1
//April Ting


int middleW, middleH, time; // set integers
float count;
int value = 0;

void setup() {
  size(600, 600);                       // set the background size and color
  background(255, 240, 245, 200);
  middleW=0;                            //set the initial number to each integer
  middleH=0;
  time=2;
  count=0;
}

void heart() {                            //set  heart function in three colors



  noStroke();
  fill(228, 81, 92); //color1
  beginShape();      // draw a heart
  middleH = middleH +30; // change its location
  middleW = middleW +30;
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);
  endShape();
  
  noStroke();
  fill(242, 188, 202);        //color2
  beginShape();              // draw  heart2
  middleH = middleH +30;       // change its location (right left)
  middleW = middleW +30;
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);
  endShape();


  noStroke();
  fill(215, 53, 45);          //color2
  beginShape();              // draw  heart3
  middleH = middleH +30;    // change its location(right left)
  middleW = middleW +30;
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW+80*time, middleH-20*time, middleW, middleH+50*time);
  vertex(middleW, middleH);
  bezierVertex(middleW, middleH-40*time, middleW-80*time, middleH-20*time, middleW, middleH+50*time);
  endShape();
}



void draw() {
  heart();   //call the function



//if in those 2 ranges
  if (mouseX > width/2 && mouseY > width/2 ||mouseX < width/2 && mouseY < width/2) {
    noStroke();
    fill(255, 210, 5, 100);     // in color yellow
    quad(mouseX, mouseY, mouseX+15, mouseY-20, mouseX+30, mouseY, mouseX+15, +mouseY+20);    //draw quad
  } else {                      //if the other ranges
    noStroke();
    fill(255, 255, 255, 100);   //in color white
    quad(mouseX, mouseY, mouseX+15, mouseY-20, mouseX+30, mouseY, mouseX+15, +mouseY+20); //draw quad
  }

  if (mousePressed == true) {   //if I press the mouse
    noStroke();
    fill(176, 224, 230, 20);
    circle(mouseX, mouseY, count);    //draw a circle
    //rect(mouseX, mouseY, count, count);
    count += 1.5;
  } 
}

void mouseReleased() {    //if I release the mouse, the size of circle starts again
  count = 0;
}
