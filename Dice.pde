
void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
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
			fill(255);
			ellipse(myX + 32,myY + 32,35,35);
		}
		else if((Math.random() * 6) < 2)
		{
			fill(255);
			ellipse(myX + 27, myY + 37,30,30);
			ellipse(myX + 37, myY + 27,30,30);
		}
		// else if((Math.random() * 6) < 3)
		// {
		// 	ellipse();
		// 	ellipse();
		// }
		// else if((Math.random() * 6) < 4)
		// {
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();			
		// }
		// else if((Math.random() * 6) < 5)
		// {
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();			
		// }
		// else 
		// {
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();
		// 	ellipse();
		// }

		
	}
	void show()
	{
		//your code here
		fill(0);
		rect(myX,myY,65,65);
	}
}
