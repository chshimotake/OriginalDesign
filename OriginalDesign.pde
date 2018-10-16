int centerY=height/2;
int centerX=width/2;
int zoomCount=0;
void setup()
{
  size(300, 300);
  frameRate(100);
}
void draw()
{
	drawZoom();
}
void drawZoom()
{
	switch(zoomCount)
	{
		case 0 :
			fill(255, 0, 0);
			rect(0, 0, 300, 300);
			fill(0, 255, 0);
			rect(centerX, centerY, 200, 200);
			fill(0, 0, 255);
			rect(centerX+50, centerY+50, 100, 100);
		break;
		case 1 :	
			fill(0, 255, 0);
			rect(0, 0, 300, 300);
			fill(0, 0, 255);
			rect(centerX, centerY, 200, 200);
			fill(255, 0, 0);
			rect(centerX+50, centerY+50, 100, 100);
		break;
		case 2:
			fill(0, 0, 255);
			rect(0, 0, 300, 300);
			fill(255, 0, 0);
			rect(centerX, centerY, 200, 200);
			fill(0, 255, 0);
			rect(centerX+50, centerY+50, 100, 100);
		break;
	}
	zoomCount++;
	zoomCount%=3;
}
