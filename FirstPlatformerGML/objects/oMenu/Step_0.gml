/// @description 

menu_x += (menu_x_target - menu_x) / menu_speed;


if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	
		if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	
	{
		audio_play_sound(snDeath, 10, false);
		menu_x_target = gui_width + 200;
		menu_comitted = menu_cursor;
		menu_control = false;
	}
	var mouse_x_gui = device_mouse_x_to_gui(0);
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if(mouse_y_gui < menu_y) && (mouse_y_gui > menu_top)
	{
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);	
		
		if(mouse_check_button_pressed(mb_left))
		{
			audio_play_sound(snDeath, 10, false);
			menu_x_target = gui_width + 200;
			menu_comitted = menu_cursor;
			menu_control = false;
		}
	}

}

if(menu_x >	gui_width + 150) && (menu_comitted != -1)
{
	switch (menu_comitted)
	{
		case 2: default: SlideTransition(TRANS_MODE.NEXT); break;
		case 1: 
		{
			if(!file_exists(SAVEFILE))
			{
				SlideTransition(TRANS_MODE.NEXT);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO,target)
			}
			
		}
		break;
		case 0: game_end(); break;
	}

}