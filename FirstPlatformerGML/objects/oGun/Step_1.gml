//begin
if (global.pause) exit;
x = oPlayer.x - 15;
y = oPlayer.y - 15;

image_angle = point_direction (x, y, mouse_x, mouse_y);

firingdelay = firingdelay - 1; 
recoil = max(0, recoil -1);  

switch (oPlayer.element)
{
	case 0: sprite_index = sGun; break;
	case 1: sprite_index = sGunF; break;
	case 2: sprite_index = sGunW; break;
	case 3: sprite_index = sGunE; break;
}

if(mouse_check_button(mb_left)) && (firingdelay < 0) && not(keyboard_check(ord("E")))
{
	audio_play_sound(snShot,5,false);
	if (oPlayer.element == 1)
	{
		firingdelay = 10;
	}
	else
	{
		firingdelay = 30;
	}
	recoil = 4;
	switch (oPlayer.element)
	{
		case 0:
		with (instance_create_layer(x,y,"Bullets", oBullet))
		{
			spd = 13;
			vsp = 0;
			direction = other.image_angle;
			image_angle = direction;
		}
		break;
		
				case 1:
		with (instance_create_layer(x,y,"Bullets", oBulletF))
		{
			spd = 13;
			vsp = 0;
			direction = other.image_angle;
			image_angle = direction;
		}
		break;
		
				case 2:
		with (instance_create_layer(x,y,"Bullets", oBulletW))
		{
			spd = 13;
			vsp = 0;
			direction = other.image_angle;
			image_angle = direction;
		}
		break;
		
				case 3:
		with (instance_create_layer(x,y,"Bullets", oBulletE))
		{
			spd = 13;
			vsp = 0;
			direction = other.image_angle;
			image_angle = direction;
		}
		break;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);


