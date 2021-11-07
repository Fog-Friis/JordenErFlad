float x1,x2,x3;
float y1,y2,y3;
float z1,z2,z3;

float sat1Lon, sat1Lat, sat2Lon, sat2Lat, sat1Alt, sat2Alt;
float sat3Lon, sat3Lat, sat4Lon, sat4Lat, sat3Alt, sat4Alt;
int timeStamp;
void getPos() {


JSONObject j = loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=25UHXC-YKPXZ4-D6YJQW-4SSW");
JSONArray positionsJson = j.getJSONArray("positions");

JSONObject j2= loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/41332/41.702/-76.014/0/2/&apiKey=25UHXC-YKPXZ4-D6YJQW-4SSW");
JSONArray positionsJson2 = j2.getJSONArray("positions");
 

JSONObject pos1 = positionsJson.getJSONObject(0);
JSONObject pos2 = positionsJson.getJSONObject(1);

sat1Lon = pos1.getFloat("satlongitude");
sat1Lat = pos1.getFloat("satlatitude");
sat1Alt = pos1.getFloat("sataltitude");


sat2Lon = pos2.getFloat("satlongitude");
sat2Lat = pos2.getFloat("satlatitude");
sat2Alt = pos2.getFloat("sataltitude");
timeStamp = pos2.getInt("timestamp");

JSONObject pos3 = positionsJson2.getJSONObject(0);
JSONObject pos4 = positionsJson2.getJSONObject(1);

sat3Lon = pos3.getFloat("satlongitude");
sat3Lat = pos3.getFloat("satlatitude");
sat3Alt = pos3.getFloat("sataltitude");


sat4Lon = pos4.getFloat("satlongitude");
sat4Lat = pos4.getFloat("satlatitude");
sat4Alt = pos4.getFloat("sataltitude");

}
