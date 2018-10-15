int centerY=height/2;
int centerX=width/2;

void setup()
{
  size(80, 80);
  frameRate(1);
}
void draw()
{
  drawSpiral();
}
int up=35;
int upleft=30;
int left=25;
int downleft=20;
int down=15;
int downright=10;
int right=5;
int upright=0;
void drawSpiral()
{
	for(int i=1;i>0;i++)
	{
		fill(255, 255, 255);
		ellipse(up, centerY, 5, 5);
		ellipse(centerX-upleft,centerY-upleft, 10, 10);
		ellipse(centerX-left, centerY, 10, 10);
		ellipse(centerX-downleft, centerY+downleft, 10, 10);
		ellipse(centerX, centerY+down, 10, 10);
		ellipse(centerX+downright, centerY+downright, 10, 10);
		ellipse(centerX+right, centerY, 10, 10);
		ellipse(centerX+upright, centerY+upright, 10, 10);
		up+=5;
		if(up==40)
		{
			up=0;
		}
		upleft+=5;
		if(upleft==40)
		{
			upleft=0;
		}
		left+=5;
		if(left==40)
		{
			left=0;
		}
		downleft+=5;
		if(downleft==40)
		{
			downleft=0;
		}
		down+=5;
		if(down==40)
		{
			down=0;
		}
		downright+=5;
		if(downright==40)
		{
			downright=0;
		}
		right+=5;
		if(right==40)
		{
			right=0;
		}
		upright+=5;
		if(upright==40)
		{
			upright=0;
		}
	}
}


