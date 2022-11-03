firework [] fire = new firework[150];
firework [] fire2 = new firework[150];
void setup(){
  size(500,500);
  noStroke();
  for(int i = 0; i < fire.length; i++)
    fire [i] = new firework();
    
  for(int i = 0; i < fire.length; i++)
    fire2 [i] = new firework();
}

void draw(){
  background(0,0,0,10);
  for(int i = 0; i < fire.length; i++){
   fire[i].explode();
    fire[i].show();
  }
  for(int i = 0; i < fire.length; i++){
   fire2[i].explode();
    fire2[i].show();
  }
    

}

class firework {
  double myX, myY, mySpeed, myDirection;
  firework(){
   myX = 250;
   myY = 250;
   mySpeed = (int)(Math.random()*5);
   myDirection = (Math.random()*13*Math.PI);
  } 
  void explode(){
    myX = (myX +mySpeed) + Math.cos(myDirection);
    myY = (myY + mySpeed)+ Math.sin(myDirection);
  }
  void show(){
    fill(255,255,255,80);
    ellipse((int)myX,(int)myY, 10,10);
  }

}

