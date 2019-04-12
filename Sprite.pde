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
	protected int grav = 1;
	protected int gravcount = 0;
	protected int walk = 0;
	protected int walkcount = 0;
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
		if(myCenterX<=900&&right)
		{
			walk=8;
		}
		if(myCenterX>=0&&left)
		{
			walk=-8;
		}
		if(myCenterY>=0&&up)
		{
			grav=-5; //hewwo :3 -Jodie :33333333333333;
		}
		if(myCenterY<=400&&myCenterY>=0&&down)
		{
			myCenterY+=10;
		}
		if(myCenterX<=900&&myCenterX>=0)
			myCenterX+=walk;
			walkcount++;
			if(walkcount%15==0)
			{
				if(walk>0)
				{
					walk-=4;
				}
				if(walk<0)
				{
					walk+=4;
				}
			}
		if(myCenterY>=0)
		{
			myCenterY+=grav;
			gravcount++;
			if(gravcount%15==0)
			{
				grav+=2;
			}
		}
		if(myCenterY>=400)
		{
			myCenterY=400;
			grav=0;
		}
		if(myCenterY<=0)
		{
			myCenterY=0;
			grav=1;
		}
	}
	public void show()
	{
		fill(myColor);
		stroke(myColor);translate((float)myCenterX,(float)myCenterY);
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