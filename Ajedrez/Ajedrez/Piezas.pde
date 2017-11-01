abstract class Piezas {
  protected PVector trans;
  public Piezas() {
    this(10, 10);
  }

  public Piezas(float x, float y) {

    trans = new PVector(x, y);
  }
  public void draw() {
    pushStyle();
    pushMatrix();
    fill(255);
    translate(translation().x, translation().y);
    popMatrix();
    popStyle();
  }
   public PVector translation() {
    return trans;
  }

  public void setTranslation(float x, float y) {
    trans.x = x;
    trans.y = y;
  }
}
