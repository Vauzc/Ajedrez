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

 void setup(){
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
 
 
 }
 
 
 void draw(){
   image(img, width/2-height/2, 0, height, height);
   image(rb, 0, 0, height/10, height/10);
   image(rn, 100, 0, height/10, height/10);
   image(db, 200, 0, height/10, height/10);
   image(dn, 300, 0, height/10, height/10);
   image(ab, 400, 0,height/10, height/10);
   image(an, 500, 0, height/10, height/10);
   image(cb, 600, 0, height/10, height/10);
   image(cn, 700, 0, height/10, height/10);
   image(tb, 100, 100,height/10, height/10);
   image(tn, 200, 100, height/10, height/10);
   image(pb, 300, 100, height/10, height/10);
   image(pn, 400, 100, height/10, height/10);
 
 
 }
 
 
