Satellite ISS;
Satellite KMS;

PVector yAxis = new PVector(0, 1, 0);
PVector zAxis = new PVector(0, 0, 1);

float rotation = 0;
float angle;

Table table;
float r = 200;

PImage earth;
PShape globe;
void setup() {
  size(1000, 1000, P3D);
  earth = loadImage("earth2.jpg");

  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(earth);
  getPos();
  ISS = new Satellite(sat1Lat, sat2Lat, sat1Lon, sat2Lon, sat1Alt);
  ISS.satsetup();
  KMS = new Satellite(sat3Lat, sat4Lat, sat3Lon, sat4Lon, sat3Alt);
  KMS.satsetup();
}

void draw() {
  textSize(40);

  background(51);
  translate(width*0.5, height*0.5);

  rotateY(angle);

  if (keyPressed && key == 'a') {
    angle += 0.01;
  } else if(keyPressed && key== 'd'){
    angle -= 0.01;
  }

  lights();
  fill(200);
  noStroke();
  //sphere(r);
  shape(globe);


  //PVector pos1 = new PVector(x1, y1, z1);
  //PVector pos2 = new PVector(x2, y2, z2);

  float h = pow(10, 10);
  float maxh = pow(10, 7);
  h = map(h, 0, maxh, 10, 100);
  //PVector xaxis = new PVector(1, 0, 0);
  //float angleb1 = PVector.angleBetween(xaxis, pos1);
  //println(angleb1);
  //PVector raxis1 = xaxis.cross(pos1);
  //float angleb2 = PVector.angleBetween(xaxis, pos2);
  //PVector raxis2 = xaxis.cross(pos2);
  
  //println(SES.radius);
  
  pushMatrix();
  //translate(x1, y1, z1);
  //rotate(angleb1);
  ISS.display();
  popMatrix();
  
  pushMatrix();
  KMS.display();
  popMatrix();
}
