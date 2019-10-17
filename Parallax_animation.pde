color blue = #87ceeb;
color grey = #D3D3D3;
color brown = #663300;
color Rgrey = #696969;
color red = #CC0000;
color yellow = #fad201;
color white = #FFFFFF;
color green = #355829;


int mountainX = 0;
float treeX = 0;
int carX = 0;
boolean night = true;
float x = 0;
float b=0.5;
//float Sx = 0;
//float Sy = 10;
void setup() {
  size(1200, 650);
  noStroke();
}


void draw() {
  
    background(blue);
    
    fill(0, 0, 0, x);
    rect(0, 0, 1600, 650);
    x = x + b;
    

  pushMatrix();
  translate(mountainX, 0);
  moutains();
  mountainX = mountainX + 1;
  popMatrix();

  pushMatrix();
  translate(treeX, 0);
  tree();
  treeX = treeX + 2;
  popMatrix();

  //road
  fill(Rgrey);
  rect(0, 550, 1200, 100);

  pushMatrix();
  translate(carX, 0);
  car();
  carX = carX + 6;
  popMatrix();
 


  if (mountainX >= 400) {

    mountainX = 0;
  }

  if (treeX >= 120) {
    treeX = 0;
  }

  if (carX >= 1200) {
    carX = -300;
    night = !night;
  }
  
      
    if (x > 255) {
       b=-0.5;
    }
    
   if (x < 0) {
     b=0.5;
 
    }
    
     


}


// ---------------------------------------------------------------------
void moutains() {
  fill(#D3D3D3);
  //mountains
  triangle(-600, 600, -400, 200, -200, 550);
  triangle(-400, 550, -200, 100, 0, 550);
  triangle(-200, 600, 0, 200, 200, 600);
  triangle(0, 550, 200, 100, 400, 550);
  triangle(200, 600, 400, 200, 600, 600);
  triangle(400, 550, 600, 100, 800, 550);
  triangle(600, 600, 800, 200, 1000, 600);
  triangle(800, 550, 1000, 100, 1200, 550);


  //snow
  fill(white);
  arc(-400, 200, 200, 300, radians(50), radians(127) );
  arc(-200, 100, 200, 350, radians(53), radians(127) );
  arc(200, 100, 200, 350, radians(53), radians(127) );
  arc(600, 100, 200, 350, radians(53), radians(127) );
  arc(1000, 100, 200, 350, radians(53), radians(127) );
  arc(400, 200, 200, 300, radians(53), radians(127) );
  arc(800, 200, 200, 300, radians(53), radians(127) );
  arc(0, 200, 200, 300, radians(53), radians(127) );
}

//---------------------------------------------------------------
void tree() {
  //trees
  fill(brown);
  rect(-70, 300, 20, 300);
  rect(50, 300, 20, 300);
  rect(170, 300, 20, 300);
  rect(290, 300, 20, 300);
  rect(410, 300, 20, 300);
  rect(530, 300, 20, 300);
  rect(650, 300, 20, 300);
  rect(770, 300, 20, 300);
  rect(890, 300, 20, 300);
  rect(1010, 300, 20, 300);
  rect(1130, 300, 20, 300);
  fill(green);
  triangle(-120, 500, -60, 250, 0, 500);
  triangle(0, 500, 60, 250, 120, 500);
  triangle(120, 500, 180, 250, 240, 500);
  triangle(240, 500, 300, 250, 360, 500);
  triangle(360, 500, 420, 250, 480, 500);
  triangle(480, 500, 540, 250, 600, 500);
  triangle(600, 500, 660, 250, 720, 500);
  triangle(720, 500, 780, 250, 840, 500);
  triangle(840, 500, 900, 250, 960, 500);
  triangle(960, 500, 1020, 250, 1080, 500);
  triangle(1080, 500, 1140, 250, 1200, 500);
}

//-------------------------------------------------------

void car() {
  //car
  noStroke();
    fill(250, 210, 1, x);
  quad(280, 520, 360, 500, 360, 550, 280, 540 );
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
