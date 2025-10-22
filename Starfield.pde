Particle[] bob = new Particle[100];
OddballParticle hey = new OddballParticle();
void setup(){
size(950,1000);
noStroke();
for(int i = 0; i<bob.length;i++){
  bob[i] = new Particle();
}

  bob[99] = new OddballParticle();
}
void draw(){
background(135, 206, 235);
for(int i = 0; i<bob.length;i++){
  bob[i].show();
  bob[i].move(); 
}
}

class Particle{
 int myColor, myX, myY, myHeight, myWidth, myOpacity;
 float myAngle, mySpeed;
 Particle(){
   myX = 500;
   myY = 500;
   myWidth = 30;
   myHeight = 30;
   mySpeed = (float)(Math.random()*10)+1;
   myColor = (int)(Math.random()*20)+236;
   myOpacity = (int)(Math.random()*60)+60;
   myAngle = (float)(Math.random()*(2*Math.PI));
 }
 void show(){
   fill(myColor, myOpacity);
   ellipse((float)myX, (float)myY, (float)myWidth, (float)myHeight);
 }
 void move(){
   if(myWidth >= 80 && myHeight >= 80){
     myWidth += 1;
     myHeight += 1;
   }
   else{
   myX += Math.cos(myAngle)*mySpeed;
   myY += Math.sin(myAngle)*mySpeed;
   }
   if(myX >950 || myY > 950 || myX < -950 || myY < -950){
     myX = 500;
     myY = 500;
 }
   
 
}

class OddballParticle extends Particle {
  OddballParticle(){
   myX = 500;
   myY = 500;
   myWidth = 80;
   myHeight = 80;
   mySpeed = 10.0;
   myColor = (int)(Math.random()*30)-10;
   myOpacity = (int)(Math.random()*60)+150;
   myAngle = (float)(Math.random()*(2*Math.PI));
  }
}
