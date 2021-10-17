/// @description Insert description here
// You can write your code in this edito
if (global.pause) exit;
x = owner.x;
y = owner.y + 2;

//image_xscale = abs(owner.image_xscale);
//image_yscale = abs(owner.image_yscale);

if(instance_exists(oPlayer))
{
	//image_xscale = -2;
	if(oPlayer.x < x) image_yscale = -image_yscale;
	if (point_distance(oPlayer.x, oPlayer.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		image_xscale = -2;
		countdown--;
		pointed = true;
		
		if (countdown <= 0)
		{
			countdown = countdownrate;
			//bullet code
			with (instance_create_layer(x,y,"Bullets", oBulletEnE))
			{
				spd = 10;
				direction = other.image_angle + random_range(-3, 3);
				image_angle = direction;
			}
		}
	}
}
