/// @description Insert description here
// You can write your code in this editor
if (global.pause) exit;

		
if (place_meeting(x,y+1,oPlayer))
	{
		with(oPlayer)
		{
			y+=1;
		}
	}
		
if (place_meeting(x+1,y,oPlayer))
	{
		with(oPlayer)
		{
			x+=1;
		}
	}
		
if (place_meeting(x-1,y,oPlayer))
	{
		with(oPlayer)
		{
			x-=1;
		}
	}
		
//if (place_meeting(x,y-1,oPlayer))
//	{
//		with(oPlayer)
//		{
//			vsp = vsp + other.vsp;
//			hsp = hsp + other.hsp;
//		}
//	}

if(moved < moving_range && moving_backwards == false)
{
		if (place_meeting(x,y-1,oPlayer) && movingx)
		{
			with(oPlayer)
			{
				x+=other.hsp
			}
		}
		
		if (place_meeting(x,y-1,oPlayer) && movingy)
		{
			with(oPlayer)
			{
				y+=other.vsp
			}
		}
	
		if(movingx == true)
		{
			x += hsp;	

		}

		if(movingy == true)
		{		
			y += vsp;	
		}
	
		moved += 1;
	
}


if(moving_backwards == true && moved > 0)
{
		if (place_meeting(x,y-1,oPlayer) && movingx)
		{
			with(oPlayer)
			{
				x+=other.hsp
			}
		}
		
		if (place_meeting(x,y-1,oPlayer) && movingy)
		{
			with(oPlayer)
			{
				y+=other.vsp
			}
		}
		

		if(movingx == true)
		{
			x += hsp;	
		}

		if(movingy == true)
		{
			
			y += vsp;	
		}
	
		moved -= 1;
	
}

if(moved == moving_range)
{
	moving_backwards = true;
	hsp = -hsp;
	vsp = -vsp;
}

if(moved == 0)
{
	moving_backwards = false;
	hsp = -hsp;
	vsp = -vsp;
}
