 //declare bacteria variables here  
 Bacteria[] stupid;
 void setup()   
 {     
   size(800,800);
   frameRate(30);
   stupid = new Bacteria[100];
   for(int i = 0; i < stupid.length; i++)
   {
     stupid[i] = new Bacteria();
   }
   
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   
   background(255, 10);
   for(int i = 0; i < stupid.length; i++)
   {
     stupid[i].move();  
     stupid[i].show();
     stupid[i].contagion();
   }
  }  

  void mousePressed()
  {
    for(int i = 0; i < stupid.length; i++)
   {
     stupid[i] = new Bacteria();
   }
  }
 class Bacteria    
 {     
  
   int myX,myY,col, infected;
   double chance;
   Bacteria()
   {
    infected = 0;
    chance = Math.random();
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    col = color(255);
    

  }  

  void move()
   {
     if(myX < 0)
       myX += (int)(Math.random()*20) - 5;
     else if(myX > 800)
       myX -= (int)(Math.random()*20) - 5;
     else if(myY < 0)
       myY += (int)(Math.random()*20) - 5;
     else if(myY > 800)
       myY -= (int)(Math.random()*20) - 5;
     else
       myX += (int)(Math.random()*20) - 10;
       myY += (int)(Math.random()*20) - 10;
     
   }
     

  void show()
  {
    fill(col); 
    ellipse(myX, myY, 25, 25);
   }
  void contagion()
  {
       for(int i = 0; i < stupid.length; i++)
     {
       for(int j = 0; j < stupid.length; j++)
       {
       if(stupid[i].chance > 0.98)
        {
          stupid[i].infected = 1;
          stupid[i].col = color(255,0,0);
        }
         if((dist(stupid[i].myX,stupid[i].myY, stupid[j].myX,stupid[j].myY) < 40 && i != j) && (stupid[i].infected > 0))
         {
           stupid[i].col = color(0);
           stupid[j].col = color(0);
           stupid[j].infected = 1; 
         }
       }
     }
  }
 }