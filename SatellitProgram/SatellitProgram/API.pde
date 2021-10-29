float x1,x2,x3;
float y1,y2,y3;
float z1,z2,z3;

float sat1Lon, sat1Lat, sat2Lon, sat2Lat, sat1Alt, sat2Alt;

void getPos() {


JSONObject j = loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=6CGJ45-KDVDBB-7BXRDC-4SPK");
JSONArray positionsJson = j.getJSONArray("positions");
 

JSONObject pos1 = positionsJson.getJSONObject(0);
JSONObject pos2 = positionsJson.getJSONObject(1);

sat1Lon = pos1.getFloat("satlongitude");
sat1Lat = pos1.getFloat("satlatitude");
sat1Alt = pos1.getFloat("sataltitude");
float time1 = pos1.getFloat("timestamp");

sat2Lon = pos2.getFloat("satlongitude");
sat2Lat = pos2.getFloat("satlatitude");
sat2Alt = pos2.getFloat("sataltitude");
float time2 = pos2.getFloat("timestamp");


float theta1 = radians(sat1Lat);
float phi1 = radians(sat1Lon) + PI;

// fix: in OpenGL, y & z axes are flipped from math notation of spherical coordinates
float x1 = r * cos(theta1) * cos(phi1);
float y1 = -r * sin(theta1);
float z1 = -r * cos(theta1) * sin(phi1);

float theta2 = radians(sat2Lat);
float phi2 = radians(sat2Lon) + PI;

// fix: in OpenGL, y & z axes are flipped from math notation of spherical coordinates
float x2 = r * cos(theta2) * cos(phi2);
float y2 = -r * sin(theta2);
float z2 = -r * cos(theta2) * sin(phi2);

//println(x1,y1,z1);

x3= x1-x2;
y3= y1-y2;
z3=z1-z2;

//println(x1,y1,z1,time1);
//println(x2,y2,z2,time2);
}
