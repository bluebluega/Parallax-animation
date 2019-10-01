color blue = #87ceeb;
color grey = #D3D3D3;
color brown = #663300;

void setup(){
  size(800, 600);
  noStroke();
}


void draw(){
  background(blue);
  fill(#D3D3D3);
  //mountains
  triangle(-400, 600, -200, 100, 0, 600);
  triangle(0, 600, 200, 100, 400, 600);
  triangle(400, 600, 600, 100, 800, 600);
 
  //trees
  fill(brown);
  rect(50, 300, 20, 300);
  fill(#355829);
  triangle(0, 500, 45, 200, 95, 500);
 
}
