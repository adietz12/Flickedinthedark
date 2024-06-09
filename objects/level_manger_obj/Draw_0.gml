/// @description Insert description here
// You can write your code in this editor
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

var s = ceil((player_obj.battery/100.0) * 6)

draw_sprite_ext(spr_ui_battery,s,x+cx+32,y+cy+16,1.0,1.0,0.0,c_white,1)

for (var i=0;i<player_obj.held_switces;i+=1){
	draw_sprite_ext(spr_switch_item,s,x+cx+96+(10*i),y+cy+16,1.0,1.0,0.0,c_white,1)
}

if (player_obj.state == STATE.REPAIRING){
	if player_obj.battery > 0{
		draw_sprite_ext(spr_evil_overlay,0,cx,cy,1.0,1.0,0.0,c_white,0.7)
	}
	else {
		draw_sprite_ext(spr_evil_overlay,1,cx,cy,1.0,1.0,0.0,c_white,1.0)
	}
}

if jumpscaring {
	if !surface_exists(surf)
	{
	    var _cw = camera_get_view_width(view_camera[0]);
	    var _ch = camera_get_view_height(view_camera[0]);
	    surf = surface_create(_cw, _ch);
	    surface_set_target(surf);
	    draw_set_colour(c_black);
	    draw_set_alpha(0);
	    draw_rectangle(0, 0, _cw, _cw, false);
	    surface_reset_target();
	}
	if (surface_exists(surf)) {
		var _cw = camera_get_view_width(view_camera[0]);
		var _ch = camera_get_view_height(view_camera[0]);
		var _cx = camera_get_view_x(view_camera[0]);
		var _cy = camera_get_view_y(view_camera[0]);
		surface_set_target(surf);
		var c = c_black;
		if jumpscare_frames % 2 == 0{
			c = c_red	
		}
		draw_set_color(c);
		draw_set_alpha(1.0);
		draw_rectangle(0, 0, _cw, _ch, 0);
		surface_reset_target();
		draw_surface(surf, _cx, _cy);
	}
	draw_sprite_ext(jumpscare_sprite,0,_cx+random_range(-jumpscare_shake,jumpscare_shake),_cy+random_range(-jumpscare_shake,jumpscare_shake),1.0,1.0,0.0,c_white,1.0)
}