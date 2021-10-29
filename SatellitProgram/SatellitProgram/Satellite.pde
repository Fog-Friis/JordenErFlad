class Satellite {
  float x, y, z, phi, theta, radius;
  PVector currentPos, startPos;
  int rounds = 0;
  float starttime, endtime, ellapsedtime;

  void satsetup() {
    radius = 2*sat1Alt/3;
    theta = radians(sat1Lat);
    phi = radians(sat1Lon)+PI;
    startPos = new PVector(radius * cos(theta) * cos(phi),-radius * sin(theta),-radius * cos(theta) * sin(phi));
  }

  void display() {
    
    theta += radians(sat1Lat-sat2Lat)*10;
    phi += radians(sat2Lon-sat2Lon)*10;

    x = radius * cos(theta) * cos(phi);
    y = -radius * sin(theta);
    z = -radius * cos(theta) * sin(phi);
    
    currentPos = new PVector(x,y,z);
    
    if (dist(startPos.x,startPos.y,startPos.z,currentPos.x,currentPos.y,currentPos.z)<0.9){
      //println(frameCount);      
      rounds++;
      
      if (rounds == 1){
        starttime = frameCount;
      }
      if (rounds == 2){
        endtime = frameCount;
      }      
    }
  ellapsedtime = (endtime-starttime)/60;
  
  

    pushMatrix();
    //translate(width / 2, height / 2);
    translate(x, y, z);
    box(20);
    popMatrix();
    
    //println(x, y, z);
  }
}
