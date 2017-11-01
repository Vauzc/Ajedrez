 class Alfil extends Piezas {
protected PVector trans;
protected boolean dye;
protected PImage Color;
protected float PosX,PosY;

public Alfil(float x, float y, boolean Dye) {
    super(x,y,Dye);
  
    Dye = dye;
  }

public Alfil() {
    this(10,10,true);
  }
 

  @Override
   void drawFigure(boolean dye){
    if(dye==true){
    Color = loadImage("rb.png");
    image(rb, 0, 0, height/10, height/10);
    }   else    {
    Color = loadImage("rn.png");
    image(rn, 0, 0, height/10, height/10);
    }
  }
  
  @Override
  void move(float x, float y){
    
      PosX=x;
      PosY=y;
      
  }
  }