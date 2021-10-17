/// @description Insert description here
// You can write your code in this editor

if(room != rMenu) && (instance_exists(oPlayer)) && (global.kills > 0)
{
	killtextscale = max(killtextscale * 0.95, 1)
	DrawSetText(c_black, fMenu, fa_right,fa_top);
	draw_text_transformed(RES_W-8,12,"Kills: " + string(global.kills), killtextscale, killtextscale, 0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10,"Kills: " + string(global.kills) , killtextscale, killtextscale, 0);
}

if(instance_exists(oPlayer))
{
	DrawSetText(c_black, fMenu, fa_left, fa_top);
	if oPlayer.element == 0
	draw_text_transformed(50,64,"Element: Arcane (Arcane Shield)", killtextscale, killtextscale, 0);
	if oPlayer.element == 1
	draw_text_transformed(50,64,"Element: Fire (Higher Fire Rate)", killtextscale, killtextscale, 0);
	if oPlayer.element == 2
	draw_text_transformed(50,64,"Element: Wind (Double Jump)", killtextscale, killtextscale, 0);
	if oPlayer.element == 3
	draw_text_transformed(50,64,"Element: Earth (Wall Destroying)", killtextscale, killtextscale, 0);
}

if(instance_exists(oPlayer))
{
	switch(oPlayer.hp)
	{
		case 1: draw_sprite(sHeartBar,2,50,0); break;
		case 2: draw_sprite(sHeartBar,1,50,0); break;
		case 3: draw_sprite(sHeartBar,0,50,0); break;
	}
}