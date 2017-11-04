PImage img;
PImage rb;
PImage rn;
PImage db;
PImage dn;
PImage ab;
PImage an;
PImage cb;
PImage cn;
PImage tb;
PImage tn;
PImage pb;
PImage pn;
Piezas[] PiezasB;
Piezas[] PiezasN;


 void setup(){
   PiezasB = new Piezas[16];
   PiezasN = new Piezas[16];
   background(0);
   fullScreen();
   img = loadImage("t1.png");
   rb = loadImage("rb.png");
   rn = loadImage("rn.png");
   db = loadImage("db.png");
   dn = loadImage("dn.png");
   ab = loadImage("ab.png");
   an = loadImage("an.png");
   cb = loadImage("cb.png");
   cn = loadImage("cn.png");
   tb = loadImage("tb.png");
   tn = loadImage("tn.png");
   pb = loadImage("pb.png");
   pn = loadImage("pn.png");
   
   // Piezas Blancas
   PiezasB[0] = new Rey(3,7,true);
   
   PiezasB[1] = new Reina(4,7,true);
   
   PiezasB[2] = new Alfil(2,7,true);
   PiezasB[3] = new Alfil(5,7,true);
   
   PiezasB[4] = new Caballo(1,7,true);
   PiezasB[5] = new Caballo(6,7,true);
   
   PiezasB[6] = new Torre(0,7,true);
   PiezasB[7] = new Torre(7,7,true);
   
   PiezasB[8] = new Peon(0,6,true);
   PiezasB[9] = new Peon(1,6,true);
   PiezasB[10] = new Peon(2,6,true);
   PiezasB[11] = new Peon(3,6,true);
   PiezasB[12] = new Peon(4,6,true);
   PiezasB[13] = new Peon(5,6,true);
   PiezasB[14] = new Peon(6,6,true);
   PiezasB[15] = new Peon(7,6,true);
   
   // Piezas Negras
   PiezasN[0] = new Rey(3,0,false);
   
   PiezasN[1] = new Reina(4,0,false);
   
   PiezasN[2] = new Alfil(2,0,false);
   PiezasN[3] = new Alfil(5,0,false);
   
   PiezasN[4] = new Caballo(1,0,false);
   PiezasN[5] = new Caballo(6,0,false);
   
   PiezasN[6] = new Torre(0,0,false);
   PiezasN[7] = new Torre(7,0,false);
   
   PiezasN[8] = new Peon(0,1,false);
   PiezasN[9] = new Peon(1,1,false);
   PiezasN[10] = new Peon(2,1,false);
   PiezasN[11] = new Peon(3,1,false);
   PiezasN[12] = new Peon(4,1,false);
   PiezasN[13] = new Peon(5,1,false);
   PiezasN[14] = new Peon(6,1,false);
   PiezasN[15] = new Peon(7,1,false);
   

   
 
 
 }
 
 
 void draw(){
   
 
 for (Piezas piezas : PiezasB){
    piezas.draw();
  }
  
   for (Piezas piezas : PiezasN){
    piezas.draw();
  }
  
 }
 
 
