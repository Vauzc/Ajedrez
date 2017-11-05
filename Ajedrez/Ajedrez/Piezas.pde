abstract class Piezas {
protected PVector trans;
protected boolean dye;
protected String identity;

 public Piezas(int x, int y, boolean c, String w) {

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

public void setTranslation(int x, int y) {
    trans.x = Mx[y][x];
    trans.y = My[y][x];
  }

} 




public void Transformation(String Identity){
    int x=-1,y=-1;
    if (mousePressed && mouseButton == LEFT) {
      //Seleccion piezas Negras
      
      if (Identity == "PN1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasN[8].setTranslation(x, y);
      }     
      else if (Identity == "PN2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[9].setTranslation(x, y);
      }
      else if (Identity == "PN3") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[10].setTranslation(x, y);
      }     
      else if (Identity == "PN4") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[11].setTranslation(x, y);
      }
      else if (Identity == "PN5") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[12].setTranslation(x, y);
      }     
      else if (Identity == "PN6") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasN[13].setTranslation(x, y);
      }      
      else if (Identity == "PN7") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[14].setTranslation(x, y);
      }     
      else if (Identity == "PN8") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[15].setTranslation(x, y);
      }
      else if (Identity == "AN1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[2].setTranslation(x, y);
      } 
      else if (Identity == "AN2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasN[3].setTranslation(x, y);
      }       
      else if (Identity == "TN1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[6].setTranslation(x, y);
      } 
      else if (Identity == "TN2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[7].setTranslation(x, y);
      }       
      else if (Identity == "CN1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasN[4].setTranslation(x, y);
      } 
      else if (Identity == "CN2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasN[5].setTranslation(x, y);
      }      
      else if (Identity == "RN") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasN[0].setTranslation(x, y);
      } 
      else if (Identity == "QN") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasN[1].setTranslation(x, y);
      }  
      
      //Seleccion piezas Blancas
      
      else if (Identity == "PB1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }
        PiezasB[8].setTranslation(x, y);
      }     
      else if (Identity == "PB2") {
       for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[9].setTranslation(x, y);
      }
      else if (Identity == "PB3") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[10].setTranslation(x, y);
      }     
      else if (Identity == "PB4") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[11].setTranslation(x, y);
      }
      else if (Identity == "PB5") {
         for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[12].setTranslation(x, y);
      }     
      else if (Identity == "PB6") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[13].setTranslation(x, y);
      }      
      else if (Identity == "PB7") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[14].setTranslation(x, y);
      }     
      else if (Identity == "PB8") {
         for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[15].setTranslation(x, y);
      }
      else if (Identity == "AB1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[2].setTranslation(x, y);
      } 
      else if (Identity == "AB2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }  
        PiezasB[3].setTranslation(x, y);
      }       
      else if (Identity == "TB1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[6].setTranslation(x, y);
      } 
      else if (Identity == "TB2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }
        PiezasB[7].setTranslation(x, y);
      }       
      else if (Identity == "CB1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[4].setTranslation(x, y);
      } 
      else if (Identity == "CB2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        PiezasB[5].setTranslation(x, y);
      }      
      else if (Identity == "RB") {
          for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            } 
        
        PiezasB[0].setTranslation(x, y);
      } 
      else if (Identity == "QB") {
          for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=7;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  y=i;
                }
            }
          PiezasB[1].setTranslation(x, y);    
      }  
  }
}
  
  