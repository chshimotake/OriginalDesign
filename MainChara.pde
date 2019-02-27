class MainChara extends Sprite
{
	public MainChara()
	{
		int[] xVert=new int[]{-50,50,50,-50};
		int[] yVert=new int[]{50,50,-50,-50};
		int vertices=4;
		double myCenterX=10;
		double myCenterY=10;
		int xChange=0;
		int yChange=0;
		int myColor=color(255,255,255);
	}
	void moveX(int x){xChange+=x;}
	int getX(){return (int)myCenterX;}
	void setX(int x)
	{
		myCenterX=x;
	}
	void moveY(int y)
	{
		if(y>0)
		{
			yChange+=y;
		}else if(y<0)
		{
			yChange+=y;
		}
	}
	int getY(){return (int)myCenterY;}
	void setY(int y)
	{
		myCenterY=y;
	}
	void setChangeX(int x)
	{
		xChange=x;
	}
	void setChangeY(int y)
	{
		yChange=y;
	}
}