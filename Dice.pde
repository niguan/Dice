
void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	background(0,142,0);
	//your code here
	for(int x = 50; x < 400; x= x + 125)
	{
		for(int y = 15; y < 380; y= y + 125)
		{
			Die bob = new Die(x,y);
			bob.show();
			bob.roll();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		//variable initializations here
	}
	void roll()
	{
		//your code here
		// Getting it to show only "n" dots
		if ((Math.random() * 6) + 1 < 2)
		{
			fill(255,0,0);
			ellipse(myX + 35,myY + 35,25,25);
		}
		else if((Math.random() * 6) < 3)
		{
			fill(0);
			ellipse(myX + 25, myY + 45,18,18);
			ellipse(myX + 45, myY + 25,18,18);
		}
		else if((Math.random() * 6) < 4)
		{
			fill(0);
			ellipse(myX + 20, myY + 50,15,15);
			ellipse(myX + 35, myY + 35,15,15);
			ellipse(myX + 50, myY + 20,15,15);
		}
		else if((Math.random() * 6) < 5)
		{
			fill(0);
			ellipse(myX + 22, myY + 48,15,15);
			ellipse(myX + 22, myY + 22,15,15);
			ellipse(myX + 48, myY + 48,15,15);
			ellipse(myX + 48, myY + 22,15,15);
		}
		else if((Math.random() * 6) < 6)
		{
			fill(0);
			ellipse(myX + 20, myY + 52,15,15);
			ellipse(myX + 20, myY + 20,15,15);
			ellipse(myX + 35, myY + 36,15,15);
			ellipse(myX + 50, myY + 52,15,15);
			ellipse(myX + 50, myY + 20,15,15);
		}
		else 	
		{
			fill(0);
			ellipse(myX + 20, myY + 52,15,15);
			ellipse(myX + 20, myY + 20,15,15);
			ellipse(myX + 35, myY + 36,15,15);
			ellipse(myX + 50, myY + 52,15,15);
			ellipse(myX + 50, myY + 20,15,15);
			ellipse(myX + 50, myY + 20,15,15);
		}

		
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,70,70,20);
	}
}
