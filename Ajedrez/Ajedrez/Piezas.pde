abstract class Piezas {
  protected PVector trans;
  public Piezas() {
    this(10, 10);
  }

  public Piezas(float x, float y) {

    trans = new PVector(x, y);
  }
}
