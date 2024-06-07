/// @description Insert description here
// You can write your code in this editor
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
	draw_set_color(c_black);
	draw_set_alpha(1.0);
	draw_rectangle(0, 0, _cw, _ch, 0);
	gpu_set_blendmode(bm_subtract);
	with (light_source_obj)
		{
			if (enabled) {
				draw_sprite_ext(sprite_index, 0, x - _cx, y - _cy, sizex, sizey, rotation, c_white, 1);
			}
		}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _cx, _cy);
}

