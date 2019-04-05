class MainChara extends Sprite
{
	public MainChara()
	{
		int[] xVert=new int[]{-50,50,50,-50};
		int[] yVert=new int[]{50,50,-50,-50};
		int vertices=4;
		double myCenterX=0;
		double myCenterY=0;
		// int xChange=0;
		// int yChange=0;
		int myColor=color(255,255,255);
	}
	void moveRight()
	{
		// if(myCenterX>0||myCenterX<900)
		// {
			right=true;
			left=false;
		// }
	}
	void moveLeft()
	{
		// if(myCenterX>0||myCenterX<900)
		// {
			right=false;
			left=true;
		// }
	}
	int getX(){return (int)myCenterX;}
	void setX(int x)
	{
		myCenterX=x;
	}
	void moveUp()
	{
		if(myCenterY>=0)
		{
			up=true;
			down=false;
		}else{
			up=false;
		}
	}
	void moveDown()
	{
		if(myCenterY>0||myCenterY<400)
		{
			up=false;
			down=up;
		}
	}
	int getY(){return (int)myCenterY;}
	void setY(int y)
	{
		myCenterY=y;
	}
	// void setChangeX(int x)
	// {
	// 	xChange=x;
	// }
	// void setChangeY(int y)
	// {
	// 	yChange=y;
	// }
}