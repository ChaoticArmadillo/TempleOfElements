/// @description Insert description here
// You can write your code in this editor
if (global.pause) exit;
if(hp<=0) 
{
	instance_destroy(myeye,true);
	instance_destroy();
}


y = ystart + sin(get_timer()/500000) * 5;

if(moved < moving_range && moving_backwards == false)
{

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