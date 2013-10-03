int windowW;
int windowH;
int buildingX;
int buildingY;
int buildingW;
int value=0;
String s="Press any key";
String m="Press again to eliminate:)";
int showBuilding=1;

void setup() {
  size(700, 700);
}

void draw() {
  background(38, 50, 72);
  strokeWeight(6);
  textSize(20);
  textAlign(CENTER);
  fill(255, 240, 38);
  //set the location of the text
  text(s, width/4*3, height/9);
  text(m, width/4*3, height/7);
  drawMoon();
  stroke(random(255), 255, random(255));
  buildingY=height/2-windowH*2;
  windowW=15;
  windowH=20;
  buildingW=width/50+2*4*windowW;
  fill(217, 243, 203);
  if (showBuilding==-1) {
    for (int i=0;i<4;i++) {
      fill(217, 243, 203);
      //draw building with same distace and width but randhom height
      drawBuilding(buildingX+i*width/4, buildingY-int(random(height/6)));
    }
  }
}
void drawBuilding(int buildingX, int buildingY) {
  rectMode(CORNER);
  rect(buildingX, buildingY, buildingW, 700);
  // i controls the number of rows 
  for (int i=0;  i<=4; i++) {
    stroke(0);
    strokeWeight(0);
    frameRate (1.5);
    fill (random(255), random(255), random(255));
    //m controls the number of columns
    for (int m=1; m<5; m=m+1)
      rect(buildingX+width/50+2*(m-1)*windowW, buildingY+windowH*2+i*height/10, windowW, windowH);
  }
  strokeWeight(6);
  stroke(random(255), 255, random(255));
  fill(217, 243, 203);
  //move the building integrally
  pushMatrix();
  translate(buildingX, buildingY);
  popMatrix();
}
void drawMoon() {
  stroke(38, 50, 72);
  fill(248, 202, 77);
  ellipse(60, 60, 60, 60);
  fill(38, 50, 72);
  ellipse(70, 60, 40, 40);
}
void keyPressed() {
  if (value==0) {
    //showBuidling=showBuilding*(-1)
    //if press the key again, showBuilding=(-1)*(-1)=1,invalidate the drawBuilding
    showBuilding*=-1;
  }
}

