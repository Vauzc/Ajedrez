class Rey extends Piezas {
protected PVector trans;
protected boolean dye;
protected float PosX,PosY;
protected String identity;

public Rey(float x, float y, boolean Dye, String Identity ) {
    super(x,y,Dye,Identity);
  
    Dye = dye;
    Identity = identity;
  }

 

  
  @Override
   void drawFigure(boolean dye){
    if(dye==true){
      image(rb, 0, 0, height/9, height/9);
    }else if (dye == false){
      image(rn, 0, 0, height/9, height/9);
      }
    }
  
  
  @Override
  void move(float x, float y){
    
      PosX=x;
      PosY=y;
      
  }
  }