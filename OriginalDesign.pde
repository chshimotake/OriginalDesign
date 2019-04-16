MainChara mSprite;
int centerY=height/2;
int centerX=width/2;
int wakright=0;
int wakleft=0;
int wakrcount=0;
int waklcount=0;
int jumpcount=0;
boolean waright=true;
boolean waleft=false;
PImage[] walkLeft=new PImage[4];
PImage[] walkRight=new PImage[4];
public void setup()
{
	mSprite=new MainChara();
	background(0,0,0);
	size(1000, 500);
	frameRate(60);
	walkLeft[0]=loadImage("Spriteleft1.png");
	walkLeft[1]=loadImage("Spriteleft2.png");
	walkLeft[2]=loadImage("Spriteleft3.png");
	walkLeft[3]=loadImage("Spriteleft4.png");
	walkRight[0]=loadImage("Spriteright1.png");
	walkRight[1]=loadImage("Spriteright2.png");
	walkRight[2]=loadImage("Spriteright3.png");
	walkRight[3]=loadImage("Spriteright4.png");
}
public void show()
{
	drawZoom();
}
void drawZoom()
{
	mSprite.show();
	testRect();
	if(mSprite.up==false&&mSprite.getY()>=400)
	{
		if(waright)
		{
			walkCount();
			image(walkRight[wakright], mSprite.getX()+15, mSprite.getY()+25,50,75);
		}
		if(waleft)
		{
			walkCount();
			image(walkLeft[wakleft], mSprite.getX()+15, mSprite.getY()+25,50,75);
		}
	}else if(mSprite.up==true)
	{
		if(waright)
		{
			
			wakright=1;
			image(walkRight[1], mSprite.getX()+15, mSprite.getY()+25,50,75);
		}
		if(waleft)
		{
			wakleft=1;
			image(walkLeft[1], mSprite.getX()+15, mSprite.getY()+25,50,75);
		}
	}
}
public void draw()
{
	backScreen();
	mSprite.move();
	upCount();
	show();
}
public void keyPressed()
{
	switch(key)
	{
		case 'd':
			//if(mSprite.getX()<400)
			//{
				mSprite.moveRight();
				waright=true;
				waleft=false;
				//wakright++;
				wakrcount++; //hewwos again :3
				println("wakrcount: "+wakrcount);
				if(wakrcount>20)
				{
					wakrcount=0;
				}
				wakleft=0;
			// }
			// if(mSprite.getX()>=900)
			// {
			// 	mSprite.setX(900);
			// 	mSprite.setChangeX(0);
			// }
		break;
		case 'a':
			mSprite.moveLeft();
			waright=false;
			waleft=true;
			waklcount++;
			println("waklcount: "+waklcount);
			if(waklcount>20)
			{
				waklcount=0;
			}
			wakright=0;
			// if(mSprite.getX()<=0)
			// {
			// 	mSprite.setX(0);
			// 	mSprite.setChangeX(0);
			// }
		break;
		case 'w':
			mSprite.moveUp();
			// wakright=1;
			// if(waright)
			// {
			// 	image(walkRight[1], mSprite.getX()+15, mSprite.getY()+25,50,75);
			// }
			// wakleft=1;
			// if(waleft)
			// {
			// 	image(walkLeft[1], mSprite.getX()+15, mSprite.getY()+25,50,75);
			// }
			// if(mSprite.getY()>0)
			// {
			// 	mSprite.moveY(-10);
			// }
			// if(mSprite.getY()<=0)
			// {
			// 	mSprite.setY(0);
			// 	mSprite.setChangeY(0);
			// }
		break;
		case 's':
			mSprite.moveDown();
			// if(mSprite.getY()<400)
			// {
			// 	mSprite.moveY(10);
			// }
			// if(mSprite.getY()>=400)
			// {
			// 	mSprite.setY(height-100);
			// 	mSprite.setChangeY(0);
			// }
		break;
	}
}
public void keyReleased()
{
	switch(key)
	{
		case 'd':
			mSprite.right=false;
			wakrcount=0;
		break;
		case 'a':
			mSprite.left=false;
			waklcount=0;
		break;
	}	
}
public void upCount()
{
	if(mSprite.up==true)
	{
		if(jumpcount==35)
		{
			mSprite.up=false;
			jumpcount=0;
		}
		if(jumpcount<35)
		{
			jumpcount++;
		}
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
public void walkCount()
{
	if(mSprite.up==false)
	{
		if(wakrcount>=0&&wakrcount<=5&&waright)
		{
			wakright=0;
		}
		if(wakrcount>=6&&wakrcount<=10&&waright)
		{
			wakright=1;
		}
		if(wakrcount>=11&&wakrcount<=15&&waright)
		{
			wakright=2;
		}
		if(wakrcount>=16&&wakrcount<=20&&waright)
		{
			wakright=3;
		}

		if(waklcount>=0&&waklcount<=5&&waleft)
		{
			wakleft=0;
		}
		if(waklcount>=6&&waklcount<=10&&waleft)
		{
			wakleft=1;
		}
		if(waklcount>=11&&waklcount<=15&&waleft)
		{
			wakleft=2;
		}
		if(waklcount>=16&&waklcount<=20&&waleft)
		{
			wakleft=3;
		}
	}else if(mSprite.up==true)
	{
		if(waleft)
		{
			wakleft=1;
		}
		if(waright)
		{
			wakright=1;
		}
	}
}
/*float endX, endY;
float centerX=250, centerY=250, rad=150;
float leng=150, wid=150;
float base=150, mid=75*sqrt(3);
float startX=250, startY=250, circCount=0;
int randY;
boolean circ=true, rect=false,tri=false,rain=false;
void setup()
{
	background(255,0,0);
	size(500, 500);
	frameRate(1000);
}
void draw()
{
	// fill(255,0,0);
	// rect(0,0,500,500);
	// if(circCount%30==0)
	// {
	// 	rectBack();
	// }
	endRand();
	lineDraw();
}
void lineDraw()
{
	strokeWeight(1);
	if(rain==false)
	{
		stroke(0,0,0);
	}
	if(rain)
	{
		int a=(int)random(-1,256);
		int b=(int)random(-1,256);
		int c=(int)random(-1,256);
		stroke(a,b,c);
	}
	line(startX,startY,endX,endY);
	startX=endX;
	startY=endY;
	circCount++;
}
void endRand()
{
	if(circ)
	{
		endX=(float)random(centerX-rad, centerX+rad);
		randY=(int)random(1,3);
		if(randY==1)
		{
			endY=(sqrt(sq(rad)-sq(endX)+(2*centerX*endX)-sq(centerX)))+centerY;
		}else if(randY==2)
		{
			endY=(((sqrt(sq(rad)-sq(endX)+(2*centerX*endX)-sq(centerX)))*-1)+centerY);
		}
	}
	if(rect)
	{
		endX=(float)random(centerX-leng-10, centerX+leng+10);
		if(endX<=centerX-leng||endX>=centerX+leng)
		{
			if(endX<=centerX-leng)
			{
				endX=centerX-leng;
			}
			if(endX>=centerX+leng)
			{
				endX=centerX+leng;
			}
			endY=(float)random(centerY-wid, centerY+wid);
		}else if(endX>centerX-leng||endX<centerX+leng)
		{
			randY=(int)random(1,3);
			if(randY==1)
			{
				endY=centerY-wid;
			}
			if(randY==2)
			{
				endY=centerY+wid;
			}
		}
	}
	if(tri)
	{
		endX=(float)random(centerX-base, centerX+base);
		if(endX<=centerX)
		{
			endY=endX*-1+500;
		}
		if(endX>=centerX)
		{
			endY=endX+500;
		}
		if(endX<=centerX-base||endX>=centerX+base)
		{
			if(endX<=centerX-base)
			{
				endX=centerX-base;
			}
			if(endX>=centerX+base)
			{
				endX=centerX+base;
			}
		}
	}
}
void rectBack()
{
	fill(255,0,0);
	rect(0, 0, 500, 500);
	noFill();
}
void keyPressed()
{
	switch(key)
	{
		case ' ':
			rectBack();
		break;
		case 'd':
			centerX+=5;
		break;
		case 'a':
			centerX-=5;
		break;
		case 's':
			centerY+=5;
		break;
		case 'w':
			centerY-=5;
		break;
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			if(circ)
			{
				rad=Integer.parseInt(Character.toString(key))*30;
			}
			if(rect)
			{
				leng=Integer.parseInt(Character.toString(key))*30;
				wid=Integer.parseInt(Character.toString(key))*30;
			}
		break;
		case 'f':
			rain=!rain;
		break;
		case 'q':
			exit();
		break;
		case 'e':
			circ=true;
			rect=false;
			tri=false;
		break;
		case 'r':
			circ=false;
			rect=true;
			tri=false;
		break;
		case 't':
			circ=false;
			rect=false;
			tri=true;
		break;
	}
}*/