import java.util.*;
import java.text.*;
String java_date;

 void getTime() {
    long unix_seconds = timeStamp;
   Date date = new Date(unix_seconds*1000L); 
  
   SimpleDateFormat jdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss z");
   jdf.setTimeZone(TimeZone.getTimeZone("GMT+1"));
   java_date = jdf.format(date);
  
  
   
 }
 
