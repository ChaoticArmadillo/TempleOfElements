/// @description Insert description here
// You can write your code in this editor
flash = 3;
hp--;
with(other)
{
	instance_destroy();	
}
if(hp==0)
{
	with (oShield) instance_destroy();
	with (oGun) instance_destroy();
	instance_change(oPDead,true);
	image_yscale = 2;
	direction = point_direction(other.x,other.y,x,y);
	hsp = lengthdir_x(6, direction);
	vsp = lengthdir_y(4, direction) - 2;

	if (sign(hsp) != 0) image_xscale = -(sign(hsp)) * 2;
}
else
{
		direction = point_direction(other.x,other.y,x,y);
		hsp = lengthdir_x(6, direction);
		knockback_force_app = 20;
//knockback code here
	if(knockback_force_app > 0)
	{
		hsp = hsp + sign(hsp)*knockback_force_app;
	
		if (place_meeting(x+hsp,y,oWall))
		{
			while(!place_meeting(x+sign(hsp),y,oWall))
			{
				x = x + sign(hsp);
			}
	
			hsp = 0;
		}

		x = x + hsp; // x is a coordinate on X axis

		knockback_force_app *=.9;
	}

}