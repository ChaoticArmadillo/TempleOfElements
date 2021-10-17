/// @description Insert description here
// You can write your code in this editor

awall = instance_create_layer(x,y,"Walls",oCracklingWall);
with(awall)
{
	owner = other.id;
}

countdown = -1;