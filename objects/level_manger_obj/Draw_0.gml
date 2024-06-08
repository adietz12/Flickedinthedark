/// @description Insert description here
// You can write your code in this editor
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

var s = ceil((player_obj.battery/100.0) * 6)

draw_sprite_ext(spr_ui_battery,s,x+cx+32,y+cy+16,1.0,1.0,0.0,c_white,1)