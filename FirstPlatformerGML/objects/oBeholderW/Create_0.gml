/// @description Insert description here
// You can write your code in this editor

myeye = instance_create_layer(x,y,"Player",oEyeW);
with(myeye)
{
	owner = other.id;
}