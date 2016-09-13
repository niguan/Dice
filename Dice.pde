
void setup()
{
	size(400,400);
	noLoop();
	textAlign(CENTER);
}
void draw()
{
	//your code here
	background(0,142,0);
	int sum = 0;
	for(int x = 40; x < 400; x= x + 125)
	{
		for(int y = 15; y < 380; y= y + 125)
		{
			Die bob = new Die(x,y);
			bob.show();
			bob.roll();
			sum = sum + bob.dots;
		}
	}
	textSize(16);
	fill(0);
	text("Sum: " + sum, 200, 380);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dots;
	int myX, myY;
	//variable declarations here
	Die(int x, int y) 
	{
		//variable initializations here
		dots = (int)((Math.random()*6)+1);
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		if (dots==1)
		{
			fill(255,0,0);
			ellipse(myX + 35,myY + 35,25,25);
		}
		else if(dots==2)
		{
			fill(0);
			ellipse(myX + 25, myY + 45,18,18);
			ellipse(myX + 45, myY + 25,18,18);
		}
		else if(dots==3)
		{
			fill(0);
			ellipse(myX + 20, myY + 50,15,15);
			ellipse(myX + 35, myY + 35,15,15);
			ellipse(myX + 50, myY + 20,15,15);
		}
		else if(dots==4)
		{
			fill(0);
			ellipse(myX + 22, myY + 48,15,15);
			ellipse(myX + 22, myY + 22,15,15);
			ellipse(myX + 48, myY + 48,15,15);
			ellipse(myX + 48, myY + 22,15,15);
		}
		else if(dots==5)
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
			ellipse(myX + 22, myY + 54,15,15);
			ellipse(myX + 22, myY + 36,15,15);
			ellipse(myX + 22, myY + 18,15,15);
			ellipse(myX + 48, myY + 54,15,15);
			ellipse(myX + 48, myY + 36,15,15);
			ellipse(myX + 48, myY + 18,15,15);
		}

		
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,70,70,20);
	}
}
