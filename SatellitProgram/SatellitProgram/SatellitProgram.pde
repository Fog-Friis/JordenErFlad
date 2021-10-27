
float angle;

Table table;
float r = 200;

PImage earth;
PShape globe;
void setup() {
    size(600, 600, P3D);
  earth = loadImage("earth2.jpg");

  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(earth);
    getPos();
}

void draw() {

  background(51);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.05;

  lights();
  fill(200);
  noStroke();
  //sphere(r);
  shape(globe);


    PVector pos = new PVector(x1, y1, z1);

    float h = pow(10, 10);
    float maxh = pow(10, 7);
    h = map(h, 0, maxh, 10, 100);
    PVector xaxis = new PVector(1, 0, 0);
    float angleb = PVector.angleBetween(xaxis, pos);
    PVector raxis = xaxis.cross(pos);



    pushMatrix();
    translate(x1, y1, z1);
    rotate(angleb, raxis.x, raxis.y, raxis.z);
    fill(255);
    popMatrix();
  }
