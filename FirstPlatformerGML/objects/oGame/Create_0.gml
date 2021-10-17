/// @description Insert description here
// You can write your code in this editor
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W,RES_H);

global.kills = 0;
global.killsthisroom = 0;
global.prevroom=room;
killtextscale = 1;
global.iswind = false;
global.isfire = false;
global.isearth = false;