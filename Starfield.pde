Particle [] fire;

void setup()
{  
  size(800,800);//your code h0];
   fire = new Particle[100];
  for(int i = 1;i < fire.length ;i +=1){
    
fire[i] = new NormalParticle();
fire[4] = new JumboParticle();
 }
  for(int j = 1;j < 50 ;j +=1){
    //fire[j] = new OddballParticle();
    
  }
  for(int j = 50;j < 100 ;j +=1){
    fire[j] = new justParticle();
    
  }
}
void draw()
{
 background(0);

 for(int j = 1;j < fire.length ;j +=1){
   
   fire[j].show();
   fire[j].move();
   fire[j].center();

 }

}
interface Particle
{
  public void move();
  public void center();
  public void show();
}
class NormalParticle implements Particle
{
  double x , y , spd , dth;
  int  size;

  NormalParticle(){
  x = 400;
  y = 400;
  dth = (Math.random()*2)*Math.PI;
  spd = (Math.random()*10)+1;
  size = 8;

     
    
  }
   public void move(){
     dth = dth + .01;
  x += Math.cos(dth)*spd;
  y += Math.sin(dth)*spd;
  
    }
  
  public void show(){
  noStroke();
   ellipse((float)x,(float)y,size,size);
   
    
    
  }
  public void center(){

    
  }
}
class OddballParticle implements Particle
{
   double x , y , spd , dth;
  int  size;

  OddballParticle(){
  x = 400;
  y = 400;
  dth = (Math.random()*2)*Math.PI;
  spd = (Math.random()*10)+1;
  size = 10;

     
    
  }
  public void move(){
  x += Math.cos(dth)*spd;
  y += Math.sin(dth)*spd;
    }
  public void show(){
    noStroke();
    fill(200,300,100);
   ellipse((float)x,(float)y,size,size);
   
   
    
    
  }
  public void center(){
    if (Math.abs(x - 450)  > 450){
     x = 400;
    y = 400;
    dth = 0;
    spd = 0;
    size = 0;
    
    
    }else if (Math.abs(y - 450)  > 450){
     x = 400;
    y = 400;
    dth = 0;
    spd = 0;
    size = 0;
    
    
    }

    dth = (Math.random()*2)*Math.PI;
    spd = (Math.random()*10)+1;
    size = size;
      
    
    
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
  spd = (Math.random()*5)+1;
  size = 50;

     
    
  }
  public void move(){
  x += Math.cos(dth)*spd;
  y += Math.sin(dth)*spd;
    }
  
  public void show(){
    fill(225,225,225);
  noStroke();
   ellipse((float)x,(float)y,size,size);
   
    
    
  }
  public void center(){
    if (Math.abs(x - 400)  > 400){
  x = 400;
  y = 400;
      dth = (Math.random()*2)*Math.PI;
      spd = (Math.random()*10)+1;
      size = 50;
      
    }else if (Math.abs(y - 400)  > 400){
  x = 400;
  y = 400;
    dth = (Math.random()*2)*Math.PI;
    spd = (Math.random()*5)+1;
    size = 50;
    }
    
    
    
  }
}
class justParticle implements Particle
{
  double x , y , spd , dth;
  int  size;

  justParticle(){
  
   x = 400;
  y = 400;
  dth = (Math.random()*2)*Math.PI;
  spd = (Math.random()*5)+1;
  size = 5;

     
    
  }
  public void move(){
  x += Math.cos(dth)*spd;
  y += Math.sin(dth)*spd;
    }
  
  public void show(){
    fill(225,225,225);
  noStroke();
   ellipse((float)x,(float)y,size,size);
   
    
    
  }
  public void center(){
    if (Math.abs(x - 400)  > 400){
  x = 400;
  y = 400;
      dth = (Math.random()*2)*Math.PI;
      spd = (Math.random()*10)+1;
      size = 5;
      
    }else if (Math.abs(y - 400)  > 400){
  x = 400;
  y = 400;
    dth = (Math.random()*2)*Math.PI;
    spd = (Math.random()*5)+1;
    size = 5;
    }
    
    
    
  }
}
