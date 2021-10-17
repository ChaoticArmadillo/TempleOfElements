if (global.pause) exit;

if(hascontrol == true)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
var move = key_right - key_left; // -1, 0 , 1

hsp = move * walksp;
vsp = vsp + grv;

image_xscale = 2;
image_yscale = 2;

if(invulnerable > 0)
{
 invulnerable--;	
}
if(element==2)
{
	canjump -= 1;
	if(canjump > 0) && (keyboard_check_pressed(vk_space)) && (jumps > 0)
	{
		if(jumps < 2)
		{
			instance_create_layer(x,y+20, "Player",oJumpEffect)
			vsp = -8;
			jumps-=1;
		}
		else
		{
			vsp = -7;
			jumps -= 1;
		}
	}
}
else
{
	canjump -= 1;
	if(canjump > 0) && (keyboard_check_pressed(vk_space)) && (jumps > 0)
	{
		
			vsp = -7;
			jumps-=2;
	
	}
}
if(keyboard_check_pressed(ord("1")))
{
	element = 0;
}

if(keyboard_check_pressed(ord("2")) && global.isfire == true)
{
	element = 1;
}

if(keyboard_check_pressed(ord("3")) && global.iswind == true)
{
	element = 2;
}

if(keyboard_check_pressed(ord("4")) && global.isearth == true)
{
	element = 3;
}


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
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp; // x is a coordinate on X axis

//animation(lack of jump)
#region //arcana
if(element == 0)
{
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sPlayerA;
		image_speed = 0;
		if(vsp > 0) image_index = 1; else  image_index = 0;
	}
	else
	{
		jumps = jumpmax;
		canjump = 100;
		if (sprite_index == sPlayerA) 
		{
			audio_play_sound(snLanding,5,false);
			repeat(5)
			{
				instance_create_layer(x,bbox_bottom,"Bullets",oDust);
			}
		}
		image_speed = 1;
		if(hsp == 0)
		{
			sprite_index = sPlayer;
		}
		else
		{
			sprite_index = sPlayerR;
		}
	}
	if (hsp != 0) image_xscale = sign(hsp) * 2;

	//switching the idle sprite using states(like a moron)
	if(sign(hsp) < 0 )
	{
		state = 1;
	}
	if(sign(hsp) > 0 )
	{
		state = 2;
	}

	if(state == 1)
	{
		image_xscale = -2;
	}

	if(state == 2)
	{
		image_xscale = 2;
	}

	if(sprite_index == sPlayerR && (image_index == 3 || image_index == 7) ) 
	{
		audio_play_sound(choose(snFoot1, snFoot2, snFoot3, snFoot4),1, false);
	}
}

#endregion
#region // fire
if(element == 1)
{
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sFiresageA;
		image_speed = 0;
		if(vsp > 0) image_index = 1; else  image_index = 0;
	}
	else
	{
		jumps = jumpmax;
		canjump = 100;
		if (sprite_index == sFiresageA) 
		{
			audio_play_sound(snLanding,5,false);
			repeat(5)
			{
				instance_create_layer(x,bbox_bottom,"Bullets",oDust);
			}
		}
		image_speed = 1;
		if(hsp == 0)
		{
			sprite_index = sFiresage;
		}
		else
		{
			sprite_index = sFiresageR;
		}
	}
	if (hsp != 0) image_xscale = sign(hsp) * 2;

	//switching the idle sprite using states(like a moron)
	if(sign(hsp) < 0 )
	{
		state = 1;
	}
	if(sign(hsp) > 0 )
	{
		state = 2;
	}

	if(state == 1)
	{
		image_xscale = -2;
	}

	if(state == 2)
	{
		image_xscale = 2;
	}

	if(sprite_index == sFiresageR && (image_index == 3 || image_index == 7) ) 
	{
		audio_play_sound(choose(snFoot1, snFoot2, snFoot3, snFoot4),1, false);
	}
}
#endregion
#region // wind
if(element == 2)
{
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sWindsageA;
		image_speed = 0;
		if(vsp > 0) image_index = 1; else  image_index = 0;
	}
	else
	{
		jumps = jumpmax;
		canjump = 100;
		if (sprite_index == sWindsageA) 
		{
			audio_play_sound(snLanding,5,false);
			repeat(5)
			{
				instance_create_layer(x,bbox_bottom,"Bullets",oDust);
			}
		}
		image_speed = 1;
		if(hsp == 0)
		{
			sprite_index = sWindsage;
		}
		else
		{
			sprite_index = sWindsageR;
		}
	}
	if (hsp != 0) image_xscale = sign(hsp) * 2;

	//switching the idle sprite using states(like a moron)
	if(sign(hsp) < 0 )
	{
		state = 1;
	}
	if(sign(hsp) > 0 )
	{
		state = 2;
	}

	if(state == 1)
	{
		image_xscale = -2;
	}

	if(state == 2)
	{
		image_xscale = 2;
	}

	if(sprite_index == sWindsageR && (image_index == 3 || image_index == 7) ) 
	{
		audio_play_sound(choose(snFoot1, snFoot2, snFoot3, snFoot4),1, false);
	}
}
#endregion
#region // earth
if(element == 3)
{
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sEarthsageA;
		image_speed = 0;
		if(vsp > 0) image_index = 1; else  image_index = 0;
	}
	else
	{
		jumps = jumpmax;
		canjump = 100;
		if (sprite_index == sEarthsageA) 
		{
			audio_play_sound(snLanding,5,false);
			repeat(5)
			{
				instance_create_layer(x,bbox_bottom,"Bullets",oDust);
			}
		}
		image_speed = 1;
		if(hsp == 0)
		{
			sprite_index = sEarthsage;
		}
		else
		{
			sprite_index = sEarthsageR;
		}
	}
	if (hsp != 0) image_xscale = sign(hsp) * 2;

	//switching the idle sprite using states(like a moron)
	if(sign(hsp) < 0 )
	{
		state = 1;
	}
	if(sign(hsp) > 0 )
	{
		state = 2;
	}

	if(state == 1)
	{
		image_xscale = -2;
	}

	if(state == 2)
	{
		image_xscale = 2;
	}

	if(sprite_index == sEarthsageR && (image_index == 3 || image_index == 7) ) 
	{
		audio_play_sound(choose(snFoot1, snFoot2, snFoot3, snFoot4),1, false);
	}
}
#endregion




