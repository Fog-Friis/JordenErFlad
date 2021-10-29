class Satellite {
  float x, y, z, phi, theta, radius;
<<<<<<< HEAD
  float x2, y2,z2, phi2, theta2, radius2; 
=======
  PVector currentPos, startPos;
  int rounds = 0;
  float starttime, endtime, ellapsedtime;
>>>>>>> 43d15b03d89d7d673d93e84854da926a7ad351de

  void satsetup() {
    radius = 2*sat1Alt/3;
    theta = radians(sat1Lat);
    phi = radians(sat1Lon)+PI;
<<<<<<< HEAD
    radius2 = sat3Alt;
    theta2 = radians(sat3Lat);
    phi2 = radians(sat3Lon)+PI;
    
    
=======
    startPos = new PVector(radius * cos(theta) * cos(phi),-radius * sin(theta),-radius * cos(theta) * sin(phi));
>>>>>>> 43d15b03d89d7d673d93e84854da926a7ad351de
  }

  void display() {
    
    theta += radians(sat1Lat-sat2Lat)*10;
    phi += radians(sat1Lon-sat2Lon)*10;

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
    
<<<<<<< HEAD
    /*
   pushMatrix();
   translate(x2, y2, z2);
    box(15);
     //translate(width / 2, height / 2);
   
    
    popMatrix();
    */
    
  // println(x,y,z); 
  println(x2,y2,z2);
=======
    //println(x, y, z);
>>>>>>> 43d15b03d89d7d673d93e84854da926a7ad351de
  }
}
