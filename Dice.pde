Die one;
Die two;
void setup()
{
	noLoop();
	size(400, 400);
	one = new Die(100, 100);
	two = new Die(300, 100);
}
void draw()
{
	background(255, 255, 255);
	two.roll();
	one.roll();
	two.show();
	one.show();
	fill(0);
	text(one.numberDots + two.numberDots, 50, 50);
}
void mouseClicked()
{
	redraw();
}
class Die
{
	int numberDots, myX, myY;
	Die(int x, int y)
	{
		roll();
		myX = x;
		myY = y;
	}
	void roll()
	{
		numberDots = (int)((Math.random()*6)+1);
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 75, 75);
		if (numberDots == 1)
		{
			ellipse(myX + 37, myY + 37, 10, 10);
		}
		else if (numberDots == 2)
		{
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}
		else if (numberDots == 3)
		{
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
			ellipse(myX +55, myY + 55, 10, 10);
		}
		else if (numberDots == 4)
		{
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 65, myY + 65, 10, 10);
			ellipse(myX + 15, myY + 65, 10, 10);
			ellipse(myX + 65, myY + 15, 10, 10);
		}
		else if (numberDots == 5)
		{
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 65, myY + 65, 10, 10);
			ellipse(myX + 15, myY + 65, 10, 10);
			ellipse(myX + 65, myY + 15, 10, 10);
			ellipse(myX + 37, myY + 37, 10, 10);
		}
		else 
		{
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 65, myY + 65, 10, 10);
			ellipse(myX + 15, myY + 65, 10, 10);
			ellipse(myX + 65, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 37, 10, 10);
			ellipse(myX + 65, myY + 37, 10, 10);
		}
	}
}      
