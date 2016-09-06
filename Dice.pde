
Die bob = new Die(200,200);
void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	bob.show();

	//your code here
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
		if ((Math.random() * 6) < 1)
		{
			fill(255);
			ellipse(200,200,25,25);
		}
		else if((Math.random() * 6) < 2)
		{

		}
		else if((Math.random() * 6) < 3)
		{

		}
		else if((Math.random() * 6) < 4)
		{
			
		}
		else if((Math.random() * 6) < 5)
		else 
		{

		}

		
	}
	void show()
	{
		//your code here
		fill(0);
		rect(175,175,50,50);
	}
}
