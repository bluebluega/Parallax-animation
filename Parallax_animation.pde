color blue = #87ceeb;
color grey = #D3D3D3;
color brown = #663300;
color Rgrey = #696969;
color red = #CC0000;
color yellow = #fad201;

int x1 = -400; //mountains
int x2 = 0; //tree tops
int x3 = 50; //tree trunks
void setup() {
  size(1200, 650);
  noStroke();
}


void draw() {
  background(blue);
  fill(#D3D3D3);
  //mountains
  triangle(x1, 550, -200, 100, 0, 550);
  triangle(x1 + 400, 550, 200, 100, 400, 550);
  triangle(x1 + 800, 550, 600, 100, 800, 550);
  triangle(x1 + 1200, 550, 1000, 100, 1200, 550);
  triangle(200, 600, 400, 200, 600, 600);
  triangle(600, 600, 800, 200, 1000, 600);
  //snow
  

  //trees
  fill(brown);
  rect(x3, 300, 20, 300);
  rect(x3 + 120, 300, 20, 300);
  rect(x3 + 240, 300, 20, 300);
  rect(x3 + 360, 300, 20, 300);
  rect(x3 + 480, 300, 20, 300);
  rect(x3 + 600, 300, 20, 300);
  rect(x3 + 720, 300, 20, 300);
  rect(x3 + 840, 300, 20, 300);
  rect(x3 + 960, 300, 20, 300);
  rect(x3 + 1080, 300, 20, 300);
  fill(#355829);
  triangle(x2, 500, 60, 250, 120, 500);
  triangle(x2 + 120, 500, 180, 250, 240, 500);
  triangle(x2 + 240, 500, 300, 250, 360, 500);
  triangle(x2 + 360, 500, 420, 250, 480, 500);
  triangle(x2 + 480, 500, 540, 250, 600, 500);
  triangle(x2 + 600, 500, 660, 250, 720, 500);
  triangle(x2 + 720, 500, 780, 250, 840, 500);
  triangle(x2 + 840, 500, 900, 250, 960, 500);
  triangle(x2 + 960, 500, 1020, 250, 1080, 500);
  triangle(x2 + 1080, 500, 1140, 250, 1200, 500);

  //road
  fill(Rgrey);
  rect(0, 550, 1200, 100);
  
   //headlights
  //fill(yellow);
  //quad(280, 520, 360, 500, 360, 550, 280, 540 );

  //car
  noStroke();
  fill(red);
  rect(0, 425, 300, 150, 25, 25, 25, 25);
  fill(000000);
  circle(50, 575, 50);
  circle(250, 575, 50);
  fill(Rgrey);
  circle(50, 575, 30);
  circle(250, 575, 30);
  fill(grey);
  rect(15, 440, 225, 50, 15, 15, 15, 15);
  rect(260, 440, 40, 50, 15, 10, 10, 15);
}
