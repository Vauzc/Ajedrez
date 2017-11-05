abstract class Piezas {
protected PVector trans;
protected boolean dye;
protected String identity;

 public Piezas(float x, float y, boolean c, String w) {

    trans = new PVector(x, y);
    dye = c;
    identity = w;
  }





public void draw() {
    pushStyle();
    pushMatrix();
    translate(translation().x, translation().y);
    drawFigure(dye);
    popMatrix();
    popStyle();
    Transformation(identity);
    
}

abstract void drawFigure(boolean dye);   

abstract void move(float x,float y);  

public PVector translation() {
    return trans;
  }

public void setTranslation(float x, float y) {
    trans.x = x;
    trans.y = y;
  }


  public void Transformation(String Identity){
    
    if (mousePressed && mouseButton == LEFT) {
      //Seleccion piezas Negras
      
      if (Identity == "PN1") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }     
      if (Identity == "PN2") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }
      if (Identity == "PN3") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }     
      if (Identity == "PN4") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }
      if (Identity == "PN5") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }     
      if (Identity == "PN6") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }      
      if (Identity == "PN7") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }     
      if (Identity == "PN8") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }
      if (Identity == "AN1") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      } 
      if (Identity == "AN2") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }       
      if (Identity == "TN1") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      } 
      if (Identity == "TN2") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }       
      if (Identity == "CN1") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      } 
      if (Identity == "CN2") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }      
      if (Identity == "RN") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      } 
      if (Identity == "QN") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }  
      
      //Seleccion piezas Blancas
      
      if (Identity == "PB1") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }     
      if (Identity == "PB2") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }
      if (Identity == "PB3") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }     
      if (Identity == "PB4") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }
      if (Identity == "PB5") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }     
      if (Identity == "PB6") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }      
      if (Identity == "PB7") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }     
      if (Identity == "PB8") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }
      if (Identity == "AB1") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      } 
      if (Identity == "AB2") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }       
      if (Identity == "TB1") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      } 
      if (Identity == "TB2") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }       
      if (Identity == "CB1") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      } 
      if (Identity == "CB2") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }      
      if (Identity == "RB") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      } 
      if (Identity == "QB") {
          this.setTranslation(mouseX-height/18, - height/18 + mouseY);
      }  
      }
  }
  }
  