 class Reina extends Piezas {
protected PVector trans;
protected boolean dye;
protected float PosX,PosY;

public Reina(float x, float y, boolean Dye) {
    super(x,y,Dye);
  
    Dye = dye;
  }

 

  
  @Override
   void drawFigure(boolean dye){
    if(dye==true){
      image(db, 0, 0, height/10, height/10);
    }else{
      image(dn, 0, 0, height/10, height/10);
      }
    }
  
  
  @Override
  void move(float x, float y){
    
      PosX=x;
      PosY=y;
      
  }
  }