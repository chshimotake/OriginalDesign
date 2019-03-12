abstract class Sprite
{
	protected int[] xVert;
	protected int[] yVert;
	protected int vertices;
	protected double myCenterX;
	protected double myCenterY;
	protected boolean right = false;
	protected boolean left = false;
	protected boolean up = false;
	protected boolean down = false;
	// protected int xChange;
	// protected int yChange;
	protected int myColor;
	abstract public void moveRight();
	abstract public void moveLeft();
	abstract public int getX();
	abstract public void setX(int x);
	abstract public void moveUp();
	abstract public void moveDown();
	abstract public int getY();
	abstract public void setY(int y);
	// abstract public void setChangeX(int x);
	// abstract public void setChangeY(int y);
	public void move()
	{
		if(myCenterX<=900&&myCenterX>=0&&right)
		{
			myCenterX+=10;
		}
		if(myCenterX<=900&&myCenterX>=0&&left)
		{
			myCenterX-=10;
		}
		if(myCenterY<=400&&myCenterY>=0&&up)
		{
			myCenterY-=10;
		}
		if(myCenterY<=400&&myCenterY>=0&&down)
		{
			myCenterY+=10;
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