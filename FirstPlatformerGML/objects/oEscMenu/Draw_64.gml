/// @description Insert description here
// You can write your code in this editor
if(global.pause)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0, room_width, room_height, 0)
	draw_set_halign(fa_center);
	draw_set_font(fMenu);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(window_get_width()/2, window_get_height()/2, "Game Paused");
	draw_text(window_get_width()/2, window_get_height()/2 + 40, "Press F1 to go to Main Menu");
	draw_text(window_get_width()/2, window_get_height()/2 + 80, "A/D - Move left/right");
	draw_text(window_get_width()/2, window_get_height()/2 + 120, "Spacebar - Jump");
	draw_text(window_get_width()/2, window_get_height()/2 + 160, "Mouse Right Click - Read Sign");
	draw_set_color(c_black);
}