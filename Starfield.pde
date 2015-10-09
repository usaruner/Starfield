Particle [] fire = new Particle;

int j;
void setup()
{  
  
  size(800,800);//your code here
  fire = new NormalParticle[500];
  for(int i = 1;i < fire.length ;i +=1){
    
fire[i] = new NormalParticle();

 }
}
void draw()
{
  
  

 for(int j = 1;j < fire.length ;j +=1){
   
   
 fire[j].show();
 fire[j].move();
 fire[j].center();
 

 }
}
class NormalParticle
{
  double x , y , spd , dth;
  int  size;

  NormalParticle(){
  x = 400;
  y = 400;
  dth = (Math.random()*2)*Math.PI;
  spd = (int)(Math.random()*10)+1;
  size = 10;

     
    
  }
  void move(){
  x += Math.cos(dth)*spd;
  y += Math.sin(dth)*spd;
    }
  
  void show(){

   ellipse((float)x,(float)y,size,size);
   
    
    
  }
  void center(){
    if (Math.abs(x - 400)  > 400){
    spd= spd*(-1);
     
      
    }else if (Math.abs(y - 400)  > 400){
    spd= spd*(-1);
 
    }
    
    
    
  }
}
interface Particle
{
  public void move();
  public void center();
  public void show();
}
class OddballParticle implements Particle
{
   double x , y , spd , dth;
  int  size;

  OddballParticle(){
  x = 400;
  y = 400;
  dth = (Math.random()*2)*Math.PI;
  spd = (int)(Math.random()*10)+1;
  size = 10;

     
    
  }
  void move(){
  x += Math.cos(dth)*spd;
  y += Math.sin(dth)*spd;
    }
  
  void show(){

   ellipse((float)x,(float)y,size,size);
   
    
    
  }
  void center(){
    if (Math.abs(x - 400)  > 400){
    spd= spd*(-1);
     
      
    }else if (Math.abs(y - 400)  > 400){
    spd= spd*(-1);
 
    }
    
    
    
  }
}
class JumboParticle implements Particle
{
  double x , y , spd , dth;
  int  size;

  JumboParticle(){
  x = 400;
  y = 400;
  dth = (Math.random()*2)*Math.PI;
  spd = (int)(Math.random()*10)+1;
  size = 10;

     
    
  }
  void move(){
  x += Math.cos(dth)*spd;
  y += Math.sin(dth)*spd;
    }
  
  void show(){

   ellipse((float)x,(float)y,size,size);
   
    
    
  }
  void center(){
    if (Math.abs(x - 400)  > 400){
    spd= spd*(-1);
     
      
    }else if (Math.abs(y - 400)  > 400){
    spd= spd*(-1);
 
    }
    
    
    
  }
}
