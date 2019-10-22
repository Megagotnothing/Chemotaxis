 //declare bacteria variables here   
 void setup()   
 {     
 	size(500,500);
 	frameRate(30);
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	loop();
 	//move and show the bacteria
 	Bacteria stupid = new Bacteria(250,250);
 	background(255, 10);
 	stupid.move();   
 	stupid.show();

  }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX,myY;
 	//int[] col = new int[3];

 	Bacteria(int x,int y)
 	{
		myX = x;
		myY = y;
		//col[0] = (int)(Math.random() * 255);
		//col[1] = (int)(Math.random() * 255);
		//col[2] = (int)(Math.random() * 255);
	}	

	void move()
	 {
	 	myX = myX + (int)(Math.random()*25);
	 	myY = myY + (int)(Math.random()*25);
	 }

	void show()
	{

	 	ellipse(myX, myY, 50, 50);
 	}
 }    