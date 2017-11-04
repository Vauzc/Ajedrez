 class Caballo extends Piezas {
protected PVector trans;
protected boolean dye;
protected PImage Color;
protected float PosX,PosY;

public Caballo(float x, float y, boolean Dye) {
    super(x,y,Dye);
  
    Dye = dye;
  }

public Caballo() {
    this(10,10,true);
  }
 

  
  @Override
   void drawFigure(boolean dye){
    if(dye==true){
      image(cb, 0, 0, height/10, height/10);
    }else{
      image(cn, 0, 0, height/10, height/10);
      }
    }
  
  @Override
  void move(float x, float y){
    
      PosX=x;
      PosY=y;
      
  }
  }
