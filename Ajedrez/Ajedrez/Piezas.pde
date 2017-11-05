abstract class Piezas {
protected PVector trans;
protected boolean dye;
protected String identity;
protected boolean selectb = false;
protected boolean selectn = false;

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
    //Transformation(identity);
    
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




public void updateb(int x, int y) { // movimiento
    x=7;
    y=7;
    if (selectb) {
      for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  y=0;
                  break;
                case 6:
                  y=1;
                  break;
                case 5:
                  y=2;
                  break;
                case 4:
                  y=3;
                  break;
                case 3:
                  y=4;
                  break;
                case 2:
                  y=5;
                  break;
                case 1:
                  y=6;
                  break;
                
               }    
             }
            } 
        setTranslation(x, y);
    }
}
/*public void updaten(int x, int y) {
    if (selectn) {
      for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  y=0;
                  break;
                case 6:
                  y=1;
                  break;
                case 5:
                  y=2;
                  break;
                case 4:
                  y=3;
                  break;
                case 3:
                  y=4;
                  break;
                case 2:
                  y=5;
                  break;
                case 1:
                  y=6;
                  break;
                
               }    
             }
            } 
        setTranslation(x, y);
    }
} */ 
  
public void clickb(int x, int y) {  
    if (trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y) //verifica si esta encima de la pieza
        selectb = !selectb;
  }
/*public void clickn(int x, int y) {  
    if (get(x,y)==0&&mousePressed ) 
        selectn = !selectn;
  }/*
/*
public void Transformation(String Identity){
    int a=7,b=7;
    if (mousePressed && mouseButton == LEFT) {
      //Seleccion piezas Negras
      
      if (Identity == "PN1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                
               }    
             }
            } 
        PiezasN[8].setTranslation(a, b);
      }     
      else if (Identity == "PN2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;  
                }}
            }  
        PiezasN[9].setTranslation(a, b);
      }
      else if (Identity == "PN3") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break; 
                
                }}
            }  
        PiezasN[10].setTranslation(a, b);
      }     
      else if (Identity == "PN4") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasN[11].setTranslation(a, b);
      }
      else if (Identity == "PN5") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasN[12].setTranslation(a, b);
      }     
      else if (Identity == "PN6") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasN[13].setTranslation(a, b);
      }      
      else if (Identity == "PN7") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasN[14].setTranslation(a, b);
      }     
      else if (Identity == "PN8") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasN[15].setTranslation(a, b);
      }
      else if (Identity == "AN1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasN[2].setTranslation(a, b);
      } 
      else if (Identity == "AN2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasN[3].setTranslation(a, b);
      }       
      else if (Identity == "TN1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasN[6].setTranslation(a, b);
      } 
      else if (Identity == "TN2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasN[7].setTranslation(a, b);
      }       
      else if (Identity == "CN1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasN[4].setTranslation(a, b);
      } 
      else if (Identity == "CN2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasN[5].setTranslation(a, b);
      }      
      else if (Identity == "RN") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                 a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasN[0].setTranslation(a, b);
      } 
      else if (Identity == "QN") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasN[1].setTranslation(a, b);
      }  
      
      //Seleccion piezas Blancas
      
      else if (Identity == "PB1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }
        PiezasB[8].setTranslation(a, b);
      }     
      else if (Identity == "PB2") {
       for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[9].setTranslation(a, b);
      }
      else if (Identity == "PB3") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[10].setTranslation(a, b);
      }     
      else if (Identity == "PB4") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[11].setTranslation(a, b);
      }
      else if (Identity == "PB5") {
         for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[12].setTranslation(a, b);
      }     
      else if (Identity == "PB6") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[13].setTranslation(a, b);
      }      
      else if (Identity == "PB7") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[14].setTranslation(a, b);
      }     
      else if (Identity == "PB8") {
         for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[15].setTranslation(a, b);
      }
      else if (Identity == "AB1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[2].setTranslation(a, b);
      } 
      else if (Identity == "AB2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }  
        PiezasB[3].setTranslation(a, b);
      }       
      else if (Identity == "TB1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }
            } }
        PiezasB[6].setTranslation(a, b);
      } 
      else if (Identity == "TB2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }
        PiezasB[7].setTranslation(a, b);
      }       
      else if (Identity == "CB1") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[4].setTranslation(a, b);
      } 
      else if (Identity == "CB2") {
        for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        PiezasB[5].setTranslation(a, b);
      }      
      else if (Identity == "RB") {
          for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            } 
        
        PiezasB[0].setTranslation(a, b);
      } 
      else if (Identity == "QB") {
          for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  a=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*i)&&(mouseY>(height/8)*(i-1))){
                  switch(i-1){
                case 7:
                  b=0;
                  break;
                case 6:
                  b=1;
                  break;
                case 5:
                  b=2;
                  break;
                case 4:
                  b=3;
                  break;
                case 3:
                  b=4;
                  break;
                case 2:
                  b=5;
                  break;
                case 1:
                  b=6;
                  break;
                }}
            }
          PiezasB[1].setTranslation(a, b);    
      }  
  }
}*/
  
} 