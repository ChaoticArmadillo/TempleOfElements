/// @description Insert description here
// You can write your code in this editor
if !instance_exists(oPlayer) 
{
	instance_destroy();
}

if (oPlayer.element == 0)
{
	x = oPlayer.x + lengthdir_x(30, image_angle);;
	y = oPlayer.y + lengthdir_y(33, image_angle);; 
	image_angle = point_direction (x, y, mouse_x, mouse_y);
}
else
{
	instance_destroy();
}