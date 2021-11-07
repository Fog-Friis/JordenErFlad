Button But1, But2, But3, But4, But5, But6, But7, But8, But9;
boolean toggleOn = false;
float sizebutton = 200;


class Button {
  PVector pos;
  float radius;
  color col;
  String caption;
  boolean visible=true;
  boolean mouseOver=false;

  Button(float x, float y, String txt, color c) {
    pos = new PVector(x, y);
    caption = txt;
    col = c;
    visible = true;
  }

  void show() {
    rectMode(CORNER);
    fill(col);
    strokeWeight(3);
    rect(pos.x-sizebutton/1.4, pos.y-sizebutton/7, sizebutton, sizebutton/3);
    fill(0);
    float fontSize = sizebutton * 0.20;
    textSize(fontSize);
    // float tw = textWidth(caption);
    float tx = pos.x -100;
    float ty = pos.y + (fontSize / 2);
    text(caption, tx, ty);
  }
 

  
  void mainScreen() {    

    if  (mouseX>width/1.10-sizebutton/1.4 && mouseX<width/1.10+sizebutton-sizebutton/1.4 &&    
      mouseY>height/1.05-sizebutton/7 && mouseY<(height/1.05+sizebutton/3)-sizebutton/7) {
        println("\n"+java_date+"\n");
      if(toggleOn ==false){
      toggleOn= true;
      }
      else{
      toggleOn= false;
      
      }
    }
  
    }
}
