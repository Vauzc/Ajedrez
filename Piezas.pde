abstract class Piezas {
protected PVector trans;
protected boolean dye;
protected PImage Color;
public Piezas() {
    this(10,10,true);
  }
 
 public Piezas(float x, float y, boolean c) {

    trans = new PVector(x, y);
    c = dye;
    
  }





public void draw() {
  
    pushStyle();
    pushMatrix();
    translate(translation().x, translation().y);
    drawFigure(dye);
    popMatrix();
    popStyle();
    
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

}