class Satellite {
  float x, y, z, phi, theta, radius;

  void satsetup() {
    radius = sat1Alt;
    theta = radians(sat1Lat);
    phi = radians(sat1Lon)+PI;
  }

  void display() {
    
    theta += radians(sat1Lat-sat2Lat)*10;
    phi += radians(sat2Lon-sat2Lon)*10;

    x = radius * cos(theta) * cos(phi);
    y = -radius * sin(theta);
    z = -radius * cos(theta) * sin(phi);

    pushMatrix();
    //translate(width / 2, height / 2);
    translate(x, y, z);
    box(20);
    popMatrix();
    
    println(x, y, z);
  }
}
