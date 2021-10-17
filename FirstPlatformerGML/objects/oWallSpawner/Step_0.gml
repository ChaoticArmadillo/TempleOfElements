/// @description Insert description here
// You can write your code in this editor
if (global.pause) exit;
if (countdown > 0)
{
	countdown -= 1;
	if(countdown==0)
	{
		countdown = -1;
		awall = instance_create_layer(x,y,"Enemy",oCracklingWall);
		with(awall)
		{
			owner = other.id;
		}
	}
}