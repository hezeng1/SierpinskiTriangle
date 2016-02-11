int num = 5;
public void setup()
{
	size(600, 600);
	
}
public void draw()
{
	background((int)Math.random()*5);
	sierpinski(10, 585, num);
	num = num + 1;
}

public void mouseClicked()
{

}

public void sierpinski(int x, int y, int len) 
{
	if(len>20)
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
	else 
	{
		fill(255);
		noStroke();
		triangle(x, y, x + len/2, y + len, x - len/2, y + len);
	}			
}