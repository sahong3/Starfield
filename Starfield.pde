firework [] fire = new firework[150];
boolean press = false;
int count = 1;

void setup(){
  size(500,500);
  background(0);
  noStroke();


  for(int i = 0; i < fire.length; i++)
    fire [i] = new firework();
    fire [0] = new rocket();

}

void draw(){
  background(0);
  fill(0);
  rect(0,0,500,500);
  rect(0,0,600,600);
  for(int i = 0; i < fire.length; i++){
     fire[i].move();
     fire[i].show();

    if (press==true)
      i = 0;
     
    
  }  
}

void mousePressed(){
  count +=1;
  if (count%2 == 0)
    press = true;
   else
     press = false;

}


class firework {
  double myX, myY, mySpeed, myDirection;
  public int mycolor;
  firework(){
   myX = 250;
   myY = 250;
   mycolor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); 
   mySpeed = (int)(Math.random()*10);
   myDirection = (Math.random()*2*Math.PI);
 
  } 
  void move(){
    myX += (Math.cos(myDirection)*mySpeed);
    myY += (Math.sin(myDirection)*mySpeed);
 
    
  }
  void show(){
   fill(mycolor, 90);
   ellipse((int)myX,(int)myY, 13,13);

  }

}

class rocket extends firework{
  rocket(){
   myX = 225;
   myY = 225;
   mySpeed = 1;
 
  }
  void move() {
     
      myY= myY +2 ;
    }
  void show(){
    fill(255);
    rect((int)myX,(int)myY,25,50);
    fill(255,0,0);
    triangle((int)myX - 5,(int)myY + 50, (int)myX + 30,(int)myY + 50, (int)myX +12 ,(int)myY +75 );
  }
}

