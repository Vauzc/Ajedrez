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
int fila =8;
int columna=8;
int t=7;
int[][] Mx;
int[][] My;
Piezas[] PiezasB;
Piezas[] PiezasN;


 void setup(){
   // Ubicación
    Mx=new int[columna][fila];
    My=new int[columna][fila];
   for (int i =0; i<8;i++){
        for(int j =0; j<8; j++){
             Mx[i][j]=width/2-height/2+(height/8)*j;
             My[i][j]=(height/8)*t;
          }
        t--;
      }
   
   //Piezas 
   
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
   PiezasB[0] = new Rey(Mx[0][4],My[0][4],true);
   
   PiezasB[1] = new Reina(Mx[0][3],My[0][3],true);
   
   PiezasB[2] = new Alfil(Mx[0][2],My[0][2],true);
   PiezasB[3] = new Alfil(Mx[0][5],My[0][5],true);
   
   PiezasB[4] = new Caballo(Mx[0][1],My[0][1],true);
   PiezasB[5] = new Caballo(Mx[0][6],My[0][6],true);
   
   PiezasB[6] = new Torre(Mx[0][0],My[0][0],true);
   PiezasB[7] = new Torre(Mx[0][7],My[0][7],true);
   
   PiezasB[8] = new Peon(Mx[1][0],My[1][0],true);
   PiezasB[9] = new Peon(Mx[1][1],My[1][1],true);
   PiezasB[10] = new Peon(Mx[1][2],My[1][2],true);
   PiezasB[11] = new Peon(Mx[1][3],My[1][3],true);
   PiezasB[12] = new Peon(Mx[1][4],My[1][4],true);
   PiezasB[13] = new Peon(Mx[1][5],My[1][5],true);
   PiezasB[14] = new Peon(Mx[1][6],My[1][6],true);
   PiezasB[15] = new Peon(Mx[1][7],My[1][7],true);
   
   // Piezas Negras
   PiezasN[0] = new Rey(Mx[7][4],My[7][4],false);
   
   PiezasN[1] = new Reina(Mx[7][3],My[7][3],false);
   
   PiezasN[2] = new Alfil(Mx[7][2],My[7][2],false);
   PiezasN[3] = new Alfil(Mx[7][5],My[7][5],false);
   
   PiezasN[4] = new Caballo(Mx[7][1],My[7][1],false);
   PiezasN[5] = new Caballo(Mx[7][6],My[7][6],false);
   
   PiezasN[6] = new Torre(Mx[7][0],My[7][0],false);
   PiezasN[7] = new Torre(Mx[7][7],My[7][7],false);
   
   PiezasN[8] = new Peon(Mx[6][0],My[6][0],false);
   PiezasN[9] = new Peon(Mx[6][1],My[6][1],false);
   PiezasN[10] = new Peon(Mx[6][2],My[6][2],false);
   PiezasN[11] = new Peon(Mx[6][3],My[6][3],false);
   PiezasN[12] = new Peon(Mx[6][4],My[6][4],false);
   PiezasN[13] = new Peon(Mx[6][5],My[6][5],false);
   PiezasN[14] = new Peon(Mx[6][6],My[6][6],false);
   PiezasN[15] = new Peon(Mx[6][7],My[6][7],false);
   

   
 
 
 }
 
 
void draw(){
     image(img, width/2-height/2, 0, height, height);
     for (Piezas piezas : PiezasB){
        piezas.draw();
     }
     for (Piezas piezas : PiezasN){
        piezas.draw();
     }

     
 }
 
 