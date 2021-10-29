class Satellite {
  float x, y, z, phi, theta, radius;
  float x2, y2,z2, phi2, theta2, radius2; 

  void satsetup() {
    radius = sat1Alt;
    theta = radians(sat1Lat);
    phi = radians(sat1Lon)+PI;
    radius2 = sat3Alt;
    theta2 = radians(sat3Lat);
    phi2 = radians(sat3Lon)+PI;
    
    
  }

  void display() {
    
    theta += radians(sat1Lat-sat2Lat)*10;
    phi += radians(sat1Lon-sat2Lon)*10;

    x = radius * cos(theta) * cos(phi);
    y = -radius * sin(theta);
    z = -radius * cos(theta) * sin(phi);

//---------------------------------------------------------------------------------

    theta2 += radians(sat3Lat-sat4Lat)*10;
    phi2 += radians(sat3Lon-sat4Lon)*10;
    
    x2 = radius2 * cos(theta2) * cos(phi2);
    y2 = -radius2 * sin(theta2);
    z2 = -radius2 * cos(theta2) * sin(phi2);


    pushMatrix();
    //translate(width / 2, height / 2);
    translate(x, y, z);
    box(20);
    popMatrix();
    
    /*
   pushMatrix();
   translate(x2, y2, z2);
    box(15);
     //translate(width / 2, height / 2);
   
    
    popMatrix();
    */
    
  // println(x,y,z); 
  println(x2,y2,z2);
  }
}
