MainChara mSprite;
int centerY=height/2;
int centerX=width/2;
public void setup()
{
	mSprite=new MainChara();
	background(0,0,0);
	size(1000, 500);
	frameRate(60);
	println("setup");
}
public void show()
{
	drawZoom();
}
void drawZoom()
{
	mSprite.show();
	println("show");
	testRect();
}
public void draw()
{
	backScreen();
	mSprite.move();
	println("draw");
	show();
}
public void keyPressed()
{
	switch(key)
	{
		case 'd':
			//if(mSprite.getX()<400)
			//{
				mSprite.moveX(5);
			//}
			if(mSprite.getX()>=900)
			{
				mSprite.setX(900);
				mSprite.setChangeX(0);
			}
		break;
		case 'a':
			mSprite.moveX(-5);
			if(mSprite.getX()<=0)
			{
				mSprite.setX(0);
				mSprite.setChangeX(0);
			}
		break;
		case 'w':
			mSprite.moveY(-10);
			if(mSprite.getY()>0)
			{
				mSprite.moveY(-10);
			}
			if(mSprite.getY()<=0)
			{
				mSprite.setY(0);
				mSprite.setChangeY(0);
			}
		break;
		case 's':
			if(mSprite.getY()<400)
			{
				mSprite.moveY(10);
			}
			if(mSprite.getY()>=400)
			{
				mSprite.setY(height-100);
				mSprite.setChangeY(0);
			}
		break;
	}
}
public void testRect()
{
	fill(85,170,255);
	rect(mSprite.getX(), mSprite.getY(), 100, 100);
	noFill();
}
public void backScreen()
{
	fill(100,100,100);
	rect(0, 0, width, height);
	noFill();
}