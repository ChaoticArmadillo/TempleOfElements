/// @description Insert description here
// You can write your code in this editor
x = owner.x;
y = owner.y;
if (global.pause) 
{
	image_index = current_image;
	exit;
}
if (place_meeting(x,y-1,oPlayer))
{
	triggered = true;
}

if(triggered == true)
{
	countdown -= 1;	
}

if (countdown > 199)
{
		current_image = 0;
		image_index = 0;
}

if (countdown < 200  && countdown >= 150 )
{
		current_image = 1;
		image_index = 1;
}

if (countdown < 150 && countdown >= 110)
{
		current_image = 2;
		image_index = 2;

}

if (countdown < 110 )
{
		current_image = 3;
		image_index = 3;
		if(countdown < 80)
		{
			instance_destroy();	
			with(owner)
			{
				countdown = 500;
			}
		}
}


	