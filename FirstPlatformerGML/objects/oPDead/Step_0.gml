if (global.pause) exit;
if(done == 0)
{
	vsp = vsp + grv;
	

	// horizontal col
	if (place_meeting(x+hsp,y,oWall))
	{
		while(!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
	
		hsp = 0;
	}

	x = x + hsp; // x is a coordinate on X axis

	// vertical col
	if (place_meeting(x,y+vsp,oWall))
	{
		if(vsp > 0) 
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
	
		vsp = 0;
	}

	y = y + vsp; // x is a coordinate on X axis
}