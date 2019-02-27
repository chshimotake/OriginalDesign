abstract class Sprite
{
	protected int[] xVert;
	protected int[] yVert;
	protected int vertices;
	protected double myCenterX;
	protected double myCenterY;
	protected int xChange;
	protected int yChange;
	protected int myColor;
	abstract public void moveX(int x);
	abstract public int getX();
	abstract public void setX(int x);
	abstract public void moveY(int y);
	abstract public int getY();
	abstract public void setY(int y);
	abstract public void setChangeX(int x);
	abstract public void setChangeY(int y);
	public void move()
	{
		myCenterX+=xChange;
		myCenterY+=yChange;
		if(xChange>0)
		{
			xChange--;
		}
		if(xChange<0)
		{
			xChange++;
		}
		if(yChange>0)
		{
			yChange--;
		}
		if(yChange<0)
		{
			yChange++;
		}
		if(myCenterY<height-100)
		{
			myCenterY+=2;
		}
	}
	public void show()
	{
		fill(myColor);
		stroke(myColor);
		println("fill");
		translate((float)myCenterX,(float)myCenterY);
		beginShape();
		for (int nI = 0; nI < vertices; nI++)
		{
		  vertex(xVert[nI], yVert[nI]);
		}
		endShape(CLOSE);
		noFill();
		translate(-1*(float)myCenterX, -1*(float)myCenterY);
	}

}