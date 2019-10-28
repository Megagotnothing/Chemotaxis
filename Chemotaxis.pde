 //declare bacteria variables here  
 Bacteria[] stupid;
 void setup()   
 {     
   size(800,500);
   frameRate(30);
   stupid = new Bacteria[10];
   for(int i = 0; i < stupid.length; i++)
   {
     stupid[i] = new Bacteria();
   }
   
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   //move and show the bacteria
   //Bacteria stupid = new Bacteria();
   background(255, 10);
   for(int i = 0; i < stupid.length; i++)
   {
     stupid[i].move();  
     stupid[i].show();
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
   //lots of java!
   //int[] col = new int[3];
   int myX,myY,col, infected;
   Bacteria()
   {
   	infected = 0;
    if((int)(Math.random())> 0)
    {
    	infected = 1;
    }
    myX = (int)(Math.random()*500 + 100);
    myY = (int)(Math.random()*500);
    col = color(255);
    if(infected > 0)
    {
    	col = color(125);
    }

  }  

  void move()
   {
     myX += (int)(Math.random()*20) - 10;
     myY += (int)(Math.random()*20) - 10;

     for(int i = 0; i < stupid.length; i++)
     {
       for(int j = 0; j < stupid.length; j++)
       {
       
         if((dist(stupid[i].myX,stupid[i].myY, stupid[j].myX,stupid[j].myY) < 40 && i != j) && (stupid[i].infected > 0 || stupid[j].infected > 0))
         {
           stupid[i].col = color(0);
           stupid[j].col = color(0);

           
         }
       }
     }
   }

  void show()
  {
    fill(col); 
    ellipse(myX, myY, 50, 50);

   }

 }    

