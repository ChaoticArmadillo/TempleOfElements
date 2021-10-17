/// @description Insert description here
// You can write your code in this editor

	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0, room_width, room_height, 0)
	draw_set_halign(fa_center);
	draw_set_font(fMenu);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(sTip1,0,window_get_width()/2, window_get_height()/2)
	draw_text(window_get_width()/2, window_get_height()/2 + 160, "Click ENTER to hide this tip");
	draw_set_color(c_black);