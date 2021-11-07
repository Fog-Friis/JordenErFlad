class Satellite {
  
  float lat1, lat2, long1, long2, alt;
  float theta, theta2, phi, phi2, radius; 
  
  Satellite(float lat1, float lat2, float long1, float long2, float alt){
    this.lat1 = lat1;
    this.lat2 = lat2;
    this.long1 = long1;
    this.long2 = long2;
    this.alt = alt;
  }

  PVector location1, location2, rotationAxis;
  float v, hv;


  void satsetup() {
    radius = alt/1.5;
    
    theta = radians(lat1);
    phi = radians(long1)+PI;
    
    theta2 = radians(lat2);
    phi2 = radians(long2)+PI;
    
    location1 = new PVector(radius * cos(theta) * cos(phi), -radius * sin(theta), -radius * cos(theta) * sin(phi));
    location2 = new PVector(radius * cos(theta2) * cos(phi2), -radius * sin(theta2), -radius * cos(theta2) * sin(phi2));    
    
    rotationAxis = location1.cross(location2);
    
    hv = PVector.angleBetween(location1, location2);
    v = hv;
  }

  void display() {
    
    v += hv*60;

    pushMatrix();
    //translate(width / 2, height / 2);
    rotate(v, rotationAxis.x, rotationAxis.y, rotationAxis.z);
    translate(radius, 0, 0);
    box(20);
    popMatrix();
  }
}
