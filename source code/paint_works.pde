int value = 0;
int vis;
float rex;
float rey;
int i;
int[] colours = new int[3];
PImage photo;

void setup(){
  size(1000,1000);
  frameRate(120);
  background(20);
  photo = loadImage("2.png");
  }
void draw(){
  stroke(130);
  line (0, 20, 600, 20);
  noStroke();
  fill(colours[0], colours[1], colours[2]);
  rect(width -75, 25, 50, 50);
  
  fill(20);
  rect(width -75, 1+110, 50, 2+140);
  int e = second();
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
  textSize(20);
  fill(255);
  String s = String.valueOf(e);
  text(s, width -75, 1+140);
  String s2 = String.valueOf(d);
  text(s2, width -75, 28+140);
  s = String.valueOf(m);
  text(s, width -75, 56+140); 
  s = String.valueOf(y);
  text(s, width -75, 84+140);
  fill(value);
  rect(25, 25, 50, 50);
  ellipseMode(CORNER);
  fill(255, 0, 0);
  int i = 150;
  ellipse(i, 25, 50, 50);
  fill(255, 255, 0);
  i += 75;
  ellipse(i, 25, 50, 50);
  fill(0, 255, 0);
  i += 75;
  ellipse(i, 25, 50, 50);
  fill(0, 0, 255);
  i += 75;
  ellipse(i, 25, 50, 50);
  fill(255, 0, 255);
  i += 75;
  ellipse(i, 25, 50, 50);
  fill(0, 255, 255);
  i += 75;
  ellipse(i, 25, 50, 50);
  fill(255, 255, 255);
  i += 75;
  ellipse(i, 25, 50, 50);
  fill(0, 0, 0);
  i += 75;
  ellipse(i, 25, 50, 50);
  //println(frameRate);
  if (mouseY >= 150) {
    value = 255;
  } else {
    value = 0;
  }
  if (mousePressed == true && value == 255) {
    vis = 255;
  } else {
    vis = 0;
  }
  rex = mouseX;
  //rey = mouseY;
  cursor(CROSS);
  noStroke();
  fill(colours[0], colours[1], colours[2], vis);
  rey = constrain(mouseY, 150, height);
  ellipseMode(CENTER);
  ellipse(rex, rey, 30, 30);
  if (!focused) { 
  image(photo, 0, 0);
  }
  }


void mouseClicked() {
  int o = 150;
  if (mouseY-25 <=100 && mouseX >= 0 && mouseY >=0 ){ 
    if (mouseX-25 <=100 ){
    background(20); 
    }else if (mouseX >= o && mouseX <= o+100){
        colours[0] = 255;
        colours[1] = 0;
        colours[2] = 0;
    }else{ o += 75; if (mouseX >= o && mouseX <= o+75){
        colours[0] = 255;
        colours[1] = 255;
        colours[2] = 0;
    }else{ o += 75; if (mouseX >= o && mouseX <= o+75){
        colours[0] = 0;
        colours[1] = 255;
        colours[2] = 0;
    }else{ o += 75; if (mouseX >= o && mouseX <= o+75){
        colours[0] = 0;
        colours[1] = 0;
        colours[2] = 255;
    }else{ o += 75; if (mouseX >= o && mouseX <= o+75){
        colours[0] = 255;
        colours[1] = 0;
        colours[2] = 255;
    }else{ o += 75; if (mouseX >= o && mouseX <= o+75){
        colours[0] = 0;
        colours[1] = 255;
        colours[2] = 255;
    }else{ o += 75; if (mouseX >= o && mouseX <= o+75){
        colours[0] = 255;
        colours[1] = 255;
        colours[2] = 255;
    }else{ o += 75; if (mouseX >= o && mouseX <= o+75){
        colours[0] = 0;
        colours[1] = 0;
        colours[2] = 0;
    }
    }
    }
    }
    }
    }
    }
    }
  }
}
