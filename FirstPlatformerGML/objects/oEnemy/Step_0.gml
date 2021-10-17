if (global.pause) exit;
vsp = vsp + grv;

//don't walk off edges
if(grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall))
{
	hsp = -hsp;	
}

image_xscale = -(size);
image_yscale = size;

// horizontal col
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	
	hsp = -hsp;
}

x = x + hsp; // x is a coordinate on X axis

// vertical col
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp; // x is a coordinate on X axis

//animation

if (!place_meeting(x,y+1,oWall))
{
	grounded = false;
	sprite_index = sEnemyA;
	image_speed = 0;
	if(vsp > 0) image_index = 1; else  image_index = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
	}
}
if (hsp != 0) image_xscale = sign(hsp) * -(size);

//switching the idle sprite using states(like a moron)
//if(sign(hsp) < 0 )
//{
//	state = 1;
//}
//if(sign(hsp) > 0 )
//{
//	state = 2;
//}

//if(state == 1)
//{
//	image_xscale = -size;
//}

//if(state == 2)
//{
//	image_xscale = size;
//}






